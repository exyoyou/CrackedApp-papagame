package s2;

import androidx.annotation.CallSuper;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.ViewHolder;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__IndentKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public abstract class c<VH extends RecyclerView.ViewHolder> extends r2.c<VH> {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private a f96979g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f96980h = true;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f96981i;

    public interface a {

        /* JADX INFO: renamed from: s2.c$a$a, reason: collision with other inner class name */
        public static final class C1247a {
            public static boolean a(@NotNull a aVar) {
                return true;
            }
        }

        void a();

        boolean b();
    }

    private final void m() {
        RecyclerView recyclerView;
        if (this.f96980h) {
            a aVar = this.f96979g;
            boolean z10 = false;
            if (aVar != null && !aVar.b()) {
                z10 = true;
            }
            if (z10 || !(b() instanceof r2.b.d) || b().a() || (recyclerView = getRecyclerView()) == null) {
                return;
            }
            if (recyclerView.isComputingLayout()) {
                recyclerView.post(new Runnable() { // from class: s2.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        c.n(this.f96978b);
                    }
                });
            } else {
                k();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(c cVar) {
        cVar.k();
    }

    @Override // r2.c
    public boolean a(@NotNull r2.b loadState) {
        Intrinsics.checkNotNullParameter(loadState, "loadState");
        return loadState instanceof r2.b.C1240b;
    }

    public final void h(int i10) {
        if (i10 >= 0 && i10 <= this.f96981i) {
            m();
        }
    }

    @Nullable
    public final a i() {
        return this.f96979g;
    }

    public final int j() {
        return this.f96981i;
    }

    public final void k() {
        f(r2.b.C1240b.f96743b);
        a aVar = this.f96979g;
        if (aVar != null) {
            aVar.a();
        }
    }

    public final boolean l() {
        return this.f96980h;
    }

    public final void o(boolean z10) {
        this.f96980h = z10;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @CallSuper
    public void onViewAttachedToWindow(@NotNull VH holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        m();
    }

    @NotNull
    public final c<VH> p(@Nullable a aVar) {
        this.f96979g = aVar;
        return this;
    }

    public final void q(int i10) {
        this.f96981i = i10;
    }

    @NotNull
    public String toString() {
        return StringsKt__IndentKt.trimIndent("\n            LeadingLoadStateAdapter ->\n            [isLoadEnable: " + this.f96980h + "],\n            [preloadSize: " + this.f96981i + "],\n            [loadState: " + b() + "]\n        ");
    }
}
