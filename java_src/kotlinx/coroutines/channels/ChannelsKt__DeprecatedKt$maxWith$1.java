package kotlinx.coroutines.channels;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 0, 1, 1, 1, 1}, l = {MediaPlayer.MEDIA_PLAYER_OPTION_CMAF_MPD_SOCKET_CONNECT_TIME, MediaPlayer.MEDIA_PLAYER_OPTION_CMAF_CONNECT_TIME}, m = "maxWith", n = {"comparator", "$this$consume$iv", "iterator", "comparator", "$this$consume$iv", "iterator", "max"}, s = {"L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$3"})
final class ChannelsKt__DeprecatedKt$maxWith$1<E> extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Object f92599b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Object f92600c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    Object f92601d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    Object f92602e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    /* synthetic */ Object f92603f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f92604g;

    ChannelsKt__DeprecatedKt$maxWith$1(Continuation<? super ChannelsKt__DeprecatedKt$maxWith$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f92603f = obj;
        this.f92604g |= Integer.MIN_VALUE;
        return ChannelsKt__DeprecatedKt.P(null, null, this);
    }
}
