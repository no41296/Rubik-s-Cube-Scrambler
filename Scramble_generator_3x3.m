x = ['R', 'L', 'D', 'B', 'F', 'U'];
a = ['2 ', "' ", ' ' ];
y = [25, 26, 27];
len = y(randi(3, 1));
scramble = strings(1, 2*len);
for i = 1:(len)
    scramble(1, 2*i - 1) = x(randi(length(x), 1));
    scramble(1, 2*i) = a(randi(3, 1));
end

fprintf('%s', scramble)
fprintf('\n')

for i = 1:len - 1
    while scramble(1, (2*i - 1)) == scramble(1, (2*i + 1))
        scramble(1, (2*i + 1)) = x(randi(length(x), 1));
    end
end

%fprintf('%s', scramble)
%fprintf('\n')

for i = 1:len - 3
     while scramble(1, (2*i - 1)) == 'R' && scramble(1, 2*i + 1) == 'L' && scramble(1, 2*i + 3) == 'R'
         scramble(1, (2*i + 1)) = x(randi(length(x), 1));
         while scramble(1, (2*i + 1)) == scramble(1, 2*i + 3)
             scramble(1, (2*i + 1)) = x(randi(length(x), 1));
         end
     end
     while scramble(1, (2*i - 1)) == 'U' && scramble(1, (2*i + 1)) == 'D' && scramble(1, (2*i + 3)) == 'U'
         scramble(1, (2*i + 1)) = x(randi(length(x), 1));
         while scramble(1, (2*i + 1)) == scramble(1, 2*i + 3)
             scramble(1, (2*i + 1)) = x(randi(length(x), 1));
         end
     end
     while scramble(1, (2*i - 1)) == 'F' && scramble(1, (2*i + 1)) == 'B' && scramble(1, (2*i + 3)) == 'F'
         scramble(1, (2*i + 1)) = x(randi(length(x), 1));
         while scramble(1, (2*i + 1)) == scramble(1, 2*i + 3)
             scramble(1, (2*i + 1)) = x(randi(length(x), 1));
         end
     end
     while scramble(1, 2*i - 1) == 'L' && scramble(1, 2*i + 1) == 'R' && scramble(1, 2*i + 3) == 'L'
         scramble(1, (2*i + 1)) = x(randi(length(x), 1));
         while scramble(1, (2*i + 1)) == scramble(1, 2*i + 3)
             scramble(1, (2*i + 1)) = x(randi(length(x), 1));
         end
     end
     while scramble(1, (2*i - 1)) == 'D' && scramble(1, (2*i + 1)) == 'U' && scramble(1, (2*i + 3)) == 'D'
         scramble(1, (2*i + 1)) = x(randi(length(x), 1));
         while scramble(1, (2*i + 1)) == scramble(1, 2*i + 3)
             scramble(1, (2*i + 1)) = x(randi(length(x), 1));
         end
     end
     while scramble(1, (2*i - 1)) == 'B' && scramble(1, (2*i + 1)) == 'F' && scramble(1, (2*i + 3)) == 'B'
         scramble(1, (2*i + 1)) = x(randi(length(x), 1));
         while scramble(1, (2*i + 1)) == scramble(1, 2*i + 3)
             scramble(1, (2*i + 1)) = x(randi(length(x), 1));
         end
     end
end

% fprintf('%s', scramble)
% fprintf('\n')

f1 = figure();
f1.Units = 'normalized';
f1.OuterPosition = [0, 0, 1, 1];

axis equal
axis([0 15 0 15])
axis off

scramblestr = join(scramble);
text(-5.7, 15, scramblestr, 'FontName', "Arial", 'FontSize', 20, 'FontWeight', 'bold');

squarray1 = gobjects(3, 3);
squarray2 = gobjects(3, 3);
squarray3 = gobjects(3, 3);
squarray4 = gobjects(3, 3);
squarray5 = gobjects(3, 3);
squarray6 = gobjects(3, 3);


for i = 1:3
    for j = 1:3
       squarray1(i, j) = rectangle('Position',[(4+i + 0.1*(i-1)) (4+j +0.1*(j - 1)) 1 1], 'FaceColor', [0, 1, 0], 'LineWidth', 0.5);
       squarray2(i, j) = rectangle('Position',[(4+i + 0.1*(i-1)) (7.4+j +0.1*(j - 1)) 1 1], 'FaceColor', [1, 1, 1], 'LineWidth', 0.5);
       squarray3(i, j) = rectangle('Position',[(4+i + 0.1*(i-1)) (0.6+j +0.1*(j - 1)) 1 1], 'FaceColor', [1, 1, 0], 'LineWidth', 0.5);
       squarray4(i, j) = rectangle('Position',[(7.4+i + 0.1*(i-1)) (4+j +0.1*(j - 1)) 1 1], 'FaceColor', [1, 0, 0], 'LineWidth', 0.5);
       squarray5(i, j) = rectangle('Position',[(10.8+i + 0.1*(i-1)) (4+j +0.1*(j - 1)) 1 1], 'FaceColor', [0, 0, 1], 'LineWidth', 0.5);
       squarray6(i, j) = rectangle('Position',[(0.6+i + 0.1*(i-1)) (4+j +0.1*(j - 1)) 1 1], 'FaceColor', [1, 0.6, 0], 'LineWidth', 0.5);
    end
