package org.jsoup.parser;

import java.util.Locale;
import org.jsoup.helper.Validate;

/* JADX INFO: loaded from: classes10.dex */
class CharacterReader {
    static final char EOF = 65535;
    private final char[] input;
    private final int length;
    private int pos = 0;
    private int mark = 0;

    CharacterReader(String str) {
        Validate.notNull(str);
        char[] charArray = str.toCharArray();
        this.input = charArray;
        this.length = charArray.length;
    }

    void advance() {
        this.pos++;
    }

    char consume() {
        char c10 = isEmpty() ? (char) 65535 : this.input[this.pos];
        this.pos++;
        return c10;
    }

    String consumeAsString() {
        char[] cArr = this.input;
        int i10 = this.pos;
        this.pos = i10 + 1;
        return new String(cArr, i10, 1);
    }

    String consumeDigitSequence() {
        int i10;
        char c10;
        int i11 = this.pos;
        while (true) {
            i10 = this.pos;
            if (i10 >= this.length || (c10 = this.input[i10]) < '0' || c10 > '9') {
                break;
            }
            this.pos = i10 + 1;
        }
        return new String(this.input, i11, i10 - i11);
    }

    String consumeHexSequence() {
        int i10;
        char c10;
        int i11 = this.pos;
        while (true) {
            i10 = this.pos;
            if (i10 >= this.length || (((c10 = this.input[i10]) < '0' || c10 > '9') && ((c10 < 'A' || c10 > 'F') && (c10 < 'a' || c10 > 'f')))) {
                break;
            }
            this.pos = i10 + 1;
        }
        return new String(this.input, i11, i10 - i11);
    }

    String consumeLetterSequence() {
        int i10;
        char c10;
        int i11 = this.pos;
        while (true) {
            i10 = this.pos;
            if (i10 >= this.length || (((c10 = this.input[i10]) < 'A' || c10 > 'Z') && (c10 < 'a' || c10 > 'z'))) {
                break;
            }
            this.pos = i10 + 1;
        }
        return new String(this.input, i11, i10 - i11);
    }

    String consumeLetterThenDigitSequence() {
        char c10;
        int i10 = this.pos;
        while (true) {
            int i11 = this.pos;
            if (i11 >= this.length || (((c10 = this.input[i11]) < 'A' || c10 > 'Z') && (c10 < 'a' || c10 > 'z'))) {
                break;
            }
            this.pos = i11 + 1;
        }
        while (!isEmpty()) {
            char[] cArr = this.input;
            int i12 = this.pos;
            char c11 = cArr[i12];
            if (c11 < '0' || c11 > '9') {
                break;
            }
            this.pos = i12 + 1;
        }
        return new String(this.input, i10, this.pos - i10);
    }

    String consumeTo(char c10) {
        int iNextIndexOf = nextIndexOf(c10);
        if (iNextIndexOf == -1) {
            return consumeToEnd();
        }
        String str = new String(this.input, this.pos, iNextIndexOf);
        this.pos += iNextIndexOf;
        return str;
    }

    String consumeToAny(char... cArr) {
        int i10 = this.pos;
        loop0: while (this.pos < this.length) {
            for (char c10 : cArr) {
                if (this.input[this.pos] == c10) {
                    break loop0;
                }
            }
            this.pos++;
        }
        int i11 = this.pos;
        return i11 > i10 ? new String(this.input, i10, i11 - i10) : "";
    }

    String consumeToEnd() {
        char[] cArr = this.input;
        int i10 = this.pos;
        String str = new String(cArr, i10, this.length - i10);
        this.pos = this.length;
        return str;
    }

    boolean containsIgnoreCase(String str) {
        Locale locale = Locale.ENGLISH;
        return nextIndexOf(str.toLowerCase(locale)) > -1 || nextIndexOf(str.toUpperCase(locale)) > -1;
    }

    char current() {
        if (isEmpty()) {
            return (char) 65535;
        }
        return this.input[this.pos];
    }

    boolean isEmpty() {
        return this.pos >= this.length;
    }

    void mark() {
        this.mark = this.pos;
    }

    boolean matchConsume(String str) {
        if (!matches(str)) {
            return false;
        }
        this.pos += str.length();
        return true;
    }

    boolean matchConsumeIgnoreCase(String str) {
        if (!matchesIgnoreCase(str)) {
            return false;
        }
        this.pos += str.length();
        return true;
    }

    boolean matches(char c10) {
        return !isEmpty() && this.input[this.pos] == c10;
    }

    boolean matchesAny(char... cArr) {
        if (isEmpty()) {
            return false;
        }
        char c10 = this.input[this.pos];
        for (char c11 : cArr) {
            if (c11 == c10) {
                return true;
            }
        }
        return false;
    }

    boolean matchesDigit() {
        char c10;
        return !isEmpty() && (c10 = this.input[this.pos]) >= '0' && c10 <= '9';
    }

    boolean matchesIgnoreCase(String str) {
        int length = str.length();
        if (length > this.length - this.pos) {
            return false;
        }
        for (int i10 = 0; i10 < length; i10++) {
            if (Character.toUpperCase(str.charAt(i10)) != Character.toUpperCase(this.input[this.pos + i10])) {
                return false;
            }
        }
        return true;
    }

    boolean matchesLetter() {
        if (isEmpty()) {
            return false;
        }
        char c10 = this.input[this.pos];
        return (c10 >= 'A' && c10 <= 'Z') || (c10 >= 'a' && c10 <= 'z');
    }

    int nextIndexOf(char c10) {
        for (int i10 = this.pos; i10 < this.length; i10++) {
            if (c10 == this.input[i10]) {
                return i10 - this.pos;
            }
        }
        return -1;
    }

    int pos() {
        return this.pos;
    }

    void rewindToMark() {
        this.pos = this.mark;
    }

    public String toString() {
        char[] cArr = this.input;
        int i10 = this.pos;
        return new String(cArr, i10, this.length - i10);
    }

    void unconsume() {
        this.pos--;
    }

    boolean matches(String str) {
        int length = str.length();
        if (length > this.length - this.pos) {
            return false;
        }
        for (int i10 = 0; i10 < length; i10++) {
            if (str.charAt(i10) != this.input[this.pos + i10]) {
                return false;
            }
        }
        return true;
    }

    int nextIndexOf(CharSequence charSequence) {
        char cCharAt = charSequence.charAt(0);
        int i10 = this.pos;
        while (i10 < this.length) {
            if (cCharAt != this.input[i10]) {
                do {
                    i10++;
                    if (i10 >= this.length) {
                        break;
                    }
                } while (cCharAt != this.input[i10]);
            }
            if (i10 < this.length) {
                int i11 = i10 + 1;
                int length = (charSequence.length() + i11) - 1;
                for (int i12 = 1; i11 < length && charSequence.charAt(i12) == this.input[i11]; i12++) {
                    i11++;
                }
                if (i11 == length) {
                    return i10 - this.pos;
                }
            }
            i10++;
        }
        return -1;
    }

    String consumeTo(String str) {
        int iNextIndexOf = nextIndexOf(str);
        if (iNextIndexOf != -1) {
            String str2 = new String(this.input, this.pos, iNextIndexOf);
            this.pos += iNextIndexOf;
            return str2;
        }
        return consumeToEnd();
    }
}
