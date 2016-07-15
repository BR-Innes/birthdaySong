function birthdaySong(name)
%% birthdaySong(name)
% Plays happy birthday with command line output 'Happy Birthday [name] !!!'
% Takes name as a string input e.g. themePlay('Bobby'). 
% If no input is given it'll write 'Happy Birthday Friend !!!'.
% TIP: Specify your friend's actual name to avoid triggering the default 
% and seeming like a distant jerk.

if nargin < 1 
    name = 'Friend'; 
end 

%~Theme 
rawFreqs = [329.63, 0, 329.63, 369.99, 329.63, 440, 415.3, 0,...
            329.63, 0, 329.63, 369.99, 329.63, 493.88, 440, 0,...
            329.63, 0, 329.63, 659.25, 554.37, 440, 415.3, 369.99, 0,...
            587.33, 0, 587.33, 554.37, 440, 493.88, 440];

timeNotes = [0.05, 0.1, 0.1, 0.2, 0.2, 0.2, 0.2, 0.3,...
            0.05, 0.1, 0.1, 0.2, 0.2, 0.2, 0.2, 0.3,...
            0.05, 0.1, 0.1, 0.2, 0.2, 0.2, 0.2, 0.2, 0.3...
            0.05, 0.1, 0.1, 0.2, 0.2, 0.2, 0.2];

%~Make the notes and play them
notes = [rawFreqs; timeNotes];  
for i = 1:length(notes)
    playtone(notes(1, i), notes(2, i)); 
    disp(['~~~ Happy Birthday ' name '!!! ~~~']); 
end 

end 

%~Function that generates the notes/pauses
function playtone(f, d)
    if f == 0  
        pause(d)
    else 
        s = 8000; 
        n = d*s; 	
        t = 1:n;
        tone = sin(2*pi*f*t/s);
        sound(tone, s);
        pause(d); 
    end 
end 