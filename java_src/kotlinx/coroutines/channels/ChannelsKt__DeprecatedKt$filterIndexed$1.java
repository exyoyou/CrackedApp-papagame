package kotlinx.coroutines.channels;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.sdk.base.module.manager.SDKManager;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u008a@"}, d2 = {SDKManager.ALGO_E_SM4_SM3_SM2, "Lkotlinx/coroutines/channels/q;", "", "<anonymous>"}, k = 3, mv = {1, 9, 0})
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$filterIndexed$1", f = "Deprecated.kt", i = {0, 0, 1, 1, 1, 2, 2}, l = {MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_INDEX_CACHE, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAG_RANGE, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAG_RANGE}, m = "invokeSuspend", n = {"$this$produce", "index", "$this$produce", "e", "index", "$this$produce", "index"}, s = {"L$0", "I$0", "L$0", "L$2", "I$0", "L$0", "I$0"})
final class ChannelsKt__DeprecatedKt$filterIndexed$1 extends SuspendLambda implements Function2<q<Object>, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Object f92526b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Object f92527c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f92528d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f92529e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private /* synthetic */ Object f92530f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final /* synthetic */ ReceiveChannel<Object> f92531g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final /* synthetic */ Function3<Integer, Object, Continuation<? super Boolean>, Object> f92532h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    ChannelsKt__DeprecatedKt$filterIndexed$1(ReceiveChannel<Object> receiveChannel, Function3<? super Integer, Object, ? super Continuation<? super Boolean>, ? extends Object> function3, Continuation<? super ChannelsKt__DeprecatedKt$filterIndexed$1> continuation) {
        super(2, continuation);
        this.f92531g = receiveChannel;
        this.f92532h = function3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        ChannelsKt__DeprecatedKt$filterIndexed$1 channelsKt__DeprecatedKt$filterIndexed$1 = new ChannelsKt__DeprecatedKt$filterIndexed$1(this.f92531g, this.f92532h, continuation);
        channelsKt__DeprecatedKt$filterIndexed$1.f92530f = obj;
        return channelsKt__DeprecatedKt$filterIndexed$1;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0074 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:18:0x0075  */
    /* JADX WARN: Code duplicated, block: B:21:0x0084  */
    /* JADX WARN: Code duplicated, block: B:23:0x00a0 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:27:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:29:0x00bd A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:30:0x00be  */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r13) {
        /*
            r12 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r12.f92529e
            r2 = 0
            r3 = 3
            r4 = 2
            r5 = 1
            if (r1 == 0) goto L52
            if (r1 == r5) goto L3f
            if (r1 == r4) goto L28
            if (r1 != r3) goto L20
            int r1 = r12.f92528d
            java.lang.Object r6 = r12.f92526b
            kotlinx.coroutines.channels.ChannelIterator r6 = (kotlinx.coroutines.channels.ChannelIterator) r6
            java.lang.Object r7 = r12.f92530f
            kotlinx.coroutines.channels.q r7 = (kotlinx.coroutines.channels.q) r7
            kotlin.ResultKt.throwOnFailure(r13)
            goto L63
        L20:
            java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r13.<init>(r0)
            throw r13
        L28:
            int r1 = r12.f92528d
            java.lang.Object r6 = r12.f92527c
            java.lang.Object r7 = r12.f92526b
            kotlinx.coroutines.channels.ChannelIterator r7 = (kotlinx.coroutines.channels.ChannelIterator) r7
            java.lang.Object r8 = r12.f92530f
            kotlinx.coroutines.channels.q r8 = (kotlinx.coroutines.channels.q) r8
            kotlin.ResultKt.throwOnFailure(r13)
            r10 = r1
            r1 = r0
            r0 = r12
            r11 = r7
            r7 = r6
        L3c:
            r6 = r11
            goto La5
        L3f:
            int r1 = r12.f92528d
            java.lang.Object r6 = r12.f92526b
            kotlinx.coroutines.channels.ChannelIterator r6 = (kotlinx.coroutines.channels.ChannelIterator) r6
            java.lang.Object r7 = r12.f92530f
            kotlinx.coroutines.channels.q r7 = (kotlinx.coroutines.channels.q) r7
            kotlin.ResultKt.throwOnFailure(r13)
            r8 = r7
            r7 = r6
            r6 = r1
            r1 = r0
            r0 = r12
            goto L7c
        L52:
            kotlin.ResultKt.throwOnFailure(r13)
            java.lang.Object r13 = r12.f92530f
            kotlinx.coroutines.channels.q r13 = (kotlinx.coroutines.channels.q) r13
            kotlinx.coroutines.channels.ReceiveChannel<java.lang.Object> r1 = r12.f92531g
            kotlinx.coroutines.channels.ChannelIterator r1 = r1.iterator()
            r6 = 0
            r7 = r13
            r6 = r1
            r1 = 0
        L63:
            r13 = r12
        L64:
            r13.f92530f = r7
            r13.f92526b = r6
            r13.f92527c = r2
            r13.f92528d = r1
            r13.f92529e = r5
            java.lang.Object r8 = r6.b(r13)
            if (r8 != r0) goto L75
            return r0
        L75:
            r11 = r0
            r0 = r13
            r13 = r8
            r8 = r7
            r7 = r6
            r6 = r1
            r1 = r11
        L7c:
            java.lang.Boolean r13 = (java.lang.Boolean) r13
            boolean r13 = r13.booleanValue()
            if (r13 == 0) goto Lc3
            java.lang.Object r13 = r7.next()
            kotlin.jvm.functions.Function3<java.lang.Integer, java.lang.Object, kotlin.coroutines.Continuation<? super java.lang.Boolean>, java.lang.Object> r9 = r0.f92532h
            int r10 = r6 + 1
            java.lang.Integer r6 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r6)
            r0.f92530f = r8
            r0.f92526b = r7
            r0.f92527c = r13
            r0.f92528d = r10
            r0.f92529e = r4
            java.lang.Object r6 = r9.invoke(r6, r13, r0)
            if (r6 != r1) goto La1
            return r1
        La1:
            r11 = r7
            r7 = r13
            r13 = r6
            goto L3c
        La5:
            java.lang.Boolean r13 = (java.lang.Boolean) r13
            boolean r13 = r13.booleanValue()
            if (r13 == 0) goto Lbe
            r0.f92530f = r8
            r0.f92526b = r6
            r0.f92527c = r2
            r0.f92528d = r10
            r0.f92529e = r3
            java.lang.Object r13 = r8.V(r7, r0)
            if (r13 != r1) goto Lbe
            return r1
        Lbe:
            r13 = r0
            r0 = r1
            r7 = r8
            r1 = r10
            goto L64
        Lc3:
            kotlin.Unit r13 = kotlin.Unit.INSTANCE
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$filterIndexed$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull q<Object> qVar, @Nullable Continuation<? super Unit> continuation) {
        return ((ChannelsKt__DeprecatedKt$filterIndexed$1) create(qVar, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
