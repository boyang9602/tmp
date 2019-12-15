# Lang 39
Patch193 Incorrect  
Patch20 Incorrect  

Apache Lang project from defects4j, id: 39. The bug is a `java.lang.NullPointerException`:  
```java
for (int i = 0; i < searchList.length; i++) {
    int greater = replacementList[i].length() - searchList[i].length();
    if (greater > 0) {
        increase += 3 * greater; // assume 3 matches
    }
}
```  
The `searchList[i]` could be null, which does not have a `length()` method. The plausible version is by adding `if (repeat)`, where repeat is false by default, before this `for` loop. The correct version is by `continue`ing the loop if `replacementList[i]` is null or `searchList[i]` is null.  

- [buggy code](./codes/_buggy.md)  
- [fixed code](./codes/_fixed.md)  
- [plausible code](./codes/_plausible.md)  

### Test Case  
In the test case, all assertion use default `repeat`'s value which is false.  
```java
/**
 * Test method for 'StringUtils.replaceEach(String, String[], String[])'
 */
public void testReplace_StringStringArrayStringArray() {

    
    //JAVADOC TESTS START
    assertNull(StringUtils.replaceEach(null, new String[]{"a"}, new String[]{"b"}));
    assertEquals(StringUtils.replaceEach("", new String[]{"a"}, new String[]{"b"}),"");
    assertEquals(StringUtils.replaceEach("aba", null, null),"aba");
    assertEquals(StringUtils.replaceEach("aba", new String[0], null),"aba");
    assertEquals(StringUtils.replaceEach("aba", null, new String[0]),"aba");
    assertEquals(StringUtils.replaceEach("aba", new String[]{"a"}, null),"aba");

    assertEquals(StringUtils.replaceEach("aba", new String[]{"a"}, new String[]{""}),"b");
    assertEquals(StringUtils.replaceEach("aba", new String[]{null}, new String[]{"a"}),"aba");
    assertEquals(StringUtils.replaceEach("abcde", new String[]{"ab", "d"}, new String[]{"w", "t"}),"wcte");
    assertEquals(StringUtils.replaceEach("abcde", new String[]{"ab", "d"}, new String[]{"d", "t"}),"dcte");
    //JAVADOC TESTS END

    assertEquals("bcc", StringUtils.replaceEach("abc", new String[]{"a", "b"}, new String[]{"b", "c"}));
    assertEquals("q651.506bera", StringUtils.replaceEach("d216.102oren",
        new String[]{"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", 
            "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", 
            "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", 
            "U", "V", "W", "X", "Y", "Z", "1", "2", "3", "4", "5", "6", "7", "8", "9"},
        new String[]{"n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "a", 
            "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "N", "O", "P", "Q", 
            "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "A", "B", "C", "D", "E", "F", "G", 
            "H", "I", "J", "K", "L", "M", "5", "6", "7", "8", "9", "1", "2", "3", "4"}));

    // Test null safety inside arrays - LANG-552
    assertEquals(StringUtils.replaceEach("aba", new String[]{"a"}, new String[]{null}),"aba");
    assertEquals(StringUtils.replaceEach("aba", new String[]{"a", "b"}, new String[]{"c", null}),"cbc");
}
```

The invariants of plausible version and fixed version do not have differences except the `EXIT` line number.  
[failure_tests_invariants/diff-merged/org.apache.commons.lang3.StringUtils.json](https://boyang9602.github.io/?datasource=https://raw.githubusercontent.com/boyang9602/tmp/master/Lang/39/failure_tests_invariants/diff-merged/org.apache.commons.lang3.StringUtils.json)  
[passing_tests_invariants/diff-merged/org.apache.commons.lang3.StringUtils.json](https://boyang9602.github.io/?datasource=https://raw.githubusercontent.com/boyang9602/tmp/master/Lang/39/passing_tests_invariants/diff-merged/org.apache.commons.lang3.StringUtils.json)  
