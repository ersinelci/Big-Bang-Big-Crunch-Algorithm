function result=population_ise()
global Ki;
global Kp;
global population;
global isevalue;
for n=1:1:40
Kp=rand();
Ki=rand();
kp_vals(n,1)=Kp;
ki_vals(n,1)=Ki;
sim('pi');
ise_vals(n,1)=ise(end);
end
population=[kp_vals ki_vals];
maxValues=[max(kp_vals) max(ki_vals)];
minValues=[min(kp_vals) min(ki_vals)];
isevalue=[ise_vals];
for i=1:40
vals=optimal.bbbcf(population,isevalue,maxValues,minValues,i);
Kp = vals(1);
Ki = vals(2);
sim('pi');
if i==1 || minErr>ise(end)
minErr=ise(end);
result=vals;
end
end
Kp = result(1);
Ki = result(2);
end
function result=population_ise_saturation()
global Ki;
global Kp;
global population;
global isevalue;
for n=1:1:40
Kp=rand();
Ki=rand();
kp_vals(n,1)=Kp;
ki_vals(n,1)=Ki;
sim('pi_sat');
ise_vals(n,1)=ise(end);
end
population=[kp_vals ki_vals];
maxValues=[max(kp_vals) max(ki_vals)];
minValues=[min(kp_vals) min(ki_vals)];
isevalue=[ise_vals];
for i=1:40
vals=optimal.bbbcf(population,isevalue,maxValues,minValues,i);
Kp = vals(1);
Ki = vals(2);
sim('pi_sat');
if i==1 || minErr>ise(end)
minErr=ise(end);
result=vals;
end
end
Kp = result(1);
Ki = result(2);
end
function error=itse_error(x)
global Kp;
global Ki;
Kp=x(1);
Ki=x(2);
sim('pi');
error=itse(end);
end
function error=itse_error_saturation(x)
global Kp;
global Ki;
Kp=x(1);
Ki=x(2);
sim('pi_sat');
error=itse(end);
end
function result=population_itse()
global Ki;
global Kp;
for n=1:1:40
Kp=rand();
Ki=rand();
kp_vals(n,1)=Kp;
ki_vals(n,1)=Ki;
sim('pi');
itse_vals(n,1)=itse(end);
end
population=[kp_vals ki_vals];
maxValues=[max(kp_vals) max(ki_vals)];
minValues=[min(kp_vals) min(ki_vals)];
itsevalue=[itse_vals];
for i=1:40
vals=optimal.bbbcf(population,itsevalue,maxValues,minValues,i);
Kp = vals(1);
Ki = vals(2);
sim('pi');
if i==1 || minErr>itse(end)
minErr=itse(end);
result=vals;
end
end
Kp = result(1);
Ki = result(2);
end
function result=population_itse_saturation()
global Ki;
global Kp;
for n=1:1:40
Kp=rand();
Ki=rand();
kp_vals(n,1)=Kp;
ki_vals(n,1)=Ki;
sim('pi_sat');
itse_vals(n,1)=itse(end);
end
population=[kp_vals ki_vals];
maxValues=[max(kp_vals) max(ki_vals)];
minValues=[min(kp_vals) min(ki_vals)];
itsevalue=[itse_vals];
for i=1:40
vals=optimal.bbbcf(population,itsevalue,maxValues,minValues,i);
Kp = vals(1);
Ki = vals(2);
sim('pi_sat');
if i==1 || minErr>itse(end)
minErr=itse(end);
result=vals;
end
end
end
end
end
end
end
