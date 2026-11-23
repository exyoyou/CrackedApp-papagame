package com.join.mgps.fragment;

import android.animation.Animator;
import android.app.Activity;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.OvershootInterpolator;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.GameDiscoverActivity;
import com.join.mgps.control.RhythmLayout;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.GameDiscoverBean;
import com.join.mgps.pulltorefresh.extras.viewpager.PullToRefreshViewPager;
import com.join.mgps.pulltorefresh.library.PullToRefreshBase;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.EventP;
import java.lang.reflect.Field;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class f extends com.join.mgps.fragment.a implements PullToRefreshBase.h<ViewPager> {

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static f f69464y;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private View f69465d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ImageButton f69466e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private TextView f69467f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private TextView f69468g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private RhythmLayout f69469h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private PullToRefreshViewPager f69470i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private ViewPager f69471j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private com.join.mgps.adapter.d f69472k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f69473l;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f69475n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private List<GameDiscoverBean> f69476o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private List<GameDiscoverBean> f69477p;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private ExtBean f69481t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private com.join.mgps.control.b f69482u;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f69485x;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f69474m = true;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private com.join.mgps.pref.c f69478q = null;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f69479r = 1;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f69480s = true;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private com.join.mgps.control.a f69483v = new a();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private ViewPager.OnPageChangeListener f69484w = new b();

    class a implements com.join.mgps.control.a {

        /* JADX INFO: renamed from: com.join.mgps.fragment.f$a$a, reason: collision with other inner class name */
        class RunnableC0725a implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ int f69487b;

            RunnableC0725a(final int val$paramInt) {
                this.f69487b = val$paramInt;
            }

            @Override // java.lang.Runnable
            public void run() {
                f.this.f69471j.setCurrentItem(this.f69487b);
            }
        }

        a() {
        }

        @Override // com.join.mgps.control.a
        public void a() {
        }

        @Override // com.join.mgps.control.a
        public void b(int paramInt) {
        }

        @Override // com.join.mgps.control.a
        public void onSelected(final int paramInt) {
            f.this.f68933c.postDelayed(new RunnableC0725a(paramInt), 100L);
        }
    }

    class b implements ViewPager.OnPageChangeListener {
        b() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int paramInt) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int position) {
            f.this.a0(position);
            if (!f.this.f69474m || f.this.f69476o.size() <= 0 || f.this.f69476o.size() % 10 != 0 || position < f.this.f69476o.size() - 8 || f.this.f69475n || !com.join.android.app.common.utils.m.j(f.this.getActivity())) {
                return;
            }
            f.this.W();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View paramView) {
            f.this.f69471j.setCurrentItem(0, true);
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f.this.W();
        }
    }

    class e implements Animator.AnimatorListener {
        e() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator paramAnimator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator paramAnimator) {
            f.this.f69466e.setVisibility(8);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator paramAnimator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator paramAnimator) {
        }
    }

    private void V(List<GameDiscoverBean> cardList) {
        com.join.mgps.control.b bVar = this.f69482u;
        if (bVar == null) {
            b0(cardList);
        } else {
            bVar.a(cardList);
            this.f69482u.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void W() {
        this.f69474m = false;
        this.f69475n = true;
        Bundle bundle = new Bundle();
        int i10 = this.f69479r + 1;
        this.f69479r = i10;
        bundle.putInt("CurrentPn", i10);
        this.f69478q.callBack(bundle);
    }

    public static f X() {
        if (f69464y == null) {
            f69464y = new f();
        }
        return f69464y;
    }

    public static int Y(Activity activity) {
        Rect rect = new Rect();
        activity.getWindow().getDecorView().getWindowVisibleDisplayFrame(rect);
        int i10 = rect.top;
        if (i10 != 0) {
            return i10;
        }
        try {
            Class<?> cls = Class.forName("com.android.internal.R$dimen");
            return activity.getResources().getDimensionPixelSize(Integer.parseInt(cls.getField("status_bar_height").get(cls.newInstance()).toString()));
        } catch (ClassNotFoundException e10) {
            e10.printStackTrace();
            return i10;
        } catch (IllegalAccessException e11) {
            e11.printStackTrace();
            return i10;
        } catch (IllegalArgumentException e12) {
            e12.printStackTrace();
            return i10;
        } catch (InstantiationException e13) {
            e13.printStackTrace();
            return i10;
        } catch (NoSuchFieldException e14) {
            e14.printStackTrace();
            return i10;
        } catch (NumberFormatException e15) {
            e15.printStackTrace();
            return i10;
        } catch (SecurityException e16) {
            e16.printStackTrace();
            return i10;
        }
    }

    private void Z() {
        List<GameDiscoverBean> list = this.f69477p;
        if (list == null || list.size() <= 0) {
            return;
        }
        this.f69473l = com.join.mgps.Util.m.d(this.f69477p.get(0).getDiscover().getBg_color());
        f0(this.f69477p);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a0(int position) {
        this.f69469h.w(position);
        e0(position);
        GameDiscoverBean gameDiscoverBean = this.f69476o.get(position);
        int iD = com.join.mgps.Util.m.d(gameDiscoverBean.getDiscover().getBg_color());
        if (this.f69480s) {
            GameDiscoverActivity gameDiscoverActivity = (GameDiscoverActivity) getActivity();
            if (gameDiscoverActivity != null && gameDiscoverActivity.getmTintManager() != null) {
                gameDiscoverActivity.getmTintManager().p(iD);
                this.f69480s = false;
            }
        } else {
            GameDiscoverActivity gameDiscoverActivity2 = (GameDiscoverActivity) getActivity();
            if (gameDiscoverActivity2 != null && gameDiscoverActivity2.getmTintManager() != null) {
                gameDiscoverActivity2.getmTintManager().k(0);
            }
        }
        com.join.mgps.Util.e.k(this.f69465d, this.f69473l, iD, 700);
        this.f69473l = iD;
        if (gameDiscoverBean.getExposure()) {
            return;
        }
        com.papa.sim.statistic.t.l(requireContext()).R1(Event.expGameAdPage, gameDiscoverBean.getExtBean().buildScene().toExt());
        gameDiscoverBean.setExposure(true);
    }

    private void b0(List<GameDiscoverBean> cardList) {
        if (getActivity() == null || cardList == null) {
            return;
        }
        com.join.mgps.control.b bVar = new com.join.mgps.control.b(getActivity(), this.f69469h, cardList);
        this.f69482u = bVar;
        this.f69469h.setAdapter(bVar);
    }

    private void d0(ViewPager viewPager, int speed) {
        try {
            Field declaredField = ViewPager.class.getDeclaredField("mScroller");
            declaredField.setAccessible(true);
            com.join.mgps.control.c cVar = new com.join.mgps.control.c(viewPager.getContext(), new OvershootInterpolator(0.6f));
            declaredField.set(viewPager, cVar);
            cVar.a(speed);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
        } catch (NoSuchFieldException e11) {
            e11.printStackTrace();
        }
    }

    private void e0(int position) {
        if (position > 1) {
            if (this.f69466e.getVisibility() == 8) {
                this.f69466e.setVisibility(0);
                com.join.mgps.Util.e.a(this.f69466e);
            }
        } else if (this.f69466e.getVisibility() == 0) {
            com.join.mgps.Util.e.c(this.f69466e).addListener(new e());
        }
        String str = new SimpleDateFormat("dd").format(Long.valueOf(this.f69476o.get(position).getDiscover().getAddtimes() * 1000));
        this.f69468g.setText(new SimpleDateFormat("MM EEEE").format(Long.valueOf(this.f69476o.get(position).getDiscover().getAddtimes() * 1000)).replace(" ", "月\n"));
        this.f69467f.setText(str);
    }

    private void f0(List<GameDiscoverBean> cardList) {
        try {
            if (getActivity() != null && !getActivity().isFinishing()) {
                if (cardList.isEmpty()) {
                    this.f69474m = false;
                    this.f69465d.setBackgroundColor(this.f69473l);
                    return;
                }
                int size = this.f69476o.size();
                this.f69474m = cardList.size() >= 10;
                Iterator<GameDiscoverBean> it2 = cardList.iterator();
                while (it2.hasNext()) {
                    it2.next().getExtBean().setParent(this.f69481t).setChatId(EventP.ChatId.dailyRecommend.name());
                }
                com.join.mgps.adapter.d dVar = this.f69472k;
                if (dVar == null) {
                    com.join.mgps.adapter.d dVar2 = new com.join.mgps.adapter.d(getActivity().getSupportFragmentManager(), cardList);
                    this.f69472k = dVar2;
                    this.f69471j.setAdapter(dVar2);
                } else {
                    dVar.b(cardList);
                    this.f69472k.notifyDataSetChanged();
                }
                V(cardList);
                this.f69476o = this.f69472k.c();
                if (this.f69471j.getCurrentItem() == size - 1) {
                    ViewPager viewPager = this.f69471j;
                    viewPager.setCurrentItem(viewPager.getCurrentItem() + 1, true);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.join.mgps.pulltorefresh.library.PullToRefreshBase.h
    public void H(PullToRefreshBase<ViewPager> pullToRefreshBase) {
        if (this.f69475n) {
            return;
        }
        if (pullToRefreshBase.getCurrentMode() != PullToRefreshBase.Mode.PULL_FROM_END) {
            if (pullToRefreshBase.getCurrentMode() == PullToRefreshBase.Mode.PULL_FROM_START) {
                this.f69470i.f();
                this.f69475n = false;
                return;
            }
            return;
        }
        if (this.f69474m && !this.f69475n && com.join.android.app.common.utils.m.j(getActivity())) {
            new Handler().postDelayed(new d(), 2000L);
            return;
        }
        this.f69470i.f();
        this.f69470i.setMode(PullToRefreshBase.Mode.DISABLED);
        this.f69475n = false;
    }

    @Override // com.join.mgps.fragment.a
    protected void M(View paramView) {
        this.f69469h.setRhythmListener(this.f69483v);
        this.f69470i.setOnRefreshListener(this);
        this.f69470i.setPullToRefreshEnabled(false);
        this.f69471j.setOnPageChangeListener(this.f69484w);
        this.f69466e.setOnClickListener(new c());
    }

    @Override // com.join.mgps.fragment.a
    protected View N(LayoutInflater inflater) {
        View viewInflate = inflater.inflate(R.layout.fragment_discoverapp, (ViewGroup) null);
        int iY = Y(getActivity());
        this.f69485x = iY;
        viewInflate.setPadding(0, iY, 0, 0);
        this.f69467f = (TextView) viewInflate.findViewById(R.id.text_time_first);
        this.f69468g = (TextView) viewInflate.findViewById(R.id.text_time_second);
        this.f69465d = viewInflate.findViewById(R.id.main_view);
        this.f69466e = (ImageButton) viewInflate.findViewById(R.id.btn_rocket_to_head);
        this.f69469h = (RhythmLayout) viewInflate.findViewById(R.id.box_rhythm);
        PullToRefreshViewPager pullToRefreshViewPager = (PullToRefreshViewPager) viewInflate.findViewById(R.id.pager);
        this.f69470i = pullToRefreshViewPager;
        ViewPager refreshableView = pullToRefreshViewPager.getRefreshableView();
        this.f69471j = refreshableView;
        d0(refreshableView, 700);
        this.f69469h.setScrollRhythmStartDelayTime(100);
        int rhythmItemWidth = ((int) this.f69469h.getRhythmItemWidth()) + (((int) TypedValue.applyDimension(1, 8.0f, getResources().getDisplayMetrics())) * 2);
        this.f69469h.getLayoutParams().height = rhythmItemWidth;
        ((RelativeLayout.LayoutParams) this.f69470i.getLayoutParams()).bottomMargin = (int) (((double) rhythmItemWidth) * 1.3d);
        return viewInflate;
    }

    public void c0(List<GameDiscoverBean> gameDiscoverBeans) {
        this.f69477p = gameDiscoverBeans;
        if (this.f69479r > 1) {
            this.f69473l = com.join.mgps.Util.m.d(gameDiscoverBeans.get(0).getDiscover().getBg_color());
            f0(gameDiscoverBeans);
            this.f69470i.f();
            this.f69475n = false;
        }
    }

    @Override // com.join.mgps.fragment.a
    protected void initData() {
        this.f69476o = new ArrayList();
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        this.f69479r = 1;
        this.f69474m = true;
        this.f69482u = null;
        this.f69472k = null;
        this.f69478q.viewCallBack(null);
        try {
            Z();
            a0(0);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        if (getActivity() != null) {
            this.f69478q = (GameDiscoverActivity) getActivity();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        this.f69478q = null;
        super.onDestroy();
    }

    public void setParentExtBean(ExtBean parentExtBean) {
        this.f69481t = parentExtBean;
    }
}