end

for i = 1:len
    if scramble(1, 2*i-1) == 'R' & scramble(1, 2*i) == ' '
        Rturn(squarray1, squarray2, squarray3, squarray5, squarray4);
    elseif scramble(1, 2*i-1) == 'R' & scramble(1, 2*i) == "' "
        Rturna(squarray1, squarray2, squarray3, squarray5, squarray4);
    elseif scramble(1, 2*i-1) == 'R' & scramble(1, 2*i) == "2 "
        Rturn(squarray1, squarray2, squarray3, squarray5, squarray4);
        Rturn(squarray1, squarray2, squarray3, squarray5, squarray4);
    elseif scramble(1, 2*i-1) == 'U' & scramble(1, 2*i) == ' '
        Uturn(squarray1, squarray4, squarray5, squarray6, squarray2);
    elseif scramble(1, 2*i-1) == 'U' & scramble(1, 2*i) == "' "
        Uturna(squarray1, squarray4, squarray5, squarray6, squarray2);
    elseif scramble(1, 2*i-1) == 'U' & scramble(1, 2*i) == "2 "
        Uturn(squarray1, squarray4, squarray5, squarray6, squarray2);
        Uturn(squarray1, squarray4, squarray5, squarray6, squarray2);
    elseif scramble(1, 2*i-1) == 'F' & scramble(1, 2*i) == " "
        Fturn(squarray2, squarray6, squarray3, squarray4, squarray1);
    elseif scramble(1, 2*i-1) == 'F' & scramble(1, 2*i) == "' "
        Fturna(squarray2, squarray6, squarray3, squarray4, squarray1);
    elseif scramble(1, 2*i-1) == 'F' & scramble(1, 2*i) == "2 "
        Fturn(squarray2, squarray6, squarray3, squarray4, squarray1);
        Fturn(squarray2, squarray6, squarray3, squarray4, squarray1);
    elseif scramble(1, 2*i-1) == 'D' & scramble(1, 2*i) == ' '
        Dturn(squarray1, squarray4, squarray5, squarray6, squarray3);
    elseif scramble(1, 2*i-1) == 'D' & scramble(1, 2*i) == "' "
        Dturna(squarray1, squarray4, squarray5, squarray6, squarray3);
    elseif scramble(1, 2*i-1) == 'D' & scramble(1, 2*i) == "2 "
        Dturn(squarray1, squarray4, squarray5, squarray6, squarray3);
        Dturn(squarray1, squarray4, squarray5, squarray6, squarray3);
    elseif scramble(1, 2*i-1) == 'L' & scramble(1, 2*i) == " "
        Lturn(squarray2, squarray3, squarray1, squarray5, squarray6);
    elseif scramble(1, 2*i-1) == 'L' & scramble(1, 2*i) == "' "
        Lturna(squarray2, squarray3, squarray1, squarray5, squarray6);
    elseif scramble(1, 2*i-1) == 'L' & scramble(1, 2*i) == "2 "
        Lturn(squarray2, squarray3, squarray1, squarray5, squarray6);
        Lturn(squarray2, squarray3, squarray1, squarray5, squarray6);
    elseif scramble(1, 2*i-1) == 'B' & scramble(1, 2*i) == " "
        Bturn(squarray6, squarray2, squarray3, squarray4, squarray5);
    elseif scramble(1, 2*i-1) == 'B' & scramble(1, 2*i) == "' "
        Bturna(squarray6, squarray2, squarray3, squarray4, squarray5);
    elseif scramble(1, 2*i-1) == 'B' & scramble(1, 2*i) == "2 "
        Bturn(squarray6, squarray2, squarray3, squarray4, squarray5);
        Bturn(squarray6, squarray2, squarray3, squarray4, squarray5);
    end
end

