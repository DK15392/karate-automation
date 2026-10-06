package practice;

import com.intuit.karate.junit5.Karate;

class PracticeTestingRunner {
    
    @Karate.Test
    Karate testPracticeTesting() {
        return Karate.run("practice-testing").relativeTo(getClass());
    }
}
