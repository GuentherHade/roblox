return(function(i,a,a)local k=string.char;local e=string.sub;local m=table.concat;local n=math.ldexp;local o=getfenv or function()return _ENV end;local l=select;local g=unpack or table.unpack;local j=tonumber;local function p(h)local b,c,d="","",{}local g=256;local f={}for a=0,g-1 do f[a]=k(a)end;local a=1;local function i()local b=j(e(h,a,a),36)a=a+1;local c=j(e(h,a,a+b-1),36)a=a+b;return c end;b=k(i())d[1]=b;while a<#h do local a=i()if f[a]then c=f[a]else c=b..e(b,1,1)end;f[g]=b..e(c,1,1)d[#d+1],b,g=c,c,g+1 end;return table.concat(d)end;local j=p('1N21W27521W2242761D21621J21C2112162131X21W21Z2762161X21F21W2252761N21321I1X1X2161321D21921W21T2761221I21121527H27P2751G1X21O21C182112121X21421W2262792152111Z1X28E28G28I21S2761A285287276182172111W1X21I1621121I21W21U2761K29627V21C21W28T2751Z28W21W21V2761721727T27X27Z22729A21I2171Z27T21J21J29529729S2751527F21829O1K21721921629E29L2751I1X21321C29O23A27J27627524K23F2AL2AM25023F21W22C27629521321B29W21721D2161W29N21429O23B29829M2172B621I2B82AD21W1Y29U2151M13162AQ2AN2171421W22A2AW2112AY2B02B21W1G28427B21G29C27F21P27729A21721J21921C2192172162802761H102192152AK2AM2AM21Z2662652CQ2CQ24P2AT29G21W1N21921Q1X21Z22T26W2291423B23B26V2AT2992A32AH21921E1X21X21X29K2761I2192C921221427H2782751D21C1X21528V28621Z25S22G24H2612CQ27126Z2BN2752241421Z24B1724U26Z23S23S24O2AP24R22T24X1R1Y1Y24I2CU2822CD29E2CV1121621D21527O2761521I219211214162BB1W29F27628A28C27I27622Y2FF28J2FA28B21C2B52B72FH2892FJ27R2F41X2F82DQ21W2FB21C2CX2CZ2E621W22W2BQ2BS2FO28C1N21C29U21B1X2BZ27E21J2C227T2C42G024S2AT2A22FV2FJ1J28421G21G2FS2C62751K29U29W1X29Y2G022G2E923N1Z24925725A25A26E2AP2CM2G123O2B92751U27A29221O2G021W2BQ2812DR28M28O21W22B27621I21221O21129Y1X2CB1W23I22Z22Z2392352392I723H23623G2342392EZ2752FQ2DO1G21P2GR2CF2IF21421927G21W2GL1N2IN27G1729D2932F92751M2AG21C2G022U2E92HB22Q2J52AM23O1I2J8276142JB2HE21W102AG29O27H2GL1D2HP1X2FL2BD2G02JF2DA21W152152B12AB2G02582AT21Y27623822P2DI29H2HZ28O21621E21W220276131R28Z2912AA1Z2A02FN21W2KG2GV29V29X21J21W2222KF1R2KQ2GX29Y2II2IK2CV2G821D2DP2762AI27C2F22161Z21W2DH2752K62882FV21F27U2162FY2D02HB1T2BQ2AQ1B21D29E2JU182AA1X2962IY21W21F2112CA21Z2D62M623B2472AT2BF2JI2L92172C52LE2IE2752CV28M21C2182IL2BG2B629O2M02C91Z2CE2AQ28M21O2MN2B61Z2392382FD27528F21J2G02AS2HK2N32AM22O142K327622U27622E22O21W2K32MG22S2752K32NP2CN2HB2NO2NK2NU22E27527J2NM2NX2FD2NE2MI2LD2HB27J2NQ2762DH2N92O22NW2NU2NZ2NU2K32BN2NY2HB2NQ2K32OC2OI2752NN2FD27J28T2OC28T2OE28T28T2OL2752812OE2812P221W2OC2992OE2992P82AM29L2MG2762992BF2762HN2HB2CV2K32OP2OW2DI2OC2812FU27627J2812K32AV2FD27P2BN2NQ2PY2762O22OF2NS2O42IZ2LE22E2342O82762OP2AM2OY2O42OA2NV2752DH2OE2QJ2QH2NU2CV2QA2NQ2OC2NL2QB2NT2QQ2O02PH2Q12Q32OM2Q521W2OP27J2O62P42O32JU2PR2QZ2O32OV2F92QE2812R82O32QV2CF2P12CF2QE2992QX2OZ2Q32N227629L2782P52KN2OP2P929S2PV27527P2992RR2DH29L2KE2PV2DH2LH2RV2KV2OO2752P92QE29L2232NH2E72AU2HB2992782PU2QI21W2212B92RV2OC2R22SE2B922F2R62DI2282SJ2C62T22752OC27P2T52AM29927P2SP2O422D2B92S421W2292SL2RV2HS2SD2B92992SG21W2SI2T62SK22K2T327P22L2T328K2TV2CM29928K2TD2DH2BS2992TL2QT2TO2QM2SH2T32782U12T027P22N2TZ21W2UG2PD2FH2U521W22M2TG2SQ22G21W22H21W2TH22I2UV2UX2NT29L22J2SL2NU27P2DH2SB2UA2SF2T02UD2TT2C62S02UN2SO2V52K32SS2U82SX2SV2RX2SY2VC21W2T92OC2782VT2S12VS2SM2EZ2TD2K32TF2S32NT2TJ2AV2U92TN2VB22E22T2DI2TS2P42PP2UL2TW2SW2VE28K2WC2U22UO2VJ2BR2ST2SX2TM2WJ2WA27529L2NG2VE2UF2WI22V2UK2UM2SX2U42WP2UR2VM2B92K62W92B92NJ2VP29922Q2WP2NJ2W42NU22R21W2302T02X92WU2VQ2OC29L2VW2T42WI2T92UN2TC2WP2312US2NU2322V02RR2K32332G12V12NU22X21W22Y2YB2K322Z2Y62NT2UU2UW2Y721W2UZ2YM2O029L2N22PV27J2V72XP2KU2VA2B92TQ2UG2VU2TR2VZ2VI2YU2SR2WR2Z92XR2992SZ2XT2WH2WZ2ZF2UH2ZH2XZ2NU2Z72W32YB27J2W62YX2WT2XF2UC2ZH2Z32ID2VE27P2WE2OC2U02VZ2X62Z72U72ZR2YZ2TP2VR23A2UE2YA2ZY2V52T028K2B82WN31042O02X82ZO21W2Q9235310N23621W2372YX2XB2ZB21W23G310X23H2V527J310Z2X929923J31082ZU23C310C23D2WI23E2UK2AT310J2ZL2O023I2Y327J2YL310N2YP2YB28T29L2BQ22C2OR2EZ2V82P92VO2SX2ZC2VR2Z22TU2WI2X42B92Y02PV28T2ZN2RR28T2ZQ2W8310X2TQ2S02Z331232EZ312I2753102311H2TD28T310M312C21W310S310U2SU31182ZD2WW21W16310C3132310E31342TA2W02V528T152Z9299310W2ZT310Z2ZT31113129310Y313C21W31172XC31092ZE311A2ZG311C310E311E2WK21W311G3137310K2F9311K2XK28T311N312T311P2RR28129L172V52812YW2V9313O2ZU31002SK2WE2VH311I2CF2VL2YX311Z2UB312Z2T1310C2XV2T82VZ31282RP312B2RP312E2WS31182TQ314I2C6312K27P102UK2WM313Z314M2813106312F2ZT2TQ2WY2T02X0310E2X2313W31262U3315E2UQ313L313E312021W2XE315W2XH2PV2812XJ2YB2812XM11314P312Y3122314U31252AM2XH2TB315S2Y22XK2812Y52YQ2CF2Y922W316421W2YD2YF314821W2YI316L28131452RP311P21Y2782RG2ZE122HB2PB2NU2RR29L132V0317431762O42K3317921W1C2WH317D2CM3177317G31301D21W1E316A2T62YF278317B27522Q28T2782252DG2V021S310B2S13183318528Y318322E317V317I2PD2UJ311S3183278318927514318321W2Y92782BF318C2EZ317J2762Y928K2FU21U2TY28K22E318327P318K2P431883186313X318N2Y929S2R8317B2KE28K2CM2SS2LH27629S2SS2Q228K2GL2OC29S319G2WJ29S319U319T2IQ2C62OP319V2KE319Z319X314B2OC2KE1F2AM2Y92SS319S22E311A2KV182HB2SS2SS2SC2752KE2NQ2PV29S2XM2KE319Q2RW275319V29S31A229S27831AW2KD319W29S2N231AZ192P42YF2SS2ZS2TF31AH2QM2KV318U2WJ2KV2KV1A2T02SI310I2T02AV312M21W2TF31BL2762SS2TF2QE2KV1B2T32SI1K2T32AV314K311K2TF2PC2BS29S31C52T0319R2UA31AU31B1319Y31AT319X31A131CG29S2V431A521W317Q27531AN21W31AP31CA21W1L2HB29S2QL3195223318B2YF29L31BE318S27831BE317Z2C610318331BI319531DA2DH31951D31D12C631CV2T62WC27P1M2AM318X2OD275311K2PQ2P4310U317W2NH318D31DK2752Y527831CY319821T31DI278319S22S311C27827831AV2SK31EC2WJ31EG2742762VI2PC2SQ275');local a=(bit or bit32);local d=a and a.bxor or function(a,b)local c,d,e=1,0,10 while a>0 and b>0 do local f,e=a%2,b%2 if f~=e then d=d+c end a,b,c=(a-f)/2,(b-e)/2,c*2 end if a<b then a=b end while a>0 do local b=a%2 if b>0 then d=d+c end a,c=(a-b)/2,c*2 end return d end local function c(c,a,b)if b then local a=(c/2^(a-1))%2^((b-1)-(a-1)+1);return a-a%1;else local a=2^(a-1);return(c%(a+a)>=a)and 1 or 0;end;end;local a=1;local function b()local e,f,c,b=i(j,a,a+3);e=d(e,68)f=d(f,68)c=d(c,68)b=d(b,68)a=a+4;return(b*16777216)+(c*65536)+(f*256)+e;end;local function h()local b=d(i(j,a,a),68);a=a+1;return b;end;local function f()local b,c=i(j,a,a+2);b=d(b,68)c=d(c,68)a=a+2;return(c*256)+b;end;local function q()local a=b();local b=b();local e=1;local d=(c(b,1,20)*(2^32))+a;local a=c(b,21,31);local b=((-1)^c(b,32));if(a==0)then if(d==0)then return b*0;else a=1;e=0;end;elseif(a==2047)then return(d==0)and(b*(1/0))or(b*(0/0));end;return n(b,a-1023)*(e+(d/(2^52)));end;local p=b;local function n(b)local c;if(not b)then b=p();if(b==0)then return'';end;end;c=e(j,a,a+b-1);a=a+b;local b={}for a=1,#c do b[a]=k(d(i(e(c,a,a)),68))end return m(b);end;local a=b;local function p(...)return{...},l('#',...)end local function k()local i={};local d={};local a={};local j={[#{"1 + 1 = 111";"1 + 1 = 111";}]=d,[#{"1 + 1 = 111";{228;299;232;833};"1 + 1 = 111";}]=nil,[#{"1 + 1 = 111";{949;541;290;595};{467;938;963;314};{563;122;194;998};}]=a,[#{{913;668;348;751};}]=i,};local a=b()local e={}for c=1,a do local b=h();local a;if(b==1)then a=(h()~=0);elseif(b==3)then a=q();elseif(b==0)then a=n();end;e[c]=a;end;j[3]=h();for a=1,b()do d[a-1]=k();end;for j=1,b()do local a=h();if(c(a,1,1)==0)then local d=c(a,2,3);local g=c(a,4,6);local a={f(),f(),nil,nil};if(d==0)then a[3]=f();a[4]=f();elseif(d==1)then a[3]=b();elseif(d==2)then a[3]=b()-(2^16)elseif(d==3)then a[3]=b()-(2^16)a[4]=f();end;if(c(g,1,1)==1)then a[2]=e[a[2]]end if(c(g,2,2)==1)then a[3]=e[a[3]]end if(c(g,3,3)==1)then a[4]=e[a[4]]end i[j]=a;end end;return j;end;local function m(a,b,f)a=(a==true and k())or a;return(function(...)local d=a[1];local e=a[3];local n=a[2];local j=p local b=1;local h=-1;local o={};local k={...};local i=l('#',...)-1;local a={};local c={};for a=0,i do if(a>=e)then o[a-e]=k[a+1];else c[a]=k[a+#{{840;644;512;6};}];end;end;local a=i-e+1 local a;local e;while true do a=d[b];e=a[1];if e<=36 then if e<=17 then if e<=8 then if e<=3 then if e<=1 then if e>0 then c[a[2]]=c[a[3]]-c[a[4]];else local e;c[a[2]]=f[a[3]];b=b+1;a=d[b];e=a[2]c[e]=c[e]()b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];e=a[2]c[e]=c[e]()b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];e=a[2]c[e]=c[e]()b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]]=a[3];end;elseif e>2 then c[a[2]][a[3]]=c[a[4]];else c[a[2]]=a[3]^c[a[4]];end;elseif e<=5 then if e>4 then local e;c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];else if(c[a[2]]~=a[4])then b=b+1;else b=a[3];end;end;elseif e<=6 then local e;c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];elseif e==7 then do return c[a[2]]end else c[a[2]]=m(n[a[3]],nil,f);end;elseif e<=12 then if e<=10 then if e>9 then local a=a[2]c[a](c[a+1])else f[a[3]]=c[a[2]];end;elseif e==11 then c[a[2]]=c[a[3]]*c[a[4]];else do return end;end;elseif e<=14 then if e>13 then local a=a[2]c[a]=c[a](g(c,a+1,h))else local d=a[3];local b=c[d]for a=d+1,a[4]do b=b..c[a];end;c[a[2]]=b;end;elseif e<=15 then local a=a[2]c[a](c[a+1])elseif e>16 then local e;c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]]/a[4];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];else local a=a[2]local d,b=j(c[a](c[a+1]))h=b+a-1 local b=0;for a=a,h do b=b+1;c[a]=d[b];end;end;elseif e<=26 then if e<=21 then if e<=19 then if e==18 then local a=a[2]c[a]=c[a](g(c,a+1,h))else c[a[2]]=f[a[3]];end;elseif e==20 then local a=a[2]c[a]=c[a](c[a+1])else local b=a[2]c[b](g(c,b+1,a[3]))end;elseif e<=23 then if e==22 then local e;e=a[2]c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]();else c[a[2]]=c[a[3]]-c[a[4]];end;elseif e<=24 then local a=a[2]local d,b=j(c[a](g(c,a+1,h)))h=b+a-1 local b=0;for a=a,h do b=b+1;c[a]=d[b];end;elseif e>25 then if(c[a[2]]<c[a[4]])then b=b+1;else b=a[3];end;else if(c[a[2]]==c[a[4]])then b=b+1;else b=a[3];end;end;elseif e<=31 then if e<=28 then if e>27 then b=a[3];else if(c[a[2]]<c[a[4]])then b=b+1;else b=a[3];end;end;elseif e<=29 then local b=a[2]c[b]=c[b](g(c,b+1,a[3]))elseif e==30 then c[a[2]][a[3]]=a[4];else c[a[2]]=a[3]^c[a[4]];end;elseif e<=33 then if e>32 then c[a[2]]=a[3];else c[a[2]]=(a[3]~=0);end;elseif e<=34 then c[a[2]]=c[a[3]]+c[a[4]];elseif e>35 then local i;local l,k;local e;c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];e=a[2]c[e]=c[e](c[e+1])b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];e=a[2]c[e]=c[e](c[e+1])b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]]-c[a[4]];b=b+1;a=d[b];e=a[2]c[e]=c[e](c[e+1])b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]]-c[a[4]];b=b+1;a=d[b];e=a[2]l,k=j(c[e](c[e+1]))h=k+e-1 i=0;for a=e,h do i=i+1;c[a]=l[i];end;b=b+1;a=d[b];e=a[2]l,k=j(c[e](g(c,e+1,h)))h=k+e-1 i=0;for a=e,h do i=i+1;c[a]=l[i];end;b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,h))b=b+1;a=d[b];c[a[2]]=c[a[3]]-a[4];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=a[3]^c[a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]]*c[a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]]+c[a[4]];b=b+1;a=d[b];do return c[a[2]]end b=b+1;a=d[b];do return end;else local b=a[2];local d=c[a[3]];c[b+1]=d;c[b]=d[a[4]];end;elseif e<=55 then if e<=45 then if e<=40 then if e<=38 then if e>37 then local e;e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];else c[a[2]]=c[a[3]]/a[4];end;elseif e==39 then c[a[2]]=c[a[3]]+c[a[4]];else do return end;end;elseif e<=42 then if e==41 then c[a[2]]=c[a[3]];else c[a[2]]();end;elseif e<=43 then c[a[2]]=c[a[3]];elseif e>44 then local a=a[2]local d,b=j(c[a](g(c,a+1,h)))h=b+a-1 local b=0;for a=a,h do b=b+1;c[a]=d[b];end;else local a=a[2]local d,b=j(c[a](c[a+1]))h=b+a-1 local b=0;for a=a,h do b=b+1;c[a]=d[b];end;end;elseif e<=50 then if e<=47 then if e==46 then c[a[2]]=f[a[3]];else c[a[2]]=c[a[3]]-a[4];end;elseif e<=48 then c[a[2]]=c[a[3]]-a[4];elseif e==49 then c[a[2]]=c[a[3]][a[4]];else b=a[3];end;elseif e<=52 then if e>51 then local e;c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](c[e+1])b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](c[e+1])b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](c[e+1])b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](c[e+1])b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](c[e+1])b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](c[e+1])b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];else do return c[a[2]]end end;elseif e<=53 then if(c[a[2]]==c[a[4]])then b=b+1;else b=a[3];end;elseif e>54 then f[a[3]]=c[a[2]];else local a=a[2]c[a]=c[a]()end;elseif e<=64 then if e<=59 then if e<=57 then if e==56 then c[a[2]][a[3]]=a[4];else local b=a[2]c[b](g(c,b+1,a[3]))end;elseif e>58 then c[a[2]]=a[3];else c[a[2]]=(a[3]~=0);end;elseif e<=61 then if e==60 then local e;local h;local g;c[a[2]]=a[3];b=b+1;a=d[b];g=a[3];h=c[g]for a=g+1,a[4]do h=h..c[a];end;c[a[2]]=h;b=b+1;a=d[b];e=a[2]c[e]=c[e](c[e+1])b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];else local f;local e;c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];f=c[a[3]];c[e+1]=f;c[e]=f[a[4]];b=b+1;a=d[b];e=a[2]c[e](c[e+1])b=b+1;a=d[b];do return end;end;elseif e<=62 then c[a[2]]=m(n[a[3]],nil,f);elseif e==63 then c[a[2]]();else c[a[2]]=c[a[3]][a[4]];end;elseif e<=69 then if e<=66 then if e>65 then local b=a[2]c[b]=c[b](g(c,b+1,a[3]))else local a=a[2]c[a]=c[a]()end;elseif e<=67 then local d=a[2];local b=c[a[3]];c[d+1]=b;c[d]=b[a[4]];elseif e>68 then c[a[2]]=c[a[3]]/a[4];else c[a[2]][a[3]]=c[a[4]];end;elseif e<=71 then if e==70 then local d=a[3];local b=c[d]for a=d+1,a[4]do b=b..c[a];end;c[a[2]]=b;else local e;c[a[2]]=c[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=f[a[3]];end;elseif e<=72 then local a=a[2]c[a]=c[a](c[a+1])elseif e>73 then if(c[a[2]]~=a[4])then b=b+1;else b=a[3];end;else c[a[2]]=c[a[3]]*c[a[4]];end;b=b+1;end;end);end;return m(true,{},o())();end)(string.byte,table.insert,setmetatable);