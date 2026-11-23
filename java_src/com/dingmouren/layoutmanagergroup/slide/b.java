package com.dingmouren.layoutmanagergroup.slide;

import android.graphics.Canvas;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class b<T> extends ItemTouchHelper.Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RecyclerView.Adapter f26163a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List<T> f26164b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private c<T> f26165c;

    /* JADX WARN: Multi-variable type inference failed */
    public b(@NonNull RecyclerView.Adapter adapter, @NonNull List<T> list) {
        this.f26163a = (RecyclerView.Adapter) a(adapter);
        this.f26164b = (List) a(list);
    }

    private <T> T a(T t10) {
        t10.getClass();
        return t10;
    }

    private float b(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
        return recyclerView.getWidth() * getSwipeThreshold(viewHolder);
    }

    public void c(c<T> cVar) {
        this.f26165c = cVar;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public void clearView(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
        super.clearView(recyclerView, viewHolder);
        viewHolder.itemView.setRotation(0.0f);
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public int getMovementFlags(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
        return ItemTouchHelper.Callback.makeMovementFlags(0, recyclerView.getLayoutManager() instanceof SlideLayoutManager ? 12 : 0);
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public boolean isItemViewSwipeEnabled() {
        return false;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public void onChildDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, float f10, float f11, int i10, boolean z10) {
        super.onChildDraw(canvas, recyclerView, viewHolder, f10, f11, i10, z10);
        View view = viewHolder.itemView;
        if (i10 == 1) {
            float fB = f10 / b(recyclerView, viewHolder);
            if (fB > 1.0f) {
                fB = 1.0f;
            } else if (fB < -1.0f) {
                fB = -1.0f;
            }
            view.setRotation(15.0f * fB);
            int childCount = recyclerView.getChildCount();
            if (childCount > 3) {
                for (int i11 = 1; i11 < childCount - 1; i11++) {
                    View childAt = recyclerView.getChildAt(i11);
                    float f12 = (childCount - i11) - 1;
                    float f13 = 1.0f - (f12 * 0.1f);
                    childAt.setScaleX((Math.abs(fB) * 0.1f) + f13);
                    childAt.setScaleY(f13 + (Math.abs(fB) * 0.1f));
                    childAt.setTranslationY(((f12 - Math.abs(fB)) * view.getMeasuredHeight()) / 14.0f);
                }
            } else {
                for (int i12 = 0; i12 < childCount - 1; i12++) {
                    View childAt2 = recyclerView.getChildAt(i12);
                    float f14 = (childCount - i12) - 1;
                    float f15 = 1.0f - (f14 * 0.1f);
                    childAt2.setScaleX((Math.abs(fB) * 0.1f) + f15);
                    childAt2.setScaleY(f15 + (Math.abs(fB) * 0.1f));
                    childAt2.setTranslationY(((f14 - Math.abs(fB)) * view.getMeasuredHeight()) / 14.0f);
                }
            }
            c<T> cVar = this.f26165c;
            if (cVar != null) {
                if (fB != 0.0f) {
                    cVar.a(viewHolder, fB, fB < 0.0f ? 4 : 8);
                } else {
                    cVar.a(viewHolder, fB, 1);
                }
            }
        }
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public boolean onMove(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
        return false;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public void onSwiped(RecyclerView.ViewHolder viewHolder, int i10) {
        c<T> cVar;
        viewHolder.itemView.setOnTouchListener(null);
        T tRemove = this.f26164b.remove(viewHolder.getLayoutPosition());
        this.f26163a.notifyDataSetChanged();
        c<T> cVar2 = this.f26165c;
        if (cVar2 != null) {
            cVar2.c(viewHolder, tRemove, i10 == 4 ? 1 : 4);
        }
        if (this.f26163a.getItemCount() != 0 || (cVar = this.f26165c) == null) {
            return;
        }
        cVar.b();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public b(@NonNull RecyclerView.Adapter adapter, @NonNull List<T> list, c<T> cVar) {
        this.f26163a = (RecyclerView.Adapter) a(adapter);
        this.f26164b = (List) a(list);
        this.f26165c = cVar;
    }
}
