#include <stdio.h>

int main() 
{
    // Массив
    int sum = 0;
    int mass[] = {238, 42, 134, 168, 4, 85, 171, 182, 15};
    // Проход по каждому эл. массива
    for (int i = 0; i < 9; i++) 
    {
        if ((mass[i] & 64) == 64) 
        {
        	int temp = mass[i] >> 1;
        	mass[i] = temp;
        	sum += mass[i];
        }
        else 
        {
        	sum+= mass[i];
        }
    }  
    
    printf("sum: %d\n", sum);
    
    return 0;	       
}
