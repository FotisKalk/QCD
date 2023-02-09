 function [fM3]=leasterr3(x3,C,energy_case)
if (energy_case ==1)
    i=7.7; o=1;
end
    if (energy_case ==2)
        i=11.5; o=2;
    end
        if (energy_case ==3)
            i=19.6; o=3;
        end
            if (energy_case ==4)
                i=27; o=4;
            end
                if (energy_case ==5)
                    i=39.6; o=5;
                end
                    if (energy_case ==6)
                        i=62.4; o=6;
                    end
                        if (energy_case ==7)
                            i=200; o=7;
                        end
           
            f3=0;
          
            p=0;
            for M=[x3(1,17) x3(1,16) x3(1,15) x3(1,14) x3(1,13) x3(1,12) x3(1,11) x3(1,10) x3(1,9)]
                 p=p+1; C1=0; C2=0; C3=0; C4=0; z=0;
                  for N=1:M
                      
    chem=1477/(1+0.343*i);    
                
    z=z+exp(N*(chem/x3(1,7)*(1-sin(100*pi*(chem-x3(1,8)))/(100*pi*(chem-x3(1,8))))-x3(1,2)*N/M-x3(1,3)*(N/M)^2-x3(1,4)*(N/M)^3-x3(1,5)*(N/M)^4-x3(1,6)*(N/M)^5));
            
    C1=C1+N*exp(N*(chem/x3(1,7)*(1-sin(100*pi*(chem-x3(1,8)))/(100*pi*(chem-x3(1,8))))-x3(1,2)*N/M-x3(1,3)*(N/M)^2-x3(1,4)*(N/M)^3-x3(1,5)*(N/M)^4-x3(1,6)*(N/M)^5));
    
 
    C2=C2+N^2*exp(N*(chem/x3(1,7)*(1-sin(100*pi*(chem-x3(1,8)))/(100*pi*(chem-x3(1,8))))-x3(1,2)*N/M-x3(1,3)*(N/M)^2-x3(1,4)*(N/M)^3-x3(1,5)*(N/M)^4-x3(1,6)*(N/M)^5));
    
       
   
    C3=C3+N^3*exp(N*(chem/x3(1,7)*(1-sin(100*pi*(chem-x3(1,8)))/(100*pi*(chem-x3(1,8))))-x3(1,2)*N/M-x3(1,3)*(N/M)^2-x3(1,4)*(N/M)^3-x3(1,5)*(N/M)^4-x3(1,6)*(N/M)^5));
    
 
    
                  end
                  
                   m1=C1/z;
                   m2=C2/z;
                   m3=C3/z;
                 
                   Cu3=m3-3*m2*m1+2*m1^3;
                 
                   
                   
                    f3=f3+(abs(Cu3-C(o,p)));
                    fM3=f3;
  
                    
                 
            end


end
