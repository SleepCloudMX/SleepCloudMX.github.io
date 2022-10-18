#include <iostream>
#include <fstream>
#include <string>
using namespace std;

bool isLeapYear(int year)
{
    return year%4==0 && year%100!=0 || year%400==0;
}

int daysPerMonth(int year, int month)
{
    int days[12] = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
    if (month == 2 && isLeapYear(year))
        return 29;
    else
        return days[month-1];
}

int firstDay(int year, int month)
{
    //返回第一天是星期几，其中星期天记为 0.
    int days = 6;   //2022.1.1 is Saturday.
    for (int y=2022; y<year; y++)
        for (int m=1; m<=12; m++)
            days += daysPerMonth(y, m);
    for (int m=1; m<month; m++)
        days += daysPerMonth(year, m);
    return days % 7;
}

bool createTemplate(char *filename, int year, int month)
{
    fstream iofile(filename, ios::in);
    if (iofile)
    {
        cout << "文件已存在！已取消模板创建。" << endl;
        return false;
    }

    iofile.open(filename, ios::out);

    //写入标题
    char source[256];
    sprintf(source, "# %d.%02d\n\n", year, month);
    iofile << source;

    //创建表格头部
    iofile << "---\n\n";
    iofile << "|        日         |        一         |        二         |        三         |        四         |        五         |        六         |" << endl;
    iofile << "| :---------------: | :---------------: | :---------------: | :---------------: | :---------------: | :---------------: | :---------------: |" << endl;
    int days = daysPerMonth(year, month);
    int vacancy = firstDay(year, month);
    int cell = 0, num = 0;
    while (cell < vacancy)
    {
        iofile << "|                   ";
        ++cell;
    }

    //创建表格主体
    char week[7][8] = {"周日", "周一", "周二", "周三", "周四", "周五", "周六"};
    int today = vacancy;
    while (++num <= days)
    {
        sprintf(source, "| [%02d](# %02d.%02d %s) ", num, month, num, week[today]);
        today = (++today) % 7;
        iofile << source;
        if (++cell == 7)
        {
            cell = 0;
            iofile << "|" << endl;
        }
        if (num == days)
            break;
    }
    if (cell > 0)
    {
        while (++cell <= 7)
        {
            iofile << "|                   ";
        }
        iofile << "|" << endl;
    }

    //创建每日日程
    num = 0;
    today = vacancy;
    while (++num <= days)
    {
        sprintf(source, "\n\n\n## %02d.%02d %s\n\n", month, num, week[today]);
        today = (++today) % 7;

        iofile << source;
        iofile << "#### 行路\n\n";
        iofile << "上午\n\n" << "- [ ] \n\n";
        iofile << "下午\n\n" << "- [ ] \n\n";
        iofile << "晚上\n\n" << "- [ ] \n\n";
        iofile << "#### 环顾\n\n";
        iofile << "上午\n\n" << "- \n\n";
        iofile << "下午\n\n" << "- \n\n";
        iofile << "晚上\n\n" << "- \n\n";
    }

    iofile.close();
    return true;
}

int main()
{
    int year = 2022, month = 8;
    char filename[64], dirname[48] = R"(E:\Notes\To Do List)";

    while (true)
    {
        while (true)
        {
            cout << "年份: ";
            cin >> year;
            if (cin.fail() || year<2022 || year>9999)
            {
                cout << "输入年份有误!" << endl;
                cin.clear();
                cin.ignore(32767, '\n');
            }
            else
                break;
        }
        while (true)
        {
            cout << "月份: ";
            cin >> month;
            if (cin.fail() || month<1 || month>12)
            {
                cout << "输入月份有误!" << endl;
                cin.clear();
                cin.ignore(32767, '\n');
            }
            else
                break;
        }

        sprintf(filename, "%s\\%d.%02d.md", dirname, year, month);
        if (createTemplate(filename, year, month))
        {
            cout << "创建成功!" << endl;
            cout << "文件路径: " << filename << endl;
            break;
        }
        else
            cout << "请重新输入: " << endl;
    }
    return 0;
}
