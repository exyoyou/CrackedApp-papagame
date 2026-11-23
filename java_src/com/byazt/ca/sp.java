package com.byazt.ca;

import com.byazt.lw.z;
import java.util.Deque;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1793, 91})
public class sp extends a {
    private boolean c(String str, int i10, Deque<com.byazt.dr.c> deque) {
        if ('-' != c(i10, str)) {
            return com.byazt.to.c.ve(c(i10, str));
        }
        if (deque.peek() != null && !com.byazt.zg.ve.c(deque.peek().c())) {
            return false;
        }
        if (com.byazt.to.c.ve(c(i10 + 1, str))) {
            return true;
        }
        throw new IllegalArgumentException("Unrecognized - symbol, not a negative number or operator, problem range:" + str.substring(0, i10));
    }

    @Override // com.byazt.ca.a
    public int c(String str, int i10, Deque<com.byazt.dr.c> deque, com.byazt.pz.c cVar) {
        char c10;
        if (!c(str, i10, deque)) {
            return cVar.c(str, i10, deque);
        }
        int i11 = c(i10, str) == '-' ? i10 + 1 : i10;
        boolean z10 = false;
        while (true) {
            c10 = c(i11, str);
            if (!com.byazt.to.c.ve(c10) && (z10 || c10 != '.')) {
                break;
            }
            i11++;
            if (c10 == '.') {
                z10 = true;
            }
        }
        if (c10 != '.') {
            deque.push(new z(str.substring(i10, i11)));
            return i11;
        }
        throw new IllegalArgumentException("Illegal negative number format, problem interval:" + str.substring(i10, i11));
    }
}
