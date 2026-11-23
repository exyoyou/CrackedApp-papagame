package com.byazt.ca;

import java.util.Deque;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1793, 46})
public class n extends a {
    @Override // com.byazt.ca.a
    public int c(String str, int i10, Deque<com.byazt.dr.c> deque, com.byazt.pz.c cVar) {
        char c10;
        int i11 = i10;
        while (true) {
            c10 = c(i11, str);
            if (!com.byazt.to.c.tt(c10) && !com.byazt.to.c.ve(c10)) {
                break;
            }
            i11++;
        }
        if (c10 != '(') {
            return cVar.c(str, i10, deque);
        }
        deque.push(new com.byazt.lw.da(str.substring(i10, i11)));
        return i11 + 1;
    }
}
