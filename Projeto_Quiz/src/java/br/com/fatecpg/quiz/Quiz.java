package br.com.fatecpg.quiz;

import java.util.ArrayList;
import java.util.Collections;

public class Quiz {
    private static int testCount = 0;
    private static double testsGradeSum = 0.0;
    private static double lastGrade = 0.0;
    private static ArrayList<Question> test;
    
    public static ArrayList<Question> getTest(){
        if(test == null){
            test = new ArrayList<>();
            Question q1 = new Question
            ("Um casal tem 6 filhos homens, cada filho tem uma irmã, "
                    + "quantas pessoas há na família?", "9", new String[]{"6","14","12","9"});
            test.add(q1);
            Question q2 = new Question
            ("O pai do padre é filho do meu pai. "
                    + "O que eu sou do Padre?", "Tio", new String[]{"Filho","Tio","Avô","Outro"});
            test.add(q2);
            Question q3 = new Question
            ("A metade do dobro de uma dúzia é igual a:", "12", new String[]{"24","12","6","8"});
            test.add(q3);
            Question q4 = new Question
            ("O avião que ultrapassa a velocidade "
                    + "do som é:", "Supersônico", new String[]{"Supersônico","Hipersônico","Ultrasônico","Teco teco"});
            test.add(q4);
            Question q5 = new Question
            ("O que é que, conforme diz o ditado, nasce para todos?", "Sol", new String[]{"Bebê","Eclipse","Sol","Outro"});
            test.add(q5);
            Question q6 = new Question
            ("Numa escola foram distribuídas 20 laranjas. Cada aluno recebeu a metade de "
                    + "uma laranja, e sobraram 3 laranjas inteiras. Quantos alunos "
                    + "havia na escola?", "34", new String[]{"40","44","36","34"});
            test.add(q6);
            Question q7 = new Question
            ("Java é uma linguagem de programação interpretada orientada a objetos "
                    + "desenvolvida na década de 90 por uma equipe "
                    + "de programadores chefiada por", "James Gosling", new String[]{"James Gosling","Rasmus Lerdof","Donald Trump","N/A"});
            test.add(q7);
            Question q8 = new Question
            ("É uma tecnologia baseada em Java que simplifica "
                    + "o processo de desenvolvimento de sites da web dinâmicos.", "JSP", new String[]{"JAVA","C++","MYSQL","JSP"});
            test.add(q8);
            Question q9 = new Question
            ("Nome da entidade Grega que era o Deus das riquezas:", "Pluto", new String[]{"Baco","Pluto","Zeus","Dolarus"});
            test.add(q9);
            Question q10 = new Question
            ("O leite está para o copo assim como "
                    + "a carta está para...", "O Envelope", new String[]{"O selo","O Envelope","O correio","A caneta"});
            test.add(q10);
            
        }
        Collections.shuffle(test);
        return test;
    }
    
    public static double validateTest(String userAnswers[]){
        int count = 0;
        for(int i=0; i<test.size(); i++){
            if(test.get(i).getAnswer().equals(userAnswers[i])){
                count++;
            }
        }
        double grade = (double)count / (double)test.size();
        Quiz.lastGrade = grade;
        Quiz.testsGradeSum += grade;
        Quiz.testCount++;
        return grade;
    }
    
    public static double getLastGrade(){
        return Quiz.lastGrade;
    }
    
    public static double getGradeAverage(){
        return Quiz.testsGradeSum / (double)Quiz.testCount;
    }
}
