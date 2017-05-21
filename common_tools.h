//
// Created by Lucas Chen on 2017/5/20.
//

#ifndef CSTORY_TOOLS_H
#define CSTORY_TOOLS_H

#include <ctime>

void negBool(bool &target) {
	if (target) {
		target = false;
	} else {
		target = true;
	}
}

long getCurrentTime() {
    return time(nullptr);
}

#endif //CSTORY_TOOLS_H
