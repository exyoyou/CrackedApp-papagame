package kotlinx.coroutines.channels;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineContextKt;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.JobSupport;
import kotlinx.coroutines.ObsoleteCoroutinesApi;
import kotlinx.coroutines.l0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class b {
    @ObsoleteCoroutinesApi
    @NotNull
    public static final <E> s<E> a(@NotNull l0 l0Var, @NotNull CoroutineContext coroutineContext, int i10, @NotNull CoroutineStart coroutineStart, @Nullable Function1<? super Throwable, Unit> function1, @NotNull Function2<? super c<E>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        CoroutineContext coroutineContextE = CoroutineContextKt.e(l0Var, coroutineContext);
        g gVarD = i.d(i10, null, null, 6, null);
        a lazyActorCoroutine = coroutineStart.isLazy() ? new LazyActorCoroutine(coroutineContextE, gVarD, function2) : new a(coroutineContextE, gVarD, true);
        if (function1 != null) {
            ((JobSupport) lazyActorCoroutine).l(function1);
        }
        ((kotlinx.coroutines.a) lazyActorCoroutine).J1(coroutineStart, lazyActorCoroutine, function2);
        return (s<E>) lazyActorCoroutine;
    }

    public static /* synthetic */ s b(l0 l0Var, CoroutineContext coroutineContext, int i10, CoroutineStart coroutineStart, Function1 function1, Function2 function2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        CoroutineContext coroutineContext2 = coroutineContext;
        int i12 = (i11 & 2) != 0 ? 0 : i10;
        if ((i11 & 4) != 0) {
            coroutineStart = CoroutineStart.DEFAULT;
        }
        CoroutineStart coroutineStart2 = coroutineStart;
        if ((i11 & 8) != 0) {
            function1 = null;
        }
        return a(l0Var, coroutineContext2, i12, coroutineStart2, function1, function2);
    }
}
