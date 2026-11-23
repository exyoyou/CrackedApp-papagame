package com.byazt.kt;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.database.Observable;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.Display;
import android.view.FocusFinder;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.OverScroller;
import com.haima.hmcp.proto.GSSDK;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 166, 1394})
public class RecyclerView extends ViewGroup implements com.byazt.fq.ve {
    public static final boolean aw;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final boolean f16322c;

    /* JADX INFO: renamed from: ic, reason: collision with root package name */
    public static final Class<?>[] f16323ic;

    /* JADX INFO: renamed from: nb, reason: collision with root package name */
    public static final Interpolator f16324nb;
    public static final boolean sv;
    public static final boolean tt;
    public static final boolean uj;
    public static final boolean ve;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public com.byazt.kt.c f16325a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f16326b;
    public final Rect bm;
    public final int[] cu;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f16327d;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final Runnable f16328da;
    public int dz;
    public boolean eo;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f16329f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public float f16330g;
    public boolean gr;
    public boolean gt;
    public boolean gu;
    public uj gx;
    public final int[] gy;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final gt f16331h;

    /* JADX INFO: renamed from: hd, reason: collision with root package name */
    public final rh f16332hd;
    public float hj;
    public yp hq;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f16333i;
    public final int ir;
    public int iu;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f16334j;
    public EdgeEffect kk;
    public int kp;
    public final com.byazt.kt.yp.tt kz;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public u f16335l;
    public int lo;
    public final ArrayList<u> lr;
    public int lt;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final ArrayList<x> f16336m;

    /* JADX INFO: renamed from: ma, reason: collision with root package name */
    public int f16337ma;
    public com.byazt.kt.uj.c md;
    public com.byazt.fq.uj mm;
    public boolean my;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final m f16338n;
    public a.c nt;
    public boolean nu;
    public List<yp> ny;
    public final int[] or;
    public EdgeEffect os;
    public int oz;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public com.byazt.kt.uj f16339p;
    public final int[] pn;
    public boolean pu;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public n f16340q;
    public final List<gu> qp;
    public boolean qy;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f16341r;
    public boolean rh;
    public boolean rl;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public VelocityTracker f16342s;
    public final Rect sl;
    public com.byazt.kt.tt sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final RectF f16343t;
    public List<sl> tk;
    public final AccessibilityManager to;
    public EdgeEffect tx;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public c f16344u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public EdgeEffect f16345v;
    public Runnable vp;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final com.byazt.kt.yp f16346x;
    public boolean xd;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f16347y;
    public t yf;
    public final int[] yo;
    public i yp;
    public final qy yv;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public nu f16348z;

    /* JADX INFO: renamed from: zb, reason: collision with root package name */
    public boolean f16349zb;
    public a zm;
    public static final int[] pf = {R.attr.nestedScrollingEnabled};
    public static final int[] bx = {R.attr.clipToPadding};

    @com.byazt.zqa.c(c = {0, 1, 166, 1034})
    public static abstract class a {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public c f16356c = null;
        public ArrayList<Object> tt = new ArrayList<>();
        public long ve = 120;
        public long uj = 120;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public long f16357n = 250;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public long f16355a = 250;

        interface c {
            void c(gu guVar);
        }

        @com.byazt.zqa.c(c = {0, 1, 166, 1672})
        public static class tt {

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f16358c;
            public int tt;
            public int uj;
            public int ve;

            public tt c(gu guVar) {
                return c(guVar, 0);
            }

            public tt c(gu guVar, int i10) {
                View view = guVar.f16372c;
                this.f16358c = view.getLeft();
                this.tt = view.getTop();
                this.ve = view.getRight();
                this.uj = view.getBottom();
                return this;
            }
        }

        public long a() {
            return this.ve;
        }

        public abstract void c();

        public void c(c cVar) {
            this.f16356c = cVar;
        }

        public abstract boolean c(gu guVar, tt ttVar, tt ttVar2);

        public abstract boolean c(gu guVar, gu guVar2, tt ttVar, tt ttVar2);

        public tt da() {
            return new tt();
        }

        public final void i() {
            int size = this.tt.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.tt.get(i10);
            }
            this.tt.clear();
        }

        public long n() {
            return this.f16357n;
        }

        public boolean sp(gu guVar) {
            return true;
        }

        public abstract boolean tt();

        public abstract boolean tt(gu guVar, tt ttVar, tt ttVar2);

        public abstract void uj();

        public abstract void uj(gu guVar);

        public abstract boolean ve(gu guVar, tt ttVar, tt ttVar2);

        public long x() {
            return this.f16355a;
        }

        public static int n(gu guVar) {
            int i10 = guVar.f16373da & 14;
            if (guVar.yp()) {
                return 4;
            }
            if ((i10 & 4) != 0) {
                return i10;
            }
            int iA = guVar.a();
            int iN = guVar.n();
            return (iA == -1 || iN == -1 || iA == iN) ? i10 : i10 | 2048;
        }

        public final void a(gu guVar) {
            c cVar = this.f16356c;
            if (cVar != null) {
                cVar.c(guVar);
            }
        }

        public tt c(gt gtVar, gu guVar, int i10, List<Object> list) {
            return da().c(guVar);
        }

        public long sp() {
            return this.uj;
        }

        public tt c(gt gtVar, gu guVar) {
            return da().c(guVar);
        }

