const quizController = {
    sendQuestion () {
      
        res.render("quiz", {
            question: questionsArray[0].question,
            options: questionsArray[0].options,
            answer: questionsArray[0].answer
        });
    }    
}

module.exports = quizController;




