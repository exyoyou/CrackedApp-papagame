package com.byazt.kt;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewPropertyAnimator;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 166, 54})
public class ve extends sl {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static TimeInterpolator f16451i;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public ArrayList<RecyclerView.gu> f16454da = new ArrayList<>();
    public ArrayList<RecyclerView.gu> sl = new ArrayList<>();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public ArrayList<tt> f16456t = new ArrayList<>();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public ArrayList<c> f16457u = new ArrayList<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ArrayList<ArrayList<RecyclerView.gu>> f16453c = new ArrayList<>();
    public ArrayList<ArrayList<tt>> tt = new ArrayList<>();
    public ArrayList<ArrayList<c>> ve = new ArrayList<>();
    public ArrayList<RecyclerView.gu> uj = new ArrayList<>();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public ArrayList<RecyclerView.gu> f16455n = new ArrayList<>();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ArrayList<RecyclerView.gu> f16452a = new ArrayList<>();
    public ArrayList<RecyclerView.gu> sp = new ArrayList<>();

    @com.byazt.zqa.c(c = {0, 1, 166, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_NON_KEY_FRAME_SWITCH_BUFFER_THRESHOLD})
    private static class tt {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public RecyclerView.gu f16471c;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public int f16472n;
        public int tt;
        public int uj;
        public int ve;

        public tt(RecyclerView.gu guVar, int i10, int i11, int i12, int i13) {
            this.f16471c = guVar;
            this.tt = i10;
            this.ve = i11;
            this.uj = i12;
            this.f16472n = i13;
        }
    }

    private void sl(final RecyclerView.gu guVar) {
        final View view = guVar.f16372c;
        final ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
        this.f16452a.add(guVar);
        viewPropertyAnimatorAnimate.setDuration(sp()).alpha(0.0f).setListener(new AnimatorListenerAdapter() { // from class: com.byazt.kt.ve.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                viewPropertyAnimatorAnimate.setListener(null);
                view.setAlpha(1.0f);
                ve.this.x(guVar);
                ve.this.f16452a.remove(guVar);
                ve.this.ve();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        }).start();
    }

    private void t(RecyclerView.gu guVar) {
        if (f16451i == null) {
            f16451i = new ValueAnimator().getInterpolator();
        }
        guVar.f16372c.animate().setInterpolator(f16451i);
        uj(guVar);
    }

    @Override // com.byazt.kt.RecyclerView.a
    public void c() {
        boolean z10 = !this.f16454da.isEmpty();
        boolean z11 = !this.f16456t.isEmpty();
        boolean z12 = !this.f16457u.isEmpty();
        boolean z13 = !this.sl.isEmpty();
        if (z10 || z11 || z13 || z12) {
            Iterator<RecyclerView.gu> it2 = this.f16454da.iterator();
            while (it2.hasNext()) {
                sl(it2.next());
            }
            this.f16454da.clear();
            if (z11) {
                final ArrayList<tt> arrayList = new ArrayList<>();
                arrayList.addAll(this.f16456t);
                this.tt.add(arrayList);
                this.f16456t.clear();
                Runnable runnable = new Runnable() { // from class: com.byazt.kt.ve.1
                    @Override // java.lang.Runnable
                    public void run() {
                        for (tt ttVar : arrayList) {
                            ve.this.tt(ttVar.f16471c, ttVar.tt, ttVar.ve, ttVar.uj, ttVar.f16472n);
                        }
                        arrayList.clear();
                        ve.this.tt.remove(arrayList);
                    }
                };
                if (z10) {
                    com.byazt.fq.sp.c(arrayList.get(0).f16471c.f16372c, runnable, sp());
                } else {
                    runnable.run();
                }
            }
            if (z12) {
                final ArrayList<c> arrayList2 = new ArrayList<>();
                arrayList2.addAll(this.f16457u);
                this.ve.add(arrayList2);
                this.f16457u.clear();
                Runnable runnable2 = new Runnable() { // from class: com.byazt.kt.ve.2
                    @Override // java.lang.Runnable
                    public void run() {
                        Iterator it3 = arrayList2.iterator();
                        while (it3.hasNext()) {
                            ve.this.c((c) it3.next());
                        }
                        arrayList2.clear();
                        ve.this.ve.remove(arrayList2);
                    }
                };
                if (z10) {
                    com.byazt.fq.sp.c(arrayList2.get(0).f16469c.f16372c, runnable2, sp());
                } else {
                    runnable2.run();
                }
            }
            if (z13) {
                final ArrayList<RecyclerView.gu> arrayList3 = new ArrayList<>();
                arrayList3.addAll(this.sl);
                this.f16453c.add(arrayList3);
                this.sl.clear();
                Runnable runnable3 = new Runnable() { // from class: com.byazt.kt.ve.3
                    @Override // java.lang.Runnable
                    public void run() {
                        Iterator it3 = arrayList3.iterator();
                        while (it3.hasNext()) {
                            ve.this.ve((RecyclerView.gu) it3.next());
                        }
                        arrayList3.clear();
                        ve.this.f16453c.remove(arrayList3);
                    }
                };
                if (z10 || z11 || z12) {
                    com.byazt.fq.sp.c(arrayList3.get(0).f16372c, runnable3, (z10 ? sp() : 0L) + Math.max(z11 ? n() : 0L, z12 ? x() : 0L));
                } else {
                    runnable3.run();
                }
            }
        }
    }

