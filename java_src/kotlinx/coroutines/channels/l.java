package kotlinx.coroutines.channels;

import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Pair;
import kotlin.PublishedApi;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.ObsoleteCoroutinesApi;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    public static final String f92709a = "Channel was closed";

    @PublishedApi
    @NotNull
    public static final <E, R> ReceiveChannel<R> J(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull CoroutineContext coroutineContext, @NotNull Function2<? super E, ? super Continuation<? super R>, ? extends Object> function2) {
        return ChannelsKt__DeprecatedKt.H(receiveChannel, coroutineContext, function2);
    }

    @PublishedApi
    @NotNull
    public static final <E, R> ReceiveChannel<R> L(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull CoroutineContext coroutineContext, @NotNull Function3<? super Integer, ? super E, ? super Continuation<? super R>, ? extends Object> function3) {
        return ChannelsKt__DeprecatedKt.J(receiveChannel, coroutineContext, function3);
    }

    @PublishedApi
    public static final void b(@NotNull ReceiveChannel<?> receiveChannel, @Nullable Throwable th) {
        ChannelsKt__Channels_commonKt.a(receiveChannel, th);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "BroadcastChannel is deprecated in the favour of SharedFlow and is no longer supported")
    @ObsoleteCoroutinesApi
    public static final <E, R> R c(@NotNull d<E> dVar, @NotNull Function1<? super ReceiveChannel<? extends E>, ? extends R> function1) {
        return (R) ChannelsKt__DeprecatedKt.b(dVar, function1);
    }

    public static final <E, R> R d(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull Function1<? super ReceiveChannel<? extends E>, ? extends R> function1) {
        return (R) ChannelsKt__Channels_commonKt.b(receiveChannel, function1);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "BroadcastChannel is deprecated in the favour of SharedFlow and is no longer supported")
    @Nullable
    public static final <E> Object e(@NotNull d<E> dVar, @NotNull Function1<? super E, Unit> function1, @NotNull Continuation<? super Unit> continuation) {
        return ChannelsKt__DeprecatedKt.c(dVar, function1, continuation);
    }

    @PublishedApi
    @Nullable
    public static final <E, C extends s<? super E>> Object e0(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull C c10, @NotNull Continuation<? super C> continuation) {
        return ChannelsKt__DeprecatedKt.Z(receiveChannel, c10, continuation);
    }

    @Nullable
    public static final <E> Object f(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull Function1<? super E, Unit> function1, @NotNull Continuation<? super Unit> continuation) {
        return ChannelsKt__Channels_commonKt.c(receiveChannel, function1, continuation);
    }

    @PublishedApi
    @Nullable
    public static final <E, C extends Collection<? super E>> Object f0(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull C c10, @NotNull Continuation<? super C> continuation) {
        return ChannelsKt__DeprecatedKt.a0(receiveChannel, c10, continuation);
    }

    @PublishedApi
    @NotNull
    public static final Function1<Throwable, Unit> g(@NotNull ReceiveChannel<?> receiveChannel) {
        return ChannelsKt__DeprecatedKt.e(receiveChannel);
    }

    @Nullable
    public static final <E> Object g0(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull Continuation<? super List<? extends E>> continuation) {
        return ChannelsKt__Channels_commonKt.g(receiveChannel, continuation);
    }

    @PublishedApi
    @NotNull
    public static final Function1<Throwable, Unit> h(@NotNull ReceiveChannel<?>... receiveChannelArr) {
        return ChannelsKt__DeprecatedKt.f(receiveChannelArr);
    }

    @PublishedApi
    @Nullable
    public static final <K, V, M extends Map<? super K, ? super V>> Object h0(@NotNull ReceiveChannel<? extends Pair<? extends K, ? extends V>> receiveChannel, @NotNull M m10, @NotNull Continuation<? super M> continuation) {
        return ChannelsKt__DeprecatedKt.b0(receiveChannel, m10, continuation);
    }

    @PublishedApi
    @NotNull
    public static final <E, K> ReceiveChannel<E> k(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull CoroutineContext coroutineContext, @NotNull Function2<? super E, ? super Continuation<? super K>, ? extends Object> function2) {
        return ChannelsKt__DeprecatedKt.i(receiveChannel, coroutineContext, function2);
    }

    @PublishedApi
    @Nullable
    public static final <E> Object k0(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull Continuation<? super Set<E>> continuation) {
        return ChannelsKt__DeprecatedKt.e0(receiveChannel, continuation);
    }

    @NotNull
    public static final <E> Object m0(@NotNull s<? super E> sVar, E e10) {
        return ChannelsKt__ChannelsKt.b(sVar, e10);
    }

    @PublishedApi
    @NotNull
    public static final <E, R, V> ReceiveChannel<V> q0(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull ReceiveChannel<? extends R> receiveChannel2, @NotNull CoroutineContext coroutineContext, @NotNull Function2<? super E, ? super R, ? extends V> function2) {
        return ChannelsKt__DeprecatedKt.j0(receiveChannel, receiveChannel2, coroutineContext, function2);
    }

    @PublishedApi
    @NotNull
    public static final <E> ReceiveChannel<E> s(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull CoroutineContext coroutineContext, @NotNull Function2<? super E, ? super Continuation<? super Boolean>, ? extends Object> function2) {
        return ChannelsKt__DeprecatedKt.q(receiveChannel, coroutineContext, function2);
    }

    @PublishedApi
    @NotNull
    public static final <E> ReceiveChannel<E> y(@NotNull ReceiveChannel<? extends E> receiveChannel) {
        return ChannelsKt__DeprecatedKt.w(receiveChannel);
    }
}
