const base = {
    get() {
        return {
            url : "http://localhost:8080/shequwuyeguanli/",
            name: "shequwuyeguanli",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/shequwuyeguanli/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "社区物业管理系统"
        } 
    }
}
export default base
