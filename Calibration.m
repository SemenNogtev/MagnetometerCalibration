%% Калибровка магнитометра
clear;

%% Данные (измерения датчика), вращение магнитометра вокруг всех 3-х осей
xyz = [
-73      -436      -808      
-101      -462      -797      
-117      -450      -806      
-52      -460      -816      
15      -431      -833      
85      -343      -821      
150      -251      -818      
117      -180      -821      
150      21      -757      
185      82      -738      
180      227      -692      
202      341      -690      
152      417      -695      
92      502      -687      
47      563      -707      
-68      635      -716      
-188      706      -723      
-247      742      -723      
-356      756      -738      
-508      756      -767      
-607      682      -833      
-788      563      -888      
-911      420      -970      
-981      328      -996      
-1068      182      -1008      
-1133      63      -1016      
-1177      -143      -1040      
-1117      -410      -1062      
-1080      -518      -1073      
-930      -653      -1068      
-810      -735      -1047      
-723      -846      -947      
-515      -817      -916      
-395      -801      -847      
-267      -737      -821      
-150      -673      -821      
-25      -566      -841      
-3      -500      -838      
17      -426      -860      
96      -357      -865      
110      -260      -867      
156      -198      -845      
158      -185      -852      
77      -293      -860      
38      -428      -860      
-68      -581      -836      
-242      -713      -831      
-390      -792      -872      
-536      -817      -898      
-742      -780      -947      
-846      -796      -991      
-1003      -671      -1035      
-1245      -500      -1030      
-1133      -203      -1140      
-1120      82      -1088      
-948      362      -1027      
-897      547      -942      
-795      703      -823      
-728      785      -760      
-555      803      -770      
-402      851      -731      
-283      817      -736      
-161      772      -748      
-61      725      -757      
61      663      -738      
147      581      -748      
217      523      -736      
283      412      -748      
330      312      -753      
351      177      -757      
330      30      -772      
281      -165      -818      
210      -253      -843      
175      -355      -850      
138      -431      -872      
73      -433      -906      
96      -423      -921      
87      -376      -933      
117      -227      -921      
122      -111      -935      
110      -16      -906      
108      122      -872      
90      212      -808      
115      352      -751      
115      478      -661      
115      592      -573      
123      732      -432      
136      801      -337      
120      896      -175      
126      957      -62      
128      1025      147      
108      1038      293      
101      1033      495      
90      1022      633      
77      980      721      
90      898      841      
120      798      950      
168      653      1050      
168      468      1152      
191      280      1173      
188      37      1168      
202      -208      1103      
180      -388      1016      
180      -616      862      
172      -806      672      
180      -948      430      
177      -1046      142      
158      -1070      -57      
138      -1060      -235      
108      -1005      -420      
98      -912      -587      
82      -748      -755      
66      -600      -838      
15      -468      -880      
3      -415      -885      
1      -415      -872      
0      -602      -818      
13      -775      -728      
6      -901      -615      
-6      -1010      -448      
3      -1088      -165      
38      -1093      77      
92      -1051      298      
131      -948      517      
163      -820      713      
175      -611      921      
172      -355      1106      
120      21      1237      
73      331      1256      
36      526      1217      
-1      756      1098      
-15      912      928      
0      991      751      
-3      1055      582      
0      1070      388      
11      1036      165      
17      965      -16      
13      877      -178      
71      735      -376      
101      537      -561      
136      378      -685      
150      225      -765      
136      -3      -860      
112      -165      -885      
112      -378      -885      
55      -486      -877      
43      -495      -885      
108      -552      -850      
267      -690      -762      
425      -775      -605      
617      -761      -371      
765      -697      -80      
832      -595      235      
826      -481      527      
778      -370      765      
707      -298      940      
590      -148      1115      
527      -51      1212      
360      143      1371      
172      355      1490      
-77      571      1543      
-267      808      1487      
-408      1060      1327      
-531      1242      1103      
-628      1295      967      
-732      1323      777      
-821      1318      628      
-881      1290      386      
-895      1260      271      
-856      1205      3      
-810      1076      -273      
-756      975      -435      
-661      835      -590      
-515      671      -736      
-376      497      -838      
-270      372      -882      
-212      243      -901      
-150      153      -882      
-82      46      -891      
-13      -103      -901      
13      -170      -875      
50      -298      -828      
43      -445      -792      
50      -465      -785      
46      -488      -775      
63      -492      -775      
152      -410      -782      
300      -310      -765      
460      -180      -711      
622      -68      -610      
756      51      -435      
881      98      -222      
941      75      -43      
982      51      147      
952      46      398      
881      46      582      
837      13      707      
745      -85      818      
731      -177      860      
555      -338      977      
406      -561      940      
343      -787      800      
201      -1020      585      
82      -1207      268      
8      -1292      -175      
-27      -1237      -483      
-60      -1102      -721      
-22      -906      -911      
50      -775      -908      
122      -632      -896      
171      -531      -843      
188      -521      -833      
186      -476      -860      
175      -452      -867      
96      -423      -885      
-13      -348      -942      
-57      -146      -1001      
-145      125      -1022      
-293      420      -955      
-378      742      -806      
-522      1048      -600      
-626      1236      -417      
-835      1408      -80      
-846      1551      471      
-598      1558      918      
-286      1368      1320      
-27      1168      1451      
47      1043      1528      
193      706      1592      
277      552      1553      
471      167      1412      
712      -161      1120      
805      -571      666      
775      -811      252      
677      -911      -31      
568      -957      -242      
390      -946      -507      
172      -846      -702      
22      -723      -797      
-101      -502      -845      
-198      -436      -831      
-198      -523      -797      
-258      -725      -723      
-297      -885      -612      
-370      -1001      -536      
-525      -1041      -488      
-498      -1046      -561      
-311      -980      -757      
-101      -856      -921      
310      -801      -823      
593      -772      -585      
888      -561      -213      
965      -423      -1      
976      -288      293      
906      -232      571      
818      -161      728      
668      -201      862      
438      -291      1003      
297      -256      1093      
117      -291      1120      
27      -407      1068      
-47      -552      967      
-136      -645      906      
-201      -770      821      
-305      -951      628      
-370      -1083      378      
-353      -1171      28      
-296      -1157      -311      
-221      -1027      -605      
-101      -780      -852      
-15      -613      -918      
15      -761      -816      
-31      -975      -585      
-41      -1126      -91      
-66      -877      620      
-41      -578      937      
17      -162      1132      
1      241      1205      
-85      630      1083      
-128      956      646      
-152      941      175      
-193      747      -203      
-92      397      -636      
22      -8      -845      
163      -465      -831      
280      -953      -478      
330      -1078      98      
161      -1078      461      
120      -1255      170      
265      -1323      -213      
446      -1181      -561      
603      -1012      -721      
623      -946      -813      
731      -725      -865      
856      -462      -865      
941      -338      -777      
998      -260      -661      
1115      -93      -420      
1142      -130      -198      
1133      -220      13      
1063      -328      150      
976      -462      265      
857      -592      325      
682      -737      332      
531      -813      398      
342      -777      580      
188      -563      843      
76      -325      988      
-61      85      1108      
-185      497      1008      
-3      832      736      
155      906      308      
310      747      -98      
420      507      -373      
492      350      -532      
541      201      -622      
638      92      -653      
805      25      -546      
982      56      -332      
1082      158      -31      
1110      267      172      
1123      365      208      
1122      438      113      
1122      402      3      
1150      301      16      
1133      256      178      
1060      417      461      
946      611      546      
816      798      527      
652      908      446      
561      957      260      
467      938      77      
425      853      -126      
560      616      -361      
805      222      -391      
976      -22      -201      
1047      -45      147      
1093      -16      415      
1071      92      628      
1060      277      777      
1006      336      911      
966      415      1022      
848      621      1122      
731      808      1215      
636      1003      1186      
593      1167      1055      
498      1382      816      
335      1535      505      
-25      1585      193      
-360      1471      -150      
-497      1231      -463      
-530      853      -838      
-413      466      -1088      
-311      27      -1225      
-126      -370      -1237      
92      -621      -1142      
136      -782      -1057      
348      -911      -838      
436      -915      -795      
443      -737      -975      
376      -516      -1120      
372      -212      -1161      
402      372      -1040      
416      830      -736      
555      1093      -366      
610      1186      -132      
680      1223      88      
728      1205      476      
788      1141      407      
827      1083      335      
851      1038      311      
913      975      342      
895      960      327      
908      925      268      
936      885      206      
941      858      203      
925      820      77      
918      816      55      
876      787      1      
857      798      -18      
830      770      -80      
767      782      -137      
696      808      -165      
638      790      -286      
566      772      -366      
482      680      -538      
397      346      -826      
286      -61      -1008      
191      -288      -1062      
90      -407      -1086      
15      -465      -1111      
-73      -510      -1132      
-122      -502      -1168      
-142      -481      -1193      
-240      -571      -1183      
-342      -813      -1086      
-420      -1020      -965      
-468      -1260      -636      
-457      -1401      -227      
-436      -1408      -36      
-406      -1342      135      
-270      -1191      483      
-115      -1048      638      
-20      -915      777      
27      -798      865      
106      -611      978      
131      -405      1066      
226      -162      1155      
272      106      1168      
297      267      1152      
388      486      1068      
405      685      972      
378      735      1016      
297      763      1103      
233      642      1207      
198      367      1295      
188      113      1305      
233      -103      1246      
258      -365      1142      
307      -516      1035      
436      -747      726      
612      -748      530      
735      -748      352      
810      -703      296      
840      -661      268      
892      -557      213      
952      -417      245      
995      -341      278      
932      -291      520      
902      -262      595      
853      -243      677      
811      -365      653      
721      -465      682      
638      -585      690      
666      -697      568      
658      -806      391      
541      -911      342      
365      -1062      222      
270      -1133      55      
235      -1155      -175      
226      -1097      -386      
226      -1031      -500      
283      -896      -641      
283      -730      -765      
152      -656      -833      
115      -523      -862         
];

