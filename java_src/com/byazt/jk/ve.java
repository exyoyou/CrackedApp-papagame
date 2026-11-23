package com.byazt.jk;

import android.util.SparseArray;
import android.view.View;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTNativeAd;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 801, 54})
public class ve implements Function<SparseArray<Object>, Object> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TTNativeAd.ExpressRenderListener f15850c;

    public ve(TTNativeAd.ExpressRenderListener expressRenderListener) {
        this.f15850c = expressRenderListener;
    }

    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (this.f15850c == null) {
            return null;
        }
        ValueSet valueSetTt = com.byazt.rl.ve.c(sparseArray).tt();
        if (valueSetTt.intValue(-99999987) == 142101) {
            this.f15850c.onRenderSuccess((View) valueSetTt.objectValue(0, View.class), valueSetTt.floatValue(1), valueSetTt.floatValue(2), valueSetTt.booleanValue(3));
        }
        return null;
    }
}