function rotatecw(squarray)
    [squarray(2,3).FaceColor, squarray(1,2).FaceColor] = deal(squarray(1, 2).FaceColor, squarray(2, 3).FaceColor);
    [squarray(1,2).FaceColor, squarray(2,1).FaceColor] = deal(squarray(2,1).FaceColor, squarray(1,2).FaceColor);
    [squarray(2,1).FaceColor, squarray(3,2).FaceColor] = deal(squarray(3,2).FaceColor, squarray(2,1).FaceColor);
    [squarray(1,1).FaceColor, squarray(3,1).FaceColor] = deal(squarray(3,1).FaceColor, squarray(1,1).FaceColor);
    [squarray(3,1).FaceColor, squarray(3,3).FaceColor] = deal(squarray(3,3).FaceColor, squarray(3,1).FaceColor);
    [squarray(3,3).FaceColor, squarray(1,3).FaceColor] = deal(squarray(1,3).FaceColor, squarray(3,3).FaceColor);
end

function Uturn(squarray1, squarray4, squarray5, squarray6, squarray2)
    for i = 1:3
        [squarray1(i, 3).FaceColor, squarray4(i, 3).FaceColor] = deal(squarray4(i, 3).FaceColor, squarray1(i, 3).FaceColor);
        [squarray4(i, 3).FaceColor, squarray5(i, 3).FaceColor] = deal(squarray5(i, 3).FaceColor, squarray4(i, 3).FaceColor);
        [squarray5(i, 3).FaceColor, squarray6(i, 3).FaceColor] = deal(squarray6(i, 3).FaceColor, squarray5(i, 3).FaceColor);
    end
    rotatecw(squarray2);
end

function Uturna(squarray1, squarray4, squarray5, squarray6, squarray2)
    for j = 1:3
        for i = 1:3
            [squarray1(i, 3).FaceColor, squarray4(i, 3).FaceColor] = deal(squarray4(i, 3).FaceColor, squarray1(i, 3).FaceColor);
            [squarray4(i, 3).FaceColor, squarray5(i, 3).FaceColor] = deal(squarray5(i, 3).FaceColor, squarray4(i, 3).FaceColor);
            [squarray5(i, 3).FaceColor, squarray6(i, 3).FaceColor] = deal(squarray6(i, 3).FaceColor, squarray5(i, 3).FaceColor);
        end
        rotatecw(squarray2);
    end
end

function Rturn(squarray1, squarray2, squarray3, squarray5, squarray4)
    for i = 1:3
        [squarray1(3, i).FaceColor, squarray2(3, i).FaceColor] = deal(squarray2(3, i).FaceColor, squarray1(3, i).FaceColor);
        [squarray1(3, i).FaceColor, squarray3(3, i).FaceColor] = deal(squarray3(3, i).FaceColor, squarray1(3, i).FaceColor);
        [squarray3(3, i).FaceColor, squarray5(1, 3-(i-1)).FaceColor] = deal(squarray5(1, 3-(i-1)).FaceColor, squarray3(3, i).FaceColor);
    end
    rotatecw(squarray4);
end

function Rturna(squarray1, squarray2, squarray3, squarray5, squarray4)
    for j = 1:3
        for i = 1:3
            [squarray1(3, i).FaceColor, squarray2(3, i).FaceColor] = deal(squarray2(3, i).FaceColor, squarray1(3, i).FaceColor);
            [squarray1(3, i).FaceColor, squarray3(3, i).FaceColor] = deal(squarray3(3, i).FaceColor, squarray1(3, i).FaceColor);
            [squarray3(3, i).FaceColor, squarray5(1, 3-(i-1)).FaceColor] = deal(squarray5(1, 3-(i-1)).FaceColor, squarray3(3, i).FaceColor);
        end
        rotatecw(squarray4);
    end
end

function Dturn(squarray1, squarray4, squarray5, squarray6, squarray3)
    for i = 1:3
        [squarray1(i, 1).FaceColor, squarray4(i, 1).FaceColor] = deal(squarray4(i, 1).FaceColor, squarray1(i, 1).FaceColor);
        [squarray6(i, 1).FaceColor, squarray1(i, 1).FaceColor] = deal(squarray1(i, 1).FaceColor, squarray6(i, 1).FaceColor);
        [squarray5(i, 1).FaceColor, squarray6(i, 1).FaceColor] = deal(squarray6(i, 1).FaceColor, squarray5(i, 1).FaceColor);
    end
    rotatecw(squarray3);
end

function Dturna(squarray1, squarray4, squarray5, squarray6, squarray3)
    for j = 1:3
        for i = 1:3
            [squarray1(i, 1).FaceColor, squarray4(i, 1).FaceColor] = deal(squarray4(i, 1).FaceColor, squarray1(i, 1).FaceColor);
            [squarray6(i, 1).FaceColor, squarray1(i, 1).FaceColor] = deal(squarray1(i, 1).FaceColor, squarray6(i, 1).FaceColor);
            [squarray5(i, 1).FaceColor, squarray6(i, 1).FaceColor] = deal(squarray6(i, 1).FaceColor, squarray5(i, 1).FaceColor);
        end
        rotatecw(squarray3);
    end
