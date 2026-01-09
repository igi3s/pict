
import os

def solve_task(input_dir,output_dir):
    for file in os.listdir(input_dir):
        if not file.startswith("."):
            input_path = '{}/{}'.format(input_dir, file)
            output_path = '{}/{}'.format(output_dir, file)
            with open(input_path, 'r') as ifile,\
                open(output_path, 'w') as ofile:
                
                    d=[] 
                    azbuka = 'abcdefghijklmnopqrstuvwxyz'
                    for el in str(ifile.read()):
                        el = el.lower() 
                        d.append(el)
                        
                            
                    d.sort()   
                    e=[]
                    for elem in set(d):  
                       e.append(elem)
                    e.sort()   
                    
                    for element in e:
                        if element in azbuka:
                            ofile.write('{}'.format(element))
                            ofile.write('{}'.format(":"))
                            ofile.write('{}'.format(" "))
                            ofile.write('{}'.format(d.count(element)))
                            ofile.write('\n')
rule all:
    run: solve_task("input", "output")
