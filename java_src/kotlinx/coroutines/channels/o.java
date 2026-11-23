package kotlinx.coroutines.channels;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
final class o<E> extends f<E> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NotNull
    private final Continuation<Unit> f92713f;

    public o(@NotNull CoroutineContext coroutineContext, @NotNull d<E> dVar, @NotNull Function2<? super q<? super E>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        super(coroutineContext, dVar, false);
        this.f92713f = IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted(function2, this, this);
    }

    @Override // kotlinx.coroutines.channels.f, kotlinx.coroutines.channels.d
    @NotNull
    public ReceiveChannel<E> m() {
        ReceiveChannel<E> receiveChannelM = K1().m();
        start();
        return receiveChannelM;
    }

    @Override // kotlinx.coroutines.JobSupport
    protected void n1() throws Throwable {
        bc.a.c(this.f92713f, this);
    }
}
