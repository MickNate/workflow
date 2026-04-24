import org.junit.*;

import static org.junit.Assert.*;

public class mainTest {

    @Test
    public void next() {
        assertEquals(41,main.next(40));
    }

    @Test
    public void before() {
        assertEquals(39,main.before(40));
    }
}