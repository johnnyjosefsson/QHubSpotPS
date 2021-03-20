<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    

    <title>
        PowerShell Gallery
        | HubSpotPS.psm1 1.0.3
    </title>

    <link href="/favicon.ico" rel="shortcut icon" type="image/x-icon" />
        <link title="https://www.powershellgallery.com" type="application/opensearchdescription+xml" href="/opensearch.xml" rel="search">

    <link href="/Content/gallery/css/site.min.css?v=PiyChSWpJyC8Kpz_ZV5FuONZ0GHHOfH16uZN51B4pbI1" rel="stylesheet"/>

    <link href="/Content/gallery/css/branding.css?v=1.2" rel="stylesheet"/>



    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    

    
    
    
                <!-- Telemetry -->
            <script type="text/javascript">
                var appInsights = window.appInsights || function (config) {
                    function s(config) {
                        t[config] = function () {
                            var i = arguments;
                            t.queue.push(function () { t[config].apply(t, i) })
                        }
                    }

                    var t = { config: config }, r = document, f = window, e = "script", o = r.createElement(e), i, u;
                    for (o.src = config.url || "//az416426.vo.msecnd.net/scripts/a/ai.0.js", r.getElementsByTagName(e)[0].parentNode.appendChild(o), t.cookie = r.cookie, t.queue = [], i = ["Event", "Exception", "Metric", "PageView", "Trace"]; i.length;) s("track" + i.pop());
                    return config.disableExceptionTracking || (i = "onerror", s("_" + i), u = f[i], f[i] = function (config, r, f, e, o) {
                        var s = u && u(config, r, f, e, o);
                        return s !== !0 && t["_" + i](config, r, f, e, o), s
                    }), t
                }({
                    instrumentationKey: '50d4abc3-17d3-4a1b-8361-2d1e9ca8f6d5',
                    samplingPercentage: 100
                });

                window.appInsights = appInsights;
                appInsights.trackPageView();
            </script>

</head>
<body role="presentation">
    





<nav class="navbar navbar-inverse" role="navigation">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 text-center">
                <a href="#" id="skipToContent" class="showOnFocus" title="Skip To Content">Skip To Content</a>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-offset-1 col-sm-2">
                <div class="navbar-header">
                    <a href="/" class="nvabar-header-aLink">
                        <img class="navbar-logo img-responsive" alt="PowerShell Gallery Home"
                             src="/Content/Images/Branding/psgallerylogo.svg"
                                 onerror="this.src='https://powershellgallery.com/Content/Images/Branding/psgallerylogo.png'; this.onerror = null;"
 />
                    </a>
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar" title="Open Main Menu and profile dropdown">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
            </div>
            <div class="col-sm-12 col-md-8 special-margin-left">
                <div id="navbar" class="navbar-collapse collapse" role="navigation" aria-label="Navigation Bar">
                    <table role="presentation">
                        <tr>
                            <td colspan="3">
                                <ul class="nav navbar-nav" role="tablist">
                                        <li class="" role="presentation">
        <a role="tab" aria-selected="false" href="/packages" target="" aria-label="Packages">
            <span aria-hidden="true">Packages</span>
        </a>
    </li>

                                        <li class="" role="presentation">
        <a role="tab" aria-selected="false" href="/packages/manage/upload" target="" aria-label="Publish">
            <span aria-hidden="true">Publish</span>
        </a>
    </li>

    <li class="" role="presentation">
        <a role="tab" aria-selected="false" href="/stats" target="" aria-label="Statistics">
            <span aria-hidden="true">Statistics</span>
        </a>
    </li>
                                                                            <li class="" role="presentation">
        <a role="tab" aria-selected="false" href="https://go.microsoft.com/fwlink/?LinkID=825202&amp;clcid=0x409" target="_blank" aria-label="Documentation">
            <span aria-hidden="true">Documentation</span>
        </a>
    </li>

                                </ul>
                            </td>
                            <td colspan="1" class="td-align-topright">
                                    <ul class="nav navbar-nav navbar-right" role="tablist">
    <li class="" role="presentation">
        <a role="tab" aria-selected="false" href="/users/account/LogOn?returnUrl=%2Fpackages%2FHubSpotPS%2F1.0.3%2FContent%2FHubSpotPS.psm1" target="" aria-label="Sign in">
            <span aria-hidden="true">Sign in</span>
        </a>
    </li>
                                    </ul>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>

        <div class="container-fluid search-container">
            <div class="row" id="search-row">
                <form aria-label="Package search bar" action="/packages" method="get">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-offset-1 col-sm-2"></div>
                            <div class="col-sm-12 col-md-8">
                                <div class="form-group special-margin-left">
                                    <label for="search">Search PowerShell packages:</label>
<div class="input-group"  role="presentation">
    <input name="q" type="text" class="form-control ms-borderColor-blue search-box" id="search" aria-label="Enter packages to search, use the arrow keys to autofill."
           placeholder="PowerShellGet, Get-AzVM, etc..." autocomplete="on"
           value=""
           />
    <span class="input-group-btn">
        <button class="btn btn-default btn-search ms-borderColor-blue ms-borderColor-blue--hover" type="submit"
                title="Search PowerShell packages" aria-label="Search PowerShell packages">
            <span class="ms-Icon ms-Icon--Search" aria-hidden="true"></span>
        </button>
    </span>
</div>

                                    <div id="autocomplete-results-container" class="text-left" tabindex="0"></div>

<script type="text/html" id="autocomplete-results-row">
    <!-- ko if: $data -->
    <!-- ko if: $data.PackageRegistration -->
    <div class="col-sm-4 autocomplete-row-id autocomplete-row-data">
        <span data-bind="attr: { id: 'autocomplete-result-id-' + $data.PackageRegistration.Id, title: $data.PackageRegistration.Id }, text: $data.PackageRegistration.Id"></span>
    </div>
    <div class="col-sm-4 autocomplete-row-downloadcount text-right autocomplete-row-data">
        <span data-bind="text: $data.DownloadCount + ' downloads'"></span>
    </div>
    <div class="col-sm-4 autocomplete-row-owners text-left autocomplete-row-data">
        <span data-bind="text: $data.OwnersString + ' '"></span>
    </div>
    <!-- /ko -->
    <!-- ko ifnot: $data.PackageRegistration -->
    <div class="col-sm-12 autocomplete-row-id autocomplete-row-data">
        <span data-bind="attr: { id: 'autocomplete-result-id-' + $data, title: $data  }, text: $data"></span>
    </div>
    <!-- /ko -->
    <!-- /ko -->
</script>

<script type="text/html" id="autocomplete-results-template">
    <!-- ko if: $data.data.length > 0 -->
    <div data-bind="foreach: $data.data" id="autocomplete-results-list">
        <a data-bind="attr: { id: 'autocomplete-result-row-' + $data, href: '/packages/' + $data, title: $data }" tabindex="-1">
            <div data-bind="attr:{ id: 'autocomplete-container-' + $data }" class="autocomplete-results-row">
            </div>
        </a>
    </div>
    <!-- /ko -->
</script>

                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
</nav>





    <div id="skippedToContent">
        

