package net.lucode.hackware.magicindicator.buildins.commonnavigator;

import android.content.Context;
import android.database.DataSetObserver;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import java.util.ArrayList;
import java.util.List;
import net.lucode.hackware.magicindicator.R;
import net.lucode.hackware.magicindicator.c;
import tc.b;
import tc.d;

/* JADX INFO: loaded from: classes.dex */
public class CommonNavigator extends FrameLayout implements rc.a, c.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private HorizontalScrollView f94789b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private LinearLayout f94790c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private LinearLayout f94791d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private tc.c f94792e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private tc.a f94793f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private c f94794g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f94795h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f94796i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f94797j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f94798k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f94799l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f94800m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f94801n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f94802o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f94803p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f94804q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private List<uc.a> f94805r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private DataSetObserver f94806s;

    class a extends DataSetObserver {
        a() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            CommonNavigator.this.f94794g.m(CommonNavigator.this.f94793f.a());
            CommonNavigator.this.k();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
        }
    }

    public CommonNavigator(Context context) {
        super(context);
        this.f94797j = 0.5f;
        this.f94798k = true;
        this.f94799l = true;
        this.f94804q = true;
        this.f94805r = new ArrayList();
        this.f94806s = new a();
        c cVar = new c();
        this.f94794g = cVar;
        cVar.k(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        removeAllViews();
        View viewInflate = this.f94795h ? LayoutInflater.from(getContext()).inflate(R.layout.pager_navigator_layout_no_scroll, this) : LayoutInflater.from(getContext()).inflate(R.layout.pager_navigator_layout, this);
        this.f94789b = (HorizontalScrollView) viewInflate.findViewById(R.id.scroll_view);
        LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.title_container);
        this.f94790c = linearLayout;
        linearLayout.setPadding(this.f94801n, 0, this.f94800m, 0);
        LinearLayout linearLayout2 = (LinearLayout) viewInflate.findViewById(R.id.indicator_container);
        this.f94791d = linearLayout2;
        if (this.f94802o) {
            linearLayout2.getParent().bringChildToFront(this.f94791d);
        }
        l();
    }

    private void l() {
        LinearLayout.LayoutParams layoutParams;
        int iG = this.f94794g.g();
        for (int i10 = 0; i10 < iG; i10++) {
            Object objC = this.f94793f.c(getContext(), i10);
            if (objC instanceof View) {
                View view = (View) objC;
                if (this.f94795h) {
                    layoutParams = new LinearLayout.LayoutParams(0, -1);
                    layoutParams.weight = this.f94793f.d(getContext(), i10);
                } else {
                    layoutParams = new LinearLayout.LayoutParams(-2, -1);
                }
                this.f94790c.addView(view, layoutParams);
            }
        }
        tc.a aVar = this.f94793f;
        if (aVar != null) {
            tc.c cVarB = aVar.b(getContext());
            this.f94792e = cVarB;
            if (cVarB instanceof View) {
                this.f94791d.addView((View) this.f94792e, new FrameLayout.LayoutParams(-1, -1));
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void t() {
        this.f94805r.clear();
        int iG = this.f94794g.g();
        for (int i10 = 0; i10 < iG; i10++) {
            uc.a aVar = new uc.a();
            View childAt = this.f94790c.getChildAt(i10);
            if (childAt != 0) {
                aVar.f97492a = childAt.getLeft();
                aVar.f97493b = childAt.getTop();
                aVar.f97494c = childAt.getRight();
                int bottom = childAt.getBottom();
                aVar.f97495d = bottom;
                if (childAt instanceof b) {
                    b bVar = (b) childAt;
                    aVar.f97496e = bVar.getContentLeft();
                    aVar.f97497f = bVar.getContentTop();
                    aVar.f97498g = bVar.getContentRight();
                    aVar.f97499h = bVar.getContentBottom();
                } else {
                    aVar.f97496e = aVar.f97492a;
                    aVar.f97497f = aVar.f97493b;
                    aVar.f97498g = aVar.f97494c;
                    aVar.f97499h = bottom;
                }
            }
            this.f94805r.add(aVar);
        }
    }

    @Override // net.lucode.hackware.magicindicator.c.a
    public void a(int i10, int i11, float f10, boolean z10) {
        LinearLayout linearLayout = this.f94790c;
        if (linearLayout == null) {
            return;
        }
        KeyEvent.Callback childAt = linearLayout.getChildAt(i10);
        if (childAt instanceof d) {
            ((d) childAt).a(i10, i11, f10, z10);
        }
    }

    @Override // net.lucode.hackware.magicindicator.c.a
    public void b(int i10, int i11) {
        LinearLayout linearLayout = this.f94790c;
        if (linearLayout == null) {
            return;
        }
        KeyEvent.Callback childAt = linearLayout.getChildAt(i10);
        if (childAt instanceof d) {
            ((d) childAt).b(i10, i11);
        }
    }

    @Override // net.lucode.hackware.magicindicator.c.a
    public void c(int i10, int i11) {
        LinearLayout linearLayout = this.f94790c;
        if (linearLayout == null) {
            return;
        }
        KeyEvent.Callback childAt = linearLayout.getChildAt(i10);
        if (childAt instanceof d) {
            ((d) childAt).c(i10, i11);
        }
        if (this.f94795h || this.f94799l || this.f94789b == null || this.f94805r.size() <= 0) {
            return;
        }
        uc.a aVar = this.f94805r.get(Math.min(this.f94805r.size() - 1, i10));
        if (this.f94796i) {
            float fD = aVar.d() - (this.f94789b.getWidth() * this.f94797j);
            if (this.f94798k) {
                this.f94789b.smoothScrollTo((int) fD, 0);
                return;
            } else {
                this.f94789b.scrollTo((int) fD, 0);
                return;
            }
        }
        int scrollX = this.f94789b.getScrollX();
        int i12 = aVar.f97492a;
        if (scrollX > i12) {
            if (this.f94798k) {
                this.f94789b.smoothScrollTo(i12, 0);
                return;
            } else {
                this.f94789b.scrollTo(i12, 0);
                return;
            }
        }
        int scrollX2 = this.f94789b.getScrollX() + getWidth();
        int i13 = aVar.f97494c;
        if (scrollX2 < i13) {
            if (this.f94798k) {
                this.f94789b.smoothScrollTo(i13 - getWidth(), 0);
            } else {
                this.f94789b.scrollTo(i13 - getWidth(), 0);
            }
        }
    }

    @Override // net.lucode.hackware.magicindicator.c.a
    public void d(int i10, int i11, float f10, boolean z10) {
        LinearLayout linearLayout = this.f94790c;
        if (linearLayout == null) {
            return;
        }
        KeyEvent.Callback childAt = linearLayout.getChildAt(i10);
        if (childAt instanceof d) {
            ((d) childAt).d(i10, i11, f10, z10);
        }
    }

    @Override // rc.a
    public void e() {
        k();
    }

    @Override // rc.a
    public void f() {
    }

    public tc.a getAdapter() {
        return this.f94793f;
    }

    public int getLeftPadding() {
        return this.f94801n;
    }

    public tc.c getPagerIndicator() {
        return this.f94792e;
    }

    public int getRightPadding() {
        return this.f94800m;
    }

    public float getScrollPivotX() {
        return this.f94797j;
    }

    public LinearLayout getTitleContainer() {
        return this.f94790c;
    }

    public d j(int i10) {
        LinearLayout linearLayout = this.f94790c;
        if (linearLayout == null) {
            return null;
        }
        return (d) linearLayout.getChildAt(i10);
    }

    public boolean m() {
        return this.f94795h;
    }

    public boolean n() {
        return this.f94796i;
    }

    @Override // rc.a
    public void notifyDataSetChanged() {
        tc.a aVar = this.f94793f;
        if (aVar != null) {
            aVar.e();
        }
    }

    public boolean o() {
        return this.f94799l;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        if (this.f94793f != null) {
            t();
            tc.c cVar = this.f94792e;
            if (cVar != null) {
                cVar.a(this.f94805r);
            }
            if (this.f94804q && this.f94794g.f() == 0) {
                onPageSelected(this.f94794g.e());
                onPageScrolled(this.f94794g.e(), 0.0f, 0);
            }
        }
    }

    @Override // rc.a
    public void onPageScrollStateChanged(int i10) {
        if (this.f94793f != null) {
            this.f94794g.h(i10);
            tc.c cVar = this.f94792e;
            if (cVar != null) {
                cVar.onPageScrollStateChanged(i10);
            }
        }
    }

    @Override // rc.a
    public void onPageScrolled(int i10, float f10, int i11) {
        if (this.f94793f != null) {
            this.f94794g.i(i10, f10, i11);
            tc.c cVar = this.f94792e;
            if (cVar != null) {
                cVar.onPageScrolled(i10, f10, i11);
            }
            if (this.f94789b == null || this.f94805r.size() <= 0 || i10 < 0 || i10 >= this.f94805r.size() || !this.f94799l) {
                return;
            }
            int iMin = Math.min(this.f94805r.size() - 1, i10);
            int iMin2 = Math.min(this.f94805r.size() - 1, i10 + 1);
            uc.a aVar = this.f94805r.get(iMin);
            uc.a aVar2 = this.f94805r.get(iMin2);
            float fD = aVar.d() - (this.f94789b.getWidth() * this.f94797j);
            this.f94789b.scrollTo((int) (fD + (((aVar2.d() - (this.f94789b.getWidth() * this.f94797j)) - fD) * f10)), 0);
        }
    }

    @Override // rc.a
    public void onPageSelected(int i10) {
        if (this.f94793f != null) {
            this.f94794g.j(i10);
            tc.c cVar = this.f94792e;
            if (cVar != null) {
                cVar.onPageSelected(i10);
            }
        }
    }

    public boolean p() {
        return this.f94802o;
    }

    public boolean q() {
        return this.f94804q;
    }

    public boolean r() {
        return this.f94803p;
    }

    public boolean s() {
        return this.f94798k;
    }

    public void setAdapter(tc.a aVar) {
        tc.a aVar2 = this.f94793f;
        if (aVar2 == aVar) {
            return;
        }
        if (aVar2 != null) {
            aVar2.h(this.f94806s);
        }
        this.f94793f = aVar;
        if (aVar == null) {
            this.f94794g.m(0);
            k();
            return;
        }
        aVar.g(this.f94806s);
        this.f94794g.m(this.f94793f.a());
        if (this.f94790c != null) {
            this.f94793f.e();
        }
    }

    public void setAdjustMode(boolean z10) {
        this.f94795h = z10;
    }

    public void setEnablePivotScroll(boolean z10) {
        this.f94796i = z10;
    }

    public void setFollowTouch(boolean z10) {
        this.f94799l = z10;
    }

    public void setIndicatorOnTop(boolean z10) {
        this.f94802o = z10;
    }

    public void setLeftPadding(int i10) {
        this.f94801n = i10;
    }

    public void setReselectWhenLayout(boolean z10) {
        this.f94804q = z10;
    }

    public void setRightPadding(int i10) {
        this.f94800m = i10;
    }

    public void setScrollPivotX(float f10) {
        this.f94797j = f10;
    }

    public void setSkimOver(boolean z10) {
        this.f94803p = z10;
        this.f94794g.l(z10);
    }

    public void setSmoothScroll(boolean z10) {
        this.f94798k = z10;
    }
}
