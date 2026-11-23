package kotlinx.coroutines.channels;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.sdk.base.module.manager.SDKManager;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00010\u0002H\u008a@"}, d2 = {SDKManager.ALGO_E_SM4_SM3_SM2, "R", "Lkotlinx/coroutines/channels/q;", "", "<anonymous>"}, k = 3, mv = {1, 9, 0})
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$flatMap$1", f = "Deprecated.kt", i = {0, 1, 2}, l = {MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_CONFIG_CACHED, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_CHLO_COUNT, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_CHLO_COUNT}, m = "invokeSuspend", n = {"$this$produce", "$this$produce", "$this$produce"}, s = {"L$0", "L$0", "L$0"})
final class ChannelsKt__DeprecatedKt$flatMap$1 extends SuspendLambda implements Function2<q<Object>, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Object f92556b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f92557c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private /* synthetic */ Object f92558d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final /* synthetic */ ReceiveChannel<Object> f92559e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final /* synthetic */ Function2<Object, Continuation<? super ReceiveChannel<Object>>, Object> f92560f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    ChannelsKt__DeprecatedKt$flatMap$1(ReceiveChannel<Object> receiveChannel, Function2<Object, ? super Continuation<? super ReceiveChannel<Object>>, ? extends Object> function2, Continuation<? super ChannelsKt__DeprecatedKt$flatMap$1> continuation) {
        super(2, continuation);
        this.f92559e = receiveChannel;
        this.f92560f = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        ChannelsKt__DeprecatedKt$flatMap$1 channelsKt__DeprecatedKt$flatMap$1 = new ChannelsKt__DeprecatedKt$flatMap$1(this.f92559e, this.f92560f, continuation);
        channelsKt__DeprecatedKt$flatMap$1.f92558d = obj;
        return channelsKt__DeprecatedKt$flatMap$1;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0060 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:17:0x0061  */
    /* JADX WARN: Code duplicated, block: B:20:0x006f  */
    /* JADX WARN: Code duplicated, block: B:22:0x0081 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:25:0x0090 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:26:0x0091  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0091 -> B:14:0x0054). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r10) {
        /*
            r9 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r9.f92557c
            r2 = 3
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L45
            if (r1 == r4) goto L35
            if (r1 == r3) goto L25
            if (r1 != r2) goto L1d
            java.lang.Object r1 = r9.f92556b
            kotlinx.coroutines.channels.ChannelIterator r1 = (kotlinx.coroutines.channels.ChannelIterator) r1
            java.lang.Object r5 = r9.f92558d
            kotlinx.coroutines.channels.q r5 = (kotlinx.coroutines.channels.q) r5
            kotlin.ResultKt.throwOnFailure(r10)
            goto L53
        L1d:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r0)
            throw r10
        L25:
            java.lang.Object r1 = r9.f92556b
            kotlinx.coroutines.channels.ChannelIterator r1 = (kotlinx.coroutines.channels.ChannelIterator) r1
            java.lang.Object r5 = r9.f92558d
            kotlinx.coroutines.channels.q r5 = (kotlinx.coroutines.channels.q) r5
            kotlin.ResultKt.throwOnFailure(r10)
            r6 = r5
            r5 = r1
            r1 = r0
            r0 = r9
            goto L82
        L35:
            java.lang.Object r1 = r9.f92556b
            kotlinx.coroutines.channels.ChannelIterator r1 = (kotlinx.coroutines.channels.ChannelIterator) r1
            java.lang.Object r5 = r9.f92558d
            kotlinx.coroutines.channels.q r5 = (kotlinx.coroutines.channels.q) r5
            kotlin.ResultKt.throwOnFailure(r10)
            r6 = r5
            r5 = r1
            r1 = r0
            r0 = r9
            goto L67
        L45:
            kotlin.ResultKt.throwOnFailure(r10)
            java.lang.Object r10 = r9.f92558d
            kotlinx.coroutines.channels.q r10 = (kotlinx.coroutines.channels.q) r10
            kotlinx.coroutines.channels.ReceiveChannel<java.lang.Object> r1 = r9.f92559e
            kotlinx.coroutines.channels.ChannelIterator r1 = r1.iterator()
            r5 = r10
        L53:
            r10 = r9
        L54:
            r10.f92558d = r5
            r10.f92556b = r1
            r10.f92557c = r4
            java.lang.Object r6 = r1.b(r10)
            if (r6 != r0) goto L61
            return r0
        L61:
            r8 = r0
            r0 = r10
            r10 = r6
            r6 = r5
            r5 = r1
            r1 = r8
        L67:
            java.lang.Boolean r10 = (java.lang.Boolean) r10
            boolean r10 = r10.booleanValue()
            if (r10 == 0) goto L96
            java.lang.Object r10 = r5.next()
            kotlin.jvm.functions.Function2<java.lang.Object, kotlin.coroutines.Continuation<? super kotlinx.coroutines.channels.ReceiveChannel<java.lang.Object>>, java.lang.Object> r7 = r0.f92560f
            r0.f92558d = r6
            r0.f92556b = r5
            r0.f92557c = r3
            java.lang.Object r10 = r7.invoke(r10, r0)
            if (r10 != r1) goto L82
            return r1
        L82:
            kotlinx.coroutines.channels.ReceiveChannel r10 = (kotlinx.coroutines.channels.ReceiveChannel) r10
            r0.f92558d = r6
            r0.f92556b = r5
            r0.f92557c = r2
            java.lang.Object r10 = kotlinx.coroutines.channels.l.e0(r10, r6, r0)
            if (r10 != r1) goto L91
            return r1
        L91:
            r10 = r0
            r0 = r1
            r1 = r5
            r5 = r6
            goto L54
        L96:
            kotlin.Unit r10 = kotlin.Unit.INSTANCE
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$flatMap$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull q<Object> qVar, @Nullable Continuation<? super Unit> continuation) {
        return ((ChannelsKt__DeprecatedKt$flatMap$1) create(qVar, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
