package com.byazt.vz;

import android.view.View;
import androidx.annotation.Nullable;
import com.byazt.nr.m;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1339, 20})
public abstract class c extends com.byazt.ylx.c {
    public final View c() {
        try {
            return tt();
        } catch (Exception e10) {
            m.c(e10);
            return null;
        }
    }

    @Nullable
    public abstract View tt();
}
