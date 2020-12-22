function q= MyPutText(varargin)
% MyPutText allows labeling in any type of plots.
%It functions in both interactive and non-interactive mode.
%
%        To enter INTERACTIVE MODE follow MYPUTTEXT('str').
%Interactive mode allows the user to also arguments to modify the text.
%To modify the text through interactive mode MyPutText('str', ARGUMENTS).
%
%To provide a prompt to the user enter MyPutText('str','Prompt','txt').
%When a prompt is provided, arguments can also be added to  modify text.
%It will follow as MyPutText('str','Prompt','txt', ARGUMENTS).
%
%        To enter NON-INTERACTIVE MODE.
%The second input following the text that you desire on screen must be in
%terms of x and y.
%Follow MyPutText('str',[xval,yval]) to plot a point in non-interactive
%mode.
%To modify the text in non-interactive mode
%MyPutText('str',[xval,yval],ARGUMENTS)
%
%
%See also GINPUT,TEXT,PLOT,FPRINTF.
%
%
%ME021 Spring 2020

if nargin == 1  
    [x , y, button] = ginput (1); 
    words = varargin{1};
    while button == 1
        q = text(x,y,words);
        [x , y, button] = ginput (1); 
        if button == 1
            FX = x;
            FY = y;
            fprintf(1,'Coordinates selected: [%f,%f]\n',x,y)
            delete(q)
        else
            fprintf('Set Coordinates: [%f,%f]\n',FX,FY)
            
        end
    end 
elseif nargin >= 2 
if isnumeric(varargin{2}) ==1     
    if class(varargin{2}) == 'double'
        words = varargin{1};
        M = varargin{2};
        S1 = M(1);
        S2 = M(2);
        fprintf('Set  coordinates: [%.1f,%.1f]\n',S1,S2)
        q = text(S1,S2, words, varargin{3:end});
    end
elseif isnumeric (varargin{2}) == 0
    if isequal(varargin{2},'Prompt') == 1
        word = varargin{1};
        prom = varargin{3};
        fprintf(1,'Prompt given:%s\n',prom)
        [x , y, button] = ginput (1); 
        while button == 1
            q = text(x,y,word,varargin{4:end});
            [x , y, button] = ginput (1);
            if button == 1
            FX = x;
            FY = y;
            fprintf(1,'Prompt given:%s\n',prom)
            fprintf(1,'Coordinates selected: [%f,%f]\n',x,y)
            delete(q)
            else
                fprintf('Set Coordinates: [%f,%f]\n',FX,FY)
            end
        end
    elseif isequal(varargin{2},'Prompt') == 0
        [x , y, button] = ginput (1); 
    while button == 1
        q = text(x,y,varargin{:});
        [x , y, button] = ginput (1);
        if button == 1
            FX = x;
            FY = y;
            fprintf(1,'Coordinates selected: [%f,%f]\n',x,y)
            delete(q)
        else
            fprintf('Set Coordinates: [%f,%f]\n',FX,FY)
        end
    end
    end
end
end
end






