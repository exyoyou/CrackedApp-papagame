package com.byazt.an;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.Scroller;
import com.byazt.nr.m;
import java.lang.annotation.ElementType;
import java.lang.annotation.Inherited;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1270, 1877})
public class ViewPager extends ViewGroup {
    public int aw;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public uj f11619b;
    public boolean bm;
    public VelocityTracker bx;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11620c;
    public float cu;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f11621d;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public int f11622da;
    public int eo;
    public boolean gr;
    public float gt;
    public int gu;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f11623h;

    /* JADX INFO: renamed from: hd, reason: collision with root package name */
    public int f11624hd;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Rect f11625i;

    /* JADX INFO: renamed from: ic, reason: collision with root package name */
    public int f11626ic;
    public n kk;
    public uj kp;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public EdgeEffect f11627l;
    public boolean lo;
    public EdgeEffect lr;
    public boolean lt;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f11628m;
    public boolean md;
    public int my;

    /* JADX INFO: renamed from: nb, reason: collision with root package name */
    public float f11629nb;
    public Drawable nu;
    public float or;
    public ArrayList<View> os;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f11630p;
    public int pf;
    public boolean pu;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public List<Object> f11631q;
    public float qp;
    public int qy;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final Runnable f11632r;
    public int rh;
    public float rl;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f11633s;
    public Parcelable sl;
    public final ArrayList<tt> sp;
    public int sv;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public ClassLoader f11634t;
    public List<uj> tk;
    public int to;
    public int tx;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Scroller f11635u;
    public int uj;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f11636v;
    public com.byazt.an.tt ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final tt f11637x;
    public boolean yp;
    public boolean yv;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public a f11638z;

    /* JADX INFO: renamed from: zb, reason: collision with root package name */
    public int f11639zb;
    public boolean zm;
    public static final int[] tt = {R.attr.layout_gravity};

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final Comparator<tt> f11618n = new Comparator<tt>() { // from class: com.byazt.an.ViewPager.1
        @Override // java.util.Comparator
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public int compare(tt ttVar, tt ttVar2) {
            return ttVar.tt - ttVar2.tt;
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Interpolator f11617a = new Interpolator() { // from class: com.byazt.an.ViewPager.2
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f10) {
            float f11 = f10 - 1.0f;
            return (f11 * f11 * f11 * f11 * f11) + 1.0f;
        }
    };
    public static final x oz = new x();

    @com.byazt.zqa.c(c = {0, 1, 1270, 1283})
    private class a extends DataSetObserver {
        public a() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            ViewPager.this.tt();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            ViewPager.this.tt();
        }
    }

    @Target({ElementType.TYPE})
    @Inherited
    @Retention(RetentionPolicy.RUNTIME)
    public @interface c {
    }

    public interface n {
        void c(View view, float f10);
    }

    @com.byazt.zqa.c(c = {0, 1, 1270, 1393})
    public static class sp extends com.byazt.an.c {
        public static final Parcelable.Creator<sp> CREATOR = new Parcelable.ClassLoaderCreator<sp>() { // from class: com.byazt.an.ViewPager.sp.1
            @Override // android.os.Parcelable.ClassLoaderCreator
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public sp createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new sp(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public sp createFromParcel(Parcel parcel) {
                return new sp(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public sp[] newArray(int i10) {
                return new sp[i10];
            }
        };
        public int tt;
        public ClassLoader uj;
        public Parcelable ve;

        public sp(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "FragmentPager.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " position=" + this.tt + "}";
        }

        @Override // com.byazt.an.c, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.tt);
            parcel.writeParcelable(this.ve, i10);
        }

        public sp(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            classLoader = classLoader == null ? getClass().getClassLoader() : classLoader;
            this.tt = parcel.readInt();
            this.ve = parcel.readParcelable(classLoader);
            this.uj = classLoader;
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 1270, 1386})
    static class tt {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Object f11642c;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public float f11643n;
        public int tt;
        public float uj;
        public boolean ve;
    }

    public interface uj {
        void c(int i10, float f10, int i11);

        void t(int i10);

        void u(int i10);
    }

    @com.byazt.zqa.c(c = {0, 1, 1270, 1286})
    static class x implements Comparator<View> {
        @Override // java.util.Comparator
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public int compare(View view, View view2) {
            ve veVar = (ve) view.getLayoutParams();
            ve veVar2 = (ve) view2.getLayoutParams();
            boolean z10 = veVar.f11645c;
            if (z10 != veVar2.f11645c) {
                return z10 ? 1 : -1;
            }
            return veVar.f11646n - veVar2.f11646n;
        }
    }

    public ViewPager(Context context) {
        super(context);
        this.sp = new ArrayList<>();
        this.f11637x = new tt();
        this.f11625i = new Rect();
        this.f11622da = -1;
        this.sl = null;
        this.f11634t = null;
        this.gt = -3.4028235E38f;
        this.rl = Float.MAX_VALUE;
        this.f11630p = 1;
        this.pf = -1;
        this.lo = true;
        this.pu = false;
        this.f11632r = new Runnable() { // from class: com.byazt.an.ViewPager.3
            @Override // java.lang.Runnable
            public void run() {
                ViewPager.this.setScrollState(0);
                ViewPager.this.ve();
            }
        };
        this.f11633s = 0;
        c();
    }

    private void a() {
        int i10 = 0;
        while (i10 < getChildCount()) {
            if (!((ve) getChildAt(i10).getLayoutParams()).f11645c) {
                removeViewAt(i10);
                i10--;
            }
            i10++;
        }
    }

    private void da() {
        this.md = false;
        this.f11623h = false;
        VelocityTracker velocityTracker = this.bx;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.bx = null;
        }
    }

    private int getClientWidth() {
        return (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
    }

    private tt i() {
        int i10;
        int clientWidth = getClientWidth();
        float f10 = 0.0f;
        float scrollX = clientWidth > 0 ? getScrollX() / clientWidth : 0.0f;
        float f11 = clientWidth > 0 ? this.f11628m / clientWidth : 0.0f;
        tt ttVar = null;
        float f12 = 0.0f;
        int i11 = -1;
        int i12 = 0;
        boolean z10 = true;
        while (i12 < this.sp.size()) {
            tt ttVar2 = this.sp.get(i12);
            if (!z10 && ttVar2.tt != (i10 = i11 + 1)) {
                ttVar2 = this.f11637x;
                ttVar2.f11643n = f10 + f12 + f11;
                ttVar2.tt = i10;
                ttVar2.uj = this.ve.c(i10);
                i12--;
            }
            tt ttVar3 = ttVar2;
            f10 = ttVar3.f11643n;
            float f13 = ttVar3.uj + f10 + f11;
            if (!z10 && scrollX < f10) {
                return ttVar;
            }
            if (scrollX < f13 || i12 == this.sp.size() - 1) {
                return ttVar3;
            }
            int i13 = ttVar3.tt;
            float f14 = ttVar3.uj;
            i12++;
            z10 = false;
            i11 = i13;
            f12 = f14;
            ttVar = ttVar3;
        }
        return ttVar;
    }

    private void n(int i10) {
        uj ujVar = this.kp;
        if (ujVar != null) {
            ujVar.t(i10);
        }
        List<uj> list = this.tk;
        if (list != null) {
            int size = list.size();
            for (int i11 = 0; i11 < size; i11++) {
                uj ujVar2 = this.tk.get(i11);
                if (ujVar2 != null) {
                    ujVar2.t(i10);
                }
            }
        }
        uj ujVar3 = this.f11619b;
        if (ujVar3 != null) {
            ujVar3.t(i10);
        }
    }

    private void setScrollingCacheEnabled(boolean z10) {
        if (this.zm != z10) {
            this.zm = z10;
        }
    }

    private void sp() {
        if (this.f11636v != 0) {
            ArrayList<View> arrayList = this.os;
            if (arrayList == null) {
                this.os = new ArrayList<>();
            } else {
                arrayList.clear();
            }
            int childCount = getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                this.os.add(getChildAt(i10));
            }
            Collections.sort(this.os, oz);
        }
    }

