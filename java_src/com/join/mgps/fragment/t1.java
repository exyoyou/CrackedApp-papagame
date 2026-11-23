package com.join.mgps.fragment;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.AbsListView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.viewpager.widget.ViewPager;
import com.czhj.sdk.common.Constants;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.customview.ForumIndexHeaderView;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.ScrollTextViewLayout;
import com.join.mgps.customview.SlidingTabLayout4;
import com.join.mgps.db.tables.ForumTable;
import com.join.mgps.dto.ForumBannerBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.ForumData;
import com.join.mgps.dto.ForumResponse;
import com.join.mgps.dto.RecommenGroup;
import com.join.mgps.dto.RecommenGroupClassify;
import com.join.mgps.dto.RecommendLabelTag;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.join.mgps.ptr.PtrFrameLayout;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.springframework.util.LinkedMultiValueMap;
import ru.noties.scrollable.ScrollableLayout;

/* JADX INFO: loaded from: classes3.dex */
@EFragment(R.layout.mg_forum_index_fragment)
public class t1 extends com.join.mgps.fragment.e implements ForumIndexHeaderView.c, View.OnClickListener {
    private boolean A;

    @ViewById
    RelativeLayout B;
    TextView C;

    @ViewById
    TextView D;
    TextView E;
    LinearLayout F;
    TextView G;
    ScrollTextViewLayout H;
    ImageView I;
    ImageView J;
    ImageView K;
    SimpleDraweeView L;
    SimpleDraweeView M;

