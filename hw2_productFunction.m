function [Z] = productFunction(X,Y)

     [xRows, xColumns]= size(X);
     [yRows, yColumns]= size(Y);
     % size() Array size

     pad= padarray(X, [yRows - 1, yColumns - 1], 0 ,"post");

     Z= zeros(xRows, xColumns);
     % zeros() Create array of all zeros

for row = 1:xRows
    for column = 1:xColumns
        sub= pad(row:row + yRows-1, column:column + yColumns - 1);
        product= sub .* Y;
        % .* is Element-wise multiplication

        result= sum(product, "all");
        Z(row, column)= result;
    end   
 end
end