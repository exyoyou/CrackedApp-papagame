package kotlinx.coroutines.channels;

import io.netty.handler.codec.rtsp.RtspHeaders;
import java.util.Map;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0}, l = {517}, m = "toMap", n = {RtspHeaders.Values.DESTINATION, "$this$consume$iv$iv"}, s = {"L$0", "L$1"})
final class ChannelsKt__DeprecatedKt$toMap$2<K, V, M extends Map<? super K, ? super V>> extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Object f92647b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Object f92648c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    Object f92649d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    /* synthetic */ Object f92650e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f92651f;

    ChannelsKt__DeprecatedKt$toMap$2(Continuation<? super ChannelsKt__DeprecatedKt$toMap$2> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f92650e = obj;
        this.f92651f |= Integer.MIN_VALUE;
        return l.h0(null, null, this);
    }
}
