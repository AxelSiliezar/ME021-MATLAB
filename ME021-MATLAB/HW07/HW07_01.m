fighter = input('Choose your character: ');
if fighter == 0               
    fighter = 'barbarian';
elseif fighter ==1               
    fighter = "bard";
elseif fighter ==2                
    fighter = 'cleric';
elseif fighter ==3              
    fighter = 'druid';
elseif fighter ==4               
    fighter = 'fighter';
elseif fighter ==5               
    fighter = 'monk';
elseif fighter ==6               
    fighter = 'paladin';
elseif fighter ==7               
    fighter = 'ranger';
elseif fighter ==8               
    fighter = 'rogue';
elseif fighter ==9               
    fighter = 'sorcerer';    
elseif fighter ==10               
    fighter = 'wizard';
elseif fighter ==11              
    fighter = 'aberration' ;   
else
    fighter='Please select a figther between 1-11';
end
fprintf ("The character selected is: %s\n", fighter)