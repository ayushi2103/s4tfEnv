# s4tfEnv

Development Environment for S4TF Libraries and Benchmarks

## Benchmark Results

Image: https://live.staticflickr.com/2842/11335865374_0b202e2dc6_o_d.jpg  


## From my own code  

Number of Cycles for each operation: 400  

### stb_image Operations  
Resize Operation  
Minimum Time : 0.006072232 seconds  
Maximum Time : 0.011081325 seconds  
Average Time : 0.006770892012499997 seconds  
   
Save Operation  
Minimum Time : 0.063535351 seconds  
Maximum Time : 0.088141367 seconds  
Average Time : 0.0680819318 seconds  
  
 --------------------------- 
### PIL Operations  
Resize Operation  
Minimum Time : 0.009828714 seconds  
Maximum Time : 0.045304131 seconds  
Average Time : 0.010693903985000005 seconds  
   
Save Operation  
Minimum Time : 0.019395816 seconds  
Maximum Time : 0.031404295 seconds  
Average Time : 0.021241725394999994 seconds  
   
Transpose Operation  
Minimum Time : 0.007678966 seconds  
Maximum Time : 0.012737835 seconds  
Average Time : 0.008654652217500006 seconds  
   
Crop Operation  
Minimum Time : 0.007104264 seconds  
Maximum Time : 0.010602766 seconds  
Average Time : 0.007683194162500002 seconds  
  
 --------------------------- 
### skimage Operations  
Resize Operation  
Minimum Time : 0.159680252 seconds  
Maximum Time : 2.474785585 seconds  
Average Time : 0.17438859129500003 seconds  
   
Save Operation  
Minimum Time : 0.03806083 seconds  
Maximum Time : 0.092022774 seconds  
Average Time : 0.04177871039249997 seconds  
   
Transpose Operation  
Minimum Time : 0.064153863 seconds  
Maximum Time : 0.092635098 seconds  
Average Time : 0.06889629317999996 seconds  
   
Crop Operation  
Minimum Time : 0.009976063 seconds  
Maximum Time : 0.015141088 seconds  
Average Time : 0.011091903940000002 seconds  
    
 ---------------------------   

## Using google/swift-benchmark
running stb_image Resize operation... done! (2209.71 ms)  
running stb_image Save operation... done! (1801.10 ms)  
running pil Resize Operation... done! (1571.84 ms)  
running pil Save Operation... done! (1602.40 ms)  
running pil Transpose Operation... done! (2336.61 ms)  
running pil Crop Operation... done! (2236.52 ms)  
running skimage Resize Operation... done! (4321.81 ms)  
running skimage Save Operation... done! (1844.57 ms)  
running skimage Transpose Operation... done! (2198.74 ms)  
running skimage Crop Operation... done! (1490.27 ms)  


| name                        | time           | std         | iterations  
| ----------------------------|:--------------:|------------:|-------------:
| stb_image Resize operation  | 6752307.5 ns   | ±  16.43 %  | 208         
| stb_image Save operation    | 31838112.0 ns  | ±   2.73 %  | 45          
| pil Resize Operation        | 11185910.0 ns  | ±   5.90 %  | 125         
| pil Save Operation          | 20583252.0 ns  | ±   3.75 %  | 66          
| pil Transpose Operation     | 8551030.0 ns   | ±   7.44 %  | 155         
| pil Crop Operation          | 7604102.0 ns   | ±   3.79 %  | 177         
| skimage Resize Operation    | 162722545.0 ns | ±   1.30 %  | 9           
| skimage Save Operation      | 40678974.5 ns  | ±   2.62 %  | 34          
| skimage Transpose Operation | 70597909.0 ns  | ±   2.25 %  | 20          
| skimage Crop Operation      | 10981257.0 ns  | ±   4.64 %  | 123        
