package com.chad.library.adapter.base.dragswipe;

import android.graphics.Canvas;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import p2.c;

/* JADX INFO: loaded from: classes9.dex */
public class b extends ItemTouchHelper.Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    private RecyclerView f23620a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    private final ItemTouchHelper f23621b = new ItemTouchHelper(this);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f23622c = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f23623d = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f23624e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f23625f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private p2.b f23626g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private c f23627h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    private p2.a f23628i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f23629j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f23630k;

    private final int g(RecyclerView.ViewHolder viewHolder) {
        if (viewHolder != null) {
            return viewHolder.getBindingAdapterPosition();
        }
        return -1;
    }

    private final boolean h(RecyclerView.ViewHolder viewHolder) {
        return viewHolder instanceof v2.b;
    }

    @NotNull
    public b a(@NotNull RecyclerView recyclerView) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        if (Intrinsics.areEqual(this.f23620a, recyclerView)) {
            return this;
        }
        this.f23620a = recyclerView;
        this.f23621b.attachToRecyclerView(recyclerView);
        return this;
    }

    @NotNull
    public final p2.a b() {
        p2.a aVar = this.f23628i;
        if (aVar == null) {
            throw new IllegalStateException("Please set _adapterImpl".toString());
        }
        Intrinsics.checkNotNull(aVar);
        return aVar;
    }

    public final int c() {
        return this.f23624e;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public void clearView(@NotNull RecyclerView recyclerView, @NotNull RecyclerView.ViewHolder viewHolder) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        super.clearView(recyclerView, viewHolder);
        int bindingAdapterPosition = viewHolder.getBindingAdapterPosition();
        if (this.f23630k) {
            c cVar = this.f23627h;
            if (cVar != null) {
                cVar.d(viewHolder, bindingAdapterPosition);
            }
            this.f23630k = false;
        }
        if (this.f23629j) {
            p2.b bVar = this.f23626g;
            if (bVar != null) {
                bVar.a(viewHolder, bindingAdapterPosition);
            }
            this.f23629j = false;
        }
    }

    @NotNull
    public final ItemTouchHelper d() {
        return this.f23621b;
    }

    @Nullable
    protected final RecyclerView e() {
        return this.f23620a;
    }

    public final int f() {
        return this.f23625f;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public int getMovementFlags(@NotNull RecyclerView recyclerView, @NotNull RecyclerView.ViewHolder viewHolder) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        return h(viewHolder) ? ItemTouchHelper.Callback.makeMovementFlags(0, 0) : ItemTouchHelper.Callback.makeMovementFlags(this.f23624e, this.f23625f);
    }

    @NotNull
    public final b i(@NotNull p2.a callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.f23628i = callback;
        return this;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public boolean isItemViewSwipeEnabled() {
        return this.f23623d;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public boolean isLongPressDragEnabled() {
        return this.f23622c;
    }

    @NotNull
    public final b j(int i10) {
        this.f23624e = i10;
        return this;
    }

    @NotNull
    public final b k(@Nullable p2.b bVar) {
        this.f23626g = bVar;
        return this;
    }

    @NotNull
    public final b l(@Nullable c cVar) {
        this.f23627h = cVar;
        return this;
    }

    @NotNull
    public final b m(boolean z10) {
        this.f23623d = z10;
        return this;
    }

    @NotNull
    public final b n(boolean z10) {
        this.f23622c = z10;
        return this;
    }

    protected final void o(@Nullable RecyclerView recyclerView) {
        this.f23620a = recyclerView;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public void onChildDraw(@NotNull Canvas c10, @NotNull RecyclerView recyclerView, @NotNull RecyclerView.ViewHolder viewHolder, float f10, float f11, int i10, boolean z10) {
        c cVar;
        Intrinsics.checkNotNullParameter(c10, "c");
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        super.onChildDraw(c10, recyclerView, viewHolder, f10, f11, i10, z10);
        if (i10 != 1 || (cVar = this.f23627h) == null) {
            return;
        }
        cVar.a(c10, viewHolder, f10, f11, z10);
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public boolean onMove(@NotNull RecyclerView recyclerView, @NotNull RecyclerView.ViewHolder viewHolder, @NotNull RecyclerView.ViewHolder target) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        Intrinsics.checkNotNullParameter(target, "target");
        return viewHolder.getItemViewType() == target.getItemViewType();
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public void onMoved(@NotNull RecyclerView recyclerView, @NotNull RecyclerView.ViewHolder viewHolder, int i10, @NotNull RecyclerView.ViewHolder target, int i11, int i12, int i13) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        Intrinsics.checkNotNullParameter(target, "target");
        super.onMoved(recyclerView, viewHolder, i10, target, i11, i12, i13);
        int bindingAdapterPosition = viewHolder.getBindingAdapterPosition();
        int bindingAdapterPosition2 = target.getBindingAdapterPosition();
        if (bindingAdapterPosition == -1 || bindingAdapterPosition2 == -1) {
            return;
        }
        p2.a aVar = this.f23628i;
        if (aVar != null) {
            aVar.b(bindingAdapterPosition, bindingAdapterPosition2);
        }
        p2.b bVar = this.f23626g;
        if (bVar != null) {
            bVar.b(viewHolder, bindingAdapterPosition, target, bindingAdapterPosition2);
        }
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public void onSelectedChanged(@Nullable RecyclerView.ViewHolder viewHolder, int i10) {
        if (i10 == 1) {
            this.f23630k = true;
            c cVar = this.f23627h;
            if (cVar != null) {
                cVar.b(viewHolder, g(viewHolder));
            }
        } else if (i10 == 2) {
            this.f23629j = true;
            p2.b bVar = this.f23626g;
            if (bVar != null) {
                bVar.c(viewHolder, g(viewHolder));
            }
        }
        super.onSelectedChanged(viewHolder, i10);
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public void onSwiped(@NotNull RecyclerView.ViewHolder viewHolder, int i10) {
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        int bindingAdapterPosition = viewHolder.getBindingAdapterPosition();
        if (bindingAdapterPosition == -1) {
            return;
        }
        p2.a aVar = this.f23628i;
        if (aVar != null) {
            aVar.a(bindingAdapterPosition);
        }
        c cVar = this.f23627h;
        if (cVar != null) {
            cVar.c(viewHolder, i10, bindingAdapterPosition);
        }
    }

    @NotNull
    public final b p(int i10) {
        this.f23625f = i10;
        return this;
    }

    @NotNull
    public b q(int i10) {
        RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition;
        RecyclerView recyclerView = this.f23620a;
        if (recyclerView != null && (viewHolderFindViewHolderForAdapterPosition = recyclerView.findViewHolderForAdapterPosition(i10)) != null) {
            this.f23621b.startDrag(viewHolderFindViewHolderForAdapterPosition);
        }
        return this;
    }

    @NotNull
    public b r(@NotNull RecyclerView.ViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        this.f23621b.startDrag(holder);
        return this;
    }

    @NotNull
    public b s(int i10) {
        RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition;
        RecyclerView recyclerView = this.f23620a;
        if (recyclerView != null && (viewHolderFindViewHolderForAdapterPosition = recyclerView.findViewHolderForAdapterPosition(i10)) != null) {
            this.f23621b.startSwipe(viewHolderFindViewHolderForAdapterPosition);
        }
        return this;
    }

    @NotNull
    public b t(@NotNull RecyclerView.ViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        this.f23621b.startSwipe(holder);
        return this;
    }
}
