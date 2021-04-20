%% for loop

x = randi(100, 1, 100); % to generate random 100 values between 1-100

plot(x);
b = zeros(1,100);

% tic and toc means what time does it take
% result = Elapsed time is 0.002787 seconds.
tic
for i=1:100
   b(i) = x(i)^2;
end
toc

%% let's do the same with 1000 elements

% Elapsed time is 0.002120 seconds.
x = randi(100, 1, 1000); 

plot(x);
b = zeros(1,length(x));

tic
for i=1:length(x)    
   b(i) = x(i)^2;
end
toc

%% if else
x = randi(100, 1, 10); 
b = zeros(1,length(x));
idx = 1:length(x);

tic
for i=1:length(x)
    if x(i) <= 50
        b(i) = 0;
    end
    
   b(i) = x(i)^2;
end
toc
plot(idx, x, idx, b);
