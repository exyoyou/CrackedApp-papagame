package com.byazt.qa;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import com.byazt.cd.sp;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 598, 1529})
public class FlexboxLayout extends ViewGroup implements com.byazt.qa.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f18896a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f18897c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public int f18898da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f18899i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public List<ve> f18900m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f18901n;
    public com.byazt.sa.uj nu;
    public uj.c rh;
    public int sl;
    public Drawable sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f18902t;
    public int tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int[] f18903u;
    public int uj;
    public int ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Drawable f18904x;
    public SparseIntArray yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public uj f18905z;

    @com.byazt.zqa.c(c = {0, 1, 598, 1712})
    public static class c extends ViewGroup.MarginLayoutParams implements tt {
        public static final Parcelable.Creator<c> CREATOR = new Parcelable.Creator<c>() { // from class: com.byazt.qa.FlexboxLayout.c.1
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public c createFromParcel(Parcel parcel) {
                return new c(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public c[] newArray(int i10) {
                return new c[i10];
            }
        };

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f18906a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f18907c;

        /* JADX INFO: renamed from: da, reason: collision with root package name */
        public boolean f18908da;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f18909i;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public float f18910n;
        public int sp;
        public float tt;
        public int uj;
        public float ve;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public int f18911x;

        public c(c cVar) {
            super((ViewGroup.MarginLayoutParams) cVar);
            this.f18907c = 1;
            this.tt = 0.0f;
            this.ve = 0.0f;
            this.uj = -1;
            this.f18910n = -1.0f;
            this.f18906a = -1;
            this.sp = -1;
            this.f18911x = 16777215;
            this.f18909i = 16777215;
            this.f18907c = cVar.f18907c;
            this.tt = cVar.tt;
            this.ve = cVar.ve;
            this.uj = cVar.uj;
            this.f18910n = cVar.f18910n;
            this.f18906a = cVar.f18906a;
            this.sp = cVar.sp;
            this.f18911x = cVar.f18911x;
            this.f18909i = cVar.f18909i;
            this.f18908da = cVar.f18908da;
        }

        @Override // com.byazt.qa.tt
        public int a() {
            return this.uj;
        }

        @Override // com.byazt.qa.tt
        public int c() {
            return ((ViewGroup.MarginLayoutParams) this).width;
        }

        @Override // com.byazt.qa.tt
        public int da() {
            return this.f18909i;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // com.byazt.qa.tt
        public int i() {
            return this.f18911x;
        }

        @Override // com.byazt.qa.tt
        public int m() {
            return ((ViewGroup.MarginLayoutParams) this).bottomMargin;
        }

        @Override // com.byazt.qa.tt
        public float n() {
            return this.ve;
        }

        @Override // com.byazt.qa.tt
        public boolean sl() {
            return this.f18908da;
        }

        @Override // com.byazt.qa.tt
        public int sp() {
            return this.f18906a;
        }

        @Override // com.byazt.qa.tt
        public float t() {
            return this.f18910n;
        }

        @Override // com.byazt.qa.tt
        public int tt() {
            return ((ViewGroup.MarginLayoutParams) this).height;
        }

        @Override // com.byazt.qa.tt
        public int u() {
            return ((ViewGroup.MarginLayoutParams) this).leftMargin;
        }

        @Override // com.byazt.qa.tt
        public float uj() {
            return this.tt;
        }

        @Override // com.byazt.qa.tt
        public int ve() {
            return this.f18907c;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeInt(this.f18907c);
            parcel.writeFloat(this.tt);
            parcel.writeFloat(this.ve);
            parcel.writeInt(this.uj);
            parcel.writeFloat(this.f18910n);
            parcel.writeInt(this.f18906a);
            parcel.writeInt(this.sp);
            parcel.writeInt(this.f18911x);
            parcel.writeInt(this.f18909i);
            parcel.writeByte(this.f18908da ? (byte) 1 : (byte) 0);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).bottomMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).leftMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).rightMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).topMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).height);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).width);
        }

        @Override // com.byazt.qa.tt
        public int x() {
            return this.sp;
        }

        @Override // com.byazt.qa.tt
        public int yp() {
            return ((ViewGroup.MarginLayoutParams) this).topMargin;
        }

        @Override // com.byazt.qa.tt
        public int z() {
            return ((ViewGroup.MarginLayoutParams) this).rightMargin;
        }

        public void c(float f10) {
            this.tt = f10;
        }

        public void tt(float f10) {
            this.ve = f10;
        }

        public void uj(int i10) {
            this.uj = i10;
        }

        public void ve(int i10) {
            this.f18907c = i10;
        }

        @Override // com.byazt.qa.tt
        public void c(int i10) {
            this.f18906a = i10;
        }

        @Override // com.byazt.qa.tt
        public void tt(int i10) {
            this.sp = i10;
        }

        public void ve(float f10) {
            this.f18910n = f10;
        }

        public c(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f18907c = 1;
            this.tt = 0.0f;
            this.ve = 0.0f;
            this.uj = -1;
            this.f18910n = -1.0f;
            this.f18906a = -1;
            this.sp = -1;
            this.f18911x = 16777215;
            this.f18909i = 16777215;
        }

        public c(int i10, int i11) {
            super(new ViewGroup.LayoutParams(i10, i11));
            this.f18907c = 1;
            this.tt = 0.0f;
            this.ve = 0.0f;
            this.uj = -1;
            this.f18910n = -1.0f;
            this.f18906a = -1;
            this.sp = -1;
            this.f18911x = 16777215;
            this.f18909i = 16777215;
        }

        public c(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f18907c = 1;
            this.tt = 0.0f;
            this.ve = 0.0f;
            this.uj = -1;
            this.f18910n = -1.0f;
            this.f18906a = -1;
            this.sp = -1;
            this.f18911x = 16777215;
            this.f18909i = 16777215;
        }

        public c(Parcel parcel) {
            super(0, 0);
            this.f18907c = 1;
            this.tt = 0.0f;
            this.ve = 0.0f;
            this.uj = -1;
            this.f18910n = -1.0f;
            this.f18906a = -1;
            this.sp = -1;
            this.f18911x = 16777215;
            this.f18909i = 16777215;
            this.f18907c = parcel.readInt();
            this.tt = parcel.readFloat();
            this.ve = parcel.readFloat();
            this.uj = parcel.readInt();
            this.f18910n = parcel.readFloat();
            this.f18906a = parcel.readInt();
            this.sp = parcel.readInt();
            this.f18911x = parcel.readInt();
            this.f18909i = parcel.readInt();
            this.f18908da = parcel.readByte() != 0;
            ((ViewGroup.MarginLayoutParams) this).bottomMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).leftMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).rightMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).topMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).height = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).width = parcel.readInt();
        }
    }

    public FlexboxLayout(Context context) {
        super(context, null);
        this.f18896a = -1;
        this.f18905z = new uj(this);
        this.f18900m = new ArrayList();
        this.rh = new uj.c();
    }

    private boolean a(int i10) {
        if (i10 >= 0 && i10 < this.f18900m.size()) {
            for (int i11 = i10 + 1; i11 < this.f18900m.size(); i11++) {
                if (this.f18900m.get(i11).tt() > 0) {
                    return false;
                }
            }
            if (c()) {
                return (this.f18899i & 4) != 0;
            }
            if ((this.f18898da & 4) != 0) {
                return true;
            }
        }
        return false;
    }

    private boolean n(int i10, int i11) {
        for (int i12 = 1; i12 <= i11; i12++) {
            View viewVe = ve(i10 - i12);
            if (viewVe != null && viewVe.getVisibility() != 8) {
                return false;
            }
        }
        return true;
    }

    private boolean uj(int i10, int i11) {
        if (n(i10, i11)) {
            if (c()) {
                return (this.f18898da & 1) != 0;
            }
            return (this.f18899i & 1) != 0;
        }
        if (c()) {
            return (this.f18898da & 2) != 0;
        }
        return (this.f18899i & 2) != 0;
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        if (this.yp == null) {
            this.yp = new SparseIntArray(getChildCount());
        }
        this.f18903u = this.f18905z.c(view, i10, layoutParams, this.yp);
        super.addView(view, i10, layoutParams);
    }

    @Override // com.byazt.qa.c
    public int c(View view) {
        return 0;
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof c;
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof c) {
            return new c((c) layoutParams);
        }
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new c((ViewGroup.MarginLayoutParams) layoutParams) : new c(layoutParams);
    }

    @Override // com.byazt.qa.c
    public int getAlignContent() {
        return this.f18901n;
    }

    @Override // com.byazt.qa.c
    public int getAlignItems() {
        return this.uj;
    }

    public Drawable getDividerDrawableHorizontal() {
        return this.sp;
    }

    public Drawable getDividerDrawableVertical() {
        return this.f18904x;
    }

    @Override // com.byazt.qa.c
    public int getFlexDirection() {
        return this.f18897c;
    }

    @Override // com.byazt.qa.c
    public int getFlexItemCount() {
        return getChildCount();
    }

    public List<ve> getFlexLines() {
        ArrayList arrayList = new ArrayList(this.f18900m.size());
        for (ve veVar : this.f18900m) {
            if (veVar.tt() != 0) {
                arrayList.add(veVar);
            }
        }
        return arrayList;
    }

    @Override // com.byazt.qa.c
    public List<ve> getFlexLinesInternal() {
        return this.f18900m;
    }

    @Override // com.byazt.qa.c
    public int getFlexWrap() {
        return this.tt;
    }

    public int getJustifyContent() {
        return this.ve;
    }

    @Override // com.byazt.qa.c
    public int getLargestMainSize() {
        Iterator<ve> it2 = this.f18900m.iterator();
        int iMax = Integer.MIN_VALUE;
        while (it2.hasNext()) {
            iMax = Math.max(iMax, it2.next().f18926n);
        }
        return iMax;
    }

    @Override // com.byazt.qa.c
    public int getMaxLine() {
        return this.f18896a;
    }

    public int getShowDividerHorizontal() {
        return this.f18899i;
    }

    public int getShowDividerVertical() {
        return this.f18898da;
    }

    @Override // com.byazt.qa.c
    public int getSumOfCrossSize() {
        int size = this.f18900m.size();
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            ve veVar = this.f18900m.get(i11);
            if (uj(i11)) {
                i10 += c() ? this.sl : this.f18902t;
            }
            if (a(i11)) {
                i10 += c() ? this.sl : this.f18902t;
            }
            i10 += veVar.sp;
        }
        return i10;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        com.byazt.sa.uj ujVar = this.nu;
        if (ujVar != null) {
            ujVar.n();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        com.byazt.sa.uj ujVar = this.nu;
        if (ujVar != null) {
            ujVar.a();
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (this.f18904x == null && this.sp == null) {
            return;
        }
        if (this.f18899i == 0 && this.f18898da == 0) {
            return;
        }
        int iC = sp.c(this);
        int i10 = this.f18897c;
        if (i10 == 0) {
            c(canvas, iC == 1, this.tt == 2);
            return;
        }
        if (i10 == 1) {
            c(canvas, iC != 1, this.tt == 2);
            return;
        }
        if (i10 == 2) {
            boolean z10 = iC == 1;
            if (this.tt == 2) {
                z10 = !z10;
            }
            tt(canvas, z10, false);
            return;
        }
        if (i10 != 3) {
            return;
        }
        boolean z11 = iC == 1;
        if (this.tt == 2) {
            z11 = !z11;
        }
        tt(canvas, z11, true);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        boolean z11;
        com.byazt.sa.uj ujVar = this.nu;
        if (ujVar != null) {
            ujVar.uj();
        }
        int iC = sp.c(this);
        int i14 = this.f18897c;
        if (i14 == 0) {
            c(iC == 1, i10, i11, i12, i13);
        } else if (i14 == 1) {
            c(iC != 1, i10, i11, i12, i13);
        } else if (i14 == 2) {
            z11 = iC == 1;
            c(this.tt == 2 ? !z11 : z11, false, i10, i11, i12, i13);
        } else {
            if (i14 != 3) {
                throw new IllegalStateException("Invalid flex direction is set: " + this.f18897c);
            }
            z11 = iC == 1;
            c(this.tt == 2 ? !z11 : z11, true, i10, i11, i12, i13);
        }
        com.byazt.sa.uj ujVar2 = this.nu;
        if (ujVar2 != null) {
            ujVar2.c(i10, i11, i12, i13);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i10, int i11) {
        com.byazt.sa.uj ujVar = this.nu;
        if (ujVar != null) {
            int[] iArrC = ujVar.c(i10, i11);
            c(iArrC[0], iArrC[1]);
        } else {
            c(i10, i11);
        }
        com.byazt.sa.uj ujVar2 = this.nu;
        if (ujVar2 != null) {
            ujVar2.ve();
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        com.byazt.sa.uj ujVar = this.nu;
        if (ujVar != null) {
            ujVar.tt(i10, i11, i12, i13);
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
        com.byazt.sa.uj ujVar = this.nu;
        if (ujVar != null) {
            ujVar.c(z10);
        }
    }

    public void setAlignContent(int i10) {
        if (this.f18901n != i10) {
            this.f18901n = i10;
            requestLayout();
        }
    }

    public void setAlignItems(int i10) {
        if (this.uj != i10) {
            this.uj = i10;
            requestLayout();
        }
    }

    public void setDividerDrawable(Drawable drawable) {
        setDividerDrawableHorizontal(drawable);
        setDividerDrawableVertical(drawable);
    }

    public void setDividerDrawableHorizontal(Drawable drawable) {
        if (drawable == this.sp) {
            return;
        }
        this.sp = drawable;
        if (drawable != null) {
            this.sl = drawable.getIntrinsicHeight();
        } else {
            this.sl = 0;
        }
        tt();
        requestLayout();
    }

    public void setDividerDrawableVertical(Drawable drawable) {
        if (drawable == this.f18904x) {
            return;
        }
        this.f18904x = drawable;
        if (drawable != null) {
            this.f18902t = drawable.getIntrinsicWidth();
        } else {
            this.f18902t = 0;
        }
        tt();
        requestLayout();
    }

    public void setFlexDirection(int i10) {
        if (this.f18897c != i10) {
            this.f18897c = i10;
            requestLayout();
        }
    }

    @Override // com.byazt.qa.c
    public void setFlexLines(List<ve> list) {
        this.f18900m = list;
    }

    public void setFlexWrap(int i10) {
        if (this.tt != i10) {
            this.tt = i10;
            requestLayout();
        }
    }

    public void setJustifyContent(int i10) {
        if (this.ve != i10) {
            this.ve = i10;
            requestLayout();
        }
    }

    public void setMaxLine(int i10) {
        if (this.f18896a != i10) {
            this.f18896a = i10;
            requestLayout();
        }
    }

    public void setShowDivider(int i10) {
        setShowDividerVertical(i10);
        setShowDividerHorizontal(i10);
    }

    public void setShowDividerHorizontal(int i10) {
        if (i10 != this.f18899i) {
            this.f18899i = i10;
            requestLayout();
        }
    }

    public void setShowDividerVertical(int i10) {
        if (i10 != this.f18898da) {
            this.f18898da = i10;
            requestLayout();
        }
    }

    @Override // com.byazt.qa.c
    public View tt(int i10) {
        return ve(i10);
    }

    public View ve(int i10) {
        if (i10 < 0) {
            return null;
        }
        int[] iArr = this.f18903u;
        if (i10 >= iArr.length) {
            return null;
        }
        return getChildAt(iArr[i10]);
    }

    private void c(int i10, int i11) {
        if (this.yp == null) {
            this.yp = new SparseIntArray(getChildCount());
        }
        if (this.f18905z.tt(this.yp)) {
            this.f18903u = this.f18905z.c(this.yp);
        }
        int i12 = this.f18897c;
        if (i12 == 0 || i12 == 1) {
            tt(i10, i11);
        } else if (i12 == 2 || i12 == 3) {
            ve(i10, i11);
        } else {
            throw new IllegalStateException("Invalid value for the flex direction is set: " + this.f18897c);
        }
    }

    private void tt(int i10, int i11) {
        this.f18900m.clear();
        this.rh.c();
        this.f18905z.c(this.rh, i10, i11);
        this.f18900m = this.rh.f18919c;
        this.f18905z.c(i10, i11);
        if (this.uj == 3) {
            for (ve veVar : this.f18900m) {
                int iMax = Integer.MIN_VALUE;
                for (int i12 = 0; i12 < veVar.f18929x; i12++) {
                    View viewVe = ve(veVar.f18930z + i12);
                    if (viewVe != null && viewVe.getVisibility() != 8) {
                        c cVar = (c) viewVe.getLayoutParams();
                        iMax = this.tt != 2 ? Math.max(iMax, viewVe.getMeasuredHeight() + Math.max(veVar.f18927t - viewVe.getBaseline(), ((ViewGroup.MarginLayoutParams) cVar).topMargin) + ((ViewGroup.MarginLayoutParams) cVar).bottomMargin) : Math.max(iMax, viewVe.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) cVar).topMargin + Math.max((veVar.f18927t - viewVe.getMeasuredHeight()) + viewVe.getBaseline(), ((ViewGroup.MarginLayoutParams) cVar).bottomMargin));
                    }
                }
                veVar.sp = iMax;
            }
        }
        this.f18905z.tt(i10, i11, getPaddingTop() + getPaddingBottom());
        this.f18905z.c();
        c(this.f18897c, i10, i11, this.rh.tt);
    }

    private boolean n(int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            if (this.f18900m.get(i11).tt() > 0) {
                return false;
            }
        }
        return true;
    }

    private void ve(int i10, int i11) {
        this.f18900m.clear();
        this.rh.c();
        this.f18905z.tt(this.rh, i10, i11);
        this.f18900m = this.rh.f18919c;
        this.f18905z.c(i10, i11);
        this.f18905z.tt(i10, i11, getPaddingLeft() + getPaddingRight());
        this.f18905z.c();
        c(this.f18897c, i10, i11, this.rh.tt);
    }

    private boolean uj(int i10) {
        if (i10 >= 0 && i10 < this.f18900m.size()) {
            if (n(i10)) {
                if (c()) {
                    return (this.f18899i & 1) != 0;
                }
                return (this.f18898da & 1) != 0;
            }
            if (c()) {
                return (this.f18899i & 2) != 0;
            }
            if ((this.f18898da & 2) != 0) {
                return true;
            }
        }
        return false;
    }

    @Override // com.byazt.qa.c
    public View c(int i10) {
        return getChildAt(i10);
    }

    private void c(int i10, int i11, int i12, int i13) {
        int sumOfCrossSize;
        int largestMainSize;
        int iResolveSizeAndState;
        int iResolveSizeAndState2;
        int mode = View.MeasureSpec.getMode(i11);
        int size = View.MeasureSpec.getSize(i11);
        int mode2 = View.MeasureSpec.getMode(i12);
        int size2 = View.MeasureSpec.getSize(i12);
        if (i10 == 0 || i10 == 1) {
            sumOfCrossSize = getSumOfCrossSize() + getPaddingTop() + getPaddingBottom();
            largestMainSize = getLargestMainSize();
        } else {
            if (i10 != 2 && i10 != 3) {
                throw new IllegalArgumentException("Invalid flex direction: ".concat(String.valueOf(i10)));
            }
            sumOfCrossSize = getLargestMainSize();
            largestMainSize = getSumOfCrossSize() + getPaddingLeft() + getPaddingRight();
        }
        if (mode == Integer.MIN_VALUE) {
            if (size < largestMainSize) {
                i13 = View.combineMeasuredStates(i13, 16777216);
            } else {
                size = largestMainSize;
            }
            iResolveSizeAndState = View.resolveSizeAndState(size, i11, i13);
        } else if (mode == 0) {
            iResolveSizeAndState = View.resolveSizeAndState(largestMainSize, i11, i13);
        } else if (mode == 1073741824) {
            if (size < largestMainSize) {
                i13 = View.combineMeasuredStates(i13, 16777216);
            }
            iResolveSizeAndState = View.resolveSizeAndState(size, i11, i13);
        } else {
            throw new IllegalStateException("Unknown width mode is set: ".concat(String.valueOf(mode)));
        }
        if (mode2 == Integer.MIN_VALUE) {
            if (size2 < sumOfCrossSize) {
                i13 = View.combineMeasuredStates(i13, 256);
            } else {
                size2 = sumOfCrossSize;
            }
            iResolveSizeAndState2 = View.resolveSizeAndState(size2, i12, i13);
        } else if (mode2 == 0) {
            iResolveSizeAndState2 = View.resolveSizeAndState(sumOfCrossSize, i12, i13);
        } else if (mode2 == 1073741824) {
            if (size2 < sumOfCrossSize) {
                i13 = View.combineMeasuredStates(i13, 256);
            }
            iResolveSizeAndState2 = View.resolveSizeAndState(size2, i12, i13);
        } else {
            throw new IllegalStateException("Unknown height mode is set: ".concat(String.valueOf(mode2)));
        }
        setMeasuredDimension(iResolveSizeAndState, iResolveSizeAndState2);
    }

    private void tt(Canvas canvas, boolean z10, boolean z11) {
        int i10;
        int i11;
        int bottom;
        int top;
        int paddingTop = getPaddingTop();
        int iMax = Math.max(0, (getHeight() - getPaddingBottom()) - paddingTop);
        int size = this.f18900m.size();
        for (int i12 = 0; i12 < size; i12++) {
            ve veVar = this.f18900m.get(i12);
            for (int i13 = 0; i13 < veVar.f18929x; i13++) {
                int i14 = veVar.f18930z + i13;
                View viewVe = ve(i14);
                if (viewVe != null && viewVe.getVisibility() != 8) {
                    c cVar = (c) viewVe.getLayoutParams();
                    if (uj(i14, i13)) {
                        if (z11) {
                            top = viewVe.getBottom() + ((ViewGroup.MarginLayoutParams) cVar).bottomMargin;
                        } else {
                            top = (viewVe.getTop() - ((ViewGroup.MarginLayoutParams) cVar).topMargin) - this.sl;
                        }
                        tt(canvas, veVar.f18922c, top, veVar.sp);
                    }
                    if (i13 == veVar.f18929x - 1 && (this.f18899i & 4) > 0) {
                        if (z11) {
                            bottom = (viewVe.getTop() - ((ViewGroup.MarginLayoutParams) cVar).topMargin) - this.sl;
                        } else {
                            bottom = viewVe.getBottom() + ((ViewGroup.MarginLayoutParams) cVar).bottomMargin;
                        }
                        tt(canvas, veVar.f18922c, bottom, veVar.sp);
                    }
                }
            }
            if (uj(i12)) {
                if (z10) {
                    i11 = veVar.ve;
                } else {
                    i11 = veVar.f18922c - this.f18902t;
                }
                c(canvas, i11, paddingTop, iMax);
            }
            if (a(i12) && (this.f18898da & 4) > 0) {
                if (z10) {
                    i10 = veVar.f18922c - this.f18902t;
                } else {
                    i10 = veVar.ve;
                }
                c(canvas, i10, paddingTop, iMax);
            }
        }
    }

    @Override // com.byazt.qa.c
    public boolean c() {
        int i10 = this.f18897c;
        return i10 == 0 || i10 == 1;
    }

    /* JADX WARN: Code duplicated, block: B:41:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:70:0x01fc  */
    private void c(boolean z10, int i10, int i11, int i12, int i13) {
        float measuredWidth;
        float f10;
        float f11;
        int i14;
        View viewVe;
        int i15;
        int i16;
        float f12;
        int i17;
        c cVar;
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int i18 = i12 - i10;
        int paddingBottom = (i13 - i11) - getPaddingBottom();
        int paddingTop = getPaddingTop();
        int size = this.f18900m.size();
        int i19 = 0;
        while (i19 < size) {
            ve veVar = this.f18900m.get(i19);
            if (uj(i19)) {
                int i20 = this.sl;
                paddingBottom -= i20;
                paddingTop += i20;
            }
            int i21 = this.ve;
            int i22 = 1;
            if (i21 == 0) {
                measuredWidth = paddingLeft;
                f10 = i18 - paddingRight;
            } else if (i21 == 1) {
                int i23 = veVar.f18926n;
                f10 = i23 - paddingLeft;
                measuredWidth = (i18 - i23) + paddingRight;
            } else {
                if (i21 == 2) {
                    int i24 = veVar.f18926n;
                    measuredWidth = paddingLeft + ((i18 - i24) / 2.0f);
                    f10 = (i18 - paddingRight) - ((i18 - i24) / 2.0f);
                } else if (i21 == 3) {
                    measuredWidth = paddingLeft;
                    int iTt = veVar.tt();
                    f11 = (i18 - veVar.f18926n) / (iTt != 1 ? iTt - 1 : 1.0f);
                    f10 = i18 - paddingRight;
                } else if (i21 == 4) {
                    int iTt2 = veVar.tt();
                    f11 = iTt2 != 0 ? (i18 - veVar.f18926n) / iTt2 : 0.0f;
                    float f13 = f11 / 2.0f;
                    measuredWidth = paddingLeft + f13;
                    f10 = (i18 - paddingRight) - f13;
                } else if (i21 == 5) {
                    int iTt3 = veVar.tt();
                    f11 = iTt3 != 0 ? (i18 - veVar.f18926n) / (iTt3 + 1) : 0.0f;
                    measuredWidth = paddingLeft + f11;
                    f10 = (i18 - paddingRight) - f11;
                } else {
                    throw new IllegalStateException("Invalid justifyContent is set: " + this.ve);
                }
                float fMax = Math.max(f11, 0.0f);
                i14 = 0;
                while (i14 < veVar.f18929x) {
                    int i25 = veVar.f18930z + i14;
                    viewVe = ve(i25);
                    if (viewVe != null || viewVe.getVisibility() == 8) {
                        i15 = paddingLeft;
                        i16 = i14;
                    } else {
                        c cVar2 = (c) viewVe.getLayoutParams();
                        float f14 = measuredWidth + ((ViewGroup.MarginLayoutParams) cVar2).leftMargin;
                        float f15 = f10 - ((ViewGroup.MarginLayoutParams) cVar2).rightMargin;
                        if (uj(i25, i14)) {
                            int i26 = this.f18902t;
                            float f16 = i26;
                            f14 += f16;
                            i17 = i26;
                            f12 = f15 - f16;
                        } else {
                            f12 = f15;
                            i17 = 0;
                        }
                        int i27 = (i14 != veVar.f18929x - i22 || (this.f18898da & 4) <= 0) ? 0 : this.f18902t;
                        if (this.tt != 2) {
                            i15 = paddingLeft;
                            i16 = i14;
                            cVar = cVar2;
                            if (z10) {
                                this.f18905z.c(viewVe, veVar, Math.round(f12) - viewVe.getMeasuredWidth(), paddingTop, Math.round(f12), paddingTop + viewVe.getMeasuredHeight());
                            } else {
                                this.f18905z.c(viewVe, veVar, Math.round(f14), paddingTop, Math.round(f14) + viewVe.getMeasuredWidth(), paddingTop + viewVe.getMeasuredHeight());
                            }
                        } else if (z10) {
                            i16 = i14;
                            i15 = paddingLeft;
                            cVar = cVar2;
                            this.f18905z.c(viewVe, veVar, Math.round(f12) - viewVe.getMeasuredWidth(), paddingBottom - viewVe.getMeasuredHeight(), Math.round(f12), paddingBottom);
                        } else {
                            i15 = paddingLeft;
                            i16 = i14;
                            cVar = cVar2;
                            this.f18905z.c(viewVe, veVar, Math.round(f14), paddingBottom - viewVe.getMeasuredHeight(), Math.round(f14) + viewVe.getMeasuredWidth(), paddingBottom);
                        }
                        measuredWidth = f14 + viewVe.getMeasuredWidth() + fMax + ((ViewGroup.MarginLayoutParams) cVar).rightMargin;
                        float measuredWidth2 = f12 - ((viewVe.getMeasuredWidth() + fMax) + ((ViewGroup.MarginLayoutParams) cVar).leftMargin);
                        if (z10) {
                            veVar.c(viewVe, i27, 0, i17, 0);
                        } else {
                            veVar.c(viewVe, i17, 0, i27, 0);
                        }
                        f10 = measuredWidth2;
                    }
                    i14 = i16 + 1;
                    paddingLeft = i15;
                    i22 = 1;
                }
                int i28 = paddingLeft;
                int i29 = veVar.sp;
                paddingTop += i29;
                paddingBottom -= i29;
                i19++;
                paddingLeft = i28;
            }
            f11 = 0.0f;
            float fMax2 = Math.max(f11, 0.0f);
            i14 = 0;
            while (i14 < veVar.f18929x) {
                int i210 = veVar.f18930z + i14;
                viewVe = ve(i210);
                if (viewVe != null) {
                    i15 = paddingLeft;
                    i16 = i14;
                } else {
                    i15 = paddingLeft;
                    i16 = i14;
                }
                i14 = i16 + 1;
                paddingLeft = i15;
                i22 = 1;
            }
            int i211 = paddingLeft;
            int i212 = veVar.sp;
            paddingTop += i212;
            paddingBottom -= i212;
            i19++;
            paddingLeft = i211;
        }
    }

    private void tt(Canvas canvas, int i10, int i11, int i12) {
        Drawable drawable = this.sp;
        if (drawable == null) {
            return;
        }
        drawable.setBounds(i10, i11, i12 + i10, this.sl + i11);
        this.sp.draw(canvas);
    }

    @Override // com.byazt.qa.c
    public int tt(int i10, int i11, int i12) {
        return ViewGroup.getChildMeasureSpec(i10, i11, i12);
    }

    private void tt() {
        if (this.sp == null && this.f18904x == null) {
            setWillNotDraw(true);
        } else {
            setWillNotDraw(false);
        }
    }

    /* JADX WARN: Code duplicated, block: B:42:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:70:0x01fa  */
    private void c(boolean z10, boolean z11, int i10, int i11, int i12, int i13) {
        float f10;
        int i14;
        float f11;
        float f12;
        int i15;
        View viewVe;
        int i16;
        float f13;
        float f14;
        int i17;
        c cVar;
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int paddingRight = getPaddingRight();
        int paddingLeft = getPaddingLeft();
        int i18 = i13 - i11;
        int i19 = (i12 - i10) - paddingRight;
        int size = this.f18900m.size();
        for (int i20 = 0; i20 < size; i20++) {
            ve veVar = this.f18900m.get(i20);
            if (uj(i20)) {
                int i21 = this.f18902t;
                paddingLeft += i21;
                i19 -= i21;
            }
            int i22 = this.ve;
            if (i22 != 0) {
                if (i22 == 1) {
                    int i23 = veVar.f18926n;
                    f10 = (i18 - i23) + paddingBottom;
                    i14 = i23 - paddingTop;
                } else if (i22 == 2) {
                    int i24 = veVar.f18926n;
                    f11 = (i18 - paddingBottom) - ((i18 - i24) / 2.0f);
                    f10 = paddingTop + ((i18 - i24) / 2.0f);
                    f12 = 0.0f;
                } else if (i22 == 3) {
                    f10 = paddingTop;
                    int iTt = veVar.tt();
                    f12 = (i18 - veVar.f18926n) / (iTt != 1 ? iTt - 1 : 1.0f);
                    f11 = i18 - paddingBottom;
                } else if (i22 == 4) {
                    int iTt2 = veVar.tt();
                    f12 = iTt2 != 0 ? (i18 - veVar.f18926n) / iTt2 : 0.0f;
                    float f15 = f12 / 2.0f;
                    f10 = paddingTop + f15;
                    f11 = (i18 - paddingBottom) - f15;
                } else if (i22 == 5) {
                    int iTt3 = veVar.tt();
                    f12 = iTt3 != 0 ? (i18 - veVar.f18926n) / (iTt3 + 1) : 0.0f;
                    f10 = paddingTop + f12;
                    f11 = (i18 - paddingBottom) - f12;
                } else {
                    throw new IllegalStateException("Invalid justifyContent is set: " + this.ve);
                }
                float fMax = Math.max(f12, 0.0f);
                i15 = 0;
                while (i15 < veVar.f18929x) {
                    int i25 = veVar.f18930z + i15;
                    viewVe = ve(i25);
                    if (viewVe != null || viewVe.getVisibility() == 8) {
                        i16 = i15;
                    } else {
                        c cVar2 = (c) viewVe.getLayoutParams();
                        float f16 = f10 + ((ViewGroup.MarginLayoutParams) cVar2).topMargin;
                        float f17 = f11 - ((ViewGroup.MarginLayoutParams) cVar2).bottomMargin;
                        if (uj(i25, i15)) {
                            int i26 = this.sl;
                            float f18 = i26;
                            f13 = f16 + f18;
                            i17 = i26;
                            f14 = f17 - f18;
                        } else {
                            f13 = f16;
                            f14 = f17;
                            i17 = 0;
                        }
                        int i27 = (i15 != veVar.f18929x - 1 || (this.f18899i & 4) <= 0) ? 0 : this.sl;
                        if (!z10) {
                            i16 = i15;
                            cVar = cVar2;
                            if (z11) {
                                this.f18905z.c(viewVe, veVar, false, paddingLeft, Math.round(f14) - viewVe.getMeasuredHeight(), paddingLeft + viewVe.getMeasuredWidth(), Math.round(f14));
                            } else {
                                this.f18905z.c(viewVe, veVar, false, paddingLeft, Math.round(f13), paddingLeft + viewVe.getMeasuredWidth(), Math.round(f13) + viewVe.getMeasuredHeight());
                            }
                        } else if (z11) {
                            i16 = i15;
                            cVar = cVar2;
                            this.f18905z.c(viewVe, veVar, true, i19 - viewVe.getMeasuredWidth(), Math.round(f14) - viewVe.getMeasuredHeight(), i19, Math.round(f14));
                        } else {
                            i16 = i15;
                            cVar = cVar2;
                            this.f18905z.c(viewVe, veVar, true, i19 - viewVe.getMeasuredWidth(), Math.round(f13), i19, Math.round(f13) + viewVe.getMeasuredHeight());
                        }
                        c cVar3 = cVar;
                        float measuredHeight = f13 + viewVe.getMeasuredHeight() + fMax + ((ViewGroup.MarginLayoutParams) cVar3).bottomMargin;
                        float measuredHeight2 = f14 - ((viewVe.getMeasuredHeight() + fMax) + ((ViewGroup.MarginLayoutParams) cVar3).topMargin);
                        if (z11) {
                            veVar.c(viewVe, 0, i27, 0, i17);
                        } else {
                            veVar.c(viewVe, 0, i17, 0, i27);
                        }
                        f10 = measuredHeight;
                        f11 = measuredHeight2;
                    }
                    i15 = i16 + 1;
                }
                int i28 = veVar.sp;
                paddingLeft += i28;
                i19 -= i28;
            } else {
                f10 = paddingTop;
                i14 = i18 - paddingBottom;
            }
            f11 = i14;
            f12 = 0.0f;
            float fMax2 = Math.max(f12, 0.0f);
            i15 = 0;
            while (i15 < veVar.f18929x) {
                int i29 = veVar.f18930z + i15;
                viewVe = ve(i29);
                if (viewVe != null) {
                    i16 = i15;
                } else {
                    i16 = i15;
                }
                i15 = i16 + 1;
            }
            int i210 = veVar.sp;
            paddingLeft += i210;
            i19 -= i210;
        }
    }

    private void c(Canvas canvas, boolean z10, boolean z11) {
        int i10;
        int i11;
        int right;
        int left;
        int paddingLeft = getPaddingLeft();
        int iMax = Math.max(0, (getWidth() - getPaddingRight()) - paddingLeft);
        int size = this.f18900m.size();
        for (int i12 = 0; i12 < size; i12++) {
            ve veVar = this.f18900m.get(i12);
            for (int i13 = 0; i13 < veVar.f18929x; i13++) {
                int i14 = veVar.f18930z + i13;
                View viewVe = ve(i14);
                if (viewVe != null && viewVe.getVisibility() != 8) {
                    c cVar = (c) viewVe.getLayoutParams();
                    if (uj(i14, i13)) {
                        if (z10) {
                            left = viewVe.getRight() + ((ViewGroup.MarginLayoutParams) cVar).rightMargin;
                        } else {
                            left = (viewVe.getLeft() - ((ViewGroup.MarginLayoutParams) cVar).leftMargin) - this.f18902t;
                        }
                        c(canvas, left, veVar.tt, veVar.sp);
                    }
                    if (i13 == veVar.f18929x - 1 && (this.f18898da & 4) > 0) {
                        if (z10) {
                            right = (viewVe.getLeft() - ((ViewGroup.MarginLayoutParams) cVar).leftMargin) - this.f18902t;
                        } else {
                            right = viewVe.getRight() + ((ViewGroup.MarginLayoutParams) cVar).rightMargin;
                        }
                        c(canvas, right, veVar.tt, veVar.sp);
                    }
                }
            }
            if (uj(i12)) {
                if (z11) {
                    i11 = veVar.uj;
                } else {
                    i11 = veVar.tt - this.sl;
                }
                tt(canvas, paddingLeft, i11, iMax);
            }
            if (a(i12) && (this.f18899i & 4) > 0) {
                if (z11) {
                    i10 = veVar.tt - this.sl;
                } else {
                    i10 = veVar.uj;
                }
                tt(canvas, paddingLeft, i10, iMax);
            }
        }
    }

    private void c(Canvas canvas, int i10, int i11, int i12) {
        Drawable drawable = this.f18904x;
        if (drawable == null) {
            return;
        }
        drawable.setBounds(i10, i11, this.f18902t + i10, i12 + i11);
        this.f18904x.draw(canvas);
    }

    @Override // com.byazt.qa.c
    public int c(View view, int i10, int i11) {
        int i12;
        int i13;
        if (c()) {
            i12 = uj(i10, i11) ? 0 + this.f18902t : 0;
            if ((this.f18898da & 4) <= 0) {
                return i12;
            }
            i13 = this.f18902t;
        } else {
            i12 = uj(i10, i11) ? 0 + this.sl : 0;
            if ((this.f18899i & 4) <= 0) {
                return i12;
            }
            i13 = this.sl;
        }
        return i12 + i13;
    }

    @Override // com.byazt.qa.c
    public void c(ve veVar) {
        if (c()) {
            if ((this.f18898da & 4) > 0) {
                int i10 = veVar.f18926n;
                int i11 = this.f18902t;
                veVar.f18926n = i10 + i11;
                veVar.f18921a += i11;
                return;
            }
            return;
        }
        if ((this.f18899i & 4) > 0) {
            int i12 = veVar.f18926n;
            int i13 = this.sl;
            veVar.f18926n = i12 + i13;
            veVar.f18921a += i13;
        }
    }

    @Override // com.byazt.qa.c
    public int c(int i10, int i11, int i12) {
        return ViewGroup.getChildMeasureSpec(i10, i11, i12);
    }

    @Override // com.byazt.qa.c
    public void c(View view, int i10, int i11, ve veVar) {
        if (uj(i10, i11)) {
            if (c()) {
                int i12 = veVar.f18926n;
                int i13 = this.f18902t;
                veVar.f18926n = i12 + i13;
                veVar.f18921a += i13;
                return;
            }
            int i14 = veVar.f18926n;
            int i15 = this.sl;
            veVar.f18926n = i14 + i15;
            veVar.f18921a += i15;
        }
    }

    public void c(com.byazt.xj.ve veVar) {
        this.nu = veVar;
    }
}
