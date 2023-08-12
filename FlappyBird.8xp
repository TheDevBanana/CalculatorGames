StoreGDB 1

ZSquare
GridOff
AxesOff
CoordOff
LabelOff
ExprOff
FnOff 

ClrDraw
BackgroundOn Image6

5→A
0→T
9.8→B
10→M
­10→V

5→C

randInt(Ymin+4,Ymax-4)→S
Xmax→H

0→P
0→E
0→G

toString(P→Str1
Text(­1,5,5,Str1)

Repeat G

getKey→K
If K=25
Then
40→V
0→T
End

V-M*B*T→V
A+V*0.033→A
If A-1≤­10
Then
0→V
­9→A
End
If A+1≥10
Then
0→V
9→A
End

H-1→H

If H+2<Xmin
Then
Xmax→H
randInt(Ymin+4,Ymax-4)→S
0→E
End

If H-2<­8.2 and S-3>A-0.8 and H+2>­9.8
1→G
If H-2<­8.2 and S+3<A+0.8 and H+2>­9.8
1→G

If H+2<­10 and G=0 and E=0
Then
P+1→P
1→E
End

Line(­10,C-1,­10,C+1,0)
Line(­10,C+1,­8,C+1,0)
Line(­8,C+1,­8,C-1,0)
Line(­10,C-1,­8,C-1,0)

Line(­10,A-1,­10,A+1,BLACK)
Line(­10,A+1,­8,A+1,BLACK)
Line(­8,A+1,­8,A-1,BLACK)
Line(­10,A-1,­8,A-1,BLACK)

Line(D-2,Z+3,D+2,Z+3,0)
Line(D-2,Z-3,D+2,Z-3,0)
Line(D-2,Z+3,D-2,Ymax,0)
Line(D+2,Z+3,D+2,Ymax,0)
Line(D-2,Z-3,D-2,Ymin,0)
Line(D+2,Z-3,D+2,Ymin,0)

Line(H-2,S+3,H+2,S+3,GREEN)
Line(H-2,S-3,H+2,S-3,GREEN)
Line(H-2,S+3,H-2,Ymax,GREEN)
Line(H+2,S+3,H+2,Ymax,GREEN)
Line(H-2,S-3,H-2,Ymin,GREEN)
Line(H+2,S-3,H+2,Ymin,GREEN)

toString(P→Str1
Text(­1,5,5,Str1)

A→C
H→D
S→Z

Wait 0.033

T+0.05→T
End

ClrDraw
BackgroundOn Image7
toString(P→Str1
"Score: "+Str1→Str1
Text(­1,132,82,Str1

0→F
Repeat F
If getKey=105
1→F
End

ClrDraw
RecallGDB 1
BackgroundOff