%% Данные (измерения датчика), вращение магнитометра вокруг Ox
xxyz = [
-343      -441      -801      
-332      -436      -800      
-330      -441      -792      
-321      -431      -808      
-321      -438      -800      
-326      -431      -795      
-321      -447      -797      
-323      -443      -801      
-327      -431      -800      
-330      -436      -801      
-335      -457      -811      
-310      -436      -797      
-330      -428      -795      
-265      -397      -828      
-193      -438      -870      
-156      -465      -877      
-147      -547      -880      
-90      -661      -850      
-82      -822      -772      
-112      -887      -736      
-126      -983      -607      
-108      -1027      -563      
-68      -1070      -492      
-61      -1107      -402      
-57      -1145      -308      
-52      -1160      -167      
-50      -1155      -103      
-27      -1171      -11      
-31      -1138      111      
-36      -1115      257      
-6      -911      656      
-38      -820      762      
-6      -671      926      
-31      -583      1016      
0      -445      1096      
13      -253      1196      
13      -141      1222      
-33      -42      1258      
-55      56      1271      
-47      108      1281      
-41      165      1281      
-47      251      1290      
-31      325      1276      
-15      391      1266      
-27      481      1248      
-33      526      1227      
-55      616      1212      
-50      703      1152      
-52      768      1096      
-41      832      1030      
-47      908      952      
-61      962      893      
-43      1022      772      
-46      1055      710      
-63      1072      607      
-71      1086      430      
-85      1070      317      
-82      1051      208      
-87      1020      57      
-90      911      -160      
-87      848      -260      
-82      793      -330      
-85      692      -451      
-85      561      -573      
-85      428      -666      
-87      305      -736      
-85      208      -806      
-63      101      -833      
-52      30      -875      
-76      -92      -891      
-63      -175      -918      
-66      -275      -906      
-82      -322      -916      
-85      -407      -903      
-63      -545      -882      
-76      -616      -857      
-80      -711      -823      
-71      -832      -718      
-61      -870      -682      
-41      -911      -633      
-52      -932      -626      
-73      -1022      -512      
-93      -1051      -458      
-77      -1065      -366      
-60      -1131      -118      
-52      -1097      101   
-57      -1112      128      
-61      -1067      298      
-25      -970      507      
-30      -922      590      
-43      -822      743      
-43      -792      777      
-17      -682      893      
-25      -531      1021      
-8      -376      1130      
-6      -220      1210      
25      -101      1245      
22      182      1302      
6      307      1292      
3      481      1286      
-6      613      1227      
-60      697      1176      
-61      811      1130      
-80      891      1027      
-55      943      970      
-61      1022      857      
-41      1065      746      
-31      1102      633      
-57      1110      410      
-90      1096      335      
-108      1097      317      
-133      1078      222      
-136      1031      72      
-140      965      -80      
-131      908      -165      
-103      811      -311      
-117      732      -420      
-103      608      -533      
-93      483      -631      
-103      346      -700      
-68      241      -767      
-52      127      -823      
-47      0      -865      
-68      -80      -882      
-68      -193      -898      
-73      -253      -903      
-73      -350      -901      
-61      -412      -875      
-61      -468      -882      
-73      -555      -860      
-85      -635      -826      
-90      -608      -841      
-77      -566      -865      
-85      -457      -896      
-76      -378      -903      
-71      -296      -923      
-87      -225      -906      
-77      -172      -906      
-63      -92      -887      
-50      35      -880      
-85      141      -821      
-76      236      -790      
-57      326      -755      
-36      460      -685      
-52      608      -573      
-47      716      -488      
-41      851      -347      
-38      1022      -67      
1      1093      72      
-25      1138      252      
-30      1136      468      
13      1105      695      
3      1062      813      
-13      957      983      
-8      851      1088      
20      656      1200      
43      438      1248      
38      191      1281      
6      -90      1232      
-1      -283      1156      
-6      -423      1091      
25      -583      957      
22      -730      841      
47      -927      582      
30      -1012      427      
46      -1088      193      
43      -1115      -3      
25      -1115      -203      
22      -1062      -381      
31      -1028      -473   
8      -975      -522      
-17      -893      -638      
-25      -827      -713      
-31      -677      -782      
-41      -566      -855      
-47      -468      -860      
-36      -393      -857      
-13      -272      -872      
-30      -132      -862      
-47      -48      -852      
-36      30      -836      
-36      130      -808      
-30      288      -755      
-36      455      -651      
-15      600      -561      
0      721      -437      
1      808      -340      
-6      912      -191      
-6      915      -188      
1      998      -26      
17      1043      87      
-1      1076      255      
3      1086      386      
3      1086      538      
8      1052      666      
-15      1038      743      
-11      996      816      
-3      957      885      
-8      896      967      
-43      861      1022      
-25      832      1055      
-27      772      1111      
-36      682      1166      
-27      597      1196      
-27      483      1225      
-8      373      1263      
-17      291      1251      
-17      186      1253      
1      106      1248      
-3      -80      1222      
1      -210      1178      
17      -360      1122      
17      -452      1071      
13      -597      975      
25      -718      872      
33      -793      782      
17      -870      667      
20      -925      612      
22      -1003      473      
33      -1083      281      
22      -1121      26      
71      -1131      -165      
38      -1110      -330      
22      -1072      -446      
6      -1043      -538      
20      -977      -620      
11      -908      -711      
-17      -742      -845      
-31      -635      -903      
-57      -526      -923      
-52      -528      -933 
];

