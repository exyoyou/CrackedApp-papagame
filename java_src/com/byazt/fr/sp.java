package com.byazt.fr;

import android.util.SparseArray;
import com.bytedance.sdk.openadsdk.mediation.ad.MediationShakeViewListener;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 2053, 91})
public class sp implements Function<SparseArray<Object>, Object> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final MediationShakeViewListener f14259c;

    public sp(MediationShakeViewListener mediationShakeViewListener) {
        this.f14259c = mediationShakeViewListener;
    }

    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (this.f14259c != null && com.byazt.rl.ve.c(sparseArray).tt().intValue(-99999987) == 270012) {
            this.f14259c.onDismissed();
        }
        return null;
    }
}
