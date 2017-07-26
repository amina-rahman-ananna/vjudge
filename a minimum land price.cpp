#include<bits/stdc++.h>
using namespace std;

 long long int power(int n,int l)
{
    long long int sum=1;

    for(int i=1;i<=l;i++)
    {
        sum=sum*n;
    }

    return sum;
}

int main()
{
    int t;

    cin>>t;

    while(t--)
    {
        int a;
        vector<int> v;

        while(cin>>a && a!=0)
        {
            v.push_back(a);
        }

        sort(v.begin(),v.end());

        int l=1;
        long long int sum=0;

        for(int i=v.size()-1;i>=0;i--)
        {
            sum=sum+(2*power(v[i],l));
            l++;
        }

        if(sum>=5000000)
        {
            cout<<"Too expensive"<<endl;
        }
        else
        {
            cout<<sum<<endl;
        }
    }

    return 0;
}
