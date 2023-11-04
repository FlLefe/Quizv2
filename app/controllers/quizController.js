const shuffleArray = require("../../middlewares/shuffleArray");

const quizController = {

    async getQuestion (req,res) {
        let index = req.params.questionNb;
        const questions = req.session.questionsArray;
        req.session.score = 0;
        
        if (index <= questions.length){
            const optionsArray = [questions[index-1].answer_1, questions[index-1].answer_2, questions[index-1].answer_3, questions[index-1].answer_4];
            const optionsShuffled = await shuffleArray(optionsArray);
            res.render("quiz", {
                question: questions[index-1].question_text,
                options: optionsShuffled,
                answer: questions[index-1].correct_answer,
                index: (parseInt(index)),
                questionsNb: questions.length
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




