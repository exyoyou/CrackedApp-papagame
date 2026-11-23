package com.byazt.ebk;

import android.util.SparseArray;
import com.byazt.rl.ve;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTAdDislike;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 875, 20})
public class c implements Function<SparseArray<Object>, Object> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TTAdDislike.DislikeInteractionCallback f13286c;

    public c(TTAdDislike.DislikeInteractionCallback dislikeInteractionCallback) {
        this.f13286c = dislikeInteractionCallback;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (this.f13286c == null) {
            return null;
        }
        ValueSet valueSetTt = ve.c(sparseArray).tt();
        switch (valueSetTt.intValue(-99999987)) {
            case 244101:
                this.f13286c.onShow();
                return null;
            case 244102:
                this.f13286c.onSelected(valueSetTt.intValue(0), valueSetTt.stringValue(1), valueSetTt.booleanValue(2));
                return null;
            case 244103:
                this.f13286c.onCancel();
                return null;
            default:
                return null;
        }
    }
}