%% Данные (измерения датчика), вращение магнитометра вокруг Oz
zxyz = [
367      -560      -993      
346      -560      -986      
378      -568      -988      
370      -608      -972      
360      -628      -981      
343      -685      -962      
307      -740      -978      
286      -761      -991      
242      -770      -1008      
177      -827      -1022      
120      -863      -1025      
90      -896      -1030      
8      -948      -1045      
-61      -965      -1057      
-145      -1020      -1050      
-231      -1015      -1047      
-367      -991      -1073      
-508      -980      -1076      
-615      -915      -1098      
-786      -817      -1091      
-936      -701      -1088      
-998      -640      -1050      
-1087      -571      -1018      
-1128      -510      -1013      
-1161      -455      -1008      
-1185      -362      -1003      
-1172      -180      -1003      
-1207      -90      -975      
-1193      16      -967      
-1170      122      -970      
-1133      180      -986   
-1101      256      -977      
-1047      305      -970      
-1052      348      -933      
-1022      478      -891      
-973      488      -923      
-867      518      -933      
-837      576      -913      
-756      628      -906      
-675      703      -887      
-598      730      -888      
-476      775      -880      
-390      806      -880      
-340      820      -882      
-210      835      -885      
-60      846      -857      
15      813      -870      
108      713      -903      
280      652      -888      
390      585      -852      
462      457      -880      
538      326      -908      
543      230      -908      
561      143      -911      
606      85      -926      
606      -16      -942      
612      -117      -933      
617      -227      -945      
596      -328      -962  
517      -420      -996      
485      -505      -1006      
452      -626      -996      
420      -671      -1022      
372      -766      -1032      
316      -793      -1035      
256      -835      -1030      
155      -925      -1060      
20      -960      -1078      
-93      -991      -1091      
-212      -1020      -1108      
-275      -1020      -1101      
-400      -1041      -1111      
-533      -1007      -1096      
-661      -977      -1108      
-758      -908      -1132      
-818      -882      -1115      
-906      -827      -1091      
-995      -780      -1076      
-1071      -727      -1055      
-1077      -656      -1052      
-1158      -523      -1052      
-1210      -402      -1032      
-1242      -262      -1022      
-1237      -108      -986      
-1245      32      -952      
-1231      227      -898      
-1193      360      -867      
-1087      443      -893      
-1017      495      -903      
-1001      518      -901      
-965      568      -888      
-890      640      -857      
-726      711      -872      
-666      803      -831      
-530      856      -828      
-373      856      -821      
-275      865      -833      
-126      853      -828      
-63      837      -831      
60      777      -841      
202      692      -865      
353      616      -838      
446      528      -813      
552      346      -845      
593      108      -888      
617      -111      -928      
598      -286      -935      
550      -370      -955      
515      -486      -957      
468      -605      -960      
392      -666      -986      
353      -742      -993      
302      -790      -1022      
235      -870      -1035      
171      -908      -1060      
101      -933      -1081      
110      -922      -1081      
223      -798      -1068      
418      -587      -1030      
527      -438      -983      
555      -143      -977      
508      158      -918      
392      452      -882      
316      555      -898      
201      632      -888      
60      723      -870      
-87      780      -865      
-193      723      -923      
-372      687      -962      
-555      616      -1011      
-753      516      -1042      
-860      370      -1091      
-962      225      -1115      
-987      87      -1137      
-1038      -45      -1161      
-1075      -180      -1173      
-1012      -307      -1207      
-992      -365      -1210      
-1031      -471      -1198      
-1003      -550      -1183      
-927      -713      -1193      
-758      -851      -1173      
-582      -915      -1161      
-443      -901      -1183      
-316      -882      -1198      
-82      -803      -1200      
112      -820      -1140      
302      -732      -1073      
427      -645      -1037      
452      -545      -1022      
547      -436      -972      
582      -331      -952      
596      -236      -952      
571      -137      -960      
547      -1      -952      
533      280      -885      
435      521      -836      
277      611      -875      
110      652      -906      
-46      703      -928      
-253      718      -937      
-452      597      -1030      
-527      563      -1025      
-633      536      -1030      
-767      421      -1040      
-900      203      -1098      
-960      68      -1111      
-1052      -92      -1122      
-1025      -225      -1155      
-1043      -352      -1161     
-997      -468      -1168      
-943      -502      -1205      
-902      -652      -1191      
-841      -782      -1210      
-742      -885      -1176      
-685      -885      -1198      
-598      -953      -1181      
-503      -981      -1135      
-357      -1031      -1108      
-182      -1133      -1013      
-66      -1020      -1052      
22      -948      -1062      
123      -841      -1078      
218      -772      -1062      
310      -587      -1078      
381      -476      -1047      
402      -492      -1027  
];

