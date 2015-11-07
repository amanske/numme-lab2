%Härledning:
%7x-20cos(3x-5) = 0
%7x=20cos(3x-5)
%x=(20/7)cos(3x-5)
%x/8=(5/14)cos(3x-5)
%x=(7/8)x + (5/14)cos(3x-5)

%F'(x) = 7/8 - (15/14)*sin(3x-5);
%Kan ränkas ut om norm(F'(x)) < 1
%rötterna nummer 1, 3 och 5 satisfierar ekvationen
% 1 = -1.7751, 3 = 0.086, 5 = 1.9413

approx = [-1.8 -1 0 1.5 2];

for x = approx
    
    counter = 1;
    xold = 1;
    while norm(xold-f) > 1e-10 && counter < 100
        f = (7/8)*x + (5/14)*cos(3*x-5);
        counter = counter + 1;
        xold = x;
        x = f;
    end
    disp(x)


end