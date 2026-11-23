package com.byazt.io;

import android.util.SparseArray;
import com.byazt.hj.z;
import com.byazt.rl.ve;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTAdNative;
import java.util.function.Function;
import n0.a;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1422, 13})
public class tt implements Function<SparseArray<Object>, Object> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TTAdNative.CSJSplashAdListener f15433c;

    public tt(TTAdNative.CSJSplashAdListener cSJSplashAdListener) {
        this.f15433c = cSJSplashAdListener;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (this.f15433c == null) {
            return null;
        }
        ValueSet valueSetTt = ve.c(sparseArray).tt();
        switch (valueSetTt.intValue(-99999987)) {
            case 114102:
                this.f15433c.onSplashLoadSuccess(new com.byazt.hj.tt(z.c(valueSetTt.objectValue(0, Object.class))));
                return null;
            case 114103:
                this.f15433c.onSplashLoadFail(new com.byazt.hj.c(z.c(valueSetTt.objectValue(0, Object.class))));
                return null;
            case 114104:
                this.f15433c.onSplashRenderSuccess(new com.byazt.hj.tt(n0.c.a(valueSetTt.objectValue(0, a.a()))));
                return null;
            case 114105:
                this.f15433c.onSplashRenderFail(new com.byazt.hj.tt(z.c(valueSetTt.objectValue(0, Object.class))), new com.byazt.hj.c(z.c(valueSetTt.objectValue(1, Object.class))));
                return null;
            default:
                return null;
        }
    }
}
