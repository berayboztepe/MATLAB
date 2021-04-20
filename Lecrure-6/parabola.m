function f = parabola(a,b,c)
f = @p; % handle to the parabola with defined values
    function y = p(x)
       y = a*x^2+b*x+c; 
    end
end

