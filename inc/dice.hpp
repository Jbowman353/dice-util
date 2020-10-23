#ifndef __DICE_HPP
#define __DICE_HPP

namespace diceutil {
    class Die {
    private:
        unsigned int sides;
        int val;
    public:
        Die(unsigned int sides);
        int roll();
        unsigned int getSides();
        int getVal();
        int setVal(int newVal);
    };
}

#endif