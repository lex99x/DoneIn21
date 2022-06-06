import UIKit
class Faq: UIViewController {
    var questions : [QuestionDetail] = []
    var selectedQuestion : QuestionDetail = QuestionDetail()
    
    @IBOutlet weak var questiontableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        questiontableview.delegate = self
        questiontableview.dataSource = self
        questions = [
            QuestionDetail(question: "What is the 21 day theory?", titleQuestion: "What is the 21 day theory", answer: "It is a concept formulated by plastic surgeon Maxwell Maltz, introduced in his work entitled “Psychocybernetics” from 1960, being an area of ​​psychology that aims to help improve self-confidence and self-image, seeking a more successful lifestyle.", backgroundColor: UIColor(named: "DoneIn21Blue")!, backgroundImage: UIImage(named: "oquee")!),
            
            QuestionDetail(question: "What is it for?", titleQuestion: "What is it for?", answer: "To create new routines through repetitions for 21 days, in which it is expected that the brain no longer needs to think to act in a certain way, as the human mind will already be used to the new habit.", backgroundColor: UIColor(named: "DoneIn21Blue")!, backgroundImage: UIImage(named: "paraqueserve")!),
        
            QuestionDetail(question: "Why should I do it?", titleQuestion: "Why should I do it?", answer: "To perform new tasks more naturally and with less mental effort, by integrating this new task, a new way of living and realizing dreams can be discovered.", backgroundColor: UIColor(named: "DoneIn21Blue")!, backgroundImage: UIImage(named: "pqdevo")!)
        ]
        
    }
}


extension Faq :UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedQuestion = questions[indexPath.item]
        performSegue(withIdentifier: "showQuestionDetail", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc2 : FaqDetail = segue.destination as! FaqDetail
        vc2.clickedCell = selectedQuestion
    }
}


extension Faq :UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : Textcell = questiontableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! Textcell
        
        cell.writetext(text: questions[indexPath.item])

        
        return cell
    }
    
    
}

