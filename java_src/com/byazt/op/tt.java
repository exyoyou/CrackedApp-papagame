package com.byazt.op;

import android.util.SparseArray;
import com.byazt.rl.ve;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import java.util.function.Function;
import n0.b;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1062, 13})
public class tt extends c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Bridge f18166c;

    public tt(Bridge bridge) {
        this.f18166c = bridge == null ? ve.tt : bridge;
    }

    public static Function<SparseArray<Object>, Object> covertToFunction(Object obj) {
        if (b.a(obj)) {
            return n0.c.a(obj);
        }
        if (obj instanceof Bridge) {
            return new tt((Bridge) obj);
        }
        return null;
    }

    @Override // com.byazt.op.c
    public <T> T applyFunction(int i10, ValueSet valueSet, Class<T> cls) {
        return (T) this.f18166c.call(i10, valueSet, cls);
    }

    @Override // com.byazt.op.c
    public SparseArray<Object> get() {
        if (this.f18166c.values() == null) {
            return null;
        }
        SparseArray<Object> sparseArray = this.f18166c.values().sparseArray();
        return sparseArray == null ? new SparseArray<>() : sparseArray;
    }

    public Bridge getBridge() {
        return this.f18166c;
    }
}
