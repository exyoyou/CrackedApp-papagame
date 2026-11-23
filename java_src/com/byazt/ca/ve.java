package com.byazt.ca;

import com.byazt.lw.qy;
import java.util.Deque;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1793, 54})
public class ve extends a {
    @Override // com.byazt.ca.a
    public int c(String str, int i10, Deque<com.byazt.dr.c> deque, com.byazt.pz.c cVar) {
        char c10 = c(i10, str);
        return (com.byazt.to.c.tt(c10) || c10 == '$') ? c(str, i10, deque) : cVar.c(str, i10, deque);
    }

    private int c(String str, int i10, Deque<com.byazt.dr.c> deque) {
        int i11;
        int i12 = 0;
        while (true) {
            i11 = i12 + i10;
            char c10 = c(i11, str);
            if (!com.byazt.to.c.tt(c10) && !com.byazt.to.c.ve(c10) && '.' != c10 && '[' != c10 && ']' != c10 && '_' != c10 && '$' != c10) {
                break;
            }
            i12++;
        }
        String strSubstring = str.substring(i10, i11);
        if (com.byazt.zg.c.c(strSubstring) != null) {
            deque.push(new com.byazt.lw.sp(strSubstring));
        } else {
            deque.push(new qy(strSubstring));
        }
        return i11;
    }
}
