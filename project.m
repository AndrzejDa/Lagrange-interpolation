%wezly interpolacyjne
xi=[21, 40, 61, 77];
yi=[-0.191, -0.533, -0.843, -1.005];
n = length(yi);

%zadane punkty do sprawdzenia
xk = [26, 45, 56, 82];

%obliczanie wartosci funkcji interpolujacej dla zadanych wartosci
for k = 1:length(xk)
    suma= 0;
    x = xk(k);
    for i = 1:n
        iloczyn = 1;
        for j = 1:n
            if j ~= i
                iloczyn = iloczyn * (x - xi(j))/(xi(i)-xi(j));
            end   
        end
        suma = suma + iloczyn * yi(i);
    end
    txt = ['wartosc funkcji interpolujacej dla x', num2str(k), '=', num2str(xk(k)), ' f(x', num2str(k), ')' ,'= ', num2str(suma)];
    disp(txt);
end

%wykres funkcji interpolujacej
L = lagrange(xi,yi);
plot(xi,L);