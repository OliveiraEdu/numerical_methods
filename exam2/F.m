function y=F(x,func)
    for i=1:size(x,1)
      y(i,1)=func{i}(x);    
    end
end