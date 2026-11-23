package com.byazt.ca;

import com.byazt.lw.m;
import java.util.Deque;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1793, 71})
public class x extends a {
    @Override // com.byazt.ca.a
    public int c(String str, int i10, Deque<com.byazt.dr.c> deque, com.byazt.pz.c cVar) {
        if (!com.byazt.to.c.uj(c(i10, str))) {
            return cVar.c(str, i10, deque);
        }
        int i11 = i10 + 1;
        String str2 = new String(new char[]{c(i10, str), c(i11, str)});
        if (com.byazt.zg.ve.c(str2) != null) {
            deque.push(new m(com.byazt.zg.ve.c(str2)));
            return i10 + 2;
        }
        String strValueOf = String.valueOf(c(i10, str));
        if (com.byazt.zg.ve.c(strValueOf) != null) {
            deque.push(new m(com.byazt.zg.ve.c(strValueOf)));
            return i11;
        }
        throw new IllegalArgumentException("Unrecognized:" + strValueOf + "examine:" + str.substring(0, i10));
    }
}
