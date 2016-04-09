package routers

import (
	"github.com/qinxiandiqi/diary_api/controllers"
	"github.com/astaxie/beego"
)

func init() {
    beego.Router("/", &controllers.MainController{})
}
