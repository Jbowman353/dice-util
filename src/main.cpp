#include <dice.hpp>

#include <iostream>

int main() {
    diceutil::Die d{4};
    std::cout << d.roll();
}