<div role="main" class="container page-display-filecontent">
    <div class="row package-page-heading">
        <div class="col-xs-12 col-sm-offset-1 col-sm-10">
            <h1><a href="/packages/HubSpotPS/">HubSpotPS</a></h1>
            <h4><a href="/packages/HubSpotPS/1.0.3"> 1.0.3</a></h4>
        </div>
    </div>
    <div class="row package-page-MoreInfo">
        <div class="col-xs-12 col-sm-offset-1 col-sm-10">
            <h3>HubSpotPS.psm1</h3>
        </div>
    </div>

    <div class="row">
        <div class="col-xs-12 col-sm-offset-1 col-sm-10 div-fileContentDisplay">          
            <div class="row fileContentDisplay">
                <table class="fileContentDisplay-table">
                    <tbody>
                        <tr>
                            <td class="lineNumber col-sm-offset-0 col-sm-1">
                                1<BR />2<BR />3<BR />4<BR />5<BR />6<BR />7<BR />8<BR />9<BR />10<BR />11<BR />12<BR />13<BR />14<BR />15<BR />16<BR />17<BR />18<BR />19<BR />20<BR />21<BR />22<BR />23<BR />24<BR />25<BR />26<BR />27<BR />28<BR />29<BR />30<BR />31<BR />32<BR />33<BR />34<BR />35<BR />36<BR />37<BR />38<BR />39<BR />40<BR />41<BR />42<BR />43<BR />44<BR />45<BR />46<BR />47<BR />48<BR />49<BR />50<BR />51<BR />52<BR />53<BR />54<BR />55<BR />56<BR />57<BR />58<BR />59<BR />60<BR />61<BR />62<BR />63<BR />64<BR />65<BR />66<BR />67<BR />68<BR />69<BR />70<BR />71<BR />72<BR />73<BR />74<BR />75<BR />76<BR />77<BR />78<BR />79<BR />80<BR />81<BR />82<BR />83<BR />84<BR />85<BR />86<BR />87<BR />88<BR />89<BR />90<BR />91<BR />92<BR />93<BR />94<BR />95<BR />96<BR />97<BR />98<BR />99<BR />100<BR />101<BR />102<BR />103<BR />104<BR />105<BR />106<BR />107<BR />108<BR />109<BR />110<BR />111<BR />112<BR />113<BR />114<BR />115<BR />116<BR />117<BR />118<BR />119<BR />120<BR />121<BR />122<BR />123<BR />124<BR />125<BR />126<BR />127<BR />128<BR />129<BR />130<BR />131<BR />132<BR />133<BR />134<BR />135<BR />136<BR />137<BR />138<BR />139<BR />140<BR />141<BR />142<BR />143<BR />144<BR />145<BR />146<BR />147<BR />148<BR />149<BR />150<BR />151<BR />152<BR />153<BR />154<BR />155<BR />156<BR />157<BR />158<BR />159<BR />160<BR />161<BR />162<BR />163<BR />164<BR />165<BR />166<BR />167<BR />168<BR />169<BR />170<BR />171<BR />172<BR />173<BR />174<BR />175<BR />176<BR />177<BR />178<BR />179<BR />180<BR />181<BR />182<BR />183<BR />184<BR />185<BR />186<BR />187<BR />188<BR />189<BR />190<BR />191<BR />192<BR />193<BR />194<BR />195<BR />196<BR />197<BR />198<BR />199<BR />200<BR />201<BR />202<BR />203<BR />204<BR />205<BR />206<BR />207<BR />208<BR />209<BR />210<BR />211<BR />212<BR />213<BR />214<BR />215<BR />216<BR />217<BR />218<BR />219<BR />220<BR />221<BR />222<BR />223<BR />224<BR />225<BR />226<BR />227<BR />228<BR />229<BR />230<BR />231<BR />232<BR />233<BR />234<BR />235<BR />236<BR />237<BR />238<BR />239<BR />240<BR />241<BR />242<BR />243<BR />244<BR />245<BR />246<BR />247<BR />248<BR />249<BR />250<BR />251<BR />252<BR />253<BR />254<BR />255<BR />256<BR />257<BR />258<BR />259<BR />260<BR />261<BR />262<BR />263<BR />264<BR />265<BR />266<BR />267<BR />268<BR />269<BR />270<BR />271<BR />272<BR />273<BR />274<BR />275<BR />276<BR />277<BR />278<BR />279<BR />280<BR />281<BR />282<BR />283<BR />284<BR />285<BR />286<BR />287<BR />288<BR />289<BR />290<BR />291<BR />292<BR />293<BR />294<BR />295<BR />296<BR />297<BR />298<BR />299<BR />300<BR />301<BR />302<BR />303<BR />304<BR />305<BR />306<BR />307<BR />308<BR />309<BR />310<BR />311<BR />312<BR />313<BR />314<BR />315<BR />316<BR />317<BR />318<BR />319<BR />320<BR />321<BR />322<BR />323<BR />324<BR />325<BR />326<BR />327<BR />328<BR />329<BR />330<BR />331<BR />332<BR />333<BR />334<BR />335<BR />336<BR />337<BR />338<BR />339<BR />340<BR />341<BR />342<BR />343<BR />344<BR />345<BR />346<BR />347<BR />348<BR />349<BR />350<BR />351<BR />352<BR />353<BR />354<BR />355<BR />356<BR />357<BR />358<BR />359<BR />360<BR />361<BR />362<BR />363<BR />364<BR />365<BR />366<BR />367<BR />368<BR />369<BR />370<BR />371<BR />372<BR />373<BR />374<BR />375<BR />376<BR />377<BR />378<BR />379<BR />380<BR />381<BR />382<BR />383<BR />384<BR />385<BR />386<BR />387<BR />388<BR />389<BR />390<BR />391<BR />392<BR />393<BR />394<BR />395<BR />396<BR />397<BR />398<BR />399<BR />400<BR />401<BR />402<BR />403<BR />404<BR />405<BR />406<BR />407<BR />408<BR />409<BR />410<BR />411<BR />412<BR />413<BR />414<BR />415<BR />416<BR />417<BR />418<BR />419<BR />420<BR />421<BR />422<BR />423<BR />424<BR />425<BR />426<BR />427<BR />428<BR />429<BR />430<BR />431<BR />432<BR />433<BR />434<BR />435<BR />436<BR />437<BR />438<BR />439<BR />440<BR />441<BR />442<BR />443<BR />444<BR />445<BR />446<BR />447<BR />448<BR />449<BR />450<BR />451<BR />452<BR />453<BR />454<BR />455<BR />456<BR />457<BR />458<BR />459<BR />460<BR />461<BR />462<BR />463<BR />464<BR />465<BR />466<BR />467<BR />468<BR />469<BR />470<BR />471<BR />472<BR />473<BR />474<BR />475<BR />476<BR />477<BR />478<BR />479<BR />480<BR />481<BR />482<BR />483<BR />484<BR />485<BR />486<BR />487<BR />488<BR />489<BR />490<BR />491<BR />492<BR />493<BR />494<BR />495<BR />496<BR />497<BR />498<BR />499<BR />500<BR />501<BR />502<BR />503<BR />504<BR />505<BR />506<BR />507<BR />508<BR />509<BR />510<BR />511<BR />512<BR />513<BR />514<BR />515<BR />516<BR />517<BR />518<BR />519<BR />520<BR />521<BR />522<BR />523<BR />524<BR />525<BR />526<BR />527<BR />528<BR />529<BR />530<BR />531<BR />532<BR />533<BR />534<BR />535<BR />536<BR />537<BR />538<BR />539<BR />540<BR />541<BR />542<BR />543<BR />544<BR />545<BR />546<BR />547<BR />548<BR />549<BR />550<BR />551<BR />552<BR />553<BR />554<BR />555<BR />556<BR />557<BR />558<BR />559<BR />560<BR />561<BR />562<BR />563<BR />564<BR />565<BR />566<BR />567<BR />568<BR />569<BR />570<BR />571<BR />572<BR />573<BR />574<BR />575<BR />576<BR />577<BR />578<BR />579<BR />580<BR />581<BR />582<BR />583<BR />584<BR />585<BR />586<BR />587<BR />588<BR />589<BR />590<BR />591<BR />592<BR />593<BR />594<BR />595<BR />596<BR />597<BR />598<BR />599<BR />600<BR />601<BR />602<BR />603<BR />604<BR />605<BR />606<BR />607<BR />608<BR />609<BR />610<BR />611<BR />612<BR />613<BR />614<BR />615<BR />616<BR />617<BR />618<BR />619<BR />620<BR />621<BR />622<BR />623<BR />624<BR />625<BR />626<BR />627<BR />628<BR />629<BR />630<BR />631<BR />632<BR />633<BR />634<BR />635<BR />636<BR />637<BR />638<BR />639<BR />640<BR />641<BR />642<BR />643<BR />644<BR />645<BR />646<BR />647<BR />648<BR />649<BR />650<BR />651<BR />652<BR />653<BR />654<BR />655<BR />656<BR />657<BR />658<BR />659<BR />660<BR />661<BR />662<BR />663<BR />664<BR />665<BR />666<BR />667<BR />668<BR />669<BR />670<BR />671<BR />672<BR />673<BR />674<BR />675<BR />676<BR />677<BR />678<BR />679<BR />680<BR />681<BR />682<BR />683<BR />684<BR />685<BR />686<BR />687<BR />688<BR />689<BR />690<BR />691<BR />692<BR />693<BR />694<BR />695<BR />696<BR />697<BR />698<BR />699<BR />700<BR />701<BR />702<BR />703<BR />704<BR />705<BR />706<BR />707<BR />708<BR />709<BR />710<BR />711<BR />712<BR />713<BR />714<BR />715<BR />716<BR />717<BR />718<BR />719<BR />720<BR />721<BR />722<BR />723<BR />724<BR />725<BR />726<BR />727<BR />728<BR />729<BR />730<BR />731<BR />732<BR />733<BR />734<BR />735<BR />736<BR />737<BR />738<BR />739<BR />740<BR />741<BR />742<BR />743<BR />744<BR />745<BR />746<BR />747<BR />748<BR />749<BR />750<BR />751<BR />752<BR />753<BR />754<BR />755<BR />756<BR />757<BR />758<BR />759<BR />760<BR />761<BR />762<BR />763<BR />764<BR />765<BR />766<BR />767<BR />768<BR />769<BR />770<BR />771<BR />772<BR />773<BR />774<BR />775<BR />776<BR />777<BR />778<BR />779<BR />780<BR />781<BR />782<BR />783<BR />784<BR />785<BR />786<BR />787<BR />788<BR />789<BR />790<BR />791<BR />792<BR />793<BR />794<BR />795<BR />796<BR />797<BR />798<BR />799<BR />800<BR />801<BR />802<BR />803<BR />804<BR />805<BR />806<BR />807<BR />808<BR />809<BR />810<BR />811<BR />812<BR />813<BR />814<BR />815<BR />816<BR />817<BR />818<BR />819<BR />820<BR />821<BR />822<BR />823<BR />824<BR />825<BR />826<BR />827<BR />828<BR />829<BR />830<BR />831<BR />832<BR />833<BR />834<BR />835<BR />836<BR />837<BR />838<BR />839<BR />840<BR />841<BR />842<BR />843<BR />844<BR />845<BR />846<BR />847<BR />848<BR />849<BR />850<BR />851<BR />852<BR />853<BR />854<BR />855<BR />856<BR />857<BR />858<BR />859<BR />860<BR />861<BR />862<BR />863<BR />864<BR />865<BR />866<BR />867<BR />868<BR />869<BR />870<BR />871<BR />872<BR />873<BR />874<BR />875<BR />876<BR />877<BR />878<BR />879<BR />880<BR />881<BR />882<BR />883<BR />884<BR />885<BR />886<BR />887<BR />888<BR />889<BR />890<BR />891<BR />892<BR />893<BR />894<BR />895<BR />896<BR />897<BR />898<BR />899<BR />900<BR />901<BR />902<BR />903<BR />904<BR />905<BR />906<BR />907<BR />908<BR />909<BR />910<BR />911<BR />912<BR />913<BR />914<BR />915<BR />916<BR />917<BR />918<BR />919<BR />920<BR />921<BR />922<BR />923<BR />924<BR />925<BR />926<BR />927<BR />928<BR />929<BR />930<BR />931<BR />932<BR />933<BR />934<BR />935<BR />936<BR />937<BR />938<BR />939<BR />940<BR />941<BR />942<BR />943<BR />944<BR />945<BR />946<BR />947<BR />948<BR />949<BR />950<BR />951<BR />952<BR />953<BR />954<BR />955<BR />956<BR />957<BR />958<BR />959<BR />960<BR />961<BR />962<BR />963<BR />964<BR />965<BR />966<BR />967<BR />968<BR />969<BR />970<BR />971<BR />972<BR />973<BR />974<BR />975<BR />976<BR />977<BR />978<BR />979<BR />980<BR />981<BR />982<BR />983<BR />984<BR />985<BR />986<BR />987<BR />988<BR />989<BR />990<BR />991<BR />992<BR />993<BR />994<BR />995<BR />996<BR />997<BR />998<BR />999<BR />1000<BR />1001<BR />1002<BR />1003<BR />1004<BR />1005<BR />1006<BR />1007<BR />1008<BR />1009<BR />1010<BR />1011<BR />1012<BR />1013<BR />1014<BR />1015<BR />1016<BR />1017<BR />1018<BR />1019<BR />1020<BR />1021<BR />1022<BR />1023<BR />1024<BR />1025<BR />1026<BR />1027<BR />1028<BR />1029<BR />1030<BR />1031<BR />1032<BR />1033<BR />1034<BR />1035<BR />1036<BR />1037<BR />1038<BR />1039<BR />1040<BR />1041<BR />1042<BR />1043<BR />1044<BR />1045<BR />1046<BR />1047<BR />1048<BR />1049<BR />1050<BR />1051<BR />1052<BR />1053<BR />1054<BR />1055<BR />1056<BR />1057<BR />1058<BR />1059<BR />1060<BR />1061<BR />1062<BR />1063<BR />1064<BR />1065<BR />1066<BR />1067<BR />1068<BR />1069<BR />1070<BR />1071<BR />1072<BR />1073<BR />1074<BR />1075<BR />1076<BR />1077<BR />1078<BR />1079<BR />1080<BR />1081<BR />1082<BR />1083<BR />1084<BR />1085<BR />1086<BR />1087<BR />1088<BR />1089<BR />1090<BR />1091<BR />1092<BR />1093<BR />1094<BR />1095<BR />1096<BR />1097<BR />1098<BR />1099<BR />1100<BR />1101<BR />1102<BR />1103<BR />1104<BR />1105<BR />1106<BR />1107<BR />1108<BR />1109<BR />1110<BR />1111<BR />1112<BR />1113<BR />1114<BR />1115<BR />1116<BR />1117<BR />1118<BR />1119<BR />1120<BR />1121<BR />1122<BR />1123<BR />1124<BR />1125<BR />1126<BR />1127<BR />1128<BR />1129<BR />1130<BR />1131<BR />1132<BR />1133<BR />1134<BR />1135<BR />1136<BR />1137<BR />1138<BR />1139<BR />1140<BR />1141<BR />1142<BR />1143<BR />1144<BR />1145<BR />1146<BR />1147<BR />1148<BR />1149<BR />1150<BR />1151<BR />1152<BR />1153<BR />1154<BR />1155<BR />1156<BR />1157<BR />1158<BR />1159<BR />1160<BR />1161<BR />1162<BR />1163<BR />1164<BR />1165<BR />1166<BR />1167<BR />1168<BR />1169<BR />1170<BR />1171<BR />1172<BR />1173<BR />1174<BR />1175<BR />1176<BR />1177<BR />1178<BR />1179<BR />1180<BR />1181<BR />1182<BR />1183<BR />1184<BR />1185<BR />1186<BR />1187<BR />1188<BR />1189<BR />1190<BR />1191<BR />1192<BR />1193<BR />1194<BR />1195<BR />1196<BR />1197<BR />1198<BR />1199<BR />1200<BR />1201<BR />1202<BR />1203<BR />1204<BR />1205<BR />1206<BR />1207<BR />1208<BR />1209<BR />1210<BR />1211<BR />1212<BR />1213<BR />1214<BR />1215<BR />1216<BR />1217<BR />1218<BR />1219<BR />1220<BR />1221<BR />1222<BR />1223<BR />1224<BR />1225<BR />1226<BR />1227<BR />1228<BR />1229<BR />1230<BR />1231<BR />1232<BR />1233<BR />1234<BR />1235<BR />1236<BR />1237<BR />1238<BR />1239<BR />1240<BR />1241<BR />1242<BR />1243<BR />1244<BR />1245<BR />1246<BR />1247<BR />1248<BR />1249<BR />1250<BR />1251<BR />1252<BR />1253<BR />1254<BR />1255<BR />1256<BR />1257<BR />1258<BR />1259<BR />1260<BR />1261<BR />1262<BR />1263<BR />1264<BR />1265<BR />1266<BR />1267<BR />1268<BR />1269<BR />1270<BR />1271<BR />1272<BR />1273<BR />1274<BR />1275<BR />1276<BR />1277<BR />1278<BR />1279<BR />1280<BR />1281<BR />1282<BR />1283<BR />1284<BR />1285<BR />1286<BR />1287<BR />1288<BR />1289<BR />1290<BR />1291<BR />1292<BR />1293<BR />1294<BR />1295<BR />1296<BR />1297<BR />1298<BR />1299<BR />1300<BR />1301<BR />1302<BR />1303<BR />1304<BR />1305<BR />1306<BR />1307<BR />1308<BR />1309<BR />1310<BR />1311<BR />1312<BR />1313<BR />1314<BR />1315<BR />1316<BR />1317<BR />1318<BR />1319<BR />1320<BR />1321<BR />1322<BR />1323<BR />1324<BR />1325<BR />1326<BR />1327<BR />1328<BR />1329<BR />1330<BR />1331<BR />1332<BR />1333<BR />1334<BR />1335<BR />1336<BR />1337<BR />1338<BR />1339<BR />1340<BR />1341<BR />1342<BR />1343<BR />1344<BR />1345<BR />1346<BR />1347<BR />1348<BR />1349<BR />1350<BR />1351<BR />1352<BR />1353<BR />1354<BR />1355<BR />1356<BR />1357<BR />1358<BR />1359<BR />1360<BR />1361<BR />1362<BR />1363<BR />1364<BR />1365<BR />1366<BR />1367<BR />1368<BR />1369<BR />1370<BR />1371<BR />1372<BR />1373<BR />1374<BR />1375<BR />1376<BR />1377<BR />1378<BR />1379<BR />1380<BR />1381<BR />1382<BR />1383<BR />1384<BR />1385<BR />1386<BR />1387<BR />1388<BR />1389<BR />1390<BR />1391<BR />1392<BR />1393<BR />1394<BR />1395<BR />1396<BR />1397<BR />1398<BR />1399<BR />1400<BR />1401<BR />1402<BR />1403<BR />1404<BR />1405<BR />1406<BR />1407<BR />1408<BR />1409<BR />1410<BR />1411<BR />1412<BR />1413<BR />1414<BR />1415<BR />1416<BR />1417<BR />1418<BR />1419<BR />1420<BR />1421<BR />1422<BR />1423<BR />1424<BR />1425<BR />1426<BR />1427<BR />1428<BR />1429<BR />1430<BR />1431<BR />1432<BR />1433<BR />1434<BR />1435<BR />1436<BR />1437<BR />1438<BR />1439<BR />1440<BR />1441<BR />1442<BR />1443<BR />1444<BR />1445<BR />1446<BR />1447<BR />1448<BR />1449<BR />1450<BR />1451<BR />1452<BR />1453<BR />1454<BR />1455<BR />1456<BR />1457<BR />1458<BR />1459<BR />1460<BR />1461<BR />1462<BR />1463<BR />1464<BR />1465<BR />1466<BR />1467<BR />1468<BR />1469<BR />1470<BR />1471<BR />1472<BR />1473<BR />1474<BR />1475<BR />1476<BR />1477<BR />1478<BR />1479<BR />1480<BR />1481<BR />1482<BR />1483<BR />1484<BR />1485<BR />1486<BR />1487<BR />1488<BR />1489<BR />1490<BR />1491<BR />1492<BR />1493<BR />1494<BR />1495<BR />1496<BR />1497<BR />1498<BR />1499<BR />1500<BR />1501<BR />1502<BR />1503<BR />1504<BR />1505<BR />1506<BR />1507<BR />1508<BR />1509<BR />1510<BR />1511<BR />1512<BR />1513<BR />1514<BR />1515<BR />1516<BR />1517<BR />1518<BR />1519<BR />1520<BR />1521<BR />1522<BR />1523<BR />1524<BR />1525<BR />1526<BR />1527<BR />1528<BR />1529<BR />1530<BR />1531<BR />1532<BR />1533<BR />1534<BR />1535<BR />1536<BR />1537<BR />1538<BR />1539<BR />1540<BR />1541<BR />1542<BR />1543<BR />1544<BR />1545<BR />1546<BR />1547<BR />1548<BR />1549<BR />1550<BR />1551<BR />1552<BR />1553<BR />1554<BR />1555<BR />1556<BR />1557<BR />1558<BR />1559<BR />1560<BR />1561<BR />1562<BR />1563<BR />1564<BR />1565<BR />1566<BR />1567<BR />1568<BR />1569<BR />1570<BR />1571<BR />1572<BR />1573<BR />1574<BR />1575<BR />1576<BR />1577<BR />1578<BR />1579<BR />1580<BR />1581<BR />1582<BR />1583<BR />1584<BR />1585<BR />1586<BR />1587<BR />1588<BR />1589<BR />1590<BR />1591<BR />1592<BR />1593<BR />1594<BR />1595<BR />1596<BR />1597<BR />1598<BR />1599<BR />1600<BR />1601<BR />1602<BR />1603<BR />1604<BR />1605<BR />1606<BR />1607<BR />1608<BR />1609<BR />1610<BR />1611<BR />1612<BR />1613<BR />1614<BR />1615<BR />1616<BR />1617<BR />1618<BR />1619<BR />1620<BR />1621<BR />1622<BR />1623<BR />1624<BR />1625<BR />1626<BR />1627<BR />1628<BR />1629<BR />1630<BR />1631<BR />1632<BR />1633<BR />1634<BR />1635<BR />1636<BR />1637<BR />1638<BR />1639<BR />1640<BR />1641<BR />1642<BR />1643<BR />1644<BR />1645<BR />1646<BR />1647<BR />1648<BR />1649<BR />1650<BR />1651<BR />1652<BR />1653<BR />1654<BR />1655<BR />1656<BR />1657<BR />1658<BR />1659<BR />1660<BR />1661<BR />1662<BR />1663<BR />1664<BR />1665<BR />1666<BR />1667<BR />1668<BR />1669<BR />1670<BR />1671<BR />1672<BR />1673<BR />1674<BR />1675<BR />1676<BR />1677<BR />1678<BR />1679<BR />1680<BR />1681<BR />1682<BR />1683<BR />1684<BR />1685<BR />1686<BR />1687<BR />1688<BR />1689<BR />1690<BR />1691<BR />1692<BR />1693<BR />1694<BR />1695<BR />1696<BR />1697<BR />1698<BR />1699<BR />1700<BR />1701<BR />1702<BR />1703<BR />1704<BR />1705<BR />1706<BR />1707<BR />1708<BR />1709<BR />1710<BR />1711<BR />1712<BR />1713<BR />1714<BR />1715<BR />1716<BR />1717<BR />1718<BR />1719<BR />1720<BR />1721<BR />1722<BR />1723<BR />1724<BR />1725<BR />1726<BR />1727<BR />1728<BR />1729<BR />1730<BR />1731<BR />1732<BR />1733<BR />1734<BR />1735<BR />1736<BR />1737<BR />1738<BR />1739<BR />1740<BR />1741<BR />1742<BR />1743<BR />1744<BR />1745<BR />1746<BR />1747<BR />1748<BR />1749<BR />1750<BR />1751<BR />1752<BR />1753<BR />1754<BR />1755<BR />1756<BR />1757<BR />1758<BR />1759<BR />1760<BR />1761<BR />1762<BR />1763<BR />1764<BR />1765<BR />1766<BR />1767<BR />1768<BR />1769<BR />1770<BR />1771<BR />1772<BR />1773<BR />1774<BR />1775<BR />1776<BR />1777<BR />1778<BR />1779<BR />1780<BR />1781<BR />1782<BR />1783<BR />1784<BR />1785<BR />1786<BR />1787<BR />1788<BR />1789<BR />1790<BR />1791<BR />1792<BR />1793<BR />1794<BR />1795<BR />1796<BR />1797<BR />1798<BR />1799<BR />1800<BR />1801<BR />1802<BR />1803<BR />1804<BR />1805<BR />1806<BR />1807<BR />1808<BR />1809<BR />1810<BR />1811<BR />1812<BR />1813<BR />1814<BR />1815<BR />1816<BR />1817<BR />1818<BR />1819<BR />1820<BR />1821<BR />1822<BR />1823<BR />1824<BR />1825<BR />1826<BR />1827<BR />1828<BR />1829<BR />1830<BR />1831<BR />1832<BR />1833<BR />1834<BR />1835<BR />1836<BR />1837<BR />1838<BR />1839<BR />1840<BR />1841<BR />1842<BR />1843<BR />1844<BR />1845<BR />1846<BR />1847<BR />1848<BR />1849<BR />1850<BR />1851<BR />1852<BR />1853<BR />1854<BR />1855<BR />1856<BR />1857<BR />1858<BR />1859<BR />1860<BR />1861<BR />1862<BR />1863<BR />1864<BR />1865<BR />1866<BR />1867<BR />1868<BR />1869<BR />1870<BR />1871<BR />1872<BR />1873<BR />1874<BR />1875<BR />1876<BR />1877<BR />1878<BR />1879<BR />1880<BR />1881<BR />1882<BR />1883<BR />1884<BR />1885<BR />1886<BR />1887<BR />1888<BR />1889<BR />1890<BR />1891<BR />1892<BR />1893<BR />1894<BR />1895<BR />1896<BR />1897<BR />1898<BR />1899<BR />1900<BR />1901<BR />1902<BR />1903<BR />1904<BR />1905<BR />1906<BR />1907<BR />1908<BR />1909<BR />1910<BR />1911<BR />1912<BR />1913<BR />1914<BR />1915<BR />1916<BR />1917<BR />1918<BR />1919<BR />1920<BR />1921<BR />1922<BR />1923<BR />1924<BR />1925<BR />1926<BR />1927<BR />1928<BR />1929<BR />1930<BR />1931<BR />1932<BR />1933<BR />1934<BR />1935<BR />1936<BR />1937<BR />1938<BR />1939<BR />1940<BR />1941<BR />1942<BR />1943<BR />1944<BR />1945<BR />1946<BR />1947<BR />1948<BR />1949<BR />1950<BR />1951<BR />1952<BR />1953<BR />1954<BR />1955<BR />1956<BR />1957<BR />1958<BR />1959<BR />1960<BR />1961<BR />1962<BR />1963<BR />1964<BR />1965<BR />1966<BR />1967<BR />1968<BR />1969<BR />1970<BR />1971<BR />1972<BR />1973<BR />1974<BR />1975<BR />1976<BR />1977<BR />1978<BR />1979<BR />1980<BR />1981<BR />1982<BR />1983<BR />1984<BR />1985<BR />1986<BR />1987<BR />1988<BR />1989<BR />1990<BR />1991<BR />1992<BR />1993<BR />1994<BR />1995<BR />1996<BR />1997<BR />1998<BR />1999<BR />2000<BR />2001<BR />2002<BR />2003<BR />2004<BR />2005<BR />2006<BR />2007<BR />2008<BR />2009<BR />2010<BR />2011<BR />2012<BR />2013<BR />2014<BR />2015<BR />2016<BR />2017<BR />2018<BR />2019<BR />2020<BR />2021<BR />2022<BR />2023<BR />2024<BR />2025<BR />2026<BR />2027<BR />2028<BR />2029<BR />2030<BR />2031<BR />2032<BR />2033<BR />2034<BR />2035<BR />2036<BR />2037<BR />2038<BR />2039<BR />2040<BR />2041<BR />2042<BR />2043<BR />2044<BR />2045<BR />2046<BR />2047<BR />2048<BR />2049<BR />2050<BR />2051<BR />2052<BR />2053<BR />2054<BR />2055<BR />2056<BR />2057<BR />2058<BR />2059<BR />2060<BR />2061<BR />2062<BR />2063<BR />2064<BR />2065<BR />2066<BR />2067<BR />2068<BR />2069<BR />2070<BR />2071<BR />2072<BR />2073<BR />2074<BR />2075<BR />2076<BR />2077<BR />2078<BR />2079<BR />2080<BR />2081<BR />2082<BR />2083<BR />2084<BR />2085<BR />2086<BR />2087<BR />2088<BR />2089<BR />2090<BR />2091<BR />2092<BR />2093<BR />2094<BR />2095<BR />2096<BR />2097<BR />2098<BR />2099<BR />2100<BR />2101<BR />2102<BR />2103<BR />2104<BR />2105<BR />2106<BR />2107<BR />2108<BR />2109<BR />2110<BR />2111<BR />2112<BR />2113<BR />2114<BR />2115<BR />2116<BR />2117<BR />2118<BR />2119<BR />2120<BR />2121<BR />2122<BR />2123<BR />2124<BR />2125<BR />2126<BR />2127<BR />2128<BR />2129<BR />2130<BR />2131<BR />2132<BR />2133<BR />2134<BR />2135<BR />2136<BR />2137<BR />2138<BR />2139<BR />2140<BR />2141<BR />2142<BR />2143<BR />2144<BR />2145<BR />2146<BR />2147<BR />2148<BR />2149<BR />2150<BR />2151<BR />2152<BR />2153<BR />2154<BR />2155<BR />2156<BR />2157<BR />2158<BR />2159<BR />2160<BR />2161<BR />2162<BR />2163<BR />2164<BR />2165<BR />2166<BR />2167<BR />2168<BR />2169<BR />2170<BR />2171<BR />2172<BR />2173<BR />2174<BR />2175<BR />2176<BR />2177<BR />2178<BR />2179<BR />2180<BR />2181<BR />2182<BR />2183<BR />2184<BR />2185<BR />2186<BR />2187<BR />2188<BR />2189<BR />2190<BR />2191<BR />2192<BR />2193<BR />2194<BR />2195<BR />2196<BR />2197<BR />2198<BR />2199<BR />2200<BR />2201<BR />2202<BR />2203<BR />2204<BR />2205<BR />2206<BR />2207<BR />2208<BR />2209<BR />2210<BR />2211<BR />2212<BR />2213<BR />2214<BR />2215<BR />2216<BR />2217<BR />2218<BR />2219<BR />2220<BR />2221<BR />2222<BR />2223<BR />2224<BR />2225<BR />2226<BR />2227<BR />2228<BR />2229<BR />2230<BR />2231<BR />2232<BR />2233<BR />2234<BR />2235<BR />2236<BR />2237<BR />2238<BR />2239<BR />2240<BR />2241<BR />2242<BR />2243<BR />2244<BR />2245<BR />2246<BR />2247<BR />2248<BR />2249<BR />2250<BR />2251<BR />2252<BR />2253<BR />2254<BR />2255<BR />2256<BR />2257<BR />2258<BR />2259<BR />2260<BR />2261<BR />2262<BR />2263<BR />2264<BR />2265<BR />2266<BR />2267<BR />2268<BR />2269<BR />2270<BR />2271<BR />2272<BR />2273<BR />2274<BR />2275<BR />2276<BR />2277<BR />2278<BR />2279<BR />2280<BR />2281<BR />2282<BR />2283<BR />2284<BR />2285<BR />2286<BR />2287<BR />2288<BR />2289<BR />2290<BR />2291<BR />2292<BR />2293<BR />2294<BR />2295<BR />2296<BR />2297<BR />2298<BR />2299<BR />2300<BR />2301<BR />2302<BR />2303<BR />2304<BR />2305<BR />2306<BR />2307<BR />2308<BR />2309<BR />2310<BR />2311<BR />2312<BR />2313<BR />2314<BR />2315<BR />2316<BR />2317<BR />2318<BR />2319<BR />2320<BR />2321<BR />2322<BR />2323<BR />2324<BR />2325<BR />2326<BR />2327<BR />2328<BR />2329<BR />2330<BR />2331<BR />2332<BR />2333<BR />2334<BR />2335<BR />2336<BR />2337<BR />2338<BR />2339<BR />2340<BR />2341<BR />2342<BR />2343<BR />2344<BR />2345<BR />2346<BR />2347<BR />2348<BR />2349<BR />2350<BR />2351<BR />2352<BR />2353<BR />2354<BR />2355<BR />2356<BR />2357<BR />2358<BR />2359<BR />2360<BR />2361<BR />2362<BR />2363<BR />2364<BR />2365<BR />2366<BR />2367<BR />2368<BR />2369<BR />2370<BR />2371<BR />2372<BR />2373<BR />2374<BR />2375<BR />2376<BR />2377<BR />2378<BR />2379<BR />2380<BR />2381<BR />2382<BR />2383<BR />2384<BR />2385<BR />2386<BR />2387<BR />2388<BR />2389<BR />2390<BR />2391<BR />2392<BR />2393<BR />2394<BR />2395<BR />2396<BR />2397<BR />2398<BR />2399<BR />2400<BR />2401<BR />2402<BR />2403<BR />2404<BR />2405<BR />2406<BR />2407<BR />2408<BR />2409<BR />2410<BR />2411<BR />2412<BR />2413<BR />2414<BR />2415<BR />2416<BR />2417<BR />2418<BR />2419<BR />2420<BR />2421<BR />2422<BR />2423<BR />2424<BR />2425<BR />2426<BR />2427<BR />2428<BR />2429<BR />2430<BR />2431<BR />2432<BR />2433<BR />2434<BR />2435<BR />2436<BR />2437<BR />2438<BR />2439<BR />2440<BR />2441<BR />2442<BR />2443<BR />2444<BR />2445<BR />2446<BR />2447<BR />2448<BR />2449<BR />2450<BR />2451<BR />2452<BR />2453<BR />2454<BR />2455<BR />2456<BR />2457<BR />2458<BR />2459<BR />2460<BR />2461<BR />2462<BR />2463<BR />2464<BR />2465<BR />2466<BR />2467<BR />2468<BR />2469<BR />2470<BR />2471<BR />2472<BR />2473<BR />2474<BR />2475<BR />2476<BR />2477<BR />2478<BR />2479<BR />2480<BR />2481<BR />2482<BR />2483<BR />2484<BR />2485<BR />2486<BR />2487<BR />2488<BR />2489<BR />2490<BR />2491<BR />2492<BR />2493<BR />2494<BR />2495<BR />2496<BR />2497<BR />2498<BR />2499<BR />2500<BR />2501<BR />2502<BR />2503<BR />2504<BR />2505<BR />2506<BR />2507<BR />2508<BR />2509<BR />2510<BR />2511<BR />2512<BR />2513<BR />2514<BR />2515<BR />2516<BR />2517<BR />2518<BR />2519<BR />2520<BR />2521<BR />2522<BR />2523<BR />2524<BR />2525<BR />2526<BR />2527<BR />2528<BR />2529<BR />2530<BR />2531<BR />2532<BR />2533<BR />2534<BR />2535<BR />2536<BR />2537<BR />2538<BR />2539<BR />2540<BR />2541<BR />2542<BR />2543<BR />2544<BR />2545<BR />2546<BR />2547<BR />2548<BR />2549<BR />2550<BR />2551<BR />2552<BR />2553<BR />2554<BR />2555<BR />2556<BR />2557<BR />2558<BR />2559<BR />2560<BR />2561<BR />2562<BR />2563<BR />2564<BR />2565<BR />2566<BR />2567<BR />2568<BR />2569<BR />2570<BR />2571<BR />2572<BR />2573<BR />2574<BR />2575<BR />2576<BR />2577<BR />2578<BR />2579<BR />2580<BR />2581<BR />2582<BR />2583<BR />2584<BR />2585<BR />2586<BR />2587<BR />2588<BR />2589<BR />2590<BR />2591<BR />2592<BR />2593<BR />2594<BR />2595<BR />2596<BR />2597<BR />2598<BR />2599<BR />2600<BR />2601<BR />2602<BR />2603<BR />2604<BR />2605<BR />2606<BR />2607<BR />2608<BR />2609<BR />2610<BR />2611<BR />2612<BR />2613<BR />2614<BR />2615<BR />2616<BR />2617<BR />2618<BR />2619<BR />2620<BR />2621<BR />2622<BR />2623<BR />2624<BR />2625<BR />2626<BR />2627<BR />2628<BR />2629<BR />2630<BR />2631<BR />2632<BR />2633<BR />2634<BR />2635<BR />2636<BR />2637<BR />2638<BR />2639<BR />2640<BR />2641<BR />2642<BR />2643<BR />2644<BR />2645<BR />2646<BR />2647<BR />2648<BR />2649<BR />2650<BR />2651<BR />2652<BR />2653<BR />2654<BR />2655<BR />2656<BR />2657<BR />2658<BR />2659<BR />2660<BR />2661<BR />2662<BR />2663<BR />2664<BR />2665<BR />2666<BR />2667<BR />2668<BR />2669<BR />2670<BR />2671<BR />2672<BR />2673<BR />2674<BR />2675<BR />2676<BR />2677<BR />2678<BR />2679<BR />2680<BR />2681<BR />2682<BR />2683<BR />2684<BR />2685<BR />2686<BR />2687<BR />2688<BR />2689<BR />2690<BR />2691<BR />2692<BR />2693<BR />2694<BR />2695<BR />2696<BR />2697<BR />2698<BR />2699<BR />2700<BR />2701<BR />2702<BR />2703<BR />2704<BR />2705<BR />2706<BR />2707<BR />2708<BR />2709<BR />2710<BR />2711<BR />2712<BR />2713<BR />2714<BR />2715<BR />2716<BR />2717<BR />2718<BR />2719<BR />2720<BR />2721<BR />2722<BR />2723<BR />2724<BR />2725<BR />2726<BR />2727<BR />2728<BR />2729<BR />2730<BR />2731<BR />2732<BR />2733<BR />2734<BR />2735<BR />2736<BR />2737<BR />2738<BR />2739<BR />2740<BR />2741<BR />2742<BR />2743<BR />2744<BR />2745<BR />2746<BR />2747<BR />2748<BR />2749<BR />2750<BR />2751<BR />2752<BR />2753<BR />2754<BR />2755<BR />2756<BR />2757<BR />2758<BR />2759<BR />2760<BR />2761<BR />2762<BR />2763<BR />2764<BR />2765<BR />2766<BR />2767<BR />2768<BR />2769<BR />2770<BR />2771<BR />2772<BR />2773<BR />2774<BR />2775<BR />2776<BR />2777<BR />2778<BR />2779<BR />2780<BR />2781<BR />2782<BR />2783<BR />2784<BR />2785<BR />2786<BR />2787<BR />2788<BR />2789<BR />2790<BR />2791<BR />2792<BR />2793<BR />2794<BR />2795<BR />2796<BR />2797<BR />2798<BR />2799<BR />2800<BR />2801<BR />2802<BR />2803<BR />2804<BR />2805<BR />2806<BR />2807<BR />2808<BR />2809<BR />2810<BR />2811<BR />2812<BR />2813<BR />2814<BR />2815<BR />2816<BR />2817<BR />2818<BR />2819<BR />2820<BR />2821<BR />2822<BR />2823<BR />2824<BR />2825<BR />2826<BR />2827<BR />2828<BR />2829<BR />2830<BR />2831<BR />2832<BR />2833<BR />2834<BR />2835<BR />2836<BR />2837<BR />2838<BR />2839<BR />2840<BR />2841<BR />2842<BR />2843<BR />2844<BR />2845<BR />2846<BR />2847<BR />2848<BR />2849<BR />2850<BR />2851<BR />2852<BR />2853<BR />2854<BR />2855<BR />2856<BR />2857<BR />2858<BR />2859<BR />2860<BR />2861<BR />2862<BR />2863<BR />2864<BR />2865<BR />2866<BR />2867<BR />2868<BR />2869<BR />2870<BR />2871<BR />2872<BR />2873<BR />2874<BR />2875<BR />2876<BR />2877<BR />2878<BR />2879<BR />2880<BR />2881<BR />2882<BR />2883<BR />2884<BR />2885<BR />2886<BR />2887<BR />2888<BR />2889<BR />2890<BR />2891<BR />2892<BR />2893<BR />2894<BR />2895<BR />2896<BR />2897<BR />2898<BR />2899<BR />2900<BR />2901<BR />2902<BR />2903<BR />2904<BR />2905<BR />2906<BR />2907<BR />2908<BR />2909<BR />2910<BR />2911<BR />2912<BR />2913<BR />2914<BR />2915<BR />2916<BR />2917<BR />2918<BR />2919<BR />2920<BR />2921<BR />2922<BR />2923<BR />2924<BR />2925<BR />2926<BR />2927<BR />2928<BR />2929<BR />2930<BR />2931<BR />2932<BR />2933<BR />2934<BR />2935<BR />2936<BR />2937<BR />2938<BR />2939<BR />2940<BR />2941<BR />2942<BR />2943<BR />2944<BR />2945<BR />2946<BR />2947<BR />2948<BR />2949<BR />2950<BR />2951<BR />2952<BR />2953<BR />2954<BR />2955<BR />2956<BR />2957<BR />2958<BR />2959<BR />2960<BR />2961<BR />2962<BR />2963<BR />2964<BR />2965<BR />2966<BR />2967<BR />2968<BR />2969<BR />2970<BR />2971<BR />2972<BR />2973<BR />2974<BR />2975<BR />2976<BR />2977<BR />2978<BR />2979<BR />2980<BR />2981<BR />2982<BR />2983<BR />2984<BR />2985<BR />2986<BR />2987<BR />2988<BR />2989<BR />2990<BR />2991<BR />2992<BR />2993<BR />2994<BR />2995<BR />2996<BR />2997<BR />2998<BR />2999<BR />3000<BR />3001<BR />3002<BR />3003<BR />3004<BR />3005<BR />3006<BR />3007<BR />3008<BR />3009<BR />3010<BR />3011<BR />3012<BR />3013<BR />3014<BR />3015<BR />3016<BR />3017<BR />3018<BR />3019<BR />3020<BR />3021<BR />3022<BR />3023<BR />3024<BR />3025<BR />3026<BR />3027<BR />3028<BR />3029<BR />3030<BR />3031<BR />3032<BR />3033<BR />3034<BR />3035<BR />3036<BR />3037<BR />3038<BR />3039<BR />3040<BR />3041<BR />3042<BR />3043<BR />3044<BR />3045<BR />3046<BR />3047<BR />3048<BR />3049<BR />3050<BR />3051<BR />3052<BR />3053<BR />3054<BR />3055<BR />3056<BR />3057<BR />3058<BR />3059<BR />3060<BR />3061<BR />3062<BR />3063<BR />3064<BR />3065<BR />3066<BR />3067<BR />3068<BR />3069<BR />3070<BR />3071<BR />3072<BR />3073<BR />3074<BR />3075<BR />3076<BR />3077<BR />3078<BR />3079<BR />3080<BR />3081<BR />3082<BR />3083<BR />3084<BR />3085<BR />3086<BR />3087<BR />3088<BR />3089<BR />3090<BR />3091<BR />3092<BR />3093<BR />3094<BR />3095<BR />3096<BR />3097<BR />3098<BR />3099<BR />3100<BR />3101<BR />3102<BR />3103<BR />3104<BR />3105<BR />3106<BR />3107<BR />3108<BR />3109<BR />3110<BR />3111<BR />3112<BR />3113<BR />3114<BR />3115<BR />3116<BR />3117<BR />3118<BR />3119<BR />3120<BR />3121<BR />3122<BR />3123<BR />3124<BR />3125<BR />3126<BR />3127<BR />3128<BR />3129<BR />3130<BR />3131<BR />3132<BR />3133<BR />3134<BR />3135<BR />3136<BR />3137<BR />3138<BR />3139<BR />3140<BR />3141<BR />3142<BR />3143<BR />3144<BR />3145<BR />3146<BR />3147<BR />3148<BR />3149<BR />3150<BR />3151<BR />3152<BR />3153<BR />3154<BR />3155<BR />3156<BR />3157<BR />3158<BR />3159<BR />3160<BR />3161<BR />3162<BR />3163<BR />3164<BR />3165<BR />3166<BR />3167<BR />3168<BR />3169<BR />3170<BR />3171<BR />3172<BR />3173<BR />3174<BR />3175<BR />3176<BR />3177<BR />3178<BR />3179<BR />3180<BR />3181<BR />3182<BR />3183<BR />3184<BR />3185<BR />3186<BR />3187<BR />3188<BR />3189<BR />3190<BR />3191<BR />3192<BR />3193<BR />3194<BR />3195<BR />3196<BR />3197<BR />3198<BR />3199<BR />3200<BR />3201<BR />3202<BR />3203<BR />3204<BR />3205<BR />3206<BR />3207<BR />3208<BR />3209<BR />3210<BR />3211<BR />3212<BR />3213<BR />3214<BR />3215<BR />3216<BR />3217<BR />3218<BR />3219<BR />3220<BR />3221<BR />3222<BR />3223<BR />3224<BR />3225<BR />3226<BR />3227<BR />3228<BR />3229<BR />3230<BR />3231<BR />3232<BR />3233<BR />3234<BR />3235<BR />3236<BR />3237<BR />3238<BR />3239<BR />3240<BR />3241<BR />3242<BR />3243<BR />3244<BR />3245<BR />3246<BR />3247<BR />3248<BR />3249<BR />3250<BR />3251<BR />3252<BR />3253<BR />3254<BR />3255<BR />3256<BR />3257<BR />3258<BR />3259<BR />3260<BR />3261<BR />3262<BR />3263<BR />3264<BR />3265<BR />3266<BR />3267<BR />3268<BR />3269<BR />3270<BR />3271<BR />3272<BR />3273<BR />3274<BR />3275<BR />3276<BR />3277<BR />3278<BR />3279<BR />3280<BR />3281<BR />3282<BR />3283<BR />3284<BR />3285<BR />3286<BR />3287<BR />3288<BR />3289<BR />3290<BR />3291<BR />3292<BR />3293<BR />3294<BR />3295<BR />3296<BR />3297<BR />3298<BR />3299<BR />3300<BR />3301<BR />3302<BR />3303<BR />3304<BR />3305<BR />3306<BR />3307<BR />3308<BR />3309<BR />3310<BR />3311<BR />3312<BR />3313<BR />3314<BR />3315<BR />3316<BR />3317<BR />3318<BR />3319<BR />3320<BR />3321<BR />3322<BR />3323<BR />3324<BR />3325<BR />3326<BR />3327<BR />3328<BR />3329<BR />3330<BR />3331<BR />3332<BR />3333<BR />3334<BR />3335<BR />3336<BR />3337<BR />3338<BR />3339<BR />3340<BR />3341<BR />3342<BR />3343<BR />3344<BR />3345<BR />3346<BR />3347<BR />3348<BR />3349<BR />3350<BR />3351<BR />3352<BR />3353<BR />3354<BR />3355<BR />3356<BR />3357<BR />3358<BR />3359<BR />3360<BR />3361<BR />3362<BR />3363<BR />3364<BR />3365<BR />3366<BR />3367<BR />3368<BR />3369<BR />3370<BR />3371<BR />3372<BR />3373<BR />3374<BR />3375<BR />3376<BR />3377<BR />3378<BR />3379<BR />3380<BR />3381<BR />3382<BR />3383<BR />3384<BR />3385<BR />3386<BR />3387<BR />3388<BR />3389<BR />3390<BR />3391<BR />3392<BR />3393<BR />3394<BR />3395<BR />3396<BR />3397<BR />3398<BR />3399<BR />3400<BR />3401<BR />3402<BR />3403<BR />3404<BR />3405<BR />3406<BR />3407<BR />3408<BR />3409<BR />3410<BR />3411<BR />3412<BR />3413<BR />3414<BR />3415<BR />3416<BR />3417<BR />3418<BR />3419<BR />3420<BR />3421<BR />3422<BR />3423<BR />3424<BR />3425<BR />3426<BR />3427<BR />3428<BR />3429<BR />3430<BR />3431<BR />3432<BR />3433<BR />3434<BR />3435<BR />3436<BR />3437<BR />3438<BR />3439<BR />3440<BR />3441<BR />3442<BR />3443<BR />3444<BR />3445<BR />3446<BR />3447<BR />3448<BR />3449<BR />3450<BR />3451<BR />3452<BR />3453<BR />3454<BR />3455<BR />3456<BR />3457<BR />3458<BR />3459<BR />3460<BR />3461<BR />3462<BR />3463<BR />3464<BR />3465<BR />3466<BR />3467<BR />3468<BR />3469<BR />3470<BR />3471<BR />3472<BR />3473<BR />3474<BR />3475<BR />3476<BR />3477<BR />3478<BR />3479<BR />3480<BR />3481<BR />3482<BR />3483<BR />3484<BR />3485<BR />3486<BR />3487<BR />3488<BR />3489<BR />3490<BR />3491<BR />3492<BR />3493<BR />3494<BR />3495<BR />3496<BR />3497<BR />3498<BR />3499<BR />3500<BR />3501<BR />3502<BR />3503<BR />3504<BR />3505<BR />3506<BR />3507<BR />3508<BR />3509<BR />3510<BR />
                            </td>
                            <td class="fileContent col-sm-10">
                                <span style='color:#FF4500'>$Script:PSModuleRoot</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$PSScriptRoot</span><br />
