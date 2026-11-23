package com.byazt.aoc;

import android.util.SparseArray;
import com.byazt.hj.z;
import com.byazt.rl.ve;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.CSJSplashAd;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1244, 20})
public class c implements Function<SparseArray<Object>, Object> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CSJSplashAd.SplashAdListener f11651c;

    public c(CSJSplashAd.SplashAdListener splashAdListener) {
        this.f11651c = splashAdListener;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (this.f11651c != null && sparseArray != null) {
            ValueSet valueSetTt = ve.c(sparseArray).tt();
            switch (valueSetTt.intValue(-99999987)) {
                case 111101:
                    this.f11651c.onSplashAdShow(new com.byazt.hj.tt(z.c(valueSetTt.objectValue(0, Object.class))));
                    break;
                case 111102:
                    this.f11651c.onSplashAdClick(new com.byazt.hj.tt(z.c(valueSetTt.objectValue(0, Object.class))));
                    break;
                case 111103:
                    this.f11651c.onSplashAdClose(new com.byazt.hj.tt(z.c(valueSetTt.objectValue(0, Object.class))), valueSetTt.intValue(1));
                    break;
            }
        }
        return null;
    }
}
