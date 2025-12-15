module multiplication(a,b,r); 
input [35:0]a; 
output reg [35:0]b; 
output reg [35:0]r; 
reg [3:0] a1[0:2][0:2]; 
reg [3:0] b1[0:2][0:2]; 
reg [3:0] res1[0:2][0:2]; 
integer i,j,k; 
always@(a or b) 
begin 
{a1[0][0],a1[0][1],a1[0][2],a1[1][0],a1[1][1],a1[1][2],a1[2]
[0],a1[2][1],a1[2][2]}=a; 
i=0; 
j=0; 
{b1[0][0],b1[0][1],b1[0][2],b1[1][0],b1[1][1],b1[1][2],b1[2][0],b1[2][1],b1[2][2]}=36'd0; 
for(i=0;i<3;i=i+1) 
begin 
for(j=0;j<3;j=j+1) 
begin 
b1[j][i]=a1[i][j]; 
end 
end 
{res1[0][0],res1[0][1],res1[0][2],res1[1][0],res1[1][1],res1
[1][2],res1[2][0],res1[2][1],res1[2][2]}=36'd0; 
i=0; 
j=0; 
k=0; 
for(i=0;i<3;i=i+1) 
begin 
for(j=0;j<3;j=j+1) 
begin 
for(k=0;k<3;k=k+1) 
begin
  res1[i][j]=res1[i][j]+a1[i][k]*b1[k][j]; 
end 
end 
end 
b={b1[0][0],b1[0][1],b1[0][2],b1[1][0],b1[1][1],b1[1][2],b
1[2][0],b1[2][1],b1[2][2]}; 
r={res1[0][0],res1[0][1],res1[0][2],res1[1][0],res1[1][1],re
s1[1][2],res1[2][0],res1[2][1],res1[2][2]}; 
end 
endmodule 
