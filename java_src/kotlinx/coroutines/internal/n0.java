package kotlinx.coroutines.internal;

import androidx.core.internal.view.SupportMenu;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.i2;
import kotlinx.coroutines.internal.n0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nConcurrentLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/Segment\n+ 2 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListKt\n*L\n1#1,265:1\n248#2,4:266\n*S KotlinDebug\n*F\n+ 1 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/Segment\n*L\n221#1:266,4\n*E\n"})
public abstract class n0<S extends n0<S>> extends g<S> implements i2 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f93515e = AtomicIntegerFieldUpdater.newUpdater(n0.class, "cleanedAndPointers$volatile");
    private volatile /* synthetic */ int cleanedAndPointers$volatile;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @JvmField
    public final long f93516d;

    public n0(long j10, @Nullable S s10, int i10) {
        super(s10);
        this.f93516d = j10;
        this.cleanedAndPointers$volatile = i10 << 16;
    }

    private final /* synthetic */ void B(int i10) {
        this.cleanedAndPointers$volatile = i10;
    }

    private final /* synthetic */ int w() {
        return this.cleanedAndPointers$volatile;
    }

    public final void A() {
        if (f93515e.incrementAndGet(this) == y()) {
            q();
        }
    }

    public final boolean C() {
        int i10;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f93515e;
        do {
            i10 = atomicIntegerFieldUpdater.get(this);
            if (!(i10 != y() || n())) {
                return false;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i10, 65536 + i10));
        return true;
    }

    @Override // kotlinx.coroutines.internal.g
    public boolean m() {
        return f93515e.get(this) == y() && !n();
    }

    public final boolean v() {
        return f93515e.addAndGet(this, SupportMenu.CATEGORY_MASK) == y() && !n();
    }

    public abstract int y();

    public abstract void z(int i10, @Nullable Throwable th, @NotNull CoroutineContext coroutineContext);
}
