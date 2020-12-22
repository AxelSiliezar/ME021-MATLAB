response = "y";
while (response == "y") 
    num = input("Enter a numerical value: ");
    format = input("Enter a format string: ",'s'); 
    fprintf(format, num);
    fprintf('\n');
    response=input("Do another (y/n)?", 's');   
end
    
    