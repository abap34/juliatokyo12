#include <iostream>
#include <random>

int main() {
    std::mt19937 engine(34);
    std::uniform_real_distribution<> dist(0, 1);
    std::cout << dist(engine) << std::endl;
}