    private boolean uj(int i10) {
        if (this.sp.size() == 0) {
            if (this.lo) {
                return false;
            }
            this.lt = false;
            c(0, 0.0f, 0);
            if (this.lt) {
                return false;
            }
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        }
        tt ttVarI = i();
        int clientWidth = getClientWidth();
        int i11 = this.f11628m;
        int i12 = clientWidth + i11;
        float f10 = clientWidth;
        int i13 = ttVarI.tt;
        float f11 = ((i10 / f10) - ttVarI.f11643n) / (ttVarI.uj + (i11 / f10));
        this.lt = false;
        c(i13, f11, (int) (i12 * f11));
        if (this.lt) {
            return true;
        }
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
    }

    private boolean x() {
        this.pf = -1;
        da();
        this.lr.onRelease();
        this.f11627l.onRelease();
        return this.lr.isFinished() || this.f11627l.isFinished();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i10, int i11) {
        tt ttVarC;
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            for (int i12 = 0; i12 < getChildCount(); i12++) {
                View childAt = getChildAt(i12);
                if (childAt.getVisibility() == 0 && (ttVarC = c(childAt)) != null && ttVarC.tt == this.uj) {
                    childAt.addFocusables(arrayList, i10, i11);
                }
            }
        }
        if ((descendantFocusability != 262144 || size == arrayList.size()) && isFocusable()) {
            if ((i11 & 1) == 1 && isInTouchMode() && !isFocusableInTouchMode()) {
                return;
            }
            arrayList.add(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addTouchables(ArrayList<View> arrayList) {
        tt ttVarC;
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() == 0 && (ttVarC = c(childAt)) != null && ttVarC.tt == this.uj) {
                childAt.addTouchables(arrayList);
            }
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        if (!checkLayoutParams(layoutParams)) {
            layoutParams = generateLayoutParams(layoutParams);
        }
        ve veVar = (ve) layoutParams;
        boolean zVe = veVar.f11645c | ve(view);
        veVar.f11645c = zVe;
        if (!this.gr) {
            super.addView(view, i10, layoutParams);
        } else {
            if (zVe) {
                throw new IllegalStateException("Cannot add pager decor view during layout");
            }
            veVar.uj = true;
            addViewInLayout(view, i10, layoutParams);
        }
    }

    public void c() {
        setWillNotDraw(false);
        setDescendantFocusability(262144);
        setFocusable(true);
        Context context = getContext();
        this.f11635u = new Scroller(context, f11617a);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        float f10 = context.getResources().getDisplayMetrics().density;
        this.f11639zb = viewConfiguration.getScaledPagingTouchSlop();
        this.sv = (int) (400.0f * f10);
        this.aw = viewConfiguration.getScaledMaximumFlingVelocity();
        this.lr = new EdgeEffect(context);
        this.f11627l = new EdgeEffect(context);
        this.f11626ic = (int) (25.0f * f10);
        this.f11624hd = (int) (2.0f * f10);
        this.f11621d = (int) (f10 * 16.0f);
    }

    @Override // android.view.View
    public boolean canScrollHorizontally(int i10) {
        if (this.ve == null) {
            return false;
        }
        int clientWidth = getClientWidth();
        int scrollX = getScrollX();
        if (i10 < 0) {
            return scrollX > ((int) (((float) clientWidth) * this.gt));
        }
        return i10 > 0 && scrollX < ((int) (((float) clientWidth) * this.rl));
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof ve) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public void computeScroll() {
        this.yp = true;
        if (this.f11635u.isFinished() || !this.f11635u.computeScrollOffset()) {
            c(true);
            return;
        }
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        int currX = this.f11635u.getCurrX();
        int currY = this.f11635u.getCurrY();
        if (scrollX != currX || scrollY != currY) {
            scrollTo(currX, currY);
            if (!uj(currX)) {
                this.f11635u.abortAnimation();
                scrollTo(0, currY);
            }
        }
        postInvalidateOnAnimation();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || c(keyEvent);
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        tt ttVarC;
        if (accessibilityEvent.getEventType() == 4096) {
            return super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        }
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() == 0 && (ttVarC = c(childAt)) != null && ttVarC.tt == this.uj && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        com.byazt.an.tt ttVar;
        super.draw(canvas);
        int overScrollMode = getOverScrollMode();
        boolean zDraw = false;
        if (overScrollMode == 0 || (overScrollMode == 1 && (ttVar = this.ve) != null && ttVar.c() > 1)) {
            if (!this.lr.isFinished()) {
                int iSave = canvas.save();
                int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
                int width = getWidth();
                canvas.rotate(270.0f);
                canvas.translate((-height) + getPaddingTop(), this.gt * width);
                this.lr.setSize(height, width);
                zDraw = false | this.lr.draw(canvas);
                canvas.restoreToCount(iSave);
            }
            if (!this.f11627l.isFinished()) {
                int iSave2 = canvas.save();
                int width2 = getWidth();
                int height2 = (getHeight() - getPaddingTop()) - getPaddingBottom();
                canvas.rotate(90.0f);
                canvas.translate(-getPaddingTop(), (-(this.rl + 1.0f)) * width2);
                this.f11627l.setSize(height2, width2);
                zDraw |= this.f11627l.draw(canvas);
                canvas.restoreToCount(iSave2);
            }
        } else {
            this.lr.finish();
            this.f11627l.finish();
        }
        if (zDraw) {
            postInvalidateOnAnimation();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.nu;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        drawable.setState(getDrawableState());
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ve();
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return generateDefaultLayoutParams();
    }

    public com.byazt.an.tt getAdapter() {
        return this.ve;
    }

    @Override // android.view.ViewGroup
    public int getChildDrawingOrder(int i10, int i11) {
        if (this.f11636v == 2) {
            i11 = (i10 - 1) - i11;
        }
        return ((ve) this.os.get(i11).getLayoutParams()).f11644a;
    }

    public int getCurrentItem() {
        return this.uj;
    }

    public int getOffscreenPageLimit() {
        return this.f11630p;
    }

    public int getPageMargin() {
        return this.f11628m;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.lo = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        removeCallbacks(this.f11632r);
        Scroller scroller = this.f11635u;
        if (scroller != null && !scroller.isFinished()) {
            this.f11635u.abortAnimation();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        int i10;
        float f10;
        super.onDraw(canvas);
        if (this.f11628m <= 0 || this.nu == null || this.sp.size() <= 0 || this.ve == null) {
            return;
        }
        int scrollX = getScrollX();
        int width = getWidth();
        float f11 = width;
        float f12 = this.f11628m / f11;
        int i11 = 0;
        tt ttVar = this.sp.get(0);
        float f13 = ttVar.f11643n;
        int size = this.sp.size();
        int i12 = ttVar.tt;
        int i13 = this.sp.get(size - 1).tt;
        while (i12 < i13) {
            while (true) {
                i10 = ttVar.tt;
                if (i12 <= i10 || i11 >= size) {
                    break;
                }
                i11++;
                ttVar = this.sp.get(i11);
            }
            if (i12 == i10) {
                float f14 = ttVar.f11643n;
                float f15 = ttVar.uj;
                f10 = (f14 + f15) * f11;
                f13 = f14 + f15 + f12;
            } else {
                float fC = this.ve.c(i12);
                f10 = (f13 + fC) * f11;
                f13 += fC + f12;
            }
            if (this.f11628m + f10 > scrollX) {
                this.nu.setBounds(Math.round(f10), this.rh, Math.round(this.f11628m + f10), this.my);
                this.nu.draw(canvas);
            }
            if (f10 > scrollX + width) {
                return;
            }
            i12++;
            f12 = f12;
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int iFindPointerIndex;
        int action = motionEvent.getAction() & 255;
        if (action == 3 || action == 1) {
            x();
            return false;
        }
        if (action != 0) {
            if (this.md) {
                return true;
            }
            if (this.f11623h) {
                return false;
            }
        }
        if (action == 0) {
            float x10 = motionEvent.getX();
            this.qp = x10;
            this.or = x10;
            float y10 = motionEvent.getY();
            this.f11629nb = y10;
            this.cu = y10;
            this.pf = motionEvent.getPointerId(0);
            this.f11623h = false;
            this.yp = true;
            this.f11635u.computeScrollOffset();
            if (this.f11633s != 2 || Math.abs(this.f11635u.getFinalX() - this.f11635u.getCurrX()) <= this.f11624hd) {
                c(false);
                this.md = false;
            } else {
                this.f11635u.abortAnimation();
                this.yv = false;
                ve();
                this.md = true;
                ve(true);
                setScrollState(1);
            }
        } else if (action == 2) {
            int i10 = this.pf;
            if (i10 != -1 && (iFindPointerIndex = motionEvent.findPointerIndex(i10)) != -1) {
                float x11 = motionEvent.getX(iFindPointerIndex);
                float f10 = x11 - this.or;
                float fAbs = Math.abs(f10);
                float y11 = motionEvent.getY(iFindPointerIndex);
                float fAbs2 = Math.abs(y11 - this.f11629nb);
                if (f10 != 0.0f && !c(this.or, f10) && c(this, false, (int) f10, (int) x11, (int) y11)) {
                    this.or = x11;
                    this.cu = y11;
                    this.f11623h = true;
                    return false;
                }
                int i11 = this.f11639zb;
                if (fAbs > i11 && fAbs * 0.5f > fAbs2) {
                    this.md = true;
                    ve(true);
                    setScrollState(1);
                    this.or = f10 > 0.0f ? this.qp + this.f11639zb : this.qp - this.f11639zb;
                    this.cu = y11;
                    setScrollingCacheEnabled(true);
                } else if (fAbs2 > i11) {
                    this.f11623h = true;
                }
                if (this.md && tt(x11)) {
                    postInvalidateOnAnimation();
                }
            }
        } else if (action == 6) {
            c(motionEvent);
        }
        if (this.bx == null) {
            this.bx = VelocityTracker.obtain();
        }
        this.bx.addMovement(motionEvent);
        return this.md;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0071  */
    /* JADX WARN: Code duplicated, block: B:24:0x0075  */
    /* JADX WARN: Code duplicated, block: B:26:0x0079  */
    /* JADX WARN: Code duplicated, block: B:27:0x007b  */
    /* JADX WARN: Code duplicated, block: B:28:0x0088  */
    /* JADX WARN: Code duplicated, block: B:29:0x008e  */
    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        boolean z11;
        tt ttVarC;
        int iMax;
        int measuredWidth;
        int iMax2;
        int measuredHeight;
        int childCount = getChildCount();
        int i14 = i12 - i10;
        int i15 = i13 - i11;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        int scrollX = getScrollX();
        int i16 = 0;
        for (int i17 = 0; i17 < childCount; i17++) {
            View childAt = getChildAt(i17);
            if (childAt.getVisibility() != 8) {
                ve veVar = (ve) childAt.getLayoutParams();
                if (veVar.f11645c) {
                    int i18 = veVar.tt;
                    int i19 = i18 & 7;
                    int i20 = i18 & 112;
                    if (i19 != 1) {
                        if (i19 == 3) {
                            measuredWidth = childAt.getMeasuredWidth() + paddingLeft;
                        } else if (i19 != 5) {
                            measuredWidth = paddingLeft;
                        } else {
                            iMax = (i14 - paddingRight) - childAt.getMeasuredWidth();
                            paddingRight += childAt.getMeasuredWidth();
                        }
                        if (i20 != 16) {
                            if (i20 != 48) {
                                measuredHeight = childAt.getMeasuredHeight() + paddingTop;
                            } else if (i20 != 80) {
                                measuredHeight = paddingTop;
                            } else {
                                iMax2 = (i15 - paddingBottom) - childAt.getMeasuredHeight();
                                paddingBottom += childAt.getMeasuredHeight();
                            }
                            int i21 = paddingLeft + scrollX;
                            childAt.layout(i21, paddingTop, childAt.getMeasuredWidth() + i21, paddingTop + childAt.getMeasuredHeight());
                            i16++;
                            paddingTop = measuredHeight;
                            paddingLeft = measuredWidth;
                        } else {
                            iMax2 = Math.max((i15 - childAt.getMeasuredHeight()) / 2, paddingTop);
                        }
                        int i22 = iMax2;
                        measuredHeight = paddingTop;
                        paddingTop = i22;
                        int i23 = paddingLeft + scrollX;
                        childAt.layout(i23, paddingTop, childAt.getMeasuredWidth() + i23, paddingTop + childAt.getMeasuredHeight());
                        i16++;
                        paddingTop = measuredHeight;
                        paddingLeft = measuredWidth;
                    } else {
                        iMax = Math.max((i14 - childAt.getMeasuredWidth()) / 2, paddingLeft);
                    }
                    int i24 = iMax;
                    measuredWidth = paddingLeft;
                    paddingLeft = i24;
                    if (i20 != 16) {
                        if (i20 != 48) {
                            measuredHeight = childAt.getMeasuredHeight() + paddingTop;
                        } else if (i20 != 80) {
                            measuredHeight = paddingTop;
                        } else {
                            iMax2 = (i15 - paddingBottom) - childAt.getMeasuredHeight();
                            paddingBottom += childAt.getMeasuredHeight();
                        }
                        int i25 = paddingLeft + scrollX;
                        childAt.layout(i25, paddingTop, childAt.getMeasuredWidth() + i25, paddingTop + childAt.getMeasuredHeight());
                        i16++;
                        paddingTop = measuredHeight;
                        paddingLeft = measuredWidth;
                    } else {
                        iMax2 = Math.max((i15 - childAt.getMeasuredHeight()) / 2, paddingTop);
                    }
                    int i26 = iMax2;
                    measuredHeight = paddingTop;
                    paddingTop = i26;
                    int i27 = paddingLeft + scrollX;
                    childAt.layout(i27, paddingTop, childAt.getMeasuredWidth() + i27, paddingTop + childAt.getMeasuredHeight());
                    i16++;
                    paddingTop = measuredHeight;
                    paddingLeft = measuredWidth;
                }
            }
        }
        int i28 = (i14 - paddingLeft) - paddingRight;
        for (int i29 = 0; i29 < childCount; i29++) {
            View childAt2 = getChildAt(i29);
            if (childAt2.getVisibility() != 8) {
                ve veVar2 = (ve) childAt2.getLayoutParams();
                if (!veVar2.f11645c && (ttVarC = c(childAt2)) != null) {
                    float f10 = i28;
                    int i30 = ((int) (ttVarC.f11643n * f10)) + paddingLeft;
                    if (veVar2.uj) {
                        veVar2.uj = false;
                        childAt2.measure(View.MeasureSpec.makeMeasureSpec((int) (f10 * veVar2.ve), 1073741824), View.MeasureSpec.makeMeasureSpec((i15 - paddingTop) - paddingBottom, 1073741824));
                    }
                    childAt2.layout(i30, paddingTop, childAt2.getMeasuredWidth() + i30, childAt2.getMeasuredHeight() + paddingTop);
                }
            }
        }
        this.rh = paddingTop;
        this.my = i15 - paddingBottom;
        this.to = i16;
        if (this.lo) {
            z11 = false;
            c(this.uj, false, 0, false);
        } else {
            z11 = false;
        }
        this.lo = z11;
    }

    /* JADX WARN: Code duplicated, block: B:32:0x0082 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:34:0x0085  */
    /* JADX WARN: Code duplicated, block: B:36:0x0089  */
    /* JADX WARN: Code duplicated, block: B:39:0x008e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:41:0x0091  */
    /* JADX WARN: Code duplicated, block: B:42:0x0093  */
    /* JADX WARN: Code duplicated, block: B:45:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:46:0x00a8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:47:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:66:0x00af A[SYNTHETIC] */
    @Override // android.view.View
    public void onMeasure(int i10, int i11) {
        ve veVar;
        ve veVar2;
        int i12;
        int i13;
        int i14;
        setMeasuredDimension(View.getDefaultSize(0, i10), View.getDefaultSize(0, i11));
        int measuredWidth = getMeasuredWidth();
        this.eo = Math.min(measuredWidth / 10, this.f11621d);
        int paddingLeft = (measuredWidth - getPaddingLeft()) - getPaddingRight();
        int measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
        int childCount = getChildCount();
        int i15 = 0;
        while (true) {
            boolean z10 = true;
            int i16 = 1073741824;
            if (i15 >= childCount) {
                break;
            }
            View childAt = getChildAt(i15);
            if (childAt.getVisibility() != 8 && (veVar2 = (ve) childAt.getLayoutParams()) != null && veVar2.f11645c) {
                int i17 = veVar2.tt;
                int i18 = i17 & 7;
                int i19 = i17 & 112;
                boolean z11 = i19 == 48 || i19 == 80;
                if (i18 != 3 && i18 != 5) {
                    z10 = false;
                }
                int i20 = Integer.MIN_VALUE;
                if (z11) {
                    i20 = 1073741824;
                } else {
                    i12 = z10 ? 1073741824 : Integer.MIN_VALUE;
                    i13 = ((ViewGroup.LayoutParams) veVar2).width;
                    if (i13 != -2) {
                        if (i13 == -1) {
                            i13 = paddingLeft;
                        }
                        i20 = 1073741824;
                    } else {
                        i13 = paddingLeft;
                    }
                    i14 = ((ViewGroup.LayoutParams) veVar2).height;
                    if (i14 != -2) {
                        i14 = measuredHeight;
                        i16 = i12;
                    } else if (i14 == -1) {
                        i14 = measuredHeight;
                    }
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(i13, i20), View.MeasureSpec.makeMeasureSpec(i14, i16));
                    if (z11) {
                        measuredHeight -= childAt.getMeasuredHeight();
                    } else if (z10) {
                        paddingLeft -= childAt.getMeasuredWidth();
                    }
                }
                i13 = ((ViewGroup.LayoutParams) veVar2).width;
                if (i13 != -2) {
                    if (i13 == -1) {
                        i13 = paddingLeft;
                    }
                    i20 = 1073741824;
                } else {
                    i13 = paddingLeft;
                }
                i14 = ((ViewGroup.LayoutParams) veVar2).height;
                if (i14 != -2) {
                    i14 = measuredHeight;
                    i16 = i12;
                } else if (i14 == -1) {
                    i14 = measuredHeight;
                }
                childAt.measure(View.MeasureSpec.makeMeasureSpec(i13, i20), View.MeasureSpec.makeMeasureSpec(i14, i16));
                if (z11) {
                    measuredHeight -= childAt.getMeasuredHeight();
                } else if (z10) {
                    paddingLeft -= childAt.getMeasuredWidth();
                }
            }
            i15++;
        }
        this.qy = View.MeasureSpec.makeMeasureSpec(paddingLeft, 1073741824);
        this.gu = View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824);
        this.gr = true;
        ve();
        this.gr = false;
        int childCount2 = getChildCount();
        for (int i21 = 0; i21 < childCount2; i21++) {
            View childAt2 = getChildAt(i21);
            if (childAt2.getVisibility() != 8 && ((veVar = (ve) childAt2.getLayoutParams()) == null || !veVar.f11645c)) {
                childAt2.measure(View.MeasureSpec.makeMeasureSpec((int) (paddingLeft * veVar.ve), 1073741824), this.gu);
            }
        }
    }

    @Override // android.view.ViewGroup
    public boolean onRequestFocusInDescendants(int i10, Rect rect) {
        int i11;
        int i12;
        int i13;
        tt ttVarC;
        int childCount = getChildCount();
        if ((i10 & 2) != 0) {
            i12 = childCount;
            i11 = 0;
            i13 = 1;
        } else {
            i11 = childCount - 1;
            i12 = -1;
            i13 = -1;
        }
        while (i11 != i12) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() == 0 && (ttVarC = c(childAt)) != null && ttVarC.tt == this.uj && childAt.requestFocus(i10, rect)) {
                return true;
            }
            i11 += i13;
        }
        return false;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof sp)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        sp spVar = (sp) parcelable;
        super.onRestoreInstanceState(spVar.c());
        if (this.ve != null) {
            c(spVar.tt, false, true);
            return;
        }
        this.f11622da = spVar.tt;
        this.sl = spVar.ve;
        this.f11634t = spVar.uj;
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        sp spVar = new sp(super.onSaveInstanceState());
        spVar.tt = this.uj;
        com.byazt.an.tt ttVar = this.ve;
        if (ttVar != null) {
            spVar.ve = ttVar.tt();
        }
        return spVar;
    }

    @Override // android.view.View
    public void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        if (i10 != i12) {
            int i14 = this.f11628m;
            c(i10, i12, i14, i14);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        com.byazt.an.tt ttVar;
        int iFindPointerIndex;
        if (this.bm) {
            return true;
        }
        boolean zX = false;
        if ((motionEvent.getAction() == 0 && motionEvent.getEdgeFlags() != 0) || (ttVar = this.ve) == null || ttVar.c() == 0) {
            return false;
        }
        if (this.bx == null) {
            this.bx = VelocityTracker.obtain();
        }
        this.bx.addMovement(motionEvent);
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            this.f11635u.abortAnimation();
            this.yv = false;
            ve();
            float x10 = motionEvent.getX();
            this.qp = x10;
            this.or = x10;
            float y10 = motionEvent.getY();
            this.f11629nb = y10;
            this.cu = y10;
            this.pf = motionEvent.getPointerId(0);
        } else if (action != 1) {
            if (action != 2) {
                if (action != 3) {
                    if (action == 5) {
                        int actionIndex = motionEvent.getActionIndex();
                        if (actionIndex != -1) {
                            this.or = motionEvent.getX(actionIndex);
                            this.pf = motionEvent.getPointerId(actionIndex);
                        }
                    } else if (action == 6) {
                        c(motionEvent);
                        int iFindPointerIndex2 = motionEvent.findPointerIndex(this.pf);
                        if (iFindPointerIndex2 != -1) {
                            this.or = motionEvent.getX(iFindPointerIndex2);
                        }
                    }
                } else if (this.md) {
                    c(this.uj, true, 0, false);
                    zX = x();
                }
            } else if (!this.md) {
                int iFindPointerIndex3 = motionEvent.findPointerIndex(this.pf);
                if (iFindPointerIndex3 == -1) {
                    zX = x();
                } else {
                    float x11 = motionEvent.getX(iFindPointerIndex3);
                    float fAbs = Math.abs(x11 - this.or);
                    float y11 = motionEvent.getY(iFindPointerIndex3);
                    float fAbs2 = Math.abs(y11 - this.cu);
                    if (fAbs > this.f11639zb && fAbs > fAbs2) {
                        this.md = true;
                        ve(true);
                        float f10 = this.qp;
                        this.or = x11 - f10 > 0.0f ? f10 + this.f11639zb : f10 - this.f11639zb;
                        this.cu = y11;
                        setScrollState(1);
                        setScrollingCacheEnabled(true);
                        ViewParent parent = getParent();
                        if (parent != null) {
                            parent.requestDisallowInterceptTouchEvent(true);
                        }
                    }
                    if (this.md) {
                        zX = false | tt(motionEvent.getX(iFindPointerIndex));
                    }
                }
            } else if (this.md && (iFindPointerIndex = motionEvent.findPointerIndex(this.pf)) != -1) {
                zX = false | tt(motionEvent.getX(iFindPointerIndex));
            }
        } else if (this.md) {
            VelocityTracker velocityTracker = this.bx;
            velocityTracker.computeCurrentVelocity(1000, this.aw);
            int xVelocity = (int) velocityTracker.getXVelocity(this.pf);
            this.yv = true;
            int clientWidth = getClientWidth();
            int scrollX = getScrollX();
            tt ttVarI = i();
            float f11 = clientWidth;
            float f12 = this.f11628m / f11;
            int i10 = ttVarI.tt;
            float f13 = ((scrollX / f11) - ttVarI.f11643n) / (ttVarI.uj + f12);
            int iFindPointerIndex4 = motionEvent.findPointerIndex(this.pf);
            if (iFindPointerIndex4 != -1) {
                c(c(i10, f13, xVelocity, (int) (motionEvent.getX(iFindPointerIndex4) - this.qp)), true, true, xVelocity);
                zX = x();
            }
        }
        if (zX) {
            postInvalidateOnAnimation();
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        if (this.gr) {
            removeViewInLayout(view);
        } else {
            super.removeView(view);
        }
    }

    public void setAdapter(com.byazt.an.tt ttVar) {
        com.byazt.an.tt ttVar2 = this.ve;
        if (ttVar2 != null) {
            ttVar2.c((DataSetObserver) null);
            for (int i10 = 0; i10 < this.sp.size(); i10++) {
                tt ttVar3 = this.sp.get(i10);
                this.ve.c((ViewGroup) this, ttVar3.tt, ttVar3.f11642c);
            }
            this.sp.clear();
            a();
            this.uj = 0;
            scrollTo(0, 0);
        }
        this.ve = ttVar;
        this.f11620c = 0;
        if (ttVar != null) {
            if (this.f11638z == null) {
                this.f11638z = new a();
            }
            this.ve.c((DataSetObserver) this.f11638z);
            this.yv = false;
            boolean z10 = this.lo;
            this.lo = true;
            this.f11620c = this.ve.c();
            int i11 = this.f11622da;
            if (i11 >= 0) {
                c(i11, false, true);
                this.f11622da = -1;
                this.sl = null;
                this.f11634t = null;
            } else if (z10) {
                requestLayout();
            } else {
                ve();
            }
        }
        List<Object> list = this.f11631q;
        if (list == null || list.isEmpty()) {
            return;
        }
        int size = this.f11631q.size();
        for (int i12 = 0; i12 < size; i12++) {
            this.f11631q.get(i12);
        }
    }

    public void setCurrentItem(int i10) {
        this.yv = false;
        c(i10, !this.lo, false);
    }

    public void setOffscreenPageLimit(int i10) {
        if (i10 <= 0) {
            m.tt("ViewPager", "Requested offscreen page limit " + i10 + " too small; defaulting to 1");
            i10 = 1;
        }
        if (i10 != this.f11630p) {
            this.f11630p = i10;
            ve();
        }
    }

    @Deprecated
    public void setOnPageChangeListener(uj ujVar) {
        this.kp = ujVar;
    }

    public void setPageMargin(int i10) {
        int i11 = this.f11628m;
        this.f11628m = i10;
        int width = getWidth();
        c(width, width, i10, i11);
        requestLayout();
    }

    public void setPageMarginDrawable(Drawable drawable) {
        this.nu = drawable;
        if (drawable != null) {
            refreshDrawableState();
        }
        setWillNotDraw(drawable == null);
        invalidate();
    }

    public void setScrollState(int i10) {
        if (this.f11633s == i10) {
            return;
        }
        this.f11633s = i10;
        if (this.kk != null) {
            tt(i10 != 0);
        }
        a(i10);
    }

    public void setScroller(Scroller scroller) {
        this.f11635u = scroller;
    }

    public void tt() {
        int iC = this.ve.c();
        this.f11620c = iC;
        boolean z10 = this.sp.size() < (this.f11630p * 2) + 1 && this.sp.size() < iC;
        int iMax = this.uj;
        int i10 = 0;
        while (i10 < this.sp.size()) {
            tt ttVar = this.sp.get(i10);
            int iC2 = this.ve.c(ttVar.f11642c);
            if (iC2 != -1) {
                if (iC2 == -2) {
                    this.sp.remove(i10);
                    i10--;
                    this.ve.c((ViewGroup) this, ttVar.tt, ttVar.f11642c);
                    int i11 = this.uj;
                    if (i11 == ttVar.tt) {
                        iMax = Math.max(0, Math.min(i11, iC - 1));
                    }
                } else {
                    int i12 = ttVar.tt;
                    if (i12 != iC2) {
                        if (i12 == this.uj) {
                            iMax = iC2;
                        }
                        ttVar.tt = iC2;
                    }
                }
                z10 = true;
            }
            i10++;
        }
        Collections.sort(this.sp, f11618n);
        if (z10) {
            int childCount = getChildCount();
            for (int i13 = 0; i13 < childCount; i13++) {
                ve veVar = (ve) getChildAt(i13).getLayoutParams();
                if (!veVar.f11645c) {
                    veVar.ve = 0.0f;
                }
            }
            c(iMax, false, true);
            requestLayout();
        }
    }

    public void ve() {
        c(this.uj);
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.nu;
    }

    @com.byazt.zqa.c(c = {0, 1, 1270, 1438})
    public static class ve extends ViewGroup.LayoutParams {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f11644a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f11645c;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public int f11646n;
        public int tt;
        public boolean uj;
        public float ve;

        public ve() {
            super(-1, -1);
            this.ve = 0.0f;
        }

        public ve(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.ve = 0.0f;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ViewPager.tt);
            this.tt = typedArrayObtainStyledAttributes.getInteger(0, 48);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private static boolean ve(View view) {
        return view.getClass().getAnnotation(c.class) != null;
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ve(getContext(), attributeSet);
    }

    private void ve(boolean z10) {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(z10);
        }
    }

    public void setPageMarginDrawable(int i10) {
        setPageMarginDrawable(getContext().getResources().getDrawable(i10));
    }

    private void a(int i10) {
        uj ujVar = this.kp;
        if (ujVar != null) {
            ujVar.u(i10);
        }
        List<uj> list = this.tk;
        if (list != null) {
            int size = list.size();
            for (int i11 = 0; i11 < size; i11++) {
                uj ujVar2 = this.tk.get(i11);
                if (ujVar2 != null) {
                    ujVar2.u(i10);
                }
            }
        }
        uj ujVar3 = this.f11619b;
        if (ujVar3 != null) {
            ujVar3.u(i10);
        }
    }

    /* JADX WARN: Code duplicated, block: B:39:0x00bb  */
    public boolean ve(int i10) {
        boolean z10;
        View viewFindFocus = findFocus();
        boolean zUj = false;
        if (viewFindFocus == this) {
            viewFindFocus = null;
        } else if (viewFindFocus != null) {
            ViewParent parent = viewFindFocus.getParent();
            while (true) {
                if (!(parent instanceof ViewGroup)) {
                    z10 = false;
                    break;
                }
                if (parent == this) {
                    z10 = true;
                    break;
                }
                parent = parent.getParent();
            }
            if (!z10) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(viewFindFocus.getClass().getSimpleName());
                for (ViewParent parent2 = viewFindFocus.getParent(); parent2 instanceof ViewGroup; parent2 = parent2.getParent()) {
                    sb2.append(" => ");
                    sb2.append(parent2.getClass().getSimpleName());
                }
                m.uj("ViewPager", "arrowScroll tried to find focus based on non-child current focused view " + sb2.toString());
                viewFindFocus = null;
            }
        }
        View viewFindNextFocus = FocusFinder.getInstance().findNextFocus(this, viewFindFocus, i10);
        if (viewFindNextFocus == null || viewFindNextFocus == viewFindFocus) {
            if (i10 == 17 || i10 == 1) {
                zUj = uj();
            } else if (i10 == 66 || i10 == 2) {
                zUj = n();
            }
        } else if (i10 == 17) {
            int i11 = c(this.f11625i, viewFindNextFocus).left;
            int i12 = c(this.f11625i, viewFindFocus).left;
            if (viewFindFocus != null && i11 >= i12) {
                zUj = uj();
            } else {
                zUj = viewFindNextFocus.requestFocus();
            }
        } else if (i10 == 66) {
            int i13 = c(this.f11625i, viewFindNextFocus).left;
            int i14 = c(this.f11625i, viewFindFocus).left;
            if (viewFindFocus == null || i13 > i14) {
                zUj = viewFindNextFocus.requestFocus();
            } else {
                zUj = n();
            }
        }
        if (zUj) {
            playSoundEffect(SoundEffectConstants.getContantForFocusDirection(i10));
        }
        return zUj;
    }

    public boolean n() {
        com.byazt.an.tt ttVar = this.ve;
        if (ttVar == null || this.uj >= ttVar.c() - 1) {
            return false;
        }
        c(this.uj + 1, true);
        return true;
    }

    public void c(int i10, boolean z10) {
        this.yv = false;
        c(i10, z10, false);
    }

    public boolean uj() {
        int i10 = this.uj;
        if (i10 <= 0) {
            return false;
        }
        c(i10 - 1, true);
        return true;
    }

    public void c(int i10, boolean z10, boolean z11) {
        c(i10, z10, z11, 0);
    }

    public void c(int i10, boolean z10, boolean z11, int i11) {
        com.byazt.an.tt ttVar = this.ve;
        if (ttVar != null && ttVar.c() > 0) {
            if (!z11 && this.uj == i10 && this.sp.size() != 0) {
                setScrollingCacheEnabled(false);
                return;
            }
            if (i10 < 0) {
                i10 = 0;
            } else if (i10 >= this.ve.c()) {
                i10 = this.ve.c() - 1;
            }
            int i12 = this.f11630p;
            int i13 = this.uj;
            if (i10 > i13 + i12 || i10 < i13 - i12) {
                for (int i14 = 0; i14 < this.sp.size(); i14++) {
                    this.sp.get(i14).ve = true;
                }
            }
            boolean z12 = this.uj != i10;
            if (this.lo) {
                this.uj = i10;
                if (z12) {
                    n(i10);
                }
                requestLayout();
                return;
            }
            c(i10);
            c(i10, z10, i11, z12);
            return;
        }
        setScrollingCacheEnabled(false);
    }

    public tt tt(View view) {
        while (true) {
            Object parent = view.getParent();
            if (parent != this) {
                if (parent == null || !(parent instanceof View)) {
                    return null;
                }
                view = (View) parent;
            } else {
                return c(view);
            }
        }
    }

    public tt tt(int i10) {
        for (int i11 = 0; i11 < this.sp.size(); i11++) {
            tt ttVar = this.sp.get(i11);
            if (ttVar.tt == i10) {
                return ttVar;
            }
        }
        return null;
    }

    private void tt(int i10, float f10, int i11) {
        uj ujVar = this.kp;
        if (ujVar != null) {
            ujVar.c(i10, f10, i11);
        }
        List<uj> list = this.tk;
        if (list != null) {
            int size = list.size();
            for (int i12 = 0; i12 < size; i12++) {
                uj ujVar2 = this.tk.get(i12);
                if (ujVar2 != null) {
                    ujVar2.c(i10, f10, i11);
                }
            }
        }
        uj ujVar3 = this.f11619b;
        if (ujVar3 != null) {
            ujVar3.c(i10, f10, i11);
        }
    }

    private void c(int i10, boolean z10, int i11, boolean z11) {
        tt ttVarTt = tt(i10);
        int clientWidth = ttVarTt != null ? (int) (getClientWidth() * Math.max(this.gt, Math.min(ttVarTt.f11643n, this.rl))) : 0;
        if (z10) {
            c(clientWidth, 0, i11);
            if (z11) {
                n(i10);
                return;
            }
            return;
        }
        if (z11) {
            n(i10);
        }
        c(false);
        scrollTo(clientWidth, 0);
        uj(clientWidth);
    }

    private void tt(boolean z10) {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            getChildAt(i10).setLayerType(z10 ? this.tx : 0, null);
        }
    }

    private boolean tt(float f10) {
        boolean z10;
        boolean z11;
        float f11 = this.or - f10;
        this.or = f10;
        float scrollX = getScrollX() + f11;
        float clientWidth = getClientWidth();
        float f12 = this.gt * clientWidth;
        float f13 = this.rl * clientWidth;
        boolean z12 = false;
        tt ttVar = this.sp.get(0);
        ArrayList<tt> arrayList = this.sp;
        tt ttVar2 = arrayList.get(arrayList.size() - 1);
        if (ttVar.tt != 0) {
            f12 = ttVar.f11643n * clientWidth;
            z10 = false;
        } else {
            z10 = true;
        }
        if (ttVar2.tt != this.ve.c() - 1) {
            f13 = ttVar2.f11643n * clientWidth;
            z11 = false;
        } else {
            z11 = true;
        }
        if (scrollX < f12) {
            if (z10) {
                this.lr.onPull(Math.abs(f12 - scrollX) / clientWidth);
                z12 = true;
            }
            scrollX = f12;
        } else if (scrollX > f13) {
            if (z11) {
                this.f11627l.onPull(Math.abs(scrollX - f13) / clientWidth);
                z12 = true;
            }
            scrollX = f13;
        }
        int i10 = (int) scrollX;
        this.or += scrollX - i10;
        scrollTo(i10, getScrollY());
        uj(i10);
        return z12;
    }

    public void c(uj ujVar) {
        if (this.tk == null) {
            this.tk = new ArrayList();
        }
        this.tk.add(ujVar);
    }

    public void c(boolean z10, n nVar) {
        c(z10, nVar, 2);
    }

    public void c(boolean z10, n nVar, int i10) {
        boolean z11 = nVar != null;
        boolean z12 = z11 != (this.kk != null);
        this.kk = nVar;
        setChildrenDrawingOrderEnabled(z11);
        if (z11) {
            this.f11636v = z10 ? 2 : 1;
            this.tx = i10;
        } else {
            this.f11636v = 0;
        }
        if (z12) {
            ve();
        }
    }

    public float c(float f10) {
        return (float) Math.sin((f10 - 0.5f) * 0.47123894f);
    }

    public void c(int i10, int i11, int i12) {
        int scrollX;
        int iAbs;
        if (getChildCount() == 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        Scroller scroller = this.f11635u;
        if ((scroller == null || scroller.isFinished()) ? false : true) {
            scrollX = this.yp ? this.f11635u.getCurrX() : this.f11635u.getStartX();
            this.f11635u.abortAnimation();
            setScrollingCacheEnabled(false);
        } else {
            scrollX = getScrollX();
        }
        int i13 = scrollX;
        int scrollY = getScrollY();
        int i14 = i10 - i13;
        int i15 = i11 - scrollY;
        if (i14 == 0 && i15 == 0) {
            c(false);
            ve();
            setScrollState(0);
            return;
        }
        setScrollingCacheEnabled(true);
        setScrollState(2);
        int clientWidth = getClientWidth();
        int i16 = clientWidth / 2;
        float f10 = clientWidth;
        float f11 = i16;
        float fC = f11 + (c(Math.min(1.0f, (Math.abs(i14) * 1.0f) / f10)) * f11);
        int iAbs2 = Math.abs(i12);
        if (iAbs2 > 0) {
            iAbs = Math.round(Math.abs(fC / iAbs2) * 1000.0f) * 4;
        } else {
            iAbs = (int) (((Math.abs(i14) / ((f10 * this.ve.c(this.uj)) + this.f11628m)) + 1.0f) * 100.0f);
        }
        int iMin = Math.min(iAbs, 600);
        this.yp = false;
        this.f11635u.startScroll(i13, scrollY, i14, i15, iMin);
        postInvalidateOnAnimation();
    }

    public tt c(int i10, int i11) {
        tt ttVar = new tt();
        ttVar.tt = i10;
        ttVar.f11642c = this.ve.c((ViewGroup) this, i10);
        ttVar.uj = this.ve.c(i10);
        if (i11 >= 0 && i11 < this.sp.size()) {
            this.sp.add(i11, ttVar);
        } else {
            this.sp.add(ttVar);
        }
        return ttVar;
    }

    /* JADX WARN: Code duplicated, block: B:63:0x00f1 A[PHI: r7 r10 r15
      0x00f1: PHI (r7v6 int) = (r7v5 int), (r7v4 int), (r7v9 int) binds: [B:61:0x00e6, B:58:0x00d0, B:52:0x00ba] A[DONT_GENERATE, DONT_INLINE]
      0x00f1: PHI (r10v9 int) = (r10v1 int), (r10v8 int), (r10v12 int) binds: [B:61:0x00e6, B:58:0x00d0, B:52:0x00ba] A[DONT_GENERATE, DONT_INLINE]
      0x00f1: PHI (r15v7 float) = (r15v5 float), (r15v6 float), (r15v4 float) binds: [B:61:0x00e6, B:58:0x00d0, B:52:0x00ba] A[DONT_GENERATE, DONT_INLINE]] */
    public void c(int i10) {
        tt ttVarTt;
        String hexString;
        tt ttVarC;
        tt ttVarC2;
        tt ttVar;
        int i11 = this.uj;
        if (i11 != i10) {
            ttVarTt = tt(i11);
            this.uj = i10;
        } else {
            ttVarTt = null;
        }
        if (this.ve == null) {
            sp();
            return;
        }
        if (this.yv) {
            sp();
            return;
        }
        if (getWindowToken() == null) {
            return;
        }
        int i12 = this.f11630p;
        int iMax = Math.max(0, this.uj - i12);
        int iC = this.ve.c();
        int iMin = Math.min(iC - 1, this.uj + i12);
        if (iC == this.f11620c) {
            int i13 = 0;
            while (true) {
                if (i13 < this.sp.size()) {
                    ttVarC = this.sp.get(i13);
                    int i14 = ttVarC.tt;
                    int i15 = this.uj;
                    if (i14 >= i15) {
                        if (i14 != i15) {
                            break;
                        } else {
                            break;
                        }
                    }
                    i13++;
                }
                ttVarC = null;
                break;
            }
            if (ttVarC == null && iC > 0) {
                ttVarC = c(this.uj, i13);
            }
            if (ttVarC != null) {
                int i16 = i13 - 1;
                tt ttVar2 = i16 >= 0 ? this.sp.get(i16) : null;
                int clientWidth = getClientWidth();
                float paddingLeft = clientWidth <= 0 ? 0.0f : (2.0f - ttVarC.uj) + (getPaddingLeft() / clientWidth);
                float f10 = 0.0f;
                for (int i17 = this.uj - 1; i17 >= 0; i17--) {
                    if (f10 >= paddingLeft && i17 < iMax) {
                        if (ttVar2 == null) {
                            break;
                        }
                        if (i17 == ttVar2.tt && !ttVar2.ve) {
                            this.sp.remove(i16);
                            this.ve.c((ViewGroup) this, i17, ttVar2.f11642c);
                            i16--;
                            i13--;
                            if (i16 >= 0) {
                                ttVar = this.sp.get(i16);
                            } else {
                                ttVar = null;
                            }
                            ttVar2 = ttVar;
                        }
                    } else {
                        if (ttVar2 != null && i17 == ttVar2.tt) {
                            f10 += ttVar2.uj;
                            i16--;
                            if (i16 >= 0) {
                                ttVar = this.sp.get(i16);
                            } else {
                                ttVar = null;
                            }
                        } else {
                            f10 += c(i17, i16 + 1).uj;
                            i13++;
                            if (i16 >= 0) {
                                ttVar = this.sp.get(i16);
                            } else {
                                ttVar = null;
                            }
                        }
                        ttVar2 = ttVar;
                    }
                }
                float f11 = ttVarC.uj;
                int i18 = i13 + 1;
                if (f11 < 2.0f) {
                    tt ttVar3 = i18 < this.sp.size() ? this.sp.get(i18) : null;
                    float paddingRight = clientWidth <= 0 ? 0.0f : (getPaddingRight() / clientWidth) + 2.0f;
                    int i19 = this.uj;
                    while (true) {
                        i19++;
                        if (i19 >= iC) {
                            break;
                        }
                        if (f11 >= paddingRight && i19 > iMin) {
                            if (ttVar3 == null) {
                                break;
                            }
                            if (i19 == ttVar3.tt && !ttVar3.ve) {
                                this.sp.remove(i18);
                                this.ve.c((ViewGroup) this, i19, ttVar3.f11642c);
                                if (i18 < this.sp.size()) {
                                    ttVar3 = this.sp.get(i18);
                                }
                            }
                        } else if (ttVar3 != null && i19 == ttVar3.tt) {
                            f11 += ttVar3.uj;
                            i18++;
                            if (i18 < this.sp.size()) {
                                ttVar3 = this.sp.get(i18);
                            }
                        } else {
                            tt ttVarC3 = c(i19, i18);
                            i18++;
                            f11 += ttVarC3.uj;
                            ttVar3 = i18 < this.sp.size() ? this.sp.get(i18) : null;
                        }
                    }
                }
                c(ttVarC, i13, ttVarTt);
            }
            int childCount = getChildCount();
            for (int i20 = 0; i20 < childCount; i20++) {
                View childAt = getChildAt(i20);
                ve veVar = (ve) childAt.getLayoutParams();
                veVar.f11644a = i20;
                if (!veVar.f11645c && veVar.ve == 0.0f && (ttVarC2 = c(childAt)) != null) {
                    veVar.ve = ttVarC2.uj;
                    veVar.f11646n = ttVarC2.tt;
                }
            }
            sp();
            if (hasFocus()) {
                View viewFindFocus = findFocus();
                tt ttVarTt2 = viewFindFocus != null ? tt(viewFindFocus) : null;
                if (ttVarTt2 == null || ttVarTt2.tt != this.uj) {
                    for (int i21 = 0; i21 < getChildCount(); i21++) {
                        View childAt2 = getChildAt(i21);
                        tt ttVarC4 = c(childAt2);
                        if (ttVarC4 != null && ttVarC4.tt == this.uj && childAt2.requestFocus(2)) {
                            return;
                        }
                    }
                    return;
                }
                return;
            }
            return;
        }
        try {
            hexString = getResources().getResourceName(getId());
        } catch (Resources.NotFoundException unused) {
            hexString = Integer.toHexString(getId());
        }
        throw new IllegalStateException("The application's PagerAdapter changed the adapter's contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: " + this.f11620c + ", found: " + iC + " Pager id: " + hexString + " Pager class: " + getClass() + " Problematic adapter: " + this.ve.getClass());
    }

    private void c(tt ttVar, int i10, tt ttVar2) {
        int i11;
        int i12;
        tt ttVar3;
        tt ttVar4;
        int iC = this.ve.c();
        int clientWidth = getClientWidth();
        float f10 = clientWidth > 0 ? this.f11628m / clientWidth : 0.0f;
        if (ttVar2 != null) {
            int i13 = ttVar2.tt;
            int i14 = ttVar.tt;
            if (i13 < i14) {
                float fC = ttVar2.f11643n + ttVar2.uj + f10;
                int i15 = i13 + 1;
                int i16 = 0;
                while (i15 <= ttVar.tt && i16 < this.sp.size()) {
                    tt ttVar5 = this.sp.get(i16);
                    while (true) {
                        ttVar4 = ttVar5;
                        if (i15 <= ttVar4.tt || i16 >= this.sp.size() - 1) {
                            break;
                        }
                        i16++;
                        ttVar5 = this.sp.get(i16);
                    }
                    while (i15 < ttVar4.tt) {
                        fC += this.ve.c(i15) + f10;
                        i15++;
                    }
                    ttVar4.f11643n = fC;
                    fC += ttVar4.uj + f10;
                    i15++;
                }
            } else if (i13 > i14) {
                int size = this.sp.size() - 1;
                float fC2 = ttVar2.f11643n;
                while (true) {
                    i13--;
                    if (i13 < ttVar.tt || size < 0) {
                        break;
                    }
                    tt ttVar6 = this.sp.get(size);
                    while (true) {
                        ttVar3 = ttVar6;
                        if (i13 >= ttVar3.tt || size <= 0) {
                            break;
                        }
                        size--;
                        ttVar6 = this.sp.get(size);
                    }
                    while (i13 > ttVar3.tt) {
                        fC2 -= this.ve.c(i13) + f10;
                        i13--;
                    }
                    fC2 -= ttVar3.uj + f10;
                    ttVar3.f11643n = fC2;
                }
            }
        }
        int size2 = this.sp.size();
        float fC3 = ttVar.f11643n;
        int i17 = ttVar.tt;
        int i18 = i17 - 1;
        this.gt = i17 == 0 ? fC3 : -3.4028235E38f;
        int i19 = iC - 1;
        this.rl = i17 == i19 ? (ttVar.uj + fC3) - 1.0f : Float.MAX_VALUE;
        int i20 = i10 - 1;
        while (i20 >= 0) {
            tt ttVar7 = this.sp.get(i20);
            while (true) {
                i12 = ttVar7.tt;
                if (i18 <= i12) {
                    break;
                }
                fC3 -= this.ve.c(i18) + f10;
                i18--;
            }
            fC3 -= ttVar7.uj + f10;
            ttVar7.f11643n = fC3;
            if (i12 == 0) {
                this.gt = fC3;
            }
            i20--;
            i18--;
        }
        float fC4 = ttVar.f11643n + ttVar.uj + f10;
        int i21 = ttVar.tt + 1;
        int i22 = i10 + 1;
        while (i22 < size2) {
            tt ttVar8 = this.sp.get(i22);
            while (true) {
                i11 = ttVar8.tt;
                if (i21 >= i11) {
                    break;
                }
                fC4 += this.ve.c(i21) + f10;
                i21++;
            }
            if (i11 == i19) {
                this.rl = (ttVar8.uj + fC4) - 1.0f;
            }
            ttVar8.f11643n = fC4;
            fC4 += ttVar8.uj + f10;
            i22++;
            i21++;
        }
        this.pu = false;
    }

    public tt c(View view) {
        for (int i10 = 0; i10 < this.sp.size(); i10++) {
            tt ttVar = this.sp.get(i10);
            if (this.ve.c(view, ttVar.f11642c)) {
                return ttVar;
            }
        }
        return null;
    }

    private void c(int i10, int i11, int i12, int i13) {
        if (i11 > 0 && !this.sp.isEmpty()) {
            if (!this.f11635u.isFinished()) {
                this.f11635u.setFinalX(getCurrentItem() * getClientWidth());
                return;
            } else {
                scrollTo((int) ((getScrollX() / (((i11 - getPaddingLeft()) - getPaddingRight()) + i13)) * (((i10 - getPaddingLeft()) - getPaddingRight()) + i12)), getScrollY());
                return;
            }
        }
        tt ttVarTt = tt(this.uj);
        int iMin = (int) ((ttVarTt != null ? Math.min(ttVarTt.f11643n, this.rl) : 0.0f) * ((i10 - getPaddingLeft()) - getPaddingRight()));
        if (iMin != getScrollX()) {
            c(false);
            scrollTo(iMin, getScrollY());
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0063  */
    public void c(int i10, float f10, int i11) {
        int iMax;
        int width;
        int left;
        if (this.to > 0) {
            int scrollX = getScrollX();
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            int width2 = getWidth();
            int childCount = getChildCount();
            for (int i12 = 0; i12 < childCount; i12++) {
                View childAt = getChildAt(i12);
                ve veVar = (ve) childAt.getLayoutParams();
                if (veVar.f11645c) {
                    int i13 = veVar.tt & 7;
                    if (i13 == 1) {
                        iMax = Math.max((width2 - childAt.getMeasuredWidth()) / 2, paddingLeft);
                    } else {
                        if (i13 == 3) {
                            width = childAt.getWidth() + paddingLeft;
                        } else if (i13 != 5) {
                            width = paddingLeft;
                        } else {
                            iMax = (width2 - paddingRight) - childAt.getMeasuredWidth();
                            paddingRight += childAt.getMeasuredWidth();
                        }
                        left = (paddingLeft + scrollX) - childAt.getLeft();
                        if (left != 0) {
                            childAt.offsetLeftAndRight(left);
                        }
                        paddingLeft = width;
                    }
                    int i14 = iMax;
                    width = paddingLeft;
                    paddingLeft = i14;
                    left = (paddingLeft + scrollX) - childAt.getLeft();
                    if (left != 0) {
                        childAt.offsetLeftAndRight(left);
                    }
                    paddingLeft = width;
                }
            }
        }
        tt(i10, f10, i11);
        if (this.kk != null) {
            int scrollX2 = getScrollX();
            int childCount2 = getChildCount();
            for (int i15 = 0; i15 < childCount2; i15++) {
                View childAt2 = getChildAt(i15);
                if (!((ve) childAt2.getLayoutParams()).f11645c) {
                    this.kk.c(childAt2, (childAt2.getLeft() - scrollX2) / getClientWidth());
                }
            }
        }
        this.lt = true;
    }

    private void c(boolean z10) {
        boolean z11 = this.f11633s == 2;
        if (z11) {
            setScrollingCacheEnabled(false);
            if (!this.f11635u.isFinished()) {
                this.f11635u.abortAnimation();
                int scrollX = getScrollX();
                int scrollY = getScrollY();
                int currX = this.f11635u.getCurrX();
                int currY = this.f11635u.getCurrY();
                if (scrollX != currX || scrollY != currY) {
                    scrollTo(currX, currY);
                    if (currX != scrollX) {
                        uj(currX);
                    }
                }
            }
        }
        this.yv = false;
        for (int i10 = 0; i10 < this.sp.size(); i10++) {
            tt ttVar = this.sp.get(i10);
            if (ttVar.ve) {
                ttVar.ve = false;
                z11 = true;
            }
        }
        if (z11) {
            if (z10) {
                postOnAnimation(this.f11632r);
            } else {
                this.f11632r.run();
            }
        }
    }

    private boolean c(float f10, float f11) {
        if (f10 >= this.eo || f11 <= 0.0f) {
            return f10 > ((float) (getWidth() - this.eo)) && f11 < 0.0f;
        }
        return true;
    }

    private int c(int i10, float f10, int i11, int i12) {
        if (Math.abs(i12) <= this.f11626ic || Math.abs(i11) <= this.sv) {
            i10 += (int) (f10 + (i10 >= this.uj ? 0.4f : 0.6f));
        } else if (i11 <= 0) {
            i10++;
        }
        if (this.sp.size() <= 0) {
            return i10;
        }
        tt ttVar = this.sp.get(0);
        ArrayList<tt> arrayList = this.sp;
        return Math.max(ttVar.tt, Math.min(i10, arrayList.get(arrayList.size() - 1).tt));
    }

    private void c(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.pf) {
            int i10 = actionIndex == 0 ? 1 : 0;
            this.or = motionEvent.getX(i10);
            this.pf = motionEvent.getPointerId(i10);
            VelocityTracker velocityTracker = this.bx;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    public boolean c(View view, boolean z10, int i10, int i11, int i12) {
        int i13;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                int i14 = i11 + scrollX;
                if (i14 >= childAt.getLeft() && i14 < childAt.getRight() && (i13 = i12 + scrollY) >= childAt.getTop() && i13 < childAt.getBottom() && c(childAt, true, i10, i14 - childAt.getLeft(), i13 - childAt.getTop())) {
                    return true;
                }
            }
        }
        return z10 && view.canScrollHorizontally(-i10);
    }

    public boolean c(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 0) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode == 21) {
                if (keyEvent.hasModifiers(2)) {
                    return uj();
                }
                return ve(17);
            }
            if (keyCode == 22) {
                if (keyEvent.hasModifiers(2)) {
                    return n();
                }
                return ve(66);
            }
            if (keyCode == 61) {
                if (keyEvent.hasNoModifiers()) {
                    return ve(2);
                }
                if (keyEvent.hasModifiers(1)) {
                    return ve(1);
                }
            }
        }
        return false;
    }

    private Rect c(Rect rect, View view) {
        if (rect == null) {
            rect = new Rect();
        }
        if (view == null) {
            rect.set(0, 0, 0, 0);
            return rect;
        }
        rect.left = view.getLeft();
        rect.right = view.getRight();
        rect.top = view.getTop();
        rect.bottom = view.getBottom();
        ViewParent parent = view.getParent();
        while ((parent instanceof ViewGroup) && parent != this) {
            ViewGroup viewGroup = (ViewGroup) parent;
            rect.left += viewGroup.getLeft();
            rect.right += viewGroup.getRight();
            rect.top += viewGroup.getTop();
            rect.bottom += viewGroup.getBottom();
            parent = viewGroup.getParent();
        }
        return rect;
    }
}
