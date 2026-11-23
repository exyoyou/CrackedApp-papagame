package com.join.mgps.customview;

import android.content.Context;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.SpinnerAdapter;

/* JADX INFO: loaded from: classes3.dex */
public abstract class AbsSpinner extends AdapterView<SpinnerAdapter> {
    SpinnerAdapter I;
    int J;
    int K;
    boolean L;
    int M;
    int N;
    int O;
    int P;
    Rect Q;
    View R;
    Interpolator S;
    b T;
    private DataSetObserver U;
    private Rect V;

    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        long f64261b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f64262c;

        class a implements Parcelable.Creator<SavedState> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(final Parcel in2) {
                return new SavedState(in2);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(final int size) {
                return new SavedState[size];
            }
        }

        public String toString() {
            return "AbsSpinner.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " selectedId=" + this.f64261b + " position=" + this.f64262c + "}";
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(final Parcel out, final int flags) {
            super.writeToParcel(out, flags);
            out.writeLong(this.f64261b);
            out.writeInt(this.f64262c);
        }

        SavedState(final Parcelable superState) {
            super(superState);
        }

        private SavedState(final Parcel in2) {
            super(in2);
            this.f64261b = in2.readLong();
            this.f64262c = in2.readInt();
        }
    }

    class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final SparseArray<View> f64263a = new SparseArray<>();

        b() {
        }

        void a() {
            SparseArray<View> sparseArray = this.f64263a;
            int size = sparseArray.size();
            for (int i10 = 0; i10 < size; i10++) {
                View viewValueAt = sparseArray.valueAt(i10);
                if (viewValueAt != null) {
                    AbsSpinner.this.removeDetachedView(viewValueAt, true);
                }
            }
            sparseArray.clear();
        }

        View b(final int position) {
            View view = this.f64263a.get(position);
            if (view != null) {
                this.f64263a.delete(position);
            }
            return view;
        }

        View c(final int position) {
            return this.f64263a.get(position);
        }

        public void d(final int position, final View v10) {
            this.f64263a.put(position, v10);
        }
    }

    public AbsSpinner(final Context context) {
        super(context);
        this.M = 0;
        this.N = 0;
        this.O = 0;
        this.P = 0;
        this.Q = new Rect();
        this.R = null;
        this.T = new b();
        u();
    }

    private void u() {
        setFocusable(true);
        setWillNotDraw(false);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.LayoutParams(-1, -2);
    }

    @Override // com.join.mgps.customview.AdapterView
    public final int getCount() {
        return this.f64301t;
    }

    @Override // com.join.mgps.customview.AdapterView
    public final View getSelectedView() {
        int i10;
        if (this.f64301t <= 0 || (i10 = this.f64298q) < 0) {
            return null;
        }
        return getChildAt(i10 - this.f64283b);
    }

    @Override // com.join.mgps.customview.AdapterView
    final void k() {
        super.k();
    }

    /* JADX WARN: Code duplicated, block: B:31:0x009f  */
    @Override // android.view.View
    protected void onMeasure(final int widthMeasureSpec, final int heightMeasureSpec) {
        int i10;
        int mode = View.MeasureSpec.getMode(widthMeasureSpec);
        Rect rect = this.Q;
        int paddingLeft = getPaddingLeft();
        int paddingLeft2 = this.M;
        if (paddingLeft > paddingLeft2) {
            paddingLeft2 = getPaddingLeft();
        }
        rect.left = paddingLeft2;
        Rect rect2 = this.Q;
        int paddingTop = getPaddingTop();
        int paddingTop2 = this.N;
        if (paddingTop > paddingTop2) {
            paddingTop2 = getPaddingTop();
        }
        rect2.top = paddingTop2;
        Rect rect3 = this.Q;
        int paddingRight = getPaddingRight();
        int paddingRight2 = this.O;
        if (paddingRight > paddingRight2) {
            paddingRight2 = getPaddingRight();
        }
        rect3.right = paddingRight2;
        Rect rect4 = this.Q;
        int paddingBottom = getPaddingBottom();
        int paddingBottom2 = this.P;
        if (paddingBottom > paddingBottom2) {
            paddingBottom2 = getPaddingBottom();
        }
        rect4.bottom = paddingBottom2;
        if (this.f64295n) {
            k();
        }
        int selectedItemPosition = getSelectedItemPosition();
        boolean z10 = true;
        int i11 = 0;
        if (selectedItemPosition < 0 || this.I == null) {
            i10 = 0;
        } else {
            View viewB = this.T.b(selectedItemPosition);
            if (viewB == null) {
                viewB = this.I.getView(selectedItemPosition, null, this);
            }
            if (viewB != null) {
                this.T.d(selectedItemPosition, viewB);
            }
            if (viewB != null) {
                if (viewB.getLayoutParams() == null) {
                    this.L = true;
                    viewB.setLayoutParams(generateDefaultLayoutParams());
                    this.L = false;
                }
                measureChild(viewB, widthMeasureSpec, heightMeasureSpec);
                int iS = s(viewB);
                Rect rect5 = this.Q;
                int i12 = iS + rect5.top + rect5.bottom;
                int iT = t(viewB);
                Rect rect6 = this.Q;
                i11 = i12;
                i10 = iT + rect6.left + rect6.right;
                z10 = false;
            } else {
                i10 = 0;
            }
        }
        if (z10) {
            Rect rect7 = this.Q;
            i11 = rect7.top + rect7.bottom;
            if (mode == 0) {
                i10 = rect7.right + rect7.left;
            }
        }
        int iMax = Math.max(i11, getSuggestedMinimumHeight());
        int iMax2 = Math.max(i10, getSuggestedMinimumWidth());
        setMeasuredDimension(View.resolveSize(iMax2, widthMeasureSpec), View.resolveSize(iMax, heightMeasureSpec));
        this.J = heightMeasureSpec;
        this.K = widthMeasureSpec;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(final Parcelable state) {
        SavedState savedState = (SavedState) state;
        super.onRestoreInstanceState(savedState.getSuperState());
        long j10 = savedState.f64261b;
        if (j10 >= 0) {
            this.f64295n = true;
            this.f64288g = true;
            this.f64286e = j10;
            this.f64285d = savedState.f64262c;
            this.f64289h = 0;
            requestLayout();
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        long selectedItemId = getSelectedItemId();
        savedState.f64261b = selectedItemId;
        if (selectedItemId >= 0) {
            savedState.f64262c = getSelectedItemPosition();
        } else {
            savedState.f64262c = -1;
        }
        return savedState;
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
        if (this.L) {
            return;
        }
        super.requestLayout();
    }

    final int s(final View child) {
        return child.getMeasuredHeight();
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0010  */
    public final void setSelection(final int position, final boolean animate) {
        boolean z10;
        int i10;
        if (animate && (i10 = this.f64283b) <= position) {
            z10 = position <= (i10 + getChildCount()) - 1;
        }
        z(position, z10);
    }

    final int t(final View child) {
        return child.getMeasuredWidth();
    }

    abstract void v(int delta, boolean animate);

    public final int w(final int x10, final int y10) {
        Rect rect = this.V;
        if (rect == null) {
            rect = new Rect();
            this.V = rect;
        }
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (childAt.getVisibility() == 0) {
                childAt.getHitRect(rect);
                if (rect.contains(x10, y10)) {
                    return this.f64283b + childCount;
                }
            }
        }
        return -1;
    }

    final void x() {
        int childCount = getChildCount();
        b bVar = this.T;
        for (int i10 = 0; i10 < childCount; i10++) {
            bVar.d(this.f64283b + i10, getChildAt(i10));
        }
    }

    final void y() {
        this.f64295n = false;
        this.f64288g = false;
        removeAllViewsInLayout();
        this.f64303v = -1;
        this.f64304w = Long.MIN_VALUE;
        setSelectedPositionInt(-1);
        setNextSelectedPositionInt(-1);
        invalidate();
    }

    final void z(final int position, final boolean animate) {
        if (position != this.f64303v) {
            this.L = true;
            int i10 = position - this.f64298q;
            setNextSelectedPositionInt(position);
            v(i10, animate);
            this.L = false;
        }
    }

    @Override // com.join.mgps.customview.AdapterView
    public final SpinnerAdapter getAdapter() {
        return this.I;
    }

    @Override // com.join.mgps.customview.AdapterView
    public void setAdapter(final SpinnerAdapter adapter) {
        SpinnerAdapter spinnerAdapter = this.I;
        if (spinnerAdapter != null) {
            spinnerAdapter.unregisterDataSetObserver(this.U);
            y();
        }
        this.I = adapter;
        this.f64303v = -1;
        this.f64304w = Long.MIN_VALUE;
        if (adapter != null) {
            this.f64302u = this.f64301t;
            this.f64301t = adapter.getCount();
            d();
            AdapterView.c cVar = new AdapterView.c();
            this.U = cVar;
            this.I.registerDataSetObserver(cVar);
            int i10 = this.f64301t > 0 ? 0 : -1;
            setSelectedPositionInt(i10);
            setNextSelectedPositionInt(i10);
            if (this.f64301t == 0) {
                e();
            }
        } else {
            d();
            y();
            e();
        }
        requestLayout();
    }

    @Override // com.join.mgps.customview.AdapterView
    public final void setSelection(final int position) {
        setNextSelectedPositionInt(position);
        requestLayout();
        invalidate();
    }

    public AbsSpinner(final Context context, final AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public AbsSpinner(final Context context, final AttributeSet attrs, final int defStyle) {
        super(context, attrs, defStyle);
        this.M = 0;
        this.N = 0;
        this.O = 0;
        this.P = 0;
        this.Q = new Rect();
        this.R = null;
        this.T = new b();
        u();
    }
}
