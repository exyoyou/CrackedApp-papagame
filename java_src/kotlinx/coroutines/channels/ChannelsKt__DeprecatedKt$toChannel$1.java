package kotlinx.coroutines.channels;

import io.netty.handler.codec.rtsp.RtspHeaders;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlinx.coroutines.channels.s;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 1, 1}, l = {517, 308}, m = "toChannel", n = {RtspHeaders.Values.DESTINATION, "$this$consume$iv$iv", RtspHeaders.Values.DESTINATION, "$this$consume$iv$iv"}, s = {"L$0", "L$1", "L$0", "L$1"})
final class ChannelsKt__DeprecatedKt$toChannel$1<E, C extends s<? super E>> extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Object f92637b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Object f92638c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    Object f92639d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    /* synthetic */ Object f92640e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f92641f;

    ChannelsKt__DeprecatedKt$toChannel$1(Continuation<? super ChannelsKt__DeprecatedKt$toChannel$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f92640e = obj;
        this.f92641f |= Integer.MIN_VALUE;
        return l.e0(null, null, this);
    }
}
