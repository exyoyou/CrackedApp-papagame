package com.join.mgps.base.decoration;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public abstract class b extends RecyclerView.ItemDecoration {
    private static final String TAG = "UniversalItemDecoration";
    private Map<Integer, AbstractC0703b> decorations = new HashMap();

    public static class a extends AbstractC0703b {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Paint f64115e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f64116f = -16777216;

        public a() {
            Paint paint = new Paint(1);
            this.f64115e = paint;
            paint.setStyle(Paint.Style.FILL);
        }

        @Override // com.join.mgps.base.decoration.b.AbstractC0703b
        public void a(Canvas c10, int leftZ, int topZ, int rightZ, int bottomZ) {
            this.f64115e.setColor(this.f64116f);
            c10.drawRect(leftZ, topZ, rightZ, bottomZ, this.f64115e);
        }
    }

    /* JADX INFO: renamed from: com.join.mgps.base.decoration.b$b, reason: collision with other inner class name */
    public static abstract class AbstractC0703b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f64117a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f64118b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f64119c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f64120d;

        public abstract void a(Canvas c10, int leftZ, int topZ, int rightZ, int bottomZ);

        public boolean b(int colNum, int pos) {
            return pos % colNum == 0;
        }

        public boolean c(int colNum, int pos) {
            return pos % colNum == colNum - 1;
        }

        public boolean d(int colNum, int pos) {
            return pos < colNum;
        }
    }

    public static int string2Int(String s10, int defValue) {
        try {
            return Integer.parseInt(s10);
        } catch (Exception unused) {
            return defValue;
        }
    }

    public abstract AbstractC0703b getItemOffsets(int position);

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.State state) {
        super.getItemOffsets(outRect, view, parent, state);
        int childAdapterPosition = parent.getChildAdapterPosition(view);
        view.setTag(Integer.valueOf(childAdapterPosition));
        AbstractC0703b itemOffsets = getItemOffsets(childAdapterPosition);
        if (itemOffsets != null) {
            outRect.set(itemOffsets.f64117a, itemOffsets.f64119c, itemOffsets.f64118b, itemOffsets.f64120d);
        }
        this.decorations.put(Integer.valueOf(childAdapterPosition), itemOffsets);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDraw(Canvas c10, RecyclerView parent, RecyclerView.State state) {
        super.onDraw(c10, parent, state);
        int childCount = parent.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = parent.getChildAt(i10);
            AbstractC0703b abstractC0703b = this.decorations.get(Integer.valueOf(string2Int(childAt.getTag().toString(), 0)));
            if (abstractC0703b != null) {
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) childAt.getLayoutParams();
                int bottom = childAt.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                int left = childAt.getLeft() - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                int right = childAt.getRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                int top = childAt.getTop() - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                int i11 = abstractC0703b.f64120d;
                if (i11 != 0) {
                    abstractC0703b.a(c10, left - abstractC0703b.f64117a, bottom, right + abstractC0703b.f64118b, bottom + i11);
                }
                int i12 = abstractC0703b.f64119c;
                if (i12 != 0) {
                    abstractC0703b.a(c10, left - abstractC0703b.f64117a, top - i12, right + abstractC0703b.f64118b, top);
                }
                int i13 = abstractC0703b.f64117a;
                if (i13 != 0) {
                    abstractC0703b.a(c10, left - i13, top, left, bottom);
                }
                int i14 = abstractC0703b.f64118b;
                if (i14 != 0) {
                    abstractC0703b.a(c10, right, top, right + i14, bottom);
                }
            }
        }
    }
}
