return(function(k,j,o)local l=string.char;local e=string.sub;local r=table.concat;local q=math.ldexp;local s=getfenv or function()return _ENV end;local n=select;local g=unpack or table.unpack;local m=tonumber;local function p(h)local b,c,d="","",{}local g=256;local f={}for a=0,g-1 do f[a]=l(a)end;local a=1;local function i()local b=m(e(h,a,a),36)a=a+1;local c=m(e(h,a,a+b-1),36)a=a+b;return c end;b=l(i())d[1]=b;while a<#h do local a=i()if f[a]then c=f[a]else c=b..e(b,1,1)end;f[g]=b..e(c,1,1)d[#d+1],b,g=c,c,g+1 end;return table.concat(d)end;local h=p('21N21E27521D21I27521E22D22B22N22F21D27427522T22L21S22H21T21U22B22927E21G27923422M22L22927L21D21H27922Q22M22B22322F21S21T21D21L27923I27V22B22M28128328521D1Z27922O22F21U22M22J22922B21Y22F22E22P21Y27J22B22D27E27Z27523G22F21Y21X27J22H21D21Q27923F22K21W22L22H22F22P28521W28H21J27927M22B21X22K28J2751W21427921F2791I27927921C21E29Z2A021E21D21E1W27529X29X2752A42AB21E2782AE21E29X29M2A921E2A22AC2A32752A22A227R2A42AS21E27Z2AV2AN21E21M2AA2B02AW1W1N2A621E27G21E21G2A92782B32A221E1S29W2A02BI2AR2A021A2B82AO2BM2B32BJ27521727928I27923923123722921Y21Z28D22M23721Z28W23J22J22K22F21F21F27F27923522I22B21S27O28S21S21D21O2792382CB22E2CS28621Y2CI22J22M22E21D1Y27923E21Z22N22B22K22L22J22E22O22L22L21Y22Q2CK21Y21D27R2752352382CL27D27Y27922S22F2C227J1121D2A72752CC21X2A52751M26Q2E321E1M2362DR27528L22D22J22L22K2DX2B227522Q22L21T22J21Y2EF22K2CG27529627K29O27P21D2192CR2CT2DH21S21Y21T29C2ED2EQ1122T2EO22I22T22I2EO22F23I22J21T2DJ2BE27A27C27E2BA27I2EV27N2EX2DL21E27T27V27L2E722Z2EA29M27527N22J2862DY29B21T23721D2EJ2FV22B21T22F2F22DJ2FU2F222F22K2DJ21K2F021S29H29J28H2BA2CA2CC2FW27W27727921X22B2EO23B2792B62BT21E1K2FL27829X2A221I1J2792HB2AG2HF2752372AJ2751U2E71I1L2A52A72AI2752782AM2A72G22A029X2A72AT2B32HL2AP2HE2792I52A32152B029X27R1W1R2B82912AQ2B82A72B22AM2782BA2AM29M2IP27527R2BA2BW2BB2B02A12B02HT2762HM2IE2HV2AX29Y2J52782IM27529M2GO29T2IT21E2JD2A827527Z2JH2HG2J62BG2J22A72HW2J52892AD2J82B12IJ29M2A229A2A427R2A729A2JM27R2A22IQ21E21R2J721E29M29M2CQ27927Z2FL2792B22AP2AM27421P2KB2742742D32A42KQ21E29S2752B227429X1W2KO2742AM2752182KC2B92B02AM27R1X2E327Z2HZ2792K62JW2KI1D2HM1I21221E2892GO2LN2L12K921E2132A02742892KA2AT1H2LO21E2LK2I62HJ2M32LL2IB2LP21E2102751K21E29A2AP2A429A29A2112JI21E2CQ2162E32KO2AP2792D32MS27528J2JT2A02D328J2AC27Z2KO2MU2752KA29A2MR2A82B729A2BV27929M2MG2J31V2IX2BI2HC2HI2792NK2NA2792ND2JB2BJ29X2I72I02BR2HM2E7');local a=(bit or bit32);local d=a and a.bxor or function(a,c)local b,d,e=1,0,10 while a>0 and c>0 do local f,e=a%2,c%2 if f~=e then d=d+b end a,c,b=(a-f)/2,(c-e)/2,b*2 end if a<c then a=c end while a>0 do local c=a%2 if c>0 then d=d+b end a,b=(a-c)/2,b*2 end return d end local function c(b,a,c)if c then local a=(b/2^(a-1))%2^((c-1)-(a-1)+1);return a-a%1;else local a=2^(a-1);return(b%(a+a)>=a)and 1 or 0;end;end;local a=1;local function b()local b,c,f,e=k(h,a,a+3);b=d(b,50)c=d(c,50)f=d(f,50)e=d(e,50)a=a+4;return(e*16777216)+(f*65536)+(c*256)+b;end;local function i()local b=d(k(h,a,a),50);a=a+1;return b;end;local function f()local c,b=k(h,a,a+2);c=d(c,50)b=d(b,50)a=a+2;return(b*256)+c;end;local function p()local d=b();local a=b();local e=1;local d=(c(a,1,20)*(2^32))+d;local b=c(a,21,31);local a=((-1)^c(a,32));if(b==0)then if(d==0)then return a*0;else b=1;e=0;end;elseif(b==2047)then return(d==0)and(a*(1/0))or(a*(0/0));end;return q(a,b-1023)*(e+(d/(2^52)));end;local m=b;local function q(b)local c;if(not b)then b=m();if(b==0)then return'';end;end;c=e(h,a,a+b-1);a=a+b;local b={}for a=1,#c do b[a]=l(d(k(e(c,a,a)),50))end return r(b);end;local a=b;local function m(...)return{...},n('#',...)end local function l()local k={};local j={};local a={};local h={[#{"1 + 1 = 111";{78;903;698;529};}]=j,[#{{970;524;543;772};"1 + 1 = 111";{761;349;147;607};}]=nil,[#{{27;82;631;116};"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";}]=a,[#{"1 + 1 = 111";}]=k,};local a=b()local d={}for c=1,a do local b=i();local a;if(b==1)then a=(i()~=0);elseif(b==0)then a=p();elseif(b==3)then a=q();end;d[c]=a;end;for h=1,b()do local a=i();if(c(a,1,1)==0)then local e=c(a,2,3);local g=c(a,4,6);local a={f(),f(),nil,nil};if(e==0)then a[3]=f();a[4]=f();elseif(e==1)then a[3]=b();elseif(e==2)then a[3]=b()-(2^16)elseif(e==3)then a[3]=b()-(2^16)a[4]=f();end;if(c(g,1,1)==1)then a[2]=d[a[2]]end if(c(g,2,2)==1)then a[3]=d[a[3]]end if(c(g,3,3)==1)then a[4]=d[a[4]]end k[h]=a;end end;h[3]=i();for a=1,b()do j[a-1]=l();end;return h;end;local function k(a,h,f)a=(a==true and l())or a;return(function(...)local d=a[1];local e=a[3];local l=a[2];local a=m local b=1;local a=-1;local q={};local p={...};local m=n('#',...)-1;local i={};local c={};for a=0,m do if(a>=e)then q[a-e]=p[a+1];else c[a]=p[a+#{"1 + 1 = 111";}];end;end;local a=m-e+1 local a;local e;while true do a=d[b];e=a[1];if e<=22 then if e<=10 then if e<=4 then if e<=1 then if e==0 then c[a[2]]=c[a[3]];else local a=a[2]c[a]=c[a](c[a+1])end;elseif e<=2 then do return end;elseif e==3 then c[a[2]]={};else if(c[a[2]]~=a[4])then b=b+1;else b=a[3];end;end;elseif e<=7 then if e<=5 then c[a[2]]();elseif e==6 then do return end;else local b=a[2];local d=c[b];for a=b+1,a[3]do j(d,c[a])end;end;elseif e<=8 then c[a[2]]();elseif e==9 then local b=a[2]c[b]=c[b](g(c,b+1,a[3]))else c[a[2]]=f[a[3]];end;elseif e<=16 then if e<=13 then if e<=11 then c[a[2]]=c[a[3]]+c[a[4]];elseif e==12 then local b=a[2]c[b]=c[b](g(c,b+1,a[3]))else local b=a[2]c[b](g(c,b+1,a[3]))end;elseif e<=14 then local d=a[2];local f=a[4];local e=d+2 local d={c[d](c[d+1],c[e])};for a=1,f do c[e+a]=d[a];end;local d=d[1]if d then c[e]=d b=a[3];else b=b+1;end;elseif e>15 then b=a[3];else c[a[2]]=a[3];end;elseif e<=19 then if e<=17 then c[a[2]]={};elseif e==18 then local j=l[a[3]];local g;local e={};g=o({},{__index=function(b,a)local a=e[a];return a[1][a[2]];end,__newindex=function(c,a,b)local a=e[a]a[1][a[2]]=b;end;});for f=1,a[4]do b=b+1;local a=d[b];if a[1]==46 then e[f-1]={c,a[3]};else e[f-1]={h,a[3]};end;i[#i+1]=e;end;c[a[2]]=k(j,g,f);else c[a[2]]=a[3];end;elseif e<=20 then local d=a[2];local b=c[a[3]];c[d+1]=b;c[d]=b[a[4]];elseif e>21 then local a=a[2]c[a](c[a+1])else local d=a[2]local e={c[d](c[d+1])};local b=0;for a=d,a[4]do b=b+1;c[a]=e[b];end end;elseif e<=34 then if e<=28 then if e<=25 then if e<=23 then if(c[a[2]]~=a[4])then b=b+1;else b=a[3];end;elseif e==24 then c[a[2]]=c[a[3]][a[4]];else local b=a[2]local e={c[b](c[b+1])};local d=0;for a=b,a[4]do d=d+1;c[a]=e[d];end end;elseif e<=26 then local g;local e;c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];elseif e==27 then c[a[2]]=c[a[3]][a[4]];else local a=a[2]c[a](c[a+1])end;elseif e<=31 then if e<=29 then c[a[2]]=c[a[3]]+c[a[4]];elseif e>30 then local a=a[2]c[a]=c[a](c[a+1])else local h;local i;local e;e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];e=a[2]i={c[e](c[e+1])};h=0;for a=e,a[4]do h=h+1;c[a]=i[h];end b=b+1;a=d[b];b=a[3];end;elseif e<=32 then if c[a[2]]then b=b+1;else b=a[3];end;elseif e>33 then c[a[2]]=h[a[3]];else b=a[3];end;elseif e<=40 then if e<=37 then if e<=35 then if c[a[2]]then b=b+1;else b=a[3];end;elseif e>36 then c[a[2]]=f[a[3]];else local j=l[a[3]];local g;local e={};g=o({},{__index=function(b,a)local a=e[a];return a[1][a[2]];end,__newindex=function(c,a,b)local a=e[a]a[1][a[2]]=b;end;});for f=1,a[4]do b=b+1;local a=d[b];if a[1]==46 then e[f-1]={c,a[3]};else e[f-1]={h,a[3]};end;i[#i+1]=e;end;c[a[2]]=k(j,g,f);end;elseif e<=38 then local g;local f;local e;c[a[2]]=h[a[3]];b=b+1;a=d[b];e=a[2];f=c[a[3]];c[e+1]=f;c[e]=f[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]={};b=b+1;a=d[b];c[a[2]]={};b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];e=a[2];g=c[e];for a=e+1,a[3]do j(g,c[a])end;elseif e==39 then local f;local e;c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];f=c[a[3]];c[e+1]=f;c[e]=f[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];if c[a[2]]then b=b+1;else b=a[3];end;else local d=a[2];local b=c[a[3]];c[d+1]=b;c[d]=b[a[4]];end;elseif e<=43 then if e<=41 then local i;local h;local e;c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]]+c[a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]]+c[a[4]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];c[a[2]]={};b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];i=c[e];for a=e+1,a[3]do j(i,c[a])end;elseif e==42 then local b=a[2]c[b](g(c,b+1,a[3]))else local b=a[2];local d=c[b];for a=b+1,a[3]do j(d,c[a])end;end;elseif e<=44 then c[a[2]]=h[a[3]];elseif e==45 then local d=a[2];local f=a[4];local e=d+2 local d={c[d](c[d+1],c[e])};for a=1,f do c[e+a]=d[a];end;local d=d[1]if d then c[e]=d b=a[3];else b=b+1;end;else c[a[2]]=c[a[3]];end;b=b+1;end;end);end;return k(true,{},s())();end)(string.byte,table.insert,setmetatable);
