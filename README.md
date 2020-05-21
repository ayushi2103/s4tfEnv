# s4tfEnv

Development Environment for S4TF Libraries and Benchmarks

## Benchmark Results

Image: https://live.staticflickr.com/2842/11335865374_0b202e2dc6_o_d.jpg  
Number of Cycles for each operation: 400  

## From my own code  

### stb_image Operations  
Resize Operation  
Minimum Time : 804639.0 ns  
Maximum Time : 1671150.0 ns  
Average Time : 915877.74 ns  
   
Save Operation  
Minimum Time : 23578037.0 ns  
Maximum Time : 39359264.0 ns  
Average Time : 25682290.69499998 ns  

 --------------------------- 
### PIL Operations  
Resize Operation  
Minimum Time : 2856925.0 ns  
Maximum Time : 11822156.0 ns  
Average Time : 3209661.8975000028 ns  
 
Save Operation  
Minimum Time : 11553793.0 ns  
Maximum Time : 19155244.0 ns  
Average Time : 12734341.887500005 ns  
 
Transpose Operation  
Minimum Time : 406327.0 ns  
Maximum Time : 1522792.0 ns  
Average Time : 486075.2400000003 ns  
   
Crop Operation  
Minimum Time : 52343.0 ns  
Maximum Time : 723174.0 ns  
Average Time : 61199.68000000003 ns  

 --------------------------- 
### skimage Operations  
Resize Operation  
Minimum Time : 142960540.0 ns  
Maximum Time : 175263085.0 ns  
Average Time : 151020099.67 ns  
 
Save Operation  
Minimum Time : 19996156.0 ns  
Maximum Time : 36434201.0 ns  
Average Time : 21746786.602499988 ns  
 
Transpose Operation  
Minimum Time : 40611094.0 ns  
Maximum Time : 61348453.0 ns  
Average Time : 44391840.27249999 ns  
 
Crop Operation  
Minimum Time : 67955.0 ns  
Maximum Time : 276366.0 ns  
Average Time : 76915.56750000006 ns  
    
 ---------------------------   

## Using google/swift-benchmark

running stb_image Resize operation... done! (334.43 ms)  
running stb_image Save operation... done! (10373.06 ms)  
running pil Resize Operation... done! (1372.49 ms)  
running pil Save Operation... done! (5072.98 ms)  
running pil Transpose Operation... done! (207.16 ms)  
running pil Crop Operation... done! (26.37 ms)  
running skimage Resize Operation... done! (62755.91 ms)  
running skimage Save Operation... done! (8360.61 ms)  
running skimage Transpose Operation... done! (18157.09 ms)  
running skimage Crop Operation... done! (33.59 ms)
   
      

| name                        | time           | std         | iterations  
| ----------------------------|:--------------:|------------:|-------------:
| stb_image Resize operation  | 765993.0 ns    | ± 100.46 %  | 400         
| stb_image Save operation    | 25761533.0 ns  | ±   7.87 %  | 400         
| pil Resize Operation        | 3134155.0 ns   | ±  82.41 %  | 400         
| pil Save Operation          | 12481239.0 ns  | ±   9.39 %  | 400         
| pil Transpose Operation     | 465981.5 ns    | ±  27.88 %  | 400         
| pil Crop Operation          | 56084.0 ns     | ± 109.04 %  | 400         
| skimage Resize Operation    | 147499365.5 ns | ±  80.79 %  | 400         
| skimage Save Operation      | 20805723.5 ns  | ±   2.88 %  | 400         
| skimage Transpose Operation | 45042079.5 ns  | ±   5.28 %  | 400         
| skimage Crop Operation      | 68594.0 ns     | ± 179.52 %  | 400      
