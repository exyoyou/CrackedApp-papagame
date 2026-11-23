package com.byazt.fr;

import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.mediation.ad.IMediationDislikeCallback;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 2053, 13})
public class tt implements Function<SparseArray<Object>, Object> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final IMediationDislikeCallback f14260c;

    public tt(IMediationDislikeCallback iMediationDislikeCallback) {
        this.f14260c = iMediationDislikeCallback;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (this.f14260c == null) {
            return null;
        }
        ValueSet valueSetTt = com.byazt.rl.ve.c(sparseArray).tt();
        switch (valueSetTt.intValue(-99999987)) {
            case 268013:
                this.f14260c.onSelected(valueSetTt.intValue(0), valueSetTt.stringValue(1));
                return null;
            case 268014:
                this.f14260c.onCancel();
                return null;
            case 268015:
                this.f14260c.onShow();
                return null;
            default:
                return null;
        }
    }
}
