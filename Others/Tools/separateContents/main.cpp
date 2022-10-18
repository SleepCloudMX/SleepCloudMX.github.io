#include <iostream>
#include <fstream>
#include <string>
#include <direct.h>
using namespace std;

bool separateTodoList(string filename, string dirname)
{
    string infileName = dirname + filename + string(".md");
    ifstream infile(infileName, ios::in);
    if (!infile)
        return false;

    // 若 Parts 文件夹不存在, 则新建文件夹
    string partsDirname = dirname + "Parts\\";
    if (_access(partsDirname.c_str(), 0) == -1)
        _mkdir(partsDirname.c_str());

    // outfile1 指 "行路" 部分, outfile2 指 "环顾" 部分
    string outfileName1 = partsDirname + filename + string(".part1.md");
    string outfileName2 = partsDirname + filename + string(".part2.md");
    ofstream outfile1(outfileName1, ios::out);
    ofstream outfile2(outfileName2, ios::out);

    // 读入第一天内容之前的信息
    string line;
    while (getline(infile, line))
    {
        if (line.find("## ") == 0)
        {
            // 此时读到 ## **.01, 即第一天的标题
            break;
        }
        else
        {
            outfile1 << line << endl;
            outfile2 << line << endl;
        }
    }

    // 写入第一天的标题
    outfile1 << line << endl;
    outfile2 << line << endl;

    // 开始读入剩余内容
    char writingState = 1;
    while (getline(infile, line))
    {
        if (line.find("## ") == 0)
        {
            outfile1 << line << endl;
            outfile2 << line << endl;
        }
        else if (line.find("#### 行路") == 0)
        {
            writingState = 1;
            outfile1 << line << endl;
        }
        else if (line.find("#### 环顾") == 0)
        {
            outfile1 << "\n\n\n";       // 即渲染后增加一个空行
            writingState = 2;
            outfile2 << line << endl;
        }
        else if (writingState == 1)
        {
            outfile1 << line << endl;
        }
        else if (writingState == 2)
        {
            outfile2 << line << endl;
        }
    }

    outfile2.close();
    outfile1.close();
    infile.close();
    return true;
}

int main()
{
    string filename, dirname = R"(E:\Notes\To Do List\)";

    cout << "默认路径: " << dirname << endl;
    cout << "请输入需要拆分的文件名 (无后缀): " << endl;
    while (true)
    {
        cin >> filename;
        if (separateTodoList(filename, dirname))
        {
            cout << "拆分成功!" << endl;
            cout << "文件路径: " << endl;
            cout << dirname << "Parts\\part1.md" <<endl;
            cout << dirname << "Parts\\part2.md" <<endl;
            break;
        }
        else
        {
            cout << "文件不存在!" << endl;
            cout << "请重新输入文件名: " <<endl;
        }
    }
    return 0;
}
