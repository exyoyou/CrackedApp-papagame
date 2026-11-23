package kotlinx.coroutines;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public class b0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f92344b = AtomicIntegerFieldUpdater.newUpdater(b0.class, "_handled$volatile");
    private volatile /* synthetic */ int _handled$volatile;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @JvmField
    @NotNull
    public final Throwable f92345a;

    public b0(@NotNull Throwable th, boolean z10) {
        this.f92345a = th;
        this._handled$volatile = z10 ? 1 : 0;
    }

    private final /* synthetic */ int b() {
        return this._handled$volatile;
    }

    private final /* synthetic */ void e(int i10) {
        this._handled$volatile = i10;
    }

    public final boolean a() {
        return f92344b.get(this) != 0;
    }

    public final boolean d() {
        return f92344b.compareAndSet(this, 0, 1);
    }

    @NotNull
    public String toString() {
        return o0.a(this) + '[' + this.f92345a + ']';
    }

    public /* synthetic */ b0(Throwable th, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(th, (i10 & 2) != 0 ? false : z10);
    }
}
