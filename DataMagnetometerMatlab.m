%% Данные магнитометра
% Генерация данных магнитоматра по 3 осям XYZ

%% Данные идеального магнитометра
N = 500;
rng(1);
acc = zeros(N,3);
av = zeros(N,3);
q = randrot(N,1); % равномерно распределенные случайные вращения
imu = imuSensor('accel-mag');
[~,xyz] = imu(acc,av,q);
scatter3(xyz(:,1),xyz(:,2),xyz(:,3));
axis equal
title('Данные идеального магнитометра');

%% Данные магнитометра со смещением Hard Iron
imu.Magnetometer.ConstantBias = [2 10 40];
[~,xyz] = imu(acc,av,q);
figure;
scatter3(xyz(:,1),xyz(:,2),xyz(:,3));
axis equal
title('Данные магнитометра со смещением Hard Iron');

%% Данные магнитометра с эффектами Hard Iron и Soft Iron
nedmf = imu.MagneticField;
Rsoft = [2.5 0.3 0.5; 0.3 2 .2; 0.5 0.2 3];
%Rsoft = [1 0 0; 0 1 0; 0 0 1];
soft = rotateframe(conj(q),rotateframe(q,nedmf)*Rsoft);
for ii=1:numel(q)
    imu.MagneticField = soft(ii,:);
    [~,xyz(ii,:)] = imu(acc(ii,:),av(ii,:),q(ii));
end
figure;
scatter3(xyz(:,1),xyz(:,2),xyz(:,3));
axis equal
title('Данные магнитометра с эффектами Hard Iron и Soft Iron');
 