%% Калибровка магнитометра
% Калибровка магнитометра упрощенным методом
% Компенсация hard iron (смещение центра) и soft iron (неравенство амплитуд осей) погрешностей
% Компенсирует смещение и растяжение сферы измерений в эллипсоид, не компенсирует
% поворот эллипсоида.

%% Графики данных
% Данные (измерения датчика), вращение магнитометра вокруг всех 3-х осей
x = xyz(:,1);
y = xyz(:,2);
z = xyz(:,3);

% Графики
plot3(x,y,z,'o')
xlabel("x"); ylabel("y"); zlabel("z"); grid on; hold on
axis equal

%% Hard Iron помехи
x_c = (max(x)+min(x))/2; % поиск центра
y_c = (max(y)+min(y))/2;
z_c = (max(z)+min(z))/2;

x_h = x - x_c; % hard iron, смещение центра в 0
y_h = y - y_c;
z_h = z - z_c;

% Графики
plot(x_h,y_h)
plot(y_h,z_h)
plot(x_h,z_h)
grid on; hold on

plot3(x_h,y_h,z_h)
grid on; hold on

%% Soft Iron помехи
ax = max(x_h)-min(x_h); % поиск амплитуды
ay = max(y_h)-min(y_h);
az = max(z_h)-min(z_h);

a = [ax ay az];
meanA = mean(a); % (ax+ay+az)/3, средняя амплитуда

kx_s = meanA/a(1); % коэффициент усиления по оси для их равенства
ky_s = meanA/a(2);
kz_s = meanA/a(3);

x_s = kx_s*x_h; % soft iron, равенство осей
y_s = ky_s*y_h;
z_s = kz_s*z_h;

% Графики
plot(x_s,y_s)
plot(y_s,z_s)
plot(x_s,z_s)
grid on; hold on

plot3(x_s,y_s,z_s)
xlabel("x"); ylabel("y"); zlabel("z"); grid on; hold on
axis equal

