module multiplication(a,b,r); 
input [15:0]a; 
output reg [15:0]b; 
output reg [15:0]r; 
reg [3:0] a1[0:2][0:2]; 
reg [3:0] b1[0:2][0:2]; 
reg [3:0] res1[0:2][0:2]; 
integer i,j,k; 
always@(a or b) 
begin 
{a1[0][0],a1[0][1],a1[1][0],a1[1][1]}=a; 
i=0; 
7 
Title of the Project 
j=0; 
{b1[0][0],b1[0][1],b1[1][0],b1[1][1]}=16'd0; 
for(i=0;i<2;i=i+1) 
begin 
for(j=0;j<2;j=j+1) 
begin 
b1[j][i]=a1[i][j]; 
end 
end 
{res1[0][0],res1[0][1],res1[1][0],res1[1][1]}=36'd0; 
i=0; 
j=0; 
k=0; 
for(i=0;i<2;i=i+1) 
8 
Title of the Project 
begin 
for(j=0;j<2;j=j+1) 
begin 
for(k=0;k<2;k=k+1) 
begin 
res1[i][j]=res1[i][j]+a1[i][k]*b1[k][j]; 
end 
end 
end 
b={b1[0][0],b1[0][1],b1[1][0],b1[1][1]}; 
r={res1[0][0],res1[0][1],res1[1][0],res1[1][1]}; 
end 
endmodule
