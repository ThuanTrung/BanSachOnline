#include <bits/stdc++.h>
#define N 10003
#define inf int(1e9)
using namespace std;
int F[N], d[N],vet[N],n;
int main()
{
   // freopen("demo.inp","r",stdin);
   // freopen("demo.out","w",stdout);
    cin>>n;
    for (int i=1; i<=n; i++) cin>>d[i];
    d[0]=-inf;d[n+1]=inf;
    F[0]=1;F[1]=2;
    for (int i = 2; i<=n+1; i++)
        for (int j =0; j<i; j++)
            if (d[i]>d[j] && F[i]<F[j]+1)
            {
                F[i]=F[j]+1;
            }
    cout<<F[n+1]-2<<'\n';
    int j = n+1;
    while(j>0)
    {
        for (int i =0; i<j; i++)
            if(F[j]==F[i]+1 && d[j]>d[i])
            {
                j=i;
                vet[i]=1; break;
            }
    }
    for (int i =1; i<=n; i++) if (vet[i]>0) cout<<d[i]<<' '<<i<<'\n';
    return 0;
}