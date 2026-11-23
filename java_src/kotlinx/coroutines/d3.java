package kotlinx.coroutines;

import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.internal.ThreadContextKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nCoroutineContext.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineContext.kt\nkotlinx/coroutines/UndispatchedCoroutine\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n*L\n1#1,310:1\n1#2:311\n103#3,13:312\n*S KotlinDebug\n*F\n+ 1 CoroutineContext.kt\nkotlinx/coroutines/UndispatchedCoroutine\n*L\n265#1:312,13\n*E\n"})
public final class d3<T> extends kotlinx.coroutines.internal.m0<T> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NotNull
    private final ThreadLocal<Pair<CoroutineContext, Object>> f92719f;
    private volatile boolean threadLocalIsSet;

    /* JADX WARN: Illegal instructions before constructor call */
    public d3(@NotNull CoroutineContext coroutineContext, @NotNull Continuation<? super T> continuation) {
        e3 e3Var = e3.f92803b;
        super(coroutineContext.get(e3Var) == null ? coroutineContext.plus(e3Var) : coroutineContext, continuation);
        this.f92719f = new ThreadLocal<>();
        if (continuation.get$context().get(ContinuationInterceptor.INSTANCE) instanceof CoroutineDispatcher) {
            return;
        }
        Object objC = ThreadContextKt.c(coroutineContext, null);
        ThreadContextKt.a(coroutineContext, objC);
        L1(coroutineContext, objC);
    }

    @Override // kotlinx.coroutines.internal.m0, kotlinx.coroutines.a
    protected void F1(@Nullable Object obj) {
        if (this.threadLocalIsSet) {
            Pair<CoroutineContext, Object> pair = this.f92719f.get();
            if (pair != null) {
                ThreadContextKt.a(pair.component1(), pair.component2());
            }
            this.f92719f.remove();
        }
        Object objA = e0.a(obj, this.f93512e);
        Continuation<T> continuation = this.f93512e;
        CoroutineContext coroutineContext = continuation.get$context();
        Object objC = ThreadContextKt.c(coroutineContext, null);
        d3<?> d3VarG = objC != ThreadContextKt.f93468a ? CoroutineContextKt.g(continuation, coroutineContext, objC) : null;
        try {
            this.f93512e.resumeWith(objA);
            Unit unit = Unit.INSTANCE;
        } finally {
            if (d3VarG == null || d3VarG.K1()) {
                ThreadContextKt.a(coroutineContext, objC);
            }
        }
    }

    public final boolean K1() {
        boolean z10 = this.threadLocalIsSet && this.f92719f.get() == null;
        this.f92719f.remove();
        return !z10;
    }

    public final void L1(@NotNull CoroutineContext coroutineContext, @Nullable Object obj) {
        this.threadLocalIsSet = true;
        this.f92719f.set(TuplesKt.to(coroutineContext, obj));
    }
}
