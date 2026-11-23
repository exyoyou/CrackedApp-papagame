package kotlinx.coroutines.flow;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.flow.SharedFlowImpl", f = "SharedFlow.kt", i = {0, 0, 0, 1, 1, 1, 1, 2, 2, 2, 2}, l = {MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_300, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_MAX_CRYPTO_RETRANSMISSIONS, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_MAX_RETRANSMISSION_TIME_MS}, m = "collect$suspendImpl", n = {"$this", "collector", "slot", "$this", "collector", "slot", "collectorJob", "$this", "collector", "slot", "collectorJob"}, s = {"L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$3", "L$0", "L$1", "L$2", "L$3"})
final class SharedFlowImpl$collect$1<T> extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Object f93205b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Object f93206c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    Object f93207d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    Object f93208e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    /* synthetic */ Object f93209f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final /* synthetic */ SharedFlowImpl<T> f93210g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    int f93211h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SharedFlowImpl$collect$1(SharedFlowImpl<T> sharedFlowImpl, Continuation<? super SharedFlowImpl$collect$1> continuation) {
        super(continuation);
        this.f93210g = sharedFlowImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f93209f = obj;
        this.f93211h |= Integer.MIN_VALUE;
        return SharedFlowImpl.E(this.f93210g, null, this);
    }
}
