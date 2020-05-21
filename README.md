# s4tfEnv

Development Environment for S4TF Libraries and Benchmarks

## Benchmark Results

Image: tiger.jpg

## From my own code  

### stb_image Operations  
Resize Operation  
Minimum Time : 382280.0 ns  
Maximum Time : 3882327.0 ns  
Average Time : 477807.7529787228 ns  
Iterations : 4700  
 
Save Operation  
Minimum Time : 11518487.0 ns  
Maximum Time : 55851014.0 ns  
Average Time : 12846744.114999998 ns  
Iterations : 400  

 --------------------------- 
 
### PIL Operations  
Resize Operation  
Minimum Time : 1501456.0 ns  
Maximum Time : 3493659.0 ns  
Average Time : 1614423.9024999999 ns  
Iterations : 800  
   
Save Operation  
Minimum Time : 6034237.0 ns  
Maximum Time : 13173164.0 ns  
Average Time : 7127505.677499998 ns  
Iterations : 400  
 
Transpose Operation  
Minimum Time : 208505.0 ns  
Maximum Time : 1616058.0 ns  
Average Time : 255784.1636666665 ns  
Iterations : 6000  
 
Crop Operation  
Minimum Time : 40623.0 ns  
Maximum Time : 3273103.0 ns  
Average Time : 47251.02534461632 ns  
Iterations : 325000  

 --------------------------- 
### skimage Operations  
Resize Operation  
Minimum Time : 51836293.0 ns  
Maximum Time : 69308588.0 ns  
Average Time : 53766592.53750003 ns  
Iterations : 400  
 
Save Operation  
Minimum Time : 10868932.0 ns  
Maximum Time : 16624849.0 ns  
Average Time : 11896005.337499997 ns  
Iterations : 400  
 
Transpose Operation  
Minimum Time : 19735296.0 ns  
Maximum Time : 32367218.0 ns  
Average Time : 21811696.17999999 ns  
Iterations : 400  
 
Crop Operation  
Minimum Time : 67827.0 ns  
Maximum Time : 3842525.0 ns  
Average Time : 88170.45750000002 ns  
Iterations : 400  
    
 ---------------------------   

## Using google/swift-benchmark

running stb_image Resize operation... done! (1704.90 ms)  
running stb_image Save operation... done! (1546.89 ms)  
running pil Resize Operation... done! (1534.50 ms)  
running pil Save Operation... done! (2143.75 ms)  
running pil Transpose Operation... done! (1606.70 ms)  
running pil Crop Operation... done! (1879.94 ms)  
running skimage Resize Operation... done! (23612.47 ms)  
running skimage Save Operation... done! (4721.23 ms)  
running skimage Transpose Operation... done! (8523.25 ms)  
running skimage Crop Operation... done! (30.91 ms)  
      

| name                        | time           | std         | iterations  
| ----------------------------|:--------------:|------------:|-------------:
| stb_image Resize operation  | 278704.0 ns    | ±   7.81 %  | 4746        
| stb_image Save operation    | 12660698.0 ns  | ±  13.38 %  | 107         
| pil Resize Operation        | 1564261.0 ns   | ±  11.43 %  | 804         
| pil Save Operation          | 6812810.0 ns   | ±  14.90 %  | 183         
| pil Transpose Operation     | 210297.0 ns    | ±  18.50 %  | 5952        
| pil Crop Operation          | 41927.0 ns     | ±  14.14 %  | 32638       
| skimage Resize Operation    | 52270319.0 ns  | ± 231.98 %  | 400         
| skimage Save Operation      | 11554687.0 ns  | ±   7.41 %  | 400         
| skimage Transpose Operation | 21237870.0 ns  | ±   4.64 %  | 400         
| skimage Crop Operation      | 71167.5 ns     | ±  26.47 %  | 400         
