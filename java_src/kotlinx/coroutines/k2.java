package kotlinx.coroutines;

import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nJobSupport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/ResumeAwaitOnCompletion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1461:1\n1#2:1462\n*E\n"})
final class k2<T> extends a2 {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NotNull
    private final o<T> f93588f;

    /* JADX WARN: Multi-variable type inference failed */
    public k2(@NotNull o<? super T> oVar) {
        this.f93588f = oVar;
    }

    @Override // kotlinx.coroutines.s1
    public void a(@Nullable Throwable th) {
        Object objJ0 = H().J0();
        if (objJ0 instanceof b0) {
            o<T> oVar = this.f93588f;
            Result.Companion companion = Result.INSTANCE;
            oVar.resumeWith(Result.m50constructorimpl(ResultKt.createFailure(((b0) objJ0).f92345a)));
        } else {
            o<T> oVar2 = this.f93588f;
            Result.Companion companion2 = Result.INSTANCE;
            oVar2.resumeWith(Result.m50constructorimpl(b2.h(objJ0)));
        }
    }
}
