package kotlinx.coroutines.sync;

import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.internal.n0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nSemaphore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Semaphore.kt\nkotlinx/coroutines/sync/SemaphoreSegment\n*L\n1#1,392:1\n366#1,2:393\n*S KotlinDebug\n*F\n+ 1 Semaphore.kt\nkotlinx/coroutines/sync/SemaphoreSegment\n*L\n379#1:393,2\n*E\n"})
final class c extends n0<c> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final /* synthetic */ AtomicReferenceArray f93833f;

    public c(long j10, @Nullable c cVar, int i10) {
        super(j10, cVar, i10);
        this.f93833f = new AtomicReferenceArray(SemaphoreKt.f93828f);
    }

    public final boolean D(int i10, @Nullable Object obj, @Nullable Object obj2) {
        return io.netty.util.a.a(F(), i10, obj, obj2);
    }

    @Nullable
    public final Object E(int i10) {
        return F().get(i10);
    }

    public final /* synthetic */ AtomicReferenceArray F() {
        return this.f93833f;
    }

    @Nullable
    public final Object G(int i10, @Nullable Object obj) {
        return F().getAndSet(i10, obj);
    }

    public final void H(int i10, @Nullable Object obj) {
        F().set(i10, obj);
    }

    @NotNull
    public String toString() {
        return "SemaphoreSegment[id=" + this.f93516d + ", hashCode=" + hashCode() + ']';
    }

    @Override // kotlinx.coroutines.internal.n0
    public int y() {
        return SemaphoreKt.f93828f;
    }

    @Override // kotlinx.coroutines.internal.n0
    public void z(int i10, @Nullable Throwable th, @NotNull CoroutineContext coroutineContext) {
        F().set(i10, SemaphoreKt.f93827e);
        A();
    }
}
