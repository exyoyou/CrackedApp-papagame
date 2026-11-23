package kotlinx.coroutines.flow;

import XI.K0.XI.XI;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.internal.q0;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nStateFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,428:1\n1#2:429\n*E\n"})
public final class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    private static final q0 f93418a = new q0("NONE");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    private static final q0 f93419b = new q0("PENDING");

    @NotNull
    public static final <T> j<T> a(T t10) {
        if (t10 == null) {
            t10 = (T) kotlinx.coroutines.flow.internal.l.f93396a;
        }
        return new StateFlowImpl(t10);
    }

    @NotNull
    public static final <T> e<T> d(@NotNull u<? extends T> uVar, @NotNull CoroutineContext coroutineContext, int i10, @NotNull BufferOverflow bufferOverflow) {
        boolean z10 = false;
        if (i10 >= 0 && i10 < 2) {
            z10 = true;
        }
        return ((z10 || i10 == -2) && bufferOverflow == BufferOverflow.DROP_OLDEST) ? uVar : o.e(uVar, coroutineContext, i10, bufferOverflow);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [T, java.lang.Object] */
    public static final <T> T e(@NotNull j<T> jVar, @NotNull Function1<? super T, ? extends T> function1) {
        ?? r10;
        do {
            r10 = (Object) jVar.getValue();
        } while (!jVar.compareAndSet(r10, function1.invoke(r10)));
        return r10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> T f(@NotNull j<T> jVar, @NotNull Function1<? super T, ? extends T> function1) {
        XI.AbstractBinderC0002XI.C0003XI c0003xi;
        T tInvoke;
        do {
            c0003xi = (Object) jVar.getValue();
            tInvoke = function1.invoke(c0003xi);
        } while (!jVar.compareAndSet(c0003xi, tInvoke));
        return tInvoke;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> void update(@NotNull j<T> jVar, @NotNull Function1<? super T, ? extends T> function1) {
        XI.AbstractBinderC0002XI.C0003XI c0003xi;
        do {
            c0003xi = (Object) jVar.getValue();
        } while (!jVar.compareAndSet(c0003xi, function1.invoke(c0003xi)));
    }
}
