package com.dingmouren.layoutmanagergroup.slide;

import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.core.view.MotionEventCompat;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes9.dex */
public class SlideLayoutManager extends RecyclerView.LayoutManager {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private RecyclerView f26150n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private ItemTouchHelper f26151o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private View.OnTouchListener f26152p = new a();

    class a implements View.OnTouchListener {
        a() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            RecyclerView.ViewHolder childViewHolder = SlideLayoutManager.this.f26150n.getChildViewHolder(view);
            if (MotionEventCompat.getActionMasked(motionEvent) != 0) {
                return false;
            }
            SlideLayoutManager.this.f26151o.startSwipe(childViewHolder);
            return false;
        }
    }

    public SlideLayoutManager(@NonNull RecyclerView recyclerView, @NonNull ItemTouchHelper itemTouchHelper) {
        this.f26150n = (RecyclerView) e(recyclerView);
        this.f26151o = (ItemTouchHelper) e(itemTouchHelper);
    }

    private <T> T e(T t10) {
        t10.getClass();
        return t10;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return new RecyclerView.LayoutParams(-2, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        detachAndScrapAttachedViews(recycler);
        int itemCount = getItemCount();
        if (itemCount <= 3) {
            for (int i10 = itemCount - 1; i10 >= 0; i10--) {
                View viewForPosition = recycler.getViewForPosition(i10);
                addView(viewForPosition);
                measureChildWithMargins(viewForPosition, 0, 0);
                int width = (getWidth() - getDecoratedMeasuredWidth(viewForPosition)) / 2;
                int height = (getHeight() - getDecoratedMeasuredHeight(viewForPosition)) / 5;
                layoutDecoratedWithMargins(viewForPosition, width, height, width + getDecoratedMeasuredWidth(viewForPosition), height + getDecoratedMeasuredHeight(viewForPosition));
                if (i10 > 0) {
                    float f10 = 1.0f - (i10 * 0.1f);
                    viewForPosition.setScaleX(f10);
                    viewForPosition.setScaleY(f10);
                    viewForPosition.setTranslationY((viewForPosition.getMeasuredHeight() * i10) / 14);
                } else {
                    viewForPosition.setOnTouchListener(this.f26152p);
                }
            }
            return;
        }
        for (int i11 = 3; i11 >= 0; i11--) {
            View viewForPosition2 = recycler.getViewForPosition(i11);
            addView(viewForPosition2);
            measureChildWithMargins(viewForPosition2, 0, 0);
            int width2 = (getWidth() - getDecoratedMeasuredWidth(viewForPosition2)) / 2;
            int height2 = (getHeight() - getDecoratedMeasuredHeight(viewForPosition2)) / 5;
            layoutDecoratedWithMargins(viewForPosition2, width2, height2, width2 + getDecoratedMeasuredWidth(viewForPosition2), height2 + getDecoratedMeasuredHeight(viewForPosition2));
            if (i11 == 3) {
                int i12 = i11 - 1;
                float f11 = 1.0f - (i12 * 0.1f);
                viewForPosition2.setScaleX(f11);
                viewForPosition2.setScaleY(f11);
                viewForPosition2.setTranslationY((i12 * viewForPosition2.getMeasuredHeight()) / 14);
            } else if (i11 > 0) {
                float f12 = 1.0f - (i11 * 0.1f);
                viewForPosition2.setScaleX(f12);
                viewForPosition2.setScaleY(f12);
                viewForPosition2.setTranslationY((viewForPosition2.getMeasuredHeight() * i11) / 14);
            } else {
                viewForPosition2.setOnTouchListener(this.f26152p);
            }
        }
    }
}
