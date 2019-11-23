package lims2019fc

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/indexLims2019fc")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
