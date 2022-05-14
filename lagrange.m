function l = lagrange(x,y)
n = length(x);
l=0;
for i = 1:n
    il = 1;
    for j = 1:n
        if j ~= i
            il = il .* (x - x(j))./(x(i)-x(j));
        end   
    end
    l = l + il .* y(i);
end