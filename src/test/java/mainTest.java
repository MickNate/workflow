import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class mainTest {

    @Test
    void next() {
        assertEquals(41,main.next(40));
    }

    @Test
    void before() {
        assertEquals(39,main.before(40));
    }
}