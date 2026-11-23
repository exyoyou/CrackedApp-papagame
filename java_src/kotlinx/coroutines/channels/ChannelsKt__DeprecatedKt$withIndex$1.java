package kotlinx.coroutines.channels;

import com.sdk.base.module.manager.SDKManager;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.IndexedValue;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00020\u0001H\u008a@"}, d2 = {SDKManager.ALGO_E_SM4_SM3_SM2, "Lkotlinx/coroutines/channels/q;", "Lkotlin/collections/IndexedValue;", "", "<anonymous>"}, k = 3, mv = {1, 9, 0})
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$withIndex$1", f = "Deprecated.kt", i = {0, 0, 1, 1}, l = {400, 401}, m = "invokeSuspend", n = {"$this$produce", "index", "$this$produce", "index"}, s = {"L$0", "I$0", "L$0", "I$0"})
final class ChannelsKt__DeprecatedKt$withIndex$1 extends SuspendLambda implements Function2<q<? super IndexedValue<Object>>, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Object f92652b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f92653c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f92654d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private /* synthetic */ Object f92655e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final /* synthetic */ ReceiveChannel<Object> f92656f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ChannelsKt__DeprecatedKt$withIndex$1(ReceiveChannel<Object> receiveChannel, Continuation<? super ChannelsKt__DeprecatedKt$withIndex$1> continuation) {
        super(2, continuation);
        this.f92656f = receiveChannel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        ChannelsKt__DeprecatedKt$withIndex$1 channelsKt__DeprecatedKt$withIndex$1 = new ChannelsKt__DeprecatedKt$withIndex$1(this.f92656f, continuation);
        channelsKt__DeprecatedKt$withIndex$1.f92655e = obj;
        return channelsKt__DeprecatedKt$withIndex$1;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0055 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:14:0x0056  */
    /* JADX WARN: Code duplicated, block: B:17:0x0065  */
    /* JADX WARN: Code duplicated, block: B:19:0x007e A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:20:0x007f  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x007f -> B:11:0x0047). Please report as a decompilation issue!!! */
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
            int r1 = r11.f92654d
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L38
            if (r1 == r3) goto L29
            if (r1 != r2) goto L21
            int r1 = r11.f92653c
            java.lang.Object r4 = r11.f92652b
            kotlinx.coroutines.channels.ChannelIterator r4 = (kotlinx.coroutines.channels.ChannelIterator) r4
            java.lang.Object r5 = r11.f92655e
            kotlinx.coroutines.channels.q r5 = (kotlinx.coroutines.channels.q) r5
            kotlin.ResultKt.throwOnFailure(r12)
            r12 = r5
            r5 = r11
            r9 = r4
            r4 = r1
            r1 = r9
            goto L47
        L21:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r0)
            throw r12
        L29:
            int r1 = r11.f92653c
            java.lang.Object r4 = r11.f92652b
            kotlinx.coroutines.channels.ChannelIterator r4 = (kotlinx.coroutines.channels.ChannelIterator) r4
            java.lang.Object r5 = r11.f92655e
            kotlinx.coroutines.channels.q r5 = (kotlinx.coroutines.channels.q) r5
            kotlin.ResultKt.throwOnFailure(r12)
            r6 = r11
            goto L5d
        L38:
            kotlin.ResultKt.throwOnFailure(r12)
            java.lang.Object r12 = r11.f92655e
            kotlinx.coroutines.channels.q r12 = (kotlinx.coroutines.channels.q) r12
            kotlinx.coroutines.channels.ReceiveChannel<java.lang.Object> r1 = r11.f92656f
            kotlinx.coroutines.channels.ChannelIterator r1 = r1.iterator()
            r4 = 0
            r5 = r11
        L47:
            r5.f92655e = r12
            r5.f92652b = r1
            r5.f92653c = r4
            r5.f92654d = r3
            java.lang.Object r6 = r1.b(r5)
            if (r6 != r0) goto L56
            return r0
        L56:
            r9 = r5
            r5 = r12
            r12 = r6
            r6 = r9
            r10 = r4
            r4 = r1
            r1 = r10
        L5d:
            java.lang.Boolean r12 = (java.lang.Boolean) r12
            boolean r12 = r12.booleanValue()
            if (r12 == 0) goto L84
            java.lang.Object r12 = r4.next()
            kotlin.collections.IndexedValue r7 = new kotlin.collections.IndexedValue
            int r8 = r1 + 1
            r7.<init>(r1, r12)
            r6.f92655e = r5
            r6.f92652b = r4
            r6.f92653c = r8
            r6.f92654d = r2
            java.lang.Object r12 = r5.V(r7, r6)
            if (r12 != r0) goto L7f
            return r0
        L7f:
            r1 = r4
            r12 = r5
            r5 = r6
            r4 = r8
            goto L47
        L84:
            kotlin.Unit r12 = kotlin.Unit.INSTANCE
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$withIndex$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull q<? super IndexedValue<Object>> qVar, @Nullable Continuation<? super Unit> continuation) {
        return ((ChannelsKt__DeprecatedKt$withIndex$1) create(qVar, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
