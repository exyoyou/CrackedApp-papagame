package com.byazt.we;

import android.util.SparseArray;
import com.bytedance.android.live.base.api.callback.Callback;
import java.util.function.Function;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 916, 20})
public class c implements Callback<Object> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function<SparseArray<Object>, Object> f21506c;

    public c(Function<SparseArray<Object>, Object> function) {
        this.f21506c = function;
    }

    @Override // com.bytedance.android.live.base.api.callback.Callback
    public void invoke(Object obj) {
        if (this.f21506c != null) {
            this.f21506c.apply(com.byazt.rl.ve.c().c(0, obj).c(-99999987, 1).tt().sparseArray());
        }
    }
}
