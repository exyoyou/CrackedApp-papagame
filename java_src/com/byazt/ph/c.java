package com.byazt.ph;

import android.util.SparseArray;
import com.bytedance.sdk.openadsdk.ExitInstallListener;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 763, 20})
public class c implements Function<SparseArray<Object>, Object> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ExitInstallListener f18705c;

    public c(ExitInstallListener exitInstallListener) {
        this.f18705c = exitInstallListener;
    }

    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (this.f18705c != null && com.byazt.rl.ve.c(sparseArray).tt().intValue(-99999987) == 223101) {
            this.f18705c.onExitInstall();
        }
        return null;
    }
}
