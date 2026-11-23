package kotlinx.coroutines;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
final class d2 extends p2 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NotNull
    private final Continuation<Unit> f92718e;

    public d2(@NotNull CoroutineContext coroutineContext, @NotNull Function2<? super l0, ? super Continuation<? super Unit>, ? extends Object> function2) {
        super(coroutineContext, false);
        this.f92718e = IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted(function2, this, this);
    }

    @Override // kotlinx.coroutines.JobSupport
    protected void n1() throws Throwable {
        bc.a.c(this.f92718e, this);
    }
}
