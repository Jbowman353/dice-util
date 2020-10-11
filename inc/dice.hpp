#ifndef __DICE_HPP
#define __DICE_HPP

namespace diceutil {
    class Die {
    private:
        int sides;
        int val;
    public:
        Die(int sides);
        int roll();
        int getSides();
        int getVal();
        int setVal(int newVal);
    };
}

#endif