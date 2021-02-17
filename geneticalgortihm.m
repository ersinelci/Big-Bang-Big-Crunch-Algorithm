classdef genetic
methods(Static)
function error=ise_e(x)
global Kp;
global Ki;
Kp=x(1);
Ki=x(2);
sim('pi');
error=ise(end);
end
function error=ise_esat(x)
global Kp;
global Ki;
Kp=x(1);
Ki=x(2);
sim('pi_sat');
error=ise(end);
end
function error=itse_e(x)
global Kp;
global Ki;
Kp=x(1);
Ki=x(2);
sim('pi');
error=itse(end);
end
function error=itse_esat(x)
global Kp;
global Ki;
Kp=x(1);
Ki=x(2);
sim('pi_sat');
error=itse(end);
end
function error=cost_e (x)
global Kp;
global Ki;
Kp=x(1);
Ki=x(2);
sim('pi');
ost = max(y2.signals.values) - 1;
if (ost < 0)
ost = 0;
end
lower = find(y2.signals.values<0.98,1,'last');
lowerTime = y2.time(lower);
ts = lowerTime;
error = ost * 0.7 + ts * 0.3;
end
function error=cost_esat (x)
global Kp;
global Ki;
Kp=x(1);
Ki=x(2);
sim('pi_sat');
ost = max(y2.signals.values) - 1;
if (ost < 0)
ost = 0;
end
lower = find(y2.signals.values<0.98,1,'last');
lowerTime = y2.time(lower);
ts = lowerTime;
error = ost * 0.7 + ts * 0.3;
end
end
end
