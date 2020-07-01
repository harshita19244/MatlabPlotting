%{Name : Harshita Srinivas
%Roll no: 2019244
%Section B Group 2
%}

% ANALYSING EXPERIMENT 1
%input array x containing the time gap obtained between thirty messages
x=[1;4;6;12;22;24;34;45;54;68;68;78;78;88;88;90;93;178;182;395;583;900;902;1284;2040;2949;3245;3600;3628;9303];
figure;

%plots histogram for given data
histogram(x);

%fits a density function in the histogram so obtained
histfit(x);
pd=fitdist(x,'Normal');
pb1=cdf(pd,[pd.mu]);
fprintf('probability obtained for element to be less than the expected value: Part1 ');
disp(pb1);

a=[];

% we traverse through the input array to find elements that are less than the mean value of the distribution
for i=1:length(x)
    if x(i)<pd.mu
        s=x(i);
        a(i)=s;
    end
end

%disp(a);

% ANALYSING EXPERIMENT 2
newarr=[16;32;33;48;90;200;233;563;899;1030];
pd1=fitdist(newarr,'Normal');
pb1=cdf(pd1,[pd1.mu]);
fprintf('probability obtained for element to be less than the expected value: Part 2');
disp(pb1);

head=[];
tails=[];
for i=1:length(newarr)
    if newarr(i)<pd1.mu
        s=newarr(i);
        head(i)=s;
    else
        s=newarr(i);
        tails(i)=s;
    end
end

%disp(head);
%disp(tails);

% head array contains all those elements whose value is less than the expected value
%length of headarray gives no.of heads in all
headlength=length(head);
fprintf("No. of heads");
disp(headlength);

%since there are only two possible outcomes,Elements that do not correspond to the head array go into the tail array
%length of tailarray gives number of tails
taillength=length(newarr)-headlength;
fprintf("No. of tails");
disp(taillength);
