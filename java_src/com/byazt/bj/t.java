package com.byazt.bj;

import com.android.dx.io.Opcodes;
import com.byakv.q.YogaNative;
import com.byakv.q.YogaNodeJNIBase;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, Opcodes.SHL_INT_LIT8, 66})
public class t extends YogaNodeJNIBase {
    public void finalize() throws Throwable {
        try {
            u();
        } finally {
            super.finalize();
        }
    }

    public void u() {
        long j10 = this.f11364c;
        if (j10 != 0) {
            this.f11364c = 0L;
            YogaNative.jni_YGNodeFinalizeJNI(j10);
        }
    }
}
