package com.byazt.te;

import android.content.Context;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 14, 15})
public class uj extends c {
    public String kz;
    public int mq;
    public String vi;

    public uj(Context context) {
        super(context);
    }

    @Override // com.byazt.te.c
    public void c(int i10, int i11, int i12) {
        if (i12 <= 0 && !TextUtils.isEmpty(((c) this).vp)) {
            String str = ((c) this).vp;
            ((com.byazt.sm.tt) this).f19840c = str;
            sl(str);
            return;
        }
        int i13 = this.mq;
        int i14 = i13 - i11;
        if (i13 <= 0 || i14 <= 0) {
            ((com.byazt.sm.tt) this).f19840c = this.vi;
        } else {
            ((com.byazt.sm.tt) this).f19840c = this.kz;
        }
        String strReplace = ((com.byazt.sm.tt) this).f19840c.replace("${_countdownTime_}", String.valueOf(i14)).replace("${_remainTime_}", String.valueOf(i12));
        ((com.byazt.sm.tt) this).f19840c = strReplace;
        sl(strReplace);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:4:0x000e  */
    @Override // com.byazt.te.c, com.byazt.sm.tt, com.byazt.xj.ve
    public void c(String str, String str2) {
        super.c(str, str2);
        str.hashCode();
        switch (str) {
            case "text1":
                this.kz = str2;
                break;
            case "text2":
                this.vi = str2;
                break;
            case "startCountDown":
                this.mq = com.byazt.cd.ve.c(str2, -1);
                break;
        }
    }
}
