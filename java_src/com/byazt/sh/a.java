package com.byazt.sh;

import android.util.SparseArray;
import com.byazt.hj.yp;
import com.byazt.hj.z;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTAdNative;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1606, 34})
public class a implements Function<SparseArray<Object>, Object> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TTAdNative.RewardVideoAdListener f19770c;

    public a(TTAdNative.RewardVideoAdListener rewardVideoAdListener) {
        this.f19770c = rewardVideoAdListener;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        ValueSet valueSetTt;
        if (this.f19770c != null && (valueSetTt = com.byazt.rl.ve.c(sparseArray).tt()) != null) {
            switch (valueSetTt.intValue(-99999987)) {
                case 124101:
                    this.f19770c.onError(valueSetTt.intValue(0), valueSetTt.stringValue(1));
                    break;
                case 124102:
                    this.f19770c.onRewardVideoAdLoad(new yp(z.c(valueSetTt.objectValue(0, Object.class))));
                    break;
                case 124103:
                    this.f19770c.onRewardVideoCached(new yp(z.c(valueSetTt.objectValue(0, Object.class))));
                    break;
                case 124104:
                    this.f19770c.onRewardVideoCached();
                    break;
            }
        }
        return null;
    }
}
