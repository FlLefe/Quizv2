const categories = require("../categories.json");

exports.getCategory = (req, res, next) => {
    const categoryName = req.params.categoryName;
    const category = categories.find((element) => element.value === categoryName);
    
    if(category){
        res.render("quizz", {
            category
        });
    } else {
        next();
    }
    
};