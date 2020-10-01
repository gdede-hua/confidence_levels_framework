function P=Pxestimator(ind,b,a,num,x)

%x=-16:1:16;

P=zeros(1,num);

start=find(x==-16);
pos=find(x==0);    



if ind==-8 
    postart=find(x==0);
    for i=postart:length(x)
        P( x(i)+1 )=a*exp(-b*abs( x(i) ));
    end
    
elseif ind==-7 
    postart=find(x==-1);
    k=1;
    for i=postart:length(x)-1
        P( k )=a*exp(-b*abs( x(i) ));
        k=k+1;
    end
    
elseif ind==-6 
    postart=find(x==-2);
    k=1;
    for i=postart:length(x)-2
        P( k )=a*exp(-b*abs( x(i) ));
        k=k+1;
    end
    
elseif ind==-5 
    postart=find(x==-3);
    k=1;
    for i=postart:length(x)-3
        P( k )=a*exp(-b*abs( x(i) ));
        k=k+1;
    end
    
elseif ind==-4 
    postart=find(x==-4);
    k=1;
    for i=postart:length(x)-4
        P( k )=a*exp(-b*abs( x(i) ));
        k=k+1;
    end
    
    
elseif ind==-3 
    postart=find(x==-5);
    k=1;
    for i=postart:length(x)-5
        P( k )=a*exp(-b*abs( x(i) ));
        k=k+1;
    end
    
elseif ind==-2 
    postart=find(x==-6);
    k=1;
    for i=postart:length(x)-6
        P( k )=a*exp(-b*abs( x(i) ));
        k=k+1;
    end
    
elseif ind==-1 
    postart=find(x==-7);
    k=1;
    for i=postart:length(x)-7
        P( k )=a*exp(-b*abs( x(i) ));
        k=k+1;
    end
    
elseif ind==0
    postart=find(x==-8);
    k=1;
    for i=postart:length(x)-8
        P( k )=a*exp(-b*abs( x(i) ));
        k=k+1;
    end
   %---------
elseif ind==8
    for i=start:pos
        P( i )=a*exp(-b*abs( x(i) )); 
    end
    
elseif ind==7 
    k=1;
    for i=start+1:pos+1
        P( k )=a*exp(-b*abs( x(i) )); 
        k=k+1;
    end
    
elseif ind==6     
    k=1;
    for i=start+2:pos+2
        P( k )=a*exp(-b*abs( x(i) ));
        k=k+1;
    end
    
elseif ind==5    
    k=1;
    for i=start+3:pos+3
        P( k )=a*exp(-b*abs( x(i) ));
        k=k+1;
    end
    
elseif ind==4
    k=1;
    for i=start+4:pos+4
        P( k )=a*exp(-b*abs( x(i) ));
        k=k+1;
    end
    
    
elseif ind==3 
    k=1;
    for i=start+5:pos+5
        P( k )=a*exp(-b*abs( x(i) ));
        k=k+1;
    end
    
elseif ind==2    
    k=1;
    for i=start+6:pos+6
        P( k )=a*exp(-b*abs( x(i) ));
        k=k+1;
    end
    
elseif ind==1 
    k=1;
    for i=start+7:pos+7
        P( k )=a*exp(-b*abs( x(i) ));
        k=k+1;
    end


end %eof if


end %eof function




    
    


