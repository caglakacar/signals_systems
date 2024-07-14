M=readmatrix('walking.txt');
[n,p]= size(M); 
t=1:n;          
plot(t,M);
legend('X','Y','Z'); 
xlabel('Relative Time (s)');
ylabel('Acceleration (m/s^2)');

x=M(:,1);
y=M(:,2);
z=M(:,3);
mag=sqrt(sum(x.^2 + y.^2 + z.^2, 2));

figure 
plot(t,mag);
xlabel('Time (s)');
ylabel('Acceleration (m/s^2)');

magNoG=mag-mean(mag);
figure
plot(t,magNoG);
xlabel('Time (s)');
ylabel('Acceleration (m/s^2)');

minPeakHeight=std(magNoG);
[pks,locs]=findpeaks(magNoG, 'MINPEAKHEIGHT', minPeakHeight);
numSteps=numel(pks);

hold on;
plot(t(locs),pks,'r', 'Marker', 'v', 'LineStyle', 'none');
xlabel('Time (s)');
ylabel('Acceleration (m/s^2)');
hold off;
