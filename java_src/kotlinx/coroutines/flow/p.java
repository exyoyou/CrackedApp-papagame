package kotlinx.coroutines.flow;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nSharedFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SharedFlow.kt\nkotlinx/coroutines/flow/SharedFlowSlot\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,741:1\n1#2:742\n*E\n"})
public final class p extends kotlinx.coroutines.flow.internal.c<SharedFlowImpl<?>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @JvmField
    public long f93408a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @JvmField
    @Nullable
    public Continuation<? super Unit> f93409b;

    @Override // kotlinx.coroutines.flow.internal.c
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public boolean a(@NotNull SharedFlowImpl<?> sharedFlowImpl) {
        if (this.f93408a >= 0) {
            return false;
        }
        this.f93408a = sharedFlowImpl.c0();
        return true;
    }

    @Override // kotlinx.coroutines.flow.internal.c
    @NotNull
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public Continuation<Unit>[] b(@NotNull SharedFlowImpl<?> sharedFlowImpl) {
        long j10 = this.f93408a;
        this.f93408a = -1L;
        this.f93409b = null;
        return sharedFlowImpl.b0(j10);
    }
}
