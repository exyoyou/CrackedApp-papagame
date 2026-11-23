package com.byazt.vh;

import android.util.SparseArray;
import com.byazt.hj.z;
import com.byazt.rl.ve;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.mediation.ad.MediationAdDislike;
import java.util.function.Function;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 2172, 13})
public class tt implements Function<SparseArray<Object>, Object> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final MediationAdDislike f21201c;

    public tt(MediationAdDislike mediationAdDislike) {
        this.f21201c = mediationAdDislike;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (this.f21201c == null) {
            return null;
        }
        ValueSet valueSetTt = ve.c(sparseArray).tt();
        switch (valueSetTt.intValue(-99999987)) {
            case 270032:
                this.f21201c.showDislikeDialog();
                return null;
            case 270033:
                this.f21201c.setDislikeCallback(new c(z.c(valueSetTt.objectValue(0, Object.class))));
                return null;
            default:
                return null;
        }
    }
}
