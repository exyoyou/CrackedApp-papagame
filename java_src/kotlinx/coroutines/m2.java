package kotlinx.coroutines;

import kotlin.Unit;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nExecutors.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Executors.kt\nkotlinx/coroutines/ResumeUndispatchedRunnable\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,203:1\n1#2:204\n*E\n"})
final class m2 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    private final CoroutineDispatcher f93593b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NotNull
    private final n<Unit> f93594c;

    /* JADX WARN: Multi-variable type inference failed */
    public m2(@NotNull CoroutineDispatcher coroutineDispatcher, @NotNull n<? super Unit> nVar) {
        this.f93593b = coroutineDispatcher;
        this.f93594c = nVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f93594c.N(this.f93593b, Unit.INSTANCE);
    }
}
