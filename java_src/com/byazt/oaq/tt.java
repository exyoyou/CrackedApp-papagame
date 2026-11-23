package com.byazt.oaq;

import android.content.Context;
import android.text.TextUtils;
import com.byazt.sm.UGTextView;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 995, 13})
public class tt extends com.byazt.sm.tt {
    public tt(Context context) {
        super(context);
    }

    @Override // com.byazt.sm.tt, com.byazt.xj.ve
    public void tt() {
        super.tt();
        if (TextUtils.isEmpty(((com.byazt.sm.tt) this).f19840c)) {
            ((UGTextView) this.f21881n).setText("跳过");
        }
    }

    public void uj(boolean z10) {
        if (z10) {
            tt(0);
            c(true, true);
        } else {
            uj(0);
            n(0);
        }
    }
}
