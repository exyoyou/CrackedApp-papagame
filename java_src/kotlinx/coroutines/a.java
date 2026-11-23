package kotlinx.coroutines;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@InternalCoroutinesApi
public abstract class a<T> extends JobSupport implements v1, Continuation<T>, l0 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NotNull
    private final CoroutineContext f92318d;

    public a(@NotNull CoroutineContext coroutineContext, boolean z10, boolean z11) {
        super(z11);
        if (z10) {
            Q0((v1) coroutineContext.get(v1.F1));
        }
        this.f92318d = coroutineContext.plus(this);
    }

    public static /* synthetic */ void G1() {
    }

    protected void F1(@Nullable Object obj) {
        g0(obj);
    }

    protected void H1(@NotNull Throwable th, boolean z10) {
    }

    protected void I1(T t10) {
    }

    public final <R> void J1(@NotNull CoroutineStart coroutineStart, R r10, @NotNull Function2<? super R, ? super Continuation<? super T>, ? extends Object> function2) {
        coroutineStart.invoke(function2, r10, this);
    }

    @Override // kotlinx.coroutines.JobSupport
    public final void P0(@NotNull Throwable th) {
        i0.b(this.f92318d, th);
    }

    @Override // kotlinx.coroutines.JobSupport
    @NotNull
    public String e1() {
        String strB = CoroutineContextKt.b(this.f92318d);
        if (strB == null) {
            return super.e1();
        }
        return '\"' + strB + "\":" + super.e1();
    }

    @Override // kotlin.coroutines.Continuation
    @NotNull
    public final CoroutineContext getContext() {
        return this.f92318d;
    }

    @Override // kotlinx.coroutines.l0
    @NotNull
    public CoroutineContext getCoroutineContext() {
        return this.f92318d;
    }

    @Override // kotlinx.coroutines.JobSupport, kotlinx.coroutines.v1
    public boolean isActive() {
        return super.isActive();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.JobSupport
    protected final void m1(@Nullable Object obj) {
        if (!(obj instanceof b0)) {
            I1(obj);
        } else {
            b0 b0Var = (b0) obj;
            H1(b0Var.f92345a, b0Var.a());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.JobSupport
    @NotNull
    public String o0() {
        return o0.a(this) + " was cancelled";
    }

    @Override // kotlin.coroutines.Continuation
    public final void resumeWith(@NotNull Object obj) throws Throwable {
        Object objC1 = c1(e0.d(obj, null, 1, null));
        if (objC1 == b2.f92348b) {
            return;
        }
        F1(objC1);
    }
}
