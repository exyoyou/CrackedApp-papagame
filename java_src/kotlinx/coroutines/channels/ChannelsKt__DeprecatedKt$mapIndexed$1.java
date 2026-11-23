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

/* JADX INFO: Add missing generic type declarations: [R] */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00010\u0002H\u008a@"}, d2 = {SDKManager.ALGO_E_SM4_SM3_SM2, "R", "Lkotlinx/coroutines/channels/q;", "", "<anonymous>"}, k = 3, mv = {1, 9, 0})
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$mapIndexed$1", f = "Deprecated.kt", i = {0, 0, 1, 1, 2, 2}, l = {MediaPlayer.MEDIA_PLAYER_OPTION_SET_FORCE_DECODE_MS_GAPS, MediaPlayer.MEDIA_PLAYER_OPTION_SET_FORCE_RENDER_MS_GAPS, MediaPlayer.MEDIA_PLAYER_OPTION_SET_FORCE_RENDER_MS_GAPS}, m = "invokeSuspend", n = {"$this$produce", "index", "$this$produce", "index", "$this$produce", "index"}, s = {"L$0", "I$0", "L$0", "I$0", "L$0", "I$0"})
final class ChannelsKt__DeprecatedKt$mapIndexed$1<R> extends SuspendLambda implements Function2<q<? super R>, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Object f92592b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Object f92593c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f92594d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f92595e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private /* synthetic */ Object f92596f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final /* synthetic */ ReceiveChannel<E> f92597g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final /* synthetic */ Function3<Integer, E, Continuation<? super R>, Object> f92598h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    ChannelsKt__DeprecatedKt$mapIndexed$1(ReceiveChannel<? extends E> receiveChannel, Function3<? super Integer, ? super E, ? super Continuation<? super R>, ? extends Object> function3, Continuation<? super ChannelsKt__DeprecatedKt$mapIndexed$1> continuation) {
        super(2, continuation);
        this.f92597g = receiveChannel;
        this.f92598h = function3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        ChannelsKt__DeprecatedKt$mapIndexed$1 channelsKt__DeprecatedKt$mapIndexed$1 = new ChannelsKt__DeprecatedKt$mapIndexed$1(this.f92597g, this.f92598h, continuation);
        channelsKt__DeprecatedKt$mapIndexed$1.f92596f = obj;
        return channelsKt__DeprecatedKt$mapIndexed$1;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x006a A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:16:0x006b  */
    /* JADX WARN: Code duplicated, block: B:19:0x0077  */
    /* JADX WARN: Code duplicated, block: B:21:0x0093 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:22:0x0094  */
    /* JADX WARN: Code duplicated, block: B:25:0x00aa A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:26:0x00ab  */
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x00ab -> B:13:0x005c). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r12) {
        /*
            r11 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r11.f92595e
            r2 = 3
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L4b
            if (r1 == r4) goto L3c
            if (r1 == r3) goto L29
            if (r1 != r2) goto L21
            int r1 = r11.f92594d
            java.lang.Object r5 = r11.f92592b
            kotlinx.coroutines.channels.ChannelIterator r5 = (kotlinx.coroutines.channels.ChannelIterator) r5
            java.lang.Object r6 = r11.f92596f
            kotlinx.coroutines.channels.q r6 = (kotlinx.coroutines.channels.q) r6
            kotlin.ResultKt.throwOnFailure(r12)
            r12 = r6
            r6 = r11
            goto L5c
        L21:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r0)
            throw r12
        L29:
            int r1 = r11.f92594d
            java.lang.Object r5 = r11.f92593c
            kotlinx.coroutines.channels.q r5 = (kotlinx.coroutines.channels.q) r5
            java.lang.Object r6 = r11.f92592b
            kotlinx.coroutines.channels.ChannelIterator r6 = (kotlinx.coroutines.channels.ChannelIterator) r6
            java.lang.Object r7 = r11.f92596f
            kotlinx.coroutines.channels.q r7 = (kotlinx.coroutines.channels.q) r7
            kotlin.ResultKt.throwOnFailure(r12)
            r8 = r11
            goto L99
        L3c:
            int r1 = r11.f92594d
            java.lang.Object r5 = r11.f92592b
            kotlinx.coroutines.channels.ChannelIterator r5 = (kotlinx.coroutines.channels.ChannelIterator) r5
            java.lang.Object r6 = r11.f92596f
            kotlinx.coroutines.channels.q r6 = (kotlinx.coroutines.channels.q) r6
            kotlin.ResultKt.throwOnFailure(r12)
            r7 = r11
            goto L6f
        L4b:
            kotlin.ResultKt.throwOnFailure(r12)
            java.lang.Object r12 = r11.f92596f
            kotlinx.coroutines.channels.q r12 = (kotlinx.coroutines.channels.q) r12
            kotlinx.coroutines.channels.ReceiveChannel<E> r1 = r11.f92597g
            kotlinx.coroutines.channels.ChannelIterator r1 = r1.iterator()
            r5 = 0
            r6 = r11
            r5 = r1
            r1 = 0
        L5c:
            r6.f92596f = r12
            r6.f92592b = r5
            r6.f92594d = r1
            r6.f92595e = r4
            java.lang.Object r7 = r5.b(r6)
            if (r7 != r0) goto L6b
            return r0
        L6b:
            r10 = r6
            r6 = r12
            r12 = r7
            r7 = r10
        L6f:
            java.lang.Boolean r12 = (java.lang.Boolean) r12
            boolean r12 = r12.booleanValue()
            if (r12 == 0) goto Laf
            java.lang.Object r12 = r5.next()
            kotlin.jvm.functions.Function3<java.lang.Integer, E, kotlin.coroutines.Continuation<? super R>, java.lang.Object> r8 = r7.f92598h
            int r9 = r1 + 1
            java.lang.Integer r1 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r1)
            r7.f92596f = r6
            r7.f92592b = r5
            r7.f92593c = r6
            r7.f92594d = r9
            r7.f92595e = r3
            java.lang.Object r12 = r8.invoke(r1, r12, r7)
            if (r12 != r0) goto L94
            return r0
        L94:
            r8 = r7
            r1 = r9
            r7 = r6
            r6 = r5
            r5 = r7
        L99:
            r8.f92596f = r7
            r8.f92592b = r6
            r9 = 0
            r8.f92593c = r9
            r8.f92594d = r1
            r8.f92595e = r2
            java.lang.Object r12 = r5.V(r12, r8)
            if (r12 != r0) goto Lab
            return r0
        Lab:
            r5 = r6
            r12 = r7
            r6 = r8
            goto L5c
        Laf:
            kotlin.Unit r12 = kotlin.Unit.INSTANCE
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$mapIndexed$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull q<? super R> qVar, @Nullable Continuation<? super Unit> continuation) {
        return ((ChannelsKt__DeprecatedKt$mapIndexed$1) create(qVar, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