    @Override // com.byazt.kt.sl
    public boolean tt(RecyclerView.gu guVar) {
        t(guVar);
        guVar.f16372c.setAlpha(0.0f);
        this.sl.add(guVar);
        return true;
    }

    @Override // com.byazt.kt.RecyclerView.a
    public void uj(RecyclerView.gu guVar) {
        View view = guVar.f16372c;
        view.animate().cancel();
        int size = this.f16456t.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            if (this.f16456t.get(size).f16471c == guVar) {
                view.setTranslationY(0.0f);
                view.setTranslationX(0.0f);
                i(guVar);
                this.f16456t.remove(size);
            }
        }
        c(this.f16457u, guVar);
        if (this.f16454da.remove(guVar)) {
            view.setAlpha(1.0f);
            x(guVar);
        }
        if (this.sl.remove(guVar)) {
            view.setAlpha(1.0f);
            da(guVar);
        }
        for (int size2 = this.ve.size() - 1; size2 >= 0; size2--) {
            ArrayList<c> arrayList = this.ve.get(size2);
            c(arrayList, guVar);
            if (arrayList.isEmpty()) {
                this.ve.remove(size2);
            }
        }
        for (int size3 = this.tt.size() - 1; size3 >= 0; size3--) {
            ArrayList<tt> arrayList2 = this.tt.get(size3);
            for (int size4 = arrayList2.size() - 1; size4 >= 0; size4--) {
                if (arrayList2.get(size4).f16471c == guVar) {
                    view.setTranslationY(0.0f);
                    view.setTranslationX(0.0f);
                    i(guVar);
                    arrayList2.remove(size4);
                    if (!arrayList2.isEmpty()) {
                        break;
                    }
                    this.tt.remove(size3);
                    break;
                }
            }
        }
        for (int size5 = this.f16453c.size() - 1; size5 >= 0; size5--) {
            ArrayList<RecyclerView.gu> arrayList3 = this.f16453c.get(size5);
            if (arrayList3.remove(guVar)) {
                view.setAlpha(1.0f);
                da(guVar);
                if (arrayList3.isEmpty()) {
                    this.f16453c.remove(size5);
                }
            }
        }
        this.f16452a.remove(guVar);
        this.uj.remove(guVar);
        this.sp.remove(guVar);
        this.f16455n.remove(guVar);
        ve();
    }

    public void ve(final RecyclerView.gu guVar) {
        final View view = guVar.f16372c;
        final ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
        this.uj.add(guVar);
        viewPropertyAnimatorAnimate.alpha(1.0f).setDuration(a()).setListener(new AnimatorListenerAdapter() { // from class: com.byazt.kt.ve.5
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                view.setAlpha(1.0f);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                viewPropertyAnimatorAnimate.setListener(null);
                ve.this.da(guVar);
                ve.this.uj.remove(guVar);
                ve.this.ve();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        }).start();
    }

    @com.byazt.zqa.c(c = {0, 1, 166, 24})
    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f16468a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public RecyclerView.gu f16469c;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public int f16470n;
        public RecyclerView.gu tt;
        public int uj;
        public int ve;

        private c(RecyclerView.gu guVar, RecyclerView.gu guVar2) {
            this.f16469c = guVar;
            this.tt = guVar2;
        }

        public String toString() {
            return "ChangeInfo{oldHolder=" + this.f16469c + ", newHolder=" + this.tt + ", fromX=" + this.ve + ", fromY=" + this.uj + ", toX=" + this.f16470n + ", toY=" + this.f16468a + '}';
        }

        public c(RecyclerView.gu guVar, RecyclerView.gu guVar2, int i10, int i11, int i12, int i13) {
            this(guVar, guVar2);
            this.ve = i10;
            this.uj = i11;
            this.f16470n = i12;
            this.f16468a = i13;
        }
    }

    public void tt(final RecyclerView.gu guVar, int i10, int i11, int i12, int i13) {
        final View view = guVar.f16372c;
        final int i14 = i12 - i10;
        final int i15 = i13 - i11;
        if (i14 != 0) {
            view.animate().translationX(0.0f);
        }
        if (i15 != 0) {
            view.animate().translationY(0.0f);
        }
        final ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
        this.f16455n.add(guVar);
        viewPropertyAnimatorAnimate.setDuration(n()).setListener(new AnimatorListenerAdapter() { // from class: com.byazt.kt.ve.6
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                if (i14 != 0) {
                    view.setTranslationX(0.0f);
                }
                if (i15 != 0) {
                    view.setTranslationY(0.0f);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                viewPropertyAnimatorAnimate.setListener(null);
                ve.this.i(guVar);
                ve.this.f16455n.remove(guVar);
                ve.this.ve();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        }).start();
    }

    public void ve() {
        if (tt()) {
            return;
        }
        i();
    }

    private void tt(c cVar) {
        RecyclerView.gu guVar = cVar.f16469c;
        if (guVar != null) {
            c(cVar, guVar);
        }
        RecyclerView.gu guVar2 = cVar.tt;
        if (guVar2 != null) {
            c(cVar, guVar2);
        }
    }

    @Override // com.byazt.kt.RecyclerView.a
    public boolean tt() {
        return (this.sl.isEmpty() && this.f16457u.isEmpty() && this.f16456t.isEmpty() && this.f16454da.isEmpty() && this.f16455n.isEmpty() && this.f16452a.isEmpty() && this.uj.isEmpty() && this.sp.isEmpty() && this.tt.isEmpty() && this.f16453c.isEmpty() && this.ve.isEmpty()) ? false : true;
    }

    @Override // com.byazt.kt.sl
    public boolean c(RecyclerView.gu guVar) {
        t(guVar);
        this.f16454da.add(guVar);
        return true;
    }

    @Override // com.byazt.kt.sl
    public boolean c(RecyclerView.gu guVar, int i10, int i11, int i12, int i13) {
        View view = guVar.f16372c;
        int translationX = i10 + ((int) view.getTranslationX());
        int translationY = i11 + ((int) guVar.f16372c.getTranslationY());
        t(guVar);
        int i14 = i12 - translationX;
        int i15 = i13 - translationY;
        if (i14 == 0 && i15 == 0) {
            i(guVar);
            return false;
        }
        if (i14 != 0) {
            view.setTranslationX(-i14);
        }
        if (i15 != 0) {
            view.setTranslationY(-i15);
        }
        this.f16456t.add(new tt(guVar, translationX, translationY, i12, i13));
        return true;
    }

    @Override // com.byazt.kt.RecyclerView.a
    public void uj() {
        int size = this.f16456t.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            tt ttVar = this.f16456t.get(size);
            View view = ttVar.f16471c.f16372c;
            view.setTranslationY(0.0f);
            view.setTranslationX(0.0f);
            i(ttVar.f16471c);
            this.f16456t.remove(size);
        }
        for (int size2 = this.f16454da.size() - 1; size2 >= 0; size2--) {
            x(this.f16454da.get(size2));
            this.f16454da.remove(size2);
        }
        int size3 = this.sl.size();
        while (true) {
            size3--;
            if (size3 < 0) {
                break;
            }
            RecyclerView.gu guVar = this.sl.get(size3);
            guVar.f16372c.setAlpha(1.0f);
            da(guVar);
            this.sl.remove(size3);
        }
        for (int size4 = this.f16457u.size() - 1; size4 >= 0; size4--) {
            tt(this.f16457u.get(size4));
        }
        this.f16457u.clear();
        if (tt()) {
            for (int size5 = this.tt.size() - 1; size5 >= 0; size5--) {
                ArrayList<tt> arrayList = this.tt.get(size5);
                for (int size6 = arrayList.size() - 1; size6 >= 0; size6--) {
                    tt ttVar2 = arrayList.get(size6);
                    View view2 = ttVar2.f16471c.f16372c;
                    view2.setTranslationY(0.0f);
                    view2.setTranslationX(0.0f);
                    i(ttVar2.f16471c);
                    arrayList.remove(size6);
                    if (arrayList.isEmpty()) {
                        this.tt.remove(arrayList);
                    }
                }
            }
            for (int size7 = this.f16453c.size() - 1; size7 >= 0; size7--) {
                ArrayList<RecyclerView.gu> arrayList2 = this.f16453c.get(size7);
                for (int size8 = arrayList2.size() - 1; size8 >= 0; size8--) {
                    RecyclerView.gu guVar2 = arrayList2.get(size8);
                    guVar2.f16372c.setAlpha(1.0f);
                    da(guVar2);
                    arrayList2.remove(size8);
                    if (arrayList2.isEmpty()) {
                        this.f16453c.remove(arrayList2);
                    }
                }
            }
            for (int size9 = this.ve.size() - 1; size9 >= 0; size9--) {
                ArrayList<c> arrayList3 = this.ve.get(size9);
                for (int size10 = arrayList3.size() - 1; size10 >= 0; size10--) {
                    tt(arrayList3.get(size10));
                    if (arrayList3.isEmpty()) {
                        this.ve.remove(arrayList3);
                    }
                }
            }
            c(this.f16452a);
            c(this.f16455n);
            c(this.uj);
            c(this.sp);
            i();
        }
    }

    @Override // com.byazt.kt.sl
    public boolean c(RecyclerView.gu guVar, RecyclerView.gu guVar2, int i10, int i11, int i12, int i13) {
        if (guVar == guVar2) {
            return c(guVar, i10, i11, i12, i13);
        }
        float translationX = guVar.f16372c.getTranslationX();
        float translationY = guVar.f16372c.getTranslationY();
        float alpha = guVar.f16372c.getAlpha();
        t(guVar);
        int i14 = (int) ((i12 - i10) - translationX);
        int i15 = (int) ((i13 - i11) - translationY);
        guVar.f16372c.setTranslationX(translationX);
        guVar.f16372c.setTranslationY(translationY);
        guVar.f16372c.setAlpha(alpha);
        if (guVar2 != null) {
            t(guVar2);
            guVar2.f16372c.setTranslationX(-i14);
            guVar2.f16372c.setTranslationY(-i15);
            guVar2.f16372c.setAlpha(0.0f);
        }
        this.f16457u.add(new c(guVar, guVar2, i10, i11, i12, i13));
        return true;
    }

    public void c(final c cVar) {
        RecyclerView.gu guVar = cVar.f16469c;
        final View view = guVar == null ? null : guVar.f16372c;
        RecyclerView.gu guVar2 = cVar.tt;
        final View view2 = guVar2 != null ? guVar2.f16372c : null;
        if (view != null) {
            final ViewPropertyAnimator duration = view.animate().setDuration(x());
            this.sp.add(cVar.f16469c);
            duration.translationX(cVar.f16470n - cVar.ve);
            duration.translationY(cVar.f16468a - cVar.uj);
            duration.alpha(0.0f).setListener(new AnimatorListenerAdapter() { // from class: com.byazt.kt.ve.7
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    duration.setListener(null);
                    view.setAlpha(1.0f);
                    view.setTranslationX(0.0f);
                    view.setTranslationY(0.0f);
                    ve.this.c(cVar.f16469c, true);
                    ve.this.sp.remove(cVar.f16469c);
                    ve.this.ve();
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                }
            }).start();
        }
        if (view2 != null) {
            final ViewPropertyAnimator viewPropertyAnimatorAnimate = view2.animate();
            this.sp.add(cVar.tt);
            viewPropertyAnimatorAnimate.translationX(0.0f).translationY(0.0f).setDuration(x()).alpha(1.0f).setListener(new AnimatorListenerAdapter() { // from class: com.byazt.kt.ve.8
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    viewPropertyAnimatorAnimate.setListener(null);
                    view2.setAlpha(1.0f);
                    view2.setTranslationX(0.0f);
                    view2.setTranslationY(0.0f);
                    ve.this.c(cVar.tt, false);
                    ve.this.sp.remove(cVar.tt);
                    ve.this.ve();
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                }
            }).start();
        }
    }

    private void c(List<c> list, RecyclerView.gu guVar) {
        for (int size = list.size() - 1; size >= 0; size--) {
            c cVar = list.get(size);
            if (c(cVar, guVar) && cVar.f16469c == null && cVar.tt == null) {
                list.remove(cVar);
            }
        }
    }

    private boolean c(c cVar, RecyclerView.gu guVar) {
        boolean z10 = false;
        if (cVar.tt == guVar) {
            cVar.tt = null;
        } else {
            if (cVar.f16469c != guVar) {
                return false;
            }
            cVar.f16469c = null;
            z10 = true;
        }
        guVar.f16372c.setAlpha(1.0f);
        guVar.f16372c.setTranslationX(0.0f);
        guVar.f16372c.setTranslationY(0.0f);
        c(guVar, z10);
        return true;
    }

    public void c(List<RecyclerView.gu> list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            list.get(size).f16372c.animate().cancel();
        }
    }

    @Override // com.byazt.kt.RecyclerView.a
    public boolean c(RecyclerView.gu guVar, List<Object> list) {
        return !list.isEmpty() || super.c(guVar, list);
    }
}
