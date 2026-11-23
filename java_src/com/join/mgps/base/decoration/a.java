package com.join.mgps.base.decoration;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public abstract class a extends RecyclerView.ItemDecoration {
    private static final String TAG = "UniversalItemDecoration";
    public Map<Integer, b> decorations = new HashMap();
    private int mTotalColumn = -1;
    private GridLayoutManager mGridLayoutManager = null;

    /* JADX INFO: renamed from: com.join.mgps.base.decoration.a$a, reason: collision with other inner class name */
    public static class C0702a extends b {

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private Paint f64107g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f64108h;

        public C0702a(int column) {
            super(column);
            this.f64108h = -16777216;
            Paint paint = new Paint(1);
            this.f64107g = paint;
            paint.setStyle(Paint.Style.FILL);
        }

        @Override // com.join.mgps.base.decoration.a.b
        public void a(Canvas c10, int leftZ, int topZ, int rightZ, int bottomZ) {
            this.f64107g.setColor(this.f64108h);
            c10.drawRect(leftZ, topZ, rightZ, bottomZ, this.f64107g);
        }
    }

    public static abstract class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        protected int f64109a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        protected int f64110b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f64111c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f64112d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f64113e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f64114f;

        public b(int column) {
            this.f64109a = column;
        }

        public abstract void a(Canvas c10, int leftZ, int topZ, int rightZ, int bottomZ);
    }

    public static int string2Int(String s10, int defValue) {
        try {
            return Integer.parseInt(s10);
        } catch (Exception unused) {
            return defValue;
        }
    }

    public abstract b getItemOffsets(int position);

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.State state) {
        super.getItemOffsets(outRect, view, parent, state);
        if (this.mGridLayoutManager == null) {
            this.mGridLayoutManager = (GridLayoutManager) parent.getLayoutManager();
        }
        if (this.mTotalColumn == -1) {
            this.mTotalColumn = this.mGridLayoutManager.getSpanCount();
        }
        int childAdapterPosition = parent.getChildAdapterPosition(view);
        view.setTag(Integer.valueOf(childAdapterPosition));
        b itemOffsets = getItemOffsets(childAdapterPosition);
        if (itemOffsets != null) {
            if (childAdapterPosition == 0) {
                itemOffsets.f64110b = 0;
            } else {
                int i10 = childAdapterPosition - 1;
                b bVar = this.decorations.get(Integer.valueOf(i10));
                if (bVar == null) {
                    itemOffsets.f64110b = 0;
                } else if (itemOffsets.f64109a != this.mTotalColumn || isRight(i10, bVar.f64109a)) {
                    itemOffsets.f64110b = bVar.f64110b + bVar.f64109a;
                } else {
                    int i11 = bVar.f64110b;
                    int i12 = bVar.f64109a + i11;
                    int i13 = this.mTotalColumn;
                    itemOffsets.f64110b = i12 + (i13 - (i11 % i13));
                }
            }
            outRect.set(itemOffsets.f64111c, itemOffsets.f64113e, itemOffsets.f64112d, itemOffsets.f64114f);
        }
        this.decorations.put(Integer.valueOf(childAdapterPosition), itemOffsets);
    }

    public boolean isLeft(int pos) {
        int i10;
        return pos == 0 || (i10 = pos - 1) < 0 || this.decorations.get(Integer.valueOf(i10)) == null || (this.decorations.get(Integer.valueOf(i10)).f64110b + this.decorations.get(Integer.valueOf(i10)).f64109a) % this.mTotalColumn == 0;
    }

    public boolean isRight(int pos, int column) {
        if (pos <= 0) {
            return false;
        }
        int i10 = pos - 1;
        if (this.decorations.get(Integer.valueOf(i10)) == null) {
            return false;
        }
        int i11 = this.decorations.get(Integer.valueOf(i10)).f64110b + this.decorations.get(Integer.valueOf(i10)).f64109a;
        int i12 = this.mTotalColumn;
        return (i11 % i12) + column == i12;
    }

    public boolean isTop(int colNum, int pos) {
        return pos < colNum;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDraw(Canvas c10, RecyclerView parent, RecyclerView.State state) {
        super.onDraw(c10, parent, state);
        int childCount = parent.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = parent.getChildAt(i10);
            b bVar = this.decorations.get(Integer.valueOf(string2Int(childAt.getTag().toString(), 0)));
            if (bVar != null) {
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) childAt.getLayoutParams();
                int bottom = childAt.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                int left = childAt.getLeft() - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                int right = childAt.getRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                int top = childAt.getTop() - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                int i11 = bVar.f64114f;
                if (i11 != 0) {
                    bVar.a(c10, left - bVar.f64111c, bottom, right + bVar.f64112d, bottom + i11);
                }
                int i12 = bVar.f64113e;
                if (i12 != 0) {
                    bVar.a(c10, left - bVar.f64111c, top - i12, right + bVar.f64112d, top);
                }
                int i13 = bVar.f64111c;
                if (i13 != 0) {
                    bVar.a(c10, left - i13, top, left, bottom);
                }
                int i14 = bVar.f64112d;
                if (i14 != 0) {
                    bVar.a(c10, right, top, right + i14, bottom);
                }
            }
        }
    }
}
