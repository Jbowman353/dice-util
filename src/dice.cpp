#include <random>
#include <dice.hpp>

namespace diceutil {
    Die::Die(unsigned int sides): sides(sides) { }

    unsigned int Die::getSides() {
        return this->sides;
    }

    int Die::getVal() {
        return this->val;
    }

    int Die::setVal(int newVal) {
        this->val = newVal;
        return this->val;
    }

    int Die::roll() {
        std::random_device eng;
        std::uniform_int_distribution<int> dist(1, this->getSides());
        int newVal = dist(eng);
        this->setVal(newVal);
        return newVal;
    }
}


