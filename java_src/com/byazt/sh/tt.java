package com.byazt.sh;

import android.util.SparseArray;
import com.byazt.hj.i;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTAdNative;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1606, 13})
public class tt implements Function<SparseArray<Object>, Object> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TTAdNative.FeedAdListener f19773c;

    public tt(TTAdNative.FeedAdListener feedAdListener) {
        this.f19773c = feedAdListener;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (this.f19773c == null) {
            return null;
        }
        ValueSet valueSetTt = com.byazt.rl.ve.c(sparseArray).tt();
        switch (valueSetTt.intValue(-99999987)) {
            case 164101:
                this.f19773c.onError(valueSetTt.intValue(0), valueSetTt.stringValue(1));
                return null;
            case 164102:
                List arrayList = (List) valueSetTt.objectValue(0, List.class);
                if (arrayList == null) {
                    arrayList = new ArrayList(0);
                }
                ArrayList arrayList2 = new ArrayList();
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    arrayList2.add(new i(n0.c.a(it2.next())));
                }
                this.f19773c.onFeedAdLoad(arrayList2);
                return null;
            default:
                return null;
        }
    }
}
