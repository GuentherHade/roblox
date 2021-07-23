
--[[
AztupBrew(Fork of IronBrew2): obfuscation; Version 2.7.2
]]
return(function(i,k,m)local l=string.char;local e=string.sub;local r=table.concat;local o=math.ldexp;local p=getfenv or function()return _ENV end;local n=select;local g=unpack or table.unpack;local j=tonumber;local function q(h)local b,c,f="","",{}local g=256;local d={}for a=0,g-1 do d[a]=l(a)end;local a=1;local function i()local b=j(e(h,a,a),36)a=a+1;local c=j(e(h,a,a+b-1),36)a=a+b;return c end;b=l(i())f[1]=b;while a<#h do local a=i()if d[a]then c=d[a]else c=b..e(b,1,1)end;d[g]=b..e(c,1,1)f[#f+1],b,g=c,c,g+1 end;return table.concat(f)end;local j=q('25M25F27525E25J27525F24K24I24U24M25E27427524424S24X24O24W24Z24I24G27E25H27923L24V24S24G27L25E25G27924324V24I25624M24X24W25E25K27923Z27V24I24V28128328525E25U27924124M24Z24V24Q24G24I25324M24N24025327J24I24K27E27Z27523X24M25325027J24O25E25R27923U24T25124S24O24M24028525128H25I27927M24I25024T25F28J27525T26J27925E27926B27927925D25F2A02A125F25C25F25T27625F29Y2752A529Y29Y2782AF2AC25F29M2AA25F2A32AD2A42752A32A327R2A52AT25F27Z2AW2AO25F25N2752662B12AX25T27Z2A827G25F25H26125F2782AB2A325F26N29X2A12BK2AS2A126D2A72B12AD2B32AB2BV25F26229X29T25F23O24C23M24G25325228D24V23M25228W23Y24Q24T24M25C25E27F27923K24R24I24X27O28S24X25E25P27923P2CE24N2CV2862532CL24Q24V24N25E25V27923V25224U24I24T24S24Q24N24124S24S2532432CN25325E27R27523K23P2CO27D27Y27924524M2C527J26O25E2A82752CF2502BI2A126F132E627926F23N2DU27528L24K24Q24S24T2E02BU25F24324S24W24Q2532EI24T2CJ27529627K29O27P25E2642CU2CW2DK24X25324W29C2EG2ET26O2442ER24R24424R2ER24M23Z24Q24W2DM2BG27A27C27E2BB27I2EY27N2F02DO25F27T27V27L2EA27524A2ED29M27527N24Q2862E129B24W23M25E2EM23L24I24W24M2F52DM2FX2F524M24T2DM25L2F324X29H29J28H2BB2CD2CF2FZ27W27727925024I2ER2C12792B82BL27526D2BY2DP2AK2A325J25W2CK2AK25F26A2A62AE26H2A62A82AJ2752782AN2A82G62A129Y2A82AU2AB23K2HL2BF2HJ2HF29Y26B27R2AP2BC2A92D62A82912AR2BR2A82B32AN2782BB2AN29M2IO27527R2BB2792A82IB2A12AX2HS2752A829Y27R2IM2AY29Z2HU2BF2B22A927529M2GS29U2IS25F2JE2JB2J62JI27927827Z2EA2A82A82HV2J82892AE2J82782B32A529M2A329A2A527R2A829A2JM2ID2A32IP25F25Q2J72AL2KE2CT27927Z2FO2792B32AQ2AN27425O2KD2742742D62A52KR29S2A12B327429Y25T2CT2742AN2JV2IQ2B12AN27R25S2HO27Z2HY2792IX2B32KJ23M2AK26B25Y25F2892GS25Z2A92CT2KC2LL2792F22892KC2AU2GS2892LI2AQ2HI2792M12A927Z2892AQ2HD2LM25F2M52HH2I72MC2LJ27R2LN25F25X2JF29A2AQ2A529A29A2HJ2AN2CT2632HO2KP2AQ2792D62MY27528J2JU2A12D628J2AD26I25F2KP2N027528929A2MX2M625F29A2HE2752672NI2AK2J327827R26M2HG2I62792NS2L02IH2NK25F2NM2AB2AH2MF2BV2EM2N1275');local a=(bit or bit32);local d=a and a.bxor or function(a,c)local b,d,e=1,0,10 while a>0 and c>0 do local e,f=a%2,c%2 if e~=f then d=d+b end a,c,b=(a-e)/2,(c-f)/2,b*2 end if a<c then a=c end while a>0 do local c=a%2 if c>0 then d=d+b end a,b=(a-c)/2,b*2 end return d end local function c(c,a,b)if b then local a=(c/2^(a-1))%2^((b-1)-(a-1)+1);return a-a%1;else local a=2^(a-1);return(c%(a+a)>=a)and 1 or 0;end;end;local a=1;local function b()local b,c,f,e=i(j,a,a+3);b=d(b,195)c=d(c,195)f=d(f,195)e=d(e,195)a=a+4;return(e*16777216)+(f*65536)+(c*256)+b;end;local function h()local b=d(i(j,a,a),195);a=a+1;return b;end;local function f()local c,b=i(j,a,a+2);c=d(c,195)b=d(b,195)a=a+2;return(b*256)+c;end;local function s()local a=b();local b=b();local e=1;local d=(c(b,1,20)*(2^32))+a;local a=c(b,21,31);local b=((-1)^c(b,32));if(a==0)then if(d==0)then return b*0;else a=1;e=0;end;elseif(a==2047)then return(d==0)and(b*(1/0))or(b*(0/0));end;return o(b,a-1023)*(e+(d/(2^52)));end;local q=b;local function o(b)local c;if(not b)then b=q();if(b==0)then return'';end;end;c=e(j,a,a+b-1);a=a+b;local b={}for a=1,#c do b[a]=l(d(i(e(c,a,a)),195))end return r(b);end;local a=b;local function q(...)return{...},n('#',...)end local function l()local j={};local i={};local a={};local k={[#{"1 + 1 = 111";"1 + 1 = 111";}]=i,[#{"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";}]=nil,[#{"1 + 1 = 111";{9;166;571;91};"1 + 1 = 111";{29;378;941;656};}]=a,[#{{501;606;174;71};}]=j,};local a=b()local e={}for c=1,a do local b=h();local a;if(b==3)then a=(h()~=0);elseif(b==2)then a=s();elseif(b==1)then a=o();end;e[c]=a;end;k[3]=h();for i=1,b()do local a=h();if(c(a,1,1)==0)then local d=c(a,2,3);local g=c(a,4,6);local a={f(),f(),nil,nil};if(d==0)then a[3]=f();a[4]=f();elseif(d==1)then a[3]=b();elseif(d==2)then a[3]=b()-(2^16)elseif(d==3)then a[3]=b()-(2^16)a[4]=f();end;if(c(g,1,1)==1)then a[2]=e[a[2]]end if(c(g,2,2)==1)then a[3]=e[a[3]]end if(c(g,3,3)==1)then a[4]=e[a[4]]end j[i]=a;end end;for a=1,b()do i[a-1]=l();end;return k;end;local function j(a,h,f)a=(a==true and l())or a;return(function(...)local d=a[1];local e=a[3];local l=a[2];local a=q local b=1;local a=-1;local p={};local o={...};local n=n('#',...)-1;local i={};local c={};for a=0,n do if(a>=e)then p[a-e]=o[a+1];else c[a]=o[a+#{"1 + 1 = 111";}];end;end;local a=n-e+1 local a;local e;while true do a=d[b];e=a[1];if e<=22 then if e<=10 then if e<=4 then if e<=1 then if e==0 then c[a[2]]={};else if c[a[2]]then b=b+1;else b=a[3];end;end;elseif e<=2 then c[a[2]]={};elseif e>3 then local d=a[2];local f=a[4];local e=d+2 local d={c[d](c[d+1],c[e])};for a=1,f do c[e+a]=d[a];end;local d=d[1]if d then c[e]=d b=a[3];else b=b+1;end;else c[a[2]]=a[3];end;elseif e<=7 then if e<=5 then c[a[2]]=h[a[3]];elseif e==6 then c[a[2]]=c[a[3]][a[4]];else c[a[2]]=f[a[3]];end;elseif e<=8 then do return end;elseif e>9 then if c[a[2]]then b=b+1;else b=a[3];end;else c[a[2]]=c[a[3]][a[4]];end;elseif e<=16 then if e<=13 then if e<=11 then local b=a[2]c[b](g(c,b+1,a[3]))elseif e==12 then local b=a[2]c[b]=c[b](g(c,b+1,a[3]))else if(c[a[2]]==a[4])then b=b+1;else b=a[3];end;end;elseif e<=14 then c[a[2]]=a[3];elseif e==15 then local d=a[2]local e={c[d](c[d+1])};local b=0;for a=d,a[4]do b=b+1;c[a]=e[b];end else local i;local h;local e;c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]]+c[a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]]+c[a[4]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];c[a[2]]={};b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];i=c[e];for a=e+1,a[3]do k(i,c[a])end;end;elseif e<=19 then if e<=17 then local e=a[2];local f=a[4];local d=e+2 local e={c[e](c[e+1],c[d])};for a=1,f do c[d+a]=e[a];end;local e=e[1]if e then c[d]=e b=a[3];else b=b+1;end;elseif e==18 then local g;local f;local e;c[a[2]]=h[a[3]];b=b+1;a=d[b];e=a[2];f=c[a[3]];c[e+1]=f;c[e]=f[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]={};b=b+1;a=d[b];c[a[2]]={};b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];e=a[2];g=c[e];for a=e+1,a[3]do k(g,c[a])end;else do return end;end;elseif e<=20 then c[a[2]]=c[a[3]];elseif e>21 then local b=a[2]c[b](g(c,b+1,a[3]))else local d=a[2];local b=c[a[3]];c[d+1]=b;c[d]=b[a[4]];end;elseif e<=34 then if e<=28 then if e<=25 then if e<=23 then b=a[3];elseif e==24 then local d=a[2]local e={c[d](c[d+1])};local b=0;for a=d,a[4]do b=b+1;c[a]=e[b];end else if(c[a[2]]==a[4])then b=b+1;else b=a[3];end;end;elseif e<=26 then local k=l[a[3]];local g;local e={};g=m({},{__index=function(b,a)local a=e[a];return a[1][a[2]];end,__newindex=function(c,a,b)local a=e[a]a[1][a[2]]=b;end;});for f=1,a[4]do b=b+1;local a=d[b];if a[1]==44 then e[f-1]={c,a[3]};else e[f-1]={h,a[3]};end;i[#i+1]=e;end;c[a[2]]=j(k,g,f);elseif e==27 then c[a[2]]=c[a[3]]+c[a[4]];else c[a[2]]();end;elseif e<=31 then if e<=29 then local a=a[2]c[a]=c[a](c[a+1])elseif e==30 then local b=a[2];local d=c[b];for a=b+1,a[3]do k(d,c[a])end;else local b=a[2]c[b]=c[b](g(c,b+1,a[3]))end;elseif e<=32 then local h;local i;local e;e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];e=a[2]i={c[e](c[e+1])};h=0;for a=e,a[4]do h=h+1;c[a]=i[h];end b=b+1;a=d[b];b=a[3];elseif e>33 then b=a[3];else c[a[2]]=h[a[3]];end;elseif e<=40 then if e<=37 then if e<=35 then c[a[2]]();elseif e>36 then local k=l[a[3]];local g;local e={};g=m({},{__index=function(b,a)local a=e[a];return a[1][a[2]];end,__newindex=function(c,a,b)local a=e[a]a[1][a[2]]=b;end;});for f=1,a[4]do b=b+1;local a=d[b];if a[1]==44 then e[f-1]={c,a[3]};else e[f-1]={h,a[3]};end;i[#i+1]=e;end;c[a[2]]=j(k,g,f);else local d=a[2];local b=c[a[3]];c[d+1]=b;c[d]=b[a[4]];end;elseif e<=38 then local a=a[2]c[a](c[a+1])elseif e>39 then local e;local g;c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];g=a[2];e=c[a[3]];c[g+1]=e;c[g]=e[a[4]];else local a=a[2]c[a](c[a+1])end;elseif e<=43 then if e<=41 then local b=a[2];local d=c[b];for a=b+1,a[3]do k(d,c[a])end;elseif e>42 then c[a[2]]=f[a[3]];else local f;local e;c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];f=c[a[3]];c[e+1]=f;c[e]=f[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];if c[a[2]]then b=b+1;else b=a[3];end;end;elseif e<=44 then c[a[2]]=c[a[3]];elseif e==45 then c[a[2]]=c[a[3]]+c[a[4]];else local a=a[2]c[a]=c[a](c[a+1])end;b=b+1;end;end);end;return j(true,{},p())();end)(string.byte,table.insert,setmetatable);
