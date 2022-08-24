classdef myuint32 < uint32
    %MYUNIT32 Summary of this class goes here
    %   Detailed explanation goes here
    
    methods(Static)
        function obj = myuint32( val )
            obj = obj@uint32( val );
        end
    
        function res = minus(obj,valToSubtract)
            res = double( obj ) - double( valToSubtract );
            res = myuint32(mod(res,2^32));
        end

        function res = plus(obj,valToAdd)
            res = double( obj ) + double( valToAdd );
            res = myuint32(mod(res,2^32));
        end

        function z = zeros(varargin)
            if (nargin == 0)
                z = myuint32(0);
            elseif any([varargin{:}] <= 0)
                z = myuint32.empty(varargin{:});
            else
                z = repmat(myuint32(0),varargin{:});
            end
        end
    end

end

