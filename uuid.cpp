#include "uuid.h"

#include <boost/uuid/uuid.hpp>
#include <boost/uuid/uuid_generators.hpp>
#include <boost/uuid/uuid_io.hpp>
using namespace boost::uuids;


//This is a another way to generate UUID by boost.

std::string generate_uuid() {
    boost::uuids::random_generator gen;
    boost::uuids::uuid a_uuid = gen();
    return boost::uuids::to_string(a_uuid);
}




//Below is another plan for getting a uuid

//string generate_uuid()
//{
//    uuid_t uu;

//    uuid_generate( uu );

//    return uu;

//}

