package com.byazt.jh;

import android.util.SparseArray;
import com.byazt.rl.ve;
import com.bytedance.android.live.base.api.ILiveHostActionParam;
import java.util.Map;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1496, 13})
public class tt implements ILiveHostActionParam {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Function<SparseArray<Object>, Object> f15822c;

    public tt(Function<SparseArray<Object>, Object> function) {
        this.f15822c = function;
    }

    @Override // com.bytedance.android.live.base.api.ILiveHostActionParam
    public void logEvent(boolean z10, String str, String str2, Map<String, String> map) {
        if (this.f15822c != null) {
            this.f15822c.apply(ve.c().c(0, z10).c(1, str).c(2, str2).c(3, map).c(-99999987, 1).tt().sparseArray());
        }
    }
}
