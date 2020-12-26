// Code your testbench here
// or browse Examples
// Code your testbench here
// or browse Examples
// Code your testbench here
// or browse Examples



 
 class matrix;
 
    rand bit arr [9][9];
    rand bit mem [3][3][3];
 
 // how does this expand to??
   // expands to all rows and colums
   
 //  int'(a[0][0]==0) + int'(a[0][1]==0) int'(a[0][1]==0) + int'(a[0][8]==0) +... int'(a[0][8]==0)
 
//+
 
//int'(a[1][0]==0) + int'(a[1][1]==0) int'(a[1][1]==0) + int'(a[1][8]==0) +... int'(a[1][8]==0)
 
//...
 
//int'(a[8][0]==0) + int'(a[8][1]==0) int'(a[8][1]==0) + int'(a[8][8]==0) +... int'(a[8][8]==0)
    constraint c2{ 
      arr.sum(item1) with (item1.sum(item2) with (int'(item2==0))) <= 10;
  }
 
   constraint c3 {
     mem.sum(item1) with (item1.sum(item2) with (item2.sum(item3) with (int'(item3==1)))) ==5;
   }
  
function void display();
  foreach(arr[i]) begin
    foreach(arr[,j])
          $write("%3d",arr[i][j]);
$display;
end
endfunction
 
   function void display_mem();
     foreach (mem[i]) begin
       foreach (mem[,j]) 
         foreach (mem[,,k])
           
         $write("%3d",mem[i][j][k]);
          $display;
     end
   endfunction
    
endclass : matrix
                   
module tb;
matrix m1;
               //   int arr[10];
 
              
initial begin
 
                  m1 = new();
 
                  if (!m1.randomize())
                    $display("Error");
 
                
                  m1.display_mem();
 
 
                end
 
    endmodule
 
