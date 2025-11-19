% Rocket Propulsion Application
% Define some constants 
m = 1000;
c = 500;
v0 = 0;
% Use ode45 to solve the differential equation
% Solve for 20,000N 
[t1,N1] = ode45(@(t,v)((20000-c*v)/m), [0 10], v0);
n = length(N1);
plot(t1,N1,'DisplayName','f = 20,000 N')
% Solve for 40,000N 
[t2,N2] = ode45(@(t,v)((40000-c*v)/m), [0 10], v0);
n1 = length(N2);
hold on;
plot(t2,N2,'DisplayName','f = 40,000 N')
% Solve for 60,000N 
[t3,N3] = ode45(@(t,v)((60000-c*v)/m), [0 10], v0);
n2 = length(N3);
hold on;
plot(t3,N3,'DisplayName','f = 60,000 N')
% Solve for 80,000N 
[t4,N4] = ode45(@(t,v)((80000-c*v)/m), [0 10], v0);
n3 = length(N4);
hold on;
plot(t4,N4,'DisplayName','f = 80,000 N')
% Finishing up the graph 
title('Velocity Of A Rocket-Propelled Sled')
xlabel('Time(s)')
ylabel('Velocity(m/s)')
grid on;
legend('location','best')
hold off;

