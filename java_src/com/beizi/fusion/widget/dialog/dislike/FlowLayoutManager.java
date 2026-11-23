package com.beizi.fusion.widget.dialog.dislike;

import android.graphics.Rect;
import android.util.SparseArray;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class FlowLayoutManager extends RecyclerView.LayoutManager {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f10921e = "FlowLayoutManager";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected int f10923b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected int f10924c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f10926f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f10927g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f10928h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f10929i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final FlowLayoutManager f10922a = this;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f10930j = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected int f10925d = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private b f10931k = new b();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private List<b> f10932l = new ArrayList();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private SparseArray<Rect> f10933m = new SparseArray<>();

    public class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f10934a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        View f10935b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        Rect f10936c;

        public a(int i10, View view, Rect rect) {
            this.f10934a = i10;
            this.f10935b = view;
            this.f10936c = rect;
        }

        public void a(Rect rect) {
            this.f10936c = rect;
        }
    }

    public class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        float f10938a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        float f10939b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        List<a> f10940c = new ArrayList();

        public b() {
        }

        public void a(float f10) {
            this.f10938a = f10;
        }

        public void b(float f10) {
            this.f10939b = f10;
        }

        public void a(a aVar) {
            this.f10940c.add(aVar);
        }
    }

    private void a(RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (state.isPreLayout() || getItemCount() == 0) {
            return;
        }
        new Rect(getPaddingLeft(), getPaddingTop() + this.f10930j, getWidth() - getPaddingRight(), this.f10930j + (getHeight() - getPaddingBottom()));
        for (int i10 = 0; i10 < this.f10932l.size(); i10++) {
            b bVar = this.f10932l.get(i10);
            float f10 = bVar.f10938a;
            List<a> list = bVar.f10940c;
            for (int i11 = 0; i11 < list.size(); i11++) {
                View view = list.get(i11).f10935b;
                measureChildWithMargins(view, 0, 0);
                addView(view);
                Rect rect = list.get(i11).f10936c;
                int i12 = rect.left;
                int i13 = rect.top;
                int i14 = this.f10930j;
                layoutDecoratedWithMargins(view, i12, i13 - i14, rect.right, rect.bottom - i14);
            }
        }
    }

    private int b() {
        return (this.f10922a.getHeight() - this.f10922a.getPaddingBottom()) - this.f10922a.getPaddingTop();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollVertically() {
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return new RecyclerView.LayoutParams(-2, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean isAutoMeasureEnabled() {
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        this.f10925d = 0;
        int i10 = this.f10927g;
        this.f10931k = new b();
        this.f10932l.clear();
        this.f10933m.clear();
        removeAllViews();
        if (getItemCount() == 0) {
            detachAndScrapAttachedViews(recycler);
            this.f10930j = 0;
            return;
        }
        if (getChildCount() == 0 && state.isPreLayout()) {
            return;
        }
        detachAndScrapAttachedViews(recycler);
        if (getChildCount() == 0) {
            this.f10923b = getWidth();
            this.f10924c = getHeight();
            this.f10926f = getPaddingLeft();
            this.f10928h = getPaddingRight();
            this.f10927g = getPaddingTop();
            this.f10929i = (this.f10923b - this.f10926f) - this.f10928h;
        }
        int i11 = 0;
        int iMax = 0;
        for (int i12 = 0; i12 < getItemCount(); i12++) {
            View viewForPosition = recycler.getViewForPosition(i12);
            if (8 != viewForPosition.getVisibility()) {
                measureChildWithMargins(viewForPosition, 0, 0);
                int decoratedMeasuredWidth = getDecoratedMeasuredWidth(viewForPosition);
                int decoratedMeasuredHeight = getDecoratedMeasuredHeight(viewForPosition);
                int i13 = i11 + decoratedMeasuredWidth;
                if (i13 <= this.f10929i) {
                    int i14 = this.f10926f + i11;
                    Rect rect = this.f10933m.get(i12);
                    if (rect == null) {
                        rect = new Rect();
                    }
                    rect.set(i14, i10, decoratedMeasuredWidth + i14, i10 + decoratedMeasuredHeight);
                    this.f10933m.put(i12, rect);
                    iMax = Math.max(iMax, decoratedMeasuredHeight);
                    this.f10931k.a(new a(decoratedMeasuredHeight, viewForPosition, rect));
                    this.f10931k.a(i10);
                    this.f10931k.b(iMax);
                    i11 = i13;
                } else {
                    a();
                    i10 += iMax;
                    this.f10925d += iMax;
                    int i15 = this.f10926f;
                    Rect rect2 = this.f10933m.get(i12);
                    if (rect2 == null) {
                        rect2 = new Rect();
                    }
                    rect2.set(i15, i10, i15 + decoratedMeasuredWidth, i10 + decoratedMeasuredHeight);
                    this.f10933m.put(i12, rect2);
                    this.f10931k.a(new a(decoratedMeasuredHeight, viewForPosition, rect2));
                    this.f10931k.a(i10);
                    this.f10931k.b(decoratedMeasuredHeight);
                    i11 = decoratedMeasuredWidth;
                    iMax = decoratedMeasuredHeight;
                }
                if (i12 == getItemCount() - 1) {
                    a();
                    this.f10925d += iMax;
                }
            }
        }
        this.f10925d = Math.max(this.f10925d, b());
        a(recycler, state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollVerticallyBy(int i10, RecyclerView.Recycler recycler, RecyclerView.State state) {
        int i11 = this.f10930j;
        if (i11 + i10 < 0) {
            i10 = -i11;
        } else if (i11 + i10 > this.f10925d - b()) {
            i10 = (this.f10925d - b()) - this.f10930j;
        }
        this.f10930j += i10;
        offsetChildrenVertical(-i10);
        a(recycler, state);
        return i10;
    }

    private void a() {
        List<a> list = this.f10931k.f10940c;
        for (int i10 = 0; i10 < list.size(); i10++) {
            a aVar = list.get(i10);
            View view = aVar.f10935b;
            int position = getPosition(view);
            float f10 = this.f10933m.get(position).top;
            b bVar = this.f10931k;
            if (f10 < bVar.f10938a + ((bVar.f10939b - list.get(i10).f10934a) / 2.0f)) {
                Rect rect = this.f10933m.get(position);
                if (rect == null) {
                    rect = new Rect();
                }
                int i11 = this.f10933m.get(position).left;
                b bVar2 = this.f10931k;
                int i12 = (int) (bVar2.f10938a + ((bVar2.f10939b - list.get(i10).f10934a) / 2.0f));
                int i13 = this.f10933m.get(position).right;
                b bVar3 = this.f10931k;
                rect.set(i11, i12, i13, (int) (bVar3.f10938a + ((bVar3.f10939b - list.get(i10).f10934a) / 2.0f) + getDecoratedMeasuredHeight(view)));
                this.f10933m.put(position, rect);
                aVar.a(rect);
                list.set(i10, aVar);
            }
        }
        b bVar4 = this.f10931k;
        bVar4.f10940c = list;
        this.f10932l.add(bVar4);
        this.f10931k = new b();
    }
}
