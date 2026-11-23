package external.org.apache.commons.lang3;

/* JADX INFO: loaded from: classes8.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String[] f90938a = new String[128];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final char f90939b = '\n';

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final char f90940c = '\r';

    static {
        char c10 = 0;
        while (true) {
            String[] strArr = f90938a;
            if (c10 >= strArr.length) {
                return;
            }
            strArr[c10] = String.valueOf(c10);
            c10 = (char) (c10 + 1);
        }
    }

    public static boolean a(char c10) {
        return c10 < 128;
    }

    public static boolean b(char c10) {
        return (c10 >= 'A' && c10 <= 'Z') || (c10 >= 'a' && c10 <= 'z');
    }

    public static boolean c(char c10) {
        return c10 >= 'a' && c10 <= 'z';
    }

    public static boolean d(char c10) {
        return c10 >= 'A' && c10 <= 'Z';
    }

    public static boolean e(char c10) {
        return (c10 >= 'A' && c10 <= 'Z') || (c10 >= 'a' && c10 <= 'z') || (c10 >= '0' && c10 <= '9');
    }

    public static boolean f(char c10) {
        return c10 < ' ' || c10 == 127;
    }

    public static boolean g(char c10) {
        return c10 >= '0' && c10 <= '9';
    }

    public static boolean h(char c10) {
        return c10 >= ' ' && c10 < 127;
    }

    public static char i(Character ch) {
        if (ch != null) {
            return ch.charValue();
        }
        throw new IllegalArgumentException("The Character must not be null");
    }

    public static char j(Character ch, char c10) {
        return ch == null ? c10 : ch.charValue();
    }

    public static char k(String str) {
        if (e.f0(str)) {
            throw new IllegalArgumentException("The String must not be empty");
        }
        return str.charAt(0);
    }

    public static char l(String str, char c10) {
        return e.f0(str) ? c10 : str.charAt(0);
    }

    @Deprecated
    public static Character m(char c10) {
        return Character.valueOf(c10);
    }

    public static Character n(String str) {
        if (e.f0(str)) {
            return null;
        }
        return Character.valueOf(str.charAt(0));
    }

    public static int o(char c10) {
        if (g(c10)) {
            return c10 - '0';
        }
        throw new IllegalArgumentException("The character " + c10 + " is not in the range '0' - '9'");
    }

    public static int p(char c10, int i10) {
        return !g(c10) ? i10 : c10 - '0';
    }

    public static int q(Character ch) {
        if (ch != null) {
            return o(ch.charValue());
        }
        throw new IllegalArgumentException("The character must not be null");
    }

    public static int r(Character ch, int i10) {
        return ch == null ? i10 : p(ch.charValue(), i10);
    }

    public static String s(char c10) {
        return c10 < 128 ? f90938a[c10] : new String(new char[]{c10});
    }

    public static String t(Character ch) {
        if (ch == null) {
            return null;
        }
        return s(ch.charValue());
    }

    public static String u(char c10) {
        if (c10 < 16) {
            return "\\u000" + Integer.toHexString(c10);
        }
        if (c10 < 256) {
            return "\\u00" + Integer.toHexString(c10);
        }
        if (c10 < 4096) {
            return "\\u0" + Integer.toHexString(c10);
        }
        return "\\u" + Integer.toHexString(c10);
    }

    public static String v(Character ch) {
        if (ch == null) {
            return null;
        }
        return u(ch.charValue());
    }
}
