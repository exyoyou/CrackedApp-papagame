package com.byazt.sh;

import android.util.SparseArray;
import com.byazt.hj.da;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTAdNative;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1606, 54})
public class ve implements Function<SparseArray<Object>, Object> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TTAdNative.FullScreenVideoAdListener f19775c;

    public ve(TTAdNative.FullScreenVideoAdListener fullScreenVideoAdListener) {
        this.f19775c = fullScreenVideoAdListener;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (this.f19775c == null) {
            return null;
        }
        ValueSet valueSetTt = com.byazt.rl.ve.c(sparseArray).tt();
        switch (valueSetTt.intValue(-99999987)) {
            case 132101:
                this.f19775c.onError(valueSetTt.intValue(0), valueSetTt.stringValue(1));
                return null;
            case 132102:
                this.f19775c.onFullScreenVideoAdLoad(new da(n0.c.a(valueSetTt.objectValue(0, n0.a.a()))));
                return null;
            case 132103:
                this.f19775c.onFullScreenVideoCached(new da(n0.c.a(valueSetTt.objectValue(0, n0.a.a()))));
                return null;
            case 132104:
                this.f19775c.onFullScreenVideoCached();
                return null;
            default:
                return null;
        }
    }
}
