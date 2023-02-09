    function [fM1,fM2,fM3,fM4]=leasterr(x,A,B,C,D,energy_case)
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
            f1=0;
            f2=0;
            f3=0;
            f4=0;
            p=2;
            for M=[x(1,15) x(1,14) x(1,13) x(1,12) x(1,11) x(1,10) x(1,9)]
                 p=p+1; C1=0; C2=0; C3=0; C4=0; z=0;
                  for N=1:M
                      
    chem=1477/(1+0.343*i);    
                
    z=z+exp(N*(chem/x(1,7)*(1-sin(100*pi*(chem-x(1,8)))/(100*pi*(chem-x(1,8))))-x(1,2)*N/M-x(1,3)*(N/M)^2-x(1,4)*(N/M)^3-x(1,5)*(N/M)^4-x(1,6)*(N/M)^5));
            
       
    C1=C1+N*exp(N*(chem/x(1,7)*(1-sin(100*pi*(chem-x(1,8)))/(100*pi*(chem-x(1,8))))-x(1,2)*N/M-x(1,3)*(N/M)^2-x(1,4)*(N/M)^3-x(1,5)*(N/M)^4-x(1,6)*(N/M)^5));
    
        
    C2=C2+N^2*exp(N*(chem/x(1,7)*(1-sin(100*pi*(chem-x(1,8)))/(100*pi*(chem-x(1,8))))-x(1,2)*N/M-x(1,3)*(N/M)^2-x(1,4)*(N/M)^3-x(1,5)*(N/M)^4-x(1,6)*(N/M)^5));
    
        
    C3=C3+N^3*exp(N*(chem/x(1,7)*(1-sin(100*pi*(chem-x(1,8)))/(100*pi*(chem-x(1,8))))-x(1,2)*N/M-x(1,3)*(N/M)^2-x(1,4)*(N/M)^3-x(1,5)*(N/M)^4-x(1,6)*(N/M)^5));
    
        
    C4=C4+N^4*exp(N*(chem/x(1,7)*(1-sin(100*pi*(chem-x(1,8)))/(100*pi*(chem-x(1,8))))-x(1,2)*N/M-x(1,3)*(N/M)^2-x(1,4)*(N/M)^3-x(1,5)*(N/M)^4-x(1,6)*(N/M)^5));
    
    
                  end
                   m1=C1/z;
                   m2=C2/z;
                   m3=C3/z;
                   m4=C4/z;
                   
                   Cu1=m1;
                   Cu2=m2-m1^2;
                   Cu3=m3-3*m2*m1+2*m1^3;
                   Cu4=m4-4*m3*m1-3*m2^2+12*m2*m1^2-6*m1^4;
              
                   
                   
               
                                 
                    f1=f1+(abs(Cu1-A(o,p)));
                    fM1=f1;
                    f2=f2+(abs(Cu2-B(o,p)));
                    fM2=f2;
                    f3=f3+(abs(Cu3-C(o,p)));
                    fM3=f3;
                    f4=f4+(abs(Cu4-D(o,p)));
                    fM4=f4;
                    
                    
                 
            end


end

    