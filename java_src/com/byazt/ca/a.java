package com.byazt.ca;

import java.util.Deque;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1793, 34})
public abstract class a {
    public char c(int i10, String str) {
        if (i10 >= str.length()) {
            return (char) 26;
        }
        return str.charAt(i10);
    }

    public abstract int c(String str, int i10, Deque<com.byazt.dr.c> deque, com.byazt.pz.c cVar);

    public int getIdentifier(int i10, String str) {
        int i11 = 0;
        while (true) {
            int i12 = i11 + i10;
            char c10 = c(i12, str);
            if (!com.byazt.to.c.tt(c10) && !com.byazt.to.c.ve(c10)) {
                return i12;
            }
            i11++;
        }
    }

    public int tt(int i10, String str) {
        while (com.byazt.to.c.c(c(i10, str))) {
            i10++;
        }
        return i10;
    }
}
