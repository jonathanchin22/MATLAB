%False position method of approximation uses a chord between two points on a function to
%determine a new x-value closer to the root of the function.

function root = approximate(x1,x2)
error = 0.0000000001;

%produces an x value for the root of the function that falls beneath a
%certain error threshold
xm = chord(x1,x2);
while abs(func(xm)) > error
    if func(xm) > 0
        x1 = xm;
        xm = chord(xm,x2);
    else 
        x2 = xm;
        xm = chord(x1,xm);
    end
    
end
root = xm;


function y = func(x)
%variable definition
g = 9.81;
m = 65;
v = 35;
t = 4.5;

%function definition
y = (sqrt(g*m/x)*tanh(sqrt(g*x/m)*t))-v ;

%find intermediate x value using false-position
function xm = chord(x1,x2)
y1 = func(x1);
y2 = func(x2);
m = (y2-y1)/(x2-x1);
b = y1 - m*x1;
xm = -b/m;




