# s4tfEnv

Development Environment for S4TF Libraries and Benchmarks

## Benchmark Results

Image: https://live.staticflickr.com/2842/11335865374_0b202e2dc6_o_d.jpg  
Number of Cycles for each operation: 400  

## From my own code  

### stb_image Operations  
Resize Operation  
Minimum Time : 0.006072232 seconds  
Maximum Time : 0.011081325 seconds  
Average Time : 0.006770892012499997 seconds  
   
Save Operation
Minimum Time : 0.028558949 seconds  
Maximum Time : 0.041952897 seconds  
Average Time : 0.031447842372500034 seconds  
  
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

running stb_image Resize operation... done! (2642.45 ms)  
running stb_image Save operation... done! (12839.53 ms)  
running pil Resize Operation... done! (4511.93 ms)  
running pil Save Operation... done! (8495.85 ms)  
running pil Transpose Operation... done! (3573.58 ms)  
running pil Crop Operation... done! (3156.75 ms)  
running skimage Resize Operation... done! (69499.99 ms)  
running skimage Save Operation... done! (16604.98 ms)  
running skimage Transpose Operation... done! (27018.29 ms)  
running skimage Crop Operation... done! (4406.51 ms)  
      

| name                        | time           | std         | iterations  
| ----------------------------|:--------------:|------------:|-------------:
| stb_image Resize operation  | 6510404.0 ns   |  ±   8.65 % | 400         
| stb_image Save operation    | 31759828.5 ns  |  ±  12.99 % | 400         
| pil Resize Operation        | 11044071.5 ns  |  ±  17.73 % | 400         
| pil Save Operation          | 21037174.5 ns  |  ±   5.80 % | 400         
| pil Transpose Operation     | 8759875.0 ns   |  ±   8.80 % | 400         
| pil Crop Operation          | 7831765.0 ns   |  ±   6.70 % | 400         
| skimage Resize Operation    | 167246633.5 ns |  ±  70.92 % | 400         
| skimage Save Operation      | 41291975.0 ns  |  ±   4.33 % | 400         
| skimage Transpose Operation | 67278892.0 ns  |  ±   4.31 % | 400         
| skimage Crop Operation      | 10902374.0 ns  |  ±   6.31 % | 400         
