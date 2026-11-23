package com.byazt.yf;

import androidx.annotation.Nullable;
import androidx.constraintlayout.core.motion.utils.TypedValues;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, TypedValues.PositionType.TYPE_CURVE_FIT, 215})
public class yp {
    public boolean c() {
        return true;
    }

    @Nullable
    public i tt() {
        return null;
    }

    public boolean ve() {
        return true;
    }

    public static yp c(final com.byazt.xf.ve veVar) {
        return new yp() { // from class: com.byazt.yf.yp.1
            @Override // com.byazt.yf.yp
            public boolean c() {
                com.byazt.xf.ve veVar2 = veVar;
                return veVar2 != null ? veVar2.i() : super.c();
            }

            @Override // com.byazt.yf.yp
            public i tt() {
                com.byazt.xf.uj ujVarZ;
                com.byazt.xf.ve veVar2 = veVar;
                return (veVar2 == null || (ujVarZ = veVar2.z()) == null || ujVarZ.c() == 0.0d || ujVarZ.tt() == 0.0d) ? super.tt() : new i(ujVarZ.c(), ujVarZ.tt());
            }

            @Override // com.byazt.yf.yp
            public boolean ve() {
                com.byazt.xf.ve veVar2 = veVar;
                return veVar2 != null ? veVar2.x() : super.ve();
            }
        };
    }
}
