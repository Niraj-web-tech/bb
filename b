#include<iostream>
using namespace std;

class student {
int roll;
string name;
int marks;

public:
void read(student s[],int n);
void shell_sort(student s[],int n);
void display(student s[],int n);
};

void student::read(student s[],int n)
{
for (int i=0;i<n;i++)
{
    cout<<"enter roll no"<<(i+1)<<endl;
cin>>s[i].roll;
cout<<"enter name"<<(i+1)<<endl;
cin>>s[i].name;
cout<<"enter marks"<<(i+1)<<endl;
cin>>s[i].marks;
}
}
void student::display(student s[],int n)
{
    for(int i=0;i<n;i++)
    {
        cout<<s[i].roll<<" ";
        cout<<s[i].name<<" ";
        cout<<s[i].marks<<" ";
        cout<<endl;
    }
}
void student::shell_sort(student s[],int n)
{
    int gap = n/2;
    while (gap>=1)
    {
        for(int j= gap;j<n;j++)
        {
            for(int i=j-gap;j<n;j++)
            {
                if(s[i+gap]>s[i])
                {
                    break;
                }
                else
                {
                    student temp;
                    temp = s[i+gap];
                    a[i+gap]=a[i];
                    a[i]=temp;
                }
            }
        }
    }
}
   
int main() {
     int n;
     cout<<"enter the no of students"<<endl;
     cin>>n;
student s[n];
student x;

x.read(s,n);
x.sort(s,n);
x.display(s,n);
return 0;

}







