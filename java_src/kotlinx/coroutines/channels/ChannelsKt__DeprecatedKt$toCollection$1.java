package kotlinx.coroutines.channels;

import io.netty.handler.codec.rtsp.RtspHeaders;
import java.util.Collection;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0}, l = {517}, m = "toCollection", n = {RtspHeaders.Values.DESTINATION, "$this$consume$iv$iv"}, s = {"L$0", "L$1"})
final class ChannelsKt__DeprecatedKt$toCollection$1<E, C extends Collection<? super E>> extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Object f92642b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Object f92643c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    Object f92644d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    /* synthetic */ Object f92645e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f92646f;

    ChannelsKt__DeprecatedKt$toCollection$1(Continuation<? super ChannelsKt__DeprecatedKt$toCollection$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f92645e = obj;
        this.f92646f |= Integer.MIN_VALUE;
        return l.f0(null, null, this);
    }
}