%% Графики данных
% Данные (измерения датчика), вращение магнитометра вокруг всех 3-х осей
x = xyz(:,1);
y = xyz(:,2);
z = xyz(:,3);

% Данные (измерения датчика), вращение магнитометра вокруг Ox
xx = xxyz(:,1);
xy = xxyz(:,2);
xz = xxyz(:,3);

% Данные (измерения датчика), вращение магнитометра вокруг Oz
zx = zxyz(:,1);
zy = zxyz(:,2);
zz = zxyz(:,3);

% Графики
plot3(x,y,z)
grid on
xlabel("x");ylabel("y");zlabel("z")
hold on

plot3(xx,xy,xz)
grid on
hold on

plot3(zx,zy,zz)
grid on
hold on

%% Hard Iron помехи
x_c = (max(x)+min(x))/2;
y_c = (max(y)+min(y))/2;
z_c = (max(z)+min(z))/2;

x_h = x - x_c;
y_h = y - y_c;
z_h = z - z_c;

% Графики
plot(x_h,y_h)
plot(y_h,z_h)
plot(x_h,z_h)
grid on
hold on

plot3(x_h,y_h,z_h)
grid on
hold on

%% Soft Iron помехи
ax = max(x_h)-min(x_h);
ay = max(y_h)-min(y_h);
az = max(z_h)-min(z_h);
a = [ax ay az];
[m,i] = min(a);

kx_s = a(i)/a(1);
ky_s = a(i)/a(2);
kz_s = a(i)/a(3);

x_s = kx_s*x_h;
y_s = ky_s*y_h;
z_s = kz_s*z_h;

% Графики
plot(x_s,y_s)
plot(y_s,z_s)
plot(x_s,z_s)
grid on
hold on

plot3(x_s,y_s,z_s)
grid on
hold on