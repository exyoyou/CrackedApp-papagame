package com.byazt.vh;

import android.util.SparseArray;
import com.byazt.rl.ve;
import com.bytedance.sdk.openadsdk.mediation.ad.IMediationDislikeCallback;
import java.util.function.Function;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 2172, 20})
public class c implements IMediationDislikeCallback {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Function<SparseArray<Object>, Object> f21200c;

    public c(Function<SparseArray<Object>, Object> function) {
        this.f21200c = function == null ? ve.ve : function;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationDislikeCallback
    public void onCancel() {
        SparseArray sparseArray = new SparseArray(1);
        sparseArray.put(-99999987, 268014);
        sparseArray.put(-99999985, Void.class);
        this.f21200c.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationDislikeCallback
    public void onSelected(int i10, String str) {
        SparseArray sparseArray = new SparseArray(3);
        sparseArray.put(0, Integer.valueOf(i10));
        sparseArray.put(1, str);
        sparseArray.put(-99999987, 268013);
        sparseArray.put(-99999985, Void.class);
        this.f21200c.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationDislikeCallback
    public void onShow() {
        SparseArray sparseArray = new SparseArray(1);
        sparseArray.put(-99999987, 268015);
        sparseArray.put(-99999985, Void.class);
        this.f21200c.apply(sparseArray);
    }
}
