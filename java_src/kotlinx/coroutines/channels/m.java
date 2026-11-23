package kotlinx.coroutines.channels;

import java.util.concurrent.CancellationException;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.ObsoleteCoroutinesApi;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Deprecated(level = DeprecationLevel.WARNING, message = "ConflatedBroadcastChannel is deprecated in the favour of SharedFlow and is no longer supported")
@ObsoleteCoroutinesApi
public final class m<E> implements d<E> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    private final BroadcastChannelImpl<E> f92710b;

    private m(BroadcastChannelImpl<E> broadcastChannelImpl) {
        this.f92710b = broadcastChannelImpl;
    }

    @Override // kotlinx.coroutines.channels.s
    public boolean A() {
        return this.f92710b.A();
    }

    @Override // kotlinx.coroutines.channels.s
    public boolean U(@Nullable Throwable th) {
        return this.f92710b.U(th);
    }

    @Override // kotlinx.coroutines.channels.s
    @Nullable
    public Object V(E e10, @NotNull Continuation<? super Unit> continuation) {
        return this.f92710b.V(e10, continuation);
    }

    @Override // kotlinx.coroutines.channels.d
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility only")
    public /* synthetic */ boolean a(Throwable th) {
        return this.f92710b.a(th);
    }

    @Override // kotlinx.coroutines.channels.d
    public void b(@Nullable CancellationException cancellationException) {
        this.f92710b.b(cancellationException);
    }

    public final E c() {
        return this.f92710b.n2();
    }

    @Nullable
    public final E d() {
        return this.f92710b.p2();
    }

    @Override // kotlinx.coroutines.channels.s
    @NotNull
    public kotlinx.coroutines.selects.g<E, s<E>> j() {
        return this.f92710b.j();
    }

    @Override // kotlinx.coroutines.channels.d
    @NotNull
    public ReceiveChannel<E> m() {
        return this.f92710b.m();
    }

    @Override // kotlinx.coroutines.channels.s
    @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in the favour of 'trySend' method", replaceWith = @ReplaceWith(expression = "trySend(element).isSuccess", imports = {}))
    public boolean offer(E e10) {
        return this.f92710b.offer(e10);
    }

    @Override // kotlinx.coroutines.channels.s
    public void r(@NotNull Function1<? super Throwable, Unit> function1) {
        this.f92710b.r(function1);
    }

    @Override // kotlinx.coroutines.channels.s
    @NotNull
    public Object s(E e10) {
        return this.f92710b.s(e10);
    }

    public m() {
        this(new BroadcastChannelImpl(-1));
    }

    public m(E e10) {
        this();
        s(e10);
    }
}
