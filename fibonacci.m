a=0;
b=pi()/2;
i=0.00001;
d=(b-a)/i;

fn2=1;
fn3=1;
n=0;

while(fn3<d)
  fn1=fn3;
  fn2=fn2+fn3;
  fn3=fn3+fn2;
  n=n+1;
end;

x1=a+(b-a)*fn1/fn3;
x2=a+(b-a)*fn2/fn3;
y1=sin(2*x1);
y2=sin(2*x2);

while not (n==1)
    if y1<y2
      	a=x1;
	x1=x2;
	x2=b-(x1-a);
	y1=y2;
        y2=sin(2*x2);
    else
	b=x2;
	x2=x1;
	x1=a+(b-x2);
        y2=y1;
	y1=sin(2*x1);
    end;
    n=n-1;
end;

if y1>=y2
    alpha=x1;
else
    alpha=x2;
end;
alpha
sin(2*alpha)