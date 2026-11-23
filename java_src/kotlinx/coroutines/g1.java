package kotlinx.coroutines;

import kotlin.collections.ArrayDeque;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nEventLoop.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventLoop.common.kt\nkotlinx/coroutines/EventLoop\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,540:1\n1#2:541\n*E\n"})
public abstract class g1 extends CoroutineDispatcher {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f93432b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f93433c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    private ArrayDeque<w0<?>> f93434d;

    public static /* synthetic */ void c0(g1 g1Var, boolean z10, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: decrementUseCount");
        }
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        g1Var.z(z10);
    }

    private final long d0(boolean z10) {
        return z10 ? 4294967296L : 1L;
    }

    public static /* synthetic */ void i0(g1 g1Var, boolean z10, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: incrementUseCount");
        }
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        g1Var.g0(z10);
    }

    public final void e0(@NotNull w0<?> w0Var) {
        ArrayDeque<w0<?>> arrayDeque = this.f93434d;
        if (arrayDeque == null) {
            arrayDeque = new ArrayDeque<>();
            this.f93434d = arrayDeque;
        }
        arrayDeque.addLast(w0Var);
    }

    protected long f0() {
        ArrayDeque<w0<?>> arrayDeque = this.f93434d;
        return (arrayDeque == null || arrayDeque.isEmpty()) ? Long.MAX_VALUE : 0L;
    }

    public final void g0(boolean z10) {
        this.f93432b += d0(z10);
        if (z10) {
            return;
        }
        this.f93433c = true;
    }

    public final boolean isActive() {
        return this.f93432b > 0;
    }

    protected boolean j0() {
        return l0();
    }

    public final boolean k0() {
        return this.f93432b >= d0(true);
    }

    public final boolean l0() {
        ArrayDeque<w0<?>> arrayDeque = this.f93434d;
        if (arrayDeque != null) {
            return arrayDeque.isEmpty();
        }
        return true;
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    @NotNull
    public final CoroutineDispatcher limitedParallelism(int i10) {
        kotlinx.coroutines.internal.t.a(i10);
        return this;
    }

    public long m0() {
        return !n0() ? Long.MAX_VALUE : 0L;
    }

    public final boolean n0() {
        w0<?> w0VarRemoveFirstOrNull;
        ArrayDeque<w0<?>> arrayDeque = this.f93434d;
        if (arrayDeque == null || (w0VarRemoveFirstOrNull = arrayDeque.removeFirstOrNull()) == null) {
            return false;
        }
        w0VarRemoveFirstOrNull.run();
        return true;
    }

    public boolean o0() {
        return false;
    }

    public void shutdown() {
    }

    public final void z(boolean z10) {
        long jD0 = this.f93432b - d0(z10);
        this.f93432b = jD0;
        if (jD0 <= 0 && this.f93433c) {
            shutdown();
        }
    }
}
