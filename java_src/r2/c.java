package r2;

import android.view.ViewGroup;
import androidx.annotation.CallSuper;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.ViewHolder;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public abstract class c<VH extends RecyclerView.ViewHolder> extends RecyclerView.Adapter<VH> implements q2.a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NotNull
    private b f96748e = b.c.f96744b;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private RecyclerView f96749f;

    public boolean a(@NotNull b loadState) {
        Intrinsics.checkNotNullParameter(loadState, "loadState");
        return (loadState instanceof b.C1240b) || (loadState instanceof b.a);
    }

    @NotNull
    public final b b() {
        return this.f96748e;
    }

    public int c(@NotNull b loadState) {
        Intrinsics.checkNotNullParameter(loadState, "loadState");
        return 0;
    }

    public abstract void d(@NotNull VH vh, @NotNull b bVar);

    @NotNull
    public abstract VH e(@NotNull ViewGroup viewGroup, @NotNull b bVar);

    public final void f(@NotNull b loadState) {
        Intrinsics.checkNotNullParameter(loadState, "loadState");
        if (Intrinsics.areEqual(this.f96748e, loadState)) {
            return;
        }
        boolean zA = a(this.f96748e);
        boolean zA2 = a(loadState);
        if (zA && !zA2) {
            notifyItemRemoved(0);
        } else if (zA2 && !zA) {
            notifyItemInserted(0);
        } else if (zA && zA2) {
            notifyItemChanged(0);
        }
        this.f96748e = loadState;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return a(this.f96748e) ? 1 : 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemViewType(int i10) {
        return c(this.f96748e);
    }

    @Nullable
    public final RecyclerView getRecyclerView() {
        return this.f96749f;
    }

    public final boolean isLoading() {
        return Intrinsics.areEqual(this.f96748e, b.C1240b.f96743b);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @CallSuper
    public void onAttachedToRecyclerView(@NotNull RecyclerView recyclerView) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        this.f96749f = recyclerView;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(@NotNull VH holder, int i10) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        d(holder, this.f96748e);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NotNull
    public final VH onCreateViewHolder(@NotNull ViewGroup parent, int i10) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        return (VH) e(parent, this.f96748e);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @CallSuper
    public void onDetachedFromRecyclerView(@NotNull RecyclerView recyclerView) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        this.f96749f = null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(@NotNull VH holder, int i10, @NotNull List<Object> payloads) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        super.onBindViewHolder(holder, i10, payloads);
    }
}
