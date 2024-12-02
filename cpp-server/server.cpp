#include "httplib.h"

httplib::Server svr;

int main() {
    svr.Get("/", [](const httplib::Request &, httplib::Response &res) {
        res.set_content("{\"message\":\"Hello World!\"}", "application/json");
    });

    svr.listen("0.0.0.0", 8080);
}
