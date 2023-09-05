#include <iostream>
#include <fstream>

#include "parq.h"

using namespace std;

void file_head(const char* filename){
    fstream myfile;
    string line;

    myfile.open(filename, ios::in);
    if ( myfile.is_open() )
    {
        while ( getline(myfile, line) )
        {
            cout << line << '\n';
        }
        myfile.close();
    }
    else cout << "Unable to open file" << filename;


}


void sayhello(int a){
    std::cout << "Hello from C++ " << a << "\n";
}


int twice(int a){
    return 2 * a;
}
