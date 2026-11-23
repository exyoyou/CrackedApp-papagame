package com.byazt.ph;

import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTAppDownloadListener;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 763, 54})
public class ve implements Function<SparseArray<Object>, Object> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TTAppDownloadListener f18707c;

    public ve(TTAppDownloadListener tTAppDownloadListener) {
        this.f18707c = tTAppDownloadListener;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (this.f18707c == null) {
            return null;
        }
        ValueSet valueSetTt = com.byazt.rl.ve.c(sparseArray).tt();
        switch (valueSetTt.intValue(-99999987)) {
            case 221101:
                this.f18707c.onIdle();
                return null;
            case 221102:
                this.f18707c.onDownloadActive(valueSetTt.longValue(0), valueSetTt.longValue(1), valueSetTt.stringValue(2), valueSetTt.stringValue(3));
                return null;
            case 221103:
                this.f18707c.onDownloadPaused(valueSetTt.longValue(0), valueSetTt.longValue(1), valueSetTt.stringValue(2), valueSetTt.stringValue(3));
                return null;
            case 221104:
                this.f18707c.onDownloadFailed(valueSetTt.longValue(0), valueSetTt.longValue(1), valueSetTt.stringValue(2), valueSetTt.stringValue(3));
                return null;
            case 221105:
                this.f18707c.onDownloadFinished(valueSetTt.longValue(0), valueSetTt.stringValue(1), valueSetTt.stringValue(2));
                return null;
            case 221106:
                this.f18707c.onInstalled(valueSetTt.stringValue(0), valueSetTt.stringValue(1));
                return null;
            default:
                return null;
        }
    }
}
