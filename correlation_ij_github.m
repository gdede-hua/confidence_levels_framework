   experts=4;
   n=4;
   Corkl=zeros(n,n);
   values=[1/9 1/8 1/7 1/6 1/5 1/4 1/3 1/2 1 2 3 4 5 6 7 8 9];

   
    for k=1:n
        for l=1:n
            
            Smp=zeros(experts,n);
            Sm=zeros(experts,1);
            
            for m=1:experts
                
                if k==l
                    
                    for p=1:n
                        
                        x1= ( log(values).^2 ).*Pexp(m,:,k,p); %Pexp:the exponential probability estimatedby Pxestimator for mth expert on PWC judmgment kp 
                        Sx1=sum(x1);
                        x2=  log(values).*Pexp(m,:,k,p);
                        Sx2=sum(x2);
                        Sx2=Sx2.^2;
                        
                        
                        Smp(m,p)=Sx1-Sx2;
                    end %for p
                else
                    x1= ( log(values).^2 ).*Pexp(m,:,k,l);
                    Sx1=sum(x1);
                    x2=  log(values).*Pexp(m,:,k,l);
                    Sx2=sum(x2);
                    Sx2=Sx2.^2;
                    Sm(m,1)=-Sx1+Sx2;%Sx1+Sx2;
                end %if k==l
            end %for m
            
            S1=sum(Smp,2);
            Sum_mp=sum(S1);
            
            Sum_m=sum(Sm);
            
            Corkl(k,l)=( 1/(n*experts) )^2*(Sum_mp+Sum_m);
            
        end %for l
    end %for k
    
    
    
    
    Covmatrix=zeros(n-1,n-1);
    for i=1:n-1
        for j=1:n-1
            Covmatrix(i,j)=Corkl(i,j)+Corkl(i+1,j+1)-Corkl(i,j+1)-Corkl(i+1,j);
    end
    
    
    
    UxPx=zeros(experts,17,n,n);
    for m=1:experts
        for k=1:n
            for j=1:n
                UxPx(m,:,k,j)=log(values).*Pexp(m,:,k,j);
            end
        end
    end
    SUxPx=sum(UxPx,2);
    
    dz=zeros(n,1);
    dzk_m=zeros(n,1);
    sl=sum(log(values));
    for user=1:experts
        for i=1:n
            for j=1:n
                dz(i)=dz(i)+1/experts/n*( lnMijm(i,j,user)-lnPijm(i,j,user) );%lnMijm:the new logarithmic value for the ij element of PWC matrix for the mth expert (Pijm) based on the exponential probability distribution
                dzk_m(i)=dzk_m(i)+1/experts/n*( SUxPx(user,:,i,j)-lnPijm(i,j,user) );%lnPijm:the logarithmic value of PWC matrix Pijm of the mth expert
            end
        end
        
    end
    dzk_m=sort_certain_positions(dzk_m,pos,n);
    
    
    
    
    X=[lnwi_(2)-lnwi_(1) lnwi_(3)-lnwi_(2) lnwi_(4)-lnwi_(3)];% lnwi_(5)-lnwi_(4) lnwi_(6)-lnwi_(5)];% zi_(4)-zi_(3)];% Wm(3)-Wm(4)];
    means2=[dzk_m(1)-dzk_m(2) dzk_m(2)-dzk_m(3) dzk_m(3)-dzk_m(4)];% dzk_m(4)-dzk_m(5) dzk_m(5)-dzk_m(6)];
        means1=[Dz_mean(1)-Dz_mean(2) Dz_mean(2)-Dz_mean(3) Dz_mean(3)-Dz_mean(4)];% Dz_mean(4)-Dz_mean(5) Dz_mean(5)-Dz_mean(6)];

    
    for i=1:n-1
        for j=i+1:n-1
            
            Covmatrix(j,i)=Covmatrix(i,j);
            Covm(j,i)=Covm(i,j);
        end
    end
    Prank=1-mvncdf(X,means2,Covmatrix);

    
    
    
    
    
   
    
    