<span style='color:#FF4500'>$Script:ModuleName</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&quot;HubSpotPS&quot;</span><br />
<span style='color:#FF4500'>$Script:LSAppDataPath</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#008080'>[Environment]</span><span style='color:#A9A9A9'>::</span><span style='color:#000000'>GetFolderPath</span><span style='color:#000000'>(</span><span style='color:#8B0000'>&#39;ApplicationData&#39;</span><span style='color:#000000'>)</span><br />
<span style='color:#FF4500'>$Script:ModuleDataRoot</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#0000FF'>Join-Path</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-Path</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Script:LSAppDataPath</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-ChildPath</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Script:ModuleName</span><span style='color:#000000'>)</span><br />
<span style='color:#FF4500'>$Script:ModuleDataPath</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#0000FF'>Join-Path</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-Path</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Script:ModuleDataRoot</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-ChildPath</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&quot;ModuleData.json&quot;</span><span style='color:#000000'>)</span><br />
<span style='color:#00008B'>if</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#A9A9A9'>-not</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#0000FF'>Test-Path</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Script:ModuleDataRoot</span><span style='color:#000000'>)</span><span style='color:#000000'>)</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>{</span><span style='color:#0000FF'>New-Item</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-ItemType</span><span style='color:#000000'>&nbsp;</span><span style='color:#8A2BE2'>Directory</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-Path</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Script:ModuleDataRoot</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-Force</span><span style='color:#000000'>}</span><br />
<span style='color:#006400'># Imported from [D:\a\1\s\HubSpotPS\Private]</span><br />
<span style='color:#006400'># Enums.ps1</span><br />
<span style='color:#00008B'>enum</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>AssociationType</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>undocumented0</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Contact_to_company</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Company_to_contact</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Deal_to_contact</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Contact_to_deal</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Deal_to_company</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Company_to_deal</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Company_to_engagement</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Engagement_to_company</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Contact_to_engagement</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Engagement_to_contact</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Deal_to_engagement</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Engagement_to_deal</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Parent_company_to_child_company</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Child_company_to_parent_company</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Contact_to_ticket</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Ticket_to_contact</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Ticket_to_engagement</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Engagement_to_ticket</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Deal_to_line_item</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Line_item_to_deal</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Company_to_ticket</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Ticket_to_company</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Deal_to_ticket</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Ticket_to_deal</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>undocumented29</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>undocumented30</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>undocumented31</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>undocumented32</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Advisor_to_company</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Company_to_advisor</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Board_member_to_company</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Company_to_board_member</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Contractor_to_company</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Company_to_contractor</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Manager_to_company</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Company_to_manager</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Business_owner_to_company</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Company_to_business_owner</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Partner_to_company</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Company_to_partner</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Reseller_to_company</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Company_to_reseller</span><br />
<span style='color:#000000'>}</span><br />
<span style='color:#006400'># Get-HSApiEndpoint.ps1</span><br />
<span style='color:#00008B'>function</span><span style='color:#000000'>&nbsp;</span><span style='color:#8A2BE2'>Get-HSApiEndpoint</span><br />
<span style='color:#000000'>{</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#006400'>&lt;#<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.SYNOPSIS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Returns the api uri endpoint.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.DESCRIPTION<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Returns the api uri endpoint base on the api type.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER ApiType<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Type of the api endpoint to use.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.OUTPUTS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;String, The uri endpoint that will be used by Set-HSUri.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.EXAMPLE<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Returns the api endpoint for &#39;release-releases&#39;<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Get-HSApiEndpoint -ApiType release-releases<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.LINK<BR />
&nbsp;&nbsp;&nbsp;&nbsp;#&gt;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>CmdletBinding</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>Param</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>(</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[string]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$ApiType</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>)</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>begin</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>process</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>Switch</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$ApiType</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&#39;crm-contacts&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>return</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;crm/v3/objects/contacts&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&#39;crm-contactId&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>return</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;crm/v3/objects/contacts/{0}&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&#39;crm-contacts-batch-create&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>return</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;crm/v3/objects/contacts/batch/create&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&#39;crm-contacts-batch-update&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>return</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;crm/v3/objects/contacts/batch/update&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&#39;crm-deals&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>return</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;crm/v3/objects/deals&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&#39;crm-dealId&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>return</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;crm/v3/objects/deals/{0}&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&#39;crm-deals-batch-create&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>return</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;crm/v3/objects/deals/batch/create&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&#39;crm-deals-associations&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>return</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;crm/v3/objects/deals/{0}/associations/{1}&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&#39;crm-deals-associationType&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>return</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;crm/v3/objects/deals/{0}/associations/{1}/{2}/{3}&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&#39;crm-owners&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>return</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;crm/v3/owners&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&#39;crm-properties-objectType&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>return</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;crm/v3/properties/{0}&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&#39;crm-properties-objectType-groups&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>return</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;crm/v3/properties/{0}/groups&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&#39;crm-properties-objectType-groupName&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>return</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;crm/v3/properties/{0}/groups/{1}&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8A2BE2'>default</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#0000FF'>Write-Error</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&quot;[$($MyInvocation.MyCommand.Name)]: [$ApiType] is not supported&quot;</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-ErrorAction</span><span style='color:#000000'>&nbsp;</span><span style='color:#8A2BE2'>Stop</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>end</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>}</span><br />
<br />
<span style='color:#006400'># Set-HSQueryParameters.ps1</span><br />
<span style='color:#00008B'>function</span><span style='color:#000000'>&nbsp;</span><span style='color:#8A2BE2'>Set-HSQueryParameters</span><br />
<span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#006400'>&lt;#<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.SYNOPSIS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Returns the formated query parameter string.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.DESCRIPTION<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Returns the formated query parameter string.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER InputObject<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;The PS bound parameters.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER SplitProperties<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Switch, splits the properties array into multiple property queries.&#39;<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.OUTPUTS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;String, The formated query parameter string.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.EXAMPLE<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.LINK<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;#&gt;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>CmdletBinding</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>Param</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>(</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[object]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$InputObject</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[securestring]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$PersonalAccessToken</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[switch]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$SplitProperties</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>)</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>begin</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>process</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$nonQueryParams</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@(</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&#39;Instance&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&#39;Session&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&#39;Credential&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&#39;Verbose&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&#39;Debug&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&#39;ErrorAction&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&#39;WarningAction&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&#39;InformationAction&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&#39;ErrorVariable&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&#39;WarningVariable&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&#39;InformationVariable&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&#39;OutVariable&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&#39;OutBuffer&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$queryParams</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#00008B'>Foreach</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$key</span><span style='color:#000000'>&nbsp;</span><span style='color:#00008B'>in</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$InputObject</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Keys</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$nonQueryParams</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>-contains</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$key</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>Continue</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>ElseIf</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$key</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>-eq</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;Properties&#39;</span><span style='color:#000000'>)</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>-and</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$SplitProperties</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>IsPresent</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>Foreach</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$prop</span><span style='color:#000000'>&nbsp;</span><span style='color:#00008B'>in</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$InputObject</span><span style='color:#A9A9A9'>.</span><span style='color:#FF4500'>$Key</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&quot;properties=$prop&quot;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>ElseIf</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$key</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>-in</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;Limit&#39;</span><span style='color:#A9A9A9'>,</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;After&#39;</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&quot;$($key.ToLower())=$($InputObject.$key)&quot;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>ElseIf</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$key</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>-Match</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;[A-Za-z0-9]+_[A-Za-z0-9]+&#39;</span><span style='color:#000000'>)</span><span style='color:#000000'>&nbsp;</span><span style='color:#006400'># keys with underscores convert to dot-delimited</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$fixedKey</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$key</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Replace</span><span style='color:#000000'>(</span><span style='color:#8B0000'>&quot;_&quot;</span><span style='color:#A9A9A9'>,</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&quot;.&quot;</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&quot;$fixedKey=$($InputObject.$key)&quot;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>ElseIf</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$InputObject</span><span style='color:#A9A9A9'>.</span><span style='color:#FF4500'>$key</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>count</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&quot;$key={0}&quot;</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>-f</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$InputObject</span><span style='color:#A9A9A9'>.</span><span style='color:#FF4500'>$key</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>-join</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;,&#39;</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>Else</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&quot;$key=$($InputObject.$key)&quot;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$PersonalAccessToken</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$rawPersonalAccessToken</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Unprotect-HSSecurePersonalAccessToken</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-PersonalAccessToken</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$PersonalAccessToken</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$queryParams</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>+=</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&quot;&amp;hapikey=$rawPersonalAccessToken&quot;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>Return</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$queryParams</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>-join</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;&amp;&#39;</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>end</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>}</span><br />
<br />
<span style='color:#006400'># Set-HSUri.ps1</span><br />
<span style='color:#00008B'>function</span><span style='color:#000000'>&nbsp;</span><span style='color:#8A2BE2'>Set-HSUri</span><br />
<span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#006400'>&lt;#<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.SYNOPSIS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Sets the uri used by Invoke-HSRestMethod.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.DESCRIPTION<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Sets the uri used by Invoke-HSRestMethod.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Instance<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;The Team Services account or TFS server.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Query<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Url query parameter.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER ApiEndpoint<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;The api endpoint provided by Get-HSApiEndpoint.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER ApiVersion<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Version of the api to use.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.OUTPUTS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Uri, The uri that will be used by Invoke-HSRestMethod.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.EXAMPLE<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Set-HSUri -Instance &#39;https://api.hubapi.com/ &#39; -ApiEndpoint &#39;crm/v3/objects/contacts&#39;<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.LINK<BR />
&nbsp;&nbsp;&nbsp;&nbsp;#&gt;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>CmdletBinding</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>Param</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>(</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[uri]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Instance</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[string]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Query</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[string]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$ApiEndpoint</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>)</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>begin</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>process</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$Instance</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>AbsoluteUri</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>-and</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$ApiEndpoint</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>-and</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Query</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>return</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;{0}{1}?{2}&#39;</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>-f</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Instance</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>AbsoluteUri</span><span style='color:#A9A9A9'>,</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$ApiEndpoint</span><span style='color:#A9A9A9'>,</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Query</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>elseIf</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$Instance</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>AbsoluteUri</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>-and</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$ApiEndpoint</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>return</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;{0}{1}&#39;</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>-f</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Instance</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>AbsoluteUri</span><span style='color:#A9A9A9'>,</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$ApiEndpoint</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>end</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>}</span><br />
<br />
<span style='color:#006400'># Unprotect-HSSecurePersonalAccessToken.ps1</span><br />
<span style='color:#00008B'>Function</span><span style='color:#000000'>&nbsp;</span><span style='color:#8A2BE2'>Unprotect-HSSecurePersonalAccessToken</span><br />
<span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#006400'>&lt;#<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.SYNOPSIS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Returns decrypted personal access token.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.DESCRIPTION<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Returns decrypted personal access token that is stored in the session data.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER PersonalAccessToken<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Personal access token used to authenticate that has been converted to a secure string. <BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.OUTPUTS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;String, unsecure personal access token.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.EXAMPLE<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Unprotects the personal access token from secure string to plain text.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Unprotect-SecurePersonalAccessToken -PersonalAccessToken $mySecureToken<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.LINK<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;#&gt;</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>CmdletBinding</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>Param</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>(</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[Security.SecureString]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$PersonalAccessToken</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>Process</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$BSTR</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#008080'>[System.Runtime.InteropServices.Marshal]</span><span style='color:#A9A9A9'>::</span><span style='color:#000000'>SecureStringToBSTR</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$PersonalAccessToken</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$plainText</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#008080'>[System.Runtime.InteropServices.Marshal]</span><span style='color:#A9A9A9'>::</span><span style='color:#000000'>PtrToStringAuto</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$BSTR</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>Return</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$plainText</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>}</span><br />
<br />
<span style='color:#006400'># Imported from [D:\a\1\s\HubSpotPS\Public]</span><br />
<span style='color:#006400'># Get-HSContact.ps1</span><br />
<span style='color:#00008B'>function</span><span style='color:#000000'>&nbsp;</span><span style='color:#8A2BE2'>Get-HSContact</span><br />
<span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#006400'>&lt;#<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.SYNOPSIS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Gets a HubSpot contact.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.DESCRIPTION<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Gets a HubSpot contact by id.<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Identify the contact id with Get-HSContactList.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Session<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;HubSpot session, created by New-HSSession.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER ContactId<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;The id of the contact.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.INPUTS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;None, does not support pipeline.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.OUTPUTS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;PSObject, HS contact.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.EXAMPLE<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Returns a contact with the id of 7.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Get-HSContact -Session &#39;mySession&#39; -ContactId &#39;7&#39;<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.LINK<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;https://developers.hubspot.com/docs/api/crm/contacts<BR />
&nbsp;&nbsp;&nbsp;&nbsp;#&gt;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>CmdletBinding</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>Param</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>(</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[object]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Session</span><span style='color:#A9A9A9'>,</span><span style='color:#000000'>&nbsp;</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[string]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$ContactId</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>)</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>begin</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Session</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>|</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Get-HSSession</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$currentSession</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$instance</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Instance</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$personalaccesstoken</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>PersonalAccessToken</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$proxy</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Proxy</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$proxyCredential</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>ProxyCredential</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>process</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$apiEndpoint</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#0000FF'>Get-HSApiEndpoint</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-ApiType</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;crm-contactId&#39;</span><span style='color:#000000'>)</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>-f</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$ContactId</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$queryParameters</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Set-HSQueryParameters</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-InputObject</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$PSBoundParameters</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-PersonalAccessToken</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$personalaccesstoken</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$setAPUriSplat</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Instance</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$instance</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ApiEndpoint</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$apiEndpoint</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Query</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$queryParameters</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[uri]</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$uri</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Set-HSUri</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>@setAPUriSplat</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$invokeAPRestMethodSplat</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Method</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;GET&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Uri</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$uri</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ContentType</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;application/json&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Proxy</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$proxy</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ProxyCredential</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$proxyCredential</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$results</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Invoke-HSRestMethod</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>@invokeAPRestMethodSplat</span><span style='color:#000000'>&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$results</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$results</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>end</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>}</span><br />
<span style='color:#006400'># Get-HSContactList.ps1</span><br />
<span style='color:#00008B'>function</span><span style='color:#000000'>&nbsp;</span><span style='color:#8A2BE2'>Get-HSContactList</span><br />
<span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#006400'>&lt;#<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.SYNOPSIS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Gets a list of HubSpot contacts.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.DESCRIPTION<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Gets a list of HubSpot contacts.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Session<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;HubSpot session, created by New-HSSession.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Limit<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;The maximum number of results to display per page. Defaults to 10.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER After<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;The paging cursor token of the last successfully read resource will be returned as the paging.next.after JSON property of a paged response containing more results.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Properties<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;A comma separated list of the properties to be returned in the response. If any of the specified properties are not present on the requested object(s), they will be ignored.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.INPUTS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;None, does not support pipeline.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.OUTPUTS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;PSObject, List of HubSpot contacts.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.EXAMPLE<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Returns a list of HubSpot contacts for &#39;mySession&#39;<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Get-HSContactList -Session &#39;mySession&#39;<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.LINK<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;https://developers.hubspot.com/docs/api/crm/contacts<BR />
&nbsp;&nbsp;&nbsp;&nbsp;#&gt;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>CmdletBinding</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>Param</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>(</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[object]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Session</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[int]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Limit</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#800080'>10</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[string]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$After</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[string[]]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Properties</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>)</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>begin</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Session</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>|</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Get-HSSession</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$currentSession</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$instance</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Instance</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$personalaccesstoken</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>PersonalAccessToken</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$proxy</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Proxy</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$proxyCredential</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>ProxyCredential</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>process</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$apiEndpoint</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Get-HSApiEndpoint</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-ApiType</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;crm-contacts&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$queryParameters</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Set-HSQueryParameters</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-InputObject</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$PSBoundParameters</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-PersonalAccessToken</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$personalaccesstoken</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-SplitProperties</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$setAPUriSplat</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Instance</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$instance</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ApiEndpoint</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$apiEndpoint</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Query</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$queryParameters</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[uri]</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$uri</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Set-HSUri</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>@setAPUriSplat</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$invokeAPRestMethodSplat</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Method</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;GET&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Uri</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$uri</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ContentType</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;application/json&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Proxy</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$proxy</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ProxyCredential</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$proxyCredential</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$results</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Invoke-HSRestMethod</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>@invokeAPRestMethodSplat</span><span style='color:#000000'>&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>if</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$results</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>paging</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>next</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>after</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$results</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>results</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$null</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$PSBoundParameters</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Remove</span><span style='color:#000000'>(</span><span style='color:#8B0000'>&#39;After&#39;</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#0000FF'>Get-HSContactList</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>@PSBoundParameters</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-After</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$results</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>paging</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>next</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>after</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>elseIf</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$results</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>results</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$results</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>results</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>end</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>}</span><br />
<span style='color:#006400'># Get-HSDeal.ps1</span><br />
<span style='color:#00008B'>function</span><span style='color:#000000'>&nbsp;</span><span style='color:#8A2BE2'>Get-HSDeal</span><br />
<span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#006400'>&lt;#<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.SYNOPSIS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Gets a HubSpot deal.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.DESCRIPTION<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Gets a HubSpot deal by name.<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Identify the deal name with Get-HSDealList.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Session<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;HubSpot session, created by New-HSSession.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER DealId<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;The name of the deal.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.INPUTS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;None, does not support pipeline.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.OUTPUTS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;PSObject, HS deal.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.EXAMPLE<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Returns a deal with the id of 7.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Get-HSDeal -Session &#39;mySession&#39; -DealId &#39;7&#39;<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.LINK<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;https://developers.hubspot.com/docs/api/crm/deals<BR />
&nbsp;&nbsp;&nbsp;&nbsp;#&gt;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>CmdletBinding</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>Param</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>(</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[object]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Session</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[string]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$DealId</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>)</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>begin</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Session</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>|</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Get-HSSession</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$currentSession</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$instance</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Instance</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$personalaccesstoken</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>PersonalAccessToken</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$proxy</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Proxy</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$proxyCredential</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>ProxyCredential</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>process</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$apiEndpoint</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#0000FF'>Get-HSApiEndpoint</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-ApiType</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;crm-dealId&#39;</span><span style='color:#000000'>)</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>-f</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$ObjectType</span><span style='color:#A9A9A9'>,</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$DealId</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$queryParameters</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Set-HSQueryParameters</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-InputObject</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$PSBoundParameters</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-PersonalAccessToken</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$personalaccesstoken</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$setAPUriSplat</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Instance</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$instance</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ApiEndpoint</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$apiEndpoint</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Query</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$queryParameters</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[uri]</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$uri</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Set-HSUri</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>@setAPUriSplat</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$invokeAPRestMethodSplat</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Method</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;GET&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Uri</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$uri</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ContentType</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;application/json&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Proxy</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$proxy</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ProxyCredential</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$proxyCredential</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$results</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Invoke-HSRestMethod</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>@invokeAPRestMethodSplat</span><span style='color:#000000'>&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$results</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>results</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$results</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>results</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>end</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>}</span><br />
<span style='color:#006400'># Get-HSDealAssociationList.ps1</span><br />
<span style='color:#00008B'>function</span><span style='color:#000000'>&nbsp;</span><span style='color:#8A2BE2'>Get-HSDealAssociationList</span><br />
<span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#006400'>&lt;#<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.SYNOPSIS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Gets a list of HubSpot deal associations.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.DESCRIPTION<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Gets a list of HubSpot deal associations.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Session<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;HubSpot session, created by New-HSSession.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER DealId<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;The name of the deal.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER ObjectType<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;CRM objects are defined by a primary type and a set of properties. Each type has a unique set of standard properties, represented by a map of name-value pairs.<BR />
&nbsp;&nbsp;&nbsp;&nbsp;- Contacts<BR />
&nbsp;&nbsp;&nbsp;&nbsp;- Companies<BR />
&nbsp;&nbsp;&nbsp;&nbsp;- Deals<BR />
&nbsp;&nbsp;&nbsp;&nbsp;- Tickets<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Limit<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;The maximum number of results to display per page. Defaults to 10.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER After<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;The paging cursor token of the last successfully read resource will be returned as the paging.next.after JSON property of a paged response containing more results.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Properties<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;A comma separated list of the properties to be returned in the response. If any of the specified properties are not present on the requested object(s), they will be ignored.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.INPUTS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;None, does not support pipeline.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.OUTPUTS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;PSObject, List of HubSpot deals.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.EXAMPLE<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Returns a list of HubSpot deals for &#39;mySession&#39;<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Get-HSDealAssociationList -Session &#39;mySession&#39;<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.LINK<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;https://developers.hubspot.com/docs/api/crm/deals<BR />
&nbsp;&nbsp;&nbsp;&nbsp;#&gt;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>CmdletBinding</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>Param</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>(</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[object]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Session</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[string]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$DealId</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>ValidateSet</span><span style='color:#000000'>(</span><span style='color:#8B0000'>&#39;Contacts&#39;</span><span style='color:#A9A9A9'>,</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;Companies&#39;</span><span style='color:#A9A9A9'>,</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;Deals&#39;</span><span style='color:#A9A9A9'>,</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;Tickets&#39;</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[string]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$ObjectType</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[int]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Limit</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#800080'>10</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[string]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$After</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[string[]]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Properties</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>)</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>begin</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Session</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>|</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Get-HSSession</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$currentSession</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$instance</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Instance</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$personalaccesstoken</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>PersonalAccessToken</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$proxy</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Proxy</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$proxyCredential</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>ProxyCredential</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>process</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$apiEndpoint</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#0000FF'>Get-HSApiEndpoint</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-ApiType</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;crm-deals-associations&#39;</span><span style='color:#000000'>)</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>-f</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$DealId</span><span style='color:#A9A9A9'>,</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$ObjectType</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$queryParameters</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Set-HSQueryParameters</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-InputObject</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$PSBoundParameters</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-PersonalAccessToken</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$personalaccesstoken</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-SplitProperties</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$setAPUriSplat</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Instance</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$instance</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ApiEndpoint</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$apiEndpoint</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Query</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$queryParameters</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[uri]</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$uri</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Set-HSUri</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>@setAPUriSplat</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$invokeAPRestMethodSplat</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Method</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;GET&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Uri</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$uri</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ContentType</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;application/json&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Proxy</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$proxy</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ProxyCredential</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$proxyCredential</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$results</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Invoke-HSRestMethod</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>@invokeAPRestMethodSplat</span><span style='color:#000000'>&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>if</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$results</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>paging</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>next</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>after</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$results</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>results</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$null</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$PSBoundParameters</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Remove</span><span style='color:#000000'>(</span><span style='color:#8B0000'>&#39;After&#39;</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#0000FF'>Get-HSDealAssociationList</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>@PSBoundParameters</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-After</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$results</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>paging</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>next</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>after</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>elseIf</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$results</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>results</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$results</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>results</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>end</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>}</span><br />
<span style='color:#006400'># Get-HSDealList.ps1</span><br />
<span style='color:#00008B'>function</span><span style='color:#000000'>&nbsp;</span><span style='color:#8A2BE2'>Get-HSDealList</span><br />
<span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#006400'>&lt;#<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.SYNOPSIS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Gets a list of HubSpot deals.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.DESCRIPTION<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Gets a list of HubSpot deals.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Session<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;HubSpot session, created by New-HSSession.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Limit<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;The maximum number of results to display per page. Defaults to 10.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER After<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;The paging cursor token of the last successfully read resource will be returned as the paging.next.after JSON property of a paged response containing more results.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Properties<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;A comma separated list of the properties to be returned in the response. If any of the specified properties are not present on the requested object(s), they will be ignored.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.INPUTS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;None, does not support pipeline.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.OUTPUTS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;PSObject, List of HubSpot deals.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.EXAMPLE<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Returns a list of HubSpot deals for &#39;mySession&#39;<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Get-HSDealList -Session &#39;mySession&#39;<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.LINK<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;https://developers.hubspot.com/docs/api/crm/deals<BR />
&nbsp;&nbsp;&nbsp;&nbsp;#&gt;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>CmdletBinding</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>Param</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>(</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[object]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Session</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[int]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Limit</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#800080'>10</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[string]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$After</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[string[]]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Properties</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>)</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>begin</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Session</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>|</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Get-HSSession</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$currentSession</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$instance</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Instance</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$personalaccesstoken</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>PersonalAccessToken</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$proxy</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Proxy</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$proxyCredential</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>ProxyCredential</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>process</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$apiEndpoint</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Get-HSApiEndpoint</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-ApiType</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;crm-deals&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$queryParameters</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Set-HSQueryParameters</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-InputObject</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$PSBoundParameters</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-PersonalAccessToken</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$personalaccesstoken</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-SplitProperties</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$setAPUriSplat</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Instance</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$instance</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ApiEndpoint</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$apiEndpoint</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Query</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$queryParameters</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[uri]</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$uri</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Set-HSUri</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>@setAPUriSplat</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$invokeAPRestMethodSplat</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Method</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;GET&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Uri</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$uri</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ContentType</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;application/json&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Proxy</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$proxy</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ProxyCredential</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$proxyCredential</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$results</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Invoke-HSRestMethod</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>@invokeAPRestMethodSplat</span><span style='color:#000000'>&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>if</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$results</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>paging</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>next</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>after</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$results</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>results</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$null</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$PSBoundParameters</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Remove</span><span style='color:#000000'>(</span><span style='color:#8B0000'>&#39;After&#39;</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#0000FF'>Get-HSDealList</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>@PSBoundParameters</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-After</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$results</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>paging</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>next</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>after</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>elseIf</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$results</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>results</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$results</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>results</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>end</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>}</span><br />
<span style='color:#006400'># Get-HSGroup.ps1</span><br />
<span style='color:#00008B'>function</span><span style='color:#000000'>&nbsp;</span><span style='color:#8A2BE2'>Get-HSGroup</span><br />
<span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#006400'>&lt;#<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.SYNOPSIS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Gets a HubSpot group.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.DESCRIPTION<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Gets a HubSpot group by name.<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Identify the group name with Get-HSGroupList.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Session<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;HubSpot session, created by New-HSSession.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER GroupName<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;The name of the group.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER ObjectType<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;CRM objects are defined by a primary type and a set of properties. Each type has a unique set of standard properties, represented by a map of name-value pairs.<BR />
&nbsp;&nbsp;&nbsp;&nbsp;- Contacts<BR />
&nbsp;&nbsp;&nbsp;&nbsp;- Companies<BR />
&nbsp;&nbsp;&nbsp;&nbsp;- Deals<BR />
&nbsp;&nbsp;&nbsp;&nbsp;- Tickets<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.INPUTS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;None, does not support pipeline.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.OUTPUTS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;PSObject, HS group.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.EXAMPLE<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Returns a group with the id of 7.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Get-HSGroup -Session &#39;mySession&#39; -GroupName &#39;7&#39;<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.LINK<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;#&gt;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>CmdletBinding</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>Param</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>(</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[object]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Session</span><span style='color:#A9A9A9'>,</span><span style='color:#000000'>&nbsp;</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[string]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$GroupName</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>ValidateSet</span><span style='color:#000000'>(</span><span style='color:#8B0000'>&#39;Contacts&#39;</span><span style='color:#A9A9A9'>,</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;Companies&#39;</span><span style='color:#A9A9A9'>,</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;Deals&#39;</span><span style='color:#A9A9A9'>,</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;Tickets&#39;</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[string]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$ObjectType</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>)</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>begin</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Session</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>|</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Get-HSSession</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$currentSession</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$instance</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Instance</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$personalaccesstoken</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>PersonalAccessToken</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$proxy</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Proxy</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$proxyCredential</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>ProxyCredential</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>process</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$apiEndpoint</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#0000FF'>Get-HSApiEndpoint</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-ApiType</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;crm-properties-objectType-groupName&#39;</span><span style='color:#000000'>)</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>-f</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$ObjectType</span><span style='color:#A9A9A9'>,</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$GroupName</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$queryParameters</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Set-HSQueryParameters</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-InputObject</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$PSBoundParameters</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-PersonalAccessToken</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$personalaccesstoken</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$setAPUriSplat</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Instance</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$instance</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ApiEndpoint</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$apiEndpoint</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Query</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$queryParameters</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[uri]</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$uri</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Set-HSUri</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>@setAPUriSplat</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$invokeAPRestMethodSplat</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Method</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;GET&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Uri</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$uri</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ContentType</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;application/json&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Proxy</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$proxy</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ProxyCredential</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$proxyCredential</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$results</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Invoke-HSRestMethod</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>@invokeAPRestMethodSplat</span><span style='color:#000000'>&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$results</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$results</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>end</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>}</span><br />
<span style='color:#006400'># Get-HSGroupList.ps1</span><br />
<span style='color:#00008B'>function</span><span style='color:#000000'>&nbsp;</span><span style='color:#8A2BE2'>Get-HSGroupList</span><br />
<span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#006400'>&lt;#<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.SYNOPSIS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Gets a list of HubSpot groups.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.DESCRIPTION<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Gets a list of HubSpot groups.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Session<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;HubSpot session, created by New-HSSession.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER ObjectType<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;CRM objects are defined by a primary type and a set of properties. Each type has a unique set of standard properties, represented by a map of name-value pairs.<BR />
&nbsp;&nbsp;&nbsp;&nbsp;- Contacts<BR />
&nbsp;&nbsp;&nbsp;&nbsp;- Companies<BR />
&nbsp;&nbsp;&nbsp;&nbsp;- Deals<BR />
&nbsp;&nbsp;&nbsp;&nbsp;- Tickets<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.INPUTS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;None, does not support pipeline.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.OUTPUTS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;PSObject, List of HubSpot groups.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.EXAMPLE<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Returns a list of HubSpot groups for &#39;mySession&#39;<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Get-HSGroupList -Session &#39;mySession&#39;<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.LINK<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;#&gt;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>CmdletBinding</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>Param</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>(</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[object]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Session</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>ValidateSet</span><span style='color:#000000'>(</span><span style='color:#8B0000'>&#39;Contacts&#39;</span><span style='color:#A9A9A9'>,</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;Companies&#39;</span><span style='color:#A9A9A9'>,</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;Deals&#39;</span><span style='color:#A9A9A9'>,</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;Tickets&#39;</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[string]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$ObjectType</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>)</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>begin</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Session</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>|</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Get-HSSession</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$currentSession</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$instance</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Instance</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$personalaccesstoken</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>PersonalAccessToken</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$proxy</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Proxy</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$proxyCredential</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>ProxyCredential</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>process</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$apiEndpoint</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#0000FF'>Get-HSApiEndpoint</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-ApiType</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;crm-properties-objectType-groups&#39;</span><span style='color:#000000'>)</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>-f</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$ObjectType</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$queryParameters</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Set-HSQueryParameters</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-InputObject</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$PSBoundParameters</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-PersonalAccessToken</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$personalaccesstoken</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$setAPUriSplat</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Instance</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$instance</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ApiEndpoint</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$apiEndpoint</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Query</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$queryParameters</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[uri]</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$uri</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Set-HSUri</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>@setAPUriSplat</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$invokeAPRestMethodSplat</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Method</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;GET&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Uri</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$uri</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ContentType</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;application/json&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Proxy</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$proxy</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ProxyCredential</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$proxyCredential</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$results</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Invoke-HSRestMethod</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>@invokeAPRestMethodSplat</span><span style='color:#000000'>&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$results</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>results</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$results</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>results</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>end</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>}</span><br />
<span style='color:#006400'># Get-HSOwnerList.ps1</span><br />
<span style='color:#00008B'>function</span><span style='color:#000000'>&nbsp;</span><span style='color:#8A2BE2'>Get-HSOwnerList</span><br />
<span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#006400'>&lt;#<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.SYNOPSIS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Gets a list of HubSpot owners.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.DESCRIPTION<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Gets a list of HubSpot owners.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Session<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;HubSpot session, created by New-HSSession.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Limit<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;The maximum number of results to display per page. Defaults to 10.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Email<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Filter by email address.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER After<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;The paging cursor token of the last successfully read resource will be returned as the paging.next.after JSON property of a paged response containing more results.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.INPUTS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;None, does not support pipeline.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.OUTPUTS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;PSObject, List of HubSpot owners.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.EXAMPLE<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Returns a list of HubSpot owners for &#39;mySession&#39;<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Get-HSOwnerList -Session &#39;mySession&#39;<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.LINK<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;https://developers.hubspot.com/docs/api/crm/owners<BR />
&nbsp;&nbsp;&nbsp;&nbsp;#&gt;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>CmdletBinding</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>Param</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>(</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[object]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Session</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[int]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Limit</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#800080'>10</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[string]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Email</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[string]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$After</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>)</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>begin</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Session</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>|</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Get-HSSession</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$currentSession</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$instance</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Instance</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$personalaccesstoken</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>PersonalAccessToken</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$proxy</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Proxy</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$proxyCredential</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>ProxyCredential</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>process</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$apiEndpoint</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Get-HSApiEndpoint</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-ApiType</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;crm-owners&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$queryParameters</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Set-HSQueryParameters</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-InputObject</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$PSBoundParameters</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-PersonalAccessToken</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$personalaccesstoken</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-SplitProperties</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$setAPUriSplat</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Instance</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$instance</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ApiEndpoint</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$apiEndpoint</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Query</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$queryParameters</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[uri]</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$uri</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Set-HSUri</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>@setAPUriSplat</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$invokeAPRestMethodSplat</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Method</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;GET&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Uri</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$uri</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ContentType</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;application/json&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Proxy</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$proxy</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ProxyCredential</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$proxyCredential</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$results</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Invoke-HSRestMethod</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>@invokeAPRestMethodSplat</span><span style='color:#000000'>&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>if</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$results</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>paging</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>next</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>after</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$results</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>results</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$null</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$PSBoundParameters</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Remove</span><span style='color:#000000'>(</span><span style='color:#8B0000'>&#39;After&#39;</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#0000FF'>Get-HSOwnerList</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>@PSBoundParameters</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-After</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$results</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>paging</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>next</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>after</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>elseIf</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$results</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>results</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$results</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>results</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>end</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>}</span><br />
<span style='color:#006400'># Get-HSPropertyList.ps1</span><br />
<span style='color:#00008B'>function</span><span style='color:#000000'>&nbsp;</span><span style='color:#8A2BE2'>Get-HSPropertyList</span><br />
<span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#006400'>&lt;#<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.SYNOPSIS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Gets a list of HubSpot properties.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.DESCRIPTION<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Gets a list of HubSpot properties.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Session<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;HubSpot session, created by New-HSSession.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER ObjectType<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;CRM objects are defined by a primary type and a set of properties. Each type has a unique set of standard properties, represented by a map of name-value pairs.<BR />
&nbsp;&nbsp;&nbsp;&nbsp;- Contacts<BR />
&nbsp;&nbsp;&nbsp;&nbsp;- Companies<BR />
&nbsp;&nbsp;&nbsp;&nbsp;- Deals<BR />
&nbsp;&nbsp;&nbsp;&nbsp;- Tickets<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.INPUTS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;None, does not support pipeline.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.OUTPUTS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;PSObject, List of HubSpot properties.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.EXAMPLE<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Returns a list of HubSpot properties for &#39;mySession&#39;<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Get-HSPropertyList -Session &#39;mySession&#39;<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.LINK<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;https://developers.hubspot.com/docs/api/crm/properties<BR />
&nbsp;&nbsp;&nbsp;&nbsp;#&gt;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>CmdletBinding</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>Param</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>(</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[object]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Session</span><span style='color:#A9A9A9'>,</span><span style='color:#000000'>&nbsp;</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>ValidateSet</span><span style='color:#000000'>(</span><span style='color:#8B0000'>&#39;Contacts&#39;</span><span style='color:#A9A9A9'>,</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;Companies&#39;</span><span style='color:#A9A9A9'>,</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;Deals&#39;</span><span style='color:#A9A9A9'>,</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;Tickets&#39;</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[string]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$ObjectType</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>)</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>begin</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Session</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>|</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Get-HSSession</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$currentSession</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$instance</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Instance</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$personalaccesstoken</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>PersonalAccessToken</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$proxy</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Proxy</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$proxyCredential</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>ProxyCredential</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>process</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$apiEndpoint</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#0000FF'>Get-HSApiEndpoint</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-ApiType</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;crm-properties-objectType&#39;</span><span style='color:#000000'>)</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>-f</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$ObjectType</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$queryParameters</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Set-HSQueryParameters</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-InputObject</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$PSBoundParameters</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-PersonalAccessToken</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$personalaccesstoken</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$setAPUriSplat</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Instance</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$instance</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ApiEndpoint</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$apiEndpoint</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Query</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$queryParameters</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[uri]</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$uri</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Set-HSUri</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>@setAPUriSplat</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$invokeAPRestMethodSplat</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Method</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;GET&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Uri</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$uri</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ContentType</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;application/json&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Proxy</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$proxy</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ProxyCredential</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$proxyCredential</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$results</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Invoke-HSRestMethod</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>@invokeAPRestMethodSplat</span><span style='color:#000000'>&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$results</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>results</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$results</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>results</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>end</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>}</span><br />
<span style='color:#006400'># Get-HSSession.ps1</span><br />
<span style='color:#00008B'>Function</span><span style='color:#000000'>&nbsp;</span><span style='color:#8A2BE2'>Get-HSSession</span><br />
<span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#006400'>&lt;#<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.SYNOPSIS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Returns HubSpotPS session data.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.DESCRIPTION<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Returns HubSpotPS session data that has been stored in the users local application data. <BR />
&nbsp;&nbsp;&nbsp;&nbsp;Use Save-HSSession to persist the session data to disk.<BR />
&nbsp;&nbsp;&nbsp;&nbsp;The sensetive data is returned encrypted.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Id<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Session id.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER SessionName<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;The friendly name of the session.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Path<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;The path where session data will be stored, defaults to $Script:ModuleDataPath.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.LINK<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Save-HSSession<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Remove-HSSession<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.INPUTS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;None, does not support pipeline.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.OUTPUTS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;PSObject. Get-HSSession returns a PSObject that contains the following:<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Instance<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Collection<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;PersonalAccessToken<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.EXAMPLE<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Returns all AP sessions saved or in memory.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Get-HSSession<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.EXAMPLE<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Returns AP session with the session name of &#39;myFirstSession&#39;.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Get-HSSession -SessionName &#39;myFirstSession&#39;<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;#&gt;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>CmdletBinding</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>Param</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>(</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>ValueFromPipeline</span><span style='color:#A9A9A9'>,</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ValueFromPipelineByPropertyName</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[string]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$SessionName</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>ParameterSetName</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;ById&#39;</span><span style='color:#A9A9A9'>,</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ValueFromPipelineByPropertyName</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[int]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Id</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[string]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Path</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Script:ModuleDataPath</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>Process</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#006400'># Process memory sessions </span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$_sessions</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@(</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$null</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>-ne</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Global:_HSSessions</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>Foreach</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$_memSession</span><span style='color:#000000'>&nbsp;</span><span style='color:#00008B'>in</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Global:_HSSessions</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$_sessions</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>+=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$_memSession</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#006400'># Process saved sessions</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#0000FF'>Test-Path</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Path</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$data</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Get-Content</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-Path</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Path</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-Raw</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>|</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>ConvertFrom-Json</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>Foreach</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$_data</span><span style='color:#000000'>&nbsp;</span><span style='color:#00008B'>in</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$data</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>SessionData</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$_object</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>New-Object</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-TypeName</span><span style='color:#000000'>&nbsp;</span><span style='color:#8A2BE2'>PSCustomObject</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-Property</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Id</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$_data</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Id</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>SessionName</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$_data</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>SessionName</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Instance</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$_data</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Instance</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Saved</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$_data</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Saved</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$_data</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>PersonalAccessToken</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$_object</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>|</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Add-Member</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-NotePropertyName</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;PersonalAccessToken&#39;</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-NotePropertyValue</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$_data</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>PersonalAccessToken</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>|</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>ConvertTo-SecureString</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$_data</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Credential</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$_psCredentialObject</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#008080'>[pscredential]</span><span style='color:#A9A9A9'>::</span><span style='color:#000000'>new</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$_data</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Credential</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Username</span><span style='color:#A9A9A9'>,</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$_data</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Credential</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Password</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>|</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>ConvertTo-SecureString</span><span style='color:#000000'>)</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$_object</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>|</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Add-Member</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-NotePropertyName</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;Credential&#39;</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-NotePropertyValue</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$_psCredentialObject</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$_data</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Proxy</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$_object</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>|</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Add-Member</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-NotePropertyName</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;Proxy&#39;</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-NotePropertyValue</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$_data</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Proxy</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$_data</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>ProxyCredential</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$_psProxyCredentialObject</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#008080'>[pscredential]</span><span style='color:#A9A9A9'>::</span><span style='color:#000000'>new</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$_data</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>ProxyCredential</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Username</span><span style='color:#A9A9A9'>,</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$_data</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>ProxyCredential</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Password</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>|</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>ConvertTo-SecureString</span><span style='color:#000000'>)</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$_object</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>|</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Add-Member</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-NotePropertyName</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;ProxyCredential&#39;</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-NotePropertyValue</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$_psProxyCredentialObject</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$_sessions</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>+=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$_object</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$PSCmdlet</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>ParameterSetName</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>-eq</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;ById&#39;</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$_sessions</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$_sessions</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>|</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Where-Object</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>{</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$PSItem</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Id</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>-eq</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Id</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$SessionName</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$_sessions</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$_sessions</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>|</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Where-Object</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>{</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$PSItem</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>SessionName</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>-eq</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$SessionName</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$_sessions</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>return</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$_sessions</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>elseIf</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$ErrorActionPreference</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>-ne</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;SilentlyContinue&#39;</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#0000FF'>Write-Error</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&quot;[$($MyInvocation.MyCommand.Name)]: Unable to locate any HubSpot sessions in memory or stored at [$Path]&quot;</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-ErrorAction</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;Stop&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>}</span><br />
<span style='color:#006400'># Invoke-HSRestMethod.ps1</span><br />
<span style='color:#00008B'>function</span><span style='color:#000000'>&nbsp;</span><span style='color:#8A2BE2'>Invoke-HSRestMethod</span><br />
<span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#006400'>&lt;#<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.SYNOPSIS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Invokes a rest method.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.DESCRIPTION<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Invokes a rest method.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Method<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Specifies the method used for the web request.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Body<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Specifies the body of the request. The body is the content of the request that follows the headers.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER ContentType<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Specifies the content type of the web request. If this parameter is omitted and the request method is POST, Invoke-RestMethod sets the content type to application/x-www-form-urlencoded. Otherwise, the content type is not specified in the call.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Headers<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;The headers to append to the invocation. <BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Uri<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Specifies the Uniform Resource Identifier (URI) of the Internet resource to which the web request is sent. This parameter supports HTTP, HTTPS, FTP, and FILE values.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER PersonalAccessToken<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Personal access token used to authenticate that has been converted to a secure string. <BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Credential<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Specifies a user account that has permission to send the request. The default is the Personal Access Token if it is defined, otherwise it is the current user.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Proxy<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Use a proxy server for the request, rather than connecting directly to the Internet resource. Enter the URI of a network proxy server.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER ProxyCredential<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Specifie a user account that has permission to use the proxy server that is specified by the -Proxy parameter. The default is the current user.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Path<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;The directory to output files to.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER FormatBody<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Switch, the HubSpot rest api requires lowercase key value pairs, this switch formats all key values to lowercase.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.OUTPUTS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;System.Int64, System.String, System.Xml.XmlDocument, The output of the cmdlet depends upon the format of the content that is retrieved.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.OUTPUTS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;PSObject, If the request returns JSON strings, Invoke-RestMethod returns a PSObject that represents the strings.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.EXAMPLE<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Invoke-HSRestMethod -Method PATCH -Body $Body -ContentType &#39;application/json&#39; -Uri &#39;https://myURL/api/endpoint&#39;<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.LINK<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/invoke-restmethod?view=powershell-6<BR />
&nbsp;&nbsp;&nbsp;&nbsp;#&gt;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>CmdletBinding</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>Param</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>(</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[string]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Method</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[psobject]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Body</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[uri]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Uri</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[string]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$ContentType</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[psobject]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Headers</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[Security.SecureString]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$PersonalAccessToken</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[pscredential]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Credential</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[string]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Proxy</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[pscredential]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$ProxyCredential</span><span style='color:#A9A9A9'>,</span><span style='color:#000000'>&nbsp;</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[string]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Path</span><span style='color:#A9A9A9'>,</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[Switch]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$FormatBody</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>)</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>begin</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>process</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$invokeRestMethodSplat</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ContentType</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$ContentType</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Method</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Method</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>UseBasicParsing</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$true</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Uri</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$uri</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>AbsoluteUri</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$Body</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$FormatBody</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>IsPresent</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#006400'># Formats the property names to all lowercase</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$invokeRestMethodSplat</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Body</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#008080'>[regex]</span><span style='color:#A9A9A9'>::</span><span style='color:#000000'>Replace</span><span style='color:#000000'>(</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$Body</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>|</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>ConvertTo-Json</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-Depth</span><span style='color:#000000'>&nbsp;</span><span style='color:#800080'>20</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>,</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&#39;(?&lt;=&quot;)(\w+)(?=&quot;:)&#39;</span><span style='color:#A9A9A9'>,</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><span style='color:#FF4500'>$args</span><span style='color:#A9A9A9'>[</span><span style='color:#800080'>0</span><span style='color:#A9A9A9'>]</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Groups</span><span style='color:#A9A9A9'>[</span><span style='color:#800080'>1</span><span style='color:#A9A9A9'>]</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Value</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>ToLower</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>else</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$invokeRestMethodSplat</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Body</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$Body</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>|</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>ConvertTo-Json</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-Depth</span><span style='color:#000000'>&nbsp;</span><span style='color:#800080'>20</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$Headers</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$invokeRestMethodSplat</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Headers</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Headers</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$Proxy</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$invokeRestMethodSplat</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Proxy</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Proxy</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$ProxyCredential</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$invokeRestMethodSplat</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>ProxyCredential</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$ProxyCredential</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>else</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$invokeRestMethodSplat</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>ProxyUseDefaultCredentials</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$true</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$Path</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$invokeRestMethodSplat</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>OutFile</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Path</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$results</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Invoke-RestMethod</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>@invokeRestMethodSplat</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>Return</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$results</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>end</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>}</span><br />
<br />
<span style='color:#006400'># New-HSAccountToken.ps1</span><br />
<span style='color:#00008B'>function</span><span style='color:#000000'>&nbsp;</span><span style='color:#8A2BE2'>New-HSAccountToken</span><br />
<span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#006400'>&lt;#<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.SYNOPSIS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Creates a new LS account token.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.DESCRIPTION<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Creates a new LS account token.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Instance<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;The HubSpot api instance. <BR />
&nbsp;&nbsp;&nbsp;&nbsp;Example: prodapi.HubSpot.com<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Credential<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Specifies a user account that has permission to send the request.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Proxy<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Use a proxy server for the request, rather than connecting directly to the Internet resource. Enter the URI of a network proxy server.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER ProxyCredential<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Specifie a user account that has permission to use the proxy server that is specified by the -Proxy parameter. The default is the current user.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Session<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;HubSpot session, created by New-HSSession.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER GrantType<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;The type of grant to use.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Scope<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;The scope of token to request.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Origin<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;The DNS entry for the company name.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Referer<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;The DNS entry for the company name.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.INPUTS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;None, does not support pipeline.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.OUTPUTS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;PSObject, LS account token.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.EXAMPLE<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Returns an access token with a &#39;password&#39; grant for the &#39;Admin&#39; scope for the &#39;myCompand.HubSpot.com&#39;.<BR />
&nbsp;&nbsp;&nbsp;&nbsp;New-HSAccountToken -Session &#39;mySession&#39; -GrantType &#39;password&#39; -Scope &#39;Admin&#39; -Origin &#39;https://myCompany.HubSpot.com&#39; -Referer &#39;https://myCompany.HubSpot.com&#39;<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.LINK<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;#&gt;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>CmdletBinding</span><span style='color:#000000'>(</span><span style='color:#000000'>DefaultParameterSetName</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;ByCredential&#39;</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>Param</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>(</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#A9A9A9'>,</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ParameterSetName</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;ByCredential&#39;</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[uri]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Instance</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#A9A9A9'>,</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ParameterSetName</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;ByCredential&#39;</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[pscredential]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Credential</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>ParameterSetName</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;ByCredential&#39;</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[string]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Proxy</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>ParameterSetName</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;ByCredential&#39;</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[pscredential]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$ProxyCredential</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#A9A9A9'>,</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ParameterSetName</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;BySession&#39;</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[object]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Session</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[string]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$GrantType</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[string]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Scope</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[string]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Origin</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[string]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Referer</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>)</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>begin</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$PSCmdlet</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>ParameterSetName</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>-eq</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;BySession&#39;</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Session</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>|</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Get-HSSession</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$currentSession</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Instance</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Instance</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Credential</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Credential</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Proxy</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Proxy</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$ProxyCredential</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>ProxyCredential</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>process</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$headers</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>origin</span><span style='color:#000000'>&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Origin</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>referer</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Referer</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$body</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&#39;grant_type&#39;</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$GrantType</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>scope</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Scope</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>username</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Credential</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>UserName</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>password</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Credential</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>GetNetworkCredential</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Password</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$apiEndpoint</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Get-HSApiEndpoint</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-ApiType</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;account-token&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$setAPUriSplat</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Instance</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Instance</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ApiEndpoint</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$apiEndpoint</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[uri]</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$uri</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Set-HSUri</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>@setAPUriSplat</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$invokeAPRestMethodSplat</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Method</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;POST&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Uri</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$uri</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Credential</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Credential</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Headers</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$headers</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Body</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$body</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ContentType</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;application/x-www-form-urlencoded&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Proxy</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Proxy</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ProxyCredential</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$ProxyCredential</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$results</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Invoke-HSRestMethod</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>@invokeAPRestMethodSplat</span><span style='color:#000000'>&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$results</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>return</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$results</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>end</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>}</span><br />
<span style='color:#006400'># New-HSContact.ps1</span><br />
<span style='color:#00008B'>function</span><span style='color:#000000'>&nbsp;</span><span style='color:#8A2BE2'>New-HSContact</span><br />
<span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#006400'>&lt;#<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.SYNOPSIS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Creates a HubSpot contact.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.DESCRIPTION<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Creates a contact with the given properties and returns a copy of the object, including the id.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Session<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;HubSpot session, created by New-HSSession.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Properties<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;The property object used to update the contact.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.INPUTS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;None, does not support pipeline.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.OUTPUTS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;PSObject, HS contact.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.EXAMPLE<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Creates a contact with the provided properties.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;$props = @{<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;firstname = &#39;John&#39;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lastname = &#39;Cena&#39;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;email = &#39;youcantseeme@gmail.com&#39;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;}<BR />
&nbsp;&nbsp;&nbsp;&nbsp;New-HSContact -Session &#39;mySession&#39; -Properties $props<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.LINK<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;https://developers.hubspot.com/docs/api/crm/contacts<BR />
&nbsp;&nbsp;&nbsp;&nbsp;#&gt;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>CmdletBinding</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>Param</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>(</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[object]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Session</span><span style='color:#A9A9A9'>,</span><span style='color:#000000'>&nbsp;</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[Object]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Properties</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>)</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>begin</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Session</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>|</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Get-HSSession</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$currentSession</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$instance</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Instance</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$personalaccesstoken</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>PersonalAccessToken</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$proxy</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Proxy</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$proxyCredential</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>ProxyCredential</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>process</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$body</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>properties</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Properties</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$apiEndpoint</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Get-HSApiEndpoint</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-ApiType</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;crm-contacts&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$queryParameters</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Set-HSQueryParameters</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-InputObject</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$PSBoundParameters</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-PersonalAccessToken</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$personalaccesstoken</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$setAPUriSplat</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Instance</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$instance</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ApiEndpoint</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$apiEndpoint</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Query</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$queryParameters</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[uri]</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$uri</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Set-HSUri</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>@setAPUriSplat</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$invokeAPRestMethodSplat</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Method</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;POST&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Uri</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$uri</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Body</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$body</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>FormatBody</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$true</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ContentType</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;application/json&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Proxy</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$proxy</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ProxyCredential</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$proxyCredential</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$results</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Invoke-HSRestMethod</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>@invokeAPRestMethodSplat</span><span style='color:#000000'>&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$results</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$results</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>end</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>}</span><br />
<span style='color:#006400'># New-HSContactBatch.ps1</span><br />
<span style='color:#00008B'>function</span><span style='color:#000000'>&nbsp;</span><span style='color:#8A2BE2'>New-HSContactBatch</span><br />
<span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#006400'>&lt;#<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.SYNOPSIS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Creates a batch of HubSpot contacts.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.DESCRIPTION<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Creates a batch of HS contacts with the given properties and returns a copy of the object, including the status.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Session<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;HubSpot session, created by New-HSSession.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER InputObject<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Array of contact properties.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.INPUTS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;None, does not support pipeline.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.OUTPUTS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;PSObject, HS contact.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.EXAMPLE<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Creates a contact with the provided properties.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;$inputs = @(<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@{<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;properties = @{<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;firstname = &#39;John&#39;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lastname  = &#39;Cena&#39;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;email     = &#39;youcantseeme@gmail.com&#39;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;},<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@{<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;properties = @{<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;firstname = &#39;Jack&#39;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lastname  = &#39;Black&#39;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;email     = &#39;rockinout@gmail.com&#39;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<BR />
&nbsp;&nbsp;&nbsp;&nbsp;)<BR />
&nbsp;&nbsp;&nbsp;&nbsp;New-HSContactBatch -Session $session -InputObject $inputs<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.LINK<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;https://developers.hubspot.com/docs/api/crm/contacts<BR />
&nbsp;&nbsp;&nbsp;&nbsp;#&gt;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>CmdletBinding</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>Param</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>(</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[object]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Session</span><span style='color:#A9A9A9'>,</span><span style='color:#000000'>&nbsp;</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[Object[]]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$InputObject</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>)</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>begin</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Session</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>|</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Get-HSSession</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$currentSession</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$instance</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Instance</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$personalaccesstoken</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>PersonalAccessToken</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$proxy</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Proxy</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$proxyCredential</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>ProxyCredential</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>process</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$body</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>inputs</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$InputObject</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$apiEndpoint</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Get-HSApiEndpoint</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-ApiType</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;crm-contacts-batch-create&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$queryParameters</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Set-HSQueryParameters</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-InputObject</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$PSBoundParameters</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-PersonalAccessToken</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$personalaccesstoken</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$setAPUriSplat</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Instance</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$instance</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ApiEndpoint</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$apiEndpoint</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Query</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$queryParameters</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[uri]</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$uri</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Set-HSUri</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>@setAPUriSplat</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$invokeAPRestMethodSplat</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Method</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;POST&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Uri</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$uri</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Body</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$body</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>FormatBody</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$true</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ContentType</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;application/json&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Proxy</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$proxy</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ProxyCredential</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$proxyCredential</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$results</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Invoke-HSRestMethod</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>@invokeAPRestMethodSplat</span><span style='color:#000000'>&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$results</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$results</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>end</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>}</span><br />
<span style='color:#006400'># New-HSDeal.ps1</span><br />
<span style='color:#00008B'>function</span><span style='color:#000000'>&nbsp;</span><span style='color:#8A2BE2'>New-HSDeal</span><br />
<span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#006400'>&lt;#<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.SYNOPSIS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Creates a HubSpot deal.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.DESCRIPTION<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Creates a deal with the given properties and returns a copy of the object, including the id.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Session<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;HubSpot session, created by New-HSSession.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Properties<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;The property object used to update the deal.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.INPUTS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;None, does not support pipeline.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.OUTPUTS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;PSObject, HS deal.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.EXAMPLE<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Creates a deal with the provided properties.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;$props = @{<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;firstname = &#39;John&#39;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lastname = &#39;Cena&#39;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;email = &#39;youcantseeme@gmail.com&#39;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;}<BR />
&nbsp;&nbsp;&nbsp;&nbsp;New-HSDeal -Session &#39;mySession&#39; -Properties $props<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.LINK<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;https://developers.hubspot.com/docs/api/crm/deals<BR />
&nbsp;&nbsp;&nbsp;&nbsp;#&gt;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>CmdletBinding</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>Param</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>(</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[object]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Session</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[Object]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Properties</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>)</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>begin</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Session</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>|</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Get-HSSession</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$currentSession</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$instance</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Instance</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$personalaccesstoken</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>PersonalAccessToken</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$proxy</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Proxy</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$proxyCredential</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>ProxyCredential</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>process</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$body</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>properties</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Properties</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$apiEndpoint</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Get-HSApiEndpoint</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-ApiType</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;crm-deals&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$queryParameters</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Set-HSQueryParameters</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-InputObject</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$PSBoundParameters</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-PersonalAccessToken</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$personalaccesstoken</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$setAPUriSplat</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Instance</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$instance</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ApiEndpoint</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$apiEndpoint</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Query</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$queryParameters</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[uri]</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$uri</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Set-HSUri</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>@setAPUriSplat</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$invokeAPRestMethodSplat</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Method</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;POST&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Uri</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$uri</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Body</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$body</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>FormatBody</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$true</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ContentType</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;application/json&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Proxy</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$proxy</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ProxyCredential</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$proxyCredential</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$results</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Invoke-HSRestMethod</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>@invokeAPRestMethodSplat</span><span style='color:#000000'>&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$results</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$results</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>end</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>}</span><br />
<span style='color:#006400'># New-HSDealAssociation.ps1</span><br />
<span style='color:#00008B'>function</span><span style='color:#000000'>&nbsp;</span><span style='color:#8A2BE2'>New-HSDealAssociation</span><br />
<span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#006400'>&lt;#<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.SYNOPSIS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Creates a HubSpot deal.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.DESCRIPTION<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Associate a deal with another object using the deal id.<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Identify the deal name with Get-HSDealList.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Session<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;HubSpot session, created by New-HSSession.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER DealId<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;The name of the deal.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER ToObjectType<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;CRM objects are defined by a primary type and a set of properties. Each type has a unique set of standard properties, represented by a map of name-value pairs.<BR />
&nbsp;&nbsp;&nbsp;&nbsp;- Contacts<BR />
&nbsp;&nbsp;&nbsp;&nbsp;- Companies<BR />
&nbsp;&nbsp;&nbsp;&nbsp;- Deals<BR />
&nbsp;&nbsp;&nbsp;&nbsp;- Tickets<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER ToObjectId<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;The target object id.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER AssociationType<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Associations represent the relationships between objects in the HubSpot CRM.<BR />
&nbsp;&nbsp;&nbsp;&nbsp;The CRM associations endpoints help manage and define those relationships, allowing you to create a more holistic picture of your customer interactions and improving your ability to market, sell, and serve.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.INPUTS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;None, does not support pipeline.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.OUTPUTS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;PSObject, HS deal.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.EXAMPLE<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Associate a deal with another object using the deal id.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.LINK<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;https://developers.hubspot.com/docs/api/crm/deals<BR />
&nbsp;&nbsp;&nbsp;&nbsp;#&gt;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>CmdletBinding</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>Param</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>(</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[object]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Session</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[string]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$DealId</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>ValidateSet</span><span style='color:#000000'>(</span><span style='color:#8B0000'>&#39;Contacts&#39;</span><span style='color:#A9A9A9'>,</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;Companies&#39;</span><span style='color:#A9A9A9'>,</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;Deals&#39;</span><span style='color:#A9A9A9'>,</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;Tickets&#39;</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[string]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$ToObjectType</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[string]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$ToObjectId</span><span style='color:#A9A9A9'>,</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>ValidateSet</span><span style='color:#000000'>(</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&#39;Contact_to_company&#39;</span><span style='color:#A9A9A9'>,</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&#39;Company_to_contact&#39;</span><span style='color:#A9A9A9'>,</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&#39;Deal_to_contact&#39;</span><span style='color:#A9A9A9'>,</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&#39;Contact_to_deal&#39;</span><span style='color:#A9A9A9'>,</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&#39;Deal_to_company&#39;</span><span style='color:#A9A9A9'>,</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&#39;Company_to_deal&#39;</span><span style='color:#A9A9A9'>,</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&#39;Company_to_engagement&#39;</span><span style='color:#A9A9A9'>,</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&#39;Engagement_to_company&#39;</span><span style='color:#A9A9A9'>,</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&#39;Contact_to_engagement&#39;</span><span style='color:#A9A9A9'>,</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&#39;Engagement_to_contact&#39;</span><span style='color:#A9A9A9'>,</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&#39;Deal_to_engagement&#39;</span><span style='color:#A9A9A9'>,</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&#39;Engagement_to_deal&#39;</span><span style='color:#A9A9A9'>,</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&#39;Parent_company_to_child_company&#39;</span><span style='color:#A9A9A9'>,</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&#39;Child_company_to_parent_company&#39;</span><span style='color:#A9A9A9'>,</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&#39;Contact_to_ticket&#39;</span><span style='color:#A9A9A9'>,</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&#39;Ticket_to_contact&#39;</span><span style='color:#A9A9A9'>,</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&#39;Ticket_to_engagement&#39;</span><span style='color:#A9A9A9'>,</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&#39;Engagement_to_ticket&#39;</span><span style='color:#A9A9A9'>,</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&#39;Deal_to_line_item&#39;</span><span style='color:#A9A9A9'>,</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&#39;Line_item_to_deal&#39;</span><span style='color:#A9A9A9'>,</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&#39;Company_to_ticket&#39;</span><span style='color:#A9A9A9'>,</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&#39;Ticket_to_company&#39;</span><span style='color:#A9A9A9'>,</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&#39;Deal_to_ticket&#39;</span><span style='color:#A9A9A9'>,</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&#39;Ticket_to_deal&#39;</span><span style='color:#A9A9A9'>,</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&#39;Advisor_to_company&#39;</span><span style='color:#A9A9A9'>,</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&#39;Company_to_advisor&#39;</span><span style='color:#A9A9A9'>,</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&#39;Board_member_to_company&#39;</span><span style='color:#A9A9A9'>,</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&#39;Company_to_board_member&#39;</span><span style='color:#A9A9A9'>,</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&#39;Contractor_to_company&#39;</span><span style='color:#A9A9A9'>,</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&#39;Company_to_contractor&#39;</span><span style='color:#A9A9A9'>,</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&#39;Manager_to_company&#39;</span><span style='color:#A9A9A9'>,</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&#39;Company_to_manager&#39;</span><span style='color:#A9A9A9'>,</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&#39;Business_owner_to_company&#39;</span><span style='color:#A9A9A9'>,</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&#39;Company_to_business_owner&#39;</span><span style='color:#A9A9A9'>,</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&#39;Partner_to_company&#39;</span><span style='color:#A9A9A9'>,</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&#39;Company_to_partner&#39;</span><span style='color:#A9A9A9'>,</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&#39;Reseller_to_company&#39;</span><span style='color:#A9A9A9'>,</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#8B0000'>&#39;Company_to_reseller&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[AssociationType]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$AssociationType</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>)</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>begin</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Session</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>|</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Get-HSSession</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$currentSession</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$instance</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Instance</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$personalaccesstoken</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>PersonalAccessToken</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$proxy</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Proxy</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$proxyCredential</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>ProxyCredential</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>process</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$PSBoundParameters</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>AssociationType</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#008080'>[AssociationType]</span><span style='color:#A9A9A9'>::</span><span style='color:#FF4500'>$AssociationType</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>value__</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$apiEndpoint</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#0000FF'>Get-HSApiEndpoint</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-ApiType</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;crm-deals-associationType&#39;</span><span style='color:#000000'>)</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>-f</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$DealId</span><span style='color:#A9A9A9'>,</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$ToObjectType</span><span style='color:#A9A9A9'>,</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$ToObjectId</span><span style='color:#A9A9A9'>,</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$AssociationType</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$queryParameters</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Set-HSQueryParameters</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-InputObject</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$PSBoundParameters</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-PersonalAccessToken</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$personalaccesstoken</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$setAPUriSplat</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Instance</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$instance</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ApiEndpoint</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$apiEndpoint</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Query</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$queryParameters</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[uri]</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$uri</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Set-HSUri</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>@setAPUriSplat</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$invokeAPRestMethodSplat</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Method</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;PUT&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Uri</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$uri</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ContentType</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;application/json&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Proxy</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$proxy</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ProxyCredential</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$proxyCredential</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$results</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Invoke-HSRestMethod</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>@invokeAPRestMethodSplat</span><span style='color:#000000'>&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$results</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$results</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>end</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>}</span><br />
<span style='color:#006400'># New-HSDealBatch.ps1</span><br />
<span style='color:#00008B'>function</span><span style='color:#000000'>&nbsp;</span><span style='color:#8A2BE2'>New-HSDealBatch</span><br />
<span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#006400'>&lt;#<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.SYNOPSIS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Creates a batch of HubSpot deals.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.DESCRIPTION<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Create a batch of deals. This follows the same rules as creating an individual deal.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Session<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;HubSpot session, created by New-HSSession.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER InputObject<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Array of deal properties.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.INPUTS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;None, does not support pipeline.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.OUTPUTS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;PSObject, HS deal.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.EXAMPLE<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Creates a deal with the provided properties.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;$inputs = @(<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@{<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;properties = @{<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;firstname = &#39;John&#39;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lastname  = &#39;Cena&#39;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;email     = &#39;youcantseeme@gmail.com&#39;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;},<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@{<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;properties = @{<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;firstname = &#39;Jack&#39;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lastname  = &#39;Black&#39;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;email     = &#39;rockinout@gmail.com&#39;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<BR />
&nbsp;&nbsp;&nbsp;&nbsp;)<BR />
&nbsp;&nbsp;&nbsp;&nbsp;New-HSDealBatch -Session $session -InputObject $inputs<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.LINK<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;https://developers.hubspot.com/docs/api/crm/deals<BR />
&nbsp;&nbsp;&nbsp;&nbsp;#&gt;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>CmdletBinding</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>Param</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>(</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[object]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Session</span><span style='color:#A9A9A9'>,</span><span style='color:#000000'>&nbsp;</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[Object[]]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$InputObject</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>)</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>begin</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Session</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>|</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Get-HSSession</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$currentSession</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$instance</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Instance</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$personalaccesstoken</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>PersonalAccessToken</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$proxy</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Proxy</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$proxyCredential</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>ProxyCredential</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>process</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$body</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>inputs</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$InputObject</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$apiEndpoint</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Get-HSApiEndpoint</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-ApiType</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;crm-deals-batch-create&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$queryParameters</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Set-HSQueryParameters</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-InputObject</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$PSBoundParameters</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-PersonalAccessToken</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$personalaccesstoken</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$setAPUriSplat</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Instance</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$instance</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ApiEndpoint</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$apiEndpoint</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Query</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$queryParameters</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[uri]</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$uri</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Set-HSUri</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>@setAPUriSplat</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$invokeAPRestMethodSplat</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Method</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;POST&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Uri</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$uri</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Body</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$body</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>FormatBody</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$true</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ContentType</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;application/json&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Proxy</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$proxy</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ProxyCredential</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$proxyCredential</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$results</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Invoke-HSRestMethod</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>@invokeAPRestMethodSplat</span><span style='color:#000000'>&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$results</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$results</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>end</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>}</span><br />
<span style='color:#006400'># New-HSProperty.ps1</span><br />
<span style='color:#00008B'>function</span><span style='color:#000000'>&nbsp;</span><span style='color:#8A2BE2'>New-HSProperty</span><br />
<span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#006400'>&lt;#<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.SYNOPSIS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Creates a HubSpot property.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.DESCRIPTION<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Creates a property with the given properties and returns a copy of the object, including the id.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Session<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;HubSpot session, created by New-HSSession.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER ObjectType<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;CRM objects are defined by a primary type and a set of properties. Each type has a unique set of standard properties, represented by a map of name-value pairs.<BR />
&nbsp;&nbsp;&nbsp;&nbsp;- Contacts<BR />
&nbsp;&nbsp;&nbsp;&nbsp;- Companies<BR />
&nbsp;&nbsp;&nbsp;&nbsp;- Deals<BR />
&nbsp;&nbsp;&nbsp;&nbsp;- Tickets<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Name<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;The internal property name, which must be used when referencing the property via the API.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Label<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;A human-readable property label that will be shown in HubSpot.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Type<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;The data type of the property.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER FieldType<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Controls how the property appears in HubSpot.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER GroupName<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;The name of the property group the property belongs to.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Description<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;A description of the property that will be shown as help text in HubSpot.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Options<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;A list of valid options for the property. This field is required for enumerated properties.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER DisplayOrder<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Properties are displayed in order starting with the lowest positive integer value. Values of -1 will cause the property to be displayed after any positive values.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER HasUniqueValue<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Whether or not the property&#39;s value must be unique. Once set, this can&#39;t be changed.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Hidden<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;If true, the property won&#39;t be visible and can&#39;t be used in HubSpot.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER FormField<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Whether or not the property can be used in a HubSpot form.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.INPUTS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;None, does not support pipeline.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.OUTPUTS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;PSObject, HS property.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.EXAMPLE<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Creates a property with the provided properties.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.LINK<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;https://developers.hubspot.com/docs/api/crm/properties<BR />
&nbsp;&nbsp;&nbsp;&nbsp;#&gt;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>CmdletBinding</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>Param</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>(</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[object]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Session</span><span style='color:#A9A9A9'>,</span><span style='color:#000000'>&nbsp;</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>ValidateSet</span><span style='color:#000000'>(</span><span style='color:#8B0000'>&#39;Contacts&#39;</span><span style='color:#A9A9A9'>,</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;Companies&#39;</span><span style='color:#A9A9A9'>,</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;Deals&#39;</span><span style='color:#A9A9A9'>,</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;Tickets&#39;</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[string]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$ObjectType</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[string]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Name</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[string]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Label</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>ValidateSet</span><span style='color:#000000'>(</span><span style='color:#8B0000'>&#39;string&#39;</span><span style='color:#A9A9A9'>,</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;number&#39;</span><span style='color:#A9A9A9'>,</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;date&#39;</span><span style='color:#A9A9A9'>,</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;datetime&#39;</span><span style='color:#A9A9A9'>,</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;enumeration&#39;</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[string]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Type</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>ValidateSet</span><span style='color:#000000'>(</span><span style='color:#8B0000'>&#39;testarea&#39;</span><span style='color:#A9A9A9'>,</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;text&#39;</span><span style='color:#A9A9A9'>,</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;date&#39;</span><span style='color:#A9A9A9'>,</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;file&#39;</span><span style='color:#A9A9A9'>,</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;number&#39;</span><span style='color:#A9A9A9'>,</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;select&#39;</span><span style='color:#A9A9A9'>,</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;radio&#39;</span><span style='color:#A9A9A9'>,</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;checkbox&#39;</span><span style='color:#A9A9A9'>,</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;booleancheckbox&#39;</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[string]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$FieldType</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[string]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$GroupName</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[string]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Description</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[object[]]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Options</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[int]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$DisplayOrder</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[bool]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$HasUniqueValue</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[bool]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Hidden</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[bool]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$FormField</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>)</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>begin</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Session</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>|</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Get-HSSession</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$currentSession</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$instance</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Instance</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$personalaccesstoken</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>PersonalAccessToken</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$proxy</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Proxy</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$proxyCredential</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>ProxyCredential</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>process</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$body</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>name</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Name</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>ToLower</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>groupName</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$GroupName</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>hidden</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Hidden</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>displayOrder</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$DisplayOrder</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>options</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Options</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>label</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Label</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>hasUniqueValue</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$HasUniqueValue</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>type</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Type</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>fieldType</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$FieldType</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>formField</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$FormField</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$apiEndpoint</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#0000FF'>Get-HSApiEndpoint</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-ApiType</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;crm-properties-objectType&#39;</span><span style='color:#000000'>)</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>-f</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$ObjectType</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$queryParameters</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Set-HSQueryParameters</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-InputObject</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$PSBoundParameters</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-PersonalAccessToken</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$personalaccesstoken</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$setAPUriSplat</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Instance</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$instance</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ApiEndpoint</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$apiEndpoint</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Query</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$queryParameters</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[uri]</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$uri</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Set-HSUri</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>@setAPUriSplat</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$invokeAPRestMethodSplat</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Method</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;POST&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Uri</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$uri</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Body</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$body</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ContentType</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;application/json&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Proxy</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$proxy</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ProxyCredential</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$proxyCredential</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$results</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Invoke-HSRestMethod</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>@invokeAPRestMethodSplat</span><span style='color:#000000'>&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$results</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$results</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>end</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>}</span><br />
<span style='color:#006400'># New-HSSession.ps1</span><br />
<span style='color:#00008B'>Function</span><span style='color:#000000'>&nbsp;</span><span style='color:#8A2BE2'>New-HSSession</span><br />
<span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#006400'>&lt;#<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.SYNOPSIS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Creates a HubSpot session.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.DESCRIPTION<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Creates a HubSpot session.<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Use Save-HSSession to persist the session data to disk.<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Save the session to a variable to pass the session to other functions.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER SessionName<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;The name of the session.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Instance<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;The HubSpot api instance.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER PersonalAccessToken<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Specifies a user account that has permission to send the request.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Proxy<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Use a proxy server for the request, rather than connecting directly to the Internet resource. Enter the URI of a network proxy server.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER ProxyCredential<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Specifie a user account that has permission to use the proxy server that is specified by the -Proxy parameter. The default is the current user.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Session<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;HubSpot session, created by New-HSSession.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Path<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;The path where module data will be stored, defaults to $Script:ModuleDataPath.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.LINK<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Save-HSSession<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Remove-HSSession<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.INPUTS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;None, does not support pipeline.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.OUTPUTS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;PSObject. New-HSSession returns a PSObject.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.EXAMPLE<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;#&gt;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>CmdletBinding</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>Param</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>(</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[string]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$SessionName</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[uri]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Instance</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[string]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$PersonalAccessToken</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[string]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Proxy</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[pscredential]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$ProxyCredential</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>Process</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[int]</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$_sessionIdcount</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#0000FF'>Get-HSSession</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-ErrorAction</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;SilentlyContinue&#39;</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>|</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Sort-Object</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-Property</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;Id&#39;</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>|</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Select-Object</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-Last</span><span style='color:#000000'>&nbsp;</span><span style='color:#800080'>1</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-ExpandProperty</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;Id&#39;</span><span style='color:#000000'>)</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>+</span><span style='color:#000000'>&nbsp;</span><span style='color:#800080'>1</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$_session</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>New-Object</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-TypeName</span><span style='color:#000000'>&nbsp;</span><span style='color:#8A2BE2'>PSCustomObject</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-Property</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>SessionName</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$SessionName</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Instance</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Instance</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>PersonalAccessToken</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$PersonalAccessToken</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>|</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>ConvertTo-SecureString</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-AsPlainText</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-Force</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Id</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$_sessionIdcount</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$Proxy</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$_session</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>|</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Add-Member</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-NotePropertyName</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;Proxy&#39;</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-NotePropertyValue</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Proxy</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$ProxyCredential</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$_session</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>|</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Add-Member</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-NotePropertyName</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;ProxyCredential&#39;</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-NotePropertyValue</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$ProxyCredential</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$null</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>-eq</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Global:_HSSessions</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Global:_HSSessions</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@(</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Global:_HSSessions</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>+=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$_session</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>Return</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$_session</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>}</span><br />
<br />
<span style='color:#006400'># Remove-HSContact.ps1</span><br />
<span style='color:#00008B'>function</span><span style='color:#000000'>&nbsp;</span><span style='color:#8A2BE2'>Remove-HSContact</span><br />
<span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#006400'>&lt;#<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.SYNOPSIS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Removes a HubSpot contact.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.DESCRIPTION<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Moves a contact identified by contactId to the recycling bin.<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Identify the contact id with Remove-HSContactList.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Session<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;HubSpot session, created by New-HSSession.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER ContactId<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;The id of the contact.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.INPUTS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;None, does not support pipeline.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.OUTPUTS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;PSObject, HS contact.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.EXAMPLE<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Removes a contact with the id of 7.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Remove-HSContact -Session &#39;mySession&#39; -ContactId &#39;7&#39;<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.LINK<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;https://developers.hubspot.com/docs/api/crm/contacts<BR />
&nbsp;&nbsp;&nbsp;&nbsp;#&gt;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>CmdletBinding</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>Param</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>(</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[object]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Session</span><span style='color:#A9A9A9'>,</span><span style='color:#000000'>&nbsp;</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[string]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$ContactId</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>)</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>begin</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Session</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>|</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Get-HSSession</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$currentSession</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$instance</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Instance</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$personalaccesstoken</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>PersonalAccessToken</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$proxy</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Proxy</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$proxyCredential</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>ProxyCredential</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>process</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$apiEndpoint</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#0000FF'>Get-HSApiEndpoint</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-ApiType</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;crm-contactId&#39;</span><span style='color:#000000'>)</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>-f</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$ContactId</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$queryParameters</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Set-HSQueryParameters</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-InputObject</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$PSBoundParameters</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-PersonalAccessToken</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$personalaccesstoken</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$setAPUriSplat</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Instance</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$instance</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ApiEndpoint</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$apiEndpoint</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Query</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$queryParameters</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[uri]</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$uri</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Set-HSUri</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>@setAPUriSplat</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$invokeAPRestMethodSplat</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Method</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;DELETE&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Uri</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$uri</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ContentType</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;application/json&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Proxy</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$proxy</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ProxyCredential</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$proxyCredential</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$results</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Invoke-HSRestMethod</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>@invokeAPRestMethodSplat</span><span style='color:#000000'>&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$results</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$results</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>end</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>}</span><br />
<span style='color:#006400'># Remove-HSDeal.ps1</span><br />
<span style='color:#00008B'>function</span><span style='color:#000000'>&nbsp;</span><span style='color:#8A2BE2'>Remove-HSDeal</span><br />
<span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#006400'>&lt;#<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.SYNOPSIS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Removes a HubSpot deal.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.DESCRIPTION<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Moves a deal identified by dealId to the recycling bin.<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Identify the deal id with Remove-HSDealList.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Session<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;HubSpot session, created by New-HSSession.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER DealId<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;The id of the deal.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.INPUTS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;None, does not support pipeline.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.OUTPUTS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;PSObject, HS deal.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.EXAMPLE<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Removes a deal with the id of 7.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Remove-HSDeal -Session &#39;mySession&#39; -DealId &#39;7&#39;<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.LINK<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;https://developers.hubspot.com/docs/api/crm/deals<BR />
&nbsp;&nbsp;&nbsp;&nbsp;#&gt;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>CmdletBinding</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>Param</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>(</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[object]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Session</span><span style='color:#A9A9A9'>,</span><span style='color:#000000'>&nbsp;</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[string]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$DealId</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>)</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>begin</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Session</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>|</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Get-HSSession</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$currentSession</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$instance</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Instance</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$personalaccesstoken</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>PersonalAccessToken</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$proxy</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Proxy</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$proxyCredential</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>ProxyCredential</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>process</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$apiEndpoint</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#0000FF'>Get-HSApiEndpoint</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-ApiType</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;crm-dealId&#39;</span><span style='color:#000000'>)</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>-f</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$DealId</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$queryParameters</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Set-HSQueryParameters</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-InputObject</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$PSBoundParameters</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-PersonalAccessToken</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$personalaccesstoken</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$setAPUriSplat</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Instance</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$instance</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ApiEndpoint</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$apiEndpoint</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Query</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$queryParameters</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[uri]</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$uri</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Set-HSUri</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>@setAPUriSplat</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$invokeAPRestMethodSplat</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Method</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;DELETE&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Uri</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$uri</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ContentType</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;application/json&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Proxy</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$proxy</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ProxyCredential</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$proxyCredential</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$results</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Invoke-HSRestMethod</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>@invokeAPRestMethodSplat</span><span style='color:#000000'>&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$results</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$results</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>end</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>}</span><br />
<span style='color:#006400'># Remove-HSSession.ps1</span><br />
<span style='color:#00008B'>Function</span><span style='color:#000000'>&nbsp;</span><span style='color:#8A2BE2'>Remove-HSSession</span><br />
<span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#006400'>&lt;#<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.SYNOPSIS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Removes a HubSpot session.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.DESCRIPTION<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Removes a HubSpot session.<BR />
&nbsp;&nbsp;&nbsp;&nbsp;If the session is saved, it will be removed from the saved sessions as well.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Id<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Session id.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Path<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;The path where session data will be stored, defaults to $Script:ModuleDataPath.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.LINK<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Save-HSSession<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Remove-HSSession<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.INPUTS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;PSObject. Get-HSSession<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.OUTPUTS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;None. Does not supply output.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.EXAMPLE<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Deletes AP session with the id of &#39;2&#39;.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Remove-HSSession -Id 2<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.EXAMPLE<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Deletes all AP sessions in memory and stored on disk.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Remove-HSSession<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;#&gt;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>CmdletBinding</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>Param</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>(</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#A9A9A9'>,</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ValueFromPipelineByPropertyName</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[int]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Id</span><span style='color:#A9A9A9'>,</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[string]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Path</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Script:ModuleDataPath</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>Process</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$sessions</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Get-HSSession</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-Id</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Id</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>Foreach</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$session</span><span style='color:#000000'>&nbsp;</span><span style='color:#00008B'>in</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$sessions</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$session</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Saved</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>-eq</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$true</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$newData</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@{</span><span style='color:#000000'>SessionData</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@(</span><span style='color:#000000'>)</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$data</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Get-Content</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-Path</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Path</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-Raw</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>|</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>ConvertFrom-Json</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>Foreach</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$_data</span><span style='color:#000000'>&nbsp;</span><span style='color:#00008B'>in</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$data</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>SessionData</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$_data</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Id</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>-eq</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$session</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Id</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>Continue</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>else</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$newData</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>SessionData</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>+=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$_data</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$newData</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>|</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>ConvertTo-Json</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-Depth</span><span style='color:#000000'>&nbsp;</span><span style='color:#800080'>5</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>|</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Out-File</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-FilePath</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Path</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[array]</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Global:_HSSessions</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Global:_HSSessions</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>|</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Where-Object</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>{</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$PSItem</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Id</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>-ne</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$session</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Id</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>}</span><br />
<span style='color:#006400'># Save-HSSession.ps1</span><br />
<span style='color:#00008B'>Function</span><span style='color:#000000'>&nbsp;</span><span style='color:#8A2BE2'>Save-HSSession</span><br />
<span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#006400'>&lt;#<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.SYNOPSIS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Saves an HubSpot PS session to disk.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.DESCRIPTION<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Saves an HubSpot PS session to disk.<BR />
&nbsp;&nbsp;&nbsp;&nbsp;The sensetive data is encrypted and stored in the users local application data.<BR />
&nbsp;&nbsp;&nbsp;&nbsp;These saved sessions will be available next time the module is imported. <BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Session<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;HubSpotPS session, created by New-HSSession.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Path<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;The path where session data will be stored, defaults to $Script:ModuleDataPath.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER PassThru<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Returns the saved session object.<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.INPUTS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;PSbject. Get-HSSession, New-HSSession<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.OUTPUTS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;None. Save-HSSession does not generate any output.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.EXAMPLE<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;#&gt;</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>CmdletBinding</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>Param</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>(</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#A9A9A9'>,</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ValueFromPipeline</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[object]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Session</span><span style='color:#A9A9A9'>,</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[string]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Path</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Script:ModuleDataPath</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>Begin</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#A9A9A9'>-not</span><span style='color:#000000'>(</span><span style='color:#0000FF'>Test-Path</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Path</span><span style='color:#000000'>)</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$data</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@{</span><span style='color:#000000'>SessionData</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@(</span><span style='color:#000000'>)</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>else</span><span style='color:#000000'>&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$data</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Get-Content</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-Path</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Path</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-Raw</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>|</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>ConvertFrom-Json</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>Process</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$data</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>SessionData</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Id</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>-notcontains</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$session</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Id</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$_object</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Version</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Session</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Version</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ApiVersion</span><span style='color:#000000'>&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Session</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>ApiVersion</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Instance</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Session</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Instance</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Id</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Session</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Id</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>SessionName</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Session</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>SessionName</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Collection</span><span style='color:#000000'>&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Session</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Collection</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Project</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Session</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Project</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Saved</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$true</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$Session</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>PersonalAccessToken</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$_object</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>PersonalAccessToken</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$Session</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>PersonalAccessToken</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>|</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>ConvertFrom-SecureString</span><span style='color:#000000'>)</span><span style='color:#000000'>&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$Session</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Credential</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$_credentialObject</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Username</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Session</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Credential</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>UserName</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Password</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$Session</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Credential</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>GetNetworkCredential</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>SecurePassword</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>|</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>ConvertFrom-SecureString</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$_object</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Credential</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$_credentialObject</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$Session</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Proxy</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$_object</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Proxy</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Session</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Proxy</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$Session</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>ProxyCredential</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$_proxyCredentialObject</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Username</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Session</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>ProxyCredential</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>UserName</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Password</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$Session</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>ProxyCredential</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>GetNetworkCredential</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>SecurePassword</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>|</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>ConvertFrom-SecureString</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$_object</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>ProxyCredential</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$_proxyCredentialObject</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$data</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>SessionData</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>+=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$_object</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$session</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>|</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Remove-HSSession</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-Path</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Path</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>End</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$data</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>|</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>ConvertTo-Json</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-Depth</span><span style='color:#000000'>&nbsp;</span><span style='color:#800080'>5</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>|</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Out-File</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-FilePath</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Path</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#0000FF'>Write-Verbose</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&quot;[$($MyInvocation.MyCommand.Name)]: [$SessionName]: Session data has been stored at [$Path]&quot;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>}</span><br />
<br />
<span style='color:#006400'># Update-HSContact.ps1</span><br />
<span style='color:#00008B'>function</span><span style='color:#000000'>&nbsp;</span><span style='color:#8A2BE2'>Update-HSContact</span><br />
<span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#006400'>&lt;#<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.SYNOPSIS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Updates a HubSpot contact to the data provided by contact id.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.DESCRIPTION<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Perform a partial update of an Object identified by contactId. <BR />
&nbsp;&nbsp;&nbsp;&nbsp;Identify the contactId with Get-HSContactList.<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Provided property values will be overwritten. <BR />
&nbsp;&nbsp;&nbsp;&nbsp;Read-only and non-existent properties will be ignored. <BR />
&nbsp;&nbsp;&nbsp;&nbsp;Properties values can be cleared by passing an empty string.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Session<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;HubSpot session, created by New-HSSession.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER ContactId<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;The id of the contact.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Properties<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;The property object used to update the contact.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.INPUTS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;None, does not support pipeline.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.OUTPUTS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;PSObject, HS contact.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.EXAMPLE<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Updates the contact properties for the contact with the id of 7.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;$props = @{<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;firstname = &#39;John&#39;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lastname = &#39;Cena&#39;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;email = &#39;youcantseeme@gmail.com<BR />
&nbsp;&nbsp;&nbsp;&nbsp;}<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Update-HSContact -Session &#39;mySession&#39; -ContactId &#39;7&#39; -Properties $props<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.LINK<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;https://developers.hubspot.com/docs/api/crm/contacts<BR />
&nbsp;&nbsp;&nbsp;&nbsp;#&gt;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>CmdletBinding</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>Param</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>(</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[object]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Session</span><span style='color:#A9A9A9'>,</span><span style='color:#000000'>&nbsp;</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[string]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$ContactId</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[Object]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Properties</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>)</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>begin</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Session</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>|</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Get-HSSession</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$currentSession</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$instance</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Instance</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$personalaccesstoken</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>PersonalAccessToken</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$proxy</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Proxy</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$proxyCredential</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>ProxyCredential</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>process</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$body</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>properties</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Properties</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$apiEndpoint</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#0000FF'>Get-HSApiEndpoint</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-ApiType</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;crm-contactId&#39;</span><span style='color:#000000'>)</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>-f</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$ContactId</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$queryParameters</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Set-HSQueryParameters</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-InputObject</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$PSBoundParameters</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-PersonalAccessToken</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$personalaccesstoken</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$setAPUriSplat</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Instance</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$instance</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ApiEndpoint</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$apiEndpoint</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Query</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$queryParameters</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[uri]</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$uri</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Set-HSUri</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>@setAPUriSplat</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$invokeAPRestMethodSplat</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Method</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;PATCH&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Uri</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$uri</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Body</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$body</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>FormatBody</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$true</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ContentType</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;application/json&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Proxy</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$proxy</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ProxyCredential</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$proxyCredential</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$results</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Invoke-HSRestMethod</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>@invokeAPRestMethodSplat</span><span style='color:#000000'>&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$results</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$results</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>end</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>}</span><br />
<span style='color:#006400'># Update-HSDeal.ps1</span><br />
<span style='color:#00008B'>function</span><span style='color:#000000'>&nbsp;</span><span style='color:#8A2BE2'>Update-HSDeal</span><br />
<span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#006400'>&lt;#<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.SYNOPSIS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Updates a HubSpot deal to the data provided by deal id.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.DESCRIPTION<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Perform a partial update of an Object identified by dealId. <BR />
&nbsp;&nbsp;&nbsp;&nbsp;Identify the dealId with Get-HSDealList.<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Provided property values will be overwritten. <BR />
&nbsp;&nbsp;&nbsp;&nbsp;Read-only and non-existent properties will be ignored. <BR />
&nbsp;&nbsp;&nbsp;&nbsp;Properties values can be cleared by passing an empty string.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Session<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;HubSpot session, created by New-HSSession.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER DealId<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;The id of the deal.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Properties<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;The property object used to update the deal.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.INPUTS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;None, does not support pipeline.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.OUTPUTS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;PSObject, HS deal.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.EXAMPLE<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Updates the deal properties for the deal with the id of 7.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;$props = @{<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;firstname = &#39;John&#39;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lastname = &#39;Cena&#39;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;email = &#39;youcantseeme@gmail.com<BR />
&nbsp;&nbsp;&nbsp;&nbsp;}<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Update-HSDeal -Session &#39;mySession&#39; -DealId &#39;7&#39; -Properties $props<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.LINK<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;https://developers.hubspot.com/docs/api/crm/deals<BR />
&nbsp;&nbsp;&nbsp;&nbsp;#&gt;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>CmdletBinding</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>Param</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>(</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[object]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Session</span><span style='color:#A9A9A9'>,</span><span style='color:#000000'>&nbsp;</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[string]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$DealId</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[Object]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Properties</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>)</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>begin</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Session</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>|</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Get-HSSession</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$currentSession</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$instance</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Instance</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$personalaccesstoken</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>PersonalAccessToken</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$proxy</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Proxy</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$proxyCredential</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$currentSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>ProxyCredential</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>process</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$body</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>properties</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Properties</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$apiEndpoint</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#0000FF'>Get-HSApiEndpoint</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-ApiType</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;crm-dealId&#39;</span><span style='color:#000000'>)</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>-f</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$DealId</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$queryParameters</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Set-HSQueryParameters</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-InputObject</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$PSBoundParameters</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-PersonalAccessToken</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$personalaccesstoken</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$setAPUriSplat</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Instance</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$instance</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ApiEndpoint</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$apiEndpoint</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Query</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$queryParameters</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[uri]</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$uri</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Set-HSUri</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>@setAPUriSplat</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$invokeAPRestMethodSplat</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Method</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;PATCH&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Uri</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$uri</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Body</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$body</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>FormatBody</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$true</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ContentType</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;application/json&#39;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Proxy</span><span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$proxy</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>ProxyCredential</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$proxyCredential</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$results</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Invoke-HSRestMethod</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>@invokeAPRestMethodSplat</span><span style='color:#000000'>&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$results</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$results</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>end</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>}</span><br />
<span style='color:#006400'># Update-HSSession.ps1</span><br />
<span style='color:#00008B'>Function</span><span style='color:#000000'>&nbsp;</span><span style='color:#8A2BE2'>Update-HSSession</span><br />
<span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#006400'>&lt;#<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.SYNOPSIS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Updates an HubSpotPS session.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.DESCRIPTION<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Updates an HubSpotPS session.<BR />
&nbsp;&nbsp;&nbsp;&nbsp;The sensetive data is encrypted and stored in the users local application data.<BR />
&nbsp;&nbsp;&nbsp;&nbsp;These updated sessions are available immediately.<BR />
&nbsp;&nbsp;&nbsp;&nbsp;If the session was previously saved is will remain saved.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER SessionName<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;The friendly name of the session.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Id <BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;The id of the session.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Instance<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;The Team Services account or TFS server.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER PersonalAccessToken<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Personal access token used to authenticate that has been converted to a secure string. <BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Credential<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Specifies a user account that has permission to the project.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Version<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;TFS version, this will provide the module with the api version mappings. <BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER ApiVersion<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Version of the api to use.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Proxy<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Use a proxy server for the request, rather than connecting directly to the Internet resource. Enter the URI of a network proxy server.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER ProxyCredential<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Specifie a user account that has permission to use the proxy server that is specified by the -Proxy parameter. The default is the current user.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.PARAMETER Path<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;The path where module data will be stored, defaults to $Script:ModuleDataPath.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.INPUTS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;PSbject. Get-HSSession, New-HSSession<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.OUTPUTS<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;None. Update-HSSession does not generate any output.<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;.EXAMPLE<BR />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Updates the AP session named &#39;myFirstSession&#39; with the api version of &#39;6.0-preview.1&#39;<BR />
&nbsp;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;Update-HSSession -SessionName &#39;myFirstSession&#39; -HSiVersion &#39;6.0-preview.1&#39;<BR />
&nbsp;&nbsp;&nbsp;&nbsp;#&gt;</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>CmdletBinding</span><span style='color:#000000'>(</span><span style='color:#000000'>DefaultParameterSetName</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;ByPersonalAccessToken&#39;</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>Param</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>(</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[string]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$SessionName</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[string]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Id</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[uri]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Instance</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>ParameterSetName</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;ByPersonalAccessToken&#39;</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[string]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$PersonalAccessToken</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>ParameterSetName</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;ByCredential&#39;</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[pscredential]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Credential</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[string]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Proxy</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[pscredential]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$ProxyCredential</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>Parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[string]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Path</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Script:ModuleDataPath</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>Begin</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>Process</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$getLSSessionSplat</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>SessionName</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$SessionName</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$Id</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$getLSSessionSplat</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Id</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Id</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$existingSessions</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Get-HSSession</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>@getLSSessionSplat</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$existingSessions</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>Foreach</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$existingSession</span><span style='color:#000000'>&nbsp;</span><span style='color:#00008B'>in</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$existingSessions</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$newLSSessionSplat</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>SessionName</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$SessionName</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$Instance</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$newLSSessionSplat</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Instance</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Instance</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>else</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$existingSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Instance</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$newLSSessionSplat</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Instance</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$existingSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Instance</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$PersonalAccessToken</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$newLSSessionSplat</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>PersonalAccessToken</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$PersonalAccessToken</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>else</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$existingSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>PersonalAccessToken</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$newLSSessionSplat</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>PersonalAccessToken</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#0000FF'>Unprotect-HSSecurePersonalAccessToken</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-PersonalAccessToken</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$existingSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>PersonalAccessToken</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$Credential</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$_credentialObject</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Username</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Session</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Credential</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>UserName</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Password</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$Session</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Credential</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>GetNetworkCredential</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>SecurePassword</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>|</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>ConvertFrom-SecureString</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$newLSSessionSplat</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Credential</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$_credentialObject</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>else</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$existingSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Credential</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$newLSSessionSplat</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Credential</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$existingSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Credential</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$Proxy</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$newLSSessionSplat</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Proxy</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Session</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Proxy</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>else</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$existingSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Proxy</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$newLSSessionSplat</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Proxy</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$existingSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Proxy</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$ProxyCredential</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$_proxyCredentialObject</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Username</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Session</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>ProxyCredential</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>UserName</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>Password</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$Session</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>ProxyCredential</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>GetNetworkCredential</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>SecurePassword</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>|</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>ConvertFrom-SecureString</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$newLSSessionSplat</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>ProxyCredential</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$_proxyCredentialObject</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>else</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$existingSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>ProxyCredential</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$newLSSessionSplat</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>ProxyCredential</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$existingSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>ProxyCredential</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>If</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$existingSession</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Saved</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$existingSession</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>|</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Remove-HSSession</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-Path</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Path</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$session</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>New-HSSession</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>@newLSSessionSplat</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>|</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Save-HSSession</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>else</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$existingSession</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>|</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Remove-HSSession</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-Path</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Path</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$session</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>New-HSSession</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>@newLSSessionSplat</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>else</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#0000FF'>Write-Error</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&quot;[$($MyInvocation.MyCommand.Name)]: Unable to locate an AP session with the name [$SessionName].&quot;</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-ErrorAction</span><span style='color:#000000'>&nbsp;</span><span style='color:#8A2BE2'>Stop</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>End</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>}</span><br />
<br />
<span style='color:#006400'># Imported from [D:\a\1\s\HubSpotPS\Tests]</span><br />
<br />

                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
    </div>
    <footer class="footer">
    <div class="container footer-container" >
        <div class="row">
            <div class="hidden-xs footer-heading">
            </div>
        </div>
        <div class="row">
            <div class="col-sm-offset-1 col-sm-1 footer-heading">
                <span><a href="/policies/Contact">Contact Us</a></span>
            </div>
            <div class="col-sm-1 footer-heading">
                <span><a href="/policies/Terms">Terms of Use</a></span>
            </div>
            <div class="col-sm-1 footer-heading">
                <span><a href="https://go.microsoft.com/fwlink/?LinkId=521839">Privacy Policy</a></span>
            </div>
            <div class="col-sm-1 footer-heading">
                <span><a href="https://aka.ms/psgallery-status/">Gallery Status</a></span>
            </div>
            <div class="col-sm-1 footer-heading">
                <span><a href="https://github.com/PowerShell/PowerShellGallery/issues">Feedback</a></span>
            </div>
            <div class="col-sm-1 footer-heading">
                <span><a href="https://aka.ms/PSGalleryPreviewFAQ">FAQs</a></span>
            </div>
            <div class="col-sm-4 footer-heading">
                <span class="footer-heading-last">&copy; 2021 Microsoft Corporation</span>
            </div>
        </div>  
    </div>
</footer>

    <script src="/Scripts/gallery/site.min.js?v=yowUC4LjtuEDFqBbt8mrSvw5D4Wp7o0dyNkck0RyrPs1"></script>

    
</body>
</html>
