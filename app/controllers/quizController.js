const quizController = {

    getQuestion (req,res) {
        let index = req.params.questionNb;
        const questions = req.session.questionsArray;
        req.session.score = 0;
        
        if (index <= questions.length){
            res.render("quiz", {
                question: questions[index-1].question,
                options: questions[index-1].options,
                answer: questions[index-1].answer,
                index: (parseInt(index)+1)
            });
        } else {
            res.redirect("/score");
        }
    },
    
    postAnswer (req,res) {
        const index = req.params.questionNb;
        const answer = req.body.choice;
                
        req.session.answers.push(answer);
        res.redirect(`/quiz/${index}`);
    },

    displayResult (req,res) {
        res.render('score', {
            answers:req.session.answers,
            questions:req.session.questionsArray});
    }
}

module.exports = quizController;




