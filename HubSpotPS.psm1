$Script:PSModuleRoot = $PSScriptRoot
$Script:ModuleName = "QHubSpotPS"
$Script:LSAppDataPath = [Environment]::GetFolderPath('ApplicationData')
$Script:ModuleDataRoot = (Join-Path -Path $Script:LSAppDataPath -ChildPath $Script:ModuleName)
$Script:ModuleDataPath = (Join-Path -Path $Script:ModuleDataRoot -ChildPath "ModuleData.json")
if (-not (Test-Path $Script:ModuleDataRoot)) {New-Item -ItemType Directory -Path $Script:ModuleDataRoot -Force}
# Imported from [D:\a\1\s\HubSpotPS\Private]
# Enums.ps1
enum AssociationType {
    undocumented0
    Contact_to_company
    Company_to_contact
    Deal_to_contact
    Contact_to_deal
    Deal_to_company
    Company_to_deal
    Company_to_engagement
    Engagement_to_company
    Contact_to_engagement
    Engagement_to_contact
    Deal_to_engagement
    Engagement_to_deal
    Parent_company_to_child_company
    Child_company_to_parent_company
    Contact_to_ticket
    Ticket_to_contact
    Ticket_to_engagement
    Engagement_to_ticket
    Deal_to_line_item
    Line_item_to_deal
    Company_to_ticket
    Ticket_to_company
    Deal_to_ticket
    Ticket_to_deal
    undocumented29
    undocumented30
    undocumented31
    undocumented32
    Advisor_to_company
    Company_to_advisor
    Board_member_to_company
    Company_to_board_member
    Contractor_to_company
    Company_to_contractor
    Manager_to_company
    Company_to_manager
    Business_owner_to_company
    Company_to_business_owner
    Partner_to_company
    Company_to_partner
    Reseller_to_company
    Company_to_reseller
}
# Get-HSApiEndpoint.ps1
function Get-HSApiEndpoint
{    
    <#
    .SYNOPSIS

    Returns the api uri endpoint.

    .DESCRIPTION

    Returns the api uri endpoint base on the api type.

    .PARAMETER ApiType

    Type of the api endpoint to use.

    .OUTPUTS

    String, The uri endpoint that will be used by Set-HSUri.

    .EXAMPLE

    Returns the api endpoint for 'release-releases'

    Get-HSApiEndpoint -ApiType release-releases

    .LINK
    #>
    [CmdletBinding()]
    Param
    (
        [Parameter(Mandatory)]
        [string]
        $ApiType
    )

    begin
    {
    }

    process
    {
        Switch ($ApiType)
        {
            'crm-companies'
            {
                return 'crm/v3/objects/companies'
            }
            'crm-companyId'
            {
                return 'crm/v3/objects/companies/{0}'
            }			
            'crm-products'
            {
                return 'crm/v3/objects/products'
            }
            'crm-productId'
            {
                return 'crm/v3/objects/products/{0}'
            }
            'crm-contacts'
            {
                return 'crm/v3/objects/contacts'
            }
            'crm-contactId'
            {
                return 'crm/v3/objects/contacts/{0}'
            }
            'crm-contacts-batch-create'
            {
                return 'crm/v3/objects/contacts/batch/create'
            }
            'crm-contacts-batch-update'
            {
                return 'crm/v3/objects/contacts/batch/update'
            }
            'crm-deals'
            {
                return 'crm/v3/objects/deals'
            }
            'crm-dealId'
            {
                return 'crm/v3/objects/deals/{0}'
            }
            'crm-deals-batch-create'
            {
                return 'crm/v3/objects/deals/batch/create'
            }
            'crm-deals-associations'
            {
                return 'crm/v3/objects/deals/{0}/associations/{1}'
            }
            'crm-deals-associationType'
            {
                return 'crm/v3/objects/deals/{0}/associations/{1}/{2}/{3}'
            }
            'crm-owners'
            {
                return 'crm/v3/owners'
            }
            'crm-properties-objectType'
            {
                return 'crm/v3/properties/{0}'
            }
            'crm-properties-objectType-groups'
            {
                return 'crm/v3/properties/{0}/groups'
            }
            'crm-properties-objectType-groupName'
            {
                return 'crm/v3/properties/{0}/groups/{1}'
            }
            default
            {
                Write-Error "[$($MyInvocation.MyCommand.Name)]: [$ApiType] is not supported" -ErrorAction Stop
            }
        }
    }

    end
    {
    }
}

# Set-HSQueryParameters.ps1
function Set-HSQueryParameters
{
    <#
    .SYNOPSIS

    Returns the formated query parameter string.

    .DESCRIPTION

    Returns the formated query parameter string.

    .PARAMETER InputObject

    The PS bound parameters.

    .PARAMETER SplitProperties

    Switch, splits the properties array into multiple property queries.'

    .OUTPUTS

    String, The formated query parameter string.

    .EXAMPLE

    .LINK

    #>
    [CmdletBinding()]
    Param
    (
        [Parameter()]
        [object]
        $InputObject,

        [Parameter()]
        [securestring]
        $PersonalAccessToken,

        [Parameter()]
        [switch]
        $SplitProperties
    )

    begin
    {
    }

    process
    {
        $nonQueryParams = @(
            'Instance'
            'Session'
            'Credential'
            'Verbose'
            'Debug'
            'ErrorAction'
            'WarningAction'
            'InformationAction'
            'ErrorVariable'
            'WarningVariable'
            'InformationVariable'
            'OutVariable'
            'OutBuffer'
        )
        $queryParams = Foreach ($key in $InputObject.Keys)
        {
            If ($nonQueryParams -contains $key)
            {
                Continue
            }
            ElseIf (($key -eq 'Properties') -and $SplitProperties.IsPresent)
            {
                Foreach ($prop in $InputObject.$Key)
                {
                    "properties=$prop"
                }
            }
            ElseIf ($key -in 'Limit', 'After')
            {
                "$($key.ToLower())=$($InputObject.$key)"
            }
            ElseIf ($key -Match '[A-Za-z0-9]+_[A-Za-z0-9]+') # keys with underscores convert to dot-delimited
            {
                $fixedKey = $key.Replace("_", ".")
                "$fixedKey=$($InputObject.$key)"
            }
            ElseIf ($InputObject.$key.count)
            {
                "$key={0}" -f ($InputObject.$key -join ',')
            }
            Else
            {
                "$key=$($InputObject.$key)"
            }
        }
        If ($PersonalAccessToken)
        {
            $rawPersonalAccessToken = Unprotect-HSSecurePersonalAccessToken -PersonalAccessToken $PersonalAccessToken
            $queryParams += "&hapikey=$rawPersonalAccessToken"
        }
        Return ($queryParams -join '&')
    }

    end
    {
    }
}

# Set-HSUri.ps1
function Set-HSUri
{
    <#
    .SYNOPSIS

    Sets the uri used by Invoke-HSRestMethod.

    .DESCRIPTION

    Sets the uri used by Invoke-HSRestMethod.

    .PARAMETER Instance

    The Team Services account or TFS server.

    .PARAMETER Query

    Url query parameter.

    .PARAMETER ApiEndpoint

    The api endpoint provided by Get-HSApiEndpoint.

    .PARAMETER ApiVersion

    Version of the api to use.

    .OUTPUTS

    Uri, The uri that will be used by Invoke-HSRestMethod.

    .EXAMPLE

    Set-HSUri -Instance 'https://api.hubapi.com/ ' -ApiEndpoint 'crm/v3/objects/contacts'

    .LINK
    #>
    [CmdletBinding()]
    Param
    (
        [Parameter()]
        [uri]
        $Instance,

        [Parameter()]
        [string]
        $Query,

        [Parameter(Mandatory)]
        [string]
        $ApiEndpoint
    )

    begin
    {
    }

    process
    {
        If ($Instance.AbsoluteUri -and $ApiEndpoint -and $Query)
        {
            return '{0}{1}?{2}' -f $Instance.AbsoluteUri, $ApiEndpoint, $Query
        }
        elseIf ($Instance.AbsoluteUri -and $ApiEndpoint)
        {
            return '{0}{1}' -f $Instance.AbsoluteUri, $ApiEndpoint
        }
    }

    end
    {
    }
}

