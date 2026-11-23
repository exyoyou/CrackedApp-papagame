package com.join.mgps.Util;

/* JADX INFO: loaded from: classes4.dex */
public class s {
    private static boolean a(char c10) {
        if (c10 != ' ' && c10 != 133 && c10 != 5760) {
            if (c10 == 8199) {
                return false;
            }
            if (c10 != 8287 && c10 != 12288 && c10 != 8232 && c10 != 8233) {
                switch (c10) {
                    case '\t':
                    case '\n':
                    case 11:
                    case '\f':
                    case '\r':
                        break;
                    default:
                        return c10 >= 8192 && c10 <= 8202;
                }
            }
        }
        return true;
    }

    public static CharSequence b(CharSequence sequence) {
        int length = sequence.length() - 1;
        while (length > 0 && a(sequence.charAt(length))) {
            length--;
        }
        return sequence.subSequence(0, length + 1);
    }
}
