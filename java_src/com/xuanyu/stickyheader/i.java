package com.xuanyu.stickyheader;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes8.dex */
public class i<T> extends RecyclerView.OnScrollListener {
    private Context A;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f90182t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private ViewGroup f90183u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private RecyclerView f90184v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private com.xuanyu.stickyheader.e<T> f90185w;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private h<T> f90187y;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private Handler f90186x = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private boolean f90188z = true;
    private int B = 0;
    private int C = 0;
    private Runnable D = new a();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            i.this.p();
        }
    }

    class c implements ViewTreeObserver.OnGlobalLayoutListener {
        c() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (i.this.f90188z) {
                i.this.p();
            }
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            i.this.f90183u.setAlpha(1.0f);
            ViewCompat.offsetTopAndBottom(i.this.f90183u, (i.this.f90182t - i.this.f90183u.getMeasuredHeight()) - i.this.f90183u.getTop());
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f90193b;

        e(final int val$offset) {
            this.f90193b = val$offset;
        }

        @Override // java.lang.Runnable
        public void run() {
            i.this.f90183u.setAlpha(1.0f);
            ViewCompat.offsetTopAndBottom(i.this.f90183u, (this.f90193b + i.this.f90182t) - i.this.f90183u.getTop());
        }
    }

    public i(RecyclerView recyclerView, ViewGroup stickyHeaderLayout, int headViewTop) {
        this.f90182t = headViewTop;
        this.f90183u = stickyHeaderLayout;
        this.f90184v = recyclerView;
        this.A = recyclerView.getContext();
        this.f90185w = (com.xuanyu.stickyheader.e) this.f90184v.getAdapter();
        this.f90184v.getAdapter().registerAdapterDataObserver(new b());
        this.f90184v.getViewTreeObserver().addOnGlobalLayoutListener(new c());
    }

    private void i(View view) {
        if (!w(view)) {
            this.f90183u.addView(view);
        }
        n(view);
    }

    private com.xuanyu.stickyheader.a<T> k(RecyclerView recyclerView) {
        com.xuanyu.stickyheader.a<T> aVarB;
        if (this.f90187y == null) {
            return null;
        }
        int childCount = recyclerView.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = recyclerView.getChildAt(i10);
            int childAdapterPosition = recyclerView.getChildAdapterPosition(childAt);
            if (childAdapterPosition != -1) {
                com.xuanyu.stickyheader.e eVar = (com.xuanyu.stickyheader.e) recyclerView.getAdapter();
                if (eVar.a(childAdapterPosition) && (aVarB = eVar.b(childAdapterPosition)) != null) {
                    aVarB.h(childAt);
                    if (this.f90187y.b().b().equals(eVar.getItem(childAdapterPosition))) {
                        return aVarB;
                    }
                    g.b(aVarB);
                }
            }
        }
        return null;
    }

    private com.xuanyu.stickyheader.a<T> l(RecyclerView recyclerView, boolean slideUp) {
        com.xuanyu.stickyheader.a<T> aVarB;
        int childCount = recyclerView.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = recyclerView.getChildAt(i10);
            int childAdapterPosition = recyclerView.getChildAdapterPosition(childAt);
            if (childAdapterPosition != -1) {
                com.xuanyu.stickyheader.e eVar = (com.xuanyu.stickyheader.e) recyclerView.getAdapter();
                if (eVar.a(childAdapterPosition) && (aVarB = eVar.b(childAdapterPosition)) != null) {
                    aVarB.h(childAt);
                    Object item = eVar.getItem(childAdapterPosition);
                    if (!slideUp) {
                        h<T> hVar = this.f90187y;
                        if (hVar != null && !hVar.b().b().equals(item)) {
                            return aVarB;
                        }
                        g.b(aVarB);
                        break;
                    }
                    h<T> hVar2 = this.f90187y;
                    if (hVar2 == null || !hVar2.b().b().equals(item)) {
                        return aVarB;
                    }
                    g.b(aVarB);
                }
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private int m(View view) {
        return view instanceof com.xuanyu.stickyheader.b ? ((com.xuanyu.stickyheader.b) view).a() : view.getTop();
    }

    private void n(View view) {
        for (int i10 = 0; i10 < this.f90183u.getChildCount(); i10++) {
            View childAt = this.f90183u.getChildAt(i10);
            if (childAt == view) {
                childAt.setVisibility(0);
            } else {
                childAt.setVisibility(8);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        int childAdapterPosition;
        if (this.f90188z) {
            RecyclerView recyclerView = this.f90184v;
            View viewJ = j(recyclerView, recyclerView.getMeasuredWidth() / 4, this.f90182t);
            if (viewJ == null || (childAdapterPosition = this.f90184v.getChildAdapterPosition(viewJ)) == -1) {
                return;
            }
            ((RecyclerView.Adapter) this.f90185w).getItemCount();
            com.xuanyu.stickyheader.a aVarD = null;
            com.xuanyu.stickyheader.a aVarD2 = null;
            for (int i10 = childAdapterPosition; i10 >= 0; i10--) {
                aVarD2 = f.d(this.f90185w, i10);
                if (aVarD2 != null) {
                    break;
                }
            }
            if (m(viewJ) == this.f90182t && aVarD2 != null) {
                g.b(aVarD2);
                return;
            }
            h<T> hVar = this.f90187y;
            if (hVar != null && hVar.b() != null && aVarD2 != null) {
                T tB = this.f90187y.b().b();
                Object objB = aVarD2.b();
                if (tB != null && objB != null && tB.equals(objB)) {
                    g.b(aVarD2);
                    return;
                }
            }
            q();
            if (aVarD2 == null) {
                this.f90183u.setVisibility(8);
                return;
            }
            if (this.f90183u.getVisibility() == 8) {
                this.f90183u.setVisibility(0);
            }
            int i11 = 0;
            while (true) {
                if (i11 >= this.f90184v.getChildCount()) {
                    i11 = -1;
                    break;
                } else if (viewJ == this.f90184v.getChildAt(i11)) {
                    break;
                } else {
                    i11++;
                }
            }
            if (i11 != -1) {
                while (i11 < this.f90184v.getChildCount()) {
                    View childAt = this.f90184v.getChildAt(i11);
                    int childAdapterPosition2 = this.f90184v.getChildAdapterPosition(childAt);
                    if (childAdapterPosition2 != -1 && (aVarD = f.d(this.f90185w, childAdapterPosition2)) != null) {
                        aVarD.h(childAt);
                        break;
                    }
                    i11++;
                }
            }
            if (aVarD == null) {
                ViewGroup viewGroup = this.f90183u;
                ViewCompat.offsetTopAndBottom(viewGroup, this.f90182t - viewGroup.getTop());
            } else {
                int iC = com.xuanyu.stickyheader.c.c(((m(aVarD.c()) - this.B) - this.f90182t) - this.f90183u.getMeasuredHeight(), -this.f90183u.getMeasuredHeight(), 0);
                this.f90183u.setAlpha(0.0f);
                this.f90183u.post(new e(iC));
                g.b(aVarD);
            }
            RecyclerView recyclerView2 = this.f90184v;
            i(aVarD2.a(recyclerView2, recyclerView2.getContext()));
            aVarD2.e();
            g.b(aVarD2);
            o(childAdapterPosition);
        }
    }

    private void t(RecyclerView recyclerView, int dx, int dy) {
        if (dy > 0) {
            v(recyclerView, dy);
        } else {
            u(recyclerView, dy);
        }
    }

    private void u(RecyclerView recyclerView, int dy) {
        View viewC;
        if (this.f90187y == null) {
            return;
        }
        com.xuanyu.stickyheader.a<T> aVarL = l(recyclerView, false);
        if (aVarL != null && (viewC = aVarL.c()) != null && m(viewC) >= this.f90182t + this.C && m(viewC) <= ((this.f90182t + this.C) + this.f90183u.getMeasuredHeight()) - dy) {
            int iMin = Math.min(this.f90182t, (m(viewC) - this.f90183u.getMeasuredHeight()) - this.C);
            ViewGroup viewGroup = this.f90183u;
            ViewCompat.offsetTopAndBottom(viewGroup, iMin - viewGroup.getTop());
            g.b(aVarL);
            return;
        }
        if (aVarL != null) {
            g.b(aVarL);
        }
        com.xuanyu.stickyheader.a<T> aVarK = k(recyclerView);
        if (aVarK == null) {
            ViewGroup viewGroup2 = this.f90183u;
            ViewCompat.offsetTopAndBottom(viewGroup2, this.f90182t - viewGroup2.getTop());
            return;
        }
        if (m(aVarK.c()) >= this.f90182t) {
            if (this.f90187y.a() == null) {
                this.f90183u.setVisibility(8);
            } else {
                this.f90183u.setVisibility(0);
                com.xuanyu.stickyheader.a<T> aVarB = this.f90187y.a().b();
                RecyclerView recyclerView2 = this.f90184v;
                View viewA = aVarB.a(recyclerView2, recyclerView2.getContext());
                i(viewA);
                this.f90183u.setAlpha(0.0f);
                viewA.post(new d());
                this.f90187y.a().b().e();
            }
            h<T> hVarA = this.f90187y.a();
            this.f90187y.c(null);
            g.b(this.f90187y.b());
            this.f90187y = hVarA;
        }
        g.b(aVarK);
    }

    private void v(RecyclerView recyclerView, int dy) {
        com.xuanyu.stickyheader.a<T> aVarL = l(recyclerView, true);
        if (aVarL == null) {
            return;
        }
        View viewC = aVarL.c();
        if (m(viewC) >= this.f90182t) {
            if (m(viewC) > this.f90182t + this.f90183u.getMeasuredHeight() + this.B) {
                g.b(aVarL);
                p();
                return;
            } else {
                int iC = com.xuanyu.stickyheader.c.c((m(viewC) - this.f90183u.getMeasuredHeight()) - this.B, this.f90182t - this.f90183u.getMeasuredHeight(), this.f90182t);
                ViewGroup viewGroup = this.f90183u;
                ViewCompat.offsetTopAndBottom(viewGroup, iC - viewGroup.getTop());
                g.b(aVarL);
                return;
            }
        }
        i(aVarL.a(this.f90184v, recyclerView.getContext()));
        if (this.f90187y == null) {
            this.f90183u.setVisibility(0);
        } else {
            ViewGroup viewGroup2 = this.f90183u;
            ViewCompat.offsetTopAndBottom(viewGroup2, this.f90182t - viewGroup2.getTop());
        }
        aVarL.e();
        h<T> hVar = new h<>();
        hVar.d(aVarL);
        hVar.c(this.f90187y);
        this.f90187y = hVar;
    }

    private boolean w(View view) {
        for (int i10 = 0; i10 < this.f90183u.getChildCount(); i10++) {
            if (this.f90183u.getChildAt(i10) == view) {
                return true;
            }
        }
        return false;
    }

    public View j(RecyclerView recyclerView, float x10, float y10) {
        for (int childCount = recyclerView.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = recyclerView.getChildAt(childCount);
            float translationX = childAt.getTranslationX();
            float translationY = childAt.getTranslationY();
            if (x10 >= childAt.getLeft() + translationX && x10 <= childAt.getRight() + translationX && y10 >= childAt.getTop() + translationY && y10 <= childAt.getBottom() + translationY) {
                return childAt;
            }
        }
        return null;
    }

    public void o(int position) {
        h hVar = null;
        while (position >= 0) {
            com.xuanyu.stickyheader.a<T> aVarD = f.d(this.f90185w, position);
            if (aVarD != null) {
                h<T> hVar2 = new h<>();
                hVar2.d(aVarD);
                if (this.f90187y == null) {
                    this.f90187y = hVar2;
                }
                if (hVar != null) {
                    hVar.c(hVar2);
                }
                hVar = hVar2;
            }
            position--;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int newState) {
        super.onScrollStateChanged(recyclerView, newState);
        if (newState == 0) {
            p();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    public void onScrolled(@NonNull RecyclerView recyclerView, int dx, int dy) {
        super.onScrolled(recyclerView, dx, dy);
        if (this.f90188z) {
            t(recyclerView, dx, dy);
        }
    }

    public void q() {
        r();
    }

    public void r() {
        while (true) {
            h<T> hVar = this.f90187y;
            if (hVar == null) {
                return;
            }
            com.xuanyu.stickyheader.a<T> aVarB = hVar.b();
            this.f90187y.d(null);
            g.b(aVarB);
            h<T> hVarA = this.f90187y.a();
            this.f90187y.c(null);
            this.f90187y = hVarA;
        }
    }

    void s(int offset) {
        int i10 = (int) (offset * this.A.getResources().getDisplayMetrics().density);
        this.C = i10;
        this.B = i10;
    }

    public void x(boolean on) {
        this.f90188z = on;
        if (on) {
            p();
        } else {
            q();
            this.f90183u.setVisibility(8);
        }
    }

    class b extends RecyclerView.AdapterDataObserver {
        b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onChanged() {
            super.onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeChanged(int positionStart, int itemCount) {
            super.onItemRangeChanged(positionStart, itemCount);
            RecyclerView.ItemAnimator itemAnimator = i.this.f90184v.getItemAnimator();
            if (!i.this.f90188z || itemAnimator == null) {
                return;
            }
            i.this.f90186x.postDelayed(i.this.D, itemAnimator.getChangeDuration() + 100);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeInserted(int positionStart, int itemCount) {
            RecyclerView.ItemAnimator itemAnimator = i.this.f90184v.getItemAnimator();
            if (i.this.f90188z && itemAnimator != null) {
                i.this.f90186x.postDelayed(i.this.D, itemAnimator.getAddDuration() + 100);
            }
            super.onItemRangeInserted(positionStart, itemCount);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeMoved(int fromPosition, int toPosition, int itemCount) {
            RecyclerView.ItemAnimator itemAnimator = i.this.f90184v.getItemAnimator();
            if (i.this.f90188z && itemAnimator != null) {
                i.this.f90186x.postDelayed(i.this.D, itemAnimator.getMoveDuration() + 100);
            }
            super.onItemRangeMoved(fromPosition, toPosition, itemCount);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeRemoved(int positionStart, int itemCount) {
            RecyclerView.ItemAnimator itemAnimator = i.this.f90184v.getItemAnimator();
            if (i.this.f90188z && itemAnimator != null) {
                i.this.f90186x.postDelayed(i.this.D, itemAnimator.getRemoveDuration() + 300);
            }
            super.onItemRangeRemoved(positionStart, itemCount);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeChanged(int positionStart, int itemCount, @Nullable Object payload) {
            super.onItemRangeChanged(positionStart, itemCount, payload);
            RecyclerView.ItemAnimator itemAnimator = i.this.f90184v.getItemAnimator();
            if (!i.this.f90188z || itemAnimator == null) {
                return;
            }
            i.this.f90186x.postDelayed(i.this.D, itemAnimator.getChangeDuration() + 100);
        }
    }
}
