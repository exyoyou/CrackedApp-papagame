package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public abstract class e2 extends CoroutineDispatcher {
    @InternalCoroutinesApi
    @Nullable
    protected final String c0() {
        e2 e2VarZ;
        e2 e2VarE = z0.e();
        if (this == e2VarE) {
            return "Dispatchers.Main";
        }
        try {
            e2VarZ = e2VarE.z();
        } catch (UnsupportedOperationException unused) {
            e2VarZ = null;
        }
        if (this == e2VarZ) {
            return "Dispatchers.Main.immediate";
        }
        return null;
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    @NotNull
    public CoroutineDispatcher limitedParallelism(int i10) {
        kotlinx.coroutines.internal.t.a(i10);
        return this;
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    @NotNull
    public String toString() {
        String strC0 = c0();
        if (strC0 != null) {
            return strC0;
        }
        return o0.a(this) + '@' + o0.b(this);
    }

    @NotNull
    public abstract e2 z();
}
