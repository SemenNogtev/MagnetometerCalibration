%% ���������� ������������
% ���������� ������������ ���������� �������
% ����������� hard iron (�������� ������) � soft iron (����������� �������� ����) ������������
% ������������ �������� � ���������� ����� ��������� � ���������, �� ������������
% ������� ����������.

%% ������� ������
% ������ (��������� �������), �������� ������������ ������ ���� 3-� ����
x = xyz(:,1);
y = xyz(:,2);
z = xyz(:,3);

% �������
plot3(x,y,z,'o')
xlabel("x"); ylabel("y"); zlabel("z"); grid on; hold on
axis equal

%% Hard Iron ������
x_c = (max(x)+min(x))/2; % ����� ������
y_c = (max(y)+min(y))/2;
z_c = (max(z)+min(z))/2;

x_h = x - x_c; % hard iron, �������� ������ � 0
y_h = y - y_c;
z_h = z - z_c;

% �������
plot(x_h,y_h)
plot(y_h,z_h)
plot(x_h,z_h)
grid on; hold on

plot3(x_h,y_h,z_h)
grid on; hold on

%% Soft Iron ������
ax = max(x_h)-min(x_h); % ����� ���������
ay = max(y_h)-min(y_h);
az = max(z_h)-min(z_h);

a = [ax ay az];
meanA = mean(a); % (ax+ay+az)/3, ������� ���������

kx_s = meanA/a(1); % ����������� �������� �� ��� ��� �� ���������
ky_s = meanA/a(2);
kz_s = meanA/a(3);

x_s = kx_s*x_h; % soft iron, ��������� ����
y_s = ky_s*y_h;
z_s = kz_s*z_h;

% �������
plot(x_s,y_s)
plot(y_s,z_s)
plot(x_s,z_s)
grid on; hold on

plot3(x_s,y_s,z_s)
xlabel("x"); ylabel("y"); zlabel("z"); grid on; hold on
axis equal

