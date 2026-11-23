package com.byazt.yk;

import android.util.SparseArray;
import android.view.View;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import java.util.function.Function;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1675, 20})
public class c implements Function<SparseArray<Object>, Object> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TTNativeExpressAd.AdInteractionListener f22285c;

    public c(TTNativeExpressAd.AdInteractionListener adInteractionListener) {
        this.f22285c = adInteractionListener;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (this.f22285c == null) {
            return null;
        }
        ValueSet valueSetTt = com.byazt.rl.ve.c(sparseArray).tt();
        switch (valueSetTt.intValue(-99999987)) {
            case 151101:
                this.f22285c.onAdClicked((View) valueSetTt.objectValue(0, View.class), valueSetTt.intValue(1));
                return null;
            case 151102:
                this.f22285c.onAdShow((View) valueSetTt.objectValue(0, View.class), valueSetTt.intValue(1));
                return null;
            case 151103:
                this.f22285c.onRenderFail((View) valueSetTt.objectValue(0, View.class), valueSetTt.stringValue(1), valueSetTt.intValue(2));
                return null;
            case 151104:
                this.f22285c.onRenderSuccess((View) valueSetTt.objectValue(0, View.class), valueSetTt.floatValue(1), valueSetTt.floatValue(2));
                return null;
            case 151105:
                this.f22285c.onAdDismiss();
                return null;
            default:
                return null;
        }
    }
}
