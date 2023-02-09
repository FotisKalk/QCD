function [fid]=energy_dependance(energy_case,x)


    
    prompt = 'Save(1) or not(0)';
    t = input(prompt);
    
    
    if t==1
         
    if energy_case == 1
        fid = fopen('ai(7.7eV).txt', 'w');
        hold on
        fprintf(fid,'%f\n',x(1:8));
        hold off
        fclose(fid);
    end
            if energy_case == 2
                fid = fopen('ai(11.5eV).txt', 'w');
                hold on
                fprintf(fid,'%f\n',x(1:8));
                hold off
                fclose(fid);
            end
                       if energy_case == 3
                            fid = fopen('ai(19.6eV).txt', 'w');
                            hold on
                            fprintf(fid,'%f\n',x(1:8));
                            hold off
                            fclose(fid);
                       end
                                if energy_case == 4
                                    fid = fopen('ai(27eV).txt', 'w');
                                    hold on
                                    fprintf(fid,'%f\n',x(1:8));
                                    hold off
                                    fclose(fid);
                                end
                                        if energy_case == 5
                                            fid = fopen('ai(39.6eV).txt', 'w');
                                            hold on
                                            fprintf(fid,'%f\n',x(1:8));
                                            hold off
                                            fclose(fid);
                                        end
                                                if energy_case == 6
                                                    fid = fopen('ai(62.4eV).txt', 'w');
                                                    hold on
                                                    fprintf(fid,'%f\n',x(1:8));
                                                    hold off
                                                    fclose(fid);
                                                end
                                                     if energy_case == 7
                                                         fid = fopen('ai(200eV).txt', 'w');
                                                         hold on
                                                         fprintf(fid,'%f\n',x(1:8));
                                                         hold off
                                                         fclose(fid);
                                                     end
                        
            
        
        else 
        
    end


end
