StoreGDB 1

ZSquare
GridOff
AxesOff
CoordOff
LabelOff
ExprOff
FnOff 

ClrDraw

BackgroundOn BLACK

0→A
0→B
1.5→V

­0.5→C
­0.5→D


0→P

0→G

0→Z

toString(Z→Str1
Text(­1,1,129,Str1)

Repeat G

Line(­13,P-2,­13,P+2,0)

getKey→K
If K=25 and P+4≤Ymax
P+2→P
If K=34 and P-4≥Ymin
P-2→P

Line(­13,P-2,­13,P+2,WHITE)

Line(A-0.5,B+0.5,A-0.5,B-0.5,0)
Line(A-0.5,B+0.5,A+0.5,B+0.5,0)
Line(A+0.5,B+0.5,A+0.5,B-0.5,0)
Line(A-0.5,B-0.5,A+0.5,B-0.5,0)

If B-0.5≤Ymin or B+0.5≥Ymax
D*­1→D
If A+0.5≥Xmax
Then
C*­1→C
Z+1→Z
End
If A-0.5≤­13 and B-0.4≤P+3 and B+0.4≥P-3
Then
(P+2-B)/2→I
I*(π/3)→S
cos(S)→C
sin(S)→D
V+0.2→V
End

A+V*C→A
B+V*D→B

If A+0.5≤­13.5
1→G

Line(A-0.5,B+0.5,A-0.5,B-0.5,WHITE)
Line(A-0.5,B+0.5,A+0.5,B+0.5,WHITE)
Line(A+0.5,B+0.5,A+0.5,B-0.5,WHITE)
Line(A-0.5,B-0.5,A+0.5,B-0.5,WHITE)
toString(Z→Str1
Text(­1,1,129,Str1)
Wait 0.033
End

ClrDraw
Text(­1,1,129,Str1)
Text(­1,82,82,"GAME OVER")
Text(100,50,"PRESS ENTER TO CONTINUE")

0→F
Repeat F
If getKey=105
1→F
End

ClrDraw
RecallGDB 1
BackgroundOff
prgmPONG

