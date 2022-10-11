clc;clear all;close all; 
a = newfis('pabrik'); 
a = addvar(a,'input','suhu',[0,38]); 
a = addmf(a,'input',1,'rendah','trimf',[18,22,26]); 
a = addmf(a,'input',1,'normal','trimf',[22,26,32]);
a = addmf(a,'input',1,'tinggi','trimf',[26,32,38]);

a = addvar(a,'input','kebisingan',[0,105]); 
a = addmf(a,'input',2,'tenang','trimf',[35,55,75]); 
a = addmf(a,'input',2,'agakbising','trimf',[55,75,90]); 
a = addmf(a,'input',2,'bising','trimf',[75,90,105]);

a = addvar(a,'input','pencahayaan',[0,700]); 
a = addmf(a,'input',3,'redup','trimf',[0,150,300]); 
a = addmf(a,'input',3,'agakterang','trimf',[150,300,500]); 
a = addmf(a,'input',3,'terang','trimf',[300,500,700]);

a = addvar(a,'output','produksi',[0,160]); 
a = addmf(a,'output',1,'sedikit','trimf', [127,133,141]); 
a = addmf(a,'output',1,'sedang','trimf', [137,143,151]); 
a = addmf(a,'output',1,'banyak','trimf', [147,153,159]);

rule1 = [1 1 1 2 1 1]; 
rule2 = [1 1 2 3 1 1]; 
rule3 = [1 1 3 2 1 1];
rule4 = [1 2 1 2 1 1];
rule5 = [1 2 2 2 1 1];
rule6 = [1 2 3 2 1 1];
rule7 = [1 3 1 1 1 1];
rule8 = [1 3 2 2 1 1];
rule9 = [1 3 3 1 1 1];
rule10 = [2 1 1 2 1 1];
rule11 = [2 1 2 3 1 1];
rule12 = [2 1 3 3 1 1];
rule13 = [2 2 1 2 1 1];
rule14 = [2 2 2 3 1 1];
rule15 = [2 2 3 2 1 1];
rule16 = [2 3 1 2 1 1];
rule17 = [2 3 2 2 1 1];
rule18 = [2 3 3 2 1 1];
rule19 = [3 1 1 2 1 1];
rule20 = [3 1 2 2 1 1];
rule21 = [3 1 3 2 1 1];
rule22 = [3 2 1 1 1 1];
rule23 = [3 2 2 2 1 1];
rule24 = [3 2 3 1 1 1];
rule25 = [3 3 1 1 1 1];
rule26 = [3 3 2 1 1 1];
rule27 = [3 3 3 1 1 1];

ruleList = [rule1;rule2;rule3;rule4;rule5;rule6;rule7;rule8;rule9;rule10;rule11;rule12;rule13;rule14;rule15;rule16;rule17;rule18;rule19;rule20;rule21;rule22;rule23;rule24;rule25;rule26;rule27]; 
a = addrule(a,ruleList); 
showrule(a)





fuzzy(a)

ruleview(a)




