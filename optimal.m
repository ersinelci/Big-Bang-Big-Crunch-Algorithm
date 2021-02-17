 classdef optimal
    methods(Static)
        function error=ise_error(x)
            global Kp;
            global Ki;
            Kp=x(1);
            Ki=x(2);
            sim('pi_model');
            error=ise(end);
        end
        function error=ise_error_saturation(x)
            global Kp;
            global Ki;
            Kp=x(1);
            Ki=x(2);
            sim('pi_model_saturation');
            error=ise(end);
        end
        function error=ise_error_time_delay(x)
            global Kp;
            global Ki;
            Kp=x(1);
            Ki=x(2);
            sim('pi_model_time_delay');
            error=ise(end);
        end
        function error=ise_error_saturation_time_delay(x)
            global Kp;
            global Ki;
            Kp=x(1);
            Ki=x(2);
            sim('pi_model_saturation_time_delay');
            error=ise(end);
        end
    end
 end
 