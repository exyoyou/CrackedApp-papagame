package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/channels/q;", "", "<anonymous>"}, k = 3, mv = {1, 9, 0})
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$fixedPeriodTicker$1", f = "Delay.kt", i = {0, 1, 2}, l = {307, 309, 310}, m = "invokeSuspend", n = {"$this$produce", "$this$produce", "$this$produce"}, s = {"L$0", "L$0", "L$0"})
final class FlowKt__DelayKt$fixedPeriodTicker$1 extends SuspendLambda implements Function2<kotlinx.coroutines.channels.q<? super Unit>, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f92895b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private /* synthetic */ Object f92896c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ long f92897d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FlowKt__DelayKt$fixedPeriodTicker$1(long j10, Continuation<? super FlowKt__DelayKt$fixedPeriodTicker$1> continuation) {
        super(2, continuation);
        this.f92897d = j10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        FlowKt__DelayKt$fixedPeriodTicker$1 flowKt__DelayKt$fixedPeriodTicker$1 = new FlowKt__DelayKt$fixedPeriodTicker$1(this.f92897d, continuation);
        flowKt__DelayKt$fixedPeriodTicker$1.f92896c = obj;
        return flowKt__DelayKt$fixedPeriodTicker$1;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0050 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:20:0x005d A[RETURN] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x005b -> B:15:0x0040). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:5:0x000d
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r8) {
        /*
            r7 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r7.f92895b
            r2 = 3
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L2a
            if (r1 == r4) goto L11
            if (r1 == r3) goto L21
            if (r1 != r2) goto L19
        L11:
            java.lang.Object r1 = r7.f92896c
            kotlinx.coroutines.channels.q r1 = (kotlinx.coroutines.channels.q) r1
            kotlin.ResultKt.throwOnFailure(r8)
            goto L3f
        L19:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L21:
            java.lang.Object r1 = r7.f92896c
            kotlinx.coroutines.channels.q r1 = (kotlinx.coroutines.channels.q) r1
            kotlin.ResultKt.throwOnFailure(r8)
            r8 = r7
            goto L51
        L2a:
            kotlin.ResultKt.throwOnFailure(r8)
            java.lang.Object r8 = r7.f92896c
            r1 = r8
            kotlinx.coroutines.channels.q r1 = (kotlinx.coroutines.channels.q) r1
            long r5 = r7.f92897d
            r7.f92896c = r1
            r7.f92895b = r4
            java.lang.Object r8 = kotlinx.coroutines.DelayKt.b(r5, r7)
            if (r8 != r0) goto L3f
            return r0
        L3f:
            r8 = r7
        L40:
            kotlinx.coroutines.channels.s r4 = r1.getChannel()
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            r8.f92896c = r1
            r8.f92895b = r3
            java.lang.Object r4 = r4.V(r5, r8)
            if (r4 != r0) goto L51
            return r0
        L51:
            long r4 = r8.f92897d
            r8.f92896c = r1
            r8.f92895b = r2
            java.lang.Object r4 = kotlinx.coroutines.DelayKt.b(r4, r8)
            if (r4 != r0) goto L40
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__DelayKt$fixedPeriodTicker$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull kotlinx.coroutines.channels.q<? super Unit> qVar, @Nullable Continuation<? super Unit> continuation) {
        return ((FlowKt__DelayKt$fixedPeriodTicker$1) create(qVar, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
