package com.join.mgps.adapter;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.SimpleItemAnimator;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.component.video.MultiStandVideo;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.EverdayNewGameActivity;
import com.join.kotlin.ui.findgame.data.IntentClassfyEvent;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.PapaMainV3Fragment;
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.customview.HorizontalRecyclerView;
import com.join.mgps.customview.RecyclerviewViewpager;
import com.join.mgps.customview.SlidingTabLayout6;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.MgpapaMainItemBean;
import com.join.mgps.dto.PAPAHomeBeanV7;
import com.join.mgps.dto.PAPAItemTitle2;
import com.join.mgps.enums.ConstantIntEnum;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.ExtFrom;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class o5 extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
    public static final int A = 12;
    public static final int B = 13;
    public static final int C = 14;
    public static final int D = 15;
    public static final int E = 16;
    public static final int F = 18;
    public static final int G = 19;
    public static final int H = 20;
    public static final int I = 21;
    public static final int J = 22;
    public static final int K = 23;
    public static final int L = 24;
    public static final int M = 25;
    public static final int N = 26;
    public static final int O = 27;
    public static final int P = 28;
    public static final int Q = 29;
    public static final int R = 30;
    public static final int S = 31;
    public static final int T = 32;
    public static final int U = 33;
    public static final int V = 34;
    public static final int W = 35;
    public static final int X = 36;
    public static final int Y = 37;
    public static final int Z = 38;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    public static final int f62858b1 = 40;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final int f62859o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final int f62860p = 1;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public static final int f62861p0 = 39;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final int f62862q = 2;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final int f62863r = 3;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final int f62864s = 4;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final int f62865t = 5;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final int f62866u = 6;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final int f62867v = 7;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final int f62868w = 8;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final int f62869x = 9;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final int f62870y = 10;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final int f62871z = 11;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<MgpapaMainItemBean> f62872e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Context f62873f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Fragment f62874g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private v6.f f62875h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private com.join.android.app.component.video.h f62876i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    com.join.mgps.customview.e0 f62877j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f62878k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f62879l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f62880m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private i f62881n = null;

    class a implements BaseQuickAdapter.j {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ List f62882a;

        a(final List val$fastEntrys) {
            this.f62882a = val$fastEntrys;
        }

        @Override // com.join.mgps.base.BaseQuickAdapter.j
        public void onItemClick(BaseQuickAdapter adapter, View view, int position) {
            o5.this.M("2-" + (position + 1));
            PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO = (PAPAHomeBeanV7.HomeBeanDTO) this.f62882a.get(position);
            IntentDateBean intentDataBean = homeBeanDTO.getIntentDataBean();
            String link_type_val = intentDataBean.getLink_type_val();
            if (intentDataBean.getLink_type() == 3 && intentDataBean.getJump_type() == 31) {
                com.join.mgps.Util.j0.a().c(new IntentClassfyEvent(1));
            } else if (intentDataBean.getLink_type() == 3 && intentDataBean.getJump_type() == 2 && "1".equals(link_type_val)) {
                com.join.mgps.Util.j0.a().c(new IntentClassfyEvent(2));
            } else if (intentDataBean.getLink_type() == 29) {
                intentDataBean.setExt1(homeBeanDTO.getSub_title());
                intentDataBean.getExtBean().setFrom("2");
                IntentUtil.getInstance().intentActivity(o5.this.f62873f, intentDataBean);
            } else {
                intentDataBean.setExt1(homeBeanDTO.getSub_title());
                IntentUtil.getInstance().intentActivity(o5.this.f62873f, intentDataBean);
            }
            o5.this.Q(null);
        }
    }

    class b extends com.join.mgps.callbacks.w {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ PAPAHomeBeanV7.HomeBeanDTO f62884b;

        b(final PAPAHomeBeanV7.HomeBeanDTO val$bigVideoBean) {
            this.f62884b = val$bigVideoBean;
        }

        @Override // com.join.mgps.callbacks.w, v7.h
        public void onClickBlank(String s10, Object... objects) {
            super.onClickBlank(s10, objects);
            IntentUtil.getInstance().intentActivity(o5.this.f62873f, this.f62884b.getIntentDataBean());
            o5.this.Q(this.f62884b.getPosition());
            o5.this.N(this.f62884b, false);
        }

        @Override // com.join.mgps.callbacks.w, com.join.mgps.callbacks.y
        public void onClickCover() {
            super.onClickCover();
            IntentUtil.getInstance().intentActivity(o5.this.f62873f, this.f62884b.getIntentDataBean());
            o5.this.Q(this.f62884b.getPosition());
            o5.this.N(this.f62884b, false);
        }
    }

    class c extends RecyclerView.OnScrollListener {

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        final /* synthetic */ List f62886t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        final /* synthetic */ n f62887u;

        c(final List val$gameNews, final n val$finalViewHolderGameNews) {
            this.f62886t = val$gameNews;
            this.f62887u = val$finalViewHolderGameNews;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int newState) {
            super.onScrollStateChanged(recyclerView, newState);
            o5.this.K(this.f62886t, this.f62887u.f62939e);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(@NonNull RecyclerView recyclerView, int dx, int dy) {
            super.onScrolled(recyclerView, dx, dy);
        }
    }

    class d implements ViewPager.OnPageChangeListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f62889b;

        d(final List val$rankings) {
            this.f62889b = val$rankings;
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int state) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int position) {
            if (o5.this.f62881n != null) {
                o5.this.f62881n.b(position, this.f62889b);
            }
        }
    }

    class e extends RecyclerView.OnScrollListener {

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        final /* synthetic */ List f62891t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        final /* synthetic */ q f62892u;

        e(final List val$recomList, final q val$finalViewHolderRecommendStyle) {
            this.f62891t = val$recomList;
            this.f62892u = val$finalViewHolderRecommendStyle;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int newState) {
            super.onScrollStateChanged(recyclerView, newState);
            o5.this.L(this.f62891t, this.f62892u.f62949d);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(@NonNull RecyclerView recyclerView, int dx, int dy) {
            super.onScrolled(recyclerView, dx, dy);
        }
    }

    class f extends com.join.mgps.callbacks.w {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ PAPAHomeBeanV7.HomeBeanDTO f62894b;

        f(final PAPAHomeBeanV7.HomeBeanDTO val$adBean) {
            this.f62894b = val$adBean;
        }

        @Override // com.join.mgps.callbacks.w, v7.h
        public void onClickBlank(String s10, Object... objects) {
            super.onClickBlank(s10, objects);
            IntentUtil.getInstance().intentActivity(o5.this.f62873f, this.f62894b.getIntentDataBean());
            o5.this.Q(this.f62894b.getPosition());
            o5.this.N(this.f62894b, false);
        }

        @Override // com.join.mgps.callbacks.w, com.join.mgps.callbacks.y
        public void onClickCover() {
            super.onClickCover();
            IntentUtil.getInstance().intentActivity(o5.this.f62873f, this.f62894b.getIntentDataBean());
            o5.this.Q(this.f62894b.getPosition());
            o5.this.N(this.f62894b, false);
        }
    }

    class g extends com.join.mgps.callbacks.w {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ PAPAHomeBeanV7.HomeBeanDTO f62896b;

        g(final PAPAHomeBeanV7.HomeBeanDTO val$bean) {
            this.f62896b = val$bean;
        }

        @Override // com.join.mgps.callbacks.w, v7.h
        public void onClickBlank(String s10, Object... objects) {
            super.onClickBlank(s10, objects);
            IntentUtil.getInstance().intentActivity(o5.this.f62873f, this.f62896b.getIntentDataBean());
            o5.this.Q(this.f62896b.getPosition());
            o5.this.N(this.f62896b, false);
        }

        @Override // com.join.mgps.callbacks.w, com.join.mgps.callbacks.y
        public void onClickCover() {
            super.onClickCover();
            IntentUtil.getInstance().intentActivity(o5.this.f62873f, this.f62896b.getIntentDataBean());
            o5.this.Q(this.f62896b.getPosition());
            o5.this.N(this.f62896b, false);
        }
    }

    public static class h extends PagerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private List<Fragment> f62898a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private FragmentManager f62899b;

        public h(FragmentManager manager, List<Fragment> list) {
            this.f62899b = manager;
            this.f62898a = list;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public void destroyItem(@NonNull ViewGroup container, int position, @NonNull Object object) {
            container.removeView(this.f62898a.get(position).getView());
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return this.f62898a.size();
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        @NonNull
        public Object instantiateItem(@NonNull ViewGroup container, int position) {
            Fragment fragment = this.f62898a.get(position);
            if (!fragment.isAdded()) {
                FragmentTransaction fragmentTransactionBeginTransaction = this.f62899b.beginTransaction();
                fragmentTransactionBeginTransaction.add(fragment, fragment.getClass().getSimpleName());
                fragmentTransactionBeginTransaction.commitAllowingStateLoss();
                this.f62899b.executePendingTransactions();
            }
            if (fragment.getView().getParent() == null) {
                container.addView(fragment.getView());
            }
            return fragment.getView();
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public boolean isViewFromObject(@NonNull View view, @NonNull Object object) {
            return view == object;
        }
    }

    public interface i {
        void a(int position, PAPAHomeBeanV7.HomeBeanDTO item);

        void b(int postion, List<List<PAPAHomeBeanV7.HomeBeanDTO>> rankings);

        void c(int position, PAPAHomeBeanV7.HomeBeanDTO item);
    }

    public class j extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public ConstraintLayout f62900d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public SimpleDraweeView f62901e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public TextView f62902f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public LinearLayout f62903g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public TextView f62904h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public TextView f62905i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public ProgressBar f62906j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public ProgressBar f62907k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public TextView f62908l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public FrameLayout f62909m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public TextView f62910n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public SimpleDraweeView f62911o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public FrameLayout f62912p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public ProgressBar f62913q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public MultiStandVideo f62914r;

        public j(View itemview) {
            super(itemview);
            this.f62900d = (ConstraintLayout) itemview.findViewById(R.id.root);
            this.f62901e = (SimpleDraweeView) itemview.findViewById(R.id.ivGameIcon);
            this.f62902f = (TextView) itemview.findViewById(R.id.tvGameName);
            this.f62903g = (LinearLayout) itemview.findViewById(R.id.llInfo);
            this.f62904h = (TextView) itemview.findViewById(R.id.appSize);
            this.f62905i = (TextView) itemview.findViewById(R.id.loding_info);
            this.f62906j = (ProgressBar) itemview.findViewById(R.id.progressBarZip);
            this.f62907k = (ProgressBar) itemview.findViewById(R.id.progressBar);
            this.f62908l = (TextView) itemview.findViewById(R.id.tvGameTags);
            this.f62909m = (FrameLayout) itemview.findViewById(R.id.flBtn);
            this.f62910n = (TextView) itemview.findViewById(R.id.tvBtn);
            this.f62911o = (SimpleDraweeView) itemview.findViewById(R.id.bannerView);
            this.f62912p = (FrameLayout) itemview.findViewById(R.id.videoContner);
            this.f62913q = (ProgressBar) itemview.findViewById(R.id.loading_progress);
            this.f62914r = (MultiStandVideo) itemview.findViewById(R.id.wf_video);
        }
    }

    public class k extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public ConstraintLayout f62916d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public TextView f62917e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public FrameLayout f62918f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public TextView f62919g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public MultiStandVideo f62920h;

        public k(View itemview) {
            super(itemview);
            this.f62916d = (ConstraintLayout) itemview.findViewById(R.id.root);
            this.f62917e = (TextView) itemview.findViewById(R.id.tvGameName);
            this.f62918f = (FrameLayout) itemview.findViewById(R.id.flBtn);
            this.f62919g = (TextView) itemview.findViewById(R.id.tvBtn);
            this.f62920h = (MultiStandVideo) itemview.findViewById(R.id.wf_video);
        }
    }

    class l extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private RecyclerView f62922d;

        public l(View itemview) {
            super(itemview);
            this.f62922d = (RecyclerView) itemview.findViewById(R.id.rvFastEntry);
        }
    }

    public class m extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public ConstraintLayout f62924d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public SimpleDraweeView f62925e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public TextView f62926f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public LinearLayout f62927g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public TextView f62928h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public TextView f62929i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public ProgressBar f62930j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public ProgressBar f62931k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public TextView f62932l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public FrameLayout f62933m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public TextView f62934n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public ProgressBar f62935o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public MultiStandVideo f62936p;

        public m(View itemview) {
            super(itemview);
            this.f62924d = (ConstraintLayout) itemview.findViewById(R.id.item);
            this.f62925e = (SimpleDraweeView) itemview.findViewById(R.id.ivGamePic);
            this.f62926f = (TextView) itemview.findViewById(R.id.tvGameName);
            this.f62927g = (LinearLayout) itemview.findViewById(R.id.llInfo);
            this.f62928h = (TextView) itemview.findViewById(R.id.appSize);
            this.f62929i = (TextView) itemview.findViewById(R.id.loding_info);
            this.f62930j = (ProgressBar) itemview.findViewById(R.id.progressBarZip);
            this.f62931k = (ProgressBar) itemview.findViewById(R.id.progressBar);
            this.f62932l = (TextView) itemview.findViewById(R.id.tvGameTags);
            this.f62933m = (FrameLayout) itemview.findViewById(R.id.flBtn);
            this.f62934n = (TextView) itemview.findViewById(R.id.tvBtn);
            this.f62935o = (ProgressBar) itemview.findViewById(R.id.loading_progress);
            this.f62936p = (MultiStandVideo) itemview.findViewById(R.id.wf_video);
        }
    }

    class n extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private FrameLayout f62938d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private HorizontalRecyclerView f62939e;

        public n(View itemview) {
            super(itemview);
            this.f62939e = (HorizontalRecyclerView) itemview.findViewById(R.id.recyclerView);
            this.f62938d = (FrameLayout) itemview.findViewById(R.id.flRoot);
        }
    }

    class o extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private TextView f62941d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private TextView f62942e;

        public o(View itemview) {
            super(itemview);
            this.f62941d = (TextView) itemview.findViewById(R.id.tvTitle);
            this.f62942e = (TextView) itemview.findViewById(R.id.tvSubTitle);
        }
    }

    class p extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private ConstraintLayout f62944d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private SlidingTabLayout6 f62945e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private RecyclerviewViewpager f62946f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private LinearLayout f62947g;

        public p(View itemview) {
            super(itemview);
            this.f62944d = (ConstraintLayout) itemview.findViewById(R.id.root);
            this.f62945e = (SlidingTabLayout6) itemview.findViewById(R.id.tabLayout);
            this.f62946f = (RecyclerviewViewpager) itemview.findViewById(R.id.viewPager);
            this.f62947g = (LinearLayout) itemview.findViewById(R.id.moreLayout);
        }
    }

    public class q extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public RecyclerView f62949d;

        public q(View itemview) {
            super(itemview);
            this.f62949d = (RecyclerView) itemview.findViewById(R.id.recyclerView);
        }
    }

    class r extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private TextView f62951d;

        public r(View itemview) {
            super(itemview);
            this.f62951d = (TextView) itemview.findViewById(R.id.spacingView);
        }
    }

    class s extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        View f62953d;

        public s(View itemview) {
            super(itemview);
            this.f62953d = itemview.findViewById(R.id.line);
        }
    }

    class t extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private View f62955d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private RelativeLayout f62956e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private TextView f62957f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private SimpleDraweeView f62958g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private RelativeLayout f62959h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private TextView f62960i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private TextView f62961j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private SimpleDraweeView f62962k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private RelativeLayout f62963l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private TextView f62964m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private TextView f62965n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private LinearLayout f62966o;

        public t(View itemview) {
            super(itemview);
            this.f62955d = itemview.findViewById(R.id.gradientView);
            this.f62956e = (RelativeLayout) itemview.findViewById(R.id.rlDailyDiscovery);
            this.f62957f = (TextView) itemview.findViewById(R.id.fight_appname);
            this.f62958g = (SimpleDraweeView) itemview.findViewById(R.id.fightapp_image);
            this.f62959h = (RelativeLayout) itemview.findViewById(R.id.rlDzg);
            this.f62960i = (TextView) itemview.findViewById(R.id.tvDzg);
            this.f62961j = (TextView) itemview.findViewById(R.id.tvDzgSub);
            this.f62962k = (SimpleDraweeView) itemview.findViewById(R.id.ivDzg);
            this.f62963l = (RelativeLayout) itemview.findViewById(R.id.rlDailyNew);
            this.f62964m = (TextView) itemview.findViewById(R.id.tvDialyNew);
            this.f62965n = (TextView) itemview.findViewById(R.id.tvDailyNewCount);
            this.f62966o = (LinearLayout) itemview.findViewById(R.id.llDailyNewIcon);
        }
    }

    public o5(Context context, Fragment fragment, List<MgpapaMainItemBean> mgpapaMainItemBeans, com.join.android.app.component.video.h videoHelper, v6.f adapterInterface) {
        this.f62873f = context;
        this.f62874g = fragment;
        this.f62876i = videoHelper;
        this.f62875h = adapterInterface;
        this.f62872e = mgpapaMainItemBeans == null ? new ArrayList<>() : mgpapaMainItemBeans;
        this.f62878k = (int) context.getResources().getDimension(R.dimen.wdp10);
        this.f62879l = (int) context.getResources().getDimension(R.dimen.wdp20);
        setHasStableIds(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void A(PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO, View view) {
        IntentUtil.getInstance().intentActivity(this.f62873f, homeBeanDTO.getIntentDataBean());
        Q(null);
        M("3-2");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void B(PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO, j jVar, int i10, View view) {
        if (homeBeanDTO.getJp_info() != null && homeBeanDTO.getJp_info().getLink_type().intValue() != 1) {
            IntentUtil.getInstance().intentActivity(this.f62873f, homeBeanDTO.getIntentDataBean());
            Q(homeBeanDTO.getPosition());
            N(homeBeanDTO, true);
            return;
        }
        homeBeanDTO.setRequesting(homeBeanDTO.getGameBean() == null && homeBeanDTO.getDownloadTask() == null);
        jVar.f62913q.setVisibility(homeBeanDTO.isRequesting() ? 0 : 4);
        jVar.f62910n.setVisibility(homeBeanDTO.isRequesting() ? 4 : 0);
        i iVar = this.f62881n;
        if (iVar != null) {
            iVar.a(i10, homeBeanDTO);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void C(PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO, View view) {
        IntentUtil.getInstance().intentActivity(this.f62873f, homeBeanDTO.getIntentDataBean());
        Q(homeBeanDTO.getPosition());
        N(homeBeanDTO, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void D(List list, BaseQuickAdapter baseQuickAdapter, View view, int i10) {
        PAPAHomeBeanV7.NgSelectionDTO ngSelectionDTO = (PAPAHomeBeanV7.NgSelectionDTO) list.get(i10);
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(1);
        intentDateBean.setCrc_link_type_val(ngSelectionDTO.getId());
        if (intentDateBean.getExtBean() == null) {
            intentDateBean.setExtBean(new ExtBean());
        }
        intentDateBean.getExtBean().setFrom(String.valueOf(ngSelectionDTO.get_from()));
        intentDateBean.getExtBean().set_from_type(ngSelectionDTO.get_from_type());
        IntentUtil.getInstance().intentActivity(this.f62873f, intentDateBean);
        Q(ngSelectionDTO.getPosition());
        O(ngSelectionDTO.getPosition());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void E(View view) {
        com.join.mgps.Util.j0.a().c(new IntentClassfyEvent(1));
        Q(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void F(List list, BaseQuickAdapter baseQuickAdapter, View view, int i10) {
        IntentUtil.getInstance().intentActivity(this.f62873f, ((PAPAHomeBeanV7.HomeBeanDTO) list.get(i10)).getIntentDataBean());
        Q(((PAPAHomeBeanV7.HomeBeanDTO) list.get(i10)).getPosition());
        N((PAPAHomeBeanV7.HomeBeanDTO) list.get(i10), false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void G(List list, int i10, BaseQuickAdapter baseQuickAdapter, View view, int i11) {
        PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO = (PAPAHomeBeanV7.HomeBeanDTO) list.get(i11);
        if (homeBeanDTO.getJp_info() != null && homeBeanDTO.getJp_info().getLink_type().intValue() != 1) {
            IntentUtil.getInstance().intentActivity(this.f62873f, ((PAPAHomeBeanV7.HomeBeanDTO) list.get(i11)).getIntentDataBean());
            Q(((PAPAHomeBeanV7.HomeBeanDTO) list.get(i11)).getPosition());
            N((PAPAHomeBeanV7.HomeBeanDTO) list.get(i11), true);
            return;
        }
        homeBeanDTO.setRequesting(homeBeanDTO.getGameBean() == null && homeBeanDTO.getDownloadTask() == null);
        try {
            ProgressBar progressBar = (ProgressBar) view.findViewById(R.id.loading_progress);
            TextView textView = (TextView) view.findViewById(R.id.tvBtn);
            progressBar.setVisibility(homeBeanDTO.isRequesting() ? 0 : 4);
            textView.setVisibility(homeBeanDTO.isRequesting() ? 4 : 0);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        i iVar = this.f62881n;
        if (iVar != null) {
            iVar.a(i10, homeBeanDTO);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void H(PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO, View view) {
        IntentUtil.getInstance().intentActivity(this.f62873f, homeBeanDTO.getIntentDataBean());
        Q(homeBeanDTO.getPosition());
        N(homeBeanDTO, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void I(PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO, View view) {
        IntentUtil.getInstance().intentActivity(this.f62873f, homeBeanDTO.getIntentDataBean());
        Q(homeBeanDTO.getPosition());
        N(homeBeanDTO, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void J(PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO, m mVar, int i10, View view) {
        if (homeBeanDTO.getJp_info() != null && homeBeanDTO.getJp_info().getLink_type().intValue() != 1) {
            IntentUtil.getInstance().intentActivity(this.f62873f, homeBeanDTO.getIntentDataBean());
            Q(homeBeanDTO.getPosition());
            N(homeBeanDTO, true);
            return;
        }
        homeBeanDTO.setRequesting(homeBeanDTO.getGameBean() == null && homeBeanDTO.getDownloadTask() == null);
        mVar.f62935o.setVisibility(homeBeanDTO.isRequesting() ? 0 : 4);
        mVar.f62934n.setVisibility(homeBeanDTO.isRequesting() ? 4 : 0);
        i iVar = this.f62881n;
        if (iVar != null) {
            iVar.a(i10, homeBeanDTO);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void K(List<PAPAHomeBeanV7.NgSelectionDTO> newsList, RecyclerView recyclerView) {
        LinearLayoutManager linearLayoutManager;
        if (recyclerView == null || newsList == null || (linearLayoutManager = (LinearLayoutManager) recyclerView.getLayoutManager()) == null) {
            return;
        }
        int iFindLastCompletelyVisibleItemPosition = linearLayoutManager.findLastCompletelyVisibleItemPosition();
        for (int i10 = 0; i10 <= Math.min(iFindLastCompletelyVisibleItemPosition, newsList.size() - 1); i10++) {
            if (!newsList.get(i10).isHasExposure()) {
                Ext ext = new Ext();
                ext.setPage("home");
                ext.setFrom("204");
                ext.setGameId(newsList.get(i10).getId());
                ext.setPosition(newsList.get(i10).getPosition());
                com.papa.sim.statistic.t.l(this.f62873f).k0(Event.expGameAdPage, ext, newsList.get(i10).getId());
                newsList.get(i10).setHasExposure(true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void L(List<PAPAHomeBeanV7.HomeBeanDTO> recomList, RecyclerView recyclerView) {
        LinearLayoutManager linearLayoutManager;
        if (recyclerView == null || recomList == null || (linearLayoutManager = (LinearLayoutManager) recyclerView.getLayoutManager()) == null) {
            return;
        }
        int iFindLastCompletelyVisibleItemPosition = linearLayoutManager.findLastCompletelyVisibleItemPosition();
        for (int i10 = 0; i10 <= Math.min(iFindLastCompletelyVisibleItemPosition, recomList.size() - 1); i10++) {
            if (!recomList.get(i10).isHasExposure()) {
                Ext ext = new Ext();
                ext.setPage("home");
                ext.setFrom("206");
                ext.setGameId(v(recomList.get(i10)));
                ext.setPosition(recomList.get(i10).getPosition());
                com.papa.sim.statistic.t.l(this.f62873f).k0(Event.expGameAdPage, ext, v(recomList.get(i10)));
                recomList.get(i10).setHasExposure(true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void M(String pointName) {
        com.papa.sim.statistic.t.l(this.f62873f).t(ExtFrom.home.name(), "22-" + pointName, AccountUtil_.getInstance_(this.f62873f).getUid());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N(PAPAHomeBeanV7.HomeBeanDTO bean, boolean isBtn) {
        if (!w(bean) || bean == null) {
            com.papa.sim.statistic.t.l(this.f62873f).t(ExtFrom.home.name(), bean.getPosition(), AccountUtil_.getInstance_(this.f62873f).getUid());
        } else {
            com.papa.sim.statistic.t.l(this.f62873f).r(ExtFrom.home.name(), bean.getPosition(), AccountUtil_.getInstance_(this.f62873f).getUid(), bean.getJp_info() != null ? bean.getJp_info().getLink_type_val() : "", isBtn ? "1" : "2", bean.getIntentDataBean().getLink_type_val());
        }
    }

    private void O(String position) {
        com.papa.sim.statistic.t.l(this.f62873f).t(ExtFrom.home.name(), position, AccountUtil_.getInstance_(this.f62873f).getUid());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Q(String position) {
        Fragment fragment = this.f62874g;
        if (fragment instanceof PapaMainV3Fragment) {
            ((PapaMainV3Fragment) fragment).x1(position);
        }
    }

    private void S(final m holder, final PAPAHomeBeanV7.HomeBeanDTO bean, String pos, final int position) {
        if (holder == null) {
            return;
        }
        if (TextUtils.equals(pos, "0")) {
            holder.f62924d.setPadding(this.f62879l, 0, this.f62878k, 0);
        } else {
            holder.f62924d.setPadding(this.f62878k, 0, this.f62879l, 0);
        }
        com.join.android.app.common.utils.l.i(holder.f62925e, bean.getBig_pic(), com.facebook.drawee.drawable.s.c.f27292i);
        PAPAHomeBeanV7.GInfoDTO g_info = bean.getG_info();
        holder.f62926f.setText(g_info == null ? bean.getTitle() : g_info.getName());
        holder.f62934n.setVisibility(0);
        holder.f62935o.setVisibility(4);
        if (g_info != null && !TextUtils.isEmpty(g_info.getTag_name())) {
            StringBuilder sb2 = new StringBuilder();
            String[] strArrSplit = g_info.getTag_name().split(",");
            for (int i10 = 0; i10 < strArrSplit.length; i10++) {
                sb2.append(strArrSplit[i10]);
                sb2.append(" | ");
                if (i10 >= 1) {
                    break;
                }
            }
            holder.f62932l.setText(sb2.substring(0, sb2.length() - 3));
        }
        holder.f62924d.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.d5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f61896b.I(bean, view);
            }
        });
        holder.f62933m.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.e5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f62058b.J(bean, holder, position, view);
            }
        });
        if (holder.f62936p != null && (!TextUtils.equals(bean.getV_url(), holder.f62936p.getUrl()) || (bean.getJp_info() != null && bean.getJp_info().getLink_type().intValue() != 1))) {
            holder.f62936p.l(bean.getBig_pic());
            holder.f62936p.setName(bean.getTitle());
            holder.f62936p.setPlayTag(this.f62876i.s());
            holder.f62936p.setPlayPosition(bean.hashCode());
            holder.f62936p.setUpLazy(bean.getV_url(), false, null, null, "");
            holder.f62936p.setRotateViewAuto(false);
            holder.f62936p.setLockLand(true);
            holder.f62936p.setReleaseWhenLossAudio(false);
            holder.f62936p.setShowFullAnimation(false);
            holder.f62936p.setIsTouchWiget(false);
            holder.f62936p.setNeedLockFull(false);
            holder.f62936p.setBottomProgressBarDrawable(null);
            holder.f62936p.setVideoAllCallBack(new g(bean));
        }
        update(bean, holder.f62926f, holder.f62932l, holder.f62933m, holder.f62934n, holder.f62927g, holder.f62928h, holder.f62929i, holder.f62930j, holder.f62931k);
    }

    private void T(TextView tvGameTags, LinearLayout llInfo, ProgressBar progressBar, ProgressBar progressBarZip, boolean isNormal, boolean isZip) {
        if (isNormal) {
            tvGameTags.setVisibility(0);
            llInfo.setVisibility(8);
            progressBar.setVisibility(8);
            progressBarZip.setVisibility(8);
            return;
        }
        llInfo.setVisibility(0);
        tvGameTags.setVisibility(8);
        if (isZip) {
            progressBarZip.setVisibility(0);
            progressBar.setVisibility(8);
        } else {
            progressBar.setVisibility(0);
            progressBarZip.setVisibility(8);
        }
    }

    private void update(PAPAHomeBeanV7.HomeBeanDTO bean, TextView tvGameName, TextView tvGameTags, FrameLayout flBtn, TextView tvBtn, LinearLayout llInfo, TextView tvAppSize, TextView loding_info, ProgressBar progressBarZip, ProgressBar progressBar) {
        DownloadTask downloadTask = bean.getDownloadTask();
        CollectionBeanSub gameBean = bean.getGameBean();
        long size = downloadTask != null ? downloadTask.getSize() : 0L;
        if (bean.getJp_info() != null && bean.getJp_info().getLink_type().intValue() != 1) {
            tvBtn.setText("打开");
            tvGameName.setText(bean.getTitle());
            tvGameTags.setText(bean.getSub_title());
            T(tvGameTags, llInfo, progressBar, progressBarZip, true, false);
            return;
        }
        if (gameBean != null) {
            if ((ConstantIntEnum.H5.value() + "").equals(gameBean.getPlugin_num())) {
                tvBtn.setText("开始");
                tvGameName.setVisibility(8);
                return;
            }
        }
        if (downloadTask == null) {
            T(tvGameTags, llInfo, progressBar, progressBarZip, true, false);
            tvBtn.setText("获取");
            if (gameBean == null) {
                return;
            }
            if (!UtilsMy.p0(gameBean.getTag_info())) {
                UtilsMy.x0(gameBean.getPay_tag_info(), gameBean.getCrc_sign_id());
                UtilsMy.w3(tvBtn, flBtn, gameBean);
                return;
            }
            if (!com.join.android.app.common.utils.g.t0(this.f62873f).e(this.f62873f, gameBean.getPackageName()) || UtilsMy.x0(gameBean.getPay_tag_info(), gameBean.getCrc_sign_id()) != 0) {
                UtilsMy.x0(gameBean.getPay_tag_info(), gameBean.getCrc_sign_id());
                UtilsMy.w3(tvBtn, flBtn, gameBean);
                return;
            }
            APKUtils.a aVarN = com.join.android.app.common.utils.g.t0(this.f62873f).n(this.f62873f, gameBean.getPackageName());
            if (!com.join.mgps.Util.t2.i(gameBean.getVer()) || aVarN.d() >= Integer.parseInt(gameBean.getVer())) {
                tvBtn.setText("启动");
                return;
            } else {
                tvBtn.setText("更新");
                return;
            }
        }
        int status = downloadTask.getStatus();
        if (gameBean != null && UtilsMy.x0(gameBean.getPay_tag_info(), gameBean.getCrc_sign_id()) > 0) {
            status = 43;
        }
        if (status != 0) {
            if (status == 27) {
                tvBtn.setText("暂停");
                return;
            }
            if (status == 48) {
                tvBtn.setText("安装中");
                T(tvGameTags, llInfo, progressBar, progressBarZip, true, false);
                return;
            }
            if (status == 2) {
                UtilsMy.U4(downloadTask);
                tvBtn.setText("暂停");
                T(tvGameTags, llInfo, progressBar, progressBarZip, false, false);
                if (downloadTask.getSize() == 0) {
                    tvAppSize.setText(UtilsMy.i(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.i(size));
                } else {
                    tvAppSize.setText(UtilsMy.i(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.i(size));
                }
                progressBar.setProgress((int) downloadTask.getProgress());
                loding_info.setText(downloadTask.getSpeed() + "/S");
                return;
            }
            if (status != 3) {
                if (status != 5) {
                    if (status != 6) {
                        if (status != 7) {
                            if (status != 42) {
                                if (status != 43) {
                                    switch (status) {
                                        case 9:
                                            tvBtn.setText("更新");
                                            T(tvGameTags, llInfo, progressBar, progressBarZip, true, false);
                                            break;
                                        case 10:
                                            tvBtn.setText("等待");
                                            T(tvGameTags, llInfo, progressBar, progressBarZip, false, false);
                                            tvAppSize.setText(UtilsMy.i(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.i(size));
                                            try {
                                                progressBar.setProgress((int) downloadTask.getProgress());
                                            } catch (Exception e10) {
                                                e10.printStackTrace();
                                            }
                                            loding_info.setText("等待中");
                                            break;
                                        case 11:
                                            tvBtn.setText("安装");
                                            T(tvGameTags, llInfo, progressBar, progressBarZip, true, false);
                                            break;
                                        case 12:
                                            T(tvGameTags, llInfo, progressBar, progressBarZip, false, true);
                                            tvAppSize.setText(UtilsMy.i(size) + net.lingala.zip4j.util.e.F0 + UtilsMy.i(size));
                                            loding_info.setText("解压中..");
                                            progressBarZip.setProgress((int) downloadTask.getProgress());
                                            tvBtn.setText("解压中");
                                            break;
                                        case 13:
                                            T(tvGameTags, llInfo, progressBar, progressBarZip, false, true);
                                            tvAppSize.setText(UtilsMy.i(size) + net.lingala.zip4j.util.e.F0 + UtilsMy.i(size));
                                            loding_info.setText("点击重新解压");
                                            progressBarZip.setProgress((int) downloadTask.getProgress());
                                            tvBtn.setText("解压");
                                            break;
                                    }
                                }
                            }
                        }
                    }
                }
                tvBtn.setText("启动");
                T(tvGameTags, llInfo, progressBar, progressBarZip, true, true);
                return;
            }
            tvBtn.setText("继续");
            T(tvGameTags, llInfo, progressBar, progressBarZip, false, false);
            try {
                if (downloadTask.getSize() == 0) {
                    tvAppSize.setText(UtilsMy.i(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.i(size));
                } else {
                    tvAppSize.setText(UtilsMy.i(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.i(size));
                }
                progressBar.setProgress((int) downloadTask.getProgress());
            } catch (Exception e11) {
                e11.printStackTrace();
            }
            loding_info.setText("暂停中");
            return;
        }
        tvBtn.setText("获取");
        if (gameBean != null) {
            UtilsMy.x0(gameBean.getPay_tag_info(), gameBean.getCrc_sign_id());
            UtilsMy.w3(tvBtn, flBtn, gameBean);
        }
        T(tvGameTags, llInfo, progressBar, progressBarZip, true, false);
    }

    private String v(PAPAHomeBeanV7.HomeBeanDTO bean) {
        if (bean == null || bean.getG_info() == null) {
            return null;
        }
        return (TextUtils.isEmpty(bean.getG_info().getId()) || TextUtils.equals(bean.getG_info().getId(), "0")) ? bean.getG_info().getMod_id() : bean.getG_info().getId();
    }

    private boolean w(PAPAHomeBeanV7.HomeBeanDTO dto) {
        return (dto == null || dto.getJp_info() == null || dto.getJp_info().getLink_type().intValue() == 1) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void x(PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO, View view) {
        IntentUtil.getInstance().intentActivity(this.f62873f, homeBeanDTO.getIntentDataBean());
        Q(null);
        M("3-1");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void y(View view) {
        this.f62873f.startActivity(new Intent(this.f62873f, (Class<?>) EverdayNewGameActivity.class));
        Q(null);
        M("3-3");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void z(PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO, View view) {
        IntentUtil.getInstance().intentActivity(this.f62873f, homeBeanDTO.getIntentDataBean());
        Q(homeBeanDTO.getPosition());
        N(homeBeanDTO, false);
    }

    public void P(List<MgpapaMainItemBean> mgpapaMainItemBeans) {
        this.f62872e = mgpapaMainItemBeans;
        notifyDataSetChanged();
    }

    public void R(i listener) {
        this.f62881n = listener;
    }

    public List<MgpapaMainItemBean> getData() {
        List<MgpapaMainItemBean> list = this.f62872e;
        return list == null ? new ArrayList() : list;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f62872e.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int position) {
        return this.f62872e.get(position).hashCode();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int position) {
        List<MgpapaMainItemBean> list;
        if (position >= 0 && (list = this.f62872e) != null && list.size() > position) {
            return this.f62872e.get(position).getShowtype();
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NonNull RecyclerView.ViewHolder holder, final int position) {
        List<MgpapaMainItemBean> list;
        c0 c0Var;
        if (position < 0 || (list = this.f62872e) == null || list.size() <= position) {
            return;
        }
        int itemViewType = getItemViewType(position);
        MgpapaMainItemBean mgpapaMainItemBean = this.f62872e.get(position);
        int i10 = 0;
        switch (itemViewType) {
            case 26:
                t tVar = (t) holder;
                PAPAHomeBeanV7.TopChannelDTO topChannelDTO = (PAPAHomeBeanV7.TopChannelDTO) mgpapaMainItemBean.getObject();
                if (topChannelDTO != null) {
                    if (topChannelDTO.getDiscover() != null) {
                        final PAPAHomeBeanV7.HomeBeanDTO discover = topChannelDTO.getDiscover();
                        com.join.android.app.common.utils.l.h(tVar.f62958g, discover.getBig_pic());
                        tVar.f62957f.setText(discover.getTitle());
                        tVar.f62956e.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.b5
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                this.f61260b.x(discover, view);
                            }
                        });
                    }
                    if (topChannelDTO.getTheNew() != null) {
                        PAPAHomeBeanV7.TheNewDTO theNew = topChannelDTO.getTheNew();
                        tVar.f62965n.setText(theNew.getCount() + "款");
                        tVar.f62963l.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.g5
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                this.f62210b.y(view);
                            }
                        });
                        List<PAPAHomeBeanV7.ListDTO> list2 = theNew.getList();
                        if (list2 != null && list2.size() > 0) {
                            tVar.f62966o.removeAllViews();
                            for (PAPAHomeBeanV7.ListDTO listDTO : list2) {
                                View viewInflate = LayoutInflater.from(this.f62873f).inflate(R.layout.mgpapa_home_item_new_icon, (ViewGroup) null);
                                com.join.android.app.common.utils.l.h((SimpleDraweeView) viewInflate.findViewById(R.id.newIcon), listDTO.getIco());
                                tVar.f62966o.addView(viewInflate);
                            }
                        }
                    }
                    if (topChannelDTO.getBroadcast() != null) {
                        final PAPAHomeBeanV7.HomeBeanDTO broadcast = topChannelDTO.getBroadcast();
                        tVar.f62960i.setText(broadcast.getTitle());
                        tVar.f62961j.setText(broadcast.getSub_title());
                        com.join.android.app.common.utils.l.h(tVar.f62962k, broadcast.getBig_pic());
                        tVar.f62959h.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.h5
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                this.f62253b.A(broadcast, view);
                            }
                        });
                    }
                    String bg_color = topChannelDTO.getBg_color();
                    if (TextUtils.isEmpty(bg_color)) {
                        bg_color = "#F7F8F9";
                    }
                    GradientDrawable gradientDrawable = new GradientDrawable();
                    gradientDrawable.setShape(0);
                    gradientDrawable.setOrientation(GradientDrawable.Orientation.TOP_BOTTOM);
                    gradientDrawable.setColors(new int[]{Color.parseColor(bg_color), Color.parseColor("#F7F8F9")});
                    gradientDrawable.setGradientType(0);
                    tVar.f62955d.setBackground(gradientDrawable);
                }
                break;
            case 27:
                l lVar = (l) holder;
                List list3 = (List) mgpapaMainItemBean.getObject();
                if (list3 != null) {
                    if (lVar.f62922d.getAdapter() == null || !(lVar.f62922d.getAdapter() instanceof c0)) {
                        lVar.f62922d.setNestedScrollingEnabled(false);
                        lVar.f62922d.setHasFixedSize(true);
                        c0 c0Var2 = new c0(list3);
                        lVar.f62922d.setLayoutManager(new GridLayoutManager(this.f62873f, 5));
                        lVar.f62922d.setAdapter(c0Var2);
                        c0Var = c0Var2;
                    } else {
                        c0Var = (c0) lVar.f62922d.getAdapter();
                        if (!list3.equals(c0Var.getData())) {
                            c0Var.setNewData(list3);
                        }
                    }
                    c0Var.setOnItemClickListener(new a(list3));
                }
                break;
            case 28:
            case 34:
            case 37:
            case 38:
                m mVar = (m) holder;
                PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO = (PAPAHomeBeanV7.HomeBeanDTO) mgpapaMainItemBean.getObject();
                String moreType2 = mgpapaMainItemBean.getMoreType2();
                if (homeBeanDTO != null) {
                    S(mVar, homeBeanDTO, moreType2, position);
                }
                break;
            case 29:
            case 36:
                final j jVar = (j) holder;
                final PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO2 = (PAPAHomeBeanV7.HomeBeanDTO) mgpapaMainItemBean.getObject();
                PAPAHomeBeanV7.GInfoDTO g_info = homeBeanDTO2.getG_info();
                if (g_info != null) {
                    com.join.android.app.common.utils.l.h(jVar.f62901e, g_info.getIco());
                    jVar.f62902f.setText(g_info.getName());
                    if (!TextUtils.isEmpty(g_info.getTag_name())) {
                        StringBuilder sb2 = new StringBuilder();
                        String[] strArrSplit = g_info.getTag_name().split(",");
                        for (int i11 = 0; i11 < strArrSplit.length; i11++) {
                            sb2.append(strArrSplit[i11]);
                            sb2.append(" | ");
                            if (i11 >= 1) {
                                jVar.f62908l.setText(sb2.substring(0, sb2.length() - 3));
                            }
                        }
                        jVar.f62908l.setText(sb2.substring(0, sb2.length() - 3));
                    }
                }
                if (jVar.f62914r != null && (!TextUtils.equals(homeBeanDTO2.getV_url(), jVar.f62914r.getUrl()) || (homeBeanDTO2.getJp_info() != null && homeBeanDTO2.getJp_info().getLink_type().intValue() != 1))) {
                    jVar.f62914r.l(homeBeanDTO2.getBig_pic());
                    jVar.f62914r.setName(homeBeanDTO2.getTitle());
                    jVar.f62914r.setPlayTag(this.f62876i.s());
                    jVar.f62914r.setPlayPosition(homeBeanDTO2.hashCode());
                    jVar.f62914r.setUpLazy(homeBeanDTO2.getV_url(), false, null, null, "");
                    jVar.f62914r.setRotateViewAuto(false);
                    jVar.f62914r.setLockLand(true);
                    jVar.f62914r.setReleaseWhenLossAudio(false);
                    jVar.f62914r.setShowFullAnimation(false);
                    jVar.f62914r.setIsTouchWiget(false);
                    jVar.f62914r.setNeedLockFull(false);
                    jVar.f62914r.setBottomProgressBarDrawable(null);
                    jVar.f62914r.setVideoAllCallBack(new b(homeBeanDTO2));
                }
                jVar.f62909m.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.i5
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f62426b.B(homeBeanDTO2, jVar, position, view);
                    }
                });
                jVar.f62900d.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.j5
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f62494b.C(homeBeanDTO2, view);
                    }
                });
                jVar.f62910n.setVisibility(0);
                jVar.f62913q.setVisibility(4);
                update(homeBeanDTO2, jVar.f62902f, jVar.f62908l, jVar.f62909m, jVar.f62910n, jVar.f62903g, jVar.f62904h, jVar.f62905i, jVar.f62906j, jVar.f62907k);
                break;
            case 30:
                n nVar = (n) holder;
                final List list4 = (List) mgpapaMainItemBean.getObject();
                LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this.f62873f, 0, false);
                linearLayoutManager.setInitialPrefetchItemCount(5);
                b3 b3Var = new b3(list4);
                b3Var.setOnItemClickListener(new BaseQuickAdapter.j() { // from class: com.join.mgps.adapter.k5
                    @Override // com.join.mgps.base.BaseQuickAdapter.j
                    public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i12) {
                        this.f62627a.D(list4, baseQuickAdapter, view, i12);
                    }
                });
                nVar.f62939e.setHasFixedSize(true);
                nVar.f62939e.setItemViewCacheSize(10);
                nVar.f62939e.setNestedScrollingEnabled(false);
                nVar.f62939e.setLayoutManager(linearLayoutManager);
                nVar.f62939e.setAdapter(b3Var);
                nVar.f62939e.addOnScrollListener(new c(list4, nVar));
                break;
            case 31:
                o oVar = (o) holder;
                PAPAItemTitle2 pAPAItemTitle2 = (PAPAItemTitle2) mgpapaMainItemBean.getObject();
                if (pAPAItemTitle2 != null) {
                    oVar.f62941d.setText(pAPAItemTitle2.getTitle());
                    oVar.f62942e.setText(pAPAItemTitle2.getSubTitle());
                    oVar.f62942e.setVisibility(TextUtils.isEmpty(pAPAItemTitle2.getSubTitle()) ? 8 : 0);
                }
                break;
            case 32:
                p pVar = (p) holder;
                PAPAHomeBeanV7.RankingListDTO rankingListDTO = (PAPAHomeBeanV7.RankingListDTO) mgpapaMainItemBean.getObject();
                if (rankingListDTO == null || TextUtils.isEmpty(rankingListDTO.getTxt()) || rankingListDTO.getList() == null) {
                    pVar.f62944d.setVisibility(8);
                } else {
                    pVar.f62944d.setVisibility(0);
                    List<List<PAPAHomeBeanV7.HomeBeanDTO>> list5 = rankingListDTO.getList();
                    com.join.mgps.customview.e0 e0Var = this.f62877j;
                    if (e0Var == null) {
                        String[] strArrSplit2 = rankingListDTO.getTxt().split(",");
                        ArrayList arrayList = new ArrayList();
                        ArrayList arrayList2 = new ArrayList();
                        while (i10 < Math.min(strArrSplit2.length, list5.size())) {
                            if (!TextUtils.isEmpty(strArrSplit2[i10]) && list5.get(i10) != null) {
                                arrayList.add(strArrSplit2[i10]);
                                arrayList2.add(com.join.mgps.fragment.b5.b0(true, strArrSplit2[i10], list5.get(i10), i10 + 20501));
                            }
                            i10++;
                        }
                        com.join.mgps.customview.e0 e0Var2 = new com.join.mgps.customview.e0(this.f62874g.getChildFragmentManager(), arrayList2, arrayList);
                        this.f62877j = e0Var2;
                        e0Var2.d(arrayList2, arrayList);
                        pVar.f62946f.setAdapter(this.f62877j);
                        pVar.f62946f.setOffscreenPageLimit(3);
                        pVar.f62945e.setViewPager(pVar.f62946f);
                        pVar.f62947g.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.l5
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                this.f62696b.E(view);
                            }
                        });
                        pVar.f62946f.addOnPageChangeListener(new d(list5));
                    } else {
                        ArrayList<Fragment> arrayListC = e0Var.c();
                        while (i10 < Math.min(arrayListC.size(), list5.size())) {
                            ((com.join.mgps.fragment.b5) arrayListC.get(i10)).f0(list5.get(i10));
                            i10++;
                        }
                    }
                }
                break;
            case 33:
                r rVar = (r) holder;
                float fFloatValue = ((Float) mgpapaMainItemBean.getObject()).floatValue();
                ViewGroup.LayoutParams layoutParams = rVar.f62951d.getLayoutParams();
                layoutParams.height = (int) fFloatValue;
                rVar.f62951d.setLayoutParams(layoutParams);
                if (TextUtils.isEmpty(mgpapaMainItemBean.getMoreType2()) || fFloatValue > 1.0f) {
                    rVar.f62951d.setBackgroundColor(0);
                } else {
                    try {
                        rVar.f62951d.setBackgroundColor(Color.parseColor(mgpapaMainItemBean.getMoreType2()));
                    } catch (Exception e10) {
                        e10.printStackTrace();
                        return;
                    }
                }
                break;
            case 35:
                q qVar = (q) holder;
                final List list6 = (List) mgpapaMainItemBean.getObject();
                if (list6 != null && list6.size() > 0) {
                    if (qVar.f62949d.getAdapter() != null && (qVar.f62949d.getAdapter() instanceof c3) && ((c3) qVar.f62949d.getAdapter()).getData().equals(list6)) {
                        ((c3) qVar.f62949d.getAdapter()).setNewData(list6);
                    } else {
                        LinearLayoutManager linearLayoutManager2 = new LinearLayoutManager(this.f62873f, 0, false);
                        c3 c3Var = new c3(list6);
                        ((SimpleItemAnimator) qVar.f62949d.getItemAnimator()).setSupportsChangeAnimations(false);
                        qVar.f62949d.setHasFixedSize(true);
                        qVar.f62949d.setLayoutManager(linearLayoutManager2);
                        qVar.f62949d.setAdapter(c3Var);
                        c3Var.setOnItemClickListener(new BaseQuickAdapter.j() { // from class: com.join.mgps.adapter.m5
                            @Override // com.join.mgps.base.BaseQuickAdapter.j
                            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i12) {
                                this.f62776a.F(list6, baseQuickAdapter, view, i12);
                            }
                        });
                        c3Var.setOnItemChildClickListener(new BaseQuickAdapter.h() { // from class: com.join.mgps.adapter.n5
                            @Override // com.join.mgps.base.BaseQuickAdapter.h
                            public final void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i12) {
                                this.f62832a.G(list6, position, baseQuickAdapter, view, i12);
                            }
                        });
                        qVar.f62949d.addOnScrollListener(new e(list6, qVar));
                    }
                    break;
                }
                break;
            case 40:
                k kVar = (k) holder;
                final PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO3 = (PAPAHomeBeanV7.HomeBeanDTO) mgpapaMainItemBean.getObject();
                PAPAHomeBeanV7.GInfoDTO g_info2 = homeBeanDTO3.getG_info();
                if (g_info2 != null) {
                    kVar.f62917e.setText(g_info2.getName());
                } else {
                    kVar.f62917e.setText(homeBeanDTO3.getTitle());
                }
                if (kVar.f62920h != null && (!TextUtils.equals(homeBeanDTO3.getV_url(), kVar.f62920h.getUrl()) || (homeBeanDTO3.getJp_info() != null && homeBeanDTO3.getJp_info().getLink_type().intValue() != 1))) {
                    kVar.f62920h.l(homeBeanDTO3.getBig_pic());
                    kVar.f62920h.setName(homeBeanDTO3.getTitle());
                    kVar.f62920h.setPlayTag(this.f62876i.s());
                    kVar.f62920h.setPlayPosition(homeBeanDTO3.hashCode());
                    kVar.f62920h.setUpLazy(homeBeanDTO3.getV_url(), false, null, null, "");
                    kVar.f62920h.setRotateViewAuto(false);
                    kVar.f62920h.setLockLand(true);
                    kVar.f62920h.setReleaseWhenLossAudio(false);
                    kVar.f62920h.setShowFullAnimation(false);
                    kVar.f62920h.setIsTouchWiget(false);
                    kVar.f62920h.setNeedLockFull(false);
                    kVar.f62920h.setBottomProgressBarDrawable(null);
                    kVar.f62920h.setVideoAllCallBack(new f(homeBeanDTO3));
                }
                kVar.f62918f.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.c5
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f61377b.H(homeBeanDTO3, view);
                    }
                });
                kVar.f62916d.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.f5
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f62107b.z(homeBeanDTO3, view);
                    }
                });
                kVar.f62919g.setVisibility(0);
                break;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        switch (viewType) {
            case 26:
                return new t(LayoutInflater.from(this.f62873f).inflate(R.layout.mgpapa_localfight_include_v2, parent, false));
            case 27:
                return new l(LayoutInflater.from(this.f62873f).inflate(R.layout.mgpapa_fast_entry_item, parent, false));
            case 28:
            case 34:
            case 37:
            case 38:
                return new m(LayoutInflater.from(this.f62873f).inflate(R.layout.papamain_gamelist_grid_layout, parent, false));
            case 29:
            case 36:
                return new j(LayoutInflater.from(this.f62873f).inflate(R.layout.papamain_video_game, parent, false));
            case 30:
                return new n(LayoutInflater.from(this.f62873f).inflate(R.layout.papamain_item_game_news, parent, false));
            case 31:
                return new o(LayoutInflater.from(this.f62873f).inflate(R.layout.papamain_item_title_layout_v2, parent, false));
            case 32:
                return new p(LayoutInflater.from(this.f62873f).inflate(R.layout.home_rank_layout_v2, parent, false));
            case 33:
                return new r(LayoutInflater.from(this.f62873f).inflate(R.layout.papamain_item_spacing_layout, parent, false));
            case 35:
                return new q(LayoutInflater.from(this.f62873f).inflate(R.layout.papamain_item_recommend_style2, parent, false));
            case 39:
                return new s(LayoutInflater.from(this.f62873f).inflate(R.layout.mgpapa_home_underline, parent, false));
            case 40:
                return new k(LayoutInflater.from(this.f62873f).inflate(R.layout.papamain_video_game_ad, parent, false));
            default:
                return null;
        }
    }

    public MgpapaMainItemBean u(int position) {
        List<MgpapaMainItemBean> list = this.f62872e;
        if (list == null || list.size() <= position || position < 0) {
            return null;
        }
        return this.f62872e.get(position);
    }
}