    @Pref
    PrefDef_ N;
    public List<DownloadTask> V;
    private Animation X;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    View f70938d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    ImageView f70939e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @ViewById
    View f70940f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @ViewById
    TextView f70941g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @ViewById
    ForumLoadingView f70942h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @ViewById
    ScrollableLayout f70943i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @ViewById
    ForumIndexHeaderView f70944j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @ViewById
    SlidingTabLayout4 f70945k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @ViewById
    ViewPager f70946l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @ViewById
    PtrClassicFrameLayout f70947m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @ViewById
    RelativeLayout f70948n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    Context f70949o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    com.join.mgps.rpc.i f70950p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    com.join.mgps.rpc.e f70951q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    com.join.mgps.rpc.b f70952r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    List<RecommenGroupClassify> f70953s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    b0 f70954t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    com.join.mgps.adapter.h0 f70955u;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f70957w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    FragmentManager f70958x;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private AbsListView f70960z;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f70937c = getClass().getCanonicalName();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    int f70956v = 0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    boolean f70959y = false;
    private int O = 0;
    private int P = 0;
    private int Q = 0;
    private int R = 0;
    private int S = 2;
    private int T = 0;
    private int U = 1;
    private int W = 1;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            t1.this.Z();
        }
    }

    class b implements Animation.AnimationListener {
        b() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            com.join.mgps.Util.r0.B0(v10.getContext());
        }
    }

    class d implements com.join.mgps.ptr.b {
        d() {
        }

        @Override // com.join.mgps.ptr.b
        public boolean checkCanDoRefresh(PtrFrameLayout frame, View content, View header) {
            return com.join.mgps.ptr.a.checkContentCanBePulledDown(frame, content, header);
        }

        @Override // com.join.mgps.ptr.b
        public void onRefreshBegin(PtrFrameLayout frame) {
            t1.this.refresh();
        }
    }

    class e implements ViewPager.OnPageChangeListener {
        e() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int state) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int position) {
            try {
                t1 t1Var = t1.this;
                com.join.mgps.adapter.h0 h0Var = t1Var.f70955u;
                Fragment item = h0Var != null ? h0Var.getItem(t1Var.f70957w) : null;
                if (item != null) {
                    item.onPause();
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            t1.this.f70957w = position;
        }
    }

    class f implements ru.noties.scrollable.b {
        f() {
        }

        @Override // ru.noties.scrollable.b
        public boolean i(int direction) {
            v1 v1VarA0 = t1.this.a0();
            return v1VarA0 != null && v1VarA0.i(direction);
        }
    }

    class g implements ru.noties.scrollable.j {
        g() {
        }

        @Override // ru.noties.scrollable.j
        public void C(int y10, long duration) {
            v1 v1VarA0 = t1.this.a0();
            if (v1VarA0 != null) {
                v1VarA0.C(y10, duration);
            }
        }
    }

    class h implements ru.noties.scrollable.k {
        h() {
        }

        @Override // ru.noties.scrollable.k
        public void a(int y10, int oldY, int maxY) {
            try {
                b0 b0Var = t1.this.f70954t;
                if (b0Var == null || !(b0Var.a() instanceof u1)) {
                    return;
                }
                ((u1) t1.this.f70954t.a()).t0();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    class i extends ForumLoadingView.e {
        i(ForumLoadingView loadingView) {
            super(loadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void a(View v10) {
            super.a(v10);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            t1.this.loading();
        }
    }

    class j extends ForumLoadingView.e {
        j(ForumLoadingView loadingView) {
            super(loadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void a(View v10) {
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            super.b();
            t1.this.loading();
        }
    }

    class k extends ForumLoadingView.e {
        k(ForumLoadingView loadingView) {
            super(loadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            t1.this.loading();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Z() {
        IntentUtil.getInstance().goMyGameManagerActivity(this.f70949o);
        this.H.p();
        this.K.setVisibility(8);
        this.N.isNewFinishedGame().g(Boolean.FALSE);
        this.I.setVisibility(8);
    }

    private void k0() {
        View viewInflate = LayoutInflater.from(this.f70949o).inflate(R.layout.mgmain_otherlayout, (ViewGroup) null);
        this.C = (TextView) viewInflate.findViewById(R.id.papa_user_round);
        this.E = (TextView) viewInflate.findViewById(R.id.biground);
        this.F = (LinearLayout) viewInflate.findViewById(R.id.downloadLayout);
        this.G = (TextView) viewInflate.findViewById(R.id.scroll_text);
        this.H = (ScrollTextViewLayout) viewInflate.findViewById(R.id.scroll_text_layout);
        this.I = (ImageView) viewInflate.findViewById(R.id.hasNewFinishedGameImage);
        this.J = (ImageView) viewInflate.findViewById(R.id.downloadLine);
        this.K = (ImageView) viewInflate.findViewById(R.id.imageLoading);
        this.L = (SimpleDraweeView) viewInflate.findViewById(R.id.coinFloatad);
        this.M = (SimpleDraweeView) viewInflate.findViewById(R.id.papa_user_icon);
        this.B.addView(viewInflate);
        this.F.setOnClickListener(new a());
        this.F.setVisibility(0);
        Y();
    }

    private List<com.join.mgps.adapter.h0.a> m0(Context context) {
        List<RecommenGroupClassify> list = this.f70953s;
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        for (int i10 = 0; i10 < this.f70953s.size(); i10++) {
            RecommenGroupClassify recommenGroupClassify = this.f70953s.get(i10);
            recommenGroupClassify.getGid();
            arrayList.add(new com.join.mgps.adapter.h0.a(recommenGroupClassify.getGname(), u1.Y(recommenGroupClassify, i10)));
        }
        return arrayList;
    }

    private void o0() {
        c0();
        e0();
        g0();
    }

    @UiThread
    void A0() {
        g0();
    }

    void B0() {
        this.J.setImageResource(R.drawable.line_blue_bg);
        Animation animationLoadAnimation = AnimationUtils.loadAnimation(this.f70949o, R.anim.img_translate);
        this.X = animationLoadAnimation;
        animationLoadAnimation.setFillAfter(true);
        this.K.setVisibility(0);
        this.K.startAnimation(this.X);
        this.X.setAnimationListener(new b());
    }

    void C0() {
        this.K.clearAnimation();
        this.K.setVisibility(8);
        int i10 = this.S;
        if (i10 == 2 || i10 == 5) {
            this.J.setImageResource(R.drawable.line_grey_bg);
        } else {
            this.J.setImageResource(R.drawable.line_white_bg);
        }
    }

    @UiThread
    void D0() {
        PtrClassicFrameLayout ptrClassicFrameLayout = this.f70947m;
        if (ptrClassicFrameLayout != null) {
            ptrClassicFrameLayout.C();
        }
    }

    @UiThread
    void E0() {
        ForumIndexHeaderView forumIndexHeaderView = this.f70944j;
        if (forumIndexHeaderView != null) {
            forumIndexHeaderView.i();
        }
    }

    public void F0() {
        com.papa.gsyvideoplayer.d.j0();
    }

    @Background
    void G0() {
        try {
            if (this.f70942h.getLoadingState() == 2 && t6.t.p() != null) {
                ForumTable forumTableO = t6.t.p().o(ForumBean.ForumEvent.HomepageRecommendGroup);
                if ((forumTableO == null || System.currentTimeMillis() - (Long.parseLong(forumTableO.getTime()) * 1000) < com.join.mgps.Util.r0.f49988c) && !com.join.mgps.pref.h.n(this.f70949o).A()) {
                    return;
                }
                com.join.mgps.pref.h.n(this.f70949o).o0(false);
                loading();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void H0(int number) {
        TextView textView = this.E;
        if (textView == null) {
            return;
        }
        textView.setVisibility(0);
        if (number < 100) {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.E.getLayoutParams();
            Context context = this.f70949o;
            if (context != null) {
                layoutParams.width = context.getResources().getDimensionPixelOffset(R.dimen.round_large_size);
                layoutParams.height = this.f70949o.getResources().getDimensionPixelOffset(R.dimen.round_large_size);
            }
            this.E.setLayoutParams(layoutParams);
            this.E.setCompoundDrawables(null, null, null, null);
            this.E.setBackgroundResource(R.drawable.mygame_big_round);
            this.E.setPadding(1, 0, 0, 1);
        } else {
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.E.getLayoutParams();
            Context context2 = this.f70949o;
            if (context2 != null) {
                layoutParams2.width = context2.getResources().getDimensionPixelOffset(R.dimen.dp70);
                layoutParams2.height = this.f70949o.getResources().getDimensionPixelOffset(R.dimen.round_large_size);
            }
            layoutParams2.setMargins(0, (int) TypedValue.applyDimension(1, 7.0f, this.f70949o.getResources().getDisplayMetrics()), 4, 0);
            this.E.setGravity(17);
            this.E.setLayoutParams(layoutParams2);
            this.E.setCompoundDrawables(null, null, null, null);
            this.E.setBackgroundResource(R.drawable.message_round);
            this.E.setPadding(1, 0, 2, 1);
        }
        this.E.setText(number + "");
    }

    @UiThread
    void I0() {
        C0();
        TextView textView = this.E;
        if (textView != null) {
            textView.setVisibility(8);
            this.E.setText("");
        }
        TextView textView2 = this.D;
        if (textView2 != null) {
            textView2.setVisibility(8);
        }
    }

    @UiThread
    void J0(int downloadingNumber) {
        Context context = this.f70949o;
        if (context != null) {
            int i10 = this.S;
            if (i10 == 2 || i10 == 5) {
                this.H.setDrawable(context.getResources().getDrawable(R.drawable.papa_download_selector));
            } else {
                this.H.setDrawable(context.getResources().getDrawable(R.drawable.papa_download_butn));
            }
        }
        if (downloadingNumber == 0) {
            C0();
        } else {
            this.J.setImageResource(R.drawable.line_blue_bg);
            B0();
        }
    }

    @UiThread
    void K0() {
        C0();
        TextView textView = this.E;
        if (textView != null) {
            textView.setVisibility(8);
            this.E.setText("");
        }
        if (this.D != null) {
            Drawable drawable = this.f70949o.getResources().getDrawable(R.drawable.mygame_litle_round);
            drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
            this.D.setVisibility(0);
            this.D.setCompoundDrawables(drawable, null, null, null);
            this.D.setBackgroundResource(R.color.transparent);
        }
    }

    @Receiver(actions = {p5.a.B})
    void O() {
        com.join.mgps.Util.r0.g1();
        refresh();
    }

    @Click
    void P() {
        IntentUtil.getInstance().goMGSettingActivity(getActivity());
    }

    @Override // com.join.mgps.fragment.e
    @UiThread
    void T(String msg) {
        com.join.mgps.Util.a3.b(this.f70949o).d(msg);
    }

    public void U() {
        PtrClassicFrameLayout ptrClassicFrameLayout = this.f70947m;
        if (ptrClassicFrameLayout != null) {
            ptrClassicFrameLayout.f();
        }
    }

    @Receiver(actions = {p5.a.f96231y})
    void V(Intent intent) {
        Y();
    }

    @Click
    void W() {
        getActivity().finish();
    }

    @UiThread
    void X(int state) {
        ForumLoadingView forumLoadingView = this.f70942h;
        if (forumLoadingView == null) {
            return;
        }
        if (state == 1) {
            forumLoadingView.j(1);
            return;
        }
        if (state == 2) {
            forumLoadingView.j(2);
            return;
        }
        if (state == 4) {
            forumLoadingView.j(4);
            return;
        }
        if (state == 16) {
            forumLoadingView.setFailedMsg("加载失败，再试试吧~");
            ForumLoadingView forumLoadingView2 = this.f70942h;
            forumLoadingView2.setListener(new k(forumLoadingView2));
            this.f70942h.j(16);
            return;
        }
        if (state == 9) {
            forumLoadingView.setListener(new i(forumLoadingView));
            this.f70942h.j(9);
        } else {
            if (state != 10) {
                return;
            }
            forumLoadingView.setFailedMsg("没有更多内容哦~");
            ForumLoadingView forumLoadingView3 = this.f70942h;
            forumLoadingView3.setListener(new j(forumLoadingView3));
            this.f70942h.setReloadingVisibility(0);
            this.f70942h.j(10);
        }
    }

    @Background
    void Y() {
        this.O = q5.f.M().V();
        this.Q = q5.f.M().Z(getActivity());
        J0(q5.f.M().d0());
        int i10 = this.O;
        if (i10 != 0) {
            H0(i10);
        } else if (this.Q != 0) {
            K0();
        } else {
            I0();
        }
    }

    v1 a0() {
        b0 b0Var = this.f70954t;
        if (b0Var != null) {
            return b0Var.a();
        }
        return null;
    }

    @AfterViews
    void afterViews() {
        this.f70948n.setVisibility(0);
        this.f70939e.setVisibility(0);
        this.f70950p = com.join.mgps.rpc.impl.g.A0();
        this.f70951q = com.join.mgps.rpc.impl.d.O1();
        this.f70952r = com.join.mgps.rpc.impl.a.c0();
        this.f70949o = getActivity();
        this.f70941g.setVisibility(0);
        this.f70941g.setText("社区");
        this.f70948n.setOnClickListener(new c());
        this.f70947m.setPtrHandler(new d());
        this.f70947m.j(true);
        this.f70943i.setAutoMaxScroll(false);
        this.f70944j.setmOnMeasureHeight(this);
        this.f70944j.setHeaderClickListener(this);
        k0();
        j0();
        loading();
    }

    public int b0() {
        ViewPager viewPager = this.f70946l;
        if (viewPager != null) {
            return viewPager.getCurrentItem();
        }
        return -1;
    }

    @Background
    void c0() {
        if (!com.join.android.app.common.utils.m.j(this.f70949o)) {
            String string = (this.f70949o == null || !isAdded()) ? "" : getString(R.string.net_connect_failed);
            if (!TextUtils.isEmpty(string)) {
                T(string);
            }
            X(9);
            return;
        }
        try {
            ResultMainBean<ForumBannerBean.ForumBannerDataBannerBean> resultMainBeanZ0 = this.f70951q.Z0(com.join.mgps.Util.r0.V(this.f70949o, 1));
            if (resultMainBeanZ0 != null && resultMainBeanZ0.getFlag() == 1 && resultMainBeanZ0.getMessages() != null && resultMainBeanZ0.getMessages().getData() != null) {
                ForumBannerBean.ForumBannerDataBannerBean data = resultMainBeanZ0.getMessages().getData();
                com.join.mgps.Util.r0.l1(data);
                v0(data);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            i0();
            D0();
        }
    }

    void d0() {
        ForumBannerBean.ForumBannerDataBannerBean forumBannerDataBannerBeanA0 = com.join.mgps.Util.r0.a0();
        if (forumBannerDataBannerBeanA0 == null) {
            return;
        }
        v0(forumBannerDataBannerBeanA0);
    }

    @Background
    void e0() {
        if (!com.join.android.app.common.utils.m.j(this.f70949o)) {
            String string = (this.f70949o == null || !isAdded()) ? "" : getString(R.string.net_connect_failed);
            if (!TextUtils.isEmpty(string)) {
                T(string);
            }
            X(9);
            return;
        }
        try {
            ForumResponse<ForumData.HomepageRecommendGroup> forumResponseH0 = this.f70950p.h0(AccountUtil_.getInstance_(this.f70949o).getUid(), AccountUtil_.getInstance_(this.f70949o).getToken());
            if (forumResponseH0 == null || forumResponseH0.getError() != 0) {
                return;
            }
            if (forumResponseH0.getData() == null) {
                X(4);
                return;
            }
            ForumData.HomepageRecommendGroup data = forumResponseH0.getData();
            com.join.mgps.Util.r0.q1(data);
            x0(data);
        } catch (Exception e10) {
            e10.printStackTrace();
            D0();
        }
    }

    void f0() {
        ForumData.HomepageRecommendGroup homepageRecommendGroupG0 = com.join.mgps.Util.r0.g0();
        if (homepageRecommendGroupG0 == null) {
            return;
        }
        x0(homepageRecommendGroupG0);
    }

    @Background
    void g0() {
        if (!com.join.android.app.common.utils.m.j(this.f70949o)) {
            String string = (this.f70949o == null || !isAdded()) ? "" : getString(R.string.net_connect_failed);
            if (!TextUtils.isEmpty(string)) {
                T(string);
            }
            X(9);
            E0();
            return;
        }
        try {
            ForumResponse<ForumData.HomepageRecommendLabel> forumResponseG0 = this.f70950p.g0(0, 1, AccountUtil_.getInstance_(this.f70949o).getUid(), AccountUtil_.getInstance_(this.f70949o).getToken());
            if (forumResponseG0 != null && forumResponseG0.getError() == 0) {
                if (forumResponseG0.getData() == null) {
                    X(4);
                    E0();
                    return;
                }
                ForumData.HomepageRecommendLabel data = forumResponseG0.getData();
                com.join.mgps.Util.r0.r1(data);
                this.f70956v = data.getFlag();
                if (data.getFlag() == 0) {
                    z0(data.getLabel_switcher() == 1, data.getTag_list());
                } else if (data.getFlag() == 1) {
                    y0();
                }
                q0(data.getFenzu());
            }
            E0();
        } catch (Exception e10) {
            e10.printStackTrace();
            D0();
        }
    }

    void h0() {
        List<RecommenGroupClassify> list;
        ForumData.HomepageRecommendLabel homepageRecommendLabelH0 = com.join.mgps.Util.r0.h0();
        if (homepageRecommendLabelH0 == null) {
            return;
        }
        this.f70956v = homepageRecommendLabelH0.getFlag();
        if (homepageRecommendLabelH0.getFlag() == 0) {
            z0(homepageRecommendLabelH0.getLabel_switcher() == 1, homepageRecommendLabelH0.getTag_list());
            return;
        }
        if (homepageRecommendLabelH0.getFlag() == 1) {
            if (this.f70953s == null) {
                this.f70953s = new ArrayList();
            }
            if (homepageRecommendLabelH0.getFenzu() != null && (list = this.f70953s) != null && list.equals(homepageRecommendLabelH0.getFenzu())) {
                r0();
                return;
            }
            this.f70953s.clear();
            this.f70953s.addAll(homepageRecommendLabelH0.getFenzu());
            y0();
        }
    }

    @UiThread
    void i0() {
        this.f70944j.setNoForumBanner();
    }

    void j0() {
        this.f70943i.setIsIndex(true);
        this.f70943i.setDraggableView(this.f70944j);
        this.f70943i.setCanScrollVerticallyDelegate(new f());
        this.f70943i.setOnFlingOverListener(new g());
        this.f70943i.w(new h());
    }

    public boolean l0() {
        PtrClassicFrameLayout ptrClassicFrameLayout = this.f70947m;
        if (ptrClassicFrameLayout != null) {
            return ptrClassicFrameLayout.q();
        }
        return false;
    }

    @Override // com.join.mgps.fragment.e
    protected void lazyLoad() {
    }

    void loading() {
        n0();
        o0();
    }

    @Background
    void n0() {
        d0();
        f0();
        h0();
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        try {
            if (this.f70958x == null && isAdded()) {
                this.f70958x = getChildFragmentManager();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id2 = view.getId();
        if (id2 == R.id.refreshTag) {
            this.f70944j.h();
            g0();
            return;
        }
        if (id2 == R.id.forumRecomm) {
            if (AccountUtil_.getInstance_(getContext()).isTourist()) {
                w0();
                return;
            }
            if (this.f70944j.getSelectedLabel().size() >= 3) {
                t0(this.f70944j.getSelectedIds());
                return;
            }
            String string = (this.f70949o == null || !isAdded()) ? "" : getString(R.string.forum_tip_at_least_sel_label);
            if (TextUtils.isEmpty(string)) {
                return;
            }
            T(string);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        if (this.f70958x != null) {
            com.join.mgps.adapter.h0 h0Var = this.f70955u;
            if (h0Var != null) {
                h0Var.b();
            }
            this.f70958x = null;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if (hidden || a0() == null) {
            return;
        }
        a0().setUserVisibleHint(true);
    }

    @Override // com.join.mgps.customview.ForumIndexHeaderView.c
    public void onMeasure(int height) {
        ViewPager viewPager;
        SlidingTabLayout4 slidingTabLayout4;
        ScrollableLayout scrollableLayout = this.f70943i;
        if (scrollableLayout != null) {
            if (this.f70956v != 0) {
                scrollableLayout.setMaxScrollY(height);
                if (this.f70945k == null || (viewPager = this.f70946l) == null) {
                    return;
                }
                ViewGroup.LayoutParams layoutParams = viewPager.getLayoutParams();
                layoutParams.width = -1;
                layoutParams.height = this.f70942h.getMeasuredHeight() - this.f70945k.getMeasuredHeight();
                this.f70946l.setLayoutParams(layoutParams);
                return;
            }
            List<RecommenGroupClassify> list = this.f70953s;
            if (list == null || list.size() <= 0 || (slidingTabLayout4 = this.f70945k) == null || this.f70946l == null || slidingTabLayout4.getVisibility() != 0 || this.f70946l.getVisibility() != 0) {
                this.f70943i.setMaxScrollY(height - this.f70942h.getMeasuredHeight());
                return;
            }
            this.f70943i.setMaxScrollY(height);
            ViewGroup.LayoutParams layoutParams2 = this.f70946l.getLayoutParams();
            layoutParams2.width = -1;
            layoutParams2.height = this.f70942h.getMeasuredHeight() - this.f70945k.getMeasuredHeight();
            this.f70946l.setLayoutParams(layoutParams2);
        }
    }

    @Override // com.join.mgps.fragment.e, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        G0();
        Y();
    }

    public void p0() {
    }

    @UiThread
    void q0(List<RecommenGroupClassify> fenzu) {
        List<RecommenGroupClassify> list;
        SlidingTabLayout4 slidingTabLayout4;
        if (this.f70953s == null) {
            this.f70953s = new ArrayList();
        }
        if (fenzu != null && (list = this.f70953s) != null && list.equals(fenzu) && (slidingTabLayout4 = this.f70945k) != null && this.f70946l != null && slidingTabLayout4.getVisibility() == 0 && this.f70946l.getVisibility() == 0) {
            r0();
            return;
        }
        this.f70953s.clear();
        this.f70953s.addAll(fenzu);
        if (this.f70953s.size() > 0) {
            SlidingTabLayout4 slidingTabLayout5 = this.f70945k;
            if (slidingTabLayout5 != null) {
                slidingTabLayout5.setVisibility(0);
            }
            ViewPager viewPager = this.f70946l;
            if (viewPager != null) {
                viewPager.setVisibility(0);
            }
            u0();
            return;
        }
        SlidingTabLayout4 slidingTabLayout6 = this.f70945k;
        if (slidingTabLayout6 != null) {
            slidingTabLayout6.setVisibility(8);
        }
        ViewPager viewPager2 = this.f70946l;
        if (viewPager2 != null) {
            viewPager2.setVisibility(8);
        }
    }

    @UiThread
    void r0() {
        b0 b0Var = this.f70954t;
        if (b0Var == null || !(b0Var.a() instanceof u1)) {
            return;
        }
        ((u1) this.f70954t.a()).refresh();
    }

    void refresh() {
        o0();
    }

    public void s0() {
        this.A = false;
    }

    @Background
    void t0(String ids) {
        String string = "";
        if (!com.join.android.app.common.utils.m.j(this.f70949o)) {
            if (this.f70949o != null && isAdded()) {
                string = getString(R.string.net_connect_failed);
            }
            if (!TextUtils.isEmpty(string)) {
                T(string);
            }
            X(9);
            return;
        }
        try {
            String uid = AccountUtil_.getInstance_(this.f70949o).getUid();
            String token = AccountUtil_.getInstance_(this.f70949o).getToken();
            LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
            linkedMultiValueMap.add("uid", uid + "");
            linkedMultiValueMap.add(Constants.TOKEN, token);
            linkedMultiValueMap.add("ids", ids);
            ForumResponse<ForumData.HomepageRecommendLabel> forumResponseN = this.f70950p.n(linkedMultiValueMap);
            if (forumResponseN == null || forumResponseN.getError() != 0 || forumResponseN.getData() == null) {
                return;
            }
            if (forumResponseN.getData().isResult()) {
                A0();
            }
            if (TextUtils.isEmpty(forumResponseN.getData().getMsg())) {
                return;
            }
            T(forumResponseN.getData().getMsg());
        } catch (Exception e10) {
            e10.printStackTrace();
            T("服务器异常");
        }
    }

    void u0() {
        if (this.f70955u == null) {
            if (this.f70958x == null && isAdded()) {
                this.f70958x = getChildFragmentManager();
            }
            com.join.mgps.adapter.h0 h0Var = new com.join.mgps.adapter.h0(this.f70958x);
            this.f70955u = h0Var;
            ViewPager viewPager = this.f70946l;
            if (viewPager != null) {
                viewPager.setAdapter(h0Var);
            }
            SlidingTabLayout4 slidingTabLayout4 = this.f70945k;
            if (slidingTabLayout4 != null) {
                slidingTabLayout4.setViewPager(this.f70946l);
            }
            this.f70954t = new c0(this.f70946l, this.f70958x);
        }
        if (this.f70955u.c() != null) {
            this.f70955u.b();
        }
        this.f70955u.e(m0(this.f70949o));
        if (this.f70945k != null) {
            if (this.f70955u.getCount() <= 4) {
                this.f70945k.setShouldExpand(true);
            } else {
                this.f70945k.setShouldExpand(false);
            }
            this.f70945k.setOnPageChangeListener(new e());
        }
        this.f70955u.notifyDataSetChanged();
        SlidingTabLayout4 slidingTabLayout5 = this.f70945k;
        if (slidingTabLayout5 != null) {
            slidingTabLayout5.g();
        }
        ViewPager viewPager2 = this.f70946l;
        if (viewPager2 != null) {
            viewPager2.setOffscreenPageLimit(this.f70955u.getCount());
        }
    }

    @UiThread
    void v0(ForumBannerBean.ForumBannerDataBannerBean data) {
        ForumIndexHeaderView forumIndexHeaderView = this.f70944j;
        if (forumIndexHeaderView != null && data != null) {
            forumIndexHeaderView.setBannerData(data.getBanner());
        }
        X(2);
    }

    @UiThread
    void w0() {
        com.join.mgps.Util.h0.h0(getContext()).m(getContext());
    }

    @UiThread
    void x0(ForumData.HomepageRecommendGroup data) {
        X(2);
        List<RecommenGroup> tuijianguanzhu = data.getTuijianguanzhu();
        List<RecommenGroup> wodeguanzhu = data.getWodeguanzhu();
        ForumIndexHeaderView forumIndexHeaderView = this.f70944j;
        if (forumIndexHeaderView != null) {
            forumIndexHeaderView.setHomepageRecommendGroupMy(wodeguanzhu);
            this.f70944j.setHomepageRecommendGroup(tuijianguanzhu);
        }
        if (this.f70953s == null) {
            this.f70953s = new ArrayList();
        }
    }

    @UiThread
    void y0() {
        ForumIndexHeaderView forumIndexHeaderView = this.f70944j;
        if (forumIndexHeaderView != null) {
            forumIndexHeaderView.setLabelsVisibility(8);
        }
        D0();
    }

    @UiThread
    void z0(boolean labelSwitcher, List<RecommendLabelTag> list) {
        ForumIndexHeaderView forumIndexHeaderView = this.f70944j;
        if (forumIndexHeaderView != null) {
            if (labelSwitcher) {
                forumIndexHeaderView.setLabelsVisibility(0);
            } else {
                forumIndexHeaderView.setLabelsVisibility(8);
            }
            this.f70944j.setLabelsTipVisibility(8);
            this.f70944j.setHomepageRecommendLabel(list);
        }
        D0();
    }
}
