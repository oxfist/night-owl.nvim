% MATLAB script: foobar.m

% Defining variables
foo = 'Lorem Ipsum';
bar = 123;

% Displaying variables
disp(['Foo: ', foo]);
disp(['Bar: ', num2str(bar)]);

% Using an array
baz = [1, 2, 3, 4, 5];
disp(baz);

% Using a cell array
qux = {'foo', 'bar'; 'baz', 'qux'};
disp(qux);

% Using control structures
if ismember('foo', qux)
    disp('Found foo');
else
    disp('Did not find foo');
end

% Using a switch statement
switch bar
    case 123
        disp('Bar is 123');
    otherwise
        disp('Bar is not 123');
end

% Using a loop
for i = 1:5
    disp(i);
end

% Using a function
function y = double(x)
    y = 2 * x;
end

disp(['Double of Bar: ', num2str(double(bar))]);