# Unprotect-HSSecurePersonalAccessToken.ps1
Function Unprotect-HSSecurePersonalAccessToken
{
    <#
    .SYNOPSIS

    Returns decrypted personal access token.

    .DESCRIPTION

    Returns decrypted personal access token that is stored in the session data.

    .PARAMETER PersonalAccessToken

    Personal access token used to authenticate that has been converted to a secure string. 
        
    .OUTPUTS

    String, unsecure personal access token.

    .EXAMPLE

    Unprotects the personal access token from secure string to plain text.

    Unprotect-SecurePersonalAccessToken -PersonalAccessToken $mySecureToken

    .LINK

    #>

    [CmdletBinding()]
    Param
    (
        [Parameter(Mandatory)]
        [Security.SecureString]
        $PersonalAccessToken
    )
    Process
    {
        $BSTR = [System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($PersonalAccessToken)
        $plainText = [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($BSTR)
        Return $plainText
    }
}

# Imported from [D:\a\1\s\HubSpotPS\Public]
# Get-HSCompany.ps1
function Get-HSCompany
{
    <#
    .SYNOPSIS

    Gets a HubSpot company.

    .DESCRIPTION

    Gets a HubSpot company by id.
    Identify the company id with Get-HSCompanyList.

    .PARAMETER Session

    HubSpot session, created by New-HSSession.

    .PARAMETER CompanyId

    The id of the Company.

    .INPUTS

    None, does not support pipeline.

    .OUTPUTS

    PSObject, HS Company.

    .EXAMPLE

    Returns a Company with the id of 7.

    Get-HSCompany -Session 'mySession' -CompanyId '7'

    .LINK

    https://developers.hubspot.com/docs/api/crm/Companys
    #>
    [CmdletBinding()]
    Param
    (
        [Parameter(Mandatory)]
        [object]
        $Session, 

        [Parameter(Mandatory)]
        [string]
        $CompanyId
    )

    begin
    {
        $currentSession = $Session | Get-HSSession
        If ($currentSession)
        {
            $instance = $currentSession.Instance
            $personalaccesstoken = $currentSession.PersonalAccessToken
            $proxy = $currentSession.Proxy
            $proxyCredential = $currentSession.ProxyCredential
        }
    }
        
    process
    {
        $apiEndpoint = (Get-HSApiEndpoint -ApiType 'crm-companyId') -f $CompanyId
        $queryParameters = Set-HSQueryParameters -InputObject $PSBoundParameters -PersonalAccessToken $personalaccesstoken
        $setAPUriSplat = @{
            Instance    = $instance
            ApiEndpoint = $apiEndpoint
            Query       = $queryParameters
        }
        [uri] $uri = Set-HSUri @setAPUriSplat
        $invokeAPRestMethodSplat = @{
            Method          = 'GET'
            Uri             = $uri
            ContentType     = 'application/json'
            Proxy           = $proxy
            ProxyCredential = $proxyCredential
        }
        $results = Invoke-HSRestMethod @invokeAPRestMethodSplat 
        If ($results)
        {
            $results
        }
    }
    
    end
    {
    }
}
# Get-HSCompanyList.ps1
function Get-HSCompanyList
{
    <#
    .SYNOPSIS

    Gets a list of HubSpot Company.

    .DESCRIPTION

    Gets a list of HubSpot Company.

    .PARAMETER Session

    HubSpot session, created by New-HSSession.

    .PARAMETER Limit

    The maximum number of results to display per page. Defaults to 10.

    .PARAMETER After

    The paging cursor token of the last successfully read resource will be returned as the paging.next.after JSON property of a paged response containing more results.

    .PARAMETER Properties

    A comma separated list of the properties to be returned in the response. If any of the specified properties are not present on the requested object(s), they will be ignored.

    .INPUTS

    None, does not support pipeline.

    .OUTPUTS

    PSObject, List of HubSpot Company.

    .EXAMPLE

    Returns a list of HubSpot Companys for 'mySession'

    Get-HSCompanyList -Session 'mySession'

    .LINK

    https://developers.hubspot.com/docs/api/crm/Companys
    #>
    [CmdletBinding()]
    Param
    (
        [Parameter(Mandatory)]
        [object]
        $Session,

        [Parameter()]
        [int]
        $Limit = 10,

        [Parameter()]
        [string]
        $After,

        [Parameter()]
        [string[]]
        $Properties
    )

    begin
    {
        $currentSession = $Session | Get-HSSession
        If ($currentSession)
        {
            $instance = $currentSession.Instance
            $personalaccesstoken = $currentSession.PersonalAccessToken
            $proxy = $currentSession.Proxy
            $proxyCredential = $currentSession.ProxyCredential
        }
    }
        
    process
    {
        $apiEndpoint = Get-HSApiEndpoint -ApiType 'crm-companies'
        $queryParameters = Set-HSQueryParameters -InputObject $PSBoundParameters -PersonalAccessToken $personalaccesstoken -SplitProperties
        $setAPUriSplat = @{
            Instance    = $instance
            ApiEndpoint = $apiEndpoint
            Query       = $queryParameters
        }
        [uri] $uri = Set-HSUri @setAPUriSplat
        $invokeAPRestMethodSplat = @{
            Method          = 'GET'
            Uri             = $uri
            ContentType     = 'application/json'
            Proxy           = $proxy
            ProxyCredential = $proxyCredential
        }
        $results = Invoke-HSRestMethod @invokeAPRestMethodSplat 
        if ($results.paging.next.after)
        {
            $results.results
            $null = $PSBoundParameters.Remove('After')
            Get-HSCompanyList @PSBoundParameters -After $results.paging.next.after
        }
        elseIf ($results.results)
        {
            $results.results
        }
    }
    
    end
    {
    }
}


# Imported from [D:\a\1\s\HubSpotPS\Public]
# Get-HSProduct.ps1
function Get-HSProduct
{
    <#
    .SYNOPSIS

    Gets a HubSpot product.

    .DESCRIPTION

    Gets a HubSpot product by id.
    Identify the product id with Get-HSProductList.

    .PARAMETER Session

    HubSpot session, created by New-HSSession.

    .PARAMETER ProductId

    The id of the product.

    .INPUTS

    None, does not support pipeline.

    .OUTPUTS

    PSObject, HS product.

    .EXAMPLE

    Returns a product with the id of 7.

    Get-HSProduct -Session 'mySession' -ProductId '7'

    .LINK

    https://developers.hubspot.com/docs/api/crm/products
    #>
    [CmdletBinding()]
    Param
    (
        [Parameter(Mandatory)]
        [object]
        $Session, 

        [Parameter(Mandatory)]
        [string]
        $ProductId
    )

    begin
    {
        $currentSession = $Session | Get-HSSession
        If ($currentSession)
        {
            $instance = $currentSession.Instance
            $personalaccesstoken = $currentSession.PersonalAccessToken
            $proxy = $currentSession.Proxy
            $proxyCredential = $currentSession.ProxyCredential
        }
    }
        
    process
    {
        $apiEndpoint = (Get-HSApiEndpoint -ApiType 'crm-productId') -f $ProductId
        $queryParameters = Set-HSQueryParameters -InputObject $PSBoundParameters -PersonalAccessToken $personalaccesstoken
        $setAPUriSplat = @{
            Instance    = $instance
            ApiEndpoint = $apiEndpoint
            Query       = $queryParameters
        }
        [uri] $uri = Set-HSUri @setAPUriSplat
        $invokeAPRestMethodSplat = @{
            Method          = 'GET'
            Uri             = $uri
            ContentType     = 'application/json'
            Proxy           = $proxy
            ProxyCredential = $proxyCredential
        }
        $results = Invoke-HSRestMethod @invokeAPRestMethodSplat 
        If ($results)
        {
            $results
        }
    }
    
    end
    {
    }
}
# Get-HSProductList.ps1
function Get-HSProductList
{
    <#
    .SYNOPSIS

    Gets a list of HubSpot product.

    .DESCRIPTION

    Gets a list of HubSpot product.

    .PARAMETER Session

    HubSpot session, created by New-HSSession.

    .PARAMETER Limit

    The maximum number of results to display per page. Defaults to 10.

    .PARAMETER After

    The paging cursor token of the last successfully read resource will be returned as the paging.next.after JSON property of a paged response containing more results.

    .PARAMETER Properties

    A comma separated list of the properties to be returned in the response. If any of the specified properties are not present on the requested object(s), they will be ignored.

    .INPUTS

    None, does not support pipeline.

    .OUTPUTS

    PSObject, List of HubSpot product.

    .EXAMPLE

    Returns a list of HubSpot products for 'mySession'

    Get-HSProductList -Session 'mySession'

    .LINK

    https://developers.hubspot.com/docs/api/crm/products
    #>
    [CmdletBinding()]
    Param
    (
        [Parameter(Mandatory)]
        [object]
        $Session,

        [Parameter()]
        [int]
        $Limit = 10,

        [Parameter()]
        [string]
        $After,

        [Parameter()]
        [string[]]
        $Properties
    )

    begin
    {
        $currentSession = $Session | Get-HSSession
        If ($currentSession)
        {
            $instance = $currentSession.Instance
            $personalaccesstoken = $currentSession.PersonalAccessToken
            $proxy = $currentSession.Proxy
            $proxyCredential = $currentSession.ProxyCredential
        }
    }
        
    process
    {
        $apiEndpoint = Get-HSApiEndpoint -ApiType 'crm-products'
        $queryParameters = Set-HSQueryParameters -InputObject $PSBoundParameters -PersonalAccessToken $personalaccesstoken -SplitProperties
        $setAPUriSplat = @{
            Instance    = $instance
            ApiEndpoint = $apiEndpoint
            Query       = $queryParameters
        }
        [uri] $uri = Set-HSUri @setAPUriSplat
        $invokeAPRestMethodSplat = @{
            Method          = 'GET'
            Uri             = $uri
            ContentType     = 'application/json'
            Proxy           = $proxy
            ProxyCredential = $proxyCredential
        }
        $results = Invoke-HSRestMethod @invokeAPRestMethodSplat 
        if ($results.paging.next.after)
        {
            $results.results
            $null = $PSBoundParameters.Remove('After')
            Get-HSProductList @PSBoundParameters -After $results.paging.next.after
        }
        elseIf ($results.results)
        {
            $results.results
        }
    }
    
    end
    {
    }
}

# Imported from [D:\a\1\s\HubSpotPS\Public]
# Get-HSContact.ps1
function Get-HSContact
{
    <#
    .SYNOPSIS

    Gets a HubSpot contact.

    .DESCRIPTION

    Gets a HubSpot contact by id.
    Identify the contact id with Get-HSContactList.

    .PARAMETER Session

    HubSpot session, created by New-HSSession.

    .PARAMETER ContactId

    The id of the contact.

    .INPUTS

    None, does not support pipeline.

    .OUTPUTS

    PSObject, HS contact.

    .EXAMPLE

    Returns a contact with the id of 7.

    Get-HSContact -Session 'mySession' -ContactId '7'

    .LINK

    https://developers.hubspot.com/docs/api/crm/contacts
    #>
    [CmdletBinding()]
    Param
    (
        [Parameter(Mandatory)]
        [object]
        $Session, 

        [Parameter(Mandatory)]
        [string]
        $ContactId
    )

    begin
    {
        $currentSession = $Session | Get-HSSession
        If ($currentSession)
        {
            $instance = $currentSession.Instance
            $personalaccesstoken = $currentSession.PersonalAccessToken
            $proxy = $currentSession.Proxy
            $proxyCredential = $currentSession.ProxyCredential
        }
    }
        
    process
    {
        $apiEndpoint = (Get-HSApiEndpoint -ApiType 'crm-contactId') -f $ContactId
        $queryParameters = Set-HSQueryParameters -InputObject $PSBoundParameters -PersonalAccessToken $personalaccesstoken
        $setAPUriSplat = @{
            Instance    = $instance
            ApiEndpoint = $apiEndpoint
            Query       = $queryParameters
        }
        [uri] $uri = Set-HSUri @setAPUriSplat
        $invokeAPRestMethodSplat = @{
            Method          = 'GET'
            Uri             = $uri
            ContentType     = 'application/json'
            Proxy           = $proxy
            ProxyCredential = $proxyCredential
        }
        $results = Invoke-HSRestMethod @invokeAPRestMethodSplat 
        If ($results)
        {
            $results
        }
    }
    
    end
    {
    }
}
# Get-HSContactList.ps1
function Get-HSContactList
{
    <#
    .SYNOPSIS

    Gets a list of HubSpot contacts.

    .DESCRIPTION

    Gets a list of HubSpot contacts.

    .PARAMETER Session

    HubSpot session, created by New-HSSession.

    .PARAMETER Limit

    The maximum number of results to display per page. Defaults to 10.

    .PARAMETER After

    The paging cursor token of the last successfully read resource will be returned as the paging.next.after JSON property of a paged response containing more results.

    .PARAMETER Properties

    A comma separated list of the properties to be returned in the response. If any of the specified properties are not present on the requested object(s), they will be ignored.

    .INPUTS

    None, does not support pipeline.

    .OUTPUTS

    PSObject, List of HubSpot contacts.

    .EXAMPLE

    Returns a list of HubSpot contacts for 'mySession'

    Get-HSContactList -Session 'mySession'

    .LINK

    https://developers.hubspot.com/docs/api/crm/contacts
    #>
    [CmdletBinding()]
    Param
    (
        [Parameter(Mandatory)]
        [object]
        $Session,

        [Parameter()]
        [int]
        $Limit = 10,

        [Parameter()]
        [string]
        $After,

        [Parameter()]
        [string[]]
        $Properties
    )

    begin
    {
        $currentSession = $Session | Get-HSSession
        If ($currentSession)
        {
            $instance = $currentSession.Instance
            $personalaccesstoken = $currentSession.PersonalAccessToken
            $proxy = $currentSession.Proxy
            $proxyCredential = $currentSession.ProxyCredential
        }
    }
        
    process
    {
        $apiEndpoint = Get-HSApiEndpoint -ApiType 'crm-contacts'
        $queryParameters = Set-HSQueryParameters -InputObject $PSBoundParameters -PersonalAccessToken $personalaccesstoken -SplitProperties
        $setAPUriSplat = @{
            Instance    = $instance
            ApiEndpoint = $apiEndpoint
            Query       = $queryParameters
        }
        [uri] $uri = Set-HSUri @setAPUriSplat
        $invokeAPRestMethodSplat = @{
            Method          = 'GET'
            Uri             = $uri
            ContentType     = 'application/json'
            Proxy           = $proxy
            ProxyCredential = $proxyCredential
        }
        $results = Invoke-HSRestMethod @invokeAPRestMethodSplat 
        if ($results.paging.next.after)
        {
            $results.results
            $null = $PSBoundParameters.Remove('After')
            Get-HSContactList @PSBoundParameters -After $results.paging.next.after
        }
        elseIf ($results.results)
        {
            $results.results
        }
    }
    
    end
    {
    }
}
# Get-HSDeal.ps1
function Get-HSDeal
{
    <#
    .SYNOPSIS

    Gets a HubSpot deal.

    .DESCRIPTION

    Gets a HubSpot deal by name.
    Identify the deal name with Get-HSDealList.

    .PARAMETER Session

    HubSpot session, created by New-HSSession.

    .PARAMETER DealId

    The name of the deal.

    .INPUTS

    None, does not support pipeline.

    .OUTPUTS

    PSObject, HS deal.

    .EXAMPLE

    Returns a deal with the id of 7.

    Get-HSDeal -Session 'mySession' -DealId '7'

    .LINK

    https://developers.hubspot.com/docs/api/crm/deals
    #>
    [CmdletBinding()]
    Param
    (
        [Parameter(Mandatory)]
        [object]
        $Session,

        [Parameter(Mandatory)]
        [string]
        $DealId
    )

    begin
    {
        $currentSession = $Session | Get-HSSession
        If ($currentSession)
        {
            $instance = $currentSession.Instance
            $personalaccesstoken = $currentSession.PersonalAccessToken
            $proxy = $currentSession.Proxy
            $proxyCredential = $currentSession.ProxyCredential
        }
    }
        
    process
    {
        $apiEndpoint = (Get-HSApiEndpoint -ApiType 'crm-dealId') -f $ObjectType, $DealId
        $queryParameters = Set-HSQueryParameters -InputObject $PSBoundParameters -PersonalAccessToken $personalaccesstoken
        $setAPUriSplat = @{
            Instance    = $instance
            ApiEndpoint = $apiEndpoint
            Query       = $queryParameters
        }
        [uri] $uri = Set-HSUri @setAPUriSplat
        $invokeAPRestMethodSplat = @{
            Method          = 'GET'
            Uri             = $uri
            ContentType     = 'application/json'
            Proxy           = $proxy
            ProxyCredential = $proxyCredential
        }
        $results = Invoke-HSRestMethod @invokeAPRestMethodSplat 
        If ($results.results)
        {
            $results.results
        }
    }
    
    end
    {
    }
}
# Get-HSDealAssociationList.ps1
function Get-HSDealAssociationList
{
    <#
    .SYNOPSIS

    Gets a list of HubSpot deal associations.

    .DESCRIPTION

    Gets a list of HubSpot deal associations.

    .PARAMETER Session

    HubSpot session, created by New-HSSession.

    .PARAMETER DealId

    The name of the deal.

    .PARAMETER ObjectType

    CRM objects are defined by a primary type and a set of properties. Each type has a unique set of standard properties, represented by a map of name-value pairs.
    - Contacts
    - Companies
    - Deals
    - Tickets

    .PARAMETER Limit

    The maximum number of results to display per page. Defaults to 10.

    .PARAMETER After

    The paging cursor token of the last successfully read resource will be returned as the paging.next.after JSON property of a paged response containing more results.

    .PARAMETER Properties

    A comma separated list of the properties to be returned in the response. If any of the specified properties are not present on the requested object(s), they will be ignored.

    .INPUTS

    None, does not support pipeline.

    .OUTPUTS

    PSObject, List of HubSpot deals.

    .EXAMPLE

    Returns a list of HubSpot deals for 'mySession'

    Get-HSDealAssociationList -Session 'mySession'

    .LINK

    https://developers.hubspot.com/docs/api/crm/deals
    #>
    [CmdletBinding()]
    Param
    (
        [Parameter(Mandatory)]
        [object]
        $Session,

        [Parameter(Mandatory)]
        [string]
        $DealId,

        [Parameter(Mandatory)]
        [ValidateSet('Contacts', 'Companies', 'Deals', 'Tickets')]
        [string]
        $ObjectType,

        [Parameter()]
        [int]
        $Limit = 10,

        [Parameter()]
        [string]
        $After,

        [Parameter()]
        [string[]]
        $Properties
    )

    begin
    {
        $currentSession = $Session | Get-HSSession
        If ($currentSession)
        {
            $instance = $currentSession.Instance
            $personalaccesstoken = $currentSession.PersonalAccessToken
            $proxy = $currentSession.Proxy
            $proxyCredential = $currentSession.ProxyCredential
        }
    }
        
    process
    {
        $apiEndpoint = (Get-HSApiEndpoint -ApiType 'crm-deals-associations') -f $DealId, $ObjectType
        $queryParameters = Set-HSQueryParameters -InputObject $PSBoundParameters -PersonalAccessToken $personalaccesstoken -SplitProperties
        $setAPUriSplat = @{
            Instance    = $instance
            ApiEndpoint = $apiEndpoint
            Query       = $queryParameters
        }
        [uri] $uri = Set-HSUri @setAPUriSplat
        $invokeAPRestMethodSplat = @{
            Method          = 'GET'
            Uri             = $uri
            ContentType     = 'application/json'
            Proxy           = $proxy
            ProxyCredential = $proxyCredential
        }
        $results = Invoke-HSRestMethod @invokeAPRestMethodSplat 
        if ($results.paging.next.after)
        {
            $results.results
            $null = $PSBoundParameters.Remove('After')
            Get-HSDealAssociationList @PSBoundParameters -After $results.paging.next.after
        }
        elseIf ($results.results)
        {
            $results.results
        }
    }
    
    end
    {
    }
}
# Get-HSDealList.ps1
function Get-HSDealList
{
    <#
    .SYNOPSIS

    Gets a list of HubSpot deals.

    .DESCRIPTION

    Gets a list of HubSpot deals.

    .PARAMETER Session

    HubSpot session, created by New-HSSession.

    .PARAMETER Limit

    The maximum number of results to display per page. Defaults to 10.

    .PARAMETER After

    The paging cursor token of the last successfully read resource will be returned as the paging.next.after JSON property of a paged response containing more results.

    .PARAMETER Properties

    A comma separated list of the properties to be returned in the response. If any of the specified properties are not present on the requested object(s), they will be ignored.

    .INPUTS

    None, does not support pipeline.

    .OUTPUTS

    PSObject, List of HubSpot deals.

    .EXAMPLE

    Returns a list of HubSpot deals for 'mySession'

    Get-HSDealList -Session 'mySession'

    .LINK

    https://developers.hubspot.com/docs/api/crm/deals
    #>
    [CmdletBinding()]
    Param
    (
        [Parameter(Mandatory)]
        [object]
        $Session,

        [Parameter()]
        [int]
        $Limit = 10,

        [Parameter()]
        [string]
        $After,

        [Parameter()]
        [string[]]
        $Properties
    )

    begin
    {
        $currentSession = $Session | Get-HSSession
        If ($currentSession)
        {
            $instance = $currentSession.Instance
            $personalaccesstoken = $currentSession.PersonalAccessToken
            $proxy = $currentSession.Proxy
            $proxyCredential = $currentSession.ProxyCredential
        }
    }
        
    process
    {
        $apiEndpoint = Get-HSApiEndpoint -ApiType 'crm-deals'
        $queryParameters = Set-HSQueryParameters -InputObject $PSBoundParameters -PersonalAccessToken $personalaccesstoken -SplitProperties
        $setAPUriSplat = @{
            Instance    = $instance
            ApiEndpoint = $apiEndpoint
            Query       = $queryParameters
        }
        [uri] $uri = Set-HSUri @setAPUriSplat
        $invokeAPRestMethodSplat = @{
            Method          = 'GET'
            Uri             = $uri
            ContentType     = 'application/json'
            Proxy           = $proxy
            ProxyCredential = $proxyCredential
        }
        $results = Invoke-HSRestMethod @invokeAPRestMethodSplat 
        if ($results.paging.next.after)
        {
            $results.results
            $null = $PSBoundParameters.Remove('After')
            Get-HSDealList @PSBoundParameters -After $results.paging.next.after
        }
        elseIf ($results.results)
        {
            $results.results
        }
    }
    
    end
    {
    }
}
# Get-HSGroup.ps1
function Get-HSGroup
{
    <#
    .SYNOPSIS

    Gets a HubSpot group.

    .DESCRIPTION

    Gets a HubSpot group by name.
    Identify the group name with Get-HSGroupList.

    .PARAMETER Session

    HubSpot session, created by New-HSSession.

    .PARAMETER GroupName

    The name of the group.

    .PARAMETER ObjectType

    CRM objects are defined by a primary type and a set of properties. Each type has a unique set of standard properties, represented by a map of name-value pairs.
    - Contacts
    - Companies
    - Deals
    - Tickets

    .INPUTS

    None, does not support pipeline.

    .OUTPUTS

    PSObject, HS group.

    .EXAMPLE

    Returns a group with the id of 7.

    Get-HSGroup -Session 'mySession' -GroupName '7'

    .LINK

    #>
    [CmdletBinding()]
    Param
    (
        [Parameter(Mandatory)]
        [object]
        $Session, 

        [Parameter(Mandatory)]
        [string]
        $GroupName,

        [Parameter(Mandatory)]
        [ValidateSet('Contacts', 'Companies', 'Deals', 'Tickets')]
        [string]
        $ObjectType
    )

    begin
    {
        $currentSession = $Session | Get-HSSession
        If ($currentSession)
        {
            $instance = $currentSession.Instance
            $personalaccesstoken = $currentSession.PersonalAccessToken
            $proxy = $currentSession.Proxy
            $proxyCredential = $currentSession.ProxyCredential
        }
    }
        
    process
    {
        $apiEndpoint = (Get-HSApiEndpoint -ApiType 'crm-properties-objectType-groupName') -f $ObjectType, $GroupName
        $queryParameters = Set-HSQueryParameters -InputObject $PSBoundParameters -PersonalAccessToken $personalaccesstoken
        $setAPUriSplat = @{
            Instance    = $instance
            ApiEndpoint = $apiEndpoint
            Query       = $queryParameters
        }
        [uri] $uri = Set-HSUri @setAPUriSplat
        $invokeAPRestMethodSplat = @{
            Method          = 'GET'
            Uri             = $uri
            ContentType     = 'application/json'
            Proxy           = $proxy
            ProxyCredential = $proxyCredential
        }
        $results = Invoke-HSRestMethod @invokeAPRestMethodSplat 
        If ($results)
        {
            $results
        }
    }
    
    end
    {
    }
}
# Get-HSGroupList.ps1
function Get-HSGroupList
{
    <#
    .SYNOPSIS

    Gets a list of HubSpot groups.

    .DESCRIPTION

    Gets a list of HubSpot groups.

    .PARAMETER Session

    HubSpot session, created by New-HSSession.

    .PARAMETER ObjectType

    CRM objects are defined by a primary type and a set of properties. Each type has a unique set of standard properties, represented by a map of name-value pairs.
    - Contacts
    - Companies
    - Deals
    - Tickets

    .INPUTS

    None, does not support pipeline.

    .OUTPUTS

    PSObject, List of HubSpot groups.

    .EXAMPLE

    Returns a list of HubSpot groups for 'mySession'

    Get-HSGroupList -Session 'mySession'

    .LINK

    #>
    [CmdletBinding()]
    Param
    (
        [Parameter(Mandatory)]
        [object]
        $Session,

        [Parameter(Mandatory)]
        [ValidateSet('Contacts', 'Companies', 'Deals', 'Tickets')]
        [string]
        $ObjectType
    )

    begin
    {
        $currentSession = $Session | Get-HSSession
        If ($currentSession)
        {
            $instance = $currentSession.Instance
            $personalaccesstoken = $currentSession.PersonalAccessToken
            $proxy = $currentSession.Proxy
            $proxyCredential = $currentSession.ProxyCredential
        }
    }
        
    process
    {
        $apiEndpoint = (Get-HSApiEndpoint -ApiType 'crm-properties-objectType-groups') -f $ObjectType
        $queryParameters = Set-HSQueryParameters -InputObject $PSBoundParameters -PersonalAccessToken $personalaccesstoken
        $setAPUriSplat = @{
            Instance    = $instance
            ApiEndpoint = $apiEndpoint
            Query       = $queryParameters
        }
        [uri] $uri = Set-HSUri @setAPUriSplat
        $invokeAPRestMethodSplat = @{
            Method          = 'GET'
            Uri             = $uri
            ContentType     = 'application/json'
            Proxy           = $proxy
            ProxyCredential = $proxyCredential
        }
        $results = Invoke-HSRestMethod @invokeAPRestMethodSplat 
        If ($results.results)
        {
            $results.results
        }
    }
    
    end
    {
    }
}
# Get-HSOwnerList.ps1
function Get-HSOwnerList
{
    <#
    .SYNOPSIS

    Gets a list of HubSpot owners.

    .DESCRIPTION

    Gets a list of HubSpot owners.

    .PARAMETER Session

    HubSpot session, created by New-HSSession.

    .PARAMETER Limit

    The maximum number of results to display per page. Defaults to 10.

    .PARAMETER Email

    Filter by email address.

    .PARAMETER After

    The paging cursor token of the last successfully read resource will be returned as the paging.next.after JSON property of a paged response containing more results.

    .INPUTS

    None, does not support pipeline.

    .OUTPUTS

    PSObject, List of HubSpot owners.

    .EXAMPLE

    Returns a list of HubSpot owners for 'mySession'

    Get-HSOwnerList -Session 'mySession'

    .LINK

    https://developers.hubspot.com/docs/api/crm/owners
    #>
    [CmdletBinding()]
    Param
    (
        [Parameter(Mandatory)]
        [object]
        $Session,

        [Parameter()]
        [int]
        $Limit = 10,

        [Parameter()]
        [string]
        $Email,

        [Parameter()]
        [string]
        $After
    )

    begin
    {
        $currentSession = $Session | Get-HSSession
        If ($currentSession)
        {
            $instance = $currentSession.Instance
            $personalaccesstoken = $currentSession.PersonalAccessToken
            $proxy = $currentSession.Proxy
            $proxyCredential = $currentSession.ProxyCredential
        }
    }
        
    process
    {
        $apiEndpoint = Get-HSApiEndpoint -ApiType 'crm-owners'
        $queryParameters = Set-HSQueryParameters -InputObject $PSBoundParameters -PersonalAccessToken $personalaccesstoken -SplitProperties
        $setAPUriSplat = @{
            Instance    = $instance
            ApiEndpoint = $apiEndpoint
            Query       = $queryParameters
        }
        [uri] $uri = Set-HSUri @setAPUriSplat
        $invokeAPRestMethodSplat = @{
            Method          = 'GET'
            Uri             = $uri
            ContentType     = 'application/json'
            Proxy           = $proxy
            ProxyCredential = $proxyCredential
        }
        $results = Invoke-HSRestMethod @invokeAPRestMethodSplat 
        if ($results.paging.next.after)
        {
            $results.results
            $null = $PSBoundParameters.Remove('After')
            Get-HSOwnerList @PSBoundParameters -After $results.paging.next.after
        }
        elseIf ($results.results)
        {
            $results.results
        }
    }
    
    end
    {
    }
}
# Get-HSPropertyList.ps1
function Get-HSPropertyList
{
    <#
    .SYNOPSIS

    Gets a list of HubSpot properties.

    .DESCRIPTION

    Gets a list of HubSpot properties.

    .PARAMETER Session

    HubSpot session, created by New-HSSession.

    .PARAMETER ObjectType

    CRM objects are defined by a primary type and a set of properties. Each type has a unique set of standard properties, represented by a map of name-value pairs.
    - Contacts
    - Companies
    - Deals
    - Tickets

    .INPUTS

    None, does not support pipeline.

    .OUTPUTS

    PSObject, List of HubSpot properties.

    .EXAMPLE

    Returns a list of HubSpot properties for 'mySession'

    Get-HSPropertyList -Session 'mySession'

    .LINK

    https://developers.hubspot.com/docs/api/crm/properties
    #>
    [CmdletBinding()]
    Param
    (
        [Parameter(Mandatory)]
        [object]
        $Session, 

        [Parameter(Mandatory)]
        [ValidateSet('Contacts', 'Companies', 'Deals', 'Tickets')]
        [string]
        $ObjectType
    )

    begin
    {
        $currentSession = $Session | Get-HSSession
        If ($currentSession)
        {
            $instance = $currentSession.Instance
            $personalaccesstoken = $currentSession.PersonalAccessToken
            $proxy = $currentSession.Proxy
            $proxyCredential = $currentSession.ProxyCredential
        }
    }
        
    process
    {
        $apiEndpoint = (Get-HSApiEndpoint -ApiType 'crm-properties-objectType') -f $ObjectType
        $queryParameters = Set-HSQueryParameters -InputObject $PSBoundParameters -PersonalAccessToken $personalaccesstoken
        $setAPUriSplat = @{
            Instance    = $instance
            ApiEndpoint = $apiEndpoint
            Query       = $queryParameters
        }
        [uri] $uri = Set-HSUri @setAPUriSplat
        $invokeAPRestMethodSplat = @{
            Method          = 'GET'
            Uri             = $uri
            ContentType     = 'application/json'
            Proxy           = $proxy
            ProxyCredential = $proxyCredential
        }
        $results = Invoke-HSRestMethod @invokeAPRestMethodSplat 
        If ($results.results)
        {
            $results.results
        }
    }
    
    end
    {
    }
}
# Get-HSSession.ps1
Function Get-HSSession
{
    <#
    .SYNOPSIS

    Returns HubSpotPS session data.

    .DESCRIPTION

    Returns HubSpotPS session data that has been stored in the users local application data. 
    Use Save-HSSession to persist the session data to disk.
    The sensetive data is returned encrypted.

    .PARAMETER Id
    
    Session id.

    .PARAMETER SessionName
    
    The friendly name of the session.

    .PARAMETER Path
    
    The path where session data will be stored, defaults to $Script:ModuleDataPath.

    .LINK

    Save-HSSession
    Remove-HSSession

    .INPUTS

    None, does not support pipeline.

    .OUTPUTS

    PSObject. Get-HSSession returns a PSObject that contains the following:
        Instance
        Collection
        PersonalAccessToken

    .EXAMPLE

    Returns all AP sessions saved or in memory.

    Get-HSSession

    .EXAMPLE

    Returns AP session with the session name of 'myFirstSession'.

    Get-HSSession -SessionName 'myFirstSession'

    #>
    [CmdletBinding()]
    Param
    (
        [Parameter(ValueFromPipeline,
            ValueFromPipelineByPropertyName)]
        [string]
        $SessionName,

        [Parameter(ParameterSetName = 'ById',
            ValueFromPipelineByPropertyName)]
        [int]
        $Id,

        [Parameter()]
        [string]
        $Path = $Script:ModuleDataPath
    )
    Process
    {
        # Process memory sessions 
        $_sessions = @()
        If ($null -ne $Global:_HSSessions)
        {
            Foreach ($_memSession in $Global:_HSSessions)
            {
                $_sessions += $_memSession
            }
        }
        
        # Process saved sessions
        If (Test-Path $Path)
        {
            $data = Get-Content -Path $Path -Raw | ConvertFrom-Json
            Foreach ($_data in $data.SessionData)
            {
                $_object = New-Object -TypeName PSCustomObject -Property @{
                    Id          = $_data.Id
                    SessionName = $_data.SessionName
                    Instance    = $_data.Instance
                    Saved       = $_data.Saved
                }
                If ($_data.PersonalAccessToken)
                {
                    $_object | Add-Member -NotePropertyName 'PersonalAccessToken' -NotePropertyValue ($_data.PersonalAccessToken | ConvertTo-SecureString)
                }
                If ($_data.Credential)
                {
                    $_psCredentialObject = [pscredential]::new($_data.Credential.Username, ($_data.Credential.Password | ConvertTo-SecureString))
                    $_object | Add-Member -NotePropertyName 'Credential' -NotePropertyValue $_psCredentialObject
                }
                If ($_data.Proxy)
                {
                    $_object | Add-Member -NotePropertyName 'Proxy' -NotePropertyValue $_data.Proxy
                }
                If ($_data.ProxyCredential)
                {
                    $_psProxyCredentialObject = [pscredential]::new($_data.ProxyCredential.Username, ($_data.ProxyCredential.Password | ConvertTo-SecureString))
                    $_object | Add-Member -NotePropertyName 'ProxyCredential' -NotePropertyValue $_psProxyCredentialObject
                }
                $_sessions += $_object
            }
        }
        If ($PSCmdlet.ParameterSetName -eq 'ById')
        {
            $_sessions = $_sessions | Where-Object { $PSItem.Id -eq $Id }
        }
        If ($SessionName)
        {
            $_sessions = $_sessions | Where-Object { $PSItem.SessionName -eq $SessionName }
        }
        If ($_sessions)
        {
            return $_sessions
        }
        elseIf ($ErrorActionPreference -ne 'SilentlyContinue')
        {
            Write-Error "[$($MyInvocation.MyCommand.Name)]: Unable to locate any HubSpot sessions in memory or stored at [$Path]" -ErrorAction 'Stop'
        }
    }
}
# Invoke-HSRestMethod.ps1
function Invoke-HSRestMethod
{
    <#
    .SYNOPSIS

    Invokes a rest method.

    .DESCRIPTION

    Invokes a rest method.

    .PARAMETER Method
    
    Specifies the method used for the web request.

    .PARAMETER Body
    
    Specifies the body of the request. The body is the content of the request that follows the headers.

    .PARAMETER ContentType
    
    Specifies the content type of the web request. If this parameter is omitted and the request method is POST, Invoke-RestMethod sets the content type to application/x-www-form-urlencoded. Otherwise, the content type is not specified in the call.

    .PARAMETER Headers

    The headers to append to the invocation. 

    .PARAMETER Uri

    Specifies the Uniform Resource Identifier (URI) of the Internet resource to which the web request is sent. This parameter supports HTTP, HTTPS, FTP, and FILE values.

    .PARAMETER PersonalAccessToken

    Personal access token used to authenticate that has been converted to a secure string. 
    
    .PARAMETER Credential

    Specifies a user account that has permission to send the request. The default is the Personal Access Token if it is defined, otherwise it is the current user.

    .PARAMETER Proxy
    
    Use a proxy server for the request, rather than connecting directly to the Internet resource. Enter the URI of a network proxy server.

    .PARAMETER ProxyCredential
    
    Specifie a user account that has permission to use the proxy server that is specified by the -Proxy parameter. The default is the current user.

    .PARAMETER Path

    The directory to output files to.

    .PARAMETER FormatBody

    Switch, the HubSpot rest api requires lowercase key value pairs, this switch formats all key values to lowercase.

    .OUTPUTS

    System.Int64, System.String, System.Xml.XmlDocument, The output of the cmdlet depends upon the format of the content that is retrieved.

    .OUTPUTS

    PSObject, If the request returns JSON strings, Invoke-RestMethod returns a PSObject that represents the strings.

    .EXAMPLE

    Invoke-HSRestMethod -Method PATCH -Body $Body -ContentType 'application/json' -Uri 'https://myURL/api/endpoint'

    .LINK

    https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/invoke-restmethod?view=powershell-6
    #>
    [CmdletBinding()]
    Param
    (
        [Parameter(Mandatory)]
        [string]
        $Method,

        [Parameter()]
        [psobject]
        $Body,

        [Parameter(Mandatory)]
        [uri]
        $Uri,

        [Parameter()]
        [string]
        $ContentType,

        [Parameter()]
        [psobject]
        $Headers,

        [Parameter()]
        [Security.SecureString]
        $PersonalAccessToken,

        [Parameter()]
        [pscredential]
        $Credential,

        [Parameter()]
        [string]
        $Proxy,

        [Parameter()]
        [pscredential]
        $ProxyCredential, 

        [Parameter()]
        [string]
        $Path,
         
        [Parameter()]
        [Switch]
        $FormatBody
    )

    begin
    {
    }
    
    process
    {
        $invokeRestMethodSplat = @{
            ContentType     = $ContentType
            Method          = $Method
            UseBasicParsing = $true
            Uri             = $uri.AbsoluteUri
        }
        If ($Body)
        {
            If ($FormatBody.IsPresent)
            {
                # Formats the property names to all lowercase
                $invokeRestMethodSplat.Body = [regex]::Replace(
                    ($Body | ConvertTo-Json -Depth 20),
                    '(?<=")(\w+)(?=":)',
                    {$args[0].Groups[1].Value.ToLower()}
                )
            }
            else
            {
                $invokeRestMethodSplat.Body = ($Body | ConvertTo-Json -Depth 20)
            }
        }
        If ($Headers)
        {
            $invokeRestMethodSplat.Headers = $Headers
        }
        If ($Proxy)
        {
            $invokeRestMethodSplat.Proxy = $Proxy
            If ($ProxyCredential)
            {
                $invokeRestMethodSplat.ProxyCredential = $ProxyCredential
            }
            else
            {
                $invokeRestMethodSplat.ProxyUseDefaultCredentials = $true
            }
        }
        If ($Path)
        {
            $invokeRestMethodSplat.OutFile = $Path
        }
        $results = Invoke-RestMethod @invokeRestMethodSplat
        Return $results
    }
    
    end
    {
    }
}

# New-HSAccountToken.ps1
function New-HSAccountToken
{
    <#
    .SYNOPSIS

    Creates a new LS account token.

    .DESCRIPTION

    Creates a new LS account token.

    .PARAMETER Instance

    The HubSpot api instance. 
    Example: prodapi.HubSpot.com

    .PARAMETER Credential

    Specifies a user account that has permission to send the request.

    .PARAMETER Proxy
    
    Use a proxy server for the request, rather than connecting directly to the Internet resource. Enter the URI of a network proxy server.

    .PARAMETER ProxyCredential
    
    Specifie a user account that has permission to use the proxy server that is specified by the -Proxy parameter. The default is the current user.

    .PARAMETER Session

    HubSpot session, created by New-HSSession.

    .PARAMETER GrantType

    The type of grant to use.

    .PARAMETER Scope

    The scope of token to request.

    .PARAMETER Origin

    The DNS entry for the company name.

    .PARAMETER Referer

    The DNS entry for the company name.

    .INPUTS

    None, does not support pipeline.

    .OUTPUTS

    PSObject, LS account token.

    .EXAMPLE

    Returns an access token with a 'password' grant for the 'Admin' scope for the 'myCompand.HubSpot.com'.
    New-HSAccountToken -Session 'mySession' -GrantType 'password' -Scope 'Admin' -Origin 'https://myCompany.HubSpot.com' -Referer 'https://myCompany.HubSpot.com'

    .LINK

    #>
    [CmdletBinding(DefaultParameterSetName = 'ByCredential')]
    Param
    (
        [Parameter(Mandatory,
            ParameterSetName = 'ByCredential')]
        [uri]
        $Instance,

        [Parameter(Mandatory,
            ParameterSetName = 'ByCredential')]
        [pscredential]
        $Credential,

        [Parameter(ParameterSetName = 'ByCredential')]
        [string]
        $Proxy,

        [Parameter(ParameterSetName = 'ByCredential')]
        [pscredential]
        $ProxyCredential,

        [Parameter(Mandatory,
            ParameterSetName = 'BySession')]
        [object]
        $Session,

        [Parameter(Mandatory)]
        [string]
        $GrantType,

        [Parameter(Mandatory)]
        [string]
        $Scope,

        [Parameter(Mandatory)]
        [string]
        $Origin,

        [Parameter(Mandatory)]
        [string]
        $Referer
    )

    begin
    {
        If ($PSCmdlet.ParameterSetName -eq 'BySession')
        {
            $currentSession = $Session | Get-HSSession
            If ($currentSession)
            {
                $Instance = $currentSession.Instance
                $Credential = $currentSession.Credential
                $Proxy = $currentSession.Proxy
                $ProxyCredential = $currentSession.ProxyCredential
            }
        }
    }
        
    process
    {
        $headers = @{
            origin  = $Origin
            referer = $Referer
        }
        $body = @{
            'grant_type' = $GrantType
            scope        = $Scope
            username     = $Credential.UserName
            password     = $Credential.GetNetworkCredential().Password
        }
        $apiEndpoint = Get-HSApiEndpoint -ApiType 'account-token'
        $setAPUriSplat = @{
            Instance    = $Instance
            ApiEndpoint = $apiEndpoint
        }
        [uri] $uri = Set-HSUri @setAPUriSplat
        $invokeAPRestMethodSplat = @{
            Method          = 'POST'
            Uri             = $uri
            Credential      = $Credential
            Headers         = $headers
            Body            = $body
            ContentType     = 'application/x-www-form-urlencoded'
            Proxy           = $Proxy
            ProxyCredential = $ProxyCredential
        }
        $results = Invoke-HSRestMethod @invokeAPRestMethodSplat 
        If ($results)
        {
            return $results
        }
    }
    
    end
    {
    }
}
# New-HSContact.ps1
function New-HSContact
{
    <#
    .SYNOPSIS

    Creates a HubSpot contact.

    .DESCRIPTION
    
    Creates a contact with the given properties and returns a copy of the object, including the id.

    .PARAMETER Session

    HubSpot session, created by New-HSSession.

    .PARAMETER Properties

    The property object used to update the contact.

    .INPUTS

    None, does not support pipeline.

    .OUTPUTS

    PSObject, HS contact.

    .EXAMPLE

    Creates a contact with the provided properties.

    $props = @{
        firstname = 'John'
        lastname = 'Cena'
        email = 'youcantseeme@gmail.com'
    }
    New-HSContact -Session 'mySession' -Properties $props

    .LINK

    https://developers.hubspot.com/docs/api/crm/contacts
    #>
    [CmdletBinding()]
    Param
    (
        [Parameter(Mandatory)]
        [object]
        $Session, 

        [Parameter(Mandatory)]
        [Object]
        $Properties
    )

    begin
    {
        $currentSession = $Session | Get-HSSession
        If ($currentSession)
        {
            $instance = $currentSession.Instance
            $personalaccesstoken = $currentSession.PersonalAccessToken
            $proxy = $currentSession.Proxy
            $proxyCredential = $currentSession.ProxyCredential
        }
    }
        
    process
    {
        $body = @{
            properties = $Properties
        }
        $apiEndpoint = Get-HSApiEndpoint -ApiType 'crm-contacts'
        $queryParameters = Set-HSQueryParameters -InputObject $PSBoundParameters -PersonalAccessToken $personalaccesstoken
        $setAPUriSplat = @{
            Instance    = $instance
            ApiEndpoint = $apiEndpoint
            Query       = $queryParameters
        }
        [uri] $uri = Set-HSUri @setAPUriSplat
        $invokeAPRestMethodSplat = @{
            Method          = 'POST'
            Uri             = $uri
            Body            = $body
            FormatBody      = $true
            ContentType     = 'application/json'
            Proxy           = $proxy
            ProxyCredential = $proxyCredential
        }
        $results = Invoke-HSRestMethod @invokeAPRestMethodSplat 
        If ($results)
        {
            $results
        }
    }
    
    end
    {
    }
}
# New-HSContactBatch.ps1
function New-HSContactBatch
{
    <#
    .SYNOPSIS

    Creates a batch of HubSpot contacts.

    .DESCRIPTION
    
    Creates a batch of HS contacts with the given properties and returns a copy of the object, including the status.

    .PARAMETER Session

    HubSpot session, created by New-HSSession.

    .PARAMETER InputObject

    Array of contact properties.

    .INPUTS

    None, does not support pipeline.

    .OUTPUTS

    PSObject, HS contact.

    .EXAMPLE

    Creates a contact with the provided properties.

    $inputs = @(
        @{
            properties = @{
                firstname = 'John'
                lastname  = 'Cena'
                email     = 'youcantseeme@gmail.com'
            }
        },
        @{
            properties = @{
                firstname = 'Jack'
                lastname  = 'Black'
                email     = 'rockinout@gmail.com'
            }
        }
    )
    New-HSContactBatch -Session $session -InputObject $inputs

    .LINK

    https://developers.hubspot.com/docs/api/crm/contacts
    #>
    [CmdletBinding()]
    Param
    (
        [Parameter(Mandatory)]
        [object]
        $Session, 

        [Parameter(Mandatory)]
        [Object[]]
        $InputObject
    )

    begin
    {
        $currentSession = $Session | Get-HSSession
        If ($currentSession)
        {
            $instance = $currentSession.Instance
            $personalaccesstoken = $currentSession.PersonalAccessToken
            $proxy = $currentSession.Proxy
            $proxyCredential = $currentSession.ProxyCredential
        }
    }
        
    process
    {
        $body = @{
            inputs = $InputObject
        }
        $apiEndpoint = Get-HSApiEndpoint -ApiType 'crm-contacts-batch-create'
        $queryParameters = Set-HSQueryParameters -InputObject $PSBoundParameters -PersonalAccessToken $personalaccesstoken
        $setAPUriSplat = @{
            Instance    = $instance
            ApiEndpoint = $apiEndpoint
            Query       = $queryParameters
        }
        [uri] $uri = Set-HSUri @setAPUriSplat
        $invokeAPRestMethodSplat = @{
            Method          = 'POST'
            Uri             = $uri
            Body            = $body
            FormatBody      = $true
            ContentType     = 'application/json'
            Proxy           = $proxy
            ProxyCredential = $proxyCredential
        }
        $results = Invoke-HSRestMethod @invokeAPRestMethodSplat 
        If ($results)
        {
            $results
        }
    }
    
    end
    {
    }
}
# New-HSDeal.ps1
function New-HSDeal
{
    <#
    .SYNOPSIS

    Creates a HubSpot deal.

    .DESCRIPTION
    
    Creates a deal with the given properties and returns a copy of the object, including the id.

    .PARAMETER Session

    HubSpot session, created by New-HSSession.

    .PARAMETER Properties

    The property object used to update the deal.

    .INPUTS

    None, does not support pipeline.

    .OUTPUTS

    PSObject, HS deal.

    .EXAMPLE

    Creates a deal with the provided properties.

    $props = @{
        firstname = 'John'
        lastname = 'Cena'
        email = 'youcantseeme@gmail.com'
    }
    New-HSDeal -Session 'mySession' -Properties $props

    .LINK

    https://developers.hubspot.com/docs/api/crm/deals
    #>
    [CmdletBinding()]
    Param
    (
        [Parameter(Mandatory)]
        [object]
        $Session,

        [Parameter(Mandatory)]
        [Object]
        $Properties
    )

    begin
    {
        $currentSession = $Session | Get-HSSession
        If ($currentSession)
        {
            $instance = $currentSession.Instance
            $personalaccesstoken = $currentSession.PersonalAccessToken
            $proxy = $currentSession.Proxy
            $proxyCredential = $currentSession.ProxyCredential
        }
    }
        
    process
    {
        $body = @{
            properties = $Properties
        }
        $apiEndpoint = Get-HSApiEndpoint -ApiType 'crm-deals'
        $queryParameters = Set-HSQueryParameters -InputObject $PSBoundParameters -PersonalAccessToken $personalaccesstoken
        $setAPUriSplat = @{
            Instance    = $instance
            ApiEndpoint = $apiEndpoint
            Query       = $queryParameters
        }
        [uri] $uri = Set-HSUri @setAPUriSplat
        $invokeAPRestMethodSplat = @{
            Method          = 'POST'
            Uri             = $uri
            Body            = $body
            FormatBody      = $true
            ContentType     = 'application/json'
            Proxy           = $proxy
            ProxyCredential = $proxyCredential
        }
        $results = Invoke-HSRestMethod @invokeAPRestMethodSplat 
        If ($results)
        {
            $results
        }
    }
    
    end
    {
    }
}
# New-HSDealAssociation.ps1
function New-HSDealAssociation
{
    <#
    .SYNOPSIS

    Creates a HubSpot deal.

    .DESCRIPTION
    
    Associate a deal with another object using the deal id.
    Identify the deal name with Get-HSDealList.

    .PARAMETER Session

    HubSpot session, created by New-HSSession.

    .PARAMETER DealId

    The name of the deal.

    .PARAMETER ToObjectType

    CRM objects are defined by a primary type and a set of properties. Each type has a unique set of standard properties, represented by a map of name-value pairs.
    - Contacts
    - Companies
    - Deals
    - Tickets

    .PARAMETER ToObjectId

    The target object id.

    .PARAMETER AssociationType

    Associations represent the relationships between objects in the HubSpot CRM.
    The CRM associations endpoints help manage and define those relationships, allowing you to create a more holistic picture of your customer interactions and improving your ability to market, sell, and serve.

    .INPUTS

    None, does not support pipeline.

    .OUTPUTS

    PSObject, HS deal.

    .EXAMPLE

    Associate a deal with another object using the deal id.

    .LINK

    https://developers.hubspot.com/docs/api/crm/deals
    #>
    [CmdletBinding()]
    Param
    (
        [Parameter(Mandatory)]
        [object]
        $Session,

        [Parameter(Mandatory)]
        [string]
        $DealId,

        [Parameter(Mandatory)]
        [ValidateSet('Contacts', 'Companies', 'Deals', 'Tickets')]
        [string]
        $ToObjectType,

        [Parameter(Mandatory)]
        [string]
        $ToObjectId,
        
        [Parameter(Mandatory)]
        [ValidateSet(
            'Contact_to_company',
            'Company_to_contact',
            'Deal_to_contact',
            'Contact_to_deal',
            'Deal_to_company',
            'Company_to_deal',
            'Company_to_engagement',
            'Engagement_to_company',
            'Contact_to_engagement',
            'Engagement_to_contact',
            'Deal_to_engagement',
            'Engagement_to_deal',
            'Parent_company_to_child_company',
            'Child_company_to_parent_company',
            'Contact_to_ticket',
            'Ticket_to_contact',
            'Ticket_to_engagement',
            'Engagement_to_ticket',
            'Deal_to_line_item',
            'Line_item_to_deal',
            'Company_to_ticket',
            'Ticket_to_company',
            'Deal_to_ticket',
            'Ticket_to_deal',
            'Advisor_to_company',
            'Company_to_advisor',
            'Board_member_to_company',
            'Company_to_board_member',
            'Contractor_to_company',
            'Company_to_contractor',
            'Manager_to_company',
            'Company_to_manager',
            'Business_owner_to_company',
            'Company_to_business_owner',
            'Partner_to_company',
            'Company_to_partner',
            'Reseller_to_company',
            'Company_to_reseller'
        )]
        [AssociationType]
        $AssociationType
        
    )

    begin
    {
        $currentSession = $Session | Get-HSSession
        If ($currentSession)
        {
            $instance = $currentSession.Instance
            $personalaccesstoken = $currentSession.PersonalAccessToken
            $proxy = $currentSession.Proxy
            $proxyCredential = $currentSession.ProxyCredential
        }
    }
        
    process
    {
        $PSBoundParameters.AssociationType = [AssociationType]::$AssociationType.value__
        $apiEndpoint = (Get-HSApiEndpoint -ApiType 'crm-deals-associationType') -f $DealId, $ToObjectType, $ToObjectId, $AssociationType
        $queryParameters = Set-HSQueryParameters -InputObject $PSBoundParameters -PersonalAccessToken $personalaccesstoken
        $setAPUriSplat = @{
            Instance    = $instance
            ApiEndpoint = $apiEndpoint
            Query       = $queryParameters
        }
        [uri] $uri = Set-HSUri @setAPUriSplat
        $invokeAPRestMethodSplat = @{
            Method          = 'PUT'
            Uri             = $uri
            ContentType     = 'application/json'
            Proxy           = $proxy
            ProxyCredential = $proxyCredential
        }
        $results = Invoke-HSRestMethod @invokeAPRestMethodSplat 
        If ($results)
        {
            $results
        }
    }
    
    end
    {
    }
}
# New-HSDealBatch.ps1
function New-HSDealBatch
{
    <#
    .SYNOPSIS

    Creates a batch of HubSpot deals.

    .DESCRIPTION
    
    Create a batch of deals. This follows the same rules as creating an individual deal.

    .PARAMETER Session

    HubSpot session, created by New-HSSession.

    .PARAMETER InputObject

    Array of deal properties.

    .INPUTS

    None, does not support pipeline.

    .OUTPUTS

    PSObject, HS deal.

    .EXAMPLE

    Creates a deal with the provided properties.

    $inputs = @(
        @{
            properties = @{
                firstname = 'John'
                lastname  = 'Cena'
                email     = 'youcantseeme@gmail.com'
            }
        },
        @{
            properties = @{
                firstname = 'Jack'
                lastname  = 'Black'
                email     = 'rockinout@gmail.com'
            }
        }
    )
    New-HSDealBatch -Session $session -InputObject $inputs

    .LINK

    https://developers.hubspot.com/docs/api/crm/deals
    #>
    [CmdletBinding()]
    Param
    (
        [Parameter(Mandatory)]
        [object]
        $Session, 

        [Parameter(Mandatory)]
        [Object[]]
        $InputObject
    )

    begin
    {
        $currentSession = $Session | Get-HSSession
        If ($currentSession)
        {
            $instance = $currentSession.Instance
            $personalaccesstoken = $currentSession.PersonalAccessToken
            $proxy = $currentSession.Proxy
            $proxyCredential = $currentSession.ProxyCredential
        }
    }
        
    process
    {
        $body = @{
            inputs = $InputObject
        }
        $apiEndpoint = Get-HSApiEndpoint -ApiType 'crm-deals-batch-create'
        $queryParameters = Set-HSQueryParameters -InputObject $PSBoundParameters -PersonalAccessToken $personalaccesstoken
        $setAPUriSplat = @{
            Instance    = $instance
            ApiEndpoint = $apiEndpoint
            Query       = $queryParameters
        }
        [uri] $uri = Set-HSUri @setAPUriSplat
        $invokeAPRestMethodSplat = @{
            Method          = 'POST'
            Uri             = $uri
            Body            = $body
            FormatBody      = $true
            ContentType     = 'application/json'
            Proxy           = $proxy
            ProxyCredential = $proxyCredential
        }
        $results = Invoke-HSRestMethod @invokeAPRestMethodSplat 
        If ($results)
        {
            $results
        }
    }
    
    end
    {
    }
}
# New-HSProperty.ps1
function New-HSProperty
{
    <#
    .SYNOPSIS

    Creates a HubSpot property.

    .DESCRIPTION
    
    Creates a property with the given properties and returns a copy of the object, including the id.

    .PARAMETER Session

    HubSpot session, created by New-HSSession.

    .PARAMETER ObjectType

    CRM objects are defined by a primary type and a set of properties. Each type has a unique set of standard properties, represented by a map of name-value pairs.
    - Contacts
    - Companies
    - Deals
    - Tickets

    .PARAMETER Name

    The internal property name, which must be used when referencing the property via the API.

    .PARAMETER Label

    A human-readable property label that will be shown in HubSpot.

    .PARAMETER Type

    The data type of the property.

    .PARAMETER FieldType

    Controls how the property appears in HubSpot.

    .PARAMETER GroupName

    The name of the property group the property belongs to.

    .PARAMETER Description

    A description of the property that will be shown as help text in HubSpot.

    .PARAMETER Options

    A list of valid options for the property. This field is required for enumerated properties.

    .PARAMETER DisplayOrder

    Properties are displayed in order starting with the lowest positive integer value. Values of -1 will cause the property to be displayed after any positive values.

    .PARAMETER HasUniqueValue

    Whether or not the property's value must be unique. Once set, this can't be changed.

    .PARAMETER Hidden

    If true, the property won't be visible and can't be used in HubSpot.

    .PARAMETER FormField

    Whether or not the property can be used in a HubSpot form.

    .INPUTS

    None, does not support pipeline.

    .OUTPUTS

    PSObject, HS property.

    .EXAMPLE

    Creates a property with the provided properties.

    .LINK
    
    https://developers.hubspot.com/docs/api/crm/properties
    #>
    [CmdletBinding()]
    Param
    (
        [Parameter(Mandatory)]
        [object]
        $Session, 

        [Parameter(Mandatory)]
        [ValidateSet('Contacts', 'Companies', 'Deals', 'Tickets')]
        [string]
        $ObjectType,

        [Parameter(Mandatory)]
        [string]
        $Name,

        [Parameter(Mandatory)]
        [string]
        $Label,

        [Parameter(Mandatory)]
        [ValidateSet('string', 'number', 'date', 'datetime', 'enumeration')]
        [string]
        $Type,

        [Parameter(Mandatory)]
        [ValidateSet('testarea', 'text', 'date', 'file', 'number', 'select', 'radio', 'checkbox', 'booleancheckbox')]
        [string]
        $FieldType,

        [Parameter(Mandatory)]
        [string]
        $GroupName,

        [Parameter()]
        [string]
        $Description,

        [Parameter()]
        [object[]]
        $Options,

        [Parameter()]
        [int]
        $DisplayOrder,

        [Parameter()]
        [bool]
        $HasUniqueValue,

        [Parameter()]
        [bool]
        $Hidden,

        [Parameter()]
        [bool]
        $FormField
    )

    begin
    {
        $currentSession = $Session | Get-HSSession
        If ($currentSession)
        {
            $instance = $currentSession.Instance
            $personalaccesstoken = $currentSession.PersonalAccessToken
            $proxy = $currentSession.Proxy
            $proxyCredential = $currentSession.ProxyCredential
        }
    }
        
    process
    {
        $body = @{
            name           = $Name.ToLower()
            groupName      = $GroupName
            hidden         = $Hidden
            displayOrder   = $DisplayOrder
            options        = $Options
            label          = $Label
            hasUniqueValue = $HasUniqueValue
            type           = $Type
            fieldType      = $FieldType
            formField      = $FormField
        }
        $apiEndpoint = (Get-HSApiEndpoint -ApiType 'crm-properties-objectType') -f $ObjectType
        $queryParameters = Set-HSQueryParameters -InputObject $PSBoundParameters -PersonalAccessToken $personalaccesstoken
        $setAPUriSplat = @{
            Instance    = $instance
            ApiEndpoint = $apiEndpoint
            Query       = $queryParameters
        }
        [uri] $uri = Set-HSUri @setAPUriSplat
        $invokeAPRestMethodSplat = @{
            Method          = 'POST'
            Uri             = $uri
            Body            = $body
            ContentType     = 'application/json'
            Proxy           = $proxy
            ProxyCredential = $proxyCredential
        }
        $results = Invoke-HSRestMethod @invokeAPRestMethodSplat 
        If ($results)
        {
            $results
        }
    }
    
    end
    {
    }
}
# New-HSSession.ps1
Function New-HSSession
{
    <#
    .SYNOPSIS

    Creates a HubSpot session.

    .DESCRIPTION

    Creates a HubSpot session.
    Use Save-HSSession to persist the session data to disk.
    Save the session to a variable to pass the session to other functions.

    .PARAMETER SessionName

    The name of the session.

    .PARAMETER Instance

    The HubSpot api instance.

    .PARAMETER PersonalAccessToken

    Specifies a user account that has permission to send the request.

    .PARAMETER Proxy

    Use a proxy server for the request, rather than connecting directly to the Internet resource. Enter the URI of a network proxy server.

    .PARAMETER ProxyCredential

    Specifie a user account that has permission to use the proxy server that is specified by the -Proxy parameter. The default is the current user.

    .PARAMETER Session

    HubSpot session, created by New-HSSession.

    .PARAMETER Path

    The path where module data will be stored, defaults to $Script:ModuleDataPath.

    .LINK

    Save-HSSession
    Remove-HSSession

    .INPUTS

    None, does not support pipeline.

    .OUTPUTS

    PSObject. New-HSSession returns a PSObject.

    .EXAMPLE

    #>
    [CmdletBinding()]
    Param
    (
        [Parameter(Mandatory)]
        [string]
        $SessionName,

        [Parameter(Mandatory)]
        [uri]
        $Instance,

        [Parameter(Mandatory)]
        [string]
        $PersonalAccessToken,

        [Parameter()]
        [string]
        $Proxy,

        [Parameter()]
        [pscredential]
        $ProxyCredential
    )
    Process
    {
        [int] $_sessionIdcount = (Get-HSSession -ErrorAction 'SilentlyContinue' | Sort-Object -Property 'Id' | Select-Object -Last 1 -ExpandProperty 'Id') + 1
        $_session = New-Object -TypeName PSCustomObject -Property @{
            SessionName         = $SessionName
            Instance            = $Instance
            PersonalAccessToken = ($PersonalAccessToken | ConvertTo-SecureString -AsPlainText -Force)
            Id                  = $_sessionIdcount
        }
        If ($Proxy)
        {
            $_session | Add-Member -NotePropertyName 'Proxy' -NotePropertyValue $Proxy
        }
        If ($ProxyCredential)
        {
            $_session | Add-Member -NotePropertyName 'ProxyCredential' -NotePropertyValue $ProxyCredential
        }
        If ($null -eq $Global:_HSSessions)
        {
            $Global:_HSSessions = @()
        }
        $Global:_HSSessions += $_session
        Return $_session
    }
}

# Remove-HSContact.ps1
function Remove-HSContact
{
    <#
    .SYNOPSIS

    Removes a HubSpot contact.

    .DESCRIPTION

    Moves a contact identified by contactId to the recycling bin.
    Identify the contact id with Remove-HSContactList.

    .PARAMETER Session

    HubSpot session, created by New-HSSession.

    .PARAMETER ContactId

    The id of the contact.

    .INPUTS

    None, does not support pipeline.

    .OUTPUTS

    PSObject, HS contact.

    .EXAMPLE

    Removes a contact with the id of 7.

    Remove-HSContact -Session 'mySession' -ContactId '7'

    .LINK
    
    https://developers.hubspot.com/docs/api/crm/contacts
    #>
    [CmdletBinding()]
    Param
    (
        [Parameter(Mandatory)]
        [object]
        $Session, 

        [Parameter(Mandatory)]
        [string]
        $ContactId
    )

    begin
    {
        $currentSession = $Session | Get-HSSession
        If ($currentSession)
        {
            $instance = $currentSession.Instance
            $personalaccesstoken = $currentSession.PersonalAccessToken
            $proxy = $currentSession.Proxy
            $proxyCredential = $currentSession.ProxyCredential
        }
    }
        
    process
    {
        $apiEndpoint = (Get-HSApiEndpoint -ApiType 'crm-contactId') -f $ContactId
        $queryParameters = Set-HSQueryParameters -InputObject $PSBoundParameters -PersonalAccessToken $personalaccesstoken
        $setAPUriSplat = @{
            Instance    = $instance
            ApiEndpoint = $apiEndpoint
            Query       = $queryParameters
        }
        [uri] $uri = Set-HSUri @setAPUriSplat
        $invokeAPRestMethodSplat = @{
            Method          = 'DELETE'
            Uri             = $uri
            ContentType     = 'application/json'
            Proxy           = $proxy
            ProxyCredential = $proxyCredential
        }
        $results = Invoke-HSRestMethod @invokeAPRestMethodSplat 
        If ($results)
        {
            $results
        }
    }
    
    end
    {
    }
}
# Remove-HSDeal.ps1
function Remove-HSDeal
{
    <#
    .SYNOPSIS

    Removes a HubSpot deal.

    .DESCRIPTION

    Moves a deal identified by dealId to the recycling bin.
    Identify the deal id with Remove-HSDealList.

    .PARAMETER Session

    HubSpot session, created by New-HSSession.

    .PARAMETER DealId

    The id of the deal.

    .INPUTS

    None, does not support pipeline.

    .OUTPUTS

    PSObject, HS deal.

    .EXAMPLE

    Removes a deal with the id of 7.

    Remove-HSDeal -Session 'mySession' -DealId '7'

    .LINK

    https://developers.hubspot.com/docs/api/crm/deals
    #>
    [CmdletBinding()]
    Param
    (
        [Parameter(Mandatory)]
        [object]
        $Session, 

        [Parameter(Mandatory)]
        [string]
        $DealId
    )

    begin
    {
        $currentSession = $Session | Get-HSSession
        If ($currentSession)
        {
            $instance = $currentSession.Instance
            $personalaccesstoken = $currentSession.PersonalAccessToken
            $proxy = $currentSession.Proxy
            $proxyCredential = $currentSession.ProxyCredential
        }
    }
        
    process
    {
        $apiEndpoint = (Get-HSApiEndpoint -ApiType 'crm-dealId') -f $DealId
        $queryParameters = Set-HSQueryParameters -InputObject $PSBoundParameters -PersonalAccessToken $personalaccesstoken
        $setAPUriSplat = @{
            Instance    = $instance
            ApiEndpoint = $apiEndpoint
            Query       = $queryParameters
        }
        [uri] $uri = Set-HSUri @setAPUriSplat
        $invokeAPRestMethodSplat = @{
            Method          = 'DELETE'
            Uri             = $uri
            ContentType     = 'application/json'
            Proxy           = $proxy
            ProxyCredential = $proxyCredential
        }
        $results = Invoke-HSRestMethod @invokeAPRestMethodSplat 
        If ($results)
        {
            $results
        }
    }
    
    end
    {
    }
}
# Remove-HSSession.ps1
Function Remove-HSSession
{
    <#
    .SYNOPSIS

    Removes a HubSpot session.

    .DESCRIPTION

    Removes a HubSpot session.
    If the session is saved, it will be removed from the saved sessions as well.

    .PARAMETER Id
    
    Session id.

    .PARAMETER Path
    
    The path where session data will be stored, defaults to $Script:ModuleDataPath.

    .LINK

    Save-HSSession
    Remove-HSSession

    .INPUTS

    PSObject. Get-HSSession

    .OUTPUTS

    None. Does not supply output.

    .EXAMPLE

    Deletes AP session with the id of '2'.

    Remove-HSSession -Id 2

    .EXAMPLE

    Deletes all AP sessions in memory and stored on disk.

    Remove-HSSession

    #>
    [CmdletBinding()]
    Param
    (
        [Parameter(Mandatory,
            ValueFromPipelineByPropertyName)]
        [int]
        $Id,
       
        [Parameter()]
        [string]
        $Path = $Script:ModuleDataPath
    )
    Process
    {
        $sessions = Get-HSSession -Id $Id
        Foreach ($session in $sessions)
        {
            If ($session.Saved -eq $true)
            {
                $newData = @{SessionData = @() }
                $data = Get-Content -Path $Path -Raw | ConvertFrom-Json
                Foreach ($_data in $data.SessionData)
                {
                    If ($_data.Id -eq $session.Id)
                    {
                        Continue
                    }       
                    else
                    {
                        $newData.SessionData += $_data
                    }
                }
                $newData | ConvertTo-Json -Depth 5 | Out-File -FilePath $Path
            }
            [array] $Global:_HSSessions = $Global:_HSSessions | Where-Object { $PSItem.Id -ne $session.Id }
        }
    }
}
# Save-HSSession.ps1
Function Save-HSSession
{
    <#
    .SYNOPSIS

    Saves an HubSpot PS session to disk.

    .DESCRIPTION

    Saves an HubSpot PS session to disk.
    The sensetive data is encrypted and stored in the users local application data.
    These saved sessions will be available next time the module is imported. 

    .PARAMETER Session

    HubSpotPS session, created by New-HSSession.

    .PARAMETER Path
    
    The path where session data will be stored, defaults to $Script:ModuleDataPath.

    .PARAMETER PassThru
    
    Returns the saved session object.
    
    .INPUTS

    PSbject. Get-HSSession, New-HSSession

    .OUTPUTS

    None. Save-HSSession does not generate any output.

    .EXAMPLE
    
    #>

    [CmdletBinding()]
    Param
    (
        [Parameter(Mandatory,
            ValueFromPipeline)]
        [object]
        $Session,
       
        [Parameter()]
        [string]
        $Path = $Script:ModuleDataPath
    )
    Begin
    {
        If (-not(Test-Path $Path))
        {
            $data = @{SessionData = @() }
        }
        else 
        {
            $data = Get-Content -Path $Path -Raw | ConvertFrom-Json
        }
    }
    Process
    {
        If ($data.SessionData.Id -notcontains $session.Id)
        {
            $_object = @{
                Version     = $Session.Version
                ApiVersion  = $Session.ApiVersion
                Instance    = $Session.Instance
                Id          = $Session.Id
                SessionName = $Session.SessionName
                Collection  = $Session.Collection
                Project     = $Session.Project
                Saved       = $true
            }
            If ($Session.PersonalAccessToken)
            {
                $_object.PersonalAccessToken = ($Session.PersonalAccessToken | ConvertFrom-SecureString) 
            }
            If ($Session.Credential)
            {
                $_credentialObject = @{
                    Username = $Session.Credential.UserName
                    Password = ($Session.Credential.GetNetworkCredential().SecurePassword | ConvertFrom-SecureString)
                }
                $_object.Credential = $_credentialObject
            }
            If ($Session.Proxy)
            {
                $_object.Proxy = $Session.Proxy
            }
            If ($Session.ProxyCredential)
            {
                $_proxyCredentialObject = @{
                    Username = $Session.ProxyCredential.UserName
                    Password = ($Session.ProxyCredential.GetNetworkCredential().SecurePassword | ConvertFrom-SecureString)
                }
                $_object.ProxyCredential = $_proxyCredentialObject
            }
            $data.SessionData += $_object
            $session | Remove-HSSession -Path $Path
        }
    }
    End
    {
        $data | ConvertTo-Json -Depth 5 | Out-File -FilePath $Path
        Write-Verbose "[$($MyInvocation.MyCommand.Name)]: [$SessionName]: Session data has been stored at [$Path]"
    }
}

# Update-HSContact.ps1
function Update-HSContact
{
    <#
    .SYNOPSIS

    Updates a HubSpot contact to the data provided by contact id.

    .DESCRIPTION
    
    Perform a partial update of an Object identified by contactId. 
    Identify the contactId with Get-HSContactList.
    Provided property values will be overwritten. 
    Read-only and non-existent properties will be ignored. 
    Properties values can be cleared by passing an empty string.

    .PARAMETER Session

    HubSpot session, created by New-HSSession.

    .PARAMETER ContactId

    The id of the contact.

    .PARAMETER Properties

    The property object used to update the contact.

    .INPUTS

    None, does not support pipeline.

    .OUTPUTS

    PSObject, HS contact.

    .EXAMPLE

    Updates the contact properties for the contact with the id of 7.

    $props = @{
        firstname = 'John'
        lastname = 'Cena'
        email = 'youcantseeme@gmail.com
    }
    Update-HSContact -Session 'mySession' -ContactId '7' -Properties $props

    .LINK

    https://developers.hubspot.com/docs/api/crm/contacts
    #>
    [CmdletBinding()]
    Param
    (
        [Parameter(Mandatory)]
        [object]
        $Session, 

        [Parameter(Mandatory)]
        [string]
        $ContactId,

        [Parameter(Mandatory)]
        [Object]
        $Properties
    )

    begin
    {
        $currentSession = $Session | Get-HSSession
        If ($currentSession)
        {
            $instance = $currentSession.Instance
            $personalaccesstoken = $currentSession.PersonalAccessToken
            $proxy = $currentSession.Proxy
            $proxyCredential = $currentSession.ProxyCredential
        }
    }
        
    process
    {
        $body = @{
            properties = $Properties
        }
        $apiEndpoint = (Get-HSApiEndpoint -ApiType 'crm-contactId') -f $ContactId
        $queryParameters = Set-HSQueryParameters -InputObject $PSBoundParameters -PersonalAccessToken $personalaccesstoken
        $setAPUriSplat = @{
            Instance    = $instance
            ApiEndpoint = $apiEndpoint
            Query       = $queryParameters
        }
        [uri] $uri = Set-HSUri @setAPUriSplat
        $invokeAPRestMethodSplat = @{
            Method          = 'PATCH'
            Uri             = $uri
            Body            = $body
            FormatBody      = $true
            ContentType     = 'application/json'
            Proxy           = $proxy
            ProxyCredential = $proxyCredential
        }
        $results = Invoke-HSRestMethod @invokeAPRestMethodSplat 
        If ($results)
        {
            $results
        }
    }
    
    end
    {
    }
}
# Update-HSDeal.ps1
function Update-HSDeal
{
    <#
    .SYNOPSIS

    Updates a HubSpot deal to the data provided by deal id.

    .DESCRIPTION
    
    Perform a partial update of an Object identified by dealId. 
    Identify the dealId with Get-HSDealList.
    Provided property values will be overwritten. 
    Read-only and non-existent properties will be ignored. 
    Properties values can be cleared by passing an empty string.

    .PARAMETER Session

    HubSpot session, created by New-HSSession.

    .PARAMETER DealId

    The id of the deal.

    .PARAMETER Properties

    The property object used to update the deal.

    .INPUTS

    None, does not support pipeline.

    .OUTPUTS

    PSObject, HS deal.

    .EXAMPLE

    Updates the deal properties for the deal with the id of 7.

    $props = @{
        firstname = 'John'
        lastname = 'Cena'
        email = 'youcantseeme@gmail.com
    }
    Update-HSDeal -Session 'mySession' -DealId '7' -Properties $props

    .LINK

    https://developers.hubspot.com/docs/api/crm/deals
    #>
    [CmdletBinding()]
    Param
    (
        [Parameter(Mandatory)]
        [object]
        $Session, 

        [Parameter(Mandatory)]
        [string]
        $DealId,

        [Parameter(Mandatory)]
        [Object]
        $Properties
    )

    begin
    {
        $currentSession = $Session | Get-HSSession
        If ($currentSession)
        {
            $instance = $currentSession.Instance
            $personalaccesstoken = $currentSession.PersonalAccessToken
            $proxy = $currentSession.Proxy
            $proxyCredential = $currentSession.ProxyCredential
        }
    }
        
    process
    {
        $body = @{
            properties = $Properties
        }
        $apiEndpoint = (Get-HSApiEndpoint -ApiType 'crm-dealId') -f $DealId
        $queryParameters = Set-HSQueryParameters -InputObject $PSBoundParameters -PersonalAccessToken $personalaccesstoken
        $setAPUriSplat = @{
            Instance    = $instance
            ApiEndpoint = $apiEndpoint
            Query       = $queryParameters
        }
        [uri] $uri = Set-HSUri @setAPUriSplat
        $invokeAPRestMethodSplat = @{
            Method          = 'PATCH'
            Uri             = $uri
            Body            = $body
            FormatBody      = $true
            ContentType     = 'application/json'
            Proxy           = $proxy
            ProxyCredential = $proxyCredential
        }
        $results = Invoke-HSRestMethod @invokeAPRestMethodSplat 
        If ($results)
        {
            $results
        }
    }
    
    end
    {
    }
}
# Update-HSSession.ps1
Function Update-HSSession
{
    <#
    .SYNOPSIS

    Updates an HubSpotPS session.

    .DESCRIPTION

    Updates an HubSpotPS session.
    The sensetive data is encrypted and stored in the users local application data.
    These updated sessions are available immediately.
    If the session was previously saved is will remain saved.

    .PARAMETER SessionName

    The friendly name of the session.

    .PARAMETER Id 

    The id of the session.

    .PARAMETER Instance

    The Team Services account or TFS server.

    .PARAMETER PersonalAccessToken

    Personal access token used to authenticate that has been converted to a secure string. 

    .PARAMETER Credential

    Specifies a user account that has permission to the project.

    .PARAMETER Version

    TFS version, this will provide the module with the api version mappings. 

    .PARAMETER ApiVersion
    
    Version of the api to use.

    .PARAMETER Proxy

    Use a proxy server for the request, rather than connecting directly to the Internet resource. Enter the URI of a network proxy server.

    .PARAMETER ProxyCredential

    Specifie a user account that has permission to use the proxy server that is specified by the -Proxy parameter. The default is the current user.

    .PARAMETER Path

    The path where module data will be stored, defaults to $Script:ModuleDataPath.

    .INPUTS

    PSbject. Get-HSSession, New-HSSession

    .OUTPUTS

    None. Update-HSSession does not generate any output.

    .EXAMPLE
    
    Updates the AP session named 'myFirstSession' with the api version of '6.0-preview.1'

    Update-HSSession -SessionName 'myFirstSession' -HSiVersion '6.0-preview.1'
    #>

    [CmdletBinding(DefaultParameterSetName = 'ByPersonalAccessToken')]
    Param
    (
        [Parameter(Mandatory)]
        [string]
        $SessionName,

        [Parameter()]
        [string]
        $Id,

        [Parameter()]
        [uri]
        $Instance,

        [Parameter(ParameterSetName = 'ByPersonalAccessToken')]
        [string]
        $PersonalAccessToken,

        [Parameter(ParameterSetName = 'ByCredential')]
        [pscredential]
        $Credential,

        [Parameter()]
        [string]
        $Proxy,

        [Parameter()]
        [pscredential]
        $ProxyCredential,

        [Parameter()]
        [string]
        $Path = $Script:ModuleDataPath
    )
    Begin
    {

    }
    Process
    {
        $getLSSessionSplat = @{
            SessionName = $SessionName
        }
        If ($Id)
        {
            $getLSSessionSplat.Id = $Id
        }
        $existingSessions = Get-HSSession @getLSSessionSplat
        If ($existingSessions)
        {
            Foreach ($existingSession in $existingSessions)
            {
                $newLSSessionSplat = @{
                    SessionName = $SessionName
                }
                If ($Instance)
                {
                    $newLSSessionSplat.Instance = $Instance
                }
                else
                {
                    If ($existingSession.Instance)
                    {
                        $newLSSessionSplat.Instance = $existingSession.Instance
                    }
                }
                If ($PersonalAccessToken)
                {
                    $newLSSessionSplat.PersonalAccessToken = $PersonalAccessToken
                }
                else
                {
                    If ($existingSession.PersonalAccessToken)
                    {
                        $newLSSessionSplat.PersonalAccessToken = (Unprotect-HSSecurePersonalAccessToken -PersonalAccessToken $existingSession.PersonalAccessToken)
                    }
                }
                If ($Credential)
                {
                    $_credentialObject = @{
                        Username = $Session.Credential.UserName
                        Password = ($Session.Credential.GetNetworkCredential().SecurePassword | ConvertFrom-SecureString)
                    }
                    $newLSSessionSplat.Credential = $_credentialObject
                }
                else
                {
                    If ($existingSession.Credential)
                    {
                        $newLSSessionSplat.Credential = $existingSession.Credential
                    }
                }
                If ($Proxy)
                {
                    $newLSSessionSplat.Proxy = $Session.Proxy
                }
                else
                {
                    If ($existingSession.Proxy)
                    {
                        $newLSSessionSplat.Proxy = $existingSession.Proxy
                    }
                }
                If ($ProxyCredential)
                {
                    $_proxyCredentialObject = @{
                        Username = $Session.ProxyCredential.UserName
                        Password = ($Session.ProxyCredential.GetNetworkCredential().SecurePassword | ConvertFrom-SecureString)
                    }
                    $newLSSessionSplat.ProxyCredential = $_proxyCredentialObject
                }
                else
                {
                    If ($existingSession.ProxyCredential)
                    {
                        $newLSSessionSplat.ProxyCredential = $existingSession.ProxyCredential
                    }
                }
                If ($existingSession.Saved)
                {
                    $existingSession | Remove-HSSession -Path $Path
                    $session = New-HSSession @newLSSessionSplat | Save-HSSession
                }
                else
                {
                    $existingSession | Remove-HSSession -Path $Path
                    $session = New-HSSession @newLSSessionSplat
                }
            }
        }
        else
        {
            Write-Error "[$($MyInvocation.MyCommand.Name)]: Unable to locate an AP session with the name [$SessionName]." -ErrorAction Stop
        }
    }
    End
    {
    }
}

# Imported from [D:\a\1\s\HubSpotPS\Tests]
