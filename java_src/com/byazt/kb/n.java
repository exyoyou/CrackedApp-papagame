package com.byazt.kb;

import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.mediation.MediationAppDialogClickListener;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 688, 46})
public class n implements Function<SparseArray<Object>, Object> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final MediationAppDialogClickListener f16103c;

    public n(MediationAppDialogClickListener mediationAppDialogClickListener) {
        this.f16103c = mediationAppDialogClickListener;
    }

    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (this.f16103c == null) {
            return null;
        }
        ValueSet valueSetTt = com.byazt.rl.ve.c(sparseArray).tt();
        if (valueSetTt.intValue(-99999987) == 270025) {
            this.f16103c.onButtonClick(valueSetTt.intValue(0));
        }
        return null;
    }
}
