package t2;

import androidx.annotation.CallSuper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.ViewHolder;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__IndentKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public abstract class g<VH extends RecyclerView.ViewHolder> extends r2.c<VH> {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f97041g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private a f97042h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f97043i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f97044j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f97045k;

    public interface a {

        /* JADX INFO: renamed from: t2.g$a$a, reason: collision with other inner class name */
        public static final class C1249a {
            public static boolean a(@NotNull a aVar) {
                return true;
            }
        }

        void a();

        boolean b();

        void c();
    }

    public g() {
        this(false, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(g gVar) {
        if (gVar.t()) {
            gVar.f97045k = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(RecyclerView.LayoutManager layoutManager, g gVar, RecyclerView recyclerView) {
        StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) layoutManager;
        int[] iArr = new int[staggeredGridLayoutManager.getSpanCount()];
        staggeredGridLayoutManager.findLastCompletelyVisibleItemPositions(iArr);
        int iP = gVar.p(iArr) + 1;
        RecyclerView.Adapter adapter = recyclerView.getAdapter();
        boolean z10 = false;
        if (adapter != null && iP == adapter.getItemCount()) {
            z10 = true;
        }
        if (z10) {
            return;
        }
        gVar.f97045k = true;
    }

    private final int p(int[] iArr) {
        int i10 = -1;
        if (iArr != null) {
            if (!(iArr.length == 0)) {
                for (int i11 : iArr) {
                    if (i11 > i10) {
                        i10 = i11;
                    }
                }
            }
        }
        return i10;
    }

    private final boolean t() {
        RecyclerView.Adapter adapter;
        RecyclerView recyclerView = getRecyclerView();
        if (recyclerView == null || (adapter = recyclerView.getAdapter()) == null) {
            return true;
        }
        RecyclerView recyclerView2 = getRecyclerView();
        RecyclerView.LayoutManager layoutManager = recyclerView2 != null ? recyclerView2.getLayoutManager() : null;
        LinearLayoutManager linearLayoutManager = layoutManager instanceof LinearLayoutManager ? (LinearLayoutManager) layoutManager : null;
        return (linearLayoutManager != null && linearLayoutManager.findLastCompletelyVisibleItemPosition() + 1 == adapter.getItemCount() && linearLayoutManager.findFirstCompletelyVisibleItemPosition() == 0) ? false : true;
    }

    private final void v() {
        RecyclerView recyclerView;
        if (this.f97043i) {
            a aVar = this.f97042h;
            boolean z10 = false;
            if (aVar != null && !aVar.b()) {
                z10 = true;
            }
            if (z10 || !this.f97045k || !(b() instanceof r2.b.d) || b().a() || (recyclerView = getRecyclerView()) == null) {
                return;
            }
            if (recyclerView.isComputingLayout()) {
                recyclerView.post(new Runnable() { // from class: t2.f
                    @Override // java.lang.Runnable
                    public final void run() {
                        g.w(this.f97040b);
                    }
                });
            } else {
                r();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w(g gVar) {
        gVar.r();
    }

    @Override // r2.c
    public boolean a(@NotNull r2.b loadState) {
        boolean z10;
        Intrinsics.checkNotNullParameter(loadState, "loadState");
        return super.a(loadState) || (((z10 = loadState instanceof r2.b.d)) && !loadState.a()) || (this.f97041g && z10 && loadState.a());
    }

    public final void j() {
        final RecyclerView.LayoutManager layoutManager;
        this.f97045k = false;
        final RecyclerView recyclerView = getRecyclerView();
        if (recyclerView == null || (layoutManager = recyclerView.getLayoutManager()) == null) {
            return;
        }
        if (layoutManager instanceof LinearLayoutManager) {
            recyclerView.post(new Runnable() { // from class: t2.d
                @Override // java.lang.Runnable
                public final void run() {
                    g.k(this.f97036b);
                }
            });
        } else if (layoutManager instanceof StaggeredGridLayoutManager) {
            recyclerView.post(new Runnable() { // from class: t2.e
                @Override // java.lang.Runnable
                public final void run() {
                    g.l(layoutManager, this, recyclerView);
                }
            });
        }
    }

    public final void m(int i10, int i11) {
        if (i11 <= i10 - 1 && (i10 - i11) - 1 <= this.f97044j) {
            v();
        }
    }

    @Nullable
    public final a n() {
        return this.f97042h;
    }

    public final int o() {
        return this.f97044j;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @CallSuper
    public void onViewAttachedToWindow(@NotNull VH holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        v();
    }

    public final void q() {
        f(r2.b.C1240b.f96743b);
        a aVar = this.f97042h;
        if (aVar != null) {
            aVar.c();
        }
    }

    public final void r() {
        f(r2.b.C1240b.f96743b);
        a aVar = this.f97042h;
        if (aVar != null) {
            aVar.a();
        }
    }

    public final boolean s() {
        return this.f97043i;
    }

    @NotNull
    public String toString() {
        return StringsKt__IndentKt.trimIndent("\n            TrailingLoadStateAdapter ->\n            [isLoadEndDisplay: " + this.f97041g + "],\n            [isAutoLoadMore: " + this.f97043i + "],\n            [preloadSize: " + this.f97044j + "],\n            [loadState: " + b() + "]\n        ");
    }

    public final boolean u() {
        return this.f97041g;
    }

    public final void x(boolean z10) {
        this.f97043i = z10;
    }

    @NotNull
    public final g<VH> y(@Nullable a aVar) {
        this.f97042h = aVar;
        return this;
    }

    public final void z(int i10) {
        this.f97044j = i10;
    }

    public /* synthetic */ g(boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? true : z10);
    }

    public g(boolean z10) {
        this.f97041g = z10;
        this.f97043i = true;
        this.f97045k = true;
    }
}
