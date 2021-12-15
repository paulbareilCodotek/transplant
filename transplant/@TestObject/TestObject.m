classdef TestObject  < handle
    
    properties
        
        attribute        = 12345;
        ref_object;
        
    end
    
    methods
        
        function set.attribute(obj, value)
            obj.attribute = value;
        end
        function set.ref_object(obj, value)
            obj.ref_object = value;
        end
        function obj = TestObject(value)
            
            
            if nargin >= 1
                obj.attribute = value;
            else
                error('Provide value')
            end
        end
        function badCode(obj)
            % Access unknown variable to make it raise an error
            obj.crash = True;
        end
        
    end
end