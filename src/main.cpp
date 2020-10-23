#include <dice.hpp>

#include <boost/program_options.hpp>
#include <boost/program_options/options_description.hpp>
#include <boost/program_options/variables_map.hpp>

#include <iostream>
#include <string>
#include <regex>

namespace po = boost::program_options;

const std::string BAD_ROLL_MSG = "Please specify number and type of dice. Format: #d#";

void parseRoll(std::string rollStr, unsigned int keepHighest, unsigned int keepLowest) {
    std::regex dieRollRegex("[0-9]+d[0-9]+");
    if (std::regex_match(rollStr, dieRollRegex)) {
        // Parse the roll
        auto dLoc = rollStr.find('d');
        uint nDice = std::stoi( rollStr.substr(0, dLoc) );
        uint nSides = std::stoi( rollStr.substr(dLoc + 1) );
        printf("Rolling %d Dice w/ %d Sides Each...\n\n", nDice, nSides);
    } else {
        std::cout << BAD_ROLL_MSG << std::endl;
        exit(1);
    }
}

int main(int argc, char* argv[]) {
    // Set up the command line arguments
    po::options_description desc("Available Options");
    desc.add_options()
        ("help", "Help Message")
        ("highest,h", po::value<unsigned int>(), "only take highest n rolls")
        ("lowest,l", po::value<unsigned int>(), "only take lowest n rolls")
        ("dice", po::value<std::string>(), "dice to roll")
    ;
    po::positional_options_description p;
    p.add("dice", 1);

    po::variables_map vars;
    po::store(po::command_line_parser(argc, argv).
          options(desc).positional(p).run(), vars);
    po::notify(vars);
    ////////////////////////////////////////

    // Grab the values for the high / low args
    const unsigned int keepHighest = (vars.count("highest") ? vars["highest"].as<unsigned int>() : 0);
    const unsigned int keepLowest = (vars.count("lowest") ? vars["lowest"].as<unsigned int>() : 0);

    // If both provided, notify and exit
    if (keepLowest && keepHighest) {
        std::cout << "Please only provide either -h [ --highest ] OR -l [ --lowest ], not both" << std::endl;
        return 1;
    }

    if (vars.count("dice")) {
        // Make sure the dice arg is actually supplied
        const std::string diceRollStr(vars["dice"].as<std::string>());

        parseRoll(diceRollStr, keepHighest, keepLowest);

        return 0;
    } else {
        std::cout << BAD_ROLL_MSG << std::endl;
        std::cout << desc << std::endl;
        return 1;
    }
}
