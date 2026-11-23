package kotlinx.coroutines.flow;

import com.bytedance.sdk.openadsdk.TTAdConstant;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.flow.SubscribedFlowCollector", f = "Share.kt", i = {0, 0}, l = {TTAdConstant.VIDEO_COVER_URL_CODE, 419}, m = "onSubscription", n = {"this", "safeCollector"}, s = {"L$0", "L$1"})
final class SubscribedFlowCollector$onSubscription$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Object f93240b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Object f93241c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    /* synthetic */ Object f93242d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final /* synthetic */ SubscribedFlowCollector<T> f93243e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f93244f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SubscribedFlowCollector$onSubscription$1(SubscribedFlowCollector<T> subscribedFlowCollector, Continuation<? super SubscribedFlowCollector$onSubscription$1> continuation) {
        super(continuation);
        this.f93243e = subscribedFlowCollector;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type kotlin.coroutines.Continuation to kotlinx.coroutines.flow.SubscribedFlowCollector$onSubscription$1 for r1v1 'this'  kotlin.coroutines.Continuation
        	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
        	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
        	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
        	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
        	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r2) {
        /*
            r1 = this;
            r1.f93242d = r2
            int r2 = r1.f93244f
            r0 = -2147483648(0xffffffff80000000, float:-0.0)
            r2 = r2 | r0
            r1.f93244f = r2
            kotlinx.coroutines.flow.SubscribedFlowCollector<T> r2 = r1.f93243e
            java.lang.Object r2 = r2.a(r1)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.SubscribedFlowCollector$onSubscription$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
