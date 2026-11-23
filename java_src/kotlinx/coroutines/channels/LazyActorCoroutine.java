package kotlinx.coroutines.channels;

import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
final class LazyActorCoroutine<E> extends a<E> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NotNull
    private Continuation<? super Unit> f92668f;

    public LazyActorCoroutine(@NotNull CoroutineContext coroutineContext, @NotNull g<E> gVar, @NotNull Function2<? super c<E>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        super(coroutineContext, gVar, false);
        this.f92668f = IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted(function2, this, this);
    }

    public static /* synthetic */ void M1() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void N1(kotlinx.coroutines.selects.j<?> jVar, Object obj) throws Throwable {
        n1();
        super.j().c().invoke(this, jVar, obj);
    }

    @Override // kotlinx.coroutines.channels.h, kotlinx.coroutines.channels.s
    public boolean U(@Nullable Throwable th) {
        boolean zU = super.U(th);
        start();
        return zU;
    }

    @Override // kotlinx.coroutines.channels.h, kotlinx.coroutines.channels.s
    @Nullable
    public Object V(E e10, @NotNull Continuation<? super Unit> continuation) {
        start();
        Object objV = super.V(e10, continuation);
        return objV == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objV : Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.channels.h, kotlinx.coroutines.channels.s
    @NotNull
    public kotlinx.coroutines.selects.g<E, s<E>> j() {
        LazyActorCoroutine$onSend$1 lazyActorCoroutine$onSend$1 = LazyActorCoroutine$onSend$1.f92669b;
        Intrinsics.checkNotNull(lazyActorCoroutine$onSend$1, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = 'clauseObject')] kotlin.Any, @[ParameterName(name = 'select')] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = 'param')] kotlin.Any?, kotlin.Unit>{ kotlinx.coroutines.selects.SelectKt.RegistrationFunction }");
        return new kotlinx.coroutines.selects.h(this, (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(lazyActorCoroutine$onSend$1, 3), super.j().b(), null, 8, null);
    }

    @Override // kotlinx.coroutines.JobSupport
    protected void n1() throws Throwable {
        bc.a.c(this.f92668f, this);
    }

    @Override // kotlinx.coroutines.channels.h, kotlinx.coroutines.channels.s
    @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in the favour of 'trySend' method", replaceWith = @ReplaceWith(expression = "trySend(element).isSuccess", imports = {}))
    public boolean offer(E e10) {
        start();
        return super.offer(e10);
    }

    @Override // kotlinx.coroutines.channels.h, kotlinx.coroutines.channels.s
    @NotNull
    public Object s(E e10) {
        start();
        return super.s(e10);
    }
}
