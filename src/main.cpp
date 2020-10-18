#include <dice.hpp>

#include <boost/program_options.hpp>
#include <boost/program_options/options_description.hpp>
#include <boost/program_options/variables_map.hpp>
#include <iostream>
#include <string>

namespace po = boost::program_options;


int main(int argc, char* argv[]) {
    po::options_description desc("Available Options");
    desc.add_options()
        ("help", "Help Message")
        ("highest,h", po::value<unsigned int>(), "only take highest n rolls")
        ("lowest,l", po::value<unsigned int>(), "only take lowest n rolls")
    ;

    po::variables_map vars;
    po::store(po::parse_command_line(argc, argv, desc), vars);
    po::notify(vars);

    const unsigned int keepHighest = (vars.count("highest") ? vars["highest"].as<unsigned int>() : 0);
    const unsigned int keepLowest = (vars.count("lowest") ? vars["lowest"].as<unsigned int>() : 0);

    return 0;
}
