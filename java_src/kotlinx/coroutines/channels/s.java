package kotlinx.coroutines.channels;

import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.DelicateCoroutinesApi;
import kotlinx.coroutines.internal.p0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public interface s<E> {

    public static final class a {
        public static /* synthetic */ boolean a(s sVar, Throwable th, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: close");
            }
            if ((i10 & 1) != 0) {
                th = null;
            }
            return sVar.U(th);
        }

        @DelicateCoroutinesApi
        public static /* synthetic */ void b() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in the favour of 'trySend' method", replaceWith = @ReplaceWith(expression = "trySend(element).isSuccess", imports = {}))
        public static <E> boolean c(@NotNull s<? super E> sVar, E e10) throws Throwable {
            Object objS = sVar.s(e10);
            if (j.m(objS)) {
                return true;
            }
            Throwable thF = j.f(objS);
            if (thF == null) {
                return false;
            }
            throw p0.o(thF);
        }
    }

    boolean A();

    boolean U(@Nullable Throwable th);

    @Nullable
    Object V(E e10, @NotNull Continuation<? super Unit> continuation);

    @NotNull
    kotlinx.coroutines.selects.g<E, s<E>> j();

    @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in the favour of 'trySend' method", replaceWith = @ReplaceWith(expression = "trySend(element).isSuccess", imports = {}))
    boolean offer(E e10);

    void r(@NotNull Function1<? super Throwable, Unit> function1);

    @NotNull
    Object s(E e10);
}