end

function Fturn(squarray2, squarray6, squarray3, squarray4, squarray1)
    for i = 1:3
        [squarray2(i, 1).FaceColor, squarray4(1, 3-(i-1)).FaceColor] = deal(squarray4(1, 3-(i-1)).FaceColor, squarray2(i, 1).FaceColor);
        [squarray6(3, i).FaceColor, squarray2(i, 1).FaceColor] = deal(squarray2(i, 1).FaceColor, squarray6(3, i).FaceColor);
        [squarray3(3-(i-1), 3).FaceColor, squarray6(3, i).FaceColor] = deal(squarray6(3, i).FaceColor, squarray3(3-(i-1), 3).FaceColor);
    end
    rotatecw(squarray1);
end

function Fturna(squarray2, squarray6, squarray3, squarray4, squarray1)
    for j = 1:3
        for i = 1:3
            [squarray2(i, 1).FaceColor, squarray4(1, 3-(i-1)).FaceColor] = deal(squarray4(1, 3-(i-1)).FaceColor, squarray2(i, 1).FaceColor);
            [squarray6(3, i).FaceColor, squarray2(i, 1).FaceColor] = deal(squarray2(i, 1).FaceColor, squarray6(3, i).FaceColor);
            [squarray3(3-(i-1), 3).FaceColor, squarray6(3, i).FaceColor] = deal(squarray6(3, i).FaceColor, squarray3(3-(i-1), 3).FaceColor);
        end
        rotatecw(squarray1);
    end
end

function Lturn(squarray2, squarray3, squarray1, squarray5, squarray6)
    for i = 1:3
        [squarray2(1, i).FaceColor, squarray1(1, i).FaceColor] = deal(squarray1(1, i).FaceColor, squarray2(1, i).FaceColor);
        [squarray5(3, 3-(i-1)).FaceColor, squarray2(1, i).FaceColor] = deal(squarray2(1, i).FaceColor, squarray5(3, 3-(i-1)).FaceColor);
        [squarray3(1, i).FaceColor, squarray5(3, 3-(i-1)).FaceColor] = deal(squarray5(3, 3-(i-1)).FaceColor, squarray3(1, i).FaceColor);
    end
    rotatecw(squarray6);
end

function Lturna(squarray2, squarray3, squarray1, squarray5, squarray6)
    for j = 1:3
        for i = 1:3
            [squarray2(1, i).FaceColor, squarray1(1, i).FaceColor] = deal(squarray1(1, i).FaceColor, squarray2(1, i).FaceColor);
            [squarray5(3, 3-(i-1)).FaceColor, squarray2(1, i).FaceColor] = deal(squarray2(1, i).FaceColor, squarray5(3, 3-(i-1)).FaceColor);
            [squarray3(1, i).FaceColor, squarray5(3, 3-(i-1)).FaceColor] = deal(squarray5(3, 3-(i-1)).FaceColor, squarray3(1, i).FaceColor);
        end
        rotatecw(squarray6);
    end
end

function Bturn(squarray6, squarray2, squarray3, squarray4, squarray5)
    for i = 1:3
        [squarray2(i, 3).FaceColor, squarray6(1, i).FaceColor] = deal(squarray6(1, i).FaceColor, squarray2(i, 3).FaceColor);
        [squarray4(3, 3-(i-1)).FaceColor, squarray2(i, 3).FaceColor] = deal(squarray2(i, 3).FaceColor, squarray4(3, 3-(i-1)).FaceColor);
        [squarray4(3, 3-(i-1)).FaceColor, squarray3(3-(i-1), 1).FaceColor] = deal(squarray3(3-(i-1), 1).FaceColor, squarray4(3, 3-(i-1)).FaceColor);
    end
    rotatecw(squarray5);
end

function Bturna(squarray6, squarray2, squarray3, squarray4, squarray5)
    for j = 1:3
        for i = 1:3
            [squarray2(i, 3).FaceColor, squarray6(1, i).FaceColor] = deal(squarray6(1, i).FaceColor, squarray2(i, 3).FaceColor);
            [squarray4(3, 3-(i-1)).FaceColor, squarray2(i, 3).FaceColor] = deal(squarray2(i, 3).FaceColor, squarray4(3, 3-(i-1)).FaceColor);
            [squarray4(3, 3-(i-1)).FaceColor, squarray3(3-(i-1), 1).FaceColor] = deal(squarray3(3-(i-1), 1).FaceColor, squarray4(3, 3-(i-1)).FaceColor);
        end
        rotatecw(squarray5);
    end
end