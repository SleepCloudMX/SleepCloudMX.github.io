#include <iostream>
#include <fstream>
#include <string>
using namespace std;

bool eraseSpaces(string filename)
{
    string infileName = filename + string(".md");
    ifstream infile(infileName);
    if (!infile)
        return false;

    string outfileName = filename + string("_erased.md");
    ofstream outfile(outfileName);

    string line;
    int len = 0;        //就算行内公式和 HTML 塞一起, 一行撑死百余字符.
    bool parity = 0;    //'$' 出现次数的奇偶性
    int temp = -1;      //暂存第一个 '$' 的位置
    while(getline(infile, line))
    {
        len = line.length();
        bool redundancy[len];
        for (int i=0; i<len; i++)
        {
            redundancy[i] = false;
        }

        for (int i=0; i<len; i++)
        {
            if (line[i] == '$')
            {
                if (i>0 && line[i-1]=='\\')
                    continue;       //忽略转义的 $
                else
                {
                    parity = (parity==true)?false:true;       //改变奇偶性
                    if (parity==1 && i+1<len && line[i+1]==' ')
                    {
                        temp = i+1;
                        //redundancy[i+1] = true;    //奇态时遇空格则修改为待删除
                    }
                    else if (parity==0 && i>0 && line[i-1]==' ')
                    {
                        if (line[temp] == ' ')
                            redundancy[temp] = true;
                        redundancy[i-1] = true;    //偶态时遇空格则修改为待删除
                    }
                }
            }
        }
        parity = 0;     //重置奇偶性

        //删去冗余空格, 并写入数据
        //注意第 0 位不可能待删除
        //注意从后向前删除.
        for (int i=len-1; i>0; i--)
        {
            if (redundancy[i])
            {
                line.erase(i, 1);       //从第 i 位开始删除 1 位.
            }
        }
        outfile << line << endl;
        //cout << line << endl;
    }

    outfile.close();
    infile.close();
    return true;
}

int main()
{
    string filename = "test";

    cout << "请输入需要删除空格的文件名 (无后缀):" << endl;
    while (cin >> filename)
    {
        if (eraseSpaces(filename))
        {
            cout << "空格删除成功!" << endl;
            cout << "新文件名: " << filename << "_erased.md" << endl;
            break;
        }
    }
    return 0;
}
