package kotlinx.coroutines;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public interface h0 extends CoroutineContext.Element {

    @NotNull
    public static final b E1 = b.f93439b;

    public static final class a {
        public static <R> R a(@NotNull h0 h0Var, R r10, @NotNull Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
            return (R) CoroutineContext.Element.DefaultImpls.fold(h0Var, r10, function2);
        }

        @Nullable
        public static <E extends CoroutineContext.Element> E b(@NotNull h0 h0Var, @NotNull CoroutineContext.Key<E> key) {
            return (E) CoroutineContext.Element.DefaultImpls.get(h0Var, key);
        }

        @NotNull
        public static CoroutineContext c(@NotNull h0 h0Var, @NotNull CoroutineContext.Key<?> key) {
            return CoroutineContext.Element.DefaultImpls.minusKey(h0Var, key);
        }

        @NotNull
        public static CoroutineContext d(@NotNull h0 h0Var, @NotNull CoroutineContext coroutineContext) {
            return CoroutineContext.Element.DefaultImpls.plus(h0Var, coroutineContext);
        }
    }

    public static final class b implements CoroutineContext.Key<h0> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final /* synthetic */ b f93439b = new b();

        private b() {
        }
    }

    void t(@NotNull CoroutineContext coroutineContext, @NotNull Throwable th);
}
