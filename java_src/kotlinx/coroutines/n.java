package kotlinx.coroutines;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public interface n<T> extends Continuation<T> {

    public static final class a {
        public static /* synthetic */ boolean a(n nVar, Throwable th, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: cancel");
            }
            if ((i10 & 1) != 0) {
                th = null;
            }
            return nVar.a(th);
        }

        public static /* synthetic */ Object b(n nVar, Object obj, Object obj2, int i10, Object obj3) {
            if (obj3 != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: tryResume");
            }
            if ((i10 & 2) != 0) {
                obj2 = null;
            }
            return nVar.C(obj, obj2);
        }
    }

    @InternalCoroutinesApi
    void B(@NotNull Object obj);

    @InternalCoroutinesApi
    @Nullable
    Object C(T t10, @Nullable Object obj);

    void E(@NotNull Function1<? super Throwable, Unit> function1);

    @InternalCoroutinesApi
    @Nullable
    Object F(@NotNull Throwable th);

    @InternalCoroutinesApi
    @Nullable
    Object H(T t10, @Nullable Object obj, @Nullable Function1<? super Throwable, Unit> function1);

    @ExperimentalCoroutinesApi
    void N(@NotNull CoroutineDispatcher coroutineDispatcher, T t10);

    @InternalCoroutinesApi
    void S();

    boolean a(@Nullable Throwable th);

    @ExperimentalCoroutinesApi
    void i(@NotNull CoroutineDispatcher coroutineDispatcher, @NotNull Throwable th);

    boolean isActive();

    boolean isCancelled();

    boolean isCompleted();

    @ExperimentalCoroutinesApi
    void p(T t10, @Nullable Function1<? super Throwable, Unit> function1);
}
