package com.byazt.ca;

import com.byazt.lw.rl;
import java.util.Deque;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1793, 15})
public class uj extends a {
    @Override // com.byazt.ca.a
    public int c(String str, int i10, Deque<com.byazt.dr.c> deque, com.byazt.pz.c cVar) {
        if ('(' != c(i10, str)) {
            return cVar.c(str, i10, deque);
        }
        deque.push(new rl(com.byazt.zg.uj.LEFT_PAREN));
        return i10 + 1;
    }
}
