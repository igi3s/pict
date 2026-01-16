cwlVersion: v1.0
class: CommandLineTool

requirements:
    InitialWorkDirRequirement:
        listing:
          - entryname: example.sh
            entry: |-
              #!/bin/bash

              #########/home/userpp/cwlscripts2/test_dirname/input/input
              #########cat $(inputs.input_file.dirname)/input | wc -w
           
             
              cat $(inputs.input_file.dirname)/$(inputs.input_file.basename) | wc -w  
inputs:
    input_file:
        type: File
        
        
outputs:
    output_file:
        type: File
        outputBinding:
           
            glob: output/output
stdout: output/output
            
baseCommand: ["sh", "example.sh"]
