<<<<<<< HEAD

#include "cuda_runtime.h"
#include "device_launch_parameters.h"

#include "pointerscan.cuh"
#include "pscanfileaccess.h"


#include <stdio.h>

__global__ void test()
{
  
    printf("CUDA is working\n");
    
}

int main()
{
	printf("CUDA pointerscan. WEEEEEEEE\n");
	
	test<<<1,1>>>();
	
	cudaDeviceSynchronize();
	
	
	pscaninit(); 
	pointerscan(0x00201C20, 2048, 5);
	
	
	cudaDeviceSynchronize();
	cudaDeviceReset();


    return 0;
}
=======

#include "cuda_runtime.h"
#include "device_launch_parameters.h"

#include "pointerscan.cuh"
#include "pscanfileaccess.h"


#include <stdio.h>

__global__ void test()
{
  
    printf("CUDA is working\n");
    
}

int main()
{
	printf("CUDA pointerscan. WEEEEEEEE\n");
	
	test<<<1,1>>>();
	
	cudaDeviceSynchronize();
	
	
	pscaninit(); 
	pointerscan(0x00201C20, 2048, 5);
	
	
	cudaDeviceSynchronize();
	cudaDeviceReset();


    return 0;
}
>>>>>>> a3e1a24b8cf6b1bafc5aecce676cca5131281ade
