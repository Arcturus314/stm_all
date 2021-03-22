#include <fstream>
#include <iostream>
#include "sos.cpp"

using namespace std;




std::ifstream infile("noise50kpoints3.txt");

int main() {

    SOS filter;
    int point;
    while (infile >> point) {
        cout << filter.filter((float) point);
        cout << "\n";
    }
}




