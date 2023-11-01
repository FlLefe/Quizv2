const quizController = {

    sendQuestion (req,res) {
        let index = req.params.questionNb;
        const questions = req.session.questionsArray;
        
        res.render("quiz", {
            question: questions[index-1].question,
            options: questions[index-1].options,
            answer: questions[index-1].answer,
            index: (parseInt(index)+1)
        });
    }    
}

module.exports = quizController;




