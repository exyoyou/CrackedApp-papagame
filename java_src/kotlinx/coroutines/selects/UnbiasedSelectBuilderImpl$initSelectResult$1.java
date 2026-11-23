package kotlinx.coroutines.selects;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.l0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@"}, d2 = {"R", "Lkotlinx/coroutines/l0;", "", "<anonymous>"}, k = 3, mv = {1, 9, 0})
@DebugMetadata(c = "kotlinx.coroutines.selects.UnbiasedSelectBuilderImpl$initSelectResult$1", f = "SelectOld.kt", i = {}, l = {67}, m = "invokeSuspend", n = {}, s = {})
final class UnbiasedSelectBuilderImpl$initSelectResult$1 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f93757b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ UnbiasedSelectBuilderImpl<R> f93758c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UnbiasedSelectBuilderImpl$initSelectResult$1(UnbiasedSelectBuilderImpl<R> unbiasedSelectBuilderImpl, Continuation<? super UnbiasedSelectBuilderImpl$initSelectResult$1> continuation) {
        super(2, continuation);
        this.f93758c = unbiasedSelectBuilderImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new UnbiasedSelectBuilderImpl$initSelectResult$1(this.f93758c, continuation);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type kotlin.coroutines.Continuation to kotlinx.coroutines.selects.UnbiasedSelectBuilderImpl$initSelectResult$1 for r3v1 'this'  kotlin.coroutines.Continuation
        	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
        	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
        	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
        	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
        	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r4) {
        /*
            r3 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r3.f93757b
            r2 = 1
            if (r1 == 0) goto L19
            if (r1 != r2) goto L11
            kotlin.ResultKt.throwOnFailure(r4)     // Catch: java.lang.Throwable -> Lf
            goto L27
        Lf:
            r4 = move-exception
            goto L33
        L11:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r0)
            throw r4
        L19:
            kotlin.ResultKt.throwOnFailure(r4)
            kotlinx.coroutines.selects.UnbiasedSelectBuilderImpl<R> r4 = r3.f93758c     // Catch: java.lang.Throwable -> Lf
            r3.f93757b = r2     // Catch: java.lang.Throwable -> Lf
            java.lang.Object r4 = r4.w(r3)     // Catch: java.lang.Throwable -> Lf
            if (r4 != r0) goto L27
            return r0
        L27:
            kotlinx.coroutines.selects.UnbiasedSelectBuilderImpl<R> r0 = r3.f93758c
            kotlinx.coroutines.o r0 = kotlinx.coroutines.selects.UnbiasedSelectBuilderImpl.R(r0)
            kotlinx.coroutines.selects.l.a(r0, r4)
            kotlin.Unit r4 = kotlin.Unit.INSTANCE
            return r4
        L33:
            kotlinx.coroutines.selects.UnbiasedSelectBuilderImpl<R> r0 = r3.f93758c
            kotlinx.coroutines.o r0 = kotlinx.coroutines.selects.UnbiasedSelectBuilderImpl.R(r0)
            kotlinx.coroutines.selects.l.b(r0, r4)
            kotlin.Unit r4 = kotlin.Unit.INSTANCE
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.selects.UnbiasedSelectBuilderImpl$initSelectResult$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull l0 l0Var, @Nullable Continuation<? super Unit> continuation) {
        return ((UnbiasedSelectBuilderImpl$initSelectResult$1) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