        public boolean c(gu guVar, List<Object> list) {
            return sp(guVar);
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 166, 1026})
    public static abstract class c<VH extends gu> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final tt f16359c = new tt();
        public boolean tt = false;

        public abstract int c();

        public int c(int i10) {
            return 0;
        }

        public abstract VH c(ViewGroup viewGroup, int i10);

        public abstract void c(VH vh, int i10);

        public long tt(int i10) {
            return -1L;
        }

        public final void ve() {
            this.f16359c.c();
        }

        public void c(VH vh) {
        }

        public boolean tt(VH vh) {
            return false;
        }

        public void c(VH vh, int i10, List<Object> list) {
            c(vh, i10);
        }

        public final VH tt(ViewGroup viewGroup, int i10) {
            try {
                com.byazt.km.c.c("RV CreateView");
                VH vh = (VH) c(viewGroup, i10);
                if (vh.f16372c.getParent() == null) {
                    vh.f16371a = i10;
                    com.byazt.km.c.c();
                    return vh;
                }
                throw new IllegalStateException("ViewHolder views must not be attached when created. Ensure that you are not passing 'true' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)");
            } catch (Throwable th) {
                com.byazt.km.c.c();
                throw th;
            }
        }

        public void c(ve veVar) {
            this.f16359c.registerObserver(veVar);
        }

        public final void c(int i10, Object obj) {
            this.f16359c.c(i10, 1, obj);
        }

        public final void c(int i10, int i11) {
            this.f16359c.c(i10, i11);
        }

        public final void tt(VH vh, int i10) {
            vh.ve = i10;
            if (tt()) {
                vh.f16376n = tt(i10);
            }
            vh.c(1, 519);
            com.byazt.km.c.c("RV OnBindView");
            c(vh, i10, vh.rl());
            vh.gt();
            ViewGroup.LayoutParams layoutParams = vh.f16372c.getLayoutParams();
            if (layoutParams instanceof da) {
                ((da) layoutParams).ve = true;
            }
            com.byazt.km.c.c();
        }

        public final boolean tt() {
            return this.tt;
        }

        public void tt(ve veVar) {
            this.f16359c.unregisterObserver(veVar);
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 166, GSSDK.OneInputOPData.InputOP.OP_XINPUT_THUMB_LX_VALUE})
    public static abstract class i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f16381a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final com.byazt.kt.u.tt f16382c;

        /* JADX INFO: renamed from: da, reason: collision with root package name */
        public com.byazt.kt.u f16383da;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public RecyclerView f16384i;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public int f16385m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public int f16386n;
        public boolean nu;
        public int rh;
        public com.byazt.kt.u sl;
        public int sp;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public my f16387t;
        public final com.byazt.kt.u.tt tt;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public boolean f16388u;
        public boolean uj;
        public boolean ve;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public com.byazt.kt.tt f16389x;
        public boolean yp;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        public boolean f16390z;

        public interface c {
            void tt(int i10, int i11);
        }

        public i() {
            com.byazt.kt.u.tt ttVar = new com.byazt.kt.u.tt() { // from class: com.byazt.kt.RecyclerView.i.1
                @Override // com.byazt.kt.u.tt
                public View c(int i10) {
                    return i.this.x(i10);
                }

                @Override // com.byazt.kt.u.tt
                public int tt() {
                    return i.this.qy() - i.this.yv();
                }

                @Override // com.byazt.kt.u.tt
                public int c() {
                    return i.this.gr();
                }

                @Override // com.byazt.kt.u.tt
                public int tt(View view) {
                    return i.this.i(view) + ((ViewGroup.MarginLayoutParams) ((da) view.getLayoutParams())).rightMargin;
                }

                @Override // com.byazt.kt.u.tt
                public int c(View view) {
                    return i.this.sp(view) - ((ViewGroup.MarginLayoutParams) ((da) view.getLayoutParams())).leftMargin;
                }
            };
            this.f16382c = ttVar;
            com.byazt.kt.u.tt ttVar2 = new com.byazt.kt.u.tt() { // from class: com.byazt.kt.RecyclerView.i.2
                @Override // com.byazt.kt.u.tt
                public View c(int i10) {
                    return i.this.x(i10);
                }

                @Override // com.byazt.kt.u.tt
                public int tt() {
                    return i.this.gu() - i.this.p();
                }

                @Override // com.byazt.kt.u.tt
                public int c() {
                    return i.this.zm();
                }

                @Override // com.byazt.kt.u.tt
                public int tt(View view) {
                    return i.this.da(view) + ((ViewGroup.MarginLayoutParams) ((da) view.getLayoutParams())).bottomMargin;
                }

                @Override // com.byazt.kt.u.tt
                public int c(View view) {
                    return i.this.x(view) - ((ViewGroup.MarginLayoutParams) ((da) view.getLayoutParams())).topMargin;
                }
            };
            this.tt = ttVar2;
            this.f16383da = new com.byazt.kt.u(ttVar);
            this.sl = new com.byazt.kt.u(ttVar2);
            this.f16388u = false;
            this.yp = false;
            this.f16390z = false;
            this.ve = true;
            this.uj = true;
        }

        public int a(gt gtVar) {
            return 0;
        }

        public int c(int i10, m mVar, gt gtVar) {
            return 0;
        }

        public int d() {
            return com.byazt.fq.sp.uj(this.f16384i);
        }

        public void da(int i10) {
            RecyclerView recyclerView = this.f16384i;
            if (recyclerView != null) {
                recyclerView.n(i10);
            }
        }

        public int eo() {
            return com.byazt.fq.sp.n(this.f16384i);
        }

        public int gr() {
            RecyclerView recyclerView = this.f16384i;
            if (recyclerView != null) {
                return recyclerView.getPaddingLeft();
            }
            return 0;
        }

        public int gt() {
            return this.f16386n;
        }

        public int gu() {
            return this.rh;
        }

        public int h() {
            RecyclerView recyclerView = this.f16384i;
            c adapter = recyclerView != null ? recyclerView.getAdapter() : null;
            if (adapter != null) {
                return adapter.c();
            }
            return 0;
        }

        public boolean i() {
            return false;
        }

        public boolean m() {
            my myVar = this.f16387t;
            return myVar != null && myVar.sp();
        }

        public View md() {
            View focusedChild;
            RecyclerView recyclerView = this.f16384i;
            if (recyclerView == null || (focusedChild = recyclerView.getFocusedChild()) == null || this.f16389x.ve(focusedChild)) {
                return null;
            }
            return focusedChild;
        }

        public int my() {
            com.byazt.kt.tt ttVar = this.f16389x;
            if (ttVar != null) {
                return ttVar.tt();
            }
            return 0;
        }

        public int n(gt gtVar) {
            return 0;
        }

        public int nu() {
            return com.byazt.fq.sp.c(this.f16384i);
        }

        public boolean or() {
            int iMy = my();
            for (int i10 = 0; i10 < iMy; i10++) {
                ViewGroup.LayoutParams layoutParams = x(i10).getLayoutParams();
                if (layoutParams.width < 0 && layoutParams.height < 0) {
                    return true;
                }
            }
            return false;
        }

        public int p() {
            RecyclerView recyclerView = this.f16384i;
            if (recyclerView != null) {
                return recyclerView.getPaddingBottom();
            }
            return 0;
        }

        public int qy() {
            return this.sp;
        }

        public int rh() {
            return -1;
        }

        public int rl() {
            return this.f16381a;
        }

        public void sl(int i10) {
        }

        public int sp(gt gtVar) {
            return 0;
        }

        public boolean t() {
            return false;
        }

        public int tt(int i10, m mVar, gt gtVar) {
            return 0;
        }

        public abstract da tt();

        public void u() {
            RecyclerView recyclerView = this.f16384i;
            if (recyclerView != null) {
                recyclerView.requestLayout();
            }
        }

        public int uj(gt gtVar) {
            return 0;
        }

        public int ve(gt gtVar) {
            return 0;
        }

        public int x(gt gtVar) {
            return 0;
        }

        public final boolean yp() {
            return this.uj;
        }

        public int yv() {
            RecyclerView recyclerView = this.f16384i;
            if (recyclerView != null) {
                return recyclerView.getPaddingRight();
            }
            return 0;
        }

        public boolean z() {
            RecyclerView recyclerView = this.f16384i;
            return recyclerView != null && recyclerView.f16333i;
        }

        public void zb() {
            my myVar = this.f16387t;
            if (myVar != null) {
                myVar.n();
            }
        }

        public int zm() {
            RecyclerView recyclerView = this.f16384i;
            if (recyclerView != null) {
                return recyclerView.getPaddingTop();
            }
            return 0;
        }

        public void a(int i10) {
            if (x(i10) != null) {
                this.f16389x.c(i10);
            }
        }

        public View c(View view, int i10, m mVar, gt gtVar) {
            return null;
        }

        public void i(int i10) {
            RecyclerView recyclerView = this.f16384i;
            if (recyclerView != null) {
                recyclerView.a(i10);
            }
        }

        public int n(View view) {
            Rect rect = ((da) view.getLayoutParams()).tt;
            return view.getMeasuredWidth() + rect.left + rect.right;
        }

        public int sl(View view) {
            return ((da) view.getLayoutParams()).tt.top;
        }

        public void sp(int i10) {
            c(i10, x(i10));
        }

        public int t(View view) {
            return ((da) view.getLayoutParams()).tt.bottom;
        }

        public void tt(gt gtVar) {
        }

        public View uj(View view, int i10) {
            return null;
        }

        public void ve(RecyclerView recyclerView) {
        }

        public View x(int i10) {
            com.byazt.kt.tt ttVar = this.f16389x;
            if (ttVar != null) {
                return ttVar.tt(i10);
            }
            return null;
        }

        public int yp(View view) {
            return ((da) view.getLayoutParams()).tt.right;
        }

        public void c(int i10, int i11, gt gtVar, c cVar) {
        }

        public int da(View view) {
            return view.getBottom() + t(view);
        }

        public int sp(View view) {
            return view.getLeft() - u(view);
        }

        public void tt(int i10, int i11) {
            this.sp = View.MeasureSpec.getSize(i10);
            int mode = View.MeasureSpec.getMode(i10);
            this.f16386n = mode;
            if (mode == 0 && !RecyclerView.tt) {
                this.sp = 0;
            }
            this.rh = View.MeasureSpec.getSize(i11);
            int mode2 = View.MeasureSpec.getMode(i11);
            this.f16381a = mode2;
            if (mode2 != 0 || RecyclerView.tt) {
                return;
            }
            this.rh = 0;
        }

        public int u(View view) {
            return ((da) view.getLayoutParams()).tt.left;
        }

        public void uj(int i10) {
        }

        public boolean ve() {
            return false;
        }

        public int x(View view) {
            return view.getTop() - sl(view);
        }

        public int a(View view) {
            Rect rect = ((da) view.getLayoutParams()).tt;
            return view.getMeasuredHeight() + rect.top + rect.bottom;
        }

        public void c(int i10, c cVar) {
        }

        public int i(View view) {
            return view.getRight() + yp(view);
        }

        public void n(int i10, int i11) {
            this.f16384i.setMeasuredDimension(i10, i11);
        }

        public boolean uj() {
            return false;
        }

        public void ve(int i10, int i11) {
            int iMy = my();
            if (iMy == 0) {
                this.f16384i.n(i10, i11);
                return;
            }
            int i12 = Integer.MIN_VALUE;
            int i13 = Integer.MIN_VALUE;
            int i14 = Integer.MAX_VALUE;
            int i15 = Integer.MAX_VALUE;
            for (int i16 = 0; i16 < iMy; i16++) {
                View viewX = x(i16);
                Rect rect = this.f16384i.sl;
                c(viewX, rect);
                int i17 = rect.left;
                if (i17 < i14) {
                    i14 = i17;
                }
                int i18 = rect.right;
                if (i18 > i12) {
                    i12 = i18;
                }
                int i19 = rect.top;
                if (i19 < i15) {
                    i15 = i19;
                }
                int i20 = rect.bottom;
                if (i20 > i13) {
                    i13 = i20;
                }
            }
            this.f16384i.sl.set(i14, i15, i12, i13);
            c(this.f16384i.sl, i10, i11);
        }

        public void c(RecyclerView recyclerView, m mVar) {
        }

        public int uj(View view) {
            return ((da) view.getLayoutParams()).uj();
        }

        public boolean c(da daVar) {
            return daVar != null;
        }

        public void uj(int i10, int i11) {
            View viewX = x(i10);
            if (viewX != null) {
                sp(i10);
                ve(viewX, i11);
            } else {
                throw new IllegalArgumentException("Cannot move a child from non-existing index:" + i10 + this.f16384i.toString());
            }
        }

        public boolean c(RecyclerView recyclerView, ArrayList<View> arrayList, int i10, int i11) {
            return false;
        }

        public void c(RecyclerView recyclerView) {
            if (recyclerView == null) {
                this.f16384i = null;
                this.f16389x = null;
                this.sp = 0;
                this.rh = 0;
            } else {
                this.f16384i = recyclerView;
                this.f16389x = recyclerView.sp;
                this.sp = recyclerView.getWidth();
                this.rh = recyclerView.getHeight();
            }
            this.f16386n = 1073741824;
            this.f16381a = 1073741824;
        }

        public void uj(RecyclerView recyclerView) {
            tt(View.MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(recyclerView.getHeight(), 1073741824));
        }

        public void tt(RecyclerView recyclerView) {
            this.yp = true;
            ve(recyclerView);
        }

        public void tt(RecyclerView recyclerView, m mVar) {
            this.yp = false;
            c(recyclerView, mVar);
        }

        public void tt(View view) {
            tt(view, -1);
        }

        public void ve(View view) {
            this.f16389x.c(view);
        }

        public void tt(View view, int i10) {
            c(view, i10, false);
        }

        public void ve(View view, int i10) {
            c(view, i10, (da) view.getLayoutParams());
        }

        public View tt(int i10) {
            int iMy = my();
            for (int i11 = 0; i11 < iMy; i11++) {
                View viewX = x(i11);
                gu guVarN = RecyclerView.n(viewX);
                if (guVarN != null && guVarN.uj() == i10 && !guVarN.R_() && (this.f16384i.f16331h.c() || !guVarN.nu())) {
                    return viewX;
                }
            }
            return null;
        }

        public void ve(m mVar) {
            for (int iMy = my() - 1; iMy >= 0; iMy--) {
                if (!RecyclerView.n(x(iMy)).R_()) {
                    c(iMy, mVar);
                }
            }
        }

        public void c(Rect rect, int i10, int i11) {
            n(c(i10, rect.width() + gr() + yv(), d()), c(i11, rect.height() + zm() + p(), eo()));
        }

        public void tt(m mVar) {
            int iN = mVar.n();
            for (int i10 = iN - 1; i10 >= 0; i10--) {
                View viewUj = mVar.uj(i10);
                gu guVarN = RecyclerView.n(viewUj);
                if (!guVarN.R_()) {
                    guVarN.c(false);
                    if (guVarN.rh()) {
                        this.f16384i.removeDetachedView(viewUj, false);
                    }
                    a aVar = this.f16384i.zm;
                    if (aVar != null) {
                        aVar.uj(guVarN);
                    }
                    guVarN.c(true);
                    mVar.tt(viewUj);
                }
            }
            mVar.a();
            if (iN > 0) {
                this.f16384i.invalidate();
            }
        }

        public static int c(int i10, int i11, int i12) {
            int mode = View.MeasureSpec.getMode(i10);
            int size = View.MeasureSpec.getSize(i10);
            if (mode != Integer.MIN_VALUE) {
                return mode != 1073741824 ? Math.max(i11, i12) : size;
            }
            return Math.min(size, Math.max(i11, i12));
        }

        public void c(String str) {
            RecyclerView recyclerView = this.f16384i;
            if (recyclerView != null) {
                recyclerView.c(str);
            }
        }

        public boolean c() {
            return this.f16390z;
        }

        public void c(m mVar, gt gtVar) {
            com.byazt.nr.m.uj("RecyclerView", "You must override onLayoutChildren(Recycler recycler, State state) ");
        }

        public da c(ViewGroup.LayoutParams layoutParams) {
            if (layoutParams instanceof da) {
                return new da((da) layoutParams);
            }
            return layoutParams instanceof ViewGroup.MarginLayoutParams ? new da((ViewGroup.MarginLayoutParams) layoutParams) : new da(layoutParams);
        }

        private static boolean tt(int i10, int i11, int i12) {
            int mode = View.MeasureSpec.getMode(i11);
            int size = View.MeasureSpec.getSize(i11);
            if (i12 > 0 && i10 != i12) {
                return false;
            }
            if (mode == Integer.MIN_VALUE) {
                return size >= i10;
            }
            if (mode != 0) {
                return mode == 1073741824 && size == i10;
            }
            return true;
        }

        public da c(Context context, AttributeSet attributeSet) {
            return new da(context, attributeSet);
        }

        public void c(RecyclerView recyclerView, gt gtVar, int i10) {
            com.byazt.nr.m.uj("RecyclerView", "You must override smoothScrollToPosition to support smooth scrolling");
        }

        private int[] tt(RecyclerView recyclerView, View view, Rect rect, boolean z10) {
            int[] iArr = new int[2];
            int iGr = gr();
            int iZm = zm();
            int iQy = qy() - yv();
            int iGu = gu() - p();
            int left = (view.getLeft() + rect.left) - view.getScrollX();
            int top = (view.getTop() + rect.top) - view.getScrollY();
            int iWidth = rect.width() + left;
            int iHeight = rect.height() + top;
            int i10 = left - iGr;
            int iMin = Math.min(0, i10);
            int i11 = top - iZm;
            int iMin2 = Math.min(0, i11);
            int i12 = iWidth - iQy;
            int iMax = Math.max(0, i12);
            int iMax2 = Math.max(0, iHeight - iGu);
            if (nu() != 1) {
                if (iMin == 0) {
                    iMin = Math.min(i10, iMax);
                }
                iMax = iMin;
            } else if (iMax == 0) {
                iMax = Math.max(iMin, i12);
            }
            if (iMin2 == 0) {
                iMin2 = Math.min(i11, iMax2);
            }
            iArr[0] = iMax;
            iArr[1] = iMin2;
            return iArr;
        }

        public void c(my myVar) {
            my myVar2 = this.f16387t;
            if (myVar2 != null && myVar != myVar2 && myVar2.sp()) {
                this.f16387t.n();
            }
            this.f16387t = myVar;
            myVar.c(this.f16384i, this);
        }

        public void c(View view) {
            c(view, -1);
        }

        public void c(View view, int i10) {
            c(view, i10, true);
        }

        private void c(View view, int i10, boolean z10) {
            gu guVarN = RecyclerView.n(view);
            if (!z10 && !guVarN.nu()) {
                this.f16384i.f16346x.a(guVarN);
            } else {
                this.f16384i.f16346x.n(guVarN);
            }
            da daVar = (da) view.getLayoutParams();
            if (!guVarN.sl() && !guVarN.i()) {
                if (view.getParent() == this.f16384i) {
                    int iTt = this.f16389x.tt(view);
                    if (i10 == -1) {
                        i10 = this.f16389x.tt();
                    }
                    if (iTt == -1) {
                        throw new IllegalStateException("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:" + this.f16384i.indexOfChild(view) + this.f16384i.c());
                    }
                    if (iTt != i10) {
                        this.f16384i.yp.uj(iTt, i10);
                    }
                } else {
                    this.f16389x.c(view, i10, false);
                    daVar.ve = true;
                    my myVar = this.f16387t;
                    if (myVar != null && myVar.sp()) {
                        this.f16387t.tt(view);
                    }
                }
            } else {
                if (guVarN.i()) {
                    guVarN.da();
                } else {
                    guVarN.t();
                }
                this.f16389x.c(view, i10, view.getLayoutParams(), false);
            }
            if (daVar.uj) {
                guVarN.f16372c.invalidate();
                daVar.uj = false;
            }
        }

        public void tt(my myVar) {
            if (this.f16387t == myVar) {
                this.f16387t = null;
            }
        }

        private void c(int i10, View view) {
            this.f16389x.n(i10);
        }

        public void c(View view, int i10, da daVar) {
            gu guVarN = RecyclerView.n(view);
            if (guVarN.nu()) {
                this.f16384i.f16346x.n(guVarN);
            } else {
                this.f16384i.f16346x.a(guVarN);
            }
            this.f16389x.c(view, i10, daVar, guVarN.nu());
        }

        public void c(View view, m mVar) {
            ve(view);
            mVar.c(view);
        }

        public void c(int i10, m mVar) {
            View viewX = x(i10);
            a(i10);
            mVar.c(viewX);
        }

        public void c(m mVar) {
            for (int iMy = my() - 1; iMy >= 0; iMy--) {
                c(mVar, iMy, x(iMy));
            }
        }

        private void c(m mVar, int i10, View view) {
            gu guVarN = RecyclerView.n(view);
            if (guVarN.R_()) {
                return;
            }
            if (guVarN.yp() && !guVarN.nu() && !this.f16384i.f16344u.tt()) {
                a(i10);
                mVar.tt(guVarN);
            } else {
                sp(i10);
                mVar.ve(view);
                this.f16384i.f16346x.x(guVarN);
            }
        }

        public boolean c(View view, int i10, int i11, da daVar) {
            return (!view.isLayoutRequested() && this.ve && tt(view.getWidth(), i10, ((ViewGroup.MarginLayoutParams) daVar).width) && tt(view.getHeight(), i11, ((ViewGroup.MarginLayoutParams) daVar).height)) ? false : true;
        }

        public void c(View view, int i10, int i11) {
            da daVar = (da) view.getLayoutParams();
            Rect rectI = this.f16384i.i(view);
            int i12 = i10 + rectI.left + rectI.right;
            int i13 = i11 + rectI.top + rectI.bottom;
            int iC = c(qy(), gt(), gr() + yv() + ((ViewGroup.MarginLayoutParams) daVar).leftMargin + ((ViewGroup.MarginLayoutParams) daVar).rightMargin + i12, ((ViewGroup.MarginLayoutParams) daVar).width, ve());
            int iC2 = c(gu(), rl(), zm() + p() + ((ViewGroup.MarginLayoutParams) daVar).topMargin + ((ViewGroup.MarginLayoutParams) daVar).bottomMargin + i13, ((ViewGroup.MarginLayoutParams) daVar).height, uj());
            if (c(view, iC, iC2, daVar)) {
                view.measure(iC, iC2);
            }
        }

        /* JADX WARN: Code duplicated, block: B:11:0x001a  */
        /* JADX WARN: Code duplicated, block: B:19:0x002c  */
        public static int c(int i10, int i11, int i12, int i13, boolean z10) {
            int iMax = Math.max(0, i10 - i12);
            if (z10) {
                if (i13 >= 0) {
                    i11 = 1073741824;
                } else if (i13 == -1 && (i11 == Integer.MIN_VALUE || i11 == 1073741824)) {
                    i13 = iMax;
                } else {
                    i11 = 0;
                    i13 = 0;
                }
            } else if (i13 >= 0) {
                i11 = 1073741824;
            } else {
                if (i13 != -1) {
                    if (i13 == -2) {
                        i11 = (i11 == Integer.MIN_VALUE || i11 == 1073741824) ? Integer.MIN_VALUE : 0;
                    } else {
                        i11 = 0;
                        i13 = 0;
                    }
                }
                i13 = iMax;
            }
            return View.MeasureSpec.makeMeasureSpec(i13, i11);
        }

        public void c(View view, int i10, int i11, int i12, int i13) {
            da daVar = (da) view.getLayoutParams();
            Rect rect = daVar.tt;
            view.layout(i10 + rect.left + ((ViewGroup.MarginLayoutParams) daVar).leftMargin, i11 + rect.top + ((ViewGroup.MarginLayoutParams) daVar).topMargin, (i12 - rect.right) - ((ViewGroup.MarginLayoutParams) daVar).rightMargin, (i13 - rect.bottom) - ((ViewGroup.MarginLayoutParams) daVar).bottomMargin);
        }

        public void c(View view, boolean z10, Rect rect) {
            Matrix matrix;
            if (z10) {
                Rect rect2 = ((da) view.getLayoutParams()).tt;
                rect.set(-rect2.left, -rect2.top, view.getWidth() + rect2.right, view.getHeight() + rect2.bottom);
            } else {
                rect.set(0, 0, view.getWidth(), view.getHeight());
            }
            if (this.f16384i != null && (matrix = view.getMatrix()) != null && !matrix.isIdentity()) {
                RectF rectF = this.f16384i.f16343t;
                rectF.set(rect);
                matrix.mapRect(rectF);
                rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
            }
            rect.offset(view.getLeft(), view.getTop());
        }

        public void c(View view, Rect rect) {
            RecyclerView.c(view, rect);
        }

        public boolean c(RecyclerView recyclerView, View view, Rect rect, boolean z10) {
            return c(recyclerView, view, rect, z10, false);
        }

        public boolean c(RecyclerView recyclerView, View view, Rect rect, boolean z10, boolean z11) {
            int[] iArrTt = tt(recyclerView, view, rect, z10);
            int i10 = iArrTt[0];
            int i11 = iArrTt[1];
            if ((z11 && !c(recyclerView, i10, i11)) || (i10 == 0 && i11 == 0)) {
                return false;
            }
            if (z10) {
                recyclerView.scrollBy(i10, i11);
            } else {
                recyclerView.c(i10, i11);
            }
            return true;
        }

        private boolean c(RecyclerView recyclerView, int i10, int i11) {
            View focusedChild = recyclerView.getFocusedChild();
            if (focusedChild == null) {
                return false;
            }
            int iGr = gr();
            int iZm = zm();
            int iQy = qy() - yv();
            int iGu = gu() - p();
            Rect rect = this.f16384i.sl;
            c(focusedChild, rect);
            return rect.left - i10 < iQy && rect.right - i10 > iGr && rect.top - i11 < iGu && rect.bottom - i11 > iZm;
        }

        @Deprecated
        public boolean c(RecyclerView recyclerView, View view, View view2) {
            return m() || recyclerView.yp();
        }

        public boolean c(RecyclerView recyclerView, gt gtVar, View view, View view2) {
            return c(recyclerView, view, view2);
        }

        public void c(m mVar, gt gtVar, int i10, int i11) {
            this.f16384i.n(i10, i11);
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 166, 1023})
    public final class m {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ArrayList<gu> f16394c;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public rl f16395i;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public z f16396n;
        public final List<gu> sp;
        public ArrayList<gu> tt;
        public int uj;
        public final ArrayList<gu> ve;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public int f16397x;

        public m() {
            ArrayList<gu> arrayList = new ArrayList<>();
            this.f16394c = arrayList;
            this.tt = null;
            this.ve = new ArrayList<>();
            this.sp = Collections.unmodifiableList(arrayList);
            this.f16397x = 2;
            this.uj = 2;
        }

        private void n(gu guVar) {
            View view = guVar.f16372c;
            if (view instanceof ViewGroup) {
                c((ViewGroup) view, false);
            }
        }

        public void a() {
            this.f16394c.clear();
            ArrayList<gu> arrayList = this.tt;
            if (arrayList != null) {
                arrayList.clear();
            }
        }

        public void c() {
            this.f16394c.clear();
            uj();
        }

        public void da() {
            int size = this.ve.size();
            for (int i10 = 0; i10 < size; i10++) {
                da daVar = (da) this.ve.get(i10).f16372c.getLayoutParams();
                if (daVar != null) {
                    daVar.ve = true;
                }
            }
        }

        public void i() {
            int size = this.ve.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.ve.get(i10).c();
            }
            int size2 = this.f16394c.size();
            for (int i11 = 0; i11 < size2; i11++) {
                this.f16394c.get(i11).c();
            }
            ArrayList<gu> arrayList = this.tt;
            if (arrayList != null) {
                int size3 = arrayList.size();
                for (int i12 = 0; i12 < size3; i12++) {
                    this.tt.get(i12).c();
                }
            }
        }

        public z sp() {
            if (this.f16396n == null) {
                this.f16396n = new z();
            }
            return this.f16396n;
        }

        public void tt() {
            i iVar = RecyclerView.this.yp;
            this.uj = this.f16397x + (iVar != null ? iVar.f16385m : 0);
            for (int size = this.ve.size() - 1; size >= 0 && this.ve.size() > this.uj; size--) {
                ve(size);
            }
        }

        public void uj() {
            for (int size = this.ve.size() - 1; size >= 0; size--) {
                ve(size);
            }
            this.ve.clear();
            if (RecyclerView.uj) {
                RecyclerView.this.md.c();
            }
        }

        public List<gu> ve() {
            return this.sp;
        }

        public void x() {
            int size = this.ve.size();
            for (int i10 = 0; i10 < size; i10++) {
                gu guVar = this.ve.get(i10);
                if (guVar != null) {
                    guVar.tt(6);
                    guVar.c((Object) null);
                }
            }
            c cVar = RecyclerView.this.f16344u;
            if (cVar == null || !cVar.tt()) {
                uj();
            }
        }

        public void ve(int i10) {
            c(this.ve.get(i10), true);
            this.ve.remove(i10);
        }

        public void c(int i10) {
            this.f16397x = i10;
            tt();
        }

        public int n() {
            return this.f16394c.size();
        }

        public gu n(int i10) {
            int size;
            int iTt;
            ArrayList<gu> arrayList = this.tt;
            if (arrayList != null && (size = arrayList.size()) != 0) {
                for (int i11 = 0; i11 < size; i11++) {
                    gu guVar = this.tt.get(i11);
                    if (!guVar.sl() && guVar.uj() == i10) {
                        guVar.tt(32);
                        return guVar;
                    }
                }
                if (RecyclerView.this.f16344u.tt() && (iTt = RecyclerView.this.f16325a.tt(i10)) > 0 && iTt < RecyclerView.this.f16344u.c()) {
                    long jTt = RecyclerView.this.f16344u.tt(iTt);
                    for (int i12 = 0; i12 < size; i12++) {
                        gu guVar2 = this.tt.get(i12);
                        if (!guVar2.sl() && guVar2.sp() == jTt) {
                            guVar2.tt(32);
                            return guVar2;
                        }
                    }
                }
            }
            return null;
        }

        public boolean c(gu guVar) {
            if (guVar.nu()) {
                return RecyclerView.this.f16331h.c();
            }
            int i10 = guVar.ve;
            if (i10 >= 0 && i10 < RecyclerView.this.f16344u.c()) {
                if (RecyclerView.this.f16331h.c() || RecyclerView.this.f16344u.c(guVar.ve) == guVar.x()) {
                    return !RecyclerView.this.f16344u.tt() || guVar.sp() == RecyclerView.this.f16344u.tt(guVar.ve);
                }
                return false;
            }
            throw new IndexOutOfBoundsException("Inconsistency detected. Invalid view holder adapter position" + guVar + RecyclerView.this.c());
        }

        public View tt(int i10) {
            return c(i10, false);
        }

        public void ve(View view) {
            gu guVarN = RecyclerView.n(view);
            if (!guVarN.c(12) && guVarN.yv() && !RecyclerView.this.tt(guVarN)) {
                if (this.tt == null) {
                    this.tt = new ArrayList<>();
                }
                guVarN.c(this, true);
                this.tt.add(guVarN);
                return;
            }
            if (guVarN.yp() && !guVarN.nu() && !RecyclerView.this.f16344u.tt()) {
                throw new IllegalArgumentException("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool." + RecyclerView.this.c());
            }
            guVarN.c(this, false);
            this.f16394c.add(guVarN);
        }

        public void tt(gu guVar) {
            boolean z10;
            boolean z11 = false;
            boolean z12 = true;
            if (!guVar.i() && guVar.f16372c.getParent() == null) {
                if (!guVar.rh()) {
                    if (!guVar.R_()) {
                        boolean zZm = guVar.zm();
                        c cVar = RecyclerView.this.f16344u;
                        if ((cVar != null && zZm && cVar.tt(guVar)) || guVar.gu()) {
                            if (this.uj <= 0 || guVar.c(526)) {
                                z10 = false;
                            } else {
                                int size = this.ve.size();
                                if (size >= this.uj && size > 0) {
                                    ve(0);
                                    size--;
                                }
                                if (RecyclerView.uj && size > 0 && !RecyclerView.this.md.c(guVar.ve)) {
                                    int i10 = size - 1;
                                    while (i10 >= 0) {
                                        if (!RecyclerView.this.md.c(this.ve.get(i10).ve)) {
                                            break;
                                        } else {
                                            i10--;
                                        }
                                    }
                                    size = i10 + 1;
                                }
                                this.ve.add(size, guVar);
                                z10 = true;
                            }
                            if (z10) {
                                z11 = z10;
                                z12 = false;
                            } else {
                                c(guVar, true);
                                z11 = z10;
                            }
                        } else {
                            z12 = false;
                        }
                        RecyclerView.this.f16346x.sp(guVar);
                        if (z11 || z12 || !zZm) {
                            return;
                        }
                        guVar.f16375m = null;
                        return;
                    }
                    throw new IllegalArgumentException("Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle." + RecyclerView.this.c());
                }
                throw new IllegalArgumentException("Tmp detached view should be removed from RecyclerView before it can be recycled: " + guVar + RecyclerView.this.c());
            }
            StringBuilder sb2 = new StringBuilder("Scrapped or attached views may not be recycled. isScrap:");
            sb2.append(guVar.i());
            sb2.append(" isAttached:");
            sb2.append(guVar.f16372c.getParent() != null);
            sb2.append(RecyclerView.this.c());
            throw new IllegalArgumentException(sb2.toString());
        }

        public View uj(int i10) {
            return this.f16394c.get(i10).f16372c;
        }

        public void uj(gu guVar) {
            c cVar = RecyclerView.this.f16344u;
            if (cVar != null) {
                cVar.c(guVar);
            }
            RecyclerView recyclerView = RecyclerView.this;
            if (recyclerView.f16331h != null) {
                recyclerView.f16346x.sp(guVar);
            }
        }

        private boolean c(gu guVar, int i10, int i11, long j10) {
            guVar.f16375m = RecyclerView.this;
            int iX = guVar.x();
            long nanoTime = RecyclerView.this.getNanoTime();
            if (j10 != Long.MAX_VALUE && !this.f16396n.tt(iX, nanoTime, j10)) {
                return false;
            }
            RecyclerView.this.f16344u.tt(guVar, i10);
            this.f16396n.tt(guVar.x(), RecyclerView.this.getNanoTime() - nanoTime);
            if (!RecyclerView.this.f16331h.c()) {
                return true;
            }
            guVar.sp = i11;
            return true;
        }

        public void ve(gu guVar) {
            if (guVar.yp) {
                this.tt.remove(guVar);
            } else {
                this.f16394c.remove(guVar);
            }
            guVar.f16378u = null;
            guVar.yp = false;
            guVar.t();
        }

        public void ve(int i10, int i11) {
            int i12;
            int i13 = i11 + i10;
            for (int size = this.ve.size() - 1; size >= 0; size--) {
                gu guVar = this.ve.get(size);
                if (guVar != null && (i12 = guVar.ve) >= i10 && i12 < i13) {
                    guVar.tt(2);
                    ve(size);
                }
            }
        }

        public View c(int i10, boolean z10) {
            return c(i10, z10, Long.MAX_VALUE).f16372c;
        }

        /* JADX WARN: Code duplicated, block: B:100:0x0203  */
        /* JADX WARN: Code duplicated, block: B:102:0x020b  */
        /* JADX WARN: Code duplicated, block: B:103:0x0219  */
        /* JADX WARN: Code duplicated, block: B:106:0x021f A[ADDED_TO_REGION] */
        /* JADX WARN: Code duplicated, block: B:108:0x0222  */
        /* JADX WARN: Code duplicated, block: B:18:0x0037 A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:19:0x0039  */
        /* JADX WARN: Code duplicated, block: B:21:0x0043  */
        /* JADX WARN: Code duplicated, block: B:22:0x004e  */
        /* JADX WARN: Code duplicated, block: B:24:0x0054  */
        /* JADX WARN: Code duplicated, block: B:27:0x005c  */
        /* JADX WARN: Code duplicated, block: B:29:0x005f  */
        /* JADX WARN: Code duplicated, block: B:73:0x0178 A[PHI: r1 r4
          0x0178: PHI (r1v12 com.byazt.kt.RecyclerView$gu) = (r1v11 com.byazt.kt.RecyclerView$gu), (r1v31 com.byazt.kt.RecyclerView$gu) binds: [B:28:0x005d, B:59:0x00fc] A[DONT_GENERATE, DONT_INLINE]
          0x0178: PHI (r4v3 boolean) = (r4v2 boolean), (r4v7 boolean) binds: [B:28:0x005d, B:59:0x00fc] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Code duplicated, block: B:82:0x0199  */
        /* JADX WARN: Code duplicated, block: B:88:0x01c5  */
        /* JADX WARN: Code duplicated, block: B:90:0x01cb  */
        /* JADX WARN: Code duplicated, block: B:99:0x01f5  */
        public gu c(int i10, boolean z10, long j10) {
            gu guVarTt;
            boolean z11;
            gu guVar;
            boolean z12;
            ViewGroup.LayoutParams layoutParams;
            da daVar;
            int iTt;
            RecyclerView recyclerViewDa;
            rl rlVar;
            View viewC;
            if (i10 >= 0 && i10 < RecyclerView.this.f16331h.uj()) {
                if (RecyclerView.this.f16331h.c()) {
                    guVarTt = n(i10);
                    z11 = guVarTt != null;
                    if (guVarTt == null && (guVarTt = tt(i10, z10)) != null) {
                        if (c(guVarTt)) {
                            z11 = true;
                        } else {
                            if (!z10) {
                                guVarTt.tt(4);
                                if (guVarTt.i()) {
                                    RecyclerView.this.removeDetachedView(guVarTt.f16372c, false);
                                    guVarTt.da();
                                } else if (guVarTt.sl()) {
                                    guVarTt.t();
                                }
                                tt(guVarTt);
                            }
                            guVarTt = null;
                        }
                    }
                    if (guVarTt == null) {
                        guVar = guVarTt;
                    } else {
                        iTt = RecyclerView.this.f16325a.tt(i10);
                        if (iTt < 0 && iTt < RecyclerView.this.f16344u.c()) {
                            int iC = RecyclerView.this.f16344u.c(iTt);
                            if (RecyclerView.this.f16344u.tt() && (guVarTt = c(RecyclerView.this.f16344u.tt(iTt), iC, z10)) != null) {
                                guVarTt.ve = iTt;
                                z11 = true;
                            }
                            if (guVarTt == null && (rlVar = this.f16395i) != null && (viewC = rlVar.c(this, i10, iC)) != null) {
                                guVarTt = RecyclerView.this.tt(viewC);
                                if (guVarTt != null) {
                                    if (guVarTt.R_()) {
                                        throw new IllegalArgumentException("getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view." + RecyclerView.this.c());
                                    }
                                } else {
                                    throw new IllegalArgumentException("getViewForPositionAndType returned a view which does not have a ViewHolder" + RecyclerView.this.c());
                                }
                            }
                            if (guVarTt == null) {
                                gu guVarC = sp().c(iC);
                                if (guVarC != null) {
                                    guVarC.qy();
                                    if (RecyclerView.f16322c) {
                                        n(guVarC);
                                    }
                                }
                                guVarTt = guVarC;
                            }
                            if (guVarTt == null) {
                                long nanoTime = RecyclerView.this.getNanoTime();
                                if (j10 != Long.MAX_VALUE && !this.f16396n.c(iC, nanoTime, j10)) {
                                    return null;
                                }
                                RecyclerView recyclerView = RecyclerView.this;
                                gu guVarTt2 = recyclerView.f16344u.tt(recyclerView, iC);
                                if (RecyclerView.uj && (recyclerViewDa = RecyclerView.da(guVarTt2.f16372c)) != null) {
                                    guVarTt2.tt = new WeakReference<>(recyclerViewDa);
                                }
                                this.f16396n.c(iC, RecyclerView.this.getNanoTime() - nanoTime);
                                guVar = guVarTt2;
                            } else {
                                guVar = guVarTt;
                            }
                        } else {
                            throw new IndexOutOfBoundsException("Inconsistency detected. Invalid item position " + i10 + "(offset:" + iTt + ").state:" + RecyclerView.this.f16331h.uj() + RecyclerView.this.c());
                        }
                    }
                    z12 = z11;
                    if (z12 && !RecyclerView.this.f16331h.c() && guVar.c(8192)) {
                        guVar.c(0, 8192);
                        if (RecyclerView.this.f16331h.f16363da) {
                            int iN = a.n(guVar) | 4096;
                            RecyclerView recyclerView2 = RecyclerView.this;
                            RecyclerView.this.c(guVar, recyclerView2.zm.c(recyclerView2.f16331h, guVar, iN, guVar.rl()));
                        }
                    }
                    if (!RecyclerView.this.f16331h.c() && guVar.m()) {
                        guVar.sp = i10;
                    } else {
                        boolean zC = (guVar.m() || guVar.z() || guVar.yp()) ? c(guVar, RecyclerView.this.f16325a.tt(i10), i10, j10) : false;
                        layoutParams = guVar.f16372c.getLayoutParams();
                        if (layoutParams == null) {
                            daVar = (da) RecyclerView.this.generateDefaultLayoutParams();
                            guVar.f16372c.setLayoutParams(daVar);
                        } else if (!RecyclerView.this.checkLayoutParams(layoutParams)) {
                            daVar = (da) RecyclerView.this.generateLayoutParams(layoutParams);
                            guVar.f16372c.setLayoutParams(daVar);
                        } else {
                            daVar = (da) layoutParams;
                        }
                        daVar.f16360c = guVar;
                        daVar.uj = !z12 && zC;
                        return guVar;
                    }
                    layoutParams = guVar.f16372c.getLayoutParams();
                    if (layoutParams == null) {
                        daVar = (da) RecyclerView.this.generateDefaultLayoutParams();
                        guVar.f16372c.setLayoutParams(daVar);
                    } else if (!RecyclerView.this.checkLayoutParams(layoutParams)) {
                        daVar = (da) RecyclerView.this.generateLayoutParams(layoutParams);
                        guVar.f16372c.setLayoutParams(daVar);
                    } else {
                        daVar = (da) layoutParams;
                    }
                    daVar.f16360c = guVar;
                    daVar.uj = !z12 && zC;
                    return guVar;
                }
                guVarTt = null;
                if (guVarTt == null) {
                    if (c(guVarTt)) {
                        if (!z10) {
                            guVarTt.tt(4);
                            if (guVarTt.i()) {
                                RecyclerView.this.removeDetachedView(guVarTt.f16372c, false);
                                guVarTt.da();
                            } else if (guVarTt.sl()) {
                                guVarTt.t();
                            }
                            tt(guVarTt);
                        }
                        guVarTt = null;
                    } else {
                        z11 = true;
                    }
                }
                if (guVarTt == null) {
                    iTt = RecyclerView.this.f16325a.tt(i10);
                    if (iTt < 0) {
                    }
                    throw new IndexOutOfBoundsException("Inconsistency detected. Invalid item position " + i10 + "(offset:" + iTt + ").state:" + RecyclerView.this.f16331h.uj() + RecyclerView.this.c());
                }
                guVar = guVarTt;
                z12 = z11;
                if (z12) {
                    guVar.c(0, 8192);
                    if (RecyclerView.this.f16331h.f16363da) {
                        int iN2 = a.n(guVar) | 4096;
                        RecyclerView recyclerView3 = RecyclerView.this;
                        RecyclerView.this.c(guVar, recyclerView3.zm.c(recyclerView3.f16331h, guVar, iN2, guVar.rl()));
                    }
                }
                if (!RecyclerView.this.f16331h.c()) {
                    if (guVar.m()) {
                    }
                } else {
                    if (guVar.m()) {
                    }
                }
                layoutParams = guVar.f16372c.getLayoutParams();
                if (layoutParams == null) {
                    daVar = (da) RecyclerView.this.generateDefaultLayoutParams();
                    guVar.f16372c.setLayoutParams(daVar);
                } else if (!RecyclerView.this.checkLayoutParams(layoutParams)) {
                    daVar = (da) RecyclerView.this.generateLayoutParams(layoutParams);
                    guVar.f16372c.setLayoutParams(daVar);
                } else {
                    daVar = (da) layoutParams;
                }
                daVar.f16360c = guVar;
                daVar.uj = !z12 && zC;
                return guVar;
            }
            throw new IndexOutOfBoundsException("Invalid item position " + i10 + "(" + i10 + "). Item count:" + RecyclerView.this.f16331h.uj() + RecyclerView.this.c());
        }

        public void tt(View view) {
            gu guVarN = RecyclerView.n(view);
            guVarN.f16378u = null;
            guVarN.yp = false;
            guVarN.t();
            tt(guVarN);
        }

        public gu tt(int i10, boolean z10) {
            View viewVe;
            int size = this.f16394c.size();
            for (int i11 = 0; i11 < size; i11++) {
                gu guVar = this.f16394c.get(i11);
                if (!guVar.sl() && guVar.uj() == i10 && !guVar.yp() && (RecyclerView.this.f16331h.sp || !guVar.nu())) {
                    guVar.tt(32);
                    return guVar;
                }
            }
            if (!z10 && (viewVe = RecyclerView.this.sp.ve(i10)) != null) {
                gu guVarN = RecyclerView.n(viewVe);
                RecyclerView.this.sp.n(viewVe);
                int iTt = RecyclerView.this.sp.tt(viewVe);
                if (iTt != -1) {
                    RecyclerView.this.sp.n(iTt);
                    ve(viewVe);
                    guVarN.tt(8224);
                    return guVarN;
                }
                throw new IllegalStateException("layout index should not be -1 after unhiding a view:" + guVarN + RecyclerView.this.c());
            }
            int size2 = this.ve.size();
            for (int i12 = 0; i12 < size2; i12++) {
                gu guVar2 = this.ve.get(i12);
                if (!guVar2.yp() && guVar2.uj() == i10) {
                    if (!z10) {
                        this.ve.remove(i12);
                    }
                    return guVar2;
                }
            }
            return null;
        }

        public void tt(int i10, int i11) {
            int size = this.ve.size();
            for (int i12 = 0; i12 < size; i12++) {
                gu guVar = this.ve.get(i12);
                if (guVar != null && guVar.ve >= i10) {
                    guVar.c(i11, true);
                }
            }
        }

        private void c(ViewGroup viewGroup, boolean z10) {
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                if (childAt instanceof ViewGroup) {
                    c((ViewGroup) childAt, true);
                }
            }
            if (z10) {
                if (viewGroup.getVisibility() == 4) {
                    viewGroup.setVisibility(0);
                    viewGroup.setVisibility(4);
                } else {
                    int visibility = viewGroup.getVisibility();
                    viewGroup.setVisibility(4);
                    viewGroup.setVisibility(visibility);
                }
            }
        }

        public void c(View view) {
            gu guVarN = RecyclerView.n(view);
            if (guVarN.rh()) {
                RecyclerView.this.removeDetachedView(view, false);
            }
            if (guVarN.i()) {
                guVarN.da();
            } else if (guVarN.sl()) {
                guVarN.t();
            }
            tt(guVarN);
        }

        public void c(gu guVar, boolean z10) {
            RecyclerView.ve(guVar);
            if (guVar.c(16384)) {
                guVar.c(0, 16384);
            }
            if (z10) {
                uj(guVar);
            }
            guVar.f16375m = null;
            sp().c(guVar);
        }

        public gu c(long j10, int i10, boolean z10) {
            for (int size = this.f16394c.size() - 1; size >= 0; size--) {
                gu guVar = this.f16394c.get(size);
                if (guVar.sp() == j10 && !guVar.sl()) {
                    if (i10 == guVar.x()) {
                        guVar.tt(32);
                        if (guVar.nu() && !RecyclerView.this.f16331h.c()) {
                            guVar.c(2, 14);
                        }
                        return guVar;
                    }
                    if (!z10) {
                        this.f16394c.remove(size);
                        RecyclerView.this.removeDetachedView(guVar.f16372c, false);
                        tt(guVar.f16372c);
                    }
                }
            }
            int size2 = this.ve.size();
            while (true) {
                size2--;
                if (size2 < 0) {
                    return null;
                }
                gu guVar2 = this.ve.get(size2);
                if (guVar2.sp() == j10) {
                    if (i10 == guVar2.x()) {
                        if (!z10) {
                            this.ve.remove(size2);
                        }
                        return guVar2;
                    }
                    if (!z10) {
                        ve(size2);
                        return null;
                    }
                }
            }
        }

        public void c(c cVar, c cVar2, boolean z10) {
            c();
            sp().c(cVar, cVar2, z10);
        }

        public void c(int i10, int i11) {
            int i12;
            int i13;
            int i14;
            int i15;
            if (i10 < i11) {
                i12 = -1;
                i14 = i10;
                i13 = i11;
            } else {
                i12 = 1;
                i13 = i10;
                i14 = i11;
            }
            int size = this.ve.size();
            for (int i16 = 0; i16 < size; i16++) {
                gu guVar = this.ve.get(i16);
                if (guVar != null && (i15 = guVar.ve) >= i14 && i15 <= i13) {
                    if (i15 == i10) {
                        guVar.c(i11 - i10, false);
                    } else {
                        guVar.c(i12, false);
                    }
                }
            }
        }

        public void c(int i10, int i11, boolean z10) {
            int i12 = i10 + i11;
            for (int size = this.ve.size() - 1; size >= 0; size--) {
                gu guVar = this.ve.get(size);
                if (guVar != null) {
                    int i13 = guVar.ve;
                    if (i13 >= i12) {
                        guVar.c(-i11, z10);
                    } else if (i13 >= i10) {
                        guVar.tt(8);
                        ve(size);
                    }
                }
            }
        }

        public void c(rl rlVar) {
            this.f16395i = rlVar;
        }

        public void c(z zVar) {
            z zVar2 = this.f16396n;
            if (zVar2 != null) {
                zVar2.ve();
            }
            this.f16396n = zVar;
            if (zVar == null || RecyclerView.this.getAdapter() == null) {
                return;
            }
            this.f16396n.tt();
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 166, 1024})
    public static class n {
        public EdgeEffect c(RecyclerView recyclerView, int i10) {
            return new EdgeEffect(recyclerView.getContext());
        }
    }

    public interface nu {
    }

    @com.byazt.zqa.c(c = {0, 1, 166, 2486})
    class qy implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f16405a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public OverScroller f16406c;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public int f16407n;
        public boolean sp;
        public Interpolator tt;
        public int uj;

        public qy() {
            Interpolator interpolator = RecyclerView.f16324nb;
            this.tt = interpolator;
            this.f16405a = false;
            this.sp = false;
            this.f16406c = new OverScroller(RecyclerView.this.getContext(), interpolator);
        }

        private void uj() {
            this.f16405a = false;
            if (this.sp) {
                c();
            }
        }

        private void ve() {
            this.sp = false;
            this.f16405a = true;
        }

        public void c() {
            if (this.f16405a) {
                this.sp = true;
            } else {
                RecyclerView.this.removeCallbacks(this);
                com.byazt.fq.sp.c(RecyclerView.this, this);
            }
        }

        /* JADX WARN: Code duplicated, block: B:43:0x00dc  */
        /* JADX WARN: Code duplicated, block: B:49:0x00e6  */
        @Override // java.lang.Runnable
        public void run() {
            int i10;
            int i11;
            int i12;
            int i13;
            int i14;
            if (RecyclerView.this.yp == null) {
                tt();
                return;
            }
            ve();
            RecyclerView.this.uj();
            OverScroller overScroller = this.f16406c;
            my myVar = RecyclerView.this.yp.f16387t;
            if (overScroller.computeScrollOffset()) {
                int[] iArr = RecyclerView.this.or;
                int currX = overScroller.getCurrX();
                int currY = overScroller.getCurrY();
                int i15 = currX - this.uj;
                int i16 = currY - this.f16407n;
                this.uj = currX;
                this.f16407n = currY;
                if (RecyclerView.this.c(i15, i16, iArr, null, 1)) {
                    i15 -= iArr[0];
                    i16 -= iArr[1];
                }
                RecyclerView recyclerView = RecyclerView.this;
                if (recyclerView.f16344u != null) {
                    recyclerView.c(i15, i16, recyclerView.cu);
                    int[] iArr2 = RecyclerView.this.cu;
                    i11 = iArr2[0];
                    i10 = iArr2[1];
                    i12 = i15 - i11;
                    i13 = i16 - i10;
                    if (myVar != null && !myVar.a() && myVar.sp()) {
                        int iUj = RecyclerView.this.f16331h.uj();
                        if (iUj == 0) {
                            myVar.n();
                        } else {
                            if (myVar.x() >= iUj) {
                                myVar.ve(iUj - 1);
                            }
                            myVar.c(i15 - i12, i16 - i13);
                        }
                    }
                } else {
                    i10 = 0;
                    i11 = 0;
                    i12 = 0;
                    i13 = 0;
                }
                if (!RecyclerView.this.f16336m.isEmpty()) {
                    RecyclerView.this.invalidate();
                }
                if (RecyclerView.this.getOverScrollMode() != 2) {
                    RecyclerView.this.ve(i15, i16);
                }
                if (!RecyclerView.this.c(i11, i10, i12, i13, (int[]) null, 1) && (i12 != 0 || i13 != 0)) {
                    int currVelocity = (int) overScroller.getCurrVelocity();
                    if (i12 == currX) {
                        i14 = 0;
                    } else if (i12 < 0) {
                        i14 = -currVelocity;
                    } else if (i12 > 0) {
                        i14 = currVelocity;
                    } else {
                        i14 = 0;
                    }
                    if (i13 == currY) {
                        currVelocity = 0;
                    } else if (i13 < 0) {
                        currVelocity = -currVelocity;
                    } else if (i13 <= 0) {
                        currVelocity = 0;
                    }
                    if (RecyclerView.this.getOverScrollMode() != 2) {
                        RecyclerView.this.uj(i14, currVelocity);
                    }
                    if ((i14 != 0 || i12 == currX || overScroller.getFinalX() == 0) && (currVelocity != 0 || i13 == currY || overScroller.getFinalY() == 0)) {
                        overScroller.abortAnimation();
                    }
                }
                if (i11 != 0 || i10 != 0) {
                    RecyclerView.this.x(i11, i10);
                }
                if (!RecyclerView.this.awakenScrollBars()) {
                    RecyclerView.this.invalidate();
                }
                boolean z10 = (i15 == 0 && i16 == 0) || (i15 != 0 && RecyclerView.this.yp.ve() && i11 == i15) || (i16 != 0 && RecyclerView.this.yp.uj() && i10 == i16);
                if (overScroller.isFinished() || !(z10 || RecyclerView.this.i(1))) {
                    RecyclerView.this.setScrollState(0);
                    if (RecyclerView.uj) {
                        RecyclerView.this.md.c();
                    }
                    RecyclerView.this.x(1);
                } else {
                    c();
                    RecyclerView recyclerView2 = RecyclerView.this;
                    com.byazt.kt.uj ujVar = recyclerView2.f16339p;
                    if (ujVar != null) {
                        ujVar.c(recyclerView2, i15, i16);
                    }
                }
            }
            if (myVar != null) {
                if (myVar.a()) {
                    myVar.c(0, 0);
                }
                if (!this.sp) {
                    myVar.n();
                }
            }
            uj();
        }

        public void tt(int i10, int i11) {
            c(i10, i11, 0, 0);
        }

        private int tt(int i10, int i11, int i12, int i13) {
            int iRound;
            int iAbs = Math.abs(i10);
            int iAbs2 = Math.abs(i11);
            boolean z10 = iAbs > iAbs2;
            int iSqrt = (int) Math.sqrt((i12 * i12) + (i13 * i13));
            int iSqrt2 = (int) Math.sqrt((i10 * i10) + (i11 * i11));
            RecyclerView recyclerView = RecyclerView.this;
            int width = z10 ? recyclerView.getWidth() : recyclerView.getHeight();
            int i14 = width / 2;
            float f10 = width;
            float f11 = i14;
            float fC = f11 + (c(Math.min(1.0f, (iSqrt2 * 1.0f) / f10)) * f11);
            if (iSqrt > 0) {
                iRound = Math.round(Math.abs(fC / iSqrt) * 1000.0f) * 4;
            } else {
                if (!z10) {
                    iAbs = iAbs2;
                }
                iRound = (int) (((iAbs / f10) + 1.0f) * 300.0f);
            }
            return Math.min(iRound, 2000);
        }

        public void c(int i10, int i11) {
            RecyclerView.this.setScrollState(2);
            this.f16407n = 0;
            this.uj = 0;
            this.f16406c.fling(0, 0, i10, i11, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
            c();
        }

        public void c(int i10, int i11, int i12, int i13) {
            c(i10, i11, tt(i10, i11, i12, i13));
        }

        private float c(float f10) {
            return (float) Math.sin((f10 - 0.5f) * 0.47123894f);
        }

        public void c(int i10, int i11, int i12) {
            c(i10, i11, i12, RecyclerView.f16324nb);
        }

        public void c(int i10, int i11, Interpolator interpolator) {
            int iTt = tt(i10, i11, 0, 0);
            if (interpolator == null) {
                interpolator = RecyclerView.f16324nb;
            }
            c(i10, i11, iTt, interpolator);
        }

        public void tt() {
            RecyclerView.this.removeCallbacks(this);
            this.f16406c.abortAnimation();
        }

        public void c(int i10, int i11, int i12, Interpolator interpolator) {
            if (this.tt != interpolator) {
                this.tt = interpolator;
                this.f16406c = new OverScroller(RecyclerView.this.getContext(), interpolator);
            }
            RecyclerView.this.setScrollState(2);
            this.f16407n = 0;
            this.uj = 0;
            this.f16406c.startScroll(0, 0, i10, i11, i12);
            if (Build.VERSION.SDK_INT < 23) {
                this.f16406c.computeScrollOffset();
            }
            c();
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 166, 2489})
    public static abstract class rl {
        public abstract View c(m mVar, int i10, int i11);
    }

    public interface sl {
        void c(View view);

        void tt(View view);
    }

    @com.byazt.zqa.c(c = {0, 1, 166, 2496})
    private class sp implements a.c {
        public sp() {
        }

        @Override // com.byazt.kt.RecyclerView.a.c
        public void c(gu guVar) {
            guVar.c(true);
            if (guVar.f16379x != null && guVar.f16374i == null) {
                guVar.f16379x = null;
            }
            guVar.f16374i = null;
            if (guVar.gr() || RecyclerView.this.c(guVar.f16372c) || !guVar.rh()) {
                return;
            }
            RecyclerView.this.removeDetachedView(guVar.f16372c, false);
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 166, 1030})
    public static abstract class t {
        public abstract boolean c(int i10, int i11);
    }

    public interface u {
        boolean c(RecyclerView recyclerView, MotionEvent motionEvent);
    }

    public interface uj {
        int c(int i10, int i11);
    }

    @com.byazt.zqa.c(c = {0, 1, 166, 2499})
    public static abstract class ve {
        public void c() {
        }

        public void c(int i10, int i11, Object obj) {
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 166, GSSDK.OneInputOPData.InputOP.OP_XINPUT_A_BUTTON_VALUE})
    public static abstract class x {
        @Deprecated
        public void c(Rect rect, int i10, RecyclerView recyclerView) {
            rect.set(0, 0, 0, 0);
        }

        public void c(Rect rect, View view, RecyclerView recyclerView, gt gtVar) {
            c(rect, ((da) view.getLayoutParams()).uj(), recyclerView);
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 166, 2514})
    public static abstract class yp {
        public void c(RecyclerView recyclerView, int i10) {
        }

        public void c(RecyclerView recyclerView, int i10, int i11) {
        }
    }

    static {
        int i10 = Build.VERSION.SDK_INT;
        f16322c = false;
        tt = i10 >= 23;
        ve = true;
        uj = true;
        sv = false;
        aw = false;
        Class<?> cls = Integer.TYPE;
        f16323ic = new Class[]{Context.class, AttributeSet.class, cls, cls};
        f16324nb = new Interpolator() { // from class: com.byazt.kt.RecyclerView.6
            @Override // android.animation.TimeInterpolator
            public float getInterpolation(float f10) {
                float f11 = f10 - 1.0f;
                return (f11 * f11 * f11 * f11 * f11) + 1.0f;
            }
        };
    }

    public RecyclerView(Context context) {
        this(context, null);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0077  */
    private void aw() {
        this.f16331h.c(4);
        n();
        t();
        gt gtVar = this.f16331h;
        gtVar.uj = 1;
        if (gtVar.f16363da) {
            for (int iTt = this.sp.tt() - 1; iTt >= 0; iTt--) {
                gu guVarN = n(this.sp.tt(iTt));
                if (!guVarN.R_()) {
                    long jC = c(guVarN);
                    a.tt ttVarC = this.zm.c(this.f16331h, guVarN);
                    gu guVarC = this.f16346x.c(jC);
                    if (guVarC == null || guVarC.R_()) {
                        this.f16346x.ve(guVarN, ttVarC);
                    } else {
                        boolean zC = this.f16346x.c(guVarC);
                        boolean zC2 = this.f16346x.c(guVarN);
                        if (zC && guVarC == guVarN) {
                            this.f16346x.ve(guVarN, ttVarC);
                        } else {
                            a.tt ttVarTt = this.f16346x.tt(guVarC);
                            this.f16346x.ve(guVarN, ttVarC);
                            a.tt ttVarVe = this.f16346x.ve(guVarN);
                            if (ttVarTt == null) {
                                c(jC, guVarN, guVarC);
                            } else {
                                c(guVarC, guVarN, ttVarTt, ttVarVe, zC, zC2);
                            }
                        }
                    }
                }
            }
            this.f16346x.c(this.kz);
        }
        this.yp.tt(this.f16338n);
        gt gtVar2 = this.f16331h;
        gtVar2.tt = gtVar2.f16366n;
        this.gu = false;
        this.gr = false;
        gtVar2.f16363da = false;
        gtVar2.sl = false;
        this.yp.f16388u = false;
        ArrayList<gu> arrayList = this.f16338n.tt;
        if (arrayList != null) {
            arrayList.clear();
        }
        i iVar = this.yp;
        if (iVar.nu) {
            iVar.f16385m = 0;
            iVar.nu = false;
            this.f16338n.tt();
        }
        this.yp.tt(this.f16331h);
        u();
        c(false);
        this.f16346x.c();
        int[] iArr = this.gy;
        if (da(iArr[0], iArr[1])) {
            x(0, 0);
        }
        pf();
        qp();
    }

    private void bx() {
        this.f16331h.c(1);
        c(this.f16331h);
        this.f16331h.f16364i = false;
        n();
        this.f16346x.c();
        t();
        or();
        cu();
        gt gtVar = this.f16331h;
        gtVar.f16369x = gtVar.f16363da && this.eo;
        this.eo = false;
        this.f16327d = false;
        gtVar.sp = gtVar.sl;
        gtVar.f16366n = this.f16344u.c();
        c(this.gy);
        if (this.f16331h.f16363da) {
            int iTt = this.sp.tt();
            for (int i10 = 0; i10 < iTt; i10++) {
                gu guVarN = n(this.sp.tt(i10));
                if (!guVarN.R_() && (!guVarN.yp() || this.f16344u.tt())) {
                    this.f16346x.c(guVarN, this.zm.c(this.f16331h, guVarN, a.n(guVarN), guVarN.rl()));
                    if (this.f16331h.f16369x && guVarN.yv() && !guVarN.nu() && !guVarN.R_() && !guVarN.yp()) {
                        this.f16346x.c(c(guVarN), guVarN);
                    }
                }
            }
        }
        if (this.f16331h.sl) {
            rh();
            gt gtVar2 = this.f16331h;
            boolean z10 = gtVar2.f16361a;
            gtVar2.f16361a = false;
            this.yp.c(this.f16338n, gtVar2);
            this.f16331h.f16361a = z10;
            for (int i11 = 0; i11 < this.sp.tt(); i11++) {
                gu guVarN2 = n(this.sp.tt(i11));
                if (!guVarN2.R_() && !this.f16346x.uj(guVarN2)) {
                    int iN = a.n(guVarN2);
                    boolean zC = guVarN2.c(8192);
                    if (!zC) {
                        iN |= 4096;
                    }
                    a.tt ttVarC = this.zm.c(this.f16331h, guVarN2, iN, guVarN2.rl());
                    if (zC) {
                        c(guVarN2, ttVarC);
                    } else {
                        this.f16346x.tt(guVarN2, ttVarC);
                    }
                }
            }
            my();
        } else {
            my();
        }
        u();
        c(false);
        this.f16331h.uj = 2;
    }

    private void cu() {
        int iN;
        View focusedChild = (this.xd && hasFocus() && this.f16344u != null) ? getFocusedChild() : null;
        gu guVarUj = focusedChild != null ? uj(focusedChild) : null;
        if (guVarUj == null) {
            qp();
            return;
        }
        this.f16331h.f16368u = this.f16344u.tt() ? guVarUj.sp() : -1L;
        gt gtVar = this.f16331h;
        if (this.gu) {
            iN = -1;
        } else {
            iN = guVarUj.nu() ? guVarUj.uj : guVarUj.n();
        }
        gtVar.f16367t = iN;
        this.f16331h.yp = u(guVarUj.f16372c);
    }

    private void d() {
        h();
        setScrollState(0);
    }

    private void eo() {
        this.lt = 0;
    }

    private com.byazt.fq.uj getScrollingChildHelper() {
        if (this.mm == null) {
            this.mm = new com.byazt.fq.uj(this);
        }
        return this.mm;
    }

    @SuppressLint({"InlinedApi"})
    private void gr() {
        if (com.byazt.fq.sp.i(this) == 0) {
            com.byazt.fq.sp.tt(this, 8);
        }
    }

    private void h() {
        VelocityTracker velocityTracker = this.f16342s;
        if (velocityTracker != null) {
            velocityTracker.clear();
        }
        x(0);
        md();
    }

    private void md() {
        boolean zIsFinished;
        EdgeEffect edgeEffect = this.kk;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            zIsFinished = this.kk.isFinished();
        } else {
            zIsFinished = false;
        }
        EdgeEffect edgeEffect2 = this.tx;
        if (edgeEffect2 != null) {
            edgeEffect2.onRelease();
            zIsFinished |= this.tx.isFinished();
        }
        EdgeEffect edgeEffect3 = this.f16345v;
        if (edgeEffect3 != null) {
            edgeEffect3.onRelease();
            zIsFinished |= this.f16345v.isFinished();
        }
        EdgeEffect edgeEffect4 = this.os;
        if (edgeEffect4 != null) {
            edgeEffect4.onRelease();
            zIsFinished |= this.os.isFinished();
        }
        if (zIsFinished) {
            com.byazt.fq.sp.ve(this);
        }
    }

    private void n(gu guVar) {
        View view = guVar.f16372c;
        boolean z10 = view.getParent() == this;
        this.f16338n.ve(tt(view));
        if (guVar.rh()) {
            this.sp.c(view, -1, view.getLayoutParams(), true);
        } else if (z10) {
            this.sp.uj(view);
        } else {
            this.sp.c(view, true);
        }
    }

    private View nb() {
        gu guVarUj;
        gt gtVar = this.f16331h;
        int i10 = gtVar.f16367t;
        if (i10 == -1) {
            i10 = 0;
        }
        int iUj = gtVar.uj();
        for (int i11 = i10; i11 < iUj; i11++) {
            gu guVarUj2 = uj(i11);
            if (guVarUj2 == null) {
                break;
            }
            if (guVarUj2.f16372c.hasFocusable()) {
                return guVarUj2.f16372c;
            }
        }
        int iMin = Math.min(iUj, i10);
        do {
            iMin--;
            if (iMin < 0 || (guVarUj = uj(iMin)) == null) {
                return null;
            }
        } while (!guVarUj.f16372c.hasFocusable());
        return guVarUj.f16372c;
    }

    private void or() {
        boolean z10;
        if (this.gu) {
            this.f16325a.c();
        }
        if (zb()) {
            this.f16325a.tt();
        } else {
            this.f16325a.n();
        }
        boolean z11 = false;
        boolean z12 = this.f16327d || this.eo;
        this.f16331h.f16363da = this.my && this.zm != null && ((z10 = this.gu) || z12 || this.yp.f16388u) && (!z10 || this.f16344u.tt());
        gt gtVar = this.f16331h;
        if (gtVar.f16363da && z12 && !this.gu && zb()) {
            z11 = true;
        }
        gtVar.sl = z11;
    }

    private void p() {
        this.yv.tt();
        i iVar = this.yp;
        if (iVar != null) {
            iVar.zb();
        }
    }

    private void pf() {
        View viewFindViewById;
        if (!this.xd || this.f16344u == null || !hasFocus() || getDescendantFocusability() == 393216) {
            return;
        }
        if (getDescendantFocusability() == 131072 && isFocused()) {
            return;
        }
        if (!isFocused()) {
            View focusedChild = getFocusedChild();
            if (!aw || (focusedChild.getParent() != null && focusedChild.hasFocus())) {
                if (!this.sp.ve(focusedChild)) {
                    return;
                }
            } else if (this.sp.tt() == 0) {
                requestFocus();
                return;
            }
        }
        View viewNb = null;
        gu guVarC = (this.f16331h.f16368u == -1 || !this.f16344u.tt()) ? null : c(this.f16331h.f16368u);
        if (guVarC != null && !this.sp.ve(guVarC.f16372c) && guVarC.f16372c.hasFocusable()) {
            viewNb = guVarC.f16372c;
        } else if (this.sp.tt() > 0) {
            viewNb = nb();
        }
        if (viewNb != null) {
            int i10 = this.f16331h.yp;
            if (i10 != -1 && (viewFindViewById = viewNb.findViewById(i10)) != null && viewFindViewById.isFocusable()) {
                viewNb = viewFindViewById;
            }
            viewNb.requestFocus();
        }
    }

    private void qp() {
        gt gtVar = this.f16331h;
        gtVar.f16368u = -1L;
        gtVar.f16367t = -1;
        gtVar.yp = -1;
    }

    private void sv() {
        n();
        t();
        this.f16331h.c(6);
        this.f16325a.n();
        this.f16331h.f16366n = this.f16344u.c();
        gt gtVar = this.f16331h;
        gtVar.ve = 0;
        gtVar.sp = false;
        this.yp.c(this.f16338n, gtVar);
        gt gtVar2 = this.f16331h;
        gtVar2.f16361a = false;
        gtVar2.f16363da = gtVar2.f16363da && this.zm != null;
        gtVar2.uj = 4;
        u();
        c(false);
    }

    private boolean yv() {
        int iTt = this.sp.tt();
        for (int i10 = 0; i10 < iTt; i10++) {
            gu guVarN = n(this.sp.tt(i10));
            if (guVarN != null && !guVarN.R_() && guVarN.yv()) {
                return true;
            }
        }
        return false;
    }

    private boolean zb() {
        return this.zm != null && this.yp.t();
    }

    private void zm() {
        this.sp = new com.byazt.kt.tt(new com.byazt.kt.tt.InterfaceC0363tt() { // from class: com.byazt.kt.RecyclerView.4
            @Override // com.byazt.kt.tt.InterfaceC0363tt
            public int c() {
                return RecyclerView.this.getChildCount();
            }

            @Override // com.byazt.kt.tt.InterfaceC0363tt
            public View tt(int i10) {
                return RecyclerView.this.getChildAt(i10);
            }

            @Override // com.byazt.kt.tt.InterfaceC0363tt
            public void uj(View view) {
                gu guVarN = RecyclerView.n(view);
                if (guVarN != null) {
                    guVarN.tt(RecyclerView.this);
                }
            }

            @Override // com.byazt.kt.tt.InterfaceC0363tt
            public void ve(int i10) {
                gu guVarN;
                View viewTt = tt(i10);
                if (viewTt != null && (guVarN = RecyclerView.n(viewTt)) != null) {
                    if (guVarN.rh() && !guVarN.R_()) {
                        throw new IllegalArgumentException("called detach on an already detached child " + guVarN + RecyclerView.this.c());
                    }
                    guVarN.tt(256);
                }
                RecyclerView.this.detachViewFromParent(i10);
            }

            @Override // com.byazt.kt.tt.InterfaceC0363tt
            public void c(View view, int i10) {
                RecyclerView.this.addView(view, i10);
                RecyclerView.this.t(view);
            }

            @Override // com.byazt.kt.tt.InterfaceC0363tt
            public void tt() {
                int iC = c();
                for (int i10 = 0; i10 < iC; i10++) {
                    View viewTt = tt(i10);
                    RecyclerView.this.sl(viewTt);
                    viewTt.clearAnimation();
                }
                RecyclerView.this.removeAllViews();
            }

            @Override // com.byazt.kt.tt.InterfaceC0363tt
            public int c(View view) {
                return RecyclerView.this.indexOfChild(view);
            }

            @Override // com.byazt.kt.tt.InterfaceC0363tt
            public void c(int i10) {
                View childAt = RecyclerView.this.getChildAt(i10);
                if (childAt != null) {
                    RecyclerView.this.sl(childAt);
                    childAt.clearAnimation();
                }
                RecyclerView.this.removeViewAt(i10);
            }

            @Override // com.byazt.kt.tt.InterfaceC0363tt
            public gu tt(View view) {
                return RecyclerView.n(view);
            }

            @Override // com.byazt.kt.tt.InterfaceC0363tt
            public void ve(View view) {
                gu guVarN = RecyclerView.n(view);
                if (guVarN != null) {
                    guVarN.c(RecyclerView.this);
                }
            }

            @Override // com.byazt.kt.tt.InterfaceC0363tt
            public void c(View view, int i10, ViewGroup.LayoutParams layoutParams) {
                gu guVarN = RecyclerView.n(view);
                if (guVarN != null) {
                    if (!guVarN.rh() && !guVarN.R_()) {
                        throw new IllegalArgumentException("Called attach on a child which is not detached: " + guVarN + RecyclerView.this.c());
                    }
                    guVarN.u();
                }
                RecyclerView.this.attachViewToParent(view, i10, layoutParams);
            }
        });
    }

    public void a() {
        setScrollState(0);
        p();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i10, int i11) {
        i iVar = this.yp;
        if (iVar == null || !iVar.c(this, arrayList, i10, i11)) {
            super.addFocusables(arrayList, i10, i11);
        }
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof da) && this.yp.c((da) layoutParams);
    }

    @Override // android.view.View
    public int computeHorizontalScrollExtent() {
        i iVar = this.yp;
        if (iVar != null && iVar.ve()) {
            return this.yp.n(this.f16331h);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeHorizontalScrollOffset() {
        i iVar = this.yp;
        if (iVar != null && iVar.ve()) {
            return this.yp.ve(this.f16331h);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeHorizontalScrollRange() {
        i iVar = this.yp;
        if (iVar != null && iVar.ve()) {
            return this.yp.sp(this.f16331h);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollExtent() {
        i iVar = this.yp;
        if (iVar != null && iVar.uj()) {
            return this.yp.a(this.f16331h);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollOffset() {
        i iVar = this.yp;
        if (iVar != null && iVar.uj()) {
            return this.yp.uj(this.f16331h);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollRange() {
        i iVar = this.yp;
        if (iVar != null && iVar.uj()) {
            return this.yp.x(this.f16331h);
        }
        return 0;
    }

    public void da() {
        if (this.os == null) {
            EdgeEffect edgeEffectC = this.f16340q.c(this, 3);
            this.os = edgeEffectC;
            if (this.f16333i) {
                edgeEffectC.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
            } else {
                edgeEffectC.setSize(getMeasuredWidth(), getMeasuredHeight());
            }
        }
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f10, float f11, boolean z10) {
        return getScrollingChildHelper().c(f10, f11, z10);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f10, float f11) {
        return getScrollingChildHelper().c(f10, f11);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i10, int i11, int[] iArr, int[] iArr2) {
        return getScrollingChildHelper().c(i10, i11, iArr, iArr2);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i10, int i11, int i12, int i13, int[] iArr) {
        return getScrollingChildHelper().c(i10, i11, i12, i13, iArr);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchSaveInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        boolean z10;
        super.draw(canvas);
        int size = this.f16336m.size();
        boolean z11 = false;
        for (int i10 = 0; i10 < size; i10++) {
            this.f16336m.get(i10);
        }
        EdgeEffect edgeEffect = this.kk;
        if (edgeEffect == null || edgeEffect.isFinished()) {
            z10 = false;
        } else {
            int iSave = canvas.save();
            int paddingBottom = this.f16333i ? getPaddingBottom() : 0;
            canvas.rotate(270.0f);
            canvas.translate((-getHeight()) + paddingBottom, 0.0f);
            EdgeEffect edgeEffect2 = this.kk;
            z10 = edgeEffect2 != null && edgeEffect2.draw(canvas);
            canvas.restoreToCount(iSave);
        }
        EdgeEffect edgeEffect3 = this.tx;
        if (edgeEffect3 != null && !edgeEffect3.isFinished()) {
            int iSave2 = canvas.save();
            if (this.f16333i) {
                canvas.translate(getPaddingLeft(), getPaddingTop());
            }
            EdgeEffect edgeEffect4 = this.tx;
            z10 |= edgeEffect4 != null && edgeEffect4.draw(canvas);
            canvas.restoreToCount(iSave2);
        }
        EdgeEffect edgeEffect5 = this.f16345v;
        if (edgeEffect5 != null && !edgeEffect5.isFinished()) {
            int iSave3 = canvas.save();
            int width = getWidth();
            int paddingTop = this.f16333i ? getPaddingTop() : 0;
            canvas.rotate(90.0f);
            canvas.translate(-paddingTop, -width);
            EdgeEffect edgeEffect6 = this.f16345v;
            z10 |= edgeEffect6 != null && edgeEffect6.draw(canvas);
            canvas.restoreToCount(iSave3);
        }
        EdgeEffect edgeEffect7 = this.os;
        if (edgeEffect7 != null && !edgeEffect7.isFinished()) {
            int iSave4 = canvas.save();
            canvas.rotate(180.0f);
            if (this.f16333i) {
                canvas.translate((-getWidth()) + getPaddingRight(), (-getHeight()) + getPaddingBottom());
            } else {
                canvas.translate(-getWidth(), -getHeight());
            }
            EdgeEffect edgeEffect8 = this.os;
            if (edgeEffect8 != null && edgeEffect8.draw(canvas)) {
                z11 = true;
            }
            z10 |= z11;
            canvas.restoreToCount(iSave4);
        }
        if ((z10 || this.zm == null || this.f16336m.size() <= 0 || !this.zm.tt()) ? z10 : true) {
            com.byazt.fq.sp.ve(this);
        }
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j10) {
        return super.drawChild(canvas, view, j10);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public View focusSearch(View view, int i10) {
        View viewC;
        boolean z10;
        View viewUj = this.yp.uj(view, i10);
        if (viewUj != null) {
            return viewUj;
        }
        boolean z11 = (this.f16344u == null || this.yp == null || yp() || this.rl) ? false : true;
        FocusFinder focusFinder = FocusFinder.getInstance();
        if (z11 && (i10 == 2 || i10 == 1)) {
            if (this.yp.uj()) {
                int i11 = i10 == 2 ? 130 : 33;
                z10 = focusFinder.findNextFocus(this, view, i11) == null;
                if (sv) {
                    i10 = i11;
                }
            } else {
                z10 = false;
            }
            if (!z10 && this.yp.ve()) {
                int i12 = (this.yp.nu() == 1) ^ (i10 == 2) ? 66 : 17;
                boolean z12 = focusFinder.findNextFocus(this, view, i12) == null;
                if (sv) {
                    i10 = i12;
                }
                z10 = z12;
            }
            if (z10) {
                uj();
                if (ve(view) == null) {
                    return null;
                }
                n();
                this.yp.c(view, i10, this.f16338n, this.f16331h);
                c(false);
            }
            viewC = focusFinder.findNextFocus(this, view, i10);
        } else {
            View viewFindNextFocus = focusFinder.findNextFocus(this, view, i10);
            if (viewFindNextFocus == null && z11) {
                uj();
                if (ve(view) == null) {
                    return null;
                }
                n();
                viewC = this.yp.c(view, i10, this.f16338n, this.f16331h);
                c(false);
            } else {
                viewC = viewFindNextFocus;
            }
        }
        if (viewC == null || viewC.hasFocusable()) {
            return c(view, viewC, i10) ? viewC : super.focusSearch(view, i10);
        }
        if (getFocusedChild() == null) {
            return super.focusSearch(view, i10);
        }
        c(viewC, (View) null);
        return view;
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        i iVar = this.yp;
        if (iVar != null) {
            return iVar.tt();
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + c());
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        i iVar = this.yp;
        if (iVar != null) {
            return iVar.c(getContext(), attributeSet);
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + c());
    }

    public c getAdapter() {
        return this.f16344u;
    }

    @Override // android.view.View
    public int getBaseline() {
        i iVar = this.yp;
        return iVar != null ? iVar.rh() : super.getBaseline();
    }

    @Override // android.view.ViewGroup
    public int getChildDrawingOrder(int i10, int i11) {
        uj ujVar = this.gx;
        return ujVar == null ? super.getChildDrawingOrder(i10, i11) : ujVar.c(i10, i11);
    }

    @Override // android.view.ViewGroup
    public boolean getClipToPadding() {
        return this.f16333i;
    }

    public n getEdgeEffectFactory() {
        return this.f16340q;
    }

    public a getItemAnimator() {
        return this.zm;
    }

    public int getItemDecorationCount() {
        return this.f16336m.size();
    }

    public i getLayoutManager() {
        return this.yp;
    }

    public int getMaxFlingVelocity() {
        return this.ir;
    }

    public int getMinFlingVelocity() {
        return this.f16329f;
    }

    public long getNanoTime() {
        if (uj) {
            return System.nanoTime();
        }
        return 0L;
    }

    public t getOnFlingListener() {
        return this.yf;
    }

    public boolean getPreserveFocusAfterLayout() {
        return this.xd;
    }

    public z getRecycledViewPool() {
        return this.f16338n.sp();
    }

    public int getScrollState() {
        return this.oz;
    }

    public void gt() {
        int iVe = this.sp.ve();
        for (int i10 = 0; i10 < iVe; i10++) {
            gu guVarN = n(this.sp.uj(i10));
            if (guVarN != null && !guVarN.R_()) {
                guVarN.tt(6);
            }
        }
        nu();
        this.f16338n.x();
    }

    public void gu() {
        int i10;
        for (int size = this.qp.size() - 1; size >= 0; size--) {
            gu guVar = this.qp.get(size);
            if (guVar.f16372c.getParent() == this && !guVar.R_() && (i10 = guVar.f16380z) != -1) {
                com.byazt.fq.sp.c(guVar.f16372c, i10);
                guVar.f16380z = -1;
            }
        }
        this.qp.clear();
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return getScrollingChildHelper().tt();
    }

    public void i() {
        if (this.tx == null) {
            EdgeEffect edgeEffectC = this.f16340q.c(this, 1);
            this.tx = edgeEffectC;
            if (this.f16333i) {
                edgeEffectC.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
            } else {
                edgeEffectC.setSize(getMeasuredWidth(), getMeasuredHeight());
            }
        }
    }

    @Override // android.view.View
    public boolean isAttachedToWindow() {
        return this.nu;
    }

    @Override // android.view.View
    public boolean isNestedScrollingEnabled() {
        return getScrollingChildHelper().c();
    }

    public void m() {
        if (this.f16344u == null) {
            com.byazt.nr.m.uj("RecyclerView", "No adapter attached; skipping layout");
            return;
        }
        if (this.yp == null) {
            com.byazt.nr.m.uj("RecyclerView", "No layout manager attached; skipping layout");
            return;
        }
        gt gtVar = this.f16331h;
        gtVar.f16364i = false;
        if (gtVar.uj != 1) {
            if (!this.f16325a.a() && this.yp.qy() == getWidth() && this.yp.gu() == getHeight()) {
                this.yp.uj(this);
            }
            aw();
        }
        bx();
        this.yp.uj(this);
        sv();
        aw();
    }

    public void my() {
        int iVe = this.sp.ve();
        for (int i10 = 0; i10 < iVe; i10++) {
            gu guVarN = n(this.sp.uj(i10));
            if (!guVarN.R_()) {
                guVarN.c();
            }
        }
        this.f16338n.i();
    }

    public void nu() {
        int iVe = this.sp.ve();
        for (int i10 = 0; i10 < iVe; i10++) {
            ((da) this.sp.uj(i10).getLayoutParams()).ve = true;
        }
        this.f16338n.da();
    }

    /* JADX WARN: Code duplicated, block: B:21:0x004e  */
    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        float refreshRate;
        super.onAttachedToWindow();
        this.kp = 0;
        this.nu = true;
        this.my = this.my && !isLayoutRequested();
        i iVar = this.yp;
        if (iVar != null) {
            iVar.tt(this);
        }
        this.f16349zb = false;
        if (uj) {
            ThreadLocal<com.byazt.kt.uj> threadLocal = com.byazt.kt.uj.f16445c;
            com.byazt.kt.uj ujVar = threadLocal.get();
            this.f16339p = ujVar;
            if (ujVar == null) {
                this.f16339p = new com.byazt.kt.uj();
                Display displaySp = com.byazt.fq.sp.sp(this);
                if (isInEditMode() || displaySp == null) {
                    refreshRate = 60.0f;
                } else {
                    refreshRate = displaySp.getRefreshRate();
                    if (refreshRate < 30.0f) {
                        refreshRate = 60.0f;
                    }
                }
                com.byazt.kt.uj ujVar2 = this.f16339p;
                ujVar2.uj = (long) (1.0E9f / refreshRate);
                threadLocal.set(ujVar2);
            }
            this.f16339p.c(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        com.byazt.kt.uj ujVar;
        super.onDetachedFromWindow();
        a aVar = this.zm;
        if (aVar != null) {
            aVar.uj();
        }
        a();
        this.nu = false;
        i iVar = this.yp;
        if (iVar != null) {
            iVar.tt(this, this.f16338n);
        }
        this.qp.clear();
        removeCallbacks(this.vp);
        this.f16346x.tt();
        if (!uj || (ujVar = this.f16339p) == null) {
            return;
        }
        ujVar.tt(this);
        this.f16339p = null;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int size = this.f16336m.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.f16336m.get(i10);
        }
    }

    /* JADX WARN: Code duplicated, block: B:27:0x005f  */
    @Override // android.view.View
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        float f10;
        float axisValue;
        if (this.yp != null && !this.rl && motionEvent.getAction() == 8) {
            if ((motionEvent.getSource() & 2) != 0) {
                f10 = this.yp.uj() ? -motionEvent.getAxisValue(9) : 0.0f;
                axisValue = this.yp.ve() ? motionEvent.getAxisValue(10) : 0.0f;
            } else if ((motionEvent.getSource() & 4194304) != 0) {
                axisValue = motionEvent.getAxisValue(26);
                if (this.yp.uj()) {
                    f10 = -axisValue;
                } else if (this.yp.ve()) {
                    f10 = 0.0f;
                } else {
                    f10 = 0.0f;
                }
            } else {
                f10 = 0.0f;
            }
            if (f10 != 0.0f || axisValue != 0.0f) {
                c((int) (axisValue * this.f16330g), (int) (f10 * this.hj), motionEvent);
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z10;
        if (this.rl) {
            return false;
        }
        if (c(motionEvent)) {
            d();
            return true;
        }
        i iVar = this.yp;
        if (iVar == null) {
            return false;
        }
        boolean zVe = iVar.ve();
        boolean zUj = this.yp.uj();
        if (this.f16342s == null) {
            this.f16342s = VelocityTracker.obtain();
        }
        this.f16342s.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            if (this.pu) {
                this.pu = false;
            }
            this.f16341r = motionEvent.getPointerId(0);
            int x10 = (int) (motionEvent.getX() + 0.5f);
            this.f16334j = x10;
            this.f16347y = x10;
            int y10 = (int) (motionEvent.getY() + 0.5f);
            this.dz = y10;
            this.iu = y10;
            if (this.oz == 2) {
                getParent().requestDisallowInterceptTouchEvent(true);
                setScrollState(1);
            }
            int[] iArr = this.yo;
            iArr[1] = 0;
            iArr[0] = 0;
            int i10 = zVe;
            if (zUj) {
                i10 = (zVe ? 1 : 0) | 2;
            }
            i(i10, 0);
        } else if (actionMasked == 1) {
            this.f16342s.clear();
            x(0);
        } else if (actionMasked == 2) {
            int iFindPointerIndex = motionEvent.findPointerIndex(this.f16341r);
            if (iFindPointerIndex < 0) {
                com.byazt.nr.m.uj("RecyclerView", "Error processing scroll; pointer index for id " + this.f16341r + " not found. Did any MotionEvents get skipped?");
                return false;
            }
            int x11 = (int) (motionEvent.getX(iFindPointerIndex) + 0.5f);
            int y11 = (int) (motionEvent.getY(iFindPointerIndex) + 0.5f);
            if (this.oz != 1) {
                int i11 = x11 - this.f16347y;
                int i12 = y11 - this.iu;
                if (!zVe || Math.abs(i11) <= this.f16337ma) {
                    z10 = false;
                } else {
                    this.f16334j = x11;
                    z10 = true;
                }
                if (zUj && Math.abs(i12) > this.f16337ma) {
                    this.dz = y11;
                    z10 = true;
                }
                if (z10) {
                    setScrollState(1);
                }
            }
        } else if (actionMasked == 3) {
            d();
        } else if (actionMasked == 5) {
            this.f16341r = motionEvent.getPointerId(actionIndex);
            int x12 = (int) (motionEvent.getX(actionIndex) + 0.5f);
            this.f16334j = x12;
            this.f16347y = x12;
            int y12 = (int) (motionEvent.getY(actionIndex) + 0.5f);
            this.dz = y12;
            this.iu = y12;
        } else if (actionMasked == 6) {
            ve(motionEvent);
        }
        return this.oz == 1;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        com.byazt.km.c.c("RV OnLayout");
        m();
        com.byazt.km.c.c();
        this.my = true;
    }

    @Override // android.view.View
    public void onMeasure(int i10, int i11) {
        i iVar = this.yp;
        if (iVar == null) {
            n(i10, i11);
            return;
        }
        boolean z10 = false;
        if (iVar.c()) {
            int mode = View.MeasureSpec.getMode(i10);
            int mode2 = View.MeasureSpec.getMode(i11);
            this.yp.c(this.f16338n, this.f16331h, i10, i11);
            if (mode == 1073741824 && mode2 == 1073741824) {
                z10 = true;
            }
            if (z10 || this.f16344u == null) {
                return;
            }
            if (this.f16331h.uj == 1) {
                bx();
            }
            this.yp.tt(i10, i11);
            this.f16331h.f16364i = true;
            sv();
            this.yp.ve(i10, i11);
            if (this.yp.i()) {
                this.yp.tt(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
                this.f16331h.f16364i = true;
                sv();
                this.yp.ve(i10, i11);
                return;
            }
            return;
        }
        if (this.rh) {
            this.yp.c(this.f16338n, this.f16331h, i10, i11);
            return;
        }
        if (this.qy) {
            n();
            t();
            or();
            u();
            gt gtVar = this.f16331h;
            if (gtVar.sl) {
                gtVar.sp = true;
            } else {
                this.f16325a.n();
                this.f16331h.sp = false;
            }
            this.qy = false;
            c(false);
        } else if (this.f16331h.sl) {
            setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
            return;
        }
        c cVar = this.f16344u;
        if (cVar != null) {
            this.f16331h.f16366n = cVar.c();
        } else {
            this.f16331h.f16366n = 0;
        }
        n();
        this.yp.c(this.f16338n, this.f16331h, i10, i11);
        c(false);
        this.f16331h.sp = false;
    }

    @Override // android.view.ViewGroup
    public boolean onRequestFocusInDescendants(int i10, Rect rect) {
        if (yp()) {
            return false;
        }
        return super.onRequestFocusInDescendants(i10, rect);
    }

    @Override // android.view.View
    public void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        if (i10 == i12 && i11 == i13) {
            return;
        }
        sl();
    }

    /* JADX WARN: Code duplicated, block: B:50:0x0104  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int i10;
        boolean z10;
        boolean z11 = false;
        if (this.rl || this.pu) {
            return false;
        }
        if (tt(motionEvent)) {
            d();
            return true;
        }
        i iVar = this.yp;
        if (iVar == null) {
            return false;
        }
        boolean zVe = iVar.ve();
        boolean zUj = this.yp.uj();
        if (this.f16342s == null) {
            this.f16342s = VelocityTracker.obtain();
        }
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            int[] iArr = this.yo;
            iArr[1] = 0;
            iArr[0] = 0;
        }
        int[] iArr2 = this.yo;
        motionEventObtain.offsetLocation(iArr2[0], iArr2[1]);
        if (actionMasked == 0) {
            this.f16341r = motionEvent.getPointerId(0);
            int x10 = (int) (motionEvent.getX() + 0.5f);
            this.f16334j = x10;
            this.f16347y = x10;
            int y10 = (int) (motionEvent.getY() + 0.5f);
            this.dz = y10;
            this.iu = y10;
            if (zUj) {
                i10 = zVe;
                i10 = (zVe ? 1 : 0) | 2;
            }
            i10 = zVe;
            i(i10, 0);
        } else if (actionMasked == 1) {
            this.f16342s.addMovement(motionEventObtain);
            this.f16342s.computeCurrentVelocity(1000, this.ir);
            float f10 = zVe ? -this.f16342s.getXVelocity(this.f16341r) : 0.0f;
            float f11 = zUj ? -this.f16342s.getYVelocity(this.f16341r) : 0.0f;
            if ((f10 == 0.0f && f11 == 0.0f) || !tt((int) f10, (int) f11)) {
                setScrollState(0);
            }
            h();
            z11 = true;
        } else if (actionMasked == 2) {
            int iFindPointerIndex = motionEvent.findPointerIndex(this.f16341r);
            if (iFindPointerIndex < 0) {
                com.byazt.nr.m.uj("RecyclerView", "Error processing scroll; pointer index for id " + this.f16341r + " not found. Did any MotionEvents get skipped?");
                return false;
            }
            int x11 = (int) (motionEvent.getX(iFindPointerIndex) + 0.5f);
            int y11 = (int) (motionEvent.getY(iFindPointerIndex) + 0.5f);
            int i11 = this.f16334j - x11;
            int i12 = this.dz - y11;
            if (c(i11, i12, this.or, this.pn, 0)) {
                int[] iArr3 = this.or;
                i11 -= iArr3[0];
                i12 -= iArr3[1];
                int[] iArr4 = this.pn;
                motionEventObtain.offsetLocation(iArr4[0], iArr4[1]);
                int[] iArr5 = this.yo;
                int i13 = iArr5[0];
                int[] iArr6 = this.pn;
                iArr5[0] = i13 + iArr6[0];
                iArr5[1] = iArr5[1] + iArr6[1];
            }
            if (this.oz != 1) {
                if (zVe) {
                    int iAbs = Math.abs(i11);
                    int i14 = this.f16337ma;
                    if (iAbs > i14) {
                        i11 = i11 > 0 ? i11 - i14 : i11 + i14;
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                } else {
                    z10 = false;
                }
                if (zUj) {
                    int iAbs2 = Math.abs(i12);
                    int i15 = this.f16337ma;
                    if (iAbs2 > i15) {
                        i12 = i12 > 0 ? i12 - i15 : i12 + i15;
                        z10 = true;
                    }
                }
                if (z10) {
                    setScrollState(1);
                }
            }
            if (this.oz == 1) {
                int[] iArr7 = this.pn;
                this.f16334j = x11 - iArr7[0];
                this.dz = y11 - iArr7[1];
                if (c(zVe ? i11 : 0, zUj ? i12 : 0, motionEventObtain)) {
                    getParent().requestDisallowInterceptTouchEvent(true);
                }
                com.byazt.kt.uj ujVar = this.f16339p;
                if (ujVar != null && (i11 != 0 || i12 != 0)) {
                    ujVar.c(this, i11, i12);
                }
            }
        } else if (actionMasked == 3) {
            d();
        } else if (actionMasked == 5) {
            this.f16341r = motionEvent.getPointerId(actionIndex);
            int x12 = (int) (motionEvent.getX(actionIndex) + 0.5f);
            this.f16334j = x12;
            this.f16347y = x12;
            int y12 = (int) (motionEvent.getY(actionIndex) + 0.5f);
            this.dz = y12;
            this.iu = y12;
        } else if (actionMasked == 6) {
            ve(motionEvent);
        }
        if (!z11) {
            this.f16342s.addMovement(motionEventObtain);
        }
        motionEventObtain.recycle();
        return true;
    }

    public void qy() {
        gu guVar;
        int iTt = this.sp.tt();
        for (int i10 = 0; i10 < iTt; i10++) {
            View viewTt = this.sp.tt(i10);
            gu guVarTt = tt(viewTt);
            if (guVarTt != null && (guVar = guVarTt.f16374i) != null) {
                View view = guVar.f16372c;
                int left = viewTt.getLeft();
                int top = viewTt.getTop();
                if (left != view.getLeft() || top != view.getTop()) {
                    view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
                }
            }
        }
    }

    @Override // android.view.ViewGroup
    public void removeDetachedView(View view, boolean z10) {
        gu guVarN = n(view);
        if (guVarN != null) {
            if (guVarN.rh()) {
                guVarN.u();
            } else if (!guVarN.R_()) {
                throw new IllegalArgumentException("Called removeDetachedView with a view which is not flagged as tmp detached." + guVarN + c());
            }
        }
        view.clearAnimation();
        sl(view);
        super.removeDetachedView(view, z10);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        if (!this.yp.c(this, this.f16331h, view, view2) && view2 != null) {
            c(view, view2);
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z10) {
        return this.yp.c(this, view, rect, z10);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z10) {
        int size = this.lr.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.lr.get(i10);
        }
        super.requestDisallowInterceptTouchEvent(z10);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.lo != 0 || this.rl) {
            this.gt = true;
        } else {
            super.requestLayout();
        }
    }

    public void rh() {
        int iVe = this.sp.ve();
        for (int i10 = 0; i10 < iVe; i10++) {
            gu guVarN = n(this.sp.uj(i10));
            if (!guVarN.R_()) {
                guVarN.tt();
            }
        }
    }

    public boolean rl() {
        return !this.my || this.gu || this.f16325a.uj();
    }

    @Override // android.view.View
    public void scrollBy(int i10, int i11) {
        i iVar = this.yp;
        if (iVar == null) {
            com.byazt.nr.m.uj("RecyclerView", "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.rl) {
            return;
        }
        boolean zVe = iVar.ve();
        boolean zUj = this.yp.uj();
        if (zVe || zUj) {
            if (!zVe) {
                i10 = 0;
            }
            if (!zUj) {
                i11 = 0;
            }
            c(i10, i11, (MotionEvent) null);
        }
    }

    public void setAdapter(c cVar) {
        setLayoutFrozen(false);
        c(cVar, false, true);
        ve(false);
        requestLayout();
    }

    public void setChildDrawingOrderCallback(uj ujVar) {
        if (ujVar != this.gx) {
            this.gx = ujVar;
            setChildrenDrawingOrderEnabled(ujVar != null);
        }
    }

    @Override // android.view.ViewGroup
    public void setClipToPadding(boolean z10) {
        if (z10 != this.f16333i) {
            sl();
        }
        this.f16333i = z10;
        super.setClipToPadding(z10);
        if (this.my) {
            requestLayout();
        }
    }

    public void setEdgeEffectFactory(n nVar) {
        c(nVar);
        this.f16340q = nVar;
        sl();
    }

    public void setHasFixedSize(boolean z10) {
        this.rh = z10;
    }

    public void setItemAnimator(a aVar) {
        a aVar2 = this.zm;
        if (aVar2 != null) {
            aVar2.uj();
            this.zm.c(null);
        }
        this.zm = aVar;
        if (aVar != null) {
            aVar.c(this.nt);
        }
    }

    public void setItemViewCacheSize(int i10) {
        this.f16338n.c(i10);
    }

    public void setLayoutFrozen(boolean z10) {
        if (z10 != this.rl) {
            c("Do not setLayoutFrozen in layout or scroll");
            if (z10) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                onTouchEvent(MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0));
                this.rl = true;
                this.pu = true;
                a();
                return;
            }
            this.rl = false;
            if (this.gt && this.yp != null && this.f16344u != null) {
                requestLayout();
            }
            this.gt = false;
        }
    }

    public void setLayoutManager(i iVar) {
        if (iVar != this.yp) {
            a();
            if (this.yp != null) {
                a aVar = this.zm;
                if (aVar != null) {
                    aVar.uj();
                }
                this.yp.ve(this.f16338n);
                this.yp.tt(this.f16338n);
                this.f16338n.c();
                if (this.nu) {
                    this.yp.tt(this, this.f16338n);
                }
                this.yp.c((RecyclerView) null);
                this.yp = null;
            } else {
                this.f16338n.c();
            }
            this.sp.c();
            this.yp = iVar;
            if (iVar != null) {
                if (iVar.f16384i != null) {
                    throw new IllegalArgumentException("LayoutManager " + iVar + " is already attached to a RecyclerView:" + iVar.f16384i.c());
                }
                iVar.c(this);
                if (this.nu) {
                    this.yp.tt(this);
                }
            }
            this.f16338n.tt();
            requestLayout();
        }
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z10) {
        getScrollingChildHelper().c(z10);
    }

    public void setOnFlingListener(t tVar) {
        this.yf = tVar;
    }

    public void setPreserveFocusAfterLayout(boolean z10) {
        this.xd = z10;
    }

    public void setRecycledViewPool(z zVar) {
        this.f16338n.c(zVar);
    }

    public void setRecyclerListener(nu nuVar) {
        this.f16348z = nuVar;
    }

    public void setScrollState(int i10) {
        if (i10 != this.oz) {
            this.oz = i10;
            if (i10 != 2) {
                p();
            }
            sp(i10);
        }
    }

    public void setViewCacheExtension(rl rlVar) {
        this.f16338n.c(rlVar);
    }

    public void sl() {
        this.os = null;
        this.tx = null;
        this.f16345v = null;
        this.kk = null;
    }

    public void sp() {
        if (this.kk == null) {
            EdgeEffect edgeEffectC = this.f16340q.c(this, 0);
            this.kk = edgeEffectC;
            if (this.f16333i) {
                edgeEffectC.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
            } else {
                edgeEffectC.setSize(getMeasuredHeight(), getMeasuredWidth());
            }
        }
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i10) {
        return getScrollingChildHelper().tt(i10);
    }

    @Override // android.view.View, com.byazt.fq.tt
    public void stopNestedScroll() {
        getScrollingChildHelper().ve();
    }

    public void t() {
        this.kp++;
    }

    public void tt() {
        this.f16325a = new com.byazt.kt.c(new com.byazt.kt.c.InterfaceC0362c() { // from class: com.byazt.kt.RecyclerView.5
            @Override // com.byazt.kt.c.InterfaceC0362c
            public gu c(int i10) {
                gu guVarC = RecyclerView.this.c(i10, true);
                if (guVarC == null || RecyclerView.this.sp.ve(guVarC.f16372c)) {
                    return null;
                }
                return guVarC;
            }

            @Override // com.byazt.kt.c.InterfaceC0362c
            public void tt(int i10, int i11) {
                RecyclerView.this.c(i10, i11, false);
                RecyclerView.this.f16327d = true;
            }

            @Override // com.byazt.kt.c.InterfaceC0362c
            public void uj(int i10, int i11) {
                RecyclerView.this.a(i10, i11);
                RecyclerView.this.f16327d = true;
            }

            @Override // com.byazt.kt.c.InterfaceC0362c
            public void ve(int i10, int i11) {
                RecyclerView.this.sp(i10, i11);
                RecyclerView.this.f16327d = true;
            }

            @Override // com.byazt.kt.c.InterfaceC0362c
            public void c(int i10, int i11) {
                RecyclerView.this.c(i10, i11, true);
                RecyclerView recyclerView = RecyclerView.this;
                recyclerView.f16327d = true;
                recyclerView.f16331h.ve += i11;
            }

            @Override // com.byazt.kt.c.InterfaceC0362c
            public void c(int i10, int i11, Object obj) {
                RecyclerView.this.c(i10, i11, obj);
                RecyclerView.this.eo = true;
            }
        });
    }

    public void u() {
        tt(true);
    }

    public void uj() {
        if (this.my && !this.gu) {
            if (!this.f16325a.uj()) {
                return;
            }
            if (this.f16325a.c(4) && !this.f16325a.c(11)) {
                com.byazt.km.c.c("RV PartialInvalidate");
                n();
                t();
                this.f16325a.tt();
                if (!this.gt) {
                    if (yv()) {
                        m();
                    } else {
                        this.f16325a.ve();
                    }
                }
                c(true);
                u();
                com.byazt.km.c.c();
                return;
            }
            if (!this.f16325a.uj()) {
                return;
            }
        }
        com.byazt.km.c.c("RV FullInvalidate");
        m();
        com.byazt.km.c.c();
    }

    public void ve() {
        a aVar = this.zm;
        if (aVar != null) {
            aVar.uj();
        }
        i iVar = this.yp;
        if (iVar != null) {
            iVar.ve(this.f16338n);
            this.yp.tt(this.f16338n);
        }
        this.f16338n.c();
    }

    public void x() {
        if (this.f16345v == null) {
            EdgeEffect edgeEffectC = this.f16340q.c(this, 2);
            this.f16345v = edgeEffectC;
            if (this.f16333i) {
                edgeEffectC.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
            } else {
                edgeEffectC.setSize(getMeasuredHeight(), getMeasuredWidth());
            }
        }
    }

    public boolean yp() {
        return this.kp > 0;
    }

    public void z() {
        if (this.f16349zb || !this.nu) {
            return;
        }
        com.byazt.fq.sp.c(this, this.vp);
        this.f16349zb = true;
    }

    @com.byazt.zqa.c(c = {0, 1, 166, 2376})
    public static class gt {

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public int f16365m;
        public SparseArray<Object> nu;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public int f16367t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public long f16368u;
        public int yp;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        public int f16370z;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f16362c = -1;
        public int tt = 0;
        public int ve = 0;
        public int uj = 1;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public int f16366n = 0;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f16361a = false;
        public boolean sp = false;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public boolean f16369x = false;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public boolean f16364i = false;

        /* JADX INFO: renamed from: da, reason: collision with root package name */
        public boolean f16363da = false;
        public boolean sl = false;

        public void c(int i10) {
            if ((this.uj & i10) != 0) {
                return;
            }
            throw new IllegalStateException("Layout state should be one of " + Integer.toBinaryString(i10) + " but it is " + Integer.toBinaryString(this.uj));
        }

        public String toString() {
            return "State{mTargetPosition=" + this.f16362c + ", mData=" + this.nu + ", mItemCount=" + this.f16366n + ", mIsMeasuring=" + this.f16364i + ", mPreviousLayoutItemCount=" + this.tt + ", mDeletedInvisibleItemCountSincePreviousLayout=" + this.ve + ", mStructureChanged=" + this.f16361a + ", mInPreLayout=" + this.sp + ", mRunSimpleAnimations=" + this.f16363da + ", mRunPredictiveAnimations=" + this.sl + '}';
        }

        public boolean tt() {
            return this.sl;
        }

        public int uj() {
            return this.sp ? this.tt - this.ve : this.f16366n;
        }

        public boolean ve() {
            return this.f16362c != -1;
        }

        public void c(c cVar) {
            this.uj = 1;
            this.f16366n = cVar.c();
            this.sp = false;
            this.f16369x = false;
            this.f16364i = false;
        }

        public boolean c() {
            return this.sp;
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 166, 2379})
    public static abstract class gu {
        public static final List<Object> nu = Collections.emptyList();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final View f16372c;

        /* JADX INFO: renamed from: da, reason: collision with root package name */
        public int f16373da;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public RecyclerView f16375m;
        public WeakReference<RecyclerView> tt;
        public int ve = -1;
        public int uj = -1;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public long f16376n = -1;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f16371a = -1;
        public int sp = -1;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public gu f16379x = null;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public gu f16374i = null;
        public List<Object> sl = null;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public List<Object> f16377t = null;
        public int rh = 0;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public m f16378u = null;
        public boolean yp = false;
        public int my = 0;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        public int f16380z = -1;

        public gu(View view) {
            if (view == null) {
                throw new IllegalArgumentException("itemView may not be null");
            }
            this.f16372c = view;
        }

        private void p() {
            if (this.sl == null) {
                ArrayList arrayList = new ArrayList();
                this.sl = arrayList;
                this.f16377t = Collections.unmodifiableList(arrayList);
            }
        }

        public boolean R_() {
            return (this.f16373da & 128) != 0;
        }

        public final int a() {
            return this.uj;
        }

        public void c(int i10, int i11, boolean z10) {
            tt(8);
            c(i11, z10);
            this.ve = i10;
        }

        public void da() {
            this.f16378u.ve(this);
        }

        public boolean gr() {
            return (this.f16373da & 16) != 0;
        }

        public void gt() {
            List<Object> list = this.sl;
            if (list != null) {
                list.clear();
            }
            this.f16373da &= -1025;
        }

        public final boolean gu() {
            return (this.f16373da & 16) == 0 && !com.byazt.fq.sp.a(this.f16372c);
        }

        public boolean i() {
            return this.f16378u != null;
        }

        public boolean m() {
            return (this.f16373da & 1) != 0;
        }

        public boolean my() {
            return (this.f16373da & 512) != 0 || yp();
        }

        public final int n() {
            RecyclerView recyclerView = this.f16375m;
            if (recyclerView == null) {
                return -1;
            }
            return recyclerView.uj(this);
        }

        public boolean nu() {
            return (this.f16373da & 8) != 0;
        }

        public void qy() {
            this.f16373da = 0;
            this.ve = -1;
            this.uj = -1;
            this.f16376n = -1L;
            this.sp = -1;
            this.rh = 0;
            this.f16379x = null;
            this.f16374i = null;
            gt();
            this.my = 0;
            this.f16380z = -1;
            RecyclerView.ve(this);
        }

        public boolean rh() {
            return (this.f16373da & 256) != 0;
        }

        public List<Object> rl() {
            if ((this.f16373da & 1024) != 0) {
                return nu;
            }
            List<Object> list = this.sl;
            return (list == null || list.size() == 0) ? nu : this.f16377t;
        }

        public boolean sl() {
            return (this.f16373da & 32) != 0;
        }

        public final long sp() {
            return this.f16376n;
        }

        public void t() {
            this.f16373da &= -33;
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("ViewHolder{" + Integer.toHexString(hashCode()) + " position=" + this.ve + " id=" + this.f16376n + ", oldPos=" + this.uj + ", pLpos:" + this.sp);
            if (i()) {
                sb2.append(" scrap ");
                sb2.append(this.yp ? "[changeScrap]" : "[attachedScrap]");
            }
            if (yp()) {
                sb2.append(" invalid");
            }
            if (!m()) {
                sb2.append(" unbound");
            }
            if (z()) {
                sb2.append(" update");
            }
            if (nu()) {
                sb2.append(" removed");
            }
            if (R_()) {
                sb2.append(" ignored");
            }
            if (rh()) {
                sb2.append(" tmpDetached");
            }
            if (!gu()) {
                sb2.append(" not recyclable(" + this.rh + ")");
            }
            if (my()) {
                sb2.append(" undefined adapter position");
            }
            if (this.f16372c.getParent() == null) {
                sb2.append(" no parent");
            }
            sb2.append("}");
            return sb2.toString();
        }

        public void tt() {
            if (this.uj == -1) {
                this.uj = this.ve;
            }
        }

        public void u() {
            this.f16373da &= -257;
        }

        public final int uj() {
            int i10 = this.sp;
            return i10 == -1 ? this.ve : i10;
        }

        public final int x() {
            return this.f16371a;
        }

        public boolean yp() {
            return (this.f16373da & 4) != 0;
        }

        public boolean yv() {
            return (this.f16373da & 2) != 0;
        }

        public boolean z() {
            return (this.f16373da & 2) != 0;
        }

        public boolean zm() {
            return (this.f16373da & 16) == 0 && com.byazt.fq.sp.a(this.f16372c);
        }

        public void tt(int i10) {
            this.f16373da = i10 | this.f16373da;
        }

        public void c(int i10, boolean z10) {
            if (this.uj == -1) {
                this.uj = this.ve;
            }
            if (this.sp == -1) {
                this.sp = this.ve;
            }
            if (z10) {
                this.sp += i10;
            }
            this.ve += i10;
            if (this.f16372c.getLayoutParams() != null) {
                ((da) this.f16372c.getLayoutParams()).ve = true;
            }
        }

        public void tt(RecyclerView recyclerView) {
            recyclerView.c(this, this.my);
            this.my = 0;
        }

        public void c() {
            this.uj = -1;
            this.sp = -1;
        }

        public void c(m mVar, boolean z10) {
            this.f16378u = mVar;
            this.yp = z10;
        }

        public boolean c(int i10) {
            return (i10 & this.f16373da) != 0;
        }

        public void c(int i10, int i11) {
            this.f16373da = (i10 & i11) | (this.f16373da & (~i11));
        }

        public void c(Object obj) {
            if (obj == null) {
                tt(1024);
            } else if ((1024 & this.f16373da) == 0) {
                p();
                this.sl.add(obj);
            }
        }

        public void c(RecyclerView recyclerView) {
            int i10 = this.f16380z;
            if (i10 != -1) {
                this.my = i10;
            } else {
                this.my = com.byazt.fq.sp.tt(this.f16372c);
            }
            recyclerView.c(this, 4);
        }

        public final void c(boolean z10) {
            int i10 = this.rh;
            int i11 = z10 ? i10 - 1 : i10 + 1;
            this.rh = i11;
            if (i11 < 0) {
                this.rh = 0;
                com.byazt.nr.m.uj("View", "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
                return;
            }
            if (!z10 && i11 == 1) {
                this.f16373da |= 16;
            } else if (z10 && i11 == 0) {
                this.f16373da &= -17;
            }
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 166, 2503})
    static class tt extends Observable<ve> {
        public void c() {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((ve) ((Observable) this).mObservers.get(size)).c();
            }
        }

        public void c(int i10, int i11) {
            c(i10, i11, null);
        }

        public void c(int i10, int i11, Object obj) {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((ve) ((Observable) this).mObservers.get(size)).c(i10, i11, obj);
            }
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 166, GSSDK.OneInputOPData.InputOP.OP_XINPUT_THUMB_LY_VALUE})
    public static class z {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public SparseArray<c> f16410c = new SparseArray<>();
        public int tt = 0;

        @com.byazt.zqa.c(c = {0, 1, 166, 407})
        static class c {

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final ArrayList<gu> f16411c = new ArrayList<>();
            public int tt = 5;
            public long ve = 0;
            public long uj = 0;
        }

        public void c() {
            for (int i10 = 0; i10 < this.f16410c.size(); i10++) {
                this.f16410c.valueAt(i10).f16411c.clear();
            }
        }

        public void tt(int i10, long j10) {
            c cVarTt = tt(i10);
            cVarTt.uj = c(cVarTt.uj, j10);
        }

        public void ve() {
            this.tt--;
        }

        public boolean tt(int i10, long j10, long j11) {
            long j12 = tt(i10).uj;
            return j12 == 0 || j10 + j12 < j11;
        }

        public gu c(int i10) {
            c cVar = this.f16410c.get(i10);
            if (cVar == null || cVar.f16411c.isEmpty()) {
                return null;
            }
            ArrayList<gu> arrayList = cVar.f16411c;
            return arrayList.remove(arrayList.size() - 1);
        }

        public void tt() {
            this.tt++;
        }

        private c tt(int i10) {
            c cVar = this.f16410c.get(i10);
            if (cVar != null) {
                return cVar;
            }
            c cVar2 = new c();
            this.f16410c.put(i10, cVar2);
            return cVar2;
        }

        public void c(gu guVar) {
            int iX = guVar.x();
            ArrayList<gu> arrayList = tt(iX).f16411c;
            if (this.f16410c.get(iX).tt > arrayList.size()) {
                guVar.qy();
                arrayList.add(guVar);
            }
        }

        public long c(long j10, long j11) {
            return j10 == 0 ? j11 : ((j10 / 4) * 3) + (j11 / 4);
        }

        public void c(int i10, long j10) {
            c cVarTt = tt(i10);
            cVarTt.ve = c(cVarTt.ve, j10);
        }

        public boolean c(int i10, long j10, long j11) {
            long j12 = tt(i10).ve;
            return j12 == 0 || j10 + j12 < j11;
        }

        public void c(c cVar, c cVar2, boolean z10) {
            if (cVar != null) {
                ve();
            }
            if (!z10 && this.tt == 0) {
                c();
            }
            if (cVar2 != null) {
                tt();
            }
        }
    }

    public RecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private int u(View view) {
        int id2 = view.getId();
        while (!view.isFocused() && (view instanceof ViewGroup) && view.hasFocus()) {
            view = ((ViewGroup) view).getFocusedChild();
            if (view.getId() != -1) {
                id2 = view.getId();
            }
        }
        return id2;
    }

    public void sl(View view) {
        n(view);
        List<sl> list = this.tk;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.tk.get(size).tt(view);
            }
        }
    }

    public void t(View view) {
        n(view);
        List<sl> list = this.tk;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.tk.get(size).c(view);
            }
        }
    }

    public void tt(yp ypVar) {
        List<yp> list = this.ny;
        if (list != null) {
            list.remove(ypVar);
        }
    }

    public RecyclerView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f16332hd = new rh();
        this.f16338n = new m();
        this.f16346x = new com.byazt.kt.yp();
        this.f16328da = new Runnable() { // from class: com.byazt.kt.RecyclerView.1
            @Override // java.lang.Runnable
            public void run() {
                RecyclerView recyclerView = RecyclerView.this;
                if (!recyclerView.my || recyclerView.isLayoutRequested()) {
                    return;
                }
                RecyclerView recyclerView2 = RecyclerView.this;
                if (!recyclerView2.nu) {
                    recyclerView2.requestLayout();
                } else if (recyclerView2.rl) {
                    recyclerView2.gt = true;
                } else {
                    recyclerView2.uj();
                }
            }
        };
        this.sl = new Rect();
        this.bm = new Rect();
        this.f16343t = new RectF();
        this.f16336m = new ArrayList<>();
        this.lr = new ArrayList<>();
        this.lo = 0;
        this.gu = false;
        this.gr = false;
        this.kp = 0;
        this.f16326b = 0;
        this.f16340q = new n();
        this.zm = new com.byazt.kt.ve();
        this.oz = 0;
        this.f16341r = -1;
        this.f16330g = Float.MIN_VALUE;
        this.hj = Float.MIN_VALUE;
        this.xd = true;
        this.yv = new qy();
        this.md = uj ? new com.byazt.kt.uj.c() : null;
        this.f16331h = new gt();
        this.f16327d = false;
        this.eo = false;
        this.nt = new sp();
        this.f16349zb = false;
        this.gy = new int[2];
        this.pn = new int[2];
        this.or = new int[2];
        this.yo = new int[2];
        this.cu = new int[2];
        this.qp = new ArrayList();
        this.vp = new Runnable() { // from class: com.byazt.kt.RecyclerView.2
            @Override // java.lang.Runnable
            public void run() {
                a aVar = RecyclerView.this.zm;
                if (aVar != null) {
                    aVar.c();
                }
                RecyclerView.this.f16349zb = false;
            }
        };
        this.kz = new com.byazt.kt.yp.tt() { // from class: com.byazt.kt.RecyclerView.3
            @Override // com.byazt.kt.yp.tt
            public void c(gu guVar, a.tt ttVar, a.tt ttVar2) {
                RecyclerView.this.f16338n.ve(guVar);
                RecyclerView.this.tt(guVar, ttVar, ttVar2);
            }

            @Override // com.byazt.kt.yp.tt
            public void tt(gu guVar, a.tt ttVar, a.tt ttVar2) {
                RecyclerView.this.c(guVar, ttVar, ttVar2);
            }

            @Override // com.byazt.kt.yp.tt
            public void ve(gu guVar, a.tt ttVar, a.tt ttVar2) {
                guVar.c(false);
                RecyclerView recyclerView = RecyclerView.this;
                if (recyclerView.gu) {
                    if (recyclerView.zm.c(guVar, guVar, ttVar, ttVar2)) {
                        RecyclerView.this.z();
                    }
                } else if (recyclerView.zm.ve(guVar, ttVar, ttVar2)) {
                    RecyclerView.this.z();
                }
            }

            @Override // com.byazt.kt.yp.tt
            public void c(gu guVar) {
                RecyclerView recyclerView = RecyclerView.this;
                recyclerView.yp.c(guVar.f16372c, recyclerView.f16338n);
            }
        };
        if (attributeSet != null) {
            try {
                TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, bx, i10, 0);
                this.f16333i = typedArrayObtainStyledAttributes.getBoolean(0, true);
                typedArrayObtainStyledAttributes.recycle();
            } catch (Exception e10) {
                com.byazt.nr.m.c(e10);
            }
        } else {
            this.f16333i = true;
        }
        setScrollContainer(true);
        setFocusableInTouchMode(true);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f16337ma = viewConfiguration.getScaledTouchSlop();
        this.f16330g = com.byazt.fq.sp.c(viewConfiguration, context);
        this.hj = com.byazt.fq.sp.tt(viewConfiguration, context);
        this.f16329f = viewConfiguration.getScaledMinimumFlingVelocity();
        this.ir = viewConfiguration.getScaledMaximumFlingVelocity();
        setWillNotDraw(getOverScrollMode() == 2);
        this.zm.c(this.nt);
        tt();
        zm();
        gr();
        if (com.byazt.fq.sp.tt(this) == 0) {
            com.byazt.fq.sp.c(this, 1);
        }
        this.to = (AccessibilityManager) getContext().getSystemService("accessibility");
        try {
            if (attributeSet != null) {
                setDescendantFocusability(262144);
            } else {
                setDescendantFocusability(262144);
            }
        } catch (Throwable th) {
            com.byazt.nr.m.c(th);
        }
        setNestedScrollingEnabled(true);
    }

    public void a(int i10, int i11) {
        int i12;
        int i13;
        int i14;
        int i15;
        int iVe = this.sp.ve();
        if (i10 < i11) {
            i14 = -1;
            i13 = i10;
            i12 = i11;
        } else {
            i12 = i10;
            i13 = i11;
            i14 = 1;
        }
        for (int i16 = 0; i16 < iVe; i16++) {
            gu guVarN = n(this.sp.uj(i16));
            if (guVarN != null && (i15 = guVarN.ve) >= i13 && i15 <= i12) {
                if (i15 == i10) {
                    guVarN.c(i11 - i10, false);
                } else {
                    guVarN.c(i14, false);
                }
                this.f16331h.f16361a = true;
            }
        }
        this.f16338n.c(i10, i11);
        requestLayout();
    }

    @com.byazt.zqa.c(c = {0, 1, 166, 2369})
    public static class da extends ViewGroup.MarginLayoutParams {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public gu f16360c;
        public final Rect tt;
        public boolean uj;
        public boolean ve;

        public da(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.tt = new Rect();
            this.ve = true;
            this.uj = false;
        }

        public boolean c() {
            return this.f16360c.yp();
        }

        public boolean tt() {
            return this.f16360c.nu();
        }

        public int uj() {
            return this.f16360c.uj();
        }

        public boolean ve() {
            return this.f16360c.yv();
        }

        public da(int i10, int i11) {
            super(i10, i11);
            this.tt = new Rect();
            this.ve = true;
            this.uj = false;
        }

        public da(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.tt = new Rect();
            this.ve = true;
            this.uj = false;
        }

        public da(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.tt = new Rect();
            this.ve = true;
            this.uj = false;
        }

        public da(da daVar) {
            super((ViewGroup.MarginLayoutParams) daVar);
            this.tt = new Rect();
            this.ve = true;
            this.uj = false;
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 166, 2392})
    public static abstract class my {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public View f16398a;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public boolean f16400n;
        public RecyclerView tt;
        public boolean uj;
        public i ve;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public boolean f16401x;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f16399c = -1;
        public final c sp = new c(0, 0);

        @com.byazt.zqa.c(c = {0, 1, 166, 959})
        public static class c {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f16402a;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f16403c;

            /* JADX INFO: renamed from: n, reason: collision with root package name */
            public Interpolator f16404n;
            public int sp;
            public int tt;
            public int uj;
            public int ve;

            public c(int i10, int i11) {
                this(i10, i11, Integer.MIN_VALUE, null);
            }

            private void tt() {
                if (this.f16404n != null && this.ve <= 0) {
                    throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
                }
                if (this.ve <= 0) {
                    throw new IllegalStateException("Scroll duration must be a positive number");
                }
            }

            public void c(int i10) {
                this.uj = i10;
            }

            public void update(int i10, int i11, int i12, Interpolator interpolator) {
                this.f16403c = i10;
                this.tt = i11;
                this.ve = i12;
                this.f16404n = interpolator;
                this.f16402a = true;
            }

            public c(int i10, int i11, int i12, Interpolator interpolator) {
                this.uj = -1;
                this.f16402a = false;
                this.sp = 0;
                this.f16403c = i10;
                this.tt = i11;
                this.ve = i12;
                this.f16404n = interpolator;
            }

            public boolean c() {
                return this.uj >= 0;
            }

            public void c(RecyclerView recyclerView) {
                int i10 = this.uj;
                if (i10 >= 0) {
                    this.uj = -1;
                    recyclerView.c(i10);
                    this.f16402a = false;
                    return;
                }
                if (this.f16402a) {
                    tt();
                    Interpolator interpolator = this.f16404n;
                    if (interpolator == null) {
                        int i11 = this.ve;
                        if (i11 == Integer.MIN_VALUE) {
                            recyclerView.yv.tt(this.f16403c, this.tt);
                        } else {
                            recyclerView.yv.c(this.f16403c, this.tt, i11);
                        }
                    } else {
                        recyclerView.yv.c(this.f16403c, this.tt, this.ve, interpolator);
                    }
                    int i12 = this.sp + 1;
                    this.sp = i12;
                    if (i12 > 10) {
                        com.byazt.nr.m.uj("RecyclerView", "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
                    }
                    this.f16402a = false;
                    return;
                }
                this.sp = 0;
            }
        }

        public interface tt {
            PointF ve(int i10);
        }

        public boolean a() {
            return this.uj;
        }

        public abstract void c();

        public abstract void c(int i10, int i11, gt gtVar, c cVar);

        public abstract void c(View view, gt gtVar, c cVar);

        public void c(RecyclerView recyclerView, i iVar) {
            if (this.f16401x) {
                com.byazt.nr.m.tt("RecyclerView", "An instance of " + getClass().getSimpleName() + " was started more than once. Each instance of" + getClass().getSimpleName() + " is intended to only be used once. You should create a new instance for each use.");
            }
            this.tt = recyclerView;
            this.ve = iVar;
            int i10 = this.f16399c;
            if (i10 == -1) {
                throw new IllegalArgumentException("Invalid target position");
            }
            recyclerView.f16331h.f16362c = i10;
            this.f16400n = true;
            this.uj = true;
            this.f16398a = n(x());
            this.tt.yv.c();
            this.f16401x = true;
        }

        public int i() {
            return this.tt.yp.my();
        }

        public final void n() {
            if (this.f16400n) {
                this.f16400n = false;
                c();
                this.tt.f16331h.f16362c = -1;
                this.f16398a = null;
                this.f16399c = -1;
                this.uj = false;
                this.ve.tt(this);
                this.ve = null;
                this.tt = null;
            }
        }

        public boolean sp() {
            return this.f16400n;
        }

        public void tt(View view) {
            if (c(view) == x()) {
                this.f16398a = view;
            }
        }

        public PointF uj(int i10) {
            Object objUj = uj();
            if (objUj instanceof tt) {
                return ((tt) objUj).ve(i10);
            }
            com.byazt.nr.m.tt("RecyclerView", "You should override computeScrollVectorForPosition when the LayoutManager does not implement " + tt.class.getCanonicalName());
            return null;
        }

        public void ve(int i10) {
            this.f16399c = i10;
        }

        public int x() {
            return this.f16399c;
        }

        public i uj() {
            return this.ve;
        }

        public View n(int i10) {
            return this.tt.yp.tt(i10);
        }

        public void c(int i10, int i11) {
            PointF pointFUj;
            RecyclerView recyclerView = this.tt;
            if (!this.f16400n || this.f16399c == -1 || recyclerView == null) {
                n();
            }
            if (this.uj && this.f16398a == null && this.ve != null && (pointFUj = uj(this.f16399c)) != null) {
                float f10 = pointFUj.x;
                if (f10 != 0.0f || pointFUj.y != 0.0f) {
                    recyclerView.c((int) Math.signum(f10), (int) Math.signum(pointFUj.y), (int[]) null);
                }
            }
            this.uj = false;
            View view = this.f16398a;
            if (view != null) {
                if (c(view) == this.f16399c) {
                    c(this.f16398a, recyclerView.f16331h, this.sp);
                    this.sp.c(recyclerView);
                    n();
                } else {
                    com.byazt.nr.m.uj("RecyclerView", "Passed over target position while smooth scrolling.");
                    this.f16398a = null;
                }
            }
            if (this.f16400n) {
                c(i10, i11, recyclerView.f16331h, this.sp);
                boolean zC = this.sp.c();
                this.sp.c(recyclerView);
                if (zC) {
                    if (this.f16400n) {
                        this.uj = true;
                        recyclerView.yv.c();
                    } else {
                        n();
                    }
                }
            }
        }

        public int c(View view) {
            return this.tt.x(view);
        }

        public void c(PointF pointF) {
            float f10 = pointF.x;
            float f11 = pointF.y;
            float fSqrt = (float) Math.sqrt((f10 * f10) + (f11 * f11));
            pointF.x /= fSqrt;
            pointF.y /= fSqrt;
        }
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        i iVar = this.yp;
        if (iVar != null) {
            return iVar.c(layoutParams);
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + c());
    }

    public void tt(int i10) {
        if (this.rl) {
            return;
        }
        i iVar = this.yp;
        if (iVar == null) {
            com.byazt.nr.m.uj("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else {
            iVar.c(this, this.f16331h, i10);
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 166, 2488})
    private class rh extends ve {
        public rh() {
        }

        @Override // com.byazt.kt.RecyclerView.ve
        public void c() {
            RecyclerView.this.c((String) null);
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.f16331h.f16361a = true;
            recyclerView.ve(true);
            if (RecyclerView.this.f16325a.uj()) {
                return;
            }
            RecyclerView.this.requestLayout();
        }

        public void tt() {
            if (RecyclerView.ve) {
                RecyclerView recyclerView = RecyclerView.this;
                if (recyclerView.rh && recyclerView.nu) {
                    com.byazt.fq.sp.c(recyclerView, recyclerView.f16328da);
                    return;
                }
            }
            RecyclerView recyclerView2 = RecyclerView.this;
            recyclerView2.qy = true;
            recyclerView2.requestLayout();
        }

        @Override // com.byazt.kt.RecyclerView.ve
        public void c(int i10, int i11, Object obj) {
            RecyclerView.this.c((String) null);
            if (RecyclerView.this.f16325a.c(i10, i11, obj)) {
                tt();
            }
        }
    }

    public String c() {
        return " " + super.toString() + ", adapter:" + this.f16344u + ", layout:" + this.yp + ", context:" + getContext();
    }

    private void c(c cVar, boolean z10, boolean z11) {
        c cVar2 = this.f16344u;
        if (cVar2 != null) {
            cVar2.tt(this.f16332hd);
        }
        if (!z10 || z11) {
            ve();
        }
        this.f16325a.c();
        c cVar3 = this.f16344u;
        this.f16344u = cVar;
        if (cVar != null) {
            cVar.c(this.f16332hd);
        }
        this.f16338n.c(cVar3, this.f16344u, z10);
        this.f16331h.f16361a = true;
    }

    private boolean da(int i10, int i11) {
        c(this.gy);
        int[] iArr = this.gy;
        return (iArr[0] == i10 && iArr[1] == i11) ? false : true;
    }

    public Rect i(View view) {
        da daVar = (da) view.getLayoutParams();
        if (!daVar.ve) {
            return daVar.tt;
        }
        if (this.f16331h.c() && (daVar.ve() || daVar.c())) {
            return daVar.tt;
        }
        Rect rect = daVar.tt;
        rect.set(0, 0, 0, 0);
        int size = this.f16336m.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.sl.set(0, 0, 0, 0);
            this.f16336m.get(i10).c(this.sl, view, this, this.f16331h);
            int i11 = rect.left;
            Rect rect2 = this.sl;
            rect.left = i11 + rect2.left;
            rect.top += rect2.top;
            rect.right += rect2.right;
            rect.bottom += rect2.bottom;
        }
        daVar.ve = false;
        return rect;
    }

    public void sp(int i10, int i11) {
        int iVe = this.sp.ve();
        for (int i12 = 0; i12 < iVe; i12++) {
            gu guVarN = n(this.sp.uj(i12));
            if (guVarN != null && !guVarN.R_() && guVarN.ve >= i10) {
                guVarN.c(i11, false);
                this.f16331h.f16361a = true;
            }
        }
        this.f16338n.tt(i10, i11);
        requestLayout();
    }

    public int x(View view) {
        gu guVarN = n(view);
        if (guVarN != null) {
            return guVarN.uj();
        }
        return -1;
    }

    public void ve(int i10, int i11) {
        boolean zIsFinished;
        EdgeEffect edgeEffect = this.kk;
        if (edgeEffect == null || edgeEffect.isFinished() || i10 <= 0) {
            zIsFinished = false;
        } else {
            this.kk.onRelease();
            zIsFinished = this.kk.isFinished();
        }
        EdgeEffect edgeEffect2 = this.f16345v;
        if (edgeEffect2 != null && !edgeEffect2.isFinished() && i10 < 0) {
            this.f16345v.onRelease();
            zIsFinished |= this.f16345v.isFinished();
        }
        EdgeEffect edgeEffect3 = this.tx;
        if (edgeEffect3 != null && !edgeEffect3.isFinished() && i11 > 0) {
            this.tx.onRelease();
            zIsFinished |= this.tx.isFinished();
        }
        EdgeEffect edgeEffect4 = this.os;
        if (edgeEffect4 != null && !edgeEffect4.isFinished() && i11 < 0) {
            this.os.onRelease();
            zIsFinished |= this.os.isFinished();
        }
        if (zIsFinished) {
            com.byazt.fq.sp.ve(this);
        }
    }

    public static RecyclerView da(View view) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        if (view instanceof RecyclerView) {
            return (RecyclerView) view;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            RecyclerView recyclerViewDa = da(viewGroup.getChildAt(i10));
            if (recyclerViewDa != null) {
                return recyclerViewDa;
            }
        }
        return null;
    }

    public void n() {
        int i10 = this.lo + 1;
        this.lo = i10;
        if (i10 != 1 || this.rl) {
            return;
        }
        this.gt = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r0v6 */
    public boolean tt(int i10, int i11) {
        i iVar = this.yp;
        if (iVar == null) {
            com.byazt.nr.m.uj("RecyclerView", "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return false;
        }
        if (this.rl) {
            return false;
        }
        int iVe = iVar.ve();
        boolean zUj = this.yp.uj();
        if (iVe == 0 || Math.abs(i10) < this.f16329f) {
            i10 = 0;
        }
        if (!zUj || Math.abs(i11) < this.f16329f) {
            i11 = 0;
        }
        if (i10 == 0 && i11 == 0) {
            return false;
        }
        float f10 = i10;
        float f11 = i11;
        if (!dispatchNestedPreFling(f10, f11)) {
            boolean z10 = iVe != 0 || zUj;
            dispatchNestedFling(f10, f11, z10);
            t tVar = this.yf;
            if (tVar != null && tVar.c(i10, i11)) {
                return true;
            }
            if (z10) {
                if (zUj) {
                    iVe = (iVe == true ? 1 : 0) | 2;
                }
                i(iVe, 1);
                int i12 = this.ir;
                int iMax = Math.max(-i12, Math.min(i10, i12));
                int i13 = this.ir;
                this.yv.c(iMax, Math.max(-i13, Math.min(i11, i13)));
                return true;
            }
        }
        return false;
    }

    public void x(int i10, int i11) {
        this.f16326b++;
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        onScrollChanged(scrollX, scrollY, scrollX, scrollY);
        yp ypVar = this.hq;
        if (ypVar != null) {
            ypVar.c(this, i10, i11);
        }
        List<yp> list = this.ny;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.ny.get(size).c(this, i10, i11);
            }
        }
        this.f16326b--;
    }

    @Deprecated
    public int a(View view) {
        return sp(view);
    }

    public void n(int i10, int i11) {
        setMeasuredDimension(i.c(i10, getPaddingLeft() + getPaddingRight(), com.byazt.fq.sp.uj(this)), i.c(i11, getPaddingTop() + getPaddingBottom(), com.byazt.fq.sp.n(this)));
    }

    public void a(int i10) {
        int iTt = this.sp.tt();
        for (int i11 = 0; i11 < iTt; i11++) {
            this.sp.tt(i11).offsetLeftAndRight(i10);
        }
    }

    public int sp(View view) {
        gu guVarN = n(view);
        if (guVarN != null) {
            return guVarN.n();
        }
        return -1;
    }

    public static gu n(View view) {
        if (view == null) {
            return null;
        }
        return ((da) view.getLayoutParams()).f16360c;
    }

    public void c(sl slVar) {
        if (this.tk == null) {
            this.tk = new ArrayList();
        }
        this.tk.add(slVar);
    }

    public void n(int i10) {
        int iTt = this.sp.tt();
        for (int i11 = 0; i11 < iTt; i11++) {
            this.sp.tt(i11).offsetTopAndBottom(i10);
        }
    }

    public void sp(int i10) {
        i iVar = this.yp;
        if (iVar != null) {
            iVar.sl(i10);
        }
        yp ypVar = this.hq;
        if (ypVar != null) {
            ypVar.c(this, i10);
        }
        List<yp> list = this.ny;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.ny.get(size).c(this, i10);
            }
        }
    }

    public boolean c(View view) {
        n();
        boolean zA = this.sp.a(view);
        if (zA) {
            gu guVarN = n(view);
            this.f16338n.ve(guVarN);
            this.f16338n.tt(guVarN);
        }
        c(!zA);
        return zA;
    }

    public void x(int i10) {
        getScrollingChildHelper().ve(i10);
    }

    public void uj(int i10, int i11) {
        if (i10 < 0) {
            sp();
            this.kk.onAbsorb(-i10);
        } else if (i10 > 0) {
            x();
            this.f16345v.onAbsorb(i10);
        }
        if (i11 < 0) {
            i();
            this.tx.onAbsorb(-i11);
        } else if (i11 > 0) {
            da();
            this.os.onAbsorb(i11);
        }
        if (i10 == 0 && i11 == 0) {
            return;
        }
        com.byazt.fq.sp.ve(this);
    }

    private void ve(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f16341r) {
            int i10 = actionIndex == 0 ? 1 : 0;
            this.f16341r = motionEvent.getPointerId(i10);
            int x10 = (int) (motionEvent.getX(i10) + 0.5f);
            this.f16334j = x10;
            this.f16347y = x10;
            int y10 = (int) (motionEvent.getY(i10) + 0.5f);
            this.dz = y10;
            this.iu = y10;
        }
    }

    public boolean i(int i10, int i11) {
        return getScrollingChildHelper().c(i10, i11);
    }

    private boolean tt(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (this.f16335l != null) {
            if (action != 0) {
                if (action == 3 || action == 1) {
                    this.f16335l = null;
                }
                return true;
            }
            this.f16335l = null;
        }
        if (action != 0) {
            int size = this.lr.size();
            for (int i10 = 0; i10 < size; i10++) {
                u uVar = this.lr.get(i10);
                if (uVar.c(this, motionEvent)) {
                    this.f16335l = uVar;
                    return true;
                }
            }
        }
        return false;
    }

    public boolean i(int i10) {
        return getScrollingChildHelper().c(i10);
    }

    public void c(x xVar, int i10) {
        i iVar = this.yp;
        if (iVar != null) {
            iVar.c("Cannot add item decoration during a scroll  or layout");
        }
        if (this.f16336m.isEmpty()) {
            setWillNotDraw(false);
        }
        if (i10 < 0) {
            this.f16336m.add(xVar);
        } else {
            this.f16336m.add(i10, xVar);
        }
        nu();
        requestLayout();
    }

    public void ve(boolean z10) {
        this.gr = z10 | this.gr;
        this.gu = true;
        gt();
    }

    public gu uj(View view) {
        View viewVe = ve(view);
        if (viewVe == null) {
            return null;
        }
        return tt(viewVe);
    }

    public View ve(View view) {
        Object parent;
        while (true) {
            parent = view.getParent();
            if (parent == null || parent == this || !(parent instanceof View)) {
                break;
            }
            view = (View) parent;
        }
        if (parent == this) {
            return view;
        }
        return null;
    }

    public void tt(boolean z10) {
        int i10 = this.kp - 1;
        this.kp = i10;
        if (i10 <= 0) {
            this.kp = 0;
            if (z10) {
                eo();
                gu();
            }
        }
    }

    public gu uj(int i10) {
        gu guVar = null;
        if (this.gu) {
            return null;
        }
        int iVe = this.sp.ve();
        for (int i11 = 0; i11 < iVe; i11++) {
            gu guVarN = n(this.sp.uj(i11));
            if (guVarN != null && !guVarN.nu() && uj(guVarN) == i10) {
                if (!this.sp.ve(guVarN.f16372c)) {
                    return guVarN;
                }
                guVar = guVarN;
            }
        }
        return guVar;
    }

    public gu ve(int i10) {
        return c(i10, false);
    }

    public static void ve(gu guVar) {
        WeakReference<RecyclerView> weakReference = guVar.tt;
        if (weakReference != null) {
            RecyclerView recyclerView = weakReference.get();
            while (recyclerView != null) {
                if (recyclerView == guVar.f16372c) {
                    return;
                }
                Object parent = recyclerView.getParent();
                recyclerView = parent instanceof View ? (View) parent : null;
            }
            guVar.tt = null;
        }
    }

    public void c(x xVar) {
        c(xVar, -1);
    }

    public void c(yp ypVar) {
        if (this.ny == null) {
            this.ny = new ArrayList();
        }
        this.ny.add(ypVar);
    }

    public void tt(gu guVar, a.tt ttVar, a.tt ttVar2) {
        n(guVar);
        guVar.c(false);
        if (this.zm.c(guVar, ttVar, ttVar2)) {
            z();
        }
    }

    public int uj(gu guVar) {
        if (guVar.c(524) || !guVar.m()) {
            return -1;
        }
        return this.f16325a.ve(guVar.ve);
    }

    public void c(int i10) {
        i iVar = this.yp;
        if (iVar != null) {
            iVar.uj(i10);
            awakenScrollBars();
        }
    }

    public boolean tt(gu guVar) {
        a aVar = this.zm;
        return aVar == null || aVar.c(guVar, guVar.rl());
    }

    public void c(int i10, int i11, int[] iArr) {
        n();
        t();
        com.byazt.km.c.c("RV Scroll");
        c(this.f16331h);
        int iC = i10 != 0 ? this.yp.c(i10, this.f16338n, this.f16331h) : 0;
        int iTt = i11 != 0 ? this.yp.tt(i11, this.f16338n, this.f16331h) : 0;
        com.byazt.km.c.c();
        qy();
        u();
        c(false);
        if (iArr != null) {
            iArr[0] = iC;
            iArr[1] = iTt;
        }
    }

    public gu tt(View view) {
        ViewParent parent = view.getParent();
        if (parent != null && parent != this) {
            throw new IllegalArgumentException("View " + view + " is not a direct child of " + this);
        }
        return n(view);
    }

    public boolean c(int i10, int i11, MotionEvent motionEvent) {
        int i12;
        int i13;
        int i14;
        int i15;
        uj();
        if (this.f16344u != null) {
            c(i10, i11, this.cu);
            int[] iArr = this.cu;
            int i16 = iArr[0];
            int i17 = iArr[1];
            i13 = i17;
            i14 = i16;
            i15 = i10 - i16;
            i12 = i11 - i17;
        } else {
            i12 = 0;
            i13 = 0;
            i14 = 0;
            i15 = 0;
        }
        if (!this.f16336m.isEmpty()) {
            invalidate();
        }
        int i18 = i12;
        if (c(i14, i13, i15, i12, this.pn, 0)) {
            int i19 = this.f16334j;
            int[] iArr2 = this.pn;
            int i20 = iArr2[0];
            this.f16334j = i19 - i20;
            int i21 = this.dz;
            int i22 = iArr2[1];
            this.dz = i21 - i22;
            if (motionEvent != null) {
                motionEvent.offsetLocation(i20, i22);
            }
            int[] iArr3 = this.yo;
            int i23 = iArr3[0];
            int[] iArr4 = this.pn;
            iArr3[0] = i23 + iArr4[0];
            iArr3[1] = iArr3[1] + iArr4[1];
        } else if (getOverScrollMode() != 2) {
            if (motionEvent != null && !com.byazt.fq.sp.c(motionEvent, 8194)) {
                c(motionEvent.getX(), i15, motionEvent.getY(), i18);
            }
            ve(i10, i11);
        }
        if (i14 != 0 || i13 != 0) {
            x(i14, i13);
        }
        if (!awakenScrollBars()) {
            invalidate();
        }
        return (i14 == 0 && i13 == 0) ? false : true;
    }

    public void c(boolean z10) {
        if (this.lo <= 0) {
            this.lo = 1;
        }
        if (!z10 && !this.rl) {
            this.gt = false;
        }
        if (this.lo == 1) {
            if (z10 && this.gt && !this.rl && this.yp != null && this.f16344u != null) {
                m();
            }
            if (!this.rl) {
                this.gt = false;
            }
        }
        this.lo--;
    }

    public void c(int i10, int i11) {
        c(i10, i11, (Interpolator) null);
    }

    public void c(int i10, int i11, Interpolator interpolator) {
        i iVar = this.yp;
        if (iVar == null) {
            com.byazt.nr.m.uj("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.rl) {
            return;
        }
        if (!iVar.ve()) {
            i10 = 0;
        }
        if (!this.yp.uj()) {
            i11 = 0;
        }
        if (i10 == 0 && i11 == 0) {
            return;
        }
        this.yv.c(i10, i11, interpolator);
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0040  */
    /* JADX WARN: Code duplicated, block: B:13:0x0056  */
    /* JADX WARN: Code duplicated, block: B:15:0x005a  */
    /* JADX WARN: Code duplicated, block: B:16:0x0071  */
    private void c(float f10, float f11, float f12, float f13) {
        boolean z10;
        boolean z11 = true;
        if (f11 >= 0.0f) {
            if (f11 > 0.0f) {
                x();
                com.byazt.fq.c.c(this.f16345v, f11 / getWidth(), f12 / getHeight());
            } else {
                z10 = false;
            }
            if (f13 < 0.0f) {
                i();
                com.byazt.fq.c.c(this.tx, (-f13) / getHeight(), f10 / getWidth());
            } else if (f13 > 0.0f) {
                da();
                com.byazt.fq.c.c(this.os, f13 / getHeight(), 1.0f - (f10 / getWidth()));
            } else {
                z11 = z10;
            }
            if (z11 && f11 == 0.0f && f13 == 0.0f) {
                return;
            }
            com.byazt.fq.sp.ve(this);
        }
        sp();
        com.byazt.fq.c.c(this.kk, (-f11) / getWidth(), 1.0f - (f12 / getHeight()));
        z10 = true;
        if (f13 < 0.0f) {
            i();
            com.byazt.fq.c.c(this.tx, (-f13) / getHeight(), f10 / getWidth());
        } else if (f13 > 0.0f) {
            da();
            com.byazt.fq.c.c(this.os, f13 / getHeight(), 1.0f - (f10 / getWidth()));
        } else {
            z11 = z10;
        }
        if (z11) {
        }
        com.byazt.fq.sp.ve(this);
    }

    public static <T> T c(T t10) {
        t10.getClass();
        return t10;
    }

    private boolean c(View view, View view2, int i10) {
        int i11;
        if (view2 == null || view2 == this || ve(view2) == null) {
            return false;
        }
        if (view == null || ve(view) == null) {
            return true;
        }
        this.sl.set(0, 0, view.getWidth(), view.getHeight());
        this.bm.set(0, 0, view2.getWidth(), view2.getHeight());
        offsetDescendantRectToMyCoords(view, this.sl);
        offsetDescendantRectToMyCoords(view2, this.bm);
        byte b10 = -1;
        int i12 = this.yp.nu() == 1 ? -1 : 1;
        Rect rect = this.sl;
        int i13 = rect.left;
        Rect rect2 = this.bm;
        int i14 = rect2.left;
        if ((i13 < i14 || rect.right <= i14) && rect.right < rect2.right) {
            i11 = 1;
        } else {
            int i15 = rect.right;
            int i16 = rect2.right;
            i11 = ((i15 > i16 || i13 >= i16) && i13 > i14) ? -1 : 0;
        }
        int i17 = rect.top;
        int i18 = rect2.top;
        if ((i17 < i18 || rect.bottom <= i18) && rect.bottom < rect2.bottom) {
            b10 = 1;
        } else {
            int i19 = rect.bottom;
            int i20 = rect2.bottom;
            if ((i19 <= i20 && i17 < i20) || i17 <= i18) {
                b10 = 0;
            }
        }
        if (i10 == 1) {
            return b10 < 0 || (b10 == 0 && i11 * i12 <= 0);
        }
        if (i10 == 2) {
            return b10 > 0 || (b10 == 0 && i11 * i12 >= 0);
        }
        if (i10 == 17) {
            return i11 < 0;
        }
        if (i10 == 33) {
            return b10 < 0;
        }
        if (i10 == 66) {
            return i11 > 0;
        }
        if (i10 == 130) {
            return b10 > 0;
        }
        throw new IllegalArgumentException("Invalid direction: " + i10 + c());
    }

    private void c(View view, View view2) {
        View view3 = view2 != null ? view2 : view;
        this.sl.set(0, 0, view3.getWidth(), view3.getHeight());
        ViewGroup.LayoutParams layoutParams = view3.getLayoutParams();
        if (layoutParams instanceof da) {
            da daVar = (da) layoutParams;
            if (!daVar.ve) {
                Rect rect = daVar.tt;
                Rect rect2 = this.sl;
                rect2.left -= rect.left;
                rect2.right += rect.right;
                rect2.top -= rect.top;
                rect2.bottom += rect.bottom;
            }
        }
        if (view2 != null) {
            offsetDescendantRectToMyCoords(view2, this.sl);
            offsetRectIntoDescendantCoords(view, this.sl);
        }
        this.yp.c(this, view, this.sl, !this.my, view2 == null);
    }

    public void c(String str) {
        if (yp()) {
            if (str == null) {
                throw new IllegalStateException("Cannot call this method while RecyclerView is computing a layout or scrolling" + c());
            }
            throw new IllegalStateException(str);
        }
        if (this.f16326b > 0) {
            com.byazt.nr.m.tt("RecyclerView", "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame.", new IllegalStateException(c()));
        }
    }

    private boolean c(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 3 || action == 0) {
            this.f16335l = null;
        }
        int size = this.lr.size();
        for (int i10 = 0; i10 < size; i10++) {
            u uVar = this.lr.get(i10);
            if (uVar.c(this, motionEvent) && action != 3) {
                this.f16335l = uVar;
                return true;
            }
        }
        return false;
    }

    public final void c(gt gtVar) {
        if (getScrollState() == 2) {
            OverScroller overScroller = this.yv.f16406c;
            gtVar.f16370z = overScroller.getFinalX() - overScroller.getCurrX();
            gtVar.f16365m = overScroller.getFinalY() - overScroller.getCurrY();
        } else {
            gtVar.f16370z = 0;
            gtVar.f16365m = 0;
        }
    }

    private void c(long j10, gu guVar, gu guVar2) {
        int iTt = this.sp.tt();
        for (int i10 = 0; i10 < iTt; i10++) {
            gu guVarN = n(this.sp.tt(i10));
            if (guVarN != guVar && c(guVarN) == j10) {
                c cVar = this.f16344u;
                if (cVar != null && cVar.tt()) {
                    throw new IllegalStateException("Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:" + guVarN + " \n View Holder 2:" + guVar + c());
                }
                throw new IllegalStateException("Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:" + guVarN + " \n View Holder 2:" + guVar + c());
            }
        }
        com.byazt.nr.m.uj("RecyclerView", "Problem while matching changed view holders with the newones. The pre-layout information for the change holder " + guVar2 + " cannot be found but it is necessary for " + guVar + c());
    }

    public void c(gu guVar, a.tt ttVar) {
        guVar.c(0, 8192);
        if (this.f16331h.f16369x && guVar.yv() && !guVar.nu() && !guVar.R_()) {
            this.f16346x.c(c(guVar), guVar);
        }
        this.f16346x.c(guVar, ttVar);
    }

    private void c(int[] iArr) {
        int iTt = this.sp.tt();
        if (iTt == 0) {
            iArr[0] = -1;
            iArr[1] = -1;
            return;
        }
        int i10 = Integer.MAX_VALUE;
        int i11 = Integer.MIN_VALUE;
        for (int i12 = 0; i12 < iTt; i12++) {
            gu guVarN = n(this.sp.tt(i12));
            if (!guVarN.R_()) {
                int iUj = guVarN.uj();
                if (iUj < i10) {
                    i10 = iUj;
                }
                if (iUj > i11) {
                    i11 = iUj;
                }
            }
        }
        iArr[0] = i10;
        iArr[1] = i11;
    }

    public long c(gu guVar) {
        return this.f16344u.tt() ? guVar.sp() : guVar.ve;
    }

    public void c(gu guVar, a.tt ttVar, a.tt ttVar2) {
        guVar.c(false);
        if (this.zm.tt(guVar, ttVar, ttVar2)) {
            z();
        }
    }

    private void c(gu guVar, gu guVar2, a.tt ttVar, a.tt ttVar2, boolean z10, boolean z11) {
        guVar.c(false);
        if (z10) {
            n(guVar);
        }
        if (guVar != guVar2) {
            if (z11) {
                n(guVar2);
            }
            guVar.f16379x = guVar2;
            n(guVar);
            this.f16338n.ve(guVar);
            guVar2.c(false);
            guVar2.f16374i = guVar;
        }
        if (this.zm.c(guVar, guVar2, ttVar, ttVar2)) {
            z();
        }
    }

    public void c(int i10, int i11, boolean z10) {
        int i12 = i10 + i11;
        int iVe = this.sp.ve();
        for (int i13 = 0; i13 < iVe; i13++) {
            gu guVarN = n(this.sp.uj(i13));
            if (guVarN != null && !guVarN.R_()) {
                int i14 = guVarN.ve;
                if (i14 >= i12) {
                    guVarN.c(-i11, z10);
                    this.f16331h.f16361a = true;
                } else if (i14 >= i10) {
                    guVarN.c(i10 - 1, -i11, z10);
                    this.f16331h.f16361a = true;
                }
            }
        }
        this.f16338n.c(i10, i11, z10);
        requestLayout();
    }

    public void c(int i10, int i11, Object obj) {
        int i12;
        int iVe = this.sp.ve();
        int i13 = i10 + i11;
        for (int i14 = 0; i14 < iVe; i14++) {
            View viewUj = this.sp.uj(i14);
            gu guVarN = n(viewUj);
            if (guVarN != null && !guVarN.R_() && (i12 = guVarN.ve) >= i10 && i12 < i13) {
                guVarN.tt(2);
                guVarN.c(obj);
                ((da) viewUj.getLayoutParams()).ve = true;
            }
        }
        this.f16338n.ve(i10, i11);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0029  */
    /* JADX WARN: Code duplicated, block: B:17:0x0034  */
    /* JADX WARN: Code duplicated, block: B:21:0x0033 A[SYNTHETIC] */
    public gu c(int i10, boolean z10) {
        int iVe = this.sp.ve();
        gu guVar = null;
        for (int i11 = 0; i11 < iVe; i11++) {
            gu guVarN = n(this.sp.uj(i11));
            if (guVarN != null && !guVarN.nu()) {
                if (z10) {
                    if (guVarN.ve != i10) {
                        continue;
                    } else {
                        if (!this.sp.ve(guVarN.f16372c)) {
                            return guVarN;
                        }
                        guVar = guVarN;
                    }
                } else if (guVarN.uj() != i10) {
                    continue;
                } else {
                    if (!this.sp.ve(guVarN.f16372c)) {
                        return guVarN;
                    }
                    guVar = guVarN;
                }
            }
        }
        return guVar;
    }

    public gu c(long j10) {
        c cVar = this.f16344u;
        gu guVar = null;
        if (cVar != null && cVar.tt()) {
            int iVe = this.sp.ve();
            for (int i10 = 0; i10 < iVe; i10++) {
                gu guVarN = n(this.sp.uj(i10));
                if (guVarN != null && !guVarN.nu() && guVarN.sp() == j10) {
                    if (!this.sp.ve(guVarN.f16372c)) {
                        return guVarN;
                    }
                    guVar = guVarN;
                }
            }
        }
        return guVar;
    }

    public static void c(View view, Rect rect) {
        da daVar = (da) view.getLayoutParams();
        Rect rect2 = daVar.tt;
        rect.set((view.getLeft() - rect2.left) - ((ViewGroup.MarginLayoutParams) daVar).leftMargin, (view.getTop() - rect2.top) - ((ViewGroup.MarginLayoutParams) daVar).topMargin, view.getRight() + rect2.right + ((ViewGroup.MarginLayoutParams) daVar).rightMargin, view.getBottom() + rect2.bottom + ((ViewGroup.MarginLayoutParams) daVar).bottomMargin);
    }

    public boolean c(gu guVar, int i10) {
        if (yp()) {
            guVar.f16380z = i10;
            this.qp.add(guVar);
            return false;
        }
        com.byazt.fq.sp.c(guVar.f16372c, i10);
        return true;
    }

    public boolean c(int i10, int i11, int i12, int i13, int[] iArr, int i14) {
        return getScrollingChildHelper().c(i10, i11, i12, i13, iArr, i14);
    }

    public boolean c(int i10, int i11, int[] iArr, int[] iArr2, int i12) {
        return getScrollingChildHelper().c(i10, i11, iArr, iArr2, i12);
    }
}
