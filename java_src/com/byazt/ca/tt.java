package com.byazt.ca;

import com.byazt.lw.gt;
import java.util.Deque;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1793, 13})
public class tt extends a {
    @Override // com.byazt.ca.a
    public int c(String str, int i10, Deque<com.byazt.dr.c> deque, com.byazt.pz.c cVar) {
        if ('\'' != c(i10, str)) {
            return cVar.c(str, i10, deque);
        }
        int i11 = i10 + 1;
        int length = str.length();
        int i12 = i11;
        while (i12 < length && c(i12, str) != '\'') {
            i12++;
        }
        if (c(i12, str) != '\'') {
            throw new com.byazt.hh.c("String expression not surrounded by '", str.substring(i11 - 1));
        }
        deque.push(new gt(str.substring(i11, i12)));
        return i12 + 1;
    }
}
