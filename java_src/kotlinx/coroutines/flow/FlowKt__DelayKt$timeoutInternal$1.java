package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.l0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.webrtc.haima.HmDataChannelManager;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0005\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000*\u00020\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u008a@"}, d2 = {"T", "Lkotlinx/coroutines/l0;", "Lkotlinx/coroutines/flow/f;", "downStream", "", "<anonymous>"}, k = 3, mv = {1, 9, 0})
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$timeoutInternal$1", f = "Delay.kt", i = {0, 0}, l = {416}, m = "invokeSuspend", n = {"downStream", HmDataChannelManager.BEHAVIOR_VALUE}, s = {"L$0", "L$1"})
@SourceDebugExtension({"SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$timeoutInternal$1\n+ 2 WhileSelect.kt\nkotlinx/coroutines/selects/WhileSelectKt\n+ 3 Select.kt\nkotlinx/coroutines/selects/SelectKt\n*L\n1#1,407:1\n27#2:408\n28#2:417\n51#3,8:409\n*S KotlinDebug\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$timeoutInternal$1\n*L\n392#1:408\n392#1:417\n392#1:409,8\n*E\n"})
final class FlowKt__DelayKt$timeoutInternal$1<T> extends SuspendLambda implements Function3<l0, f<? super T>, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    long f92919b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f92920c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private /* synthetic */ Object f92921d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    /* synthetic */ Object f92922e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final /* synthetic */ long f92923f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final /* synthetic */ e<T> f92924g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    FlowKt__DelayKt$timeoutInternal$1(long j10, e<? extends T> eVar, Continuation<? super FlowKt__DelayKt$timeoutInternal$1> continuation) {
        super(3, continuation);
        this.f92923f = j10;
        this.f92924g = eVar;
    }

    @Override // kotlin.jvm.functions.Function3
    @Nullable
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final Object invoke(@NotNull l0 l0Var, @NotNull f<? super T> fVar, @Nullable Continuation<? super Unit> continuation) {
        FlowKt__DelayKt$timeoutInternal$1 flowKt__DelayKt$timeoutInternal$1 = new FlowKt__DelayKt$timeoutInternal$1(this.f92923f, this.f92924g, continuation);
        flowKt__DelayKt$timeoutInternal$1.f92921d = l0Var;
        flowKt__DelayKt$timeoutInternal$1.f92922e = fVar;
        return flowKt__DelayKt$timeoutInternal$1.invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:13:0x007c A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:14:0x007d  */
    /* JADX WARN: Code duplicated, block: B:17:0x008c  */
    /* JADX WARN: Code duplicated, block: B:19:0x008f  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x007d -> B:15:0x0084). Please report as a decompilation issue!!! */
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
            int r1 = r11.f92920c
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L27
            if (r1 != r2) goto L1f
            long r4 = r11.f92919b
            java.lang.Object r1 = r11.f92922e
            kotlinx.coroutines.channels.ReceiveChannel r1 = (kotlinx.coroutines.channels.ReceiveChannel) r1
            java.lang.Object r6 = r11.f92921d
            kotlinx.coroutines.flow.f r6 = (kotlinx.coroutines.flow.f) r6
            kotlin.ResultKt.throwOnFailure(r12)
            r7 = r6
            r5 = r4
            r4 = r1
            r1 = r0
            r0 = r11
            goto L84
        L1f:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r0)
            throw r12
        L27:
            kotlin.ResultKt.throwOnFailure(r12)
            java.lang.Object r12 = r11.f92921d
            kotlinx.coroutines.l0 r12 = (kotlinx.coroutines.l0) r12
            java.lang.Object r1 = r11.f92922e
            kotlinx.coroutines.flow.f r1 = (kotlinx.coroutines.flow.f) r1
            long r4 = r11.f92923f
            kotlin.time.Duration$Companion r6 = kotlin.time.Duration.INSTANCE
            long r6 = r6.m1479getZEROUwyO8pc()
            int r4 = kotlin.time.Duration.m1387compareToLRDsOJo(r4, r6)
            if (r4 <= 0) goto L95
            kotlinx.coroutines.flow.e<T> r4 = r11.f92924g
            r5 = 0
            r6 = 2
            kotlinx.coroutines.flow.e r4 = kotlinx.coroutines.flow.g.q(r4, r5, r3, r6, r3)
            kotlinx.coroutines.channels.ReceiveChannel r12 = kotlinx.coroutines.flow.g.n1(r4, r12)
            long r4 = r11.f92923f
            r6 = r1
            r1 = r12
            r12 = r11
        L51:
            kotlinx.coroutines.selects.SelectImplementation r7 = new kotlinx.coroutines.selects.SelectImplementation
            kotlin.coroutines.CoroutineContext r8 = r12.get$context()
            r7.<init>(r8)
            kotlinx.coroutines.selects.e r8 = r1.v()
            kotlinx.coroutines.flow.FlowKt__DelayKt$timeoutInternal$1$1$1 r9 = new kotlinx.coroutines.flow.FlowKt__DelayKt$timeoutInternal$1$1$1
            r9.<init>(r6, r3)
            r7.j(r8, r9)
            kotlinx.coroutines.flow.FlowKt__DelayKt$timeoutInternal$1$1$2 r8 = new kotlinx.coroutines.flow.FlowKt__DelayKt$timeoutInternal$1$1$2
            r8.<init>(r4, r3)
            kotlinx.coroutines.selects.a.b(r7, r4, r8)
            r12.f92921d = r6
            r12.f92922e = r1
            r12.f92919b = r4
            r12.f92920c = r2
            java.lang.Object r7 = r7.w(r12)
            if (r7 != r0) goto L7d
            return r0
        L7d:
            r10 = r0
            r0 = r12
            r12 = r7
            r7 = r6
            r5 = r4
            r4 = r1
            r1 = r10
        L84:
            java.lang.Boolean r12 = (java.lang.Boolean) r12
            boolean r12 = r12.booleanValue()
            if (r12 != 0) goto L8f
            kotlin.Unit r12 = kotlin.Unit.INSTANCE
            return r12
        L8f:
            r12 = r0
            r0 = r1
            r1 = r4
            r4 = r5
            r6 = r7
            goto L51
        L95:
            kotlinx.coroutines.TimeoutCancellationException r12 = new kotlinx.coroutines.TimeoutCancellationException
            java.lang.String r0 = "Timed out immediately"
            r12.<init>(r0)
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__DelayKt$timeoutInternal$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
