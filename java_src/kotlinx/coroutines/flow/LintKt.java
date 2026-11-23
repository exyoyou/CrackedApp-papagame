package kotlinx.coroutines.flow;

import java.util.List;
import java.util.Set;
import java.util.concurrent.CancellationException;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.KotlinNothingValueException;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.internal.InlineOnly;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class LintKt {
    @Deprecated(level = DeprecationLevel.ERROR, message = "cancel() is resolved into the extension of outer CoroutineScope which is likely to be an error.Use currentCoroutineContext().cancel() instead or specify the receiver of cancel() explicitly", replaceWith = @ReplaceWith(expression = "currentCoroutineContext().cancel(cause)", imports = {}))
    public static final void a(@NotNull f<?> fVar, @Nullable CancellationException cancellationException) {
        g.b1();
        throw new KotlinNothingValueException();
    }

    public static /* synthetic */ void b(f fVar, CancellationException cancellationException, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            cancellationException = null;
        }
        a(fVar, cancellationException);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Applying 'cancellable' to a SharedFlow has no effect. See the SharedFlow documentation on Operator Fusion.", replaceWith = @ReplaceWith(expression = "this", imports = {}))
    @NotNull
    public static final <T> e<T> c(@NotNull n<? extends T> nVar) {
        g.b1();
        throw new KotlinNothingValueException();
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "SharedFlow never completes, so this operator typically has not effect, it can only catch exceptions from 'onSubscribe' operator", replaceWith = @ReplaceWith(expression = "this", imports = {}))
    @InlineOnly
    private static final <T> e<T> d(n<? extends T> nVar, Function3<? super f<? super T>, ? super Throwable, ? super Continuation<? super Unit>, ? extends Object> function3) {
        Intrinsics.checkNotNull(nVar, "null cannot be cast to non-null type kotlinx.coroutines.flow.Flow<T of kotlinx.coroutines.flow.LintKt.catch>");
        return g.u(nVar, function3);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Applying 'conflate' to StateFlow has no effect. See the StateFlow documentation on Operator Fusion.", replaceWith = @ReplaceWith(expression = "this", imports = {}))
    @NotNull
    public static final <T> e<T> e(@NotNull u<? extends T> uVar) {
        g.b1();
        throw new KotlinNothingValueException();
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "SharedFlow never completes, so this terminal operation never completes.")
    @InlineOnly
    private static final <T> Object f(n<? extends T> nVar, Continuation<? super Integer> continuation) {
        Intrinsics.checkNotNull(nVar, "null cannot be cast to non-null type kotlinx.coroutines.flow.Flow<T of kotlinx.coroutines.flow.LintKt.count>");
        InlineMarker.mark(0);
        Object objY = g.Y(nVar, continuation);
        InlineMarker.mark(1);
        return objY;
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Applying 'distinctUntilChanged' to StateFlow has no effect. See the StateFlow documentation on Operator Fusion.", replaceWith = @ReplaceWith(expression = "this", imports = {}))
    @NotNull
    public static final <T> e<T> g(@NotNull u<? extends T> uVar) {
        g.b1();
        throw new KotlinNothingValueException();
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Applying 'flowOn' to SharedFlow has no effect. See the SharedFlow documentation on Operator Fusion.", replaceWith = @ReplaceWith(expression = "this", imports = {}))
    @NotNull
    public static final <T> e<T> h(@NotNull n<? extends T> nVar, @NotNull CoroutineContext coroutineContext) {
        g.b1();
        throw new KotlinNothingValueException();
    }

    @NotNull
    public static final CoroutineContext i(@NotNull f<?> fVar) {
        g.b1();
        throw new KotlinNothingValueException();
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "coroutineContext is resolved into the property of outer CoroutineScope which is likely to be an error.Use currentCoroutineContext() instead or specify the receiver of coroutineContext explicitly", replaceWith = @ReplaceWith(expression = "currentCoroutineContext()", imports = {}))
    public static /* synthetic */ void j(f fVar) {
    }

    public static final boolean k(@NotNull f<?> fVar) {
        g.b1();
        throw new KotlinNothingValueException();
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "isActive is resolved into the extension of outer CoroutineScope which is likely to be an error.Use currentCoroutineContext().isActive or cancellable() operator instead or specify the receiver of isActive explicitly. Additionally, flow {} builder emissions are cancellable by default.", replaceWith = @ReplaceWith(expression = "currentCoroutineContext().isActive", imports = {}))
    public static /* synthetic */ void l(f fVar) {
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "SharedFlow never completes, so this operator has no effect.", replaceWith = @ReplaceWith(expression = "this", imports = {}))
    @InlineOnly
    private static final <T> e<T> m(n<? extends T> nVar, long j10, Function2<? super Throwable, ? super Continuation<? super Boolean>, ? extends Object> function2) {
        Intrinsics.checkNotNull(nVar, "null cannot be cast to non-null type kotlinx.coroutines.flow.Flow<T of kotlinx.coroutines.flow.LintKt.retry>");
        return g.v1(nVar, j10, function2);
    }

    static /* synthetic */ e n(n nVar, long j10, Function2 function2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            j10 = Long.MAX_VALUE;
        }
        if ((i10 & 2) != 0) {
            function2 = new LintKt$retry$1(null);
        }
        Intrinsics.checkNotNull(nVar, "null cannot be cast to non-null type kotlinx.coroutines.flow.Flow<T of kotlinx.coroutines.flow.LintKt.retry>");
        return g.v1(nVar, j10, function2);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "SharedFlow never completes, so this operator has no effect.", replaceWith = @ReplaceWith(expression = "this", imports = {}))
    @InlineOnly
    private static final <T> e<T> o(n<? extends T> nVar, Function4<? super f<? super T>, ? super Throwable, ? super Long, ? super Continuation<? super Boolean>, ? extends Object> function4) {
        Intrinsics.checkNotNull(nVar, "null cannot be cast to non-null type kotlinx.coroutines.flow.Flow<T of kotlinx.coroutines.flow.LintKt.retryWhen>");
        return g.x1(nVar, function4);
    }

    @InlineOnly
    private static final <T> Object p(n<? extends T> nVar, List<T> list, Continuation<?> continuation) {
        Intrinsics.checkNotNull(nVar, "null cannot be cast to non-null type kotlinx.coroutines.flow.Flow<T of kotlinx.coroutines.flow.LintKt.toList>");
        InlineMarker.mark(0);
        g.X1(nVar, list, continuation);
        InlineMarker.mark(1);
        throw new IllegalStateException("this code is supposed to be unreachable");
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "SharedFlow never completes, so this terminal operation never completes.")
    @InlineOnly
    private static final <T> Object q(n<? extends T> nVar, Continuation<? super List<? extends T>> continuation) {
        Intrinsics.checkNotNull(nVar, "null cannot be cast to non-null type kotlinx.coroutines.flow.Flow<T of kotlinx.coroutines.flow.LintKt.toList>");
        InlineMarker.mark(0);
        Object objC = FlowKt__CollectionKt.c(nVar, null, continuation, 1, null);
        InlineMarker.mark(1);
        return objC;
    }

    @InlineOnly
    private static final <T> Object r(n<? extends T> nVar, Set<T> set, Continuation<?> continuation) {
        Intrinsics.checkNotNull(nVar, "null cannot be cast to non-null type kotlinx.coroutines.flow.Flow<T of kotlinx.coroutines.flow.LintKt.toSet>");
        InlineMarker.mark(0);
        g.Z1(nVar, set, continuation);
        InlineMarker.mark(1);
        throw new IllegalStateException("this code is supposed to be unreachable");
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "SharedFlow never completes, so this terminal operation never completes.")
    @InlineOnly
    private static final <T> Object s(n<? extends T> nVar, Continuation<? super Set<? extends T>> continuation) {
        Intrinsics.checkNotNull(nVar, "null cannot be cast to non-null type kotlinx.coroutines.flow.Flow<T of kotlinx.coroutines.flow.LintKt.toSet>");
        InlineMarker.mark(0);
        Object objE = FlowKt__CollectionKt.e(nVar, null, continuation, 1, null);
        InlineMarker.mark(1);
        return objE;
    }
}
