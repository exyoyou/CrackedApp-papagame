package kotlinx.coroutines.stream;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.stream.StreamFlow", f = "Stream.kt", i = {0, 0}, l = {22}, m = "collect", n = {"this", "collector"}, s = {"L$0", "L$1"})
final class StreamFlow$collect$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Object f93777b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Object f93778c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    Object f93779d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    /* synthetic */ Object f93780e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final /* synthetic */ StreamFlow<T> f93781f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f93782g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    StreamFlow$collect$1(StreamFlow<T> streamFlow, Continuation<? super StreamFlow$collect$1> continuation) {
        super(continuation);
        this.f93781f = streamFlow;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type kotlin.coroutines.Continuation to kotlinx.coroutines.stream.StreamFlow$collect$1 for r1v1 'this'  kotlin.coroutines.Continuation
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
            r1.f93780e = r2
            int r2 = r1.f93782g
            r0 = -2147483648(0xffffffff80000000, float:-0.0)
            r2 = r2 | r0
            r1.f93782g = r2
            kotlinx.coroutines.stream.StreamFlow<T> r2 = r1.f93781f
            r0 = 0
            java.lang.Object r2 = r2.a(r0, r1)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.stream.StreamFlow$collect$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
