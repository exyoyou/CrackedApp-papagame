package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.sequences.Sequence;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public interface v1 extends CoroutineContext.Element {

    @NotNull
    public static final b F1 = b.f93839b;

    public static final class a {
        public static /* synthetic */ void b(v1 v1Var, CancellationException cancellationException, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: cancel");
            }
            if ((i10 & 1) != 0) {
                cancellationException = null;
            }
            v1Var.b(cancellationException);
        }

        public static /* synthetic */ boolean c(v1 v1Var, Throwable th, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: cancel");
            }
            if ((i10 & 1) != 0) {
                th = null;
            }
            return v1Var.a(th);
        }

        public static <R> R d(@NotNull v1 v1Var, R r10, @NotNull Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
            return (R) CoroutineContext.Element.DefaultImpls.fold(v1Var, r10, function2);
        }

        @Nullable
        public static <E extends CoroutineContext.Element> E e(@NotNull v1 v1Var, @NotNull CoroutineContext.Key<E> key) {
            return (E) CoroutineContext.Element.DefaultImpls.get(v1Var, key);
        }

        @ExperimentalCoroutinesApi
        public static /* synthetic */ void f() {
        }

        public static /* synthetic */ c1 g(v1 v1Var, boolean z10, boolean z11, Function1 function1, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: invokeOnCompletion");
            }
            if ((i10 & 1) != 0) {
                z10 = false;
            }
            if ((i10 & 2) != 0) {
                z11 = true;
            }
            return v1Var.M(z10, z11, function1);
        }

        @NotNull
        public static CoroutineContext h(@NotNull v1 v1Var, @NotNull CoroutineContext.Key<?> key) {
            return CoroutineContext.Element.DefaultImpls.minusKey(v1Var, key);
        }

        @NotNull
        public static CoroutineContext i(@NotNull v1 v1Var, @NotNull CoroutineContext coroutineContext) {
            return CoroutineContext.Element.DefaultImpls.plus(v1Var, coroutineContext);
        }

        @Deprecated(level = DeprecationLevel.ERROR, message = "Operator '+' on two Job objects is meaningless. Job is a coroutine context element and `+` is a set-sum operator for coroutine contexts. The job to the right of `+` just replaces the job the left of `+`.")
        @NotNull
        public static v1 j(@NotNull v1 v1Var, @NotNull v1 v1Var2) {
            return v1Var2;
        }
    }

    public static final class b implements CoroutineContext.Key<v1> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final /* synthetic */ b f93839b = new b();

        private b() {
        }
    }

    @NotNull
    kotlinx.coroutines.selects.c I();

    @InternalCoroutinesApi
    @NotNull
    t J(@NotNull v vVar);

    @NotNull
    Sequence<v1> K();

    @InternalCoroutinesApi
    @NotNull
    c1 M(boolean z10, boolean z11, @NotNull Function1<? super Throwable, Unit> function1);

    @InternalCoroutinesApi
    @NotNull
    CancellationException O();

    @Nullable
    Object R(@NotNull Continuation<? super Unit> continuation);

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    /* synthetic */ boolean a(Throwable th);

    void b(@Nullable CancellationException cancellationException);

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    /* synthetic */ void cancel();

    @Nullable
    v1 getParent();

    boolean isActive();

    boolean isCancelled();

    boolean isCompleted();

    @Deprecated(level = DeprecationLevel.ERROR, message = "Operator '+' on two Job objects is meaningless. Job is a coroutine context element and `+` is a set-sum operator for coroutine contexts. The job to the right of `+` just replaces the job the left of `+`.")
    @NotNull
    v1 k(@NotNull v1 v1Var);

    @NotNull
    c1 l(@NotNull Function1<? super Throwable, Unit> function1);

    boolean start();
}
