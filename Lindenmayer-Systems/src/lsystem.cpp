
#include "lsystem.h"
#include <stack>
#include <memory>
#include <iostream>

std::string LindenmayerSystemDeterministic::expandSymbol(unsigned char const& sym) {
	/*============================================================
		TODO 1.1
		For a given symbol in the sequence, what should it be replaced with after expansion?
	*/
	if(rules.find(sym) != rules.end()){
        return rules.find(sym)-> second;
	}else
	return {char(sym)}; // this constructs string from char
	
	//============================================================

	/*
	You may find useful:
		map.find: Iterator to an element with key equivalent to key. If no such element is found, past-the-end (see end()) iterator is returned.
		http://en.cppreference.com/w/cpp/container/unordered_map/find
	*/
}

std::string LindenmayerSystem::expandOnce(std::string const& symbol_sequence) {
	/*============================================================
		TODO 1.2
		Perform one iteration of grammar expansion on `symbol_sequence`.
		Use the expandSymbol method
	*/
	std::string result = "";
	for(char c: symbol_sequence) {
		result += expandSymbol(c);
	}
	return result;
	//============================================================
}

std::string LindenmayerSystem::expand(std::string const& initial, uint32_t num_iters) {
	/*============================================================
		TODO 1.3
		Perform `num_iters` iterations of grammar expansion (use expandOnce)
	*/
	std::string result = initial;
	for(int i = 0; i < num_iters; i++){
		result = expandOnce(result);
	}
    //std::cout << result;
	return result;
	
	//============================================================
}

std::vector<Segment> LindenmayerSystem::draw(std::string const& symbols) {
	std::vector<Segment> lines; // this is already initialized as empty vector
	/*============================================================
		TODO 2
		Build line segments according to the sequence of symbols
		The initial position is (0, 0) and the initial direction is "up" (0, 1)
		Segment is std::pair<vec2, vec2>

		you can create a Segment as {p1, p2}, where p1 and p2 are vec2, e.g.:
		lines.push_back({p1, p2});

		You may also find std::stack useful:

		https://en.cppreference.com/w/cpp/container/stack

		There also is a mat2 class in utils/vec.* you may find useful for
		implementing rotations.
	*/
    vec2 initial = vec2(0,0);
    vec2 up = vec2(0,1);


    lines.push_back({initial, initial+up});

    std::stack<Segment> st;
    std::pair<vec2,vec2> tempPair;
    mat2 rotMat = mat2(cos(rotation_angle_deg),-sin(rotation_angle_deg),sin(rotation_angle_deg),cos(rotation_angle_deg));
    mat2 rotMat2 = mat2(cos(-rotation_angle_deg),-sin(-rotation_angle_deg),sin(-rotation_angle_deg),cos(-rotation_angle_deg));



    for(char c : symbols){

        switch (c){

            case '+':
                up = rotMat*up;
               // up = lines.push_back({lines.back().second,newV});
                break;
            case '-':
                up = rotMat2*up;
                //lines.push_back({lines.back().second,newV});
                break;
            case '[':
                st.push({lines.back().second,up});
                break;
            case ']':
                tempPair = st.top();
                up = tempPair.second;
                lines.push_back({tempPair.first, tempPair.first});
                st.pop();
                break;
            default :
                lines.push_back({lines.back().second, lines.back().second + up});
                break;


        }
    }



	return lines;
	//============================================================
}

std::string LindenmayerSystemStochastic::expandSymbol(unsigned char const& sym) {
	/*============================================================
		TODO 4
		For a given symbol in the sequence, what should it be replaced with after expansion?
		(stochastic case)

		Use dice.roll() to get a random number between 0 and 1
	*/
	/*
    if(rules.find(sym) != rules.end()){

        std::vector<StochasticRule> ruleV = rules.find(sym)->second;
        std::vector<std::string> placeHolder(100);
        int i = 0;
        int max = 0;
        for(StochasticRule r : ruleV){
            i = max;
            for( ; i < r.probability*100; i++){
                placeHolder[i] = r.expansion;
                max = i;
            }
        }

        int v1 = rand() % 100;
        return placeHolder[v1];

    }*/

	double wahrsch = dice.roll();
    if (rules.find(sym) != rules.end()) {
        std::vector<StochasticRule> ruleVec = rules.find(sym)->second;
        double wahrschSumme = 0;
        for(StochasticRule r : ruleVec) {
            wahrschSumme += r.probability;
            if(wahrsch < wahrschSumme) {
                return r.expansion;
            }
        }
    }
	
	return {char(sym)};

	//============================================================
}

void LindenmayerSystemDeterministic::addRuleDeterministic(unsigned char sym, std::string const& expansion) {
	rules[sym] = expansion;
}

void LindenmayerSystemStochastic::addRuleStochastic(unsigned char sym, std::vector<StochasticRule> expansions_with_ps) {
	rules[sym] = expansions_with_ps;
}
