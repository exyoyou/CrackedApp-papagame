package com.join.mgps.adapter;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Build;
import android.text.Html;
import android.text.Layout;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.MApplication;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.haima.hmcp.Constants;
import com.join.android.app.component.video.StandardVideoView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.base.impl.Downloadable;
import com.join.kotlin.ui.coupon.CouponListActivity;
import com.join.kotlin.ui.notice.NoticeListActivity;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.CommentAllListActivity_;
import com.join.mgps.activity.CommentCreatActivity_;
import com.join.mgps.activity.CommentSelfListActivity_;
import com.join.mgps.activity.DetialMoreServiceListActivity_;
import com.join.mgps.activity.GameMainActivity4;
import com.join.mgps.activity.ImagePagerActivity;
import com.join.mgps.activity.PaPaBannerListActivity_;
import com.join.mgps.activity.TagAddActivity_;
import com.join.mgps.activity.TagGameListActivity_;
import com.join.mgps.activity.UploadActivity_;
import com.join.mgps.activity.gamedetail.BaseGameDetailFragment;
import com.join.mgps.activity.screenshot.ScreenshotGamedetialBean;
import com.join.mgps.activity.screenshot.ScreenshotTrueListAcvity_;
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.customview.ActivityTabView;
import com.join.mgps.customview.DownloadNormalView;
import com.join.mgps.customview.ExpandLayout;
import com.join.mgps.customview.MStarBar;
import com.join.mgps.customview.MViewpagerV4;
import com.join.mgps.customview.MyGridView;
import com.join.mgps.customview.SlidingTabLayoutGameDetail;
import com.join.mgps.customview.VipView;
import com.join.mgps.dto.AppBeanMain;
import com.join.mgps.dto.BTActivityBean;
import com.join.mgps.dto.BtGameWelfare;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CommentAllListBean;
import com.join.mgps.dto.CommentBaseBean;
import com.join.mgps.dto.DetialShowImageBean;
import com.join.mgps.dto.DomainInfoBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.GameCfgBean;
import com.join.mgps.dto.GameDetailCloudArchive;
import com.join.mgps.dto.GameDetailOneTouchSkill;
import com.join.mgps.dto.GameDetialAuxiliaryBean;
import com.join.mgps.dto.GamePromptBean;
import com.join.mgps.dto.GameScore;
import com.join.mgps.dto.GamedetialAuxiliaryToolBean;
import com.join.mgps.dto.GamedetialModleFourBean;
import com.join.mgps.dto.GamedetialMoreBean;
import com.join.mgps.dto.GiftPackageDataInfoBean;
import com.join.mgps.dto.ImageInfo;
import com.join.mgps.dto.InformationCommentBean;
import com.join.mgps.dto.ModleBean;
import com.join.mgps.dto.RecomDatabean;
import com.join.mgps.dto.RecommendGameBean;
import com.join.mgps.dto.ServiceState;
import com.join.mgps.dto.ShareBean;
import com.join.mgps.dto.TipBean;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.pref.PrefDef_;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.wufan.user.service.protobuf.UserInfo;
import it.sephiroth.android.library.widget.AbsHListView;
import it.sephiroth.android.library.widget.AdapterView;
import it.sephiroth.android.library.widget.HListView;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class x1 extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final String f63377x = "GameDetialModleFourAda";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private GamedetialModleFourBean f63378e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private BaseGameDetailFragment f63379f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Context f63380g;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    com.danikula.videocache.i f63384k;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f63386m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f63387n;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f63389p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    com.join.mgps.callbacks.j f63390q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    com.join.android.app.component.video.c f63391r;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private View f63394u;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    boolean f63381h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    p1 f63382i = null;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f63388o = false;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    long f63393t = System.currentTimeMillis();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private List<View> f63395v = new ArrayList();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    l1 f63396w = new l1();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private List<n1> f63392s = new ArrayList();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private List<RecommendGameBean> f63383j = new ArrayList();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Map<Integer, Boolean> f63385l = new HashMap();

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            x1.this.U();
        }
    }

    class a0 implements View.OnClickListener {
        a0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (com.join.mgps.Util.t2.h(x1.this.f63378e.getGame_company_id()) || "0".equals(x1.this.f63378e.getGame_company_id())) {
                return;
            }
            PaPaBannerListActivity_.intent(x1.this.f63380g).e(1).a(true).c(x1.this.f63378e.getGame_company_id()).d(x1.this.f63378e.getCompany_name()).start();
        }
    }

    class a1 implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ InformationCommentBean.Sub f63399b;

        a1(final InformationCommentBean.Sub val$sub) {
            this.f63399b = val$sub;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            p1 p1Var = x1.this.f63382i;
            if (p1Var != null) {
                p1Var.b(this.f63399b);
            }
        }
    }

    class a2 extends f7.a {
        public a2(View itemView) {
            super(itemView);
        }
    }

    private class a3 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        TextView f63402d;

        public a3(View view) {
            super(view);
            this.f63402d = (TextView) view.findViewById(R.id.text);
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (com.join.mgps.Util.t2.h(x1.this.f63378e.getGame_company_id()) || "0".equals(x1.this.f63378e.getGame_company_id())) {
                return;
            }
            PaPaBannerListActivity_.intent(x1.this.f63380g).e(1).a(true).c(x1.this.f63378e.getGame_company_id()).d(x1.this.f63378e.getCompany_name()).start();
        }
    }

    class b0 implements View.OnClickListener {
        b0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            UserInfo accountData = AccountUtil_.getInstance_(x1.this.f63380g).getAccountData();
            if (com.join.mgps.Util.t2.h(accountData.getNickname()) || (accountData.getAccount().equals(accountData.getNickname()) && accountData.getAccount().startsWith("pa"))) {
                IntentUtil.getInstance().goChangeNickname(x1.this.f63380g);
                return;
            }
            PrefDef_ prefDef_ = new PrefDef_(x1.this.f63380g);
            if (com.join.mgps.Util.t2.i(prefDef_.uploadType2().d())) {
                IntentUtil.getInstance().goShareWebActivity(x1.this.f63380g, prefDef_.uploadType2().d());
            } else {
                UploadActivity_.intent(x1.this.f63380g).start();
            }
        }
    }

    class b1 implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f63406b;

        b1(final CommentBaseBean val$commitDataBean) {
            this.f63406b = val$commitDataBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            p1 p1Var;
            CommentBaseBean commentBaseBean = this.f63406b;
            if (commentBaseBean == null || (p1Var = x1.this.f63382i) == null) {
                return;
            }
            p1Var.onRootView(commentBaseBean);
        }
    }

    class b2 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        RelativeLayout f63408d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        SimpleDraweeView f63409e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        ImageView f63410f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        TextView f63411g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        TextView f63412h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        TextView f63413i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        TextView f63414j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        VipView f63415k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public View f63416l;

        public b2(View itemView) {
            super(itemView);
            this.f63408d = (RelativeLayout) itemView.findViewById(R.id.main);
            this.f63409e = (SimpleDraweeView) itemView.findViewById(R.id.usericon);
            this.f63410f = (ImageView) itemView.findViewById(R.id.parise);
            this.f63411g = (TextView) itemView.findViewById(R.id.username);
            this.f63412h = (TextView) itemView.findViewById(R.id.time);
            this.f63413i = (TextView) itemView.findViewById(R.id.content);
            this.f63414j = (TextView) itemView.findViewById(R.id.pariseNumber);
            this.f63415k = (VipView) itemView.findViewById(R.id.levelTv);
            this.f63416l = itemView.findViewById(R.id.line);
        }
    }

    class b3 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public TextView f63418d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public LinearLayout f63419e;

        class a implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ DomainInfoBean f63421b;

            a(final DomainInfoBean val$item) {
                this.f63421b = val$item;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                com.papa.sim.statistic.t.l(x1.this.f63380g).R1(Event.pdGameDetailsClick, new Ext().setTestAbNumber(this.f63421b.getAb_test_number()).setIsJoin(this.f63421b.getIs_join()));
                UtilsMy.D4(x1.this.f63380g, this.f63421b.getInfo(), "game_details");
            }
        }

        public b3(View itemView) {
            super(itemView);
            this.f63418d = (TextView) itemView.findViewById(R.id.tv_title);
            this.f63419e = (LinearLayout) itemView.findViewById(R.id.ll_root);
        }

        public void a(DomainInfoBean item) {
            if (item != null) {
                this.f63418d.setText(item.getText());
                this.f63419e.setOnClickListener(new a(item));
            }
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            x1.this.f63382i.h();
        }
    }

    class c0 implements View.OnClickListener {
        c0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (x1.this.f63379f == null || x1.this.f63379f.getViewPager() == null) {
                return;
            }
            x1.this.f63379f.getViewPager().setCurrentItem(1);
        }
    }

    class c1 implements View.OnClickListener {
        c1() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (x1.this.f63379f == null || x1.this.f63379f.getViewPager() == null) {
                return;
            }
            x1.this.f63379f.getViewPager().setCurrentItem(2);
        }
    }

    class c2 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        RelativeLayout f63426d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        TextView f63427e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        TextView f63428f;

        public c2(View itemView) {
            super(itemView);
            this.f63426d = (RelativeLayout) itemView.findViewById(R.id.commentFooterLayout);
            this.f63427e = (TextView) itemView.findViewById(R.id.showAllCommit);
            this.f63428f = (TextView) itemView.findViewById(R.id.goforum);
        }
    }

    class c3 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public SimpleDraweeView f63430d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public LinearLayout f63431e;

        class a implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ DomainInfoBean f63433b;

            a(final DomainInfoBean val$item) {
                this.f63433b = val$item;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                com.papa.sim.statistic.t.l(x1.this.f63380g).R1(Event.pdGameDetailsClick, new Ext().setTestAbNumber(this.f63433b.getAb_test_number()).setIsJoin(this.f63433b.getIs_join()));
                UtilsMy.D4(x1.this.f63380g, this.f63433b.getInfo(), "game_details");
            }
        }

        public c3(View itemView) {
            super(itemView);
            this.f63430d = (SimpleDraweeView) itemView.findViewById(R.id.sdv_image);
            this.f63431e = (LinearLayout) itemView.findViewById(R.id.ll_root);
        }

        public void a(DomainInfoBean item) {
            if (item != null) {
                if (com.join.mgps.Util.t2.i(item.getPic())) {
                    com.join.android.app.common.utils.l.h(this.f63430d, item.getPic());
                }
                this.f63431e.setOnClickListener(new a(item));
            }
        }
    }

    class d implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ TipBean f63435b;

        d(final TipBean val$tipBean) {
            this.f63435b = val$tipBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TagGameListActivity_.intent(x1.this.f63380g).b(2).d(this.f63435b.getName()).e(Integer.parseInt(this.f63435b.getId())).f("2").start();
        }
    }

    class d0 implements View.OnClickListener {
        d0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentAllListActivity_.intent(x1.this.f63380g).f(x1.this.f63378e.getGame_id()).i(x1.this.f63378e.getPackageName()).h(x1.this.f63378e.getPlugin_num()).g(x1.this.f63378e.getIs_started()).j(x1.this.f63378e.getGame_score() != null ? x1.this.f63378e.getGame_score().getSgc_switch() : 0).a(x1.this.f63378e.getBespeak_switch()).d(x1.this.f63378e.getComment_score_switch()).start();
        }
    }

    class d1 implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f63438b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f63439c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ ImageView f63440d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ TextView f63441e;

        class a implements Animation.AnimationListener {
            a() {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                long jLongValue = Long.valueOf(d1.this.f63441e.getText().toString()).longValue();
                d1.this.f63441e.setText((jLongValue + 1) + "");
                d1 d1Var = d1.this;
                x1.this.o(d1Var.f63439c);
                d1 d1Var2 = d1.this;
                p1 p1Var = x1.this.f63382i;
                if (p1Var != null) {
                    p1Var.onPraise(d1Var2.f63438b, d1Var2.f63439c, 1);
                }
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        }

        d1(final CommentBaseBean val$commitDataBean, final int val$position, final ImageView val$view, final TextView val$tv) {
            this.f63438b = val$commitDataBean;
            this.f63439c = val$position;
            this.f63440d = val$view;
            this.f63441e = val$tv;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            CommentBaseBean commentBaseBean;
            long jCurrentTimeMillis = System.currentTimeMillis();
            x1 x1Var = x1.this;
            if (jCurrentTimeMillis - x1Var.f63393t < 500) {
                return;
            }
            x1Var.f63393t = jCurrentTimeMillis;
            if (IntentUtil.getInstance().goLoginInteractive(x1.this.f63380g) || (commentBaseBean = this.f63438b) == null) {
                return;
            }
            if (commentBaseBean.getIs_praise() == 1) {
                x1.this.X(this.f63439c);
                this.f63440d.setImageResource(R.drawable.up_ic);
                p1 p1Var = x1.this.f63382i;
                if (p1Var != null) {
                    p1Var.onPraise(this.f63438b, this.f63439c, 2);
                    return;
                }
                return;
            }
            this.f63438b.setIs_praise(1);
            if (AccountUtil_.getInstance_(x1.this.f63380g).getAccountData() == null) {
                IntentUtil.getInstance().goLoginInteractive(x1.this.f63380g);
                return;
            }
            this.f63440d.setImageResource(R.drawable.uped_ic);
            Animation animationLoadAnimation = AnimationUtils.loadAnimation(x1.this.f63380g, R.anim.scale_reset);
            this.f63440d.startAnimation(animationLoadAnimation);
            animationLoadAnimation.setAnimationListener(new a());
        }
    }

    class d2 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        TextView f63444d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        TextView f63445e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        ImageView f63446f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        View f63447g;

        public d2(View itemView) {
            super(itemView);
            this.f63446f = (ImageView) itemView.findViewById(R.id.commitImage);
            this.f63447g = itemView.findViewById(R.id.layoutBottom);
            this.f63444d = (TextView) itemView.findViewById(R.id.commitCount);
            this.f63445e = (TextView) itemView.findViewById(R.id.tv_right);
        }
    }

    class d3 extends f7.a {
        public d3(View itemView) {
            super(itemView);
        }
    }

    class e implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ TipBean f63450b;

        e(final TipBean val$tipBean) {
            this.f63450b = val$tipBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TagGameListActivity_.intent(x1.this.f63380g).b(2).d(this.f63450b.getName()).e(Integer.parseInt(this.f63450b.getId())).f("3").start();
        }
    }

    class e0 implements View.OnClickListener {
        e0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UserInfo accountData = AccountUtil_.getInstance_(x1.this.f63380g).getAccountData();
            if (com.join.mgps.Util.t2.h(accountData.getNickname()) || (accountData.getAccount().equals(accountData.getNickname()) && accountData.getAccount().startsWith("pa"))) {
                IntentUtil.getInstance().goChangeNickname(x1.this.f63380g);
                return;
            }
            if (IntentUtil.getInstance().goLoginInteractive(x1.this.f63380g)) {
                return;
            }
            if (x1.this.f63378e.getSelf_comment() == null) {
                CommentCreatActivity_.intent(x1.this.f63380g).f(x1.this.f63378e.getGame_id()).j(x1.this.f63378e.getPackageName()).h(x1.this.f63378e.getPlugin_num()).g(x1.this.f63378e.getIs_started()).a(x1.this.f63378e.getBespeak_switch()).d(x1.this.f63378e.getComment_score_switch()).start();
            } else {
                CommentAllListBean.SelfCommentBean self_comment = x1.this.f63378e.getSelf_comment();
                CommentCreatActivity_.intent(x1.this.f63380g).f(x1.this.f63378e.getGame_id()).j(x1.this.f63378e.getPackageName()).d(x1.this.f63378e.getComment_score_switch()).c(self_comment.getId()).e(Float.valueOf(self_comment.getStars_score()).floatValue()).a(x1.this.f63378e.getBespeak_switch()).h(x1.this.f63378e.getPlugin_num()).g(x1.this.f63378e.getIs_started()).b(self_comment.getContent()).start();
            }
        }
    }

    class e1 implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f63453b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f63454c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ ImageView f63455d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ TextView f63456e;

        class a implements Animation.AnimationListener {
            a() {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                long jLongValue = Long.valueOf(e1.this.f63456e.getText().toString()).longValue();
                e1.this.f63456e.setText((jLongValue + 1) + "");
                e1 e1Var = e1.this;
                x1.this.n(e1Var.f63454c);
                e1 e1Var2 = e1.this;
                p1 p1Var = x1.this.f63382i;
                if (p1Var != null) {
                    p1Var.onUnPraise(e1Var2.f63453b, e1Var2.f63454c, 1);
                }
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        }

        e1(final CommentBaseBean val$commitDataBean, final int val$position, final ImageView val$view, final TextView val$tv) {
            this.f63453b = val$commitDataBean;
            this.f63454c = val$position;
            this.f63455d = val$view;
            this.f63456e = val$tv;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            CommentBaseBean commentBaseBean;
            if (IntentUtil.getInstance().goLoginInteractive(x1.this.f63380g) || (commentBaseBean = this.f63453b) == null) {
                return;
            }
            if (commentBaseBean.getIs_despise() == 1) {
                x1.this.W(this.f63454c);
                this.f63455d.setImageResource(R.drawable.down_ic);
                p1 p1Var = x1.this.f63382i;
                if (p1Var != null) {
                    p1Var.onUnPraise(this.f63453b, this.f63454c, 2);
                    return;
                }
                return;
            }
            this.f63453b.setIs_despise(1);
            if (AccountUtil_.getInstance_(x1.this.f63380g).getAccountData() == null) {
                IntentUtil.getInstance().goLoginInteractive(x1.this.f63380g);
                return;
            }
            this.f63455d.setImageResource(R.drawable.downed_ic);
            Animation animationLoadAnimation = AnimationUtils.loadAnimation(x1.this.f63380g, R.anim.scale_reset);
            this.f63455d.startAnimation(animationLoadAnimation);
            animationLoadAnimation.setAnimationListener(new a());
        }
    }

    class e2 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        LinearLayout f63459d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        View f63460e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        TextView f63461f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        TextView f63462g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        View f63463h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        View f63464i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        LinearLayout f63465j;

        public e2(View itemView) {
            super(itemView);
            this.f63465j = (LinearLayout) itemView.findViewById(R.id.parentLayout);
            this.f63459d = (LinearLayout) itemView.findViewById(R.id.comment_reply_container);
            this.f63460e = itemView.findViewById(R.id.comment_reply_divider);
            this.f63461f = (TextView) itemView.findViewById(R.id.comment_reply_content);
            this.f63462g = (TextView) itemView.findViewById(R.id.comment_reply_more);
            this.f63463h = itemView.findViewById(R.id.line);
            this.f63464i = itemView.findViewById(R.id.bottom);
        }
    }

    class e3 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        TextView f63467d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        TextView f63468e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        TextView f63469f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        View f63470g;

        public e3(View itemView) {
            super(itemView);
            this.f63467d = (TextView) itemView.findViewById(R.id.tag);
            this.f63468e = (TextView) itemView.findViewById(R.id.title);
            this.f63470g = itemView.findViewById(R.id.main);
            this.f63469f = (TextView) itemView.findViewById(R.id.message);
        }
    }

    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TagAddActivity_.intent(x1.this.f63380g).b(x1.this.f63378e.getGame_name() + "热门标签").a(x1.this.f63378e.getCrc_sign_id()).start();
        }
    }

    class f0 implements View.OnClickListener {
        f0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (x1.this.f63379f == null || x1.this.f63379f.getViewPager() == null) {
                return;
            }
            x1.this.f63379f.getViewPager().setCurrentItem(1);
        }
    }

    class f1 implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ AppBeanMain f63474b;

        f1(final AppBeanMain val$appBeanMain) {
            this.f63474b = val$appBeanMain;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            IntentUtil.getInstance().intentActivity(x1.this.f63380g, this.f63474b.getIntentDataBean());
        }
    }

    class f2 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        LinearLayout f63476d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        MyGridView f63477e;

        public f2(View itemView) {
            super(itemView);
            this.f63477e = (MyGridView) itemView.findViewById(R.id.recomListView);
            this.f63476d = (LinearLayout) itemView.findViewById(R.id.layoutContent);
        }
    }

    class f3 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        SlidingTabLayoutGameDetail f63479d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        ViewPager f63480e;

        public f3(View itemView) {
            super(itemView);
            this.f63479d = (SlidingTabLayoutGameDetail) itemView.findViewById(R.id.tabLayout);
            this.f63480e = (ViewPager) itemView.findViewById(R.id.viewPager);
        }
    }

    class g implements AbsHListView.i {
        g() {
        }

        @Override // it.sephiroth.android.library.widget.AbsHListView.i
        public void a(AbsHListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
            com.join.android.app.component.video.c cVar = x1.this.f63391r;
            if (cVar != null) {
                cVar.g(view, firstVisibleItem, visibleItemCount, totalItemCount);
            }
        }

        @Override // it.sephiroth.android.library.widget.AbsHListView.i
        public void b(AbsHListView view, int scrollState) {
            com.join.android.app.component.video.c cVar = x1.this.f63391r;
            if (cVar != null) {
                cVar.k(view, scrollState);
            }
        }
    }

    class g0 implements View.OnClickListener {
        g0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            String strEncode;
            try {
                strEncode = URLEncoder.encode(x1.this.f63378e.getGame_name(), "utf8");
            } catch (UnsupportedEncodingException e10) {
                e10.printStackTrace();
                strEncode = "";
            }
            IntentUtil.getInstance().goShareWebActivity(x1.this.f63380g, com.join.mgps.rpc.h.f72349j + "/static/vip2020/v2/index.html#/gameGift?game_id=" + x1.this.f63378e.getCrc_sign_id() + "&name=" + strEncode);
        }
    }

    class g1 implements View.OnClickListener {
        g1() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            IntentUtil.getInstance().goMainLabelActivity(x1.this.f63380g, 0, x1.this.f63378e.getCommunity_entrance_tag(), 1);
        }
    }

    class g2 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        LinearLayout f63485d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        MyGridView f63486e;

        public g2(View itemView) {
            super(itemView);
            this.f63486e = (MyGridView) itemView.findViewById(R.id.recomListView);
            this.f63485d = (LinearLayout) itemView.findViewById(R.id.layoutContent);
        }
    }

    class g3 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        RecyclerView f63488d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        c f63489e;

        class a extends GridLayoutManager {

            /* JADX INFO: renamed from: n, reason: collision with root package name */
            final /* synthetic */ x1 f63491n;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(Context context, int spanCount, final x1 val$this$0) {
                super(context, spanCount);
                this.f63491n = val$this$0;
            }

            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public boolean canScrollHorizontally() {
                return false;
            }

            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public boolean canScrollVertically() {
                return false;
            }
        }

        class b extends com.join.mgps.base.decoration.b {

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            final /* synthetic */ x1 f63493e;

            b(final x1 val$this$0) {
                this.f63493e = val$this$0;
            }

            @Override // com.join.mgps.base.decoration.b
            public com.join.mgps.base.decoration.b.AbstractC0703b getItemOffsets(int position) {
                com.join.mgps.base.decoration.b.a aVar = new com.join.mgps.base.decoration.b.a();
                aVar.f64116f = 0;
                if (position == 0 || position % 2 == 0) {
                    aVar.f64117a = (int) x1.this.f63380g.getResources().getDimension(R.dimen.wdp25);
                    aVar.f64118b = (int) x1.this.f63380g.getResources().getDimension(R.dimen.wdp9);
                } else {
                    aVar.f64117a = (int) x1.this.f63380g.getResources().getDimension(R.dimen.wdp9);
                    aVar.f64118b = (int) x1.this.f63380g.getResources().getDimension(R.dimen.wdp25);
                }
                aVar.f64120d = (int) x1.this.f63380g.getResources().getDimension(R.dimen.wdp25);
                return aVar;
            }
        }

        class c extends BaseQuickAdapter<CollectionBeanSub, com.join.mgps.base.b> {

            class a implements View.OnClickListener {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                final /* synthetic */ CollectionBeanSub f63496b;

                a(final CollectionBeanSub val$item) {
                    this.f63496b = val$item;
                }

                @Override // android.view.View.OnClickListener
                public void onClick(View v10) {
                    IntentDateBean intentDataBean = this.f63496b.getIntentDataBean();
                    ExtBean extBean = intentDataBean.getExtBean();
                    extBean.setFrom(Constants.COUNTYLY_GET_START_LIVING);
                    extBean.set_from_type(13301);
                    IntentUtil.getInstance().intentActivity(x1.this.f63380g, intentDataBean);
                }
            }

            public c() {
                super(R.layout.item_detail_pc_recommend_game_item);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.join.mgps.base.BaseQuickAdapter
            /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
            public void convert(@NonNull com.join.mgps.base.b helper, CollectionBeanSub item) {
                com.join.android.app.common.utils.l.h((SimpleDraweeView) helper.getView(R.id.sdv_image), item.getGame_info_top_pic());
                helper.setText(R.id.tv_game_name, item.getGame_name());
                helper.setText(R.id.tv_label, UtilsMy.R1(item.getSp_tag_info(), item.getTag_info(), " | "));
                helper.itemView.setOnClickListener(new a(item));
            }
        }

        public g3(View itemView) {
            super(itemView);
            this.f63488d = (RecyclerView) itemView.findViewById(R.id.rv_list);
            this.f63488d.setLayoutManager(new a(x1.this.f63380g, 2, x1.this));
            this.f63488d.addItemDecoration(new b(x1.this));
            c cVar = new c();
            this.f63489e = cVar;
            this.f63488d.setAdapter(cVar);
        }

        public void a(List<CollectionBeanSub> datas) {
            this.f63489e.setNewData(datas);
        }
    }

    class h implements AdapterView.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ List f63498a;

        h(final List val$strings) {
            this.f63498a = val$strings;
        }

        @Override // it.sephiroth.android.library.widget.AdapterView.d
        public void a(AdapterView<?> parent, View view, int position, long id2) {
            try {
                Intent intent = new Intent(x1.this.f63380g, (Class<?>) ImagePagerActivity.class);
                ArrayList arrayList = new ArrayList();
                int size = 0;
                for (int i10 = 0; i10 < this.f63498a.size(); i10++) {
                    if (!((ImageInfo) this.f63498a.get(i10)).isVideo()) {
                        arrayList.add(((ImageInfo) this.f63498a.get(i10)).getUrl());
                        if (position == i10) {
                            size = arrayList.size() - 1;
                        }
                    }
                }
                intent.putExtra("image_urls", (String[]) arrayList.toArray(new String[arrayList.size()]));
                intent.putExtra("image_index", size);
                x1.this.f63380g.startActivity(intent);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    class h0 implements View.OnClickListener {
        h0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().goForumFid(x1.this.f63380g, (int) x1.this.f63378e.getForum_id());
        }
    }

    class h1 implements View.OnClickListener {
        h1() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            try {
                x1.this.f63380g.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("mqqwpa://im/chat?chat_type=wpa&uin=" + x1.this.f63378e.getGame_exclusive_benefits_qq() + "&version=1")));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    class h2 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        ExpandLayout f63502d;

        public h2(View itemView) {
            super(itemView);
            this.f63502d = (ExpandLayout) itemView.findViewById(R.id.el_view);
        }
    }

    class h3 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        LinearLayout f63504d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        TextView f63505e;

        public h3(View itemView) {
            super(itemView);
            this.f63504d = (LinearLayout) itemView.findViewById(R.id.handSharkLayout);
            this.f63505e = (TextView) itemView.findViewById(R.id.suntitle);
        }
    }

    class i implements AdapterView.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ List f63507a;

        i(final List val$listItemBeans) {
            this.f63507a = val$listItemBeans;
        }

        @Override // it.sephiroth.android.library.widget.AdapterView.d
        public void a(AdapterView<?> parent, View view, int position, long id2) {
            ScreenshotTrueListAcvity_.intent(x1.this.f63380g).fromData((ScreenshotGamedetialBean) this.f63507a.get(position)).gameId(x1.this.f63378e.getGame_id()).start();
        }
    }

    class i0 implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ AppBeanMain f63509b;

        i0(final AppBeanMain val$appBeanMain) {
            this.f63509b = val$appBeanMain;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().intentActivity(x1.this.f63380g, this.f63509b.getIntentDataBean());
        }
    }

    class i1 implements View.OnClickListener {
        i1() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentAllListActivity_.intent(x1.this.f63380g).f(x1.this.f63378e.getGame_id()).i(x1.this.f63378e.getPackageName()).h(x1.this.f63378e.getPlugin_num()).a(x1.this.f63378e.getBespeak_switch()).g(x1.this.f63378e.getIs_started()).j(x1.this.f63378e.getGame_score().getSgc_switch()).d(x1.this.f63378e.getComment_score_switch()).start();
        }
    }

    class i2 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        RelativeLayout f63512d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        TextView f63513e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        TextView f63514f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        LinearLayout f63515g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        TextView f63516h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        TextView f63517i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        TextView f63518j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        TextView f63519k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        TextView f63520l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        TextView f63521m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        TextView f63522n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        TextView f63523o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        TextView f63524p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        LinearLayout f63525q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        LinearLayout f63526r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        LinearLayout f63527s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        LinearLayout f63528t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        LinearLayout f63529u;

        public i2(View itemView) {
            super(itemView);
            this.f63512d = (RelativeLayout) itemView.findViewById(R.id.message);
            this.f63513e = (TextView) itemView.findViewById(R.id.moreText);
            this.f63514f = (TextView) itemView.findViewById(R.id.downNumberTitle);
            this.f63515g = (LinearLayout) itemView.findViewById(R.id.look_other);
            this.f63516h = (TextView) itemView.findViewById(R.id.downNumber);
            this.f63517i = (TextView) itemView.findViewById(R.id.nowVersion);
            this.f63518j = (TextView) itemView.findViewById(R.id.appSize);
            this.f63519k = (TextView) itemView.findViewById(R.id.updateDate);
            this.f63520l = (TextView) itemView.findViewById(R.id.androdVersion);
            this.f63521m = (TextView) itemView.findViewById(R.id.commpany);
            this.f63522n = (TextView) itemView.findViewById(R.id.resousFrom);
            this.f63523o = (TextView) itemView.findViewById(R.id.upGame);
            this.f63525q = (LinearLayout) itemView.findViewById(R.id.resousFromLayout);
            this.f63526r = (LinearLayout) itemView.findViewById(R.id.commpanyLayout);
            this.f63528t = (LinearLayout) itemView.findViewById(R.id.androdVersionLayout);
            this.f63527s = (LinearLayout) itemView.findViewById(R.id.nowVersionLayout);
            this.f63529u = (LinearLayout) itemView.findViewById(R.id.sizelayout);
            this.f63524p = (TextView) itemView.findViewById(R.id.titleText);
        }
    }

    class i3 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        TextView f63531d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        TextView f63532e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        TextView f63533f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        TextView f63534g;

        public i3(View itemView) {
            super(itemView);
            this.f63531d = (TextView) itemView.findViewById(R.id.tag);
            this.f63532e = (TextView) itemView.findViewById(R.id.day);
            this.f63533f = (TextView) itemView.findViewById(R.id.time);
            this.f63534g = (TextView) itemView.findViewById(R.id.serverName);
        }
    }

    class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            IntentUtil.getInstance().intentActivity(x1.this.f63380g, x1.this.f63378e.getGame_handle_entrance().getSub().get(0).getIntentDataBean());
        }
    }

    class j0 implements View.OnClickListener {
        j0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (com.join.mgps.Util.t2.i(x1.z(x1.this.f63380g))) {
                IntentUtil.getInstance().goQQGroup(x1.this.f63380g, x1.this.f63378e.getGame_detailed().getTpl_two_qq_key());
            } else {
                com.join.mgps.Util.a3.b(x1.this.f63380g).d("已复制QQ号，请安装QQ后粘贴搜索");
                com.join.mgps.Util.r0.M(x1.this.f63380g, x1.this.f63378e.getGame_detailed().getTpl_two_qq());
            }
        }
    }

    class j1 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        ActivityTabView f63538d;

        public j1(View view) {
            super(view);
            this.f63538d = (ActivityTabView) view.findViewById(R.id.atv_activities);
        }
    }

    class j2 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        SimpleDraweeView f63540d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        TextView f63541e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        TextView f63542f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        TextView f63543g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        LinearLayout f63544h;

        public j2(View itemView) {
            super(itemView);
            this.f63540d = (SimpleDraweeView) itemView.findViewById(R.id.giftIcon);
            this.f63541e = (TextView) itemView.findViewById(R.id.giftName);
            this.f63542f = (TextView) itemView.findViewById(R.id.giftContent);
            this.f63543g = (TextView) itemView.findViewById(R.id.getGiftTextView);
            this.f63544h = (LinearLayout) itemView.findViewById(R.id.layoutContent);
        }
    }

    class j3 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        HListView f63546d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private SimpleDraweeView f63547e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private TextView f63548f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public ProgressBar f63549g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public ProgressBar f63550h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private TextView f63551i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private LinearLayout f63552j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private RelativeLayout f63553k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private DownloadNormalView f63554l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private LinearLayout f63555m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private LinearLayout f63556n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public TextView f63557o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public TextView f63558p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public TextView f63559q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public TextView f63560r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        TextView f63561s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        LinearLayout f63562t;

        public j3(View view) {
            super(view);
            this.f63546d = (HListView) view.findViewById(R.id.screenListView);
            this.f63547e = (SimpleDraweeView) view.findViewById(R.id.mgListviewItemIcon);
            this.f63548f = (TextView) view.findViewById(R.id.mgListviewItemAppname);
            this.f63549g = (ProgressBar) view.findViewById(R.id.progressBarZip);
            this.f63550h = (ProgressBar) view.findViewById(R.id.progressBar);
            this.f63552j = (LinearLayout) view.findViewById(R.id.tipsLayout);
            this.f63551i = (TextView) view.findViewById(R.id.privilege);
            this.f63553k = (RelativeLayout) view.findViewById(R.id.rLayoutRight2);
            this.f63554l = (DownloadNormalView) view.findViewById(R.id.dv_view);
            this.f63555m = (LinearLayout) view.findViewById(R.id.linearLayout2);
            this.f63557o = (TextView) view.findViewById(R.id.appSize);
            this.f63558p = (TextView) view.findViewById(R.id.tv_content);
            this.f63560r = (TextView) view.findViewById(R.id.loding_info);
            this.f63561s = (TextView) view.findViewById(R.id.tv_delect_game);
            this.f63556n = (LinearLayout) view.findViewById(R.id.rl_item);
            this.f63559q = (TextView) view.findViewById(R.id.mgListviewItemDescribe);
            this.f63562t = (LinearLayout) view.findViewById(R.id.tipsLayout1);
        }
    }

    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.papa.sim.statistic.t.l(view.getContext()).F("jinshouzhi", AccountUtil_.getInstance_(view.getContext()).getUid());
            x1.this.r(view.getContext(), GameMainActivity4.TITLE_GOLDFINGER);
        }
    }

    class k0 implements View.OnScrollChangeListener {
        k0() {
        }

        @Override // android.view.View.OnScrollChangeListener
        public void onScrollChange(View v10, int scrollX, int scrollY, int oldScrollX, int oldScrollY) {
            x1.this.f63386m = scrollX;
        }
    }

    class k1 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        LinearLayout f63566d;

        public k1(View view) {
            super(view);
            this.f63566d = (LinearLayout) view.findViewById(R.id.btTaglayout);
        }
    }

    class k2 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public SimpleDraweeView f63568d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public TextView f63569e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public TextView f63570f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public TextView f63571g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public TextView f63572h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public MStarBar f63573i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public LinearLayout f63574j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public LinearLayout f63575k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public ImageView f63576l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private LinearLayout f63577m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private TextView f63578n;

        public k2(View itemView) {
            super(itemView);
            this.f63569e = (TextView) itemView.findViewById(R.id.appName);
            this.f63570f = (TextView) itemView.findViewById(R.id.appCompany);
            this.f63571g = (TextView) itemView.findViewById(R.id.appSize);
            this.f63572h = (TextView) itemView.findViewById(R.id.appDownloadCount);
            this.f63573i = (MStarBar) itemView.findViewById(R.id.comment_head_mstarBar);
            this.f63568d = (SimpleDraweeView) itemView.findViewById(R.id.appIcon);
            this.f63574j = (LinearLayout) itemView.findViewById(R.id.companyLayout);
            this.f63575k = (LinearLayout) itemView.findViewById(R.id.layoutGift);
            this.f63576l = (ImageView) itemView.findViewById(R.id.giftImage);
            this.f63577m = (LinearLayout) itemView.findViewById(R.id.scoreLayout);
            this.f63578n = (TextView) itemView.findViewById(R.id.comment_head_point_tx);
        }
    }

    public class k3 {
        public static final int A = 26;
        public static final int B = 27;
        public static final int C = 28;
        public static final int D = 29;
        public static final int E = 30;
        public static final int F = 31;
        public static final int G = 32;
        public static final int H = 33;
        public static final int I = 34;
        public static final int J = 35;
        public static final int K = 36;
        public static final int L = 37;
        public static final int M = 38;
        public static final int N = 39;
        public static final int O = 40;
        public static final int P = 41;
        public static final int Q = 42;
        public static final int R = 43;
        public static final int S = 44;
        public static final int T = 45;
        public static final int U = 46;
        public static final int V = 47;
        public static final int W = 48;
        public static final int X = 49;
        public static final int Y = 50;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final int f63580b = 1;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final int f63581c = 2;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final int f63582d = 3;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final int f63583e = 4;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final int f63584f = 5;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public static final int f63585g = 6;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final int f63586h = 7;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public static final int f63587i = 8;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public static final int f63588j = 9;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public static final int f63589k = 10;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public static final int f63590l = 11;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public static final int f63591m = 12;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public static final int f63592n = 13;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public static final int f63593o = 14;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public static final int f63594p = 15;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public static final int f63595q = 16;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public static final int f63596r = 17;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        public static final int f63597s = 18;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public static final int f63598t = 19;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public static final int f63599u = 20;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        public static final int f63600v = 21;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        public static final int f63601w = 22;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public static final int f63602x = 23;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        public static final int f63603y = 24;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        public static final int f63604z = 25;

        public k3() {
        }
    }

    class l implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ n1 f63606b;

        l(final n1 val$gameNotice) {
            this.f63606b = val$gameNotice;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            com.join.mgps.callbacks.l lVar = this.f63606b.f63647d;
            if (lVar != null) {
                lVar.a(0);
            }
        }
    }

    class l0 implements ViewPager.OnPageChangeListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ f3 f63608b;

        l0(final f3 val$myHolder) {
            this.f63608b = val$myHolder;
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i10) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i10, float v10, int i11) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i10) {
            x1.this.f63387n = this.f63608b.f63480e.getCurrentItem();
        }
    }

    class l1 extends PagerAdapter {

        class a implements View.OnClickListener {
            a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                com.papa.sim.statistic.t.l(view.getContext()).F("yijianjineng", AccountUtil_.getInstance_(view.getContext()).getUid());
                x1.this.r(view.getContext(), "一键技能");
            }
        }

        l1() {
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public void destroyItem(ViewGroup container, int position, Object object) {
            container.removeView((View) object);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return x1.this.f63395v.size();
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public Object instantiateItem(ViewGroup container, final int position) {
            container.addView((View) x1.this.f63395v.get(position));
            View view = (View) x1.this.f63395v.get(position);
            view.getLayoutParams().height = -2;
            view.getLayoutParams().width = -1;
            view.setOnClickListener(new a());
            return view;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public boolean isViewFromObject(View view, Object object) {
            return view == object;
        }
    }

    class l2 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        LinearLayout f63612d;

        public l2(View itemView) {
            super(itemView);
            this.f63612d = (LinearLayout) itemView.findViewById(R.id.itemLayout);
        }
    }

    class m implements View.OnClickListener {
        m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            IntentUtil.getInstance().goMainLabelActivity(x1.this.f63380g, 0, x1.this.f63378e.getCommunity_entrance_tag(), 1);
        }
    }

    class m0 implements AdapterView.d {
        m0() {
        }

        @Override // it.sephiroth.android.library.widget.AdapterView.d
        public void a(AdapterView<?> parent, View view, int position, long id2) {
            com.papa.sim.statistic.t.l(view.getContext()).F("xuanguan", AccountUtil_.getInstance_(view.getContext()).getUid());
            x1.this.r(view.getContext(), "选关");
        }
    }

    class m1 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private LinearLayout f63616d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private SimpleDraweeView f63617e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private TextView f63618f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private TextView f63619g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private ImageView f63620h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private TextView f63621i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private MStarBar f63622j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private TextView f63623k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private TextView f63624l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private ImageView f63625m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private TextView f63626n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private TextView f63627o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public View f63628p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private TextView f63629q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private ImageView f63630r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private TextView f63631s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private ImageView f63632t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        private TextView f63633u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        private ImageView f63634v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        private TextView f63635w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        private VipView f63636x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        private View f63637y;

        public m1(View view) {
            super(view);
            this.f63616d = (LinearLayout) view.findViewById(R.id.commentAllRootLl);
            this.f63617e = (SimpleDraweeView) view.findViewById(R.id.usericon);
            this.f63618f = (TextView) view.findViewById(R.id.userName);
            this.f63619g = (TextView) view.findViewById(R.id.isMe);
            this.f63620h = (ImageView) view.findViewById(R.id.isAuth);
            this.f63625m = (ImageView) view.findViewById(R.id.isGood);
            this.f63621i = (TextView) view.findViewById(R.id.isConnoisseurs);
            this.f63622j = (MStarBar) view.findViewById(R.id.comment_head_mstarBar);
            this.f63623k = (TextView) view.findViewById(R.id.comment_head_num_tx);
            this.f63624l = (TextView) view.findViewById(R.id.time);
            this.f63626n = (TextView) view.findViewById(R.id.content);
            this.f63627o = (TextView) view.findViewById(R.id.more);
            this.f63628p = view.findViewById(R.id.line);
            this.f63629q = (TextView) view.findViewById(R.id.phoneModle);
            this.f63630r = (ImageView) view.findViewById(R.id.parise);
            this.f63631s = (TextView) view.findViewById(R.id.pariseNumber);
            this.f63632t = (ImageView) view.findViewById(R.id.down);
            this.f63633u = (TextView) view.findViewById(R.id.downNumber);
            this.f63634v = (ImageView) view.findViewById(R.id.message);
            this.f63635w = (TextView) view.findViewById(R.id.messageNumber);
            this.f63636x = (VipView) view.findViewById(R.id.levelTv);
            this.f63637y = view.findViewById(R.id.layoutTop);
        }
    }

    class m2 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        TextView f63639d;

        public m2(View itemView) {
            super(itemView);
            this.f63639d = (TextView) itemView.findViewById(R.id.htmlEditRecommend);
        }
    }

    class n implements ExpandLayout.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ n1 f63641a;

        n(final n1 val$describ) {
            this.f63641a = val$describ;
        }

        @Override // com.join.mgps.customview.ExpandLayout.b
        public void a() {
        }

        @Override // com.join.mgps.customview.ExpandLayout.b
        public void b() {
            n1 n1Var = this.f63641a;
            com.join.mgps.callbacks.l lVar = n1Var.f63647d;
            if (lVar != null) {
                lVar.a(n1Var);
            }
        }

        @Override // com.join.mgps.customview.ExpandLayout.b
        public void c() {
        }
    }

    class n0 implements View.OnClickListener {
        n0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.papa.sim.statistic.t.l(view.getContext()).F("jinshouzhi", AccountUtil_.getInstance_(view.getContext()).getUid());
            x1.this.r(view.getContext(), GameMainActivity4.TITLE_GOLDFINGER);
        }
    }

    public class n1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Object f63644a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f63645b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f63646c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public com.join.mgps.callbacks.l f63647d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f63648e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public Object f63649f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public Object f63650g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public Object f63651h;

        public n1(final x1 this$0, Object object, int itemType) {
            this(this$0, object, itemType, null);
        }

        public n1(final x1 this$0, Object object, int itemType, com.join.mgps.callbacks.l call) {
            this(object, itemType, 0, call);
        }

        public n1(Object object, int itemType, int alwaysShowMore, com.join.mgps.callbacks.l call) {
            this.f63644a = object;
            this.f63645b = itemType;
            this.f63647d = call;
            this.f63648e = alwaysShowMore;
        }
    }

    class n2 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        TextView f63653d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        View f63654e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        TextView f63655f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        LinearLayout f63656g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        TextView f63657h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        TextView f63658i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        TextView f63659j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        TextView f63660k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        TextView f63661l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        TextView f63662m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        TextView f63663n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        TextView f63664o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        TextView f63665p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        TextView f63666q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        LinearLayout f63667r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        LinearLayout f63668s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        LinearLayout f63669t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        LinearLayout f63670u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        LinearLayout f63671v;

        public n2(View itemView) {
            super(itemView);
            this.f63653d = (TextView) itemView.findViewById(R.id.message);
            this.f63654e = itemView.findViewById(R.id.message1);
            this.f63655f = (TextView) itemView.findViewById(R.id.moreText);
            this.f63656g = (LinearLayout) itemView.findViewById(R.id.look_other);
            this.f63655f = (TextView) itemView.findViewById(R.id.moreText);
            this.f63657h = (TextView) itemView.findViewById(R.id.downNumberTitle);
            this.f63656g = (LinearLayout) itemView.findViewById(R.id.look_other);
            this.f63658i = (TextView) itemView.findViewById(R.id.downNumber);
            this.f63659j = (TextView) itemView.findViewById(R.id.nowVersion);
            this.f63660k = (TextView) itemView.findViewById(R.id.appSize);
            this.f63661l = (TextView) itemView.findViewById(R.id.updateDate);
            this.f63662m = (TextView) itemView.findViewById(R.id.androdVersion);
            this.f63663n = (TextView) itemView.findViewById(R.id.commpany);
            this.f63664o = (TextView) itemView.findViewById(R.id.resousFrom);
            this.f63665p = (TextView) itemView.findViewById(R.id.upGame);
            this.f63667r = (LinearLayout) itemView.findViewById(R.id.resousFromLayout);
            this.f63668s = (LinearLayout) itemView.findViewById(R.id.commpanyLayout);
            this.f63670u = (LinearLayout) itemView.findViewById(R.id.androdVersionLayout);
            this.f63669t = (LinearLayout) itemView.findViewById(R.id.nowVersionLayout);
            this.f63671v = (LinearLayout) itemView.findViewById(R.id.sizelayout);
            this.f63666q = (TextView) itemView.findViewById(R.id.titleText);
        }
    }

    class o implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GiftPackageDataInfoBean f63673b;

        o(final GiftPackageDataInfoBean val$gift) {
            this.f63673b = val$gift;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f63673b.getGift_package_status() == 0) {
                x1.this.f63382i.i(true, this.f63673b);
            } else {
                x1.this.f63382i.i(false, this.f63673b);
            }
        }
    }

    class o0 implements View.OnClickListener {
        o0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.papa.sim.statistic.t.l(view.getContext()).F("yuncundang", AccountUtil_.getInstance_(view.getContext()).getUid());
            x1.this.r(view.getContext(), "云存档");
        }
    }

    class o1 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        HListView f63676d;

        public o1(View view) {
            super(view);
            this.f63676d = (HListView) view.findViewById(R.id.hlv_list);
        }
    }

    class o2 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        TextView f63678d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        TextView f63679e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        LinearLayout f63680f;

        public o2(View itemView) {
            super(itemView);
            this.f63678d = (TextView) itemView.findViewById(R.id.message);
            this.f63679e = (TextView) itemView.findViewById(R.id.moreText);
            this.f63680f = (LinearLayout) itemView.findViewById(R.id.look_other);
        }
    }

    class p implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GiftPackageDataInfoBean f63682b;

        p(final GiftPackageDataInfoBean val$gift) {
            this.f63682b = val$gift;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            String strEncode;
            try {
                strEncode = URLEncoder.encode(x1.this.f63378e.getGame_name(), "utf8");
            } catch (UnsupportedEncodingException e10) {
                e10.printStackTrace();
                strEncode = "";
            }
            IntentUtil.getInstance().goShareWebActivity(x1.this.f63380g, com.join.mgps.rpc.h.f72349j + "/static/vip2020/v2/index.html#/giftDetail?gift_package_id=" + this.f63682b.getGift_package_id() + "&name=" + strEncode);
        }
    }

    class p0 implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f63684b;

        p0(final CommentBaseBean val$commitDataBean) {
            this.f63684b = val$commitDataBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentSelfListActivity_.intent(view.getContext()).a(Integer.parseInt(this.f63684b.getUid())).start();
        }
    }

    public interface p1 {
        void a(InformationCommentBean bean);

        void b(InformationCommentBean.Sub sub);

        void c(InformationCommentBean bean);

        void d();

        void e();

        void f();

        void g();

        void h();

        void i(boolean isGetGift, GiftPackageDataInfoBean gift);

        void onPraise(CommentBaseBean bean, int position, int type);

        void onRootView(CommentBaseBean bean);

        void onUnPraise(CommentBaseBean bean, int position, int type);
    }

    class p2 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        LinearLayout f63686d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        TextView f63687e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        TextView f63688f;

        public p2(View itemView) {
            super(itemView);
            this.f63686d = (LinearLayout) itemView.findViewById(R.id.handSharkLayout);
            this.f63687e = (TextView) itemView.findViewById(R.id.title);
            this.f63688f = (TextView) itemView.findViewById(R.id.suntitle);
        }
    }

    class q implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f63690b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ GameDetialAuxiliaryBean f63691c;

        q(final List val$auxiliaryTool, final GameDetialAuxiliaryBean val$auxiliaryBean) {
            this.f63690b = val$auxiliaryTool;
            this.f63691c = val$auxiliaryBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f63690b.size() > 0) {
                IntentUtil.getInstance().goShareWebActivity(x1.this.f63380g, this.f63691c.getMore_url());
            }
        }
    }

    class q0 implements View.OnAttachStateChangeListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ m1 f63693b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f63694c;

        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                Layout layout = q0.this.f63693b.f63626n.getLayout();
                if (layout == null) {
                    q0.this.f63693b.f63627o.setVisibility(8);
                    return;
                }
                int lineCount = layout.getLineCount();
                if (lineCount > 0) {
                    if (layout.getEllipsisCount(lineCount - 1) > 0) {
                        q0.this.f63693b.f63627o.setVisibility(0);
                    } else if (x1.this.f63385l.containsKey(Integer.valueOf(q0.this.f63694c))) {
                        q0.this.f63693b.f63627o.setVisibility(0);
                    } else {
                        q0.this.f63693b.f63627o.setVisibility(8);
                    }
                }
            }
        }

        q0(final m1 val$finalCommentViewHolder1, final int val$position) {
            this.f63693b = val$finalCommentViewHolder1;
            this.f63694c = val$position;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View v10) {
            this.f63693b.f63626n.post(new a());
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View v10) {
        }
    }

    public class q1 extends n1 {

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private final int f63697j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private final int f63698k;

        public q1(int min_an_compatible_ver, int max_an_compatible_ver, Object object, int itemType) {
            super(x1.this, object, itemType);
            this.f63697j = min_an_compatible_ver;
            this.f63698k = max_an_compatible_ver;
        }
    }

    class q2 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        LinearLayout f63700d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        MyGridView f63701e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        View f63702f;

        public q2(View itemView) {
            super(itemView);
            this.f63701e = (MyGridView) itemView.findViewById(R.id.recomListView);
            this.f63700d = (LinearLayout) itemView.findViewById(R.id.layoutContent);
            this.f63702f = itemView.findViewById(R.id.line_h);
        }
    }

    class r implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f63704b;

        r(final List val$auxiliaryTool) {
            this.f63704b = val$auxiliaryTool;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f63704b.size() > 0) {
                IntentUtil.getInstance().goShareWebActivity(x1.this.f63380g, ((GamedetialAuxiliaryToolBean) this.f63704b.get(0)).getUrl());
            }
        }
    }

    class r0 implements View.OnClickListener {
        r0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (com.join.mgps.Util.t2.h(x1.this.f63378e.getGame_company_id()) || "0".equals(x1.this.f63378e.getGame_company_id())) {
                return;
            }
            PaPaBannerListActivity_.intent(x1.this.f63380g).e(1).a(true).c(x1.this.f63378e.getGame_company_id()).d(x1.this.f63378e.getCompany_name()).start();
        }
    }

    public static class r1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f63707a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public InformationCommentBean f63708b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f63709c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f63710d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f63711e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f63712f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public boolean f63713g;

        public r1(String commentId, InformationCommentBean commentBean, int myAuth, boolean showDivider) {
            this.f63707a = commentId;
            this.f63708b = commentBean;
            this.f63709c = myAuth;
            this.f63710d = showDivider;
        }
    }

    class r2 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public LinearLayout f63714d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Button f63715e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public HorizontalScrollView f63716f;

        public r2(View itemView) {
            super(itemView);
            this.f63714d = (LinearLayout) itemView.findViewById(R.id.titleMoreTip);
            this.f63715e = (Button) itemView.findViewById(R.id.titleMoreBookButn);
            this.f63716f = (HorizontalScrollView) itemView.findViewById(R.id.scrollView);
        }
    }

    class s implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f63718b;

        s(final List val$auxiliaryTool) {
            this.f63718b = val$auxiliaryTool;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f63718b.size() > 1) {
                IntentUtil.getInstance().goShareWebActivity(x1.this.f63380g, ((GamedetialAuxiliaryToolBean) this.f63718b.get(1)).getUrl());
            }
        }
    }

    class s0 implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ m1 f63720b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f63721c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f63722d;

        s0(final m1 val$finalCommentViewHolder, final int val$position, final CommentBaseBean val$commitDataBean) {
            this.f63720b = val$finalCommentViewHolder;
            this.f63721c = val$position;
            this.f63722d = val$commitDataBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (this.f63720b.f63627o.getText().toString().equals("查看全部")) {
                x1.this.f63385l.put(Integer.valueOf(this.f63721c), Boolean.TRUE);
                this.f63720b.f63626n.setMaxLines(Integer.MAX_VALUE);
                this.f63720b.f63627o.setText("收起");
            } else {
                x1.this.f63385l.put(Integer.valueOf(this.f63721c), Boolean.FALSE);
                this.f63720b.f63626n.setMaxLines(5);
                this.f63720b.f63627o.setText("查看全部");
            }
        }
    }

    class s1 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public TextView f63724d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public TextView f63725e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public TextView f63726f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public TextView f63727g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public LinearLayout f63728h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public LinearLayout f63729i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public ImageView f63730j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public ImageView f63731k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public ImageView f63732l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public ImageView f63733m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        ExpandLayout f63734n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        ExpandLayout f63735o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public LinearLayout f63736p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public LinearLayout f63737q;

        class a implements View.OnClickListener {
            a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                try {
                    x1.this.f63380g.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("mqqwpa://im/chat?chat_type=wpa&uin=" + x1.this.f63378e.getGame_exclusive_benefits_qq() + "&version=1")));
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }

        class b implements View.OnClickListener {
            b() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                try {
                    x1.this.f63380g.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("mqqwpa://im/chat?chat_type=wpa&uin=" + x1.this.f63378e.getGame_exclusive_benefits_qq() + "&version=1")));
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }

        public s1(View itemView) {
            super(itemView);
            this.f63724d = (TextView) itemView.findViewById(R.id.titleText);
            this.f63726f = (TextView) itemView.findViewById(R.id.moreText);
            this.f63728h = (LinearLayout) itemView.findViewById(R.id.look_other);
            this.f63730j = (ImageView) itemView.findViewById(R.id.imageView5);
            this.f63732l = (ImageView) itemView.findViewById(R.id.icon);
            this.f63734n = (ExpandLayout) itemView.findViewById(R.id.el_view);
            this.f63736p = (LinearLayout) itemView.findViewById(R.id.ll_welfare);
            this.f63725e = (TextView) itemView.findViewById(R.id.titleText_1);
            this.f63727g = (TextView) itemView.findViewById(R.id.moreText_1);
            this.f63729i = (LinearLayout) itemView.findViewById(R.id.look_other_1);
            this.f63731k = (ImageView) itemView.findViewById(R.id.imageView5_1);
            this.f63733m = (ImageView) itemView.findViewById(R.id.icon_1);
            this.f63735o = (ExpandLayout) itemView.findViewById(R.id.el_view_1);
            this.f63737q = (LinearLayout) itemView.findViewById(R.id.ll_welfare_1);
        }

        public void a(String data, String data2) {
            if (com.join.mgps.Util.t2.i(data)) {
                this.f63736p.setVisibility(0);
                this.f63732l.setVisibility(0);
                this.f63732l.setImageResource(R.drawable.bt_gift_icon);
                this.f63724d.setText("专属福利");
                this.f63734n.setContent(data);
                if (com.join.mgps.Util.t2.i(x1.this.f63378e.getGame_exclusive_benefits_qq()) && com.join.mgps.Util.t2.h(data2)) {
                    this.f63726f.setText("联系客服");
                    this.f63726f.setTextColor(Color.parseColor("#f47500"));
                    this.f63726f.setTextSize(0, x1.this.f63380g.getResources().getDimensionPixelSize(R.dimen.wdp28));
                    this.f63728h.setVisibility(0);
                    this.f63728h.setOnClickListener(new a());
                }
            } else {
                this.f63736p.setVisibility(8);
            }
            if (!com.join.mgps.Util.t2.i(data2)) {
                this.f63737q.setVisibility(8);
                return;
            }
            this.f63737q.setVisibility(0);
            this.f63733m.setImageResource(R.drawable.bt_backsouse_icon);
            this.f63733m.setVisibility(0);
            this.f63725e.setText("充值返利");
            this.f63735o.setContent(data2);
            if (com.join.mgps.Util.t2.i(x1.this.f63378e.getGame_exclusive_benefits_qq())) {
                this.f63727g.setText("联系客服");
                this.f63727g.setTextColor(Color.parseColor("#f47500"));
                this.f63727g.setTextSize(0, x1.this.f63380g.getResources().getDimensionPixelSize(R.dimen.wdp28));
                this.f63729i.setVisibility(0);
                this.f63729i.setOnClickListener(new b());
            }
        }
    }

    class s2 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        LinearLayout f63741d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        LinearLayout f63742e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        LinearLayout f63743f;

        public s2(View itemView) {
            super(itemView);
            this.f63741d = (LinearLayout) itemView.findViewById(R.id.linearLayout);
            this.f63742e = (LinearLayout) itemView.findViewById(R.id.linearLayout_top);
            this.f63743f = (LinearLayout) itemView.findViewById(R.id.linearLayout_bottom);
        }
    }

    class t implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f63745b;

        t(final List val$auxiliaryTool) {
            this.f63745b = val$auxiliaryTool;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f63745b.size() > 2) {
                IntentUtil.getInstance().goShareWebActivity(x1.this.f63380g, ((GamedetialAuxiliaryToolBean) this.f63745b.get(2)).getUrl());
            }
        }
    }

    class t0 implements AdapterView.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ List f63747a;

        t0(final List val$similarImages) {
            this.f63747a = val$similarImages;
        }

        @Override // it.sephiroth.android.library.widget.AdapterView.d
        public void a(AdapterView<?> parent, View view, int position, long id2) {
            try {
                Intent intent = new Intent(x1.this.f63380g, (Class<?>) ImagePagerActivity.class);
                String[] strArr = new String[this.f63747a.size()];
                for (int i10 = 0; i10 < this.f63747a.size(); i10++) {
                    strArr[i10] = ((ImageInfo) this.f63747a.get(i10)).getUrl();
                }
                intent.putExtra("image_urls", strArr);
                intent.putExtra("image_index", position);
                x1.this.f63380g.startActivity(intent);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    class t1 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        HListView f63749d;

        public t1(View itemView) {
            super(itemView);
            this.f63749d = (HListView) itemView.findViewById(R.id.favoriteList);
        }
    }

    class t2 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public LinearLayout f63751d;

        public t2(View itemView) {
            super(itemView);
            this.f63751d = (LinearLayout) itemView.findViewById(R.id.tipslayout);
        }
    }

    class u implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ o2 f63753b;

        u(final o2 val$holderGUpdateinfo) {
            this.f63753b = val$holderGUpdateinfo;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if ("收起".equals(this.f63753b.f63679e.getText().toString())) {
                this.f63753b.f63679e.setText("展开");
                this.f63753b.f63678d.setVisibility(8);
            } else {
                this.f63753b.f63679e.setText("收起");
                this.f63753b.f63678d.setVisibility(0);
            }
        }
    }

    class u0 implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CollectionBeanSub f63755b;

        u0(final CollectionBeanSub val$searchDataBean) {
            this.f63755b = val$searchDataBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Ext ext = new Ext();
            ext.setPosition("brief");
            ext.setGameId(this.f63755b.getCrc_sign_id());
            ext.setArticleId(this.f63755b.get_from() + "");
            com.papa.sim.statistic.t tVarL = com.papa.sim.statistic.t.l(x1.this.f63380g);
            Event event = Event.clickFromUserGameList;
            tVarL.R1(event, ext);
            com.papa.sim.statistic.t.l(x1.this.f63380g).R1(event, this.f63755b.getExtBean().buildScene().toExt());
            com.papa.sim.statistic.t.l(x1.this.f63380g).R1(Event.commonClick, this.f63755b.getExtBean().buildScene().toExt());
            IntentUtil.getInstance().goGameDetialActivity(x1.this.f63380g, this.f63755b.getCrc_sign_id(), this.f63755b.getGame_info_tpl_type(), this.f63755b.getSp_tpl_two_position(), this.f63755b.get_from());
        }
    }

    private class u1 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        View f63757d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        View f63758e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        TextView f63759f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        TextView f63760g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        TextView f63761h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        SimpleDraweeView f63762i;

        public u1(View view) {
            super(view);
            this.f63757d = view.findViewById(R.id.line_h);
            this.f63759f = (TextView) view.findViewById(R.id.count);
            this.f63760g = (TextView) view.findViewById(R.id.auth);
            this.f63761h = (TextView) view.findViewById(R.id.title);
            this.f63762i = (SimpleDraweeView) view.findViewById(R.id.icon);
            this.f63758e = view.findViewById(R.id.top);
        }
    }

    class u2 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public TextView f63764d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public TextView f63765e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public LinearLayout f63766f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public View f63767g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public View f63768h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public ImageView f63769i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public ImageView f63770j;

        public u2(View itemView) {
            super(itemView);
            this.f63764d = (TextView) itemView.findViewById(R.id.titleText);
            this.f63765e = (TextView) itemView.findViewById(R.id.moreText);
            this.f63768h = itemView.findViewById(R.id.line_h);
            this.f63766f = (LinearLayout) itemView.findViewById(R.id.look_other);
            this.f63767g = itemView.findViewById(R.id.layoutTop);
            this.f63769i = (ImageView) itemView.findViewById(R.id.imageView5);
            this.f63770j = (ImageView) itemView.findViewById(R.id.icon);
        }
    }

    class v implements View.OnClickListener {
        v() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.papa.sim.statistic.t.l(view.getContext()).F("yuncundang", AccountUtil_.getInstance_(view.getContext()).getUid());
            x1.this.r(view.getContext(), "云存档");
        }
    }

    class v0 extends m6.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ CollectionBeanSub f63773a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        v0(Context ctx, Downloadable info, final CollectionBeanSub val$searchDataBean) {
            super(ctx, info);
            this.f63773a = val$searchDataBean;
        }

        @Override // m6.c
        public void onButtonClicked(DownloadNormalView downView) {
            this.f63773a.set_from(1);
            super.onButtonClicked(downView);
        }
    }

    class v1 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        LinearLayout f63775d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        LinearLayout f63776e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        TextView f63777f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        View f63778g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        View f63779h;

        public v1(View itemView) {
            super(itemView);
            this.f63775d = (LinearLayout) itemView.findViewById(R.id.goCommit);
            this.f63776e = (LinearLayout) itemView.findViewById(R.id.starlayout);
            this.f63777f = (TextView) itemView.findViewById(R.id.textMessage);
            this.f63778g = itemView.findViewById(R.id.layoutTop);
            this.f63779h = itemView.findViewById(R.id.layoutTop2);
        }
    }

    class v2 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        SimpleDraweeView f63781d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        StandardVideoView f63782e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        LinearLayout f63783f;

        public v2(View itemView) {
            super(itemView);
            this.f63781d = (SimpleDraweeView) itemView.findViewById(R.id.iv_book_bg);
            this.f63782e = (StandardVideoView) itemView.findViewById(R.id.videoPlayer);
            this.f63783f = (LinearLayout) itemView.findViewById(R.id.rl_top);
        }
    }

    class w implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ n2 f63785b;

        w(final n2 val$holderGUpdateinfo1) {
            this.f63785b = val$holderGUpdateinfo1;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if ("收起".equals(this.f63785b.f63655f.getText().toString())) {
                this.f63785b.f63655f.setText("展开");
                if (x1.this.f63378e.getGame_upgrade_info_switch() == 1) {
                    this.f63785b.f63653d.setVisibility(8);
                }
                if (x1.this.f63378e.getGame_detailed() != null) {
                    this.f63785b.f63654e.setVisibility(8);
                    return;
                }
                return;
            }
            this.f63785b.f63655f.setText("收起");
            if (x1.this.f63378e.getGame_upgrade_info_switch() == 1) {
                this.f63785b.f63653d.setVisibility(0);
            }
            if (x1.this.f63378e.getGame_detailed() != null) {
                this.f63785b.f63654e.setVisibility(0);
            }
        }
    }

    class w0 implements ActivityTabView.d {
        w0() {
        }

        @Override // com.join.mgps.customview.ActivityTabView.d
        public void a() {
            BTActivityBean bTActivityBean;
            BtGameWelfare game_welfare = x1.this.f63378e.getGame_welfare();
            if (game_welfare != null) {
                List<BTActivityBean> game_activity_summary = game_welfare.getGame_activity_summary();
                if (game_activity_summary != null && game_activity_summary.size() > 1) {
                    Intent intent = new Intent(x1.this.f63380g, (Class<?>) NoticeListActivity.class);
                    intent.putExtra("gameId", x1.this.f63378e.getCrc_sign_id());
                    x1.this.f63380g.startActivity(intent);
                } else {
                    if (game_activity_summary.size() != 1 || (bTActivityBean = game_activity_summary.get(0)) == null) {
                        return;
                    }
                    IntentUtil.getInstance().goShareWebActivity(x1.this.f63380g, bTActivityBean.getJump_url());
                }
            }
        }

        @Override // com.join.mgps.customview.ActivityTabView.d
        public void b(String url) {
            IntentUtil.getInstance().goShareWebActivity(x1.this.f63380g, url);
        }

        @Override // com.join.mgps.customview.ActivityTabView.d
        public void c(String url) {
            IntentUtil.getInstance().goShareWebActivity(x1.this.f63380g, url);
        }
    }

    class w1 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        TextView f63788d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        TextView f63789e;

        public w1(View itemView) {
            super(itemView);
            this.f63788d = (TextView) itemView.findViewById(R.id.info);
            this.f63789e = (TextView) itemView.findViewById(R.id.more);
        }
    }

    class w2 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        HListView f63791d;

        public w2(View itemView) {
            super(itemView);
            this.f63791d = (HListView) itemView.findViewById(R.id.screenListView);
        }
    }

    class x implements View.OnClickListener {
        x() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (com.join.mgps.Util.t2.h(x1.this.f63378e.getGame_company_id()) || "0".equals(x1.this.f63378e.getGame_company_id())) {
                return;
            }
            PaPaBannerListActivity_.intent(x1.this.f63380g).e(1).a(true).c(x1.this.f63378e.getGame_company_id()).d(x1.this.f63378e.getCompany_name()).start();
        }
    }

    class x0 implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ InformationCommentBean f63794b;

        x0(final InformationCommentBean val$commitDataBean) {
            this.f63794b = val$commitDataBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            p1 p1Var = x1.this.f63382i;
            if (p1Var != null) {
                p1Var.c(this.f63794b);
            }
        }
    }

    /* JADX INFO: renamed from: com.join.mgps.adapter.x1$x1, reason: collision with other inner class name */
    class C0695x1 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public TextView f63796d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public LinearLayout f63797e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public View f63798f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public View f63799g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public ImageView f63800h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public ImageView f63801i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public ExpandLayout f63802j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public TextView f63803k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public LinearLayout f63804l;

        public C0695x1(View itemView) {
            super(itemView);
            this.f63796d = (TextView) itemView.findViewById(R.id.titleText);
            this.f63799g = itemView.findViewById(R.id.line_h);
            this.f63797e = (LinearLayout) itemView.findViewById(R.id.look_other);
            this.f63798f = itemView.findViewById(R.id.layoutTop);
            this.f63800h = (ImageView) itemView.findViewById(R.id.imageView5);
            this.f63801i = (ImageView) itemView.findViewById(R.id.icon);
            this.f63802j = (ExpandLayout) itemView.findViewById(R.id.el_view);
            this.f63803k = (TextView) itemView.findViewById(R.id.tv_view);
            this.f63804l = (LinearLayout) itemView.findViewById(R.id.ll_container);
        }
    }

    class x2 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        TextView f63806d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        LinearLayout f63807e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        ImageView f63808f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        ImageView f63809g;

        class a implements View.OnClickListener {
            a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                com.join.mgps.callbacks.j jVar = x1.this.f63390q;
                if (jVar != null) {
                    jVar.q();
                }
            }
        }

        public x2(View itemView) {
            super(itemView);
            this.f63806d = (TextView) itemView.findViewById(R.id.tv_text);
            this.f63807e = (LinearLayout) itemView.findViewById(R.id.ll_more);
            this.f63808f = (ImageView) itemView.findViewById(R.id.iv_list);
            this.f63809g = (ImageView) itemView.findViewById(R.id.iv_pc);
        }

        public void a(String title) {
            this.f63806d.setText(title);
            this.f63808f.setColorFilter(Color.parseColor("#307EFF"));
            this.f63809g.setColorFilter(Color.parseColor("#307EFF"));
            this.f63807e.setOnClickListener(new a());
        }
    }

    class y implements View.OnClickListener {
        y() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            UserInfo accountData = AccountUtil_.getInstance_(x1.this.f63380g).getAccountData();
            if (accountData == null || accountData.getUid() == 0) {
                com.join.mgps.Util.a3.b(x1.this.f63380g).d("让大伙知道分享者的大名");
                IntentUtil.getInstance().goLoginInteractive(x1.this.f63380g);
            } else {
                if (com.join.mgps.Util.t2.h(accountData.getNickname()) || (accountData.getAccount().equals(accountData.getNickname()) && accountData.getAccount().startsWith("pa"))) {
                    IntentUtil.getInstance().goChangeNickname(x1.this.f63380g);
                    return;
                }
                PrefDef_ prefDef_ = new PrefDef_(x1.this.f63380g);
                if (com.join.mgps.Util.t2.i(prefDef_.uploadType2().d())) {
                    IntentUtil.getInstance().goShareWebActivity(x1.this.f63380g, prefDef_.uploadType2().d());
                } else {
                    UploadActivity_.intent(x1.this.f63380g).start();
                }
            }
        }
    }

    class y0 implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f63813b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f63814c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f63815d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ r1 f63816e;

        y0(final int val$itemIndex, final int val$position, final String val$cid, final r1 val$commentMessageReply) {
            this.f63813b = val$itemIndex;
            this.f63814c = val$position;
            this.f63815d = val$cid;
            this.f63816e = val$commentMessageReply;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (this.f63813b == 0) {
                return;
            }
            InformationCommentBean informationCommentBean = new InformationCommentBean();
            ArrayList arrayList = new ArrayList();
            for (int i10 = this.f63813b; i10 >= 0; i10--) {
                n1 n1Var = (n1) x1.this.f63392s.get(this.f63814c - i10);
                r1 r1Var = n1Var.f63645b == 15 ? (r1) n1Var.f63644a : null;
                if (r1Var != null && this.f63815d == r1Var.f63707a) {
                    arrayList.addAll(r1Var.f63708b.getSub());
                }
            }
            for (int i11 = 0; i11 <= this.f63813b; i11++) {
                x1.this.f63392s.remove(this.f63814c - i11);
            }
            informationCommentBean.setSub(arrayList);
            x1.this.f63392s.add(this.f63814c - this.f63813b, x1.this.p(this.f63815d, informationCommentBean, this.f63816e.f63709c, true));
            x1.this.notifyDataSetChanged();
        }
    }

    class y1 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        HListView f63818d;

        public y1(View itemView) {
            super(itemView);
            this.f63818d = (HListView) itemView.findViewById(R.id.favoriteList);
        }
    }

    class y2 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        TextView f63820d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        TextView f63821e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        TextView f63822f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        TextView f63823g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        TextView f63824h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        TextView f63825i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        TextView f63826j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        TextView f63827k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        TextView f63828l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        TextView f63829m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        TextView f63830n;

        public y2(View itemView) {
            super(itemView);
            this.f63820d = (TextView) itemView.findViewById(R.id.tv_title);
            this.f63821e = (TextView) itemView.findViewById(R.id.tv_label1);
            this.f63822f = (TextView) itemView.findViewById(R.id.tv_label2);
            this.f63823g = (TextView) itemView.findViewById(R.id.tv_label3);
            this.f63824h = (TextView) itemView.findViewById(R.id.tv_label4);
            this.f63825i = (TextView) itemView.findViewById(R.id.tv_label5);
            this.f63826j = (TextView) itemView.findViewById(R.id.tv_value1);
            this.f63827k = (TextView) itemView.findViewById(R.id.tv_value2);
            this.f63828l = (TextView) itemView.findViewById(R.id.tv_value3);
            this.f63829m = (TextView) itemView.findViewById(R.id.tv_value4);
            this.f63830n = (TextView) itemView.findViewById(R.id.tv_value5);
        }

        public void a(String title, String label1, String label2, String label3, String label4, String label5, String value1, String value2, String value3, String value4, String value5) {
            this.f63820d.setText(title);
            this.f63821e.setText(label1);
            this.f63822f.setText(label2);
            this.f63823g.setText(label3);
            this.f63824h.setText(label4);
            this.f63826j.setText(value1);
            this.f63827k.setText(value2);
            this.f63828l.setText(value3);
            this.f63829m.setText(value4);
            if (!com.join.mgps.Util.t2.i(value5)) {
                this.f63825i.setVisibility(8);
                this.f63830n.setVisibility(8);
            } else {
                this.f63825i.setVisibility(0);
                this.f63830n.setVisibility(0);
                this.f63825i.setText(label5);
                this.f63830n.setText(value5);
            }
        }
    }

    class z implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ i2 f63832b;

        z(final i2 val$holderGGamdetialSimple) {
            this.f63832b = val$holderGGamdetialSimple;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (" ".equals(this.f63832b.f63513e.getText().toString())) {
                this.f63832b.f63513e.setText("");
                this.f63832b.f63513e.setBackgroundResource(R.drawable.arena_down_arrow);
                this.f63832b.f63512d.setVisibility(8);
            } else {
                this.f63832b.f63513e.setText(" ");
                this.f63832b.f63513e.setBackgroundResource(R.drawable.arena_up_arrow);
                this.f63832b.f63512d.setVisibility(0);
            }
        }
    }

    class z0 implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f63834b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ InformationCommentBean f63835c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f63836d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ int f63837e;

        z0(final int val$size, final InformationCommentBean val$forumCommentBean, final String val$cid, final int val$position) {
            this.f63834b = val$size;
            this.f63835c = val$forumCommentBean;
            this.f63836d = val$cid;
            this.f63837e = val$position;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            int i10 = 0;
            int i11 = 0;
            boolean z10 = false;
            while (i10 < this.f63834b) {
                InformationCommentBean informationCommentBean = new InformationCommentBean(this.f63835c);
                List<InformationCommentBean.Sub> sub = informationCommentBean.getSub();
                ArrayList arrayList = new ArrayList();
                int i12 = i10 + 3;
                if (i12 < sub.size()) {
                    arrayList.addAll(sub.subList(i10, i12));
                } else {
                    arrayList.addAll(sub.subList(i10, sub.size()));
                    z10 = true;
                }
                informationCommentBean.setSub(arrayList);
                n1 n1VarP = x1.this.p(this.f63836d, informationCommentBean, 0, i11 == 0);
                r1 r1Var = (r1) n1VarP.f63644a;
                r1Var.f63711e = i11;
                r1Var.f63712f = z10;
                r1Var.f63710d = i11 == 0;
                x1.this.J(n1VarP, !z10);
                x1.this.f63392s.add(this.f63837e + i11 + 1, n1VarP);
                i11++;
                i10 = i12;
            }
            x1.this.f63392s.remove(this.f63837e);
            x1.this.notifyDataSetChanged();
        }
    }

    class z1 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        SimpleDraweeView f63839d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        SimpleDraweeView f63840e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        SimpleDraweeView f63841f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        LinearLayout f63842g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        LinearLayout f63843h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        LinearLayout f63844i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        LinearLayout f63845j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        TextView f63846k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        TextView f63847l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        TextView f63848m;

        public z1(View itemView) {
            super(itemView);
            this.f63839d = (SimpleDraweeView) itemView.findViewById(R.id.vpnImage);
            this.f63840e = (SimpleDraweeView) itemView.findViewById(R.id.googleImage);
            this.f63841f = (SimpleDraweeView) itemView.findViewById(R.id.rootImage);
            this.f63842g = (LinearLayout) itemView.findViewById(R.id.look_other);
            this.f63843h = (LinearLayout) itemView.findViewById(R.id.vpnLayout);
            this.f63844i = (LinearLayout) itemView.findViewById(R.id.googleLayout);
            this.f63845j = (LinearLayout) itemView.findViewById(R.id.rootLayout);
            this.f63846k = (TextView) itemView.findViewById(R.id.vpnText);
            this.f63847l = (TextView) itemView.findViewById(R.id.googleText);
            this.f63848m = (TextView) itemView.findViewById(R.id.rootText);
        }
    }

    private class z2 extends f7.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        TextView f63850d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        TextView f63851e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        TextView f63852f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        TextView f63853g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        TextView[] f63854h;

        public z2(View view) {
            super(view);
            this.f63854h = null;
            this.f63850d = (TextView) view.findViewById(R.id.f35465k1);
            this.f63851e = (TextView) view.findViewById(R.id.f35466k2);
            this.f63852f = (TextView) view.findViewById(R.id.f35467k3);
            TextView textView = (TextView) view.findViewById(R.id.f35468k4);
            this.f63853g = textView;
            this.f63854h = new TextView[]{this.f63850d, this.f63851e, this.f63852f, textView};
        }
    }

    public x1(Context context, GamedetialModleFourBean modleFourBean, com.join.android.app.component.video.c helper) {
        this.f63378e = modleFourBean;
        this.f63380g = context;
        this.f63384k = w(context);
        this.f63391r = helper;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void A(BTActivityBean bTActivityBean, View view) {
        IntentUtil.getInstance().goShareWebActivity(this.f63380g, bTActivityBean.getJump_url());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void B(View view) {
        DetialMoreServiceListActivity_.intent(this.f63380g).a(this.f63378e.getCrc_sign_id()).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void C(View view) {
        Intent intent = new Intent(this.f63380g, (Class<?>) NoticeListActivity.class);
        intent.putExtra("gameId", this.f63378e.getCrc_sign_id());
        this.f63380g.startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void D(View view) {
        com.papa.sim.statistic.t.l(view.getContext()).F("jinshouzhi", AccountUtil_.getInstance_(view.getContext()).getUid());
        r(view.getContext(), GameMainActivity4.TITLE_GOLDFINGER);
    }

    private void F(final View parent, final r1 commentMessageReply, boolean hideMore, final int position) {
        View view;
        int i10;
        boolean z10;
        int i11;
        String str = commentMessageReply.f63707a;
        int i12 = commentMessageReply.f63711e;
        boolean z11 = commentMessageReply.f63712f;
        InformationCommentBean informationCommentBean = commentMessageReply.f63708b;
        List<InformationCommentBean.Sub> sub = informationCommentBean.getSub();
        LinearLayout linearLayout = (LinearLayout) parent;
        linearLayout.removeAllViews();
        int size = sub.size();
        int i13 = 0;
        int i14 = 0;
        while (i14 < size + 1) {
            if (i14 <= 3 || !hideMore) {
                View viewInflate = LayoutInflater.from(this.f63380g).inflate(R.layout.comment_reply_item, (ViewGroup) null);
                viewInflate.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
                TextView textView = (TextView) viewInflate.findViewById(R.id.comment_reply_content);
                TextView textView2 = (TextView) viewInflate.findViewById(R.id.comment_reply_more);
                if ((i14 != size || size <= 3) && !(i12 > 0 && z11 && i14 == size)) {
                    view = viewInflate;
                    i10 = i12;
                    z10 = z11;
                    i11 = i14;
                    if (i11 == 3 && hideMore && size > 3) {
                        textView.setVisibility(8);
                        textView2.setVisibility(0);
                        textView2.setText(textView2.getResources().getString(R.string.comment_item_content_more, Integer.valueOf(size - 3)));
                        view.setOnClickListener(new z0(size, informationCommentBean, str, position));
                    } else if (i11 < size && (i11 < 3 || !hideMore)) {
                        textView.setVisibility(0);
                        textView2.setVisibility(8);
                        InformationCommentBean.Sub sub2 = sub.get(i11);
                        String content = sub2.getContent();
                        sub2.getComment_id();
                        try {
                            textView.setText(Html.fromHtml(content));
                            N(view, sub2);
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    }
                } else {
                    textView.setVisibility(8);
                    textView2.setVisibility(i13);
                    textView2.setText("收起");
                    int i15 = i12;
                    view = viewInflate;
                    i10 = i12;
                    i11 = i14;
                    z10 = z11;
                    view.setOnClickListener(new y0(i15, position, str, commentMessageReply));
                }
                linearLayout.addView(view);
            } else {
                i10 = i12;
                z10 = z11;
                i11 = i14;
            }
            i14 = i11 + 1;
            i12 = i10;
            z11 = z10;
            i13 = 0;
        }
    }

    private void N(View view, final InformationCommentBean.Sub sub) {
        view.setOnClickListener(new a1(sub));
    }

    private void O(View view, final CommentBaseBean commitDataBean) {
        view.setOnClickListener(new b1(commitDataBean));
    }

    private void P(final ImageView view, final TextView tv2, final CommentBaseBean commitDataBean, final int position) {
        d1 d1Var = new d1(commitDataBean, position, view, tv2);
        view.setOnClickListener(d1Var);
        tv2.setOnClickListener(d1Var);
    }

    private void Q(View view, final InformationCommentBean commitDataBean) {
        view.setOnClickListener(new x0(commitDataBean));
    }

    private void R(final ImageView view, final TextView tv2, final CommentBaseBean commitDataBean, final int position) {
        e1 e1Var = new e1(commitDataBean, position, view, tv2);
        view.setOnClickListener(e1Var);
        tv2.setOnClickListener(e1Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onBindViewHolder$0(View view) {
        Intent intent = new Intent(this.f63380g, (Class<?>) CouponListActivity.class);
        intent.putExtra("gameId", this.f63378e.getCrc_sign_id());
        this.f63380g.startActivity(intent);
    }

    private CommentBaseBean u(int position) {
        return (CommentBaseBean) this.f63392s.get(position).f63644a;
    }

    public static String z(Context context) {
        List<PackageInfo> installedPackages = context.getPackageManager().getInstalledPackages(0);
        if (installedPackages == null) {
            return null;
        }
        for (int i10 = 0; i10 < installedPackages.size(); i10++) {
            String str = installedPackages.get(i10).packageName;
            if (str.equalsIgnoreCase("com.tencent.qqlite")) {
                return "com.tencent.qqlite";
            }
            if (str.equalsIgnoreCase("com.tencent.mobileqq")) {
                return "com.tencent.mobileqq";
            }
        }
        return null;
    }

    public void E(List<GameDetailOneTouchSkill> viewDatas) {
        this.f63395v.clear();
        this.f63387n = 0;
        this.f63386m = 0;
        if (viewDatas == null) {
            this.f63396w.notifyDataSetChanged();
            return;
        }
        for (int i10 = 0; i10 < viewDatas.size(); i10++) {
            View viewInflate = LayoutInflater.from(this.f63380g).inflate(R.layout.gamedetail_item_one_touch_skill_item, (ViewGroup) null);
            TextView textView = (TextView) viewInflate.findViewById(R.id.name);
            LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.list);
            GameDetailOneTouchSkill gameDetailOneTouchSkill = viewDatas.get(i10);
            textView.setText(gameDetailOneTouchSkill.getName());
            if (gameDetailOneTouchSkill.getSkill() != null) {
                for (int i11 = 0; i11 < gameDetailOneTouchSkill.getSkill().size() && i11 != 5; i11++) {
                    View viewInflate2 = LayoutInflater.from(this.f63380g).inflate(R.layout.gamedetail_item_one_touch_skill_list_item, (ViewGroup) linearLayout, false);
                    linearLayout.addView(viewInflate2);
                    ((TextView) viewInflate2.findViewById(R.id.name)).setText(gameDetailOneTouchSkill.getSkill().get(i11));
                }
            }
            this.f63395v.add(viewInflate);
        }
        this.f63396w.notifyDataSetChanged();
    }

    public void G(int position, int state) {
        CommentBaseBean commentBaseBeanU = u(position);
        long jLongValue = Long.valueOf(commentBaseBeanU.getDespise_count()).longValue();
        if (commentBaseBeanU.getIs_despise() == 1) {
            commentBaseBeanU.setIs_despise(0);
            long j10 = jLongValue - 1;
            if (j10 < 0) {
                commentBaseBeanU.setDespise_count("0");
            } else {
                commentBaseBeanU.setDespise_count(j10 + "");
            }
        } else if (state != 1) {
            commentBaseBeanU.setIs_despise(1);
            commentBaseBeanU.setDespise_count((jLongValue + 1) + "");
        }
        notifyDataSetChanged();
    }

    public void H(int position, int state) {
        CommentBaseBean commentBaseBeanU = u(position);
        long praise_count = commentBaseBeanU.getPraise_count();
        if (commentBaseBeanU.getIs_praise() == 1) {
            commentBaseBeanU.setIs_praise(0);
            long j10 = praise_count - 1;
            if (j10 < 0) {
                commentBaseBeanU.setPraise_count(0L);
            } else {
                commentBaseBeanU.setPraise_count(j10);
            }
        } else if (state != 1) {
            commentBaseBeanU.setIs_praise(1);
            commentBaseBeanU.setPraise_count(praise_count + 1);
        }
        notifyDataSetChanged();
    }

    public void I(BaseGameDetailFragment activity) {
        this.f63379f = activity;
    }

    void J(n1 bean, boolean hideBottom) {
        if (bean == null) {
            return;
        }
        try {
            ((r1) bean.f63644a).f63713g = hideBottom;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void K(GamedetialModleFourBean modleFourBean) {
        this.f63378e = modleFourBean;
    }

    public void L(com.join.mgps.callbacks.j l10) {
        this.f63390q = l10;
    }

    public void M(p1 mListenr) {
        this.f63382i = mListenr;
    }

    public void S(List<View> oneTouchSkillView) {
        this.f63395v = oneTouchSkillView;
    }

    public void T(int _from_type) {
        this.f63389p = _from_type;
    }

    void U() {
        ShareBean shareBean = new ShareBean();
        String share_url = this.f63378e.getShare_url();
        shareBean.setqZoneShareUrl(share_url);
        shareBean.setQqUrl(share_url);
        shareBean.setWechatFriendUrl(share_url);
        shareBean.setWechatShareUrl(share_url);
        shareBean.setWeiboShareUrl(share_url);
        shareBean.setTitle(this.f63378e.getGame_name());
        shareBean.setText(this.f63378e.getInfo());
        shareBean.setImageUrl(this.f63378e.getIco_remote());
        shareBean.setFrom(2);
        shareBean.setGameId(this.f63378e.getGame_id());
        if (this.f63378e.getShare_config() != null && this.f63378e.getShare_config().getShare_switch() == 1) {
            shareBean.setIntentData(this.f63378e.getShare_config().getJump_info());
        }
        com.join.mgps.Util.w.r(this.f63380g, shareBean);
    }

    void V(Context context, String msg) {
        try {
            Toast toastMakeText = Toast.makeText(context, "", 0);
            toastMakeText.setText(msg);
            toastMakeText.setDuration(0);
            toastMakeText.show();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void W(int position) {
        CommentBaseBean commentBaseBeanU = u(position);
        long jLongValue = Long.valueOf(commentBaseBeanU.getDespise_count()).longValue();
        commentBaseBeanU.setIs_despise(0);
        long j10 = jLongValue - 1;
        if (j10 < 0) {
            commentBaseBeanU.setDespise_count("0");
        } else {
            commentBaseBeanU.setDespise_count(j10 + "");
        }
        notifyDataSetChanged();
    }

    public void X(int position) {
        CommentBaseBean commentBaseBeanU = u(position);
        long praise_count = commentBaseBeanU.getPraise_count();
        commentBaseBeanU.setIs_praise(0);
        long j10 = praise_count - 1;
        if (j10 < 0) {
            commentBaseBeanU.setPraise_count(0L);
        } else {
            commentBaseBeanU.setPraise_count(j10);
        }
        notifyDataSetChanged();
    }

    void Y(j3 holder, Boolean isNormal, Boolean isZip, Boolean isShowDesc) {
        if (isNormal.booleanValue()) {
            holder.f63555m.setVisibility(8);
            holder.f63550h.setVisibility(8);
            holder.f63549g.setVisibility(8);
            holder.f63552j.setVisibility(0);
            holder.f63559q.setVisibility(isShowDesc.booleanValue() ? 0 : 8);
            holder.f63562t.setVisibility(isShowDesc.booleanValue() ? 8 : 0);
            return;
        }
        holder.f63559q.setVisibility(8);
        holder.f63562t.setVisibility(8);
        holder.f63555m.setVisibility(0);
        if (isZip.booleanValue()) {
            holder.f63550h.setVisibility(8);
            holder.f63549g.setVisibility(0);
        } else {
            holder.f63549g.setVisibility(8);
            holder.f63550h.setVisibility(0);
        }
        holder.f63552j.setVisibility(8);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f63392s.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int position) {
        return this.f63392s.get(position).f63645b;
    }

    public void n(int position) {
        CommentBaseBean commentBaseBeanU = u(position);
        long jLongValue = Long.valueOf(commentBaseBeanU.getDespise_count()).longValue();
        commentBaseBeanU.setIs_despise(1);
        commentBaseBeanU.setDespise_count((jLongValue + 1) + "");
        notifyDataSetChanged();
    }

    public void o(int position) {
        CommentBaseBean commentBaseBeanU = u(position);
        long praise_count = commentBaseBeanU.getPraise_count();
        commentBaseBeanU.setIs_praise(1);
        commentBaseBeanU.setPraise_count(praise_count + 1);
        notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder holder, int position) {
        boolean z10;
        switch (getItemViewType(position)) {
            case 1:
                u2 u2Var = (u2) holder;
                n1 n1Var = this.f63392s.get(position);
                u2Var.f63769i.setVisibility(8);
                u2Var.f63765e.setText("更多");
                u2Var.f63765e.setTextColor(-16777216);
                u2Var.f63765e.setTextSize(0, this.f63380g.getResources().getDimensionPixelSize(R.dimen.wdp28));
                ((LinearLayout.LayoutParams) u2Var.f63769i.getLayoutParams()).leftMargin = 0;
                u2Var.f63770j.setVisibility(8);
                Object obj = n1Var.f63644a;
                if (obj instanceof String) {
                    u2Var.f63764d.setText((String) obj);
                    u2Var.f63766f.setVisibility(8);
                    if ("游戏简介".equals(n1Var.f63644a)) {
                        u2Var.f63768h.setVisibility(8);
                    }
                    if ("编辑推荐".equals(n1Var.f63644a)) {
                        u2Var.f63768h.setVisibility(8);
                        u2Var.f63764d.setTextColor(Color.parseColor("#262626"));
                    }
                    if ("出招表".equals(n1Var.f63644a) || "选关".equals(n1Var.f63644a)) {
                        ((LinearLayout.LayoutParams) u2Var.f63764d.getLayoutParams()).topMargin = u2Var.f63764d.getContext().getResources().getDimensionPixelOffset(R.dimen.wdp10);
                    }
                    if (GameMainActivity4.TITLE_GOLDFINGER.equals(n1Var.f63644a)) {
                        u2Var.f63769i.setVisibility(8);
                        u2Var.f63766f.setVisibility(0);
                        u2Var.f63765e.setText("全部(" + this.f63378e.getRoom_cfg_info().getGolden_finger().size() + ")");
                        u2Var.f63767g.setVisibility(0);
                        u2Var.f63767g.setBackgroundColor(Color.parseColor("#FFEFEFEF"));
                        u2Var.f63766f.setOnClickListener(new k());
                    }
                    if ("开合服".equals(n1Var.f63644a) && this.f63378e.getGame_server_state().size() > 3) {
                        u2Var.f63766f.setVisibility(0);
                        u2Var.f63766f.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.u1
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                this.f63214b.B(view);
                            }
                        });
                    }
                    if ("活动公告".equals(n1Var.f63644a) && this.f63378e.isHas_more_activities()) {
                        u2Var.f63766f.setVisibility(0);
                        u2Var.f63766f.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.v1
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                this.f63284b.C(view);
                            }
                        });
                    }
                    if ("云存档".equals(n1Var.f63644a)) {
                        u2Var.f63766f.setVisibility(0);
                        u2Var.f63765e.setText("全部(" + this.f63378e.getRoom_cfg_info().getCloud_archive_count() + ")");
                        u2Var.f63767g.setVisibility(0);
                        u2Var.f63767g.setBackgroundColor(Color.parseColor("#FFEFEFEF"));
                        u2Var.f63766f.setOnClickListener(new v());
                    }
                    if ("福利礼包".equals(n1Var.f63644a)) {
                        u2Var.f63768h.setVisibility(8);
                    }
                    if ("福利礼包".equals(n1Var.f63644a)) {
                        u2Var.f63766f.setVisibility(0);
                        u2Var.f63766f.setOnClickListener(new g0());
                    }
                    if ("同厂商推荐".equals(n1Var.f63644a) && this.f63378e.getCompany_recommend() != null && this.f63378e.getCompany_recommend().size() > 3) {
                        u2Var.f63766f.setVisibility(0);
                        u2Var.f63766f.setOnClickListener(new r0());
                    }
                    if ("同厂商推荐".equals(n1Var.f63644a)) {
                        u2Var.f63767g.setVisibility(0);
                        u2Var.f63768h.setVisibility(0);
                    }
                    if ("下了还会下".equals(n1Var.f63644a)) {
                        u2Var.f63767g.setVisibility(0);
                        u2Var.f63768h.setVisibility(0);
                    }
                    if ("游戏单".equals(n1Var.f63644a)) {
                        u2Var.f63766f.setVisibility(0);
                        u2Var.f63766f.setOnClickListener(new c1());
                    }
                    if ("支持手柄".equals(n1Var.f63644a)) {
                        u2Var.f63766f.setVisibility(0);
                        u2Var.f63769i.setVisibility(0);
                        u2Var.f63769i.setImageResource(R.drawable.more_arrow_right_black);
                        ((LinearLayout.LayoutParams) u2Var.f63769i.getLayoutParams()).leftMargin = this.f63380g.getResources().getDimensionPixelOffset(R.dimen.wdp17);
                        u2Var.f63765e.setText("点击购买");
                        u2Var.f63766f.setOnClickListener(new f1(this.f63378e.getGame_handle_entrance().getSub().get(0)));
                    }
                    if ("社区讨论".equals(n1Var.f63644a)) {
                        u2Var.f63766f.setVisibility(0);
                        u2Var.f63766f.setOnClickListener(new g1());
                    }
                    if ("同类游戏".equals(n1Var.f63644a)) {
                        u2Var.f63768h.setVisibility(8);
                        u2Var.f63767g.setVisibility(8);
                    } else {
                        u2Var.f63767g.setVisibility(8);
                    }
                    if ("专属福利".equals(n1Var.f63644a)) {
                        u2Var.f63770j.setVisibility(0);
                        u2Var.f63770j.setImageResource(R.drawable.bt_gift_icon);
                    } else if ("充值返利".equals(n1Var.f63644a)) {
                        u2Var.f63770j.setImageResource(R.drawable.bt_backsouse_icon);
                        u2Var.f63770j.setVisibility(0);
                        if (com.join.mgps.Util.t2.i(this.f63378e.getGame_exclusive_benefits_qq())) {
                            u2Var.f63765e.setText("联系客服");
                            u2Var.f63765e.setTextColor(Color.parseColor("#f47500"));
                            u2Var.f63765e.setTextSize(0, this.f63380g.getResources().getDimensionPixelSize(R.dimen.wdp28));
                            u2Var.f63766f.setVisibility(0);
                            u2Var.f63766f.setOnClickListener(new h1());
                        }
                    } else {
                        u2Var.f63770j.setVisibility(8);
                    }
                    u2Var.f63768h.setVisibility(8);
                }
                break;
            case 2:
                k2 k2Var = (k2) holder;
                com.join.android.app.common.utils.l.h(k2Var.f63568d, this.f63378e.getIco_remote());
                k2Var.f63569e.setText(this.f63378e.getGame_name());
                k2Var.f63570f.setText(this.f63378e.getCompany_name());
                this.f63394u = k2Var.f63576l;
                if (this.f63378e.getBespeak_switch() != 1) {
                    k2Var.f63571g.setVisibility(0);
                    k2Var.f63572h.setText(com.join.mgps.Util.t2.c(this.f63378e.getDown_count()));
                    k2Var.f63571g.setText(this.f63378e.getAppSize() + "M");
                    try {
                        if (this.f63378e.getDown_status() == 5 && this.f63378e.getSp_tag_info() != null && this.f63378e.getSp_tag_info().getDown_res() != null) {
                            k2Var.f63572h.setText(this.f63378e.getSp_tag_info().getDown_res().getName());
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                    break;
                } else {
                    if (this.f63378e.getAppSize() == null || "0.00".equals(this.f63378e.getAppSize())) {
                        k2Var.f63571g.setVisibility(8);
                    } else {
                        k2Var.f63571g.setText(this.f63378e.getAppSize() + "M");
                        k2Var.f63571g.setVisibility(0);
                    }
                    if (this.f63378e.getBespeak_count() == null) {
                        k2Var.f63572h.setText("已有0人预约");
                    } else {
                        k2Var.f63572h.setText("已有" + this.f63378e.getBespeak_count() + "人预约");
                    }
                }
                if (this.f63378e.getPlugin_num() != null) {
                    if (this.f63378e.getPlugin_num().equals(ConstantIntEnum.H5.value() + "")) {
                        k2Var.f63571g.setVisibility(8);
                        k2Var.f63572h.setText(com.join.mgps.Util.t2.c(this.f63378e.getDown_count()).replace("安装", this.f63380g.getResources().getString(R.string.download_status_finished)));
                    }
                }
                GameScore game_score = this.f63378e.getGame_score();
                if ("1".equals(this.f63378e.getComment_score_switch()) && game_score != null && com.join.mgps.Util.t2.i(game_score.getScore())) {
                    if ("0.0".equals(game_score.getScore()) || "0".equals(game_score.getScore())) {
                        k2Var.f63578n.setText("暂未出分");
                        k2Var.f63578n.setTextSize(12.0f);
                        k2Var.f63578n.setTextColor(Color.parseColor("#8a8a8a"));
                        k2Var.f63573i.setStarMark(0.0d);
                    } else {
                        k2Var.f63578n.setText(game_score.getScore());
                        k2Var.f63573i.setStarMark(game_score.getTotal_stars());
                    }
                    k2Var.f63573i.setIntegerMark(false);
                    k2Var.f63573i.setEnabled(false);
                    k2Var.f63577m.setVisibility(0);
                } else {
                    k2Var.f63577m.setVisibility(8);
                }
                k2Var.f63577m.setOnClickListener(new i1());
                if (com.join.mgps.Util.t2.h(this.f63378e.getCompany_name())) {
                    k2Var.f63574j.setVisibility(8);
                } else {
                    k2Var.f63574j.setVisibility(0);
                    k2Var.f63575k.setOnClickListener(new a());
                }
                k2Var.f63570f.setOnClickListener(new b());
                break;
            case 3:
                r2 r2Var = (r2) holder;
                if (this.f63378e.getGame_book_tag() == null || this.f63378e.getGame_book_tag().size() <= 0) {
                    r2Var.f63716f.setVisibility(8);
                } else {
                    UtilsMy.A(this.f63378e.getGame_book_tag(), r2Var.f63714d, this.f63380g);
                }
                if (this.f63378e.getGame_book() == 1) {
                    r2Var.f63715e.setText("已预约");
                    r2Var.f63715e.setEnabled(false);
                } else {
                    r2Var.f63715e.setText("预约");
                }
                r2Var.f63715e.setOnClickListener(new c());
                break;
            case 4:
                t2 t2Var = (t2) holder;
                t2Var.f63751d.removeAllViews();
                if (this.f63378e.getTag_info() != null) {
                    for (TipBean tipBean : this.f63378e.getTag_info()) {
                        if (tipBean.getId() == "7" || tipBean.getId() == "23") {
                            tipBean.setName("安卓");
                        }
                        if (tipBean.getId() != null && !tipBean.getId().equals("") && !tipBean.getId().equals("44") && !tipBean.getId().equals("45") && !tipBean.getId().equals("47") && !tipBean.getId().equals("48") && !tipBean.getId().equals("25") && !tipBean.getId().equals("154") && !tipBean.getId().equals("7")) {
                            View viewInflate = LayoutInflater.from(this.f63380g).inflate(R.layout.gamedetail_item_tipitem_v1, (ViewGroup) null);
                            ((TextView) viewInflate.findViewById(R.id.tipText)).setText(tipBean.getName());
                            viewInflate.setOnClickListener(new d(tipBean));
                            t2Var.f63751d.addView(viewInflate);
                        }
                    }
                }
                if (this.f63378e.getCustom_tag_info() != null) {
                    for (TipBean tipBean2 : this.f63378e.getCustom_tag_info()) {
                        View viewInflate2 = LayoutInflater.from(this.f63380g).inflate(R.layout.gamedetail_item_tipitem_v1, (ViewGroup) null);
                        t2Var.f63751d.addView(viewInflate2);
                        ((TextView) viewInflate2.findViewById(R.id.tipText)).setText(tipBean2.getName());
                        viewInflate2.setOnClickListener(new e(tipBean2));
                    }
                }
                View viewInflate3 = LayoutInflater.from(this.f63380g).inflate(R.layout.gamedetail_item_tipitem_add, (ViewGroup) null);
                t2Var.f63751d.addView(viewInflate3);
                viewInflate3.setOnClickListener(new f());
                break;
            case 5:
                w2 w2Var = (w2) holder;
                ArrayList arrayList = new ArrayList();
                if (this.f63378e.getBt_game_switch() == 1 && com.join.mgps.Util.t2.i(this.f63378e.getGame_info_top_pic()) && com.join.mgps.Util.t2.i(this.f63378e.getGame_info_top_video_url())) {
                    arrayList.add(new ImageInfo(this.f63378e.getGame_info_top_pic(), this.f63378e.getGame_info_top_video_url(), true));
                }
                List<DetialShowImageBean> pic_info = this.f63378e.getPic_info();
                if (pic_info != null) {
                    for (int i10 = 0; i10 < pic_info.size(); i10++) {
                        arrayList.add(new ImageInfo(pic_info.get(i10).getRemote().getPath()));
                    }
                }
                if (arrayList.size() == 0) {
                    w2Var.f63791d.setVisibility(8);
                } else {
                    w2Var.f63791d.setVisibility(0);
                    int pic_position = this.f63378e.getPic_position();
                    if (com.join.mgps.Util.t2.i(this.f63378e.getGif_slide_pic())) {
                        arrayList.add(0, new ImageInfo(this.f63378e.getGif_slide_pic()));
                    }
                    w2Var.f63791d.setOnScrollListener(new g());
                    w2Var.f63791d.setAdapter((ListAdapter) new com.join.mgps.adapter.j1(this.f63380g, pic_position, arrayList, this.f63391r));
                    w2Var.f63791d.setOnItemClickListener(new h(arrayList));
                }
                break;
            case 6:
                l2 l2Var = (l2) holder;
                n1 n1Var2 = this.f63392s.get(position);
                List<GamePromptBean> game_prompt = this.f63378e.getGame_prompt();
                l2Var.f63612d.removeAllViewsInLayout();
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                layoutParams.setMargins(36, 0, 0, 0);
                layoutParams.gravity = 19;
                Drawable drawable = this.f63380g.getResources().getDrawable(R.drawable.ic_ok);
                Drawable drawable2 = this.f63380g.getResources().getDrawable(R.drawable.game_detail_warn);
                drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
                drawable2.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
                if (game_prompt != null && !UtilsMy.t2(this.f63378e.getTag_info())) {
                    for (int i11 = 0; i11 < game_prompt.size(); i11++) {
                        GamePromptBean gamePromptBean = game_prompt.get(i11);
                        if (gamePromptBean != null && gamePromptBean.getId() == 1) {
                            TextView textView = new TextView(this.f63380g);
                            textView.setText(gamePromptBean.getText().toString());
                            if (gamePromptBean.getId() == 1) {
                                textView.setCompoundDrawables(drawable, null, null, null);
                            } else {
                                textView.setCompoundDrawables(drawable2, null, null, null);
                            }
                            textView.setCompoundDrawablePadding(10);
                            textView.setSingleLine(true);
                            textView.setTextSize(1, 12.0f);
                            textView.setTextColor(-7697782);
                            l2Var.f63612d.addView(textView, layoutParams);
                        }
                    }
                }
                Object obj2 = n1Var2.f63649f;
                if (obj2 != null && (obj2 instanceof Boolean) && ((Boolean) obj2).booleanValue()) {
                    View viewInflate4 = View.inflate(this.f63380g, R.layout.view_game_detail_entrance, null);
                    viewInflate4.setOnClickListener(new j());
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams2.setMargins((int) this.f63380g.getResources().getDimension(R.dimen.wdp20), 0, 0, 0);
                    l2Var.f63612d.addView(viewInflate4, layoutParams2);
                }
                Object obj3 = n1Var2.f63650g;
                if (obj3 != null) {
                    int i12 = obj3 instanceof Integer ? Integer.parseInt(obj3.toString()) : 0;
                    if (i12 > 0) {
                        View viewInflate5 = View.inflate(this.f63380g, R.layout.view_game_detail_entrance, null);
                        ImageView imageView = (ImageView) viewInflate5.findViewById(R.id.iv_icon);
                        TextView textView2 = (TextView) viewInflate5.findViewById(R.id.tv_text);
                        imageView.setVisibility(8);
                        textView2.setText("金手指(" + i12 + ")");
                        viewInflate5.setOnClickListener(new l(n1Var2));
                        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
                        layoutParams3.setMargins((int) this.f63380g.getResources().getDimension(R.dimen.wdp20), 0, 0, 0);
                        l2Var.f63612d.addView(viewInflate5, layoutParams3);
                    }
                }
                Object obj4 = n1Var2.f63651h;
                if (obj4 != null && (obj4 instanceof Boolean) && ((Boolean) obj4).booleanValue()) {
                    View viewInflate6 = View.inflate(this.f63380g, R.layout.view_game_detail_entrance, null);
                    ImageView imageView2 = (ImageView) viewInflate6.findViewById(R.id.iv_icon);
                    TextView textView3 = (TextView) viewInflate6.findViewById(R.id.tv_text);
                    imageView2.setImageResource(R.drawable.ic_detail_comment);
                    textView3.setText("社区讨论");
                    viewInflate6.setOnClickListener(new m());
                    LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams4.setMargins((int) this.f63380g.getResources().getDimension(R.dimen.wdp20), 0, 0, 0);
                    l2Var.f63612d.addView(viewInflate6, layoutParams4);
                }
                if (l2Var.f63612d.getChildCount() <= 0) {
                    LinearLayout.LayoutParams layoutParams5 = (LinearLayout.LayoutParams) l2Var.f63612d.getLayoutParams();
                    layoutParams5.height = (int) this.f63380g.getResources().getDimension(R.dimen.wdp30);
                    l2Var.f63612d.setLayoutParams(layoutParams5);
                } else {
                    ((LinearLayout.LayoutParams) l2Var.f63612d.getLayoutParams()).height = (int) this.f63380g.getResources().getDimension(R.dimen.wdp110);
                    l2Var.f63612d.setVisibility(0);
                }
                break;
            case 7:
                ((m2) holder).f63639d.setText((String) this.f63392s.get(position).f63644a);
                break;
            case 8:
                h2 h2Var = (h2) holder;
                n1 n1Var3 = this.f63392s.get(position);
                String str = (String) n1Var3.f63644a;
                if (n1Var3.f63648e == 1 && "游戏简介".equals(n1Var3.f63649f)) {
                    h2Var.f63502d.setExpandable(false);
                    h2Var.f63502d.setExpandMoreText("详细信息");
                    h2Var.f63502d.setExpandMoreIcon(R.drawable.ic_expand_orange);
                    h2Var.f63502d.setExpandTextColor(Color.parseColor("#FF8B0F"));
                    h2Var.f63502d.setExpandStyle(0);
                    h2Var.f63502d.setAlwaysShowMore(true);
                    h2Var.f63502d.setExpandStyle(2);
                } else {
                    h2Var.f63502d.setExpandable(true);
                }
                h2Var.f63502d.setContent(str, new n(n1Var3));
                break;
            case 9:
                j2 j2Var = (j2) holder;
                GiftPackageDataInfoBean giftPackageDataInfoBean = (GiftPackageDataInfoBean) this.f63392s.get(position).f63644a;
                j2Var.f63542f.setText(giftPackageDataInfoBean.getGift_package_content());
                com.join.android.app.common.utils.l.d(j2Var.f63540d, R.drawable.main_normal_icon, giftPackageDataInfoBean.getGift_package_pic());
                j2Var.f63541e.setText(giftPackageDataInfoBean.getGift_package_title());
                if (giftPackageDataInfoBean.getGift_package_status() == 0) {
                    j2Var.f63543g.setText("领取");
                } else {
                    j2Var.f63543g.setText("查看");
                }
                j2Var.f63543g.setOnClickListener(new o(giftPackageDataInfoBean));
                j2Var.f63544h.setOnClickListener(new p(giftPackageDataInfoBean));
                break;
            case 10:
                z1 z1Var = (z1) holder;
                GameDetialAuxiliaryBean auxiliary_tool = this.f63378e.getAuxiliary_tool();
                if (auxiliary_tool != null && auxiliary_tool.getData() != null) {
                    List<GamedetialAuxiliaryToolBean> data = auxiliary_tool.getData();
                    if (data.size() > 0) {
                        com.join.android.app.common.utils.l.d(z1Var.f63839d, R.drawable.main_normal_icon, data.get(0).getPic());
                        z1Var.f63846k.setText(data.get(0).getTitle());
                        z1Var.f63843h.setVisibility(0);
                    }
                    if (data.size() > 1) {
                        com.join.android.app.common.utils.l.d(z1Var.f63840e, R.drawable.main_normal_icon, data.get(1).getPic());
                        z1Var.f63847l.setText(data.get(1).getTitle());
                        z1Var.f63844i.setVisibility(0);
                    }
                    if (data.size() > 2) {
                        com.join.android.app.common.utils.l.d(z1Var.f63841f, R.drawable.main_normal_icon, data.get(2).getPic());
                        z1Var.f63848m.setText(data.get(2).getTitle());
                        z1Var.f63845j.setVisibility(0);
                    }
                    z1Var.f63842g.setOnClickListener(new q(data, auxiliary_tool));
                    z1Var.f63843h.setOnClickListener(new r(data));
                    z1Var.f63844i.setOnClickListener(new s(data));
                    z1Var.f63845j.setOnClickListener(new t(data));
                    break;
                }
                break;
            case 11:
                o2 o2Var = (o2) holder;
                o2Var.f63680f.setOnClickListener(new u(o2Var));
                o2Var.f63678d.setText(this.f63378e.getGame_upgrade_info());
                break;
            case 12:
                i2 i2Var = (i2) holder;
                i2Var.f63515g.setOnClickListener(new z(i2Var));
                GamedetialMoreBean game_detailed = this.f63378e.getGame_detailed();
                i2Var.f63524p.setText("版本:" + game_detailed.getCurrent_ver() + "    更新时间:" + game_detailed.getUpgrade_time());
                TextView textView4 = i2Var.f63518j;
                StringBuilder sb2 = new StringBuilder();
                sb2.append(game_detailed.getSize());
                sb2.append("M");
                textView4.setText(sb2.toString());
                i2Var.f63516h.setText(com.join.mgps.Util.t2.b(game_detailed.getDownloads_count()) + "热度");
                i2Var.f63517i.setText(game_detailed.getCurrent_ver());
                if (com.join.mgps.Util.t2.i(game_detailed.getSource())) {
                    i2Var.f63522n.setText(game_detailed.getSource());
                    i2Var.f63525q.setVisibility(0);
                } else {
                    i2Var.f63525q.setVisibility(8);
                }
                if (com.join.mgps.Util.t2.i(game_detailed.getCompany_name())) {
                    i2Var.f63521m.setText(game_detailed.getCompany_name());
                    i2Var.f63526r.setVisibility(0);
                } else {
                    i2Var.f63526r.setVisibility(8);
                }
                if (com.join.mgps.Util.t2.i(game_detailed.getMobile_phone_system_ver())) {
                    i2Var.f63520l.setText(game_detailed.getMobile_phone_system_ver());
                    i2Var.f63528t.setVisibility(0);
                } else {
                    i2Var.f63528t.setVisibility(8);
                }
                i2Var.f63519k.setText(game_detailed.getUpgrade_time());
                i2Var.f63521m.setOnClickListener(new a0());
                if (!"46".equals(this.f63378e.getPlugin_num())) {
                    i2Var.f63523o.setVisibility(0);
                    i2Var.f63523o.setOnClickListener(new b0());
                }
                if (this.f63378e.getPlugin_num() != null) {
                    if (this.f63378e.getPlugin_num().equals(ConstantIntEnum.H5.value() + "")) {
                        i2Var.f63529u.setVisibility(8);
                        i2Var.f63527s.setVisibility(8);
                        i2Var.f63514f.setText("启动数");
                        i2Var.f63516h.setText(com.join.mgps.Util.t2.c(game_detailed.getDownloads_count()).replace("安装", this.f63380g.getResources().getString(R.string.download_status_finished)));
                    }
                }
                break;
            case 13:
                d2 d2Var = (d2) holder;
                this.f63378e.getGame_comment_count();
                d2Var.f63447g.setVisibility(8);
                d2Var.f63444d.setText("");
                d2Var.f63446f.setVisibility(8);
                d2Var.f63445e.setOnClickListener(new c0());
                d2Var.f63446f.setOnClickListener(new d0());
                break;
            case 15:
                e2 e2Var = (e2) holder;
                r1 r1Var = (r1) this.f63392s.get(position).f63644a;
                if (r1Var.f63713g) {
                    e2Var.f63463h.setVisibility(8);
                    e2Var.f63464i.setVisibility(8);
                } else {
                    e2Var.f63463h.setVisibility(0);
                    e2Var.f63464i.setVisibility(0);
                }
                List<InformationCommentBean.Sub> sub = r1Var.f63708b.getSub();
                if (sub == null || sub.size() == 0) {
                    e2Var.f63459d.removeAllViews();
                } else {
                    F(e2Var.f63459d, r1Var, true, position);
                }
                break;
            case 16:
                c2 c2Var = (c2) holder;
                if (this.f63378e.getComment_switch() == 1) {
                    c2Var.f63426d.setVisibility(0);
                } else {
                    c2Var.f63426d.setVisibility(8);
                }
                c2Var.f63427e.setOnClickListener(new f0());
                c2Var.f63428f.setOnClickListener(new h0());
                break;
            case 17:
                q2 q2Var = (q2) holder;
                n1 n1Var4 = this.f63392s.get(position);
                List<RecommendGameBean> recommend_game = this.f63378e.getRecommend_game();
                int i13 = this.f63389p;
                int iIntValue = ((Integer) n1Var4.f63644a).intValue();
                if (iIntValue == 1) {
                    recommend_game = this.f63378e.getRecommend_game();
                    i13 = 13301;
                } else if (iIntValue == 2) {
                    recommend_game = this.f63378e.getDown_and_down();
                    i13 = 13303;
                } else if (iIntValue == 3) {
                    recommend_game = this.f63378e.getCompany_recommend();
                    i13 = 13302;
                } else if (iIntValue == 4) {
                    recommend_game = this.f63378e.getBt_game_recommend();
                    i13 = 13304;
                }
                com.join.mgps.adapter.o1 o1Var = new com.join.mgps.adapter.o1(this.f63380g, recommend_game);
                o1Var.f(i13);
                q2Var.f63701e.setAdapter((ListAdapter) o1Var);
                if (recommend_game != null && recommend_game.size() > 0) {
                    o1Var.notifyDataSetChanged();
                }
                q2Var.f63702f.setVisibility(8);
                break;
            case 18:
                break;
            case 19:
                v2 v2Var = (v2) holder;
                v2Var.f63782e.setMuteWhenPlay(false);
                String game_info_top_video_url = this.f63378e.getGame_info_top_video_url();
                if (com.join.mgps.Util.t2.h(game_info_top_video_url)) {
                    com.join.android.app.common.utils.l.d(v2Var.f63781d, R.drawable.banner_normal_icon, this.f63378e.getGame_info_top_pic());
                    v2Var.f63782e.setVisibility(8);
                    v2Var.f63781d.setVisibility(0);
                }
                if (com.join.mgps.Util.t2.i(game_info_top_video_url)) {
                    com.join.android.app.common.utils.l.h(v2Var.f63782e.f35112b, this.f63378e.getGame_info_top_pic());
                    v2Var.f63782e.setMuteWhenPlay(false);
                    v2Var.f63782e.setPlayTag("GameDetialModleFourAdapter");
                    v2Var.f63782e.setPlayPosition(position);
                    v2Var.f63782e.setUp(game_info_top_video_url, StandardVideoView.D, "", this.f63378e.getGame_info_top_pic());
                }
                break;
            case 20:
                List<RecommendGameBean> recommend_game2 = this.f63378e.getRecommend_game();
                com.join.mgps.adapter.o1 o1Var2 = new com.join.mgps.adapter.o1(this.f63380g, this.f63383j);
                o1Var2.f(this.f63389p);
                ((f2) holder).f63477e.setAdapter((ListAdapter) o1Var2);
                if (recommend_game2 != null && recommend_game2.size() > 0) {
                    this.f63383j.clear();
                    this.f63383j.addAll(recommend_game2);
                    o1Var2.notifyDataSetChanged();
                    break;
                }
                break;
            case 21:
                List<RecommendGameBean> recommend_game3 = this.f63378e.getRecommend_game();
                com.join.mgps.adapter.o1 o1Var3 = new com.join.mgps.adapter.o1(this.f63380g, this.f63383j);
                o1Var3.f(this.f63389p);
                ((g2) holder).f63486e.setAdapter((ListAdapter) o1Var3);
                if (recommend_game3 != null && recommend_game3.size() > 0) {
                    this.f63383j.clear();
                    this.f63383j.addAll(recommend_game3);
                    o1Var3.notifyDataSetChanged();
                    break;
                }
                break;
            case 22:
                ((s2) holder).f63742e.setVisibility(0);
                break;
            case 23:
                try {
                    p2 p2Var = (p2) holder;
                    RecomDatabean game_handle_entrance = this.f63378e.getGame_handle_entrance();
                    ModleBean main = game_handle_entrance.getMain();
                    p2Var.f63687e.setText(main.getTitle());
                    p2Var.f63688f.setText(main.getSub_title());
                    p2Var.f63686d.setOnClickListener(new i0(game_handle_entrance.getSub().get(0)));
                } catch (Exception e11) {
                    e11.printStackTrace();
                    return;
                }
                break;
            case 24:
                try {
                    h3 h3Var = (h3) holder;
                    h3Var.f63505e.setText("悟饭玩家交流群:" + this.f63378e.getGame_detailed().getTpl_two_qq());
                    h3Var.f63504d.setOnClickListener(new j0());
                } catch (Exception e12) {
                    e12.printStackTrace();
                    return;
                }
                break;
            case 25:
                try {
                    m1 m1Var = (m1) holder;
                    CommentBaseBean commentBaseBean = (CommentBaseBean) this.f63392s.get(position).f63644a;
                    m1Var.f63637y.setVisibility(8);
                    m1Var.f63618f.setTextColor(-16777216);
                    if (commentBaseBean.getVip_level() > 0) {
                        m1Var.f63618f.setTextColor(this.f63380g.getResources().getColor(R.color.vip_color));
                    }
                    if (commentBaseBean.getSvip_level() > 0) {
                        m1Var.f63618f.setTextColor(this.f63380g.getResources().getColor(R.color.vip_svip_color));
                    }
                    m1Var.f63636x.setVipData(commentBaseBean.getVip_level(), commentBaseBean.getSvip_level());
                    if (commentBaseBean.getUid().equals(String.valueOf(AccountUtil_.getInstance_(this.f63380g).getAccountData().getUid()))) {
                        m1Var.f63619g.setVisibility(0);
                    } else {
                        m1Var.f63619g.setVisibility(8);
                    }
                    m1Var.f63617e.setOnClickListener(new p0(commentBaseBean));
                    GameScore game_score2 = this.f63378e.getGame_score();
                    if (game_score2 != null && game_score2.getSgc_switch() == 1 && commentBaseBean.getIs_old() == 0) {
                        m1Var.f63623k.setVisibility(0);
                        m1Var.f63623k.setText("启动游戏 " + commentBaseBean.getStart_game_count() + " 次");
                    } else {
                        m1Var.f63623k.setVisibility(8);
                    }
                    m1Var.f63626n.setText(commentBaseBean.getContent());
                    m1Var.f63618f.setText(commentBaseBean.getUser_name());
                    if (commentBaseBean.getIs_old() == 1 || commentBaseBean.getMobile_phone_model() == null || commentBaseBean.getMobile_phone_model().isEmpty()) {
                        m1Var.f63629q.setVisibility(4);
                    } else {
                        m1Var.f63629q.setVisibility(0);
                        m1Var.f63629q.setText(commentBaseBean.getMobile_phone_model());
                    }
                    m1Var.f63631s.setText(commentBaseBean.getPraise_count() + "");
                    m1Var.f63633u.setText(commentBaseBean.getDespise_count() + "");
                    m1Var.f63635w.setText(commentBaseBean.getReply_count() + "");
                    m1Var.f63624l.setText(com.join.android.app.common.utils.i.a(Long.parseLong(commentBaseBean.getAdd_times() + "000")));
                    if (commentBaseBean.getIs_old() == 1 || Float.valueOf(commentBaseBean.getStars_score()).floatValue() == 0.0f || !(this.f63378e.getComment_score_switch() == null || this.f63378e.getComment_score_switch().equals("1"))) {
                        m1Var.f63622j.setVisibility(8);
                    } else {
                        m1Var.f63622j.setVisibility(0);
                        m1Var.f63622j.setStarCount(Integer.parseInt(commentBaseBean.getStars_score()));
                        m1Var.f63622j.setStarMark(Float.valueOf(commentBaseBean.getStars_score()).floatValue());
                    }
                    m1Var.f63622j.setEnabled(false);
                    if (commentBaseBean.getApproval_rate() == null || Double.valueOf(commentBaseBean.getApproval_rate()).doubleValue() <= 70.0d) {
                        m1Var.f63625m.setVisibility(8);
                    } else {
                        m1Var.f63625m.setVisibility(0);
                    }
                    if (commentBaseBean.getRank().equals("")) {
                        m1Var.f63620h.setVisibility(8);
                    } else {
                        m1Var.f63620h.setVisibility(0);
                    }
                    m1Var.f63621i.setText(commentBaseBean.getRank());
                    if (commentBaseBean.getIs_praise() == 1) {
                        m1Var.f63630r.setImageResource(R.drawable.uped_ic);
                    } else {
                        m1Var.f63630r.setImageResource(R.drawable.up_ic);
                    }
                    if (commentBaseBean.getIs_despise() == 1) {
                        m1Var.f63632t.setImageResource(R.drawable.downed_ic);
                    } else {
                        m1Var.f63632t.setImageResource(R.drawable.down_ic);
                    }
                    UtilsMy.J3(this.f63380g, commentBaseBean.getHead_portrait(), m1Var.f63617e);
                    P(m1Var.f63630r, m1Var.f63631s, commentBaseBean, position);
                    R(m1Var.f63632t, m1Var.f63633u, commentBaseBean, position);
                    O(m1Var.f63634v, commentBaseBean);
                    O(m1Var.f63616d, commentBaseBean);
                    m1Var.f63626n.addOnAttachStateChangeListener(new q0(m1Var, position));
                    m1Var.f63627o.setOnClickListener(new s0(m1Var, position, commentBaseBean));
                } catch (Exception e13) {
                    e13.printStackTrace();
                    return;
                }
                break;
            case 27:
                v1 v1Var = (v1) holder;
                v1Var.f63775d.setOnClickListener(new e0());
                v1Var.f63777f.setText("写评论");
                v1Var.f63776e.setVisibility(0);
                v1Var.f63778g.setVisibility(8);
                v1Var.f63779h.setVisibility(8);
                break;
            case 28:
                w2 w2Var2 = (w2) holder;
                List<ScreenshotGamedetialBean> game_screen_shot = this.f63378e.getGame_screen_shot();
                if (game_screen_shot.size() == 0) {
                    w2Var2.f63791d.setVisibility(8);
                } else {
                    w2Var2.f63791d.setVisibility(0);
                    this.f63378e.getPic_position();
                    w2Var2.f63791d.setAdapter((ListAdapter) new com.join.mgps.adapter.m1(this.f63380g, game_screen_shot));
                    w2Var2.f63791d.setOnItemClickListener(new i(game_screen_shot));
                }
                break;
            case 29:
                ((y1) holder).f63818d.setAdapter((ListAdapter) new com.join.mgps.adapter.x(this.f63380g, this.f63378e.getGame_favorites_top5(), 1));
                break;
            case 30:
                try {
                    a3 a3Var = (a3) holder;
                    a3Var.f63402d.setText((String) this.f63392s.get(position).f63644a);
                    a3Var.f63402d.setOnClickListener(new n0());
                } catch (Exception e14) {
                    e14.printStackTrace();
                    return;
                }
                break;
            case 31:
                try {
                    u1 u1Var = (u1) holder;
                    GameDetailCloudArchive gameDetailCloudArchive = (GameDetailCloudArchive) this.f63392s.get(position).f63644a;
                    if (gameDetailCloudArchive != null) {
                        if (gameDetailCloudArchive.getHideTop() == 1) {
                            u1Var.f63758e.setVisibility(8);
                        } else {
                            u1Var.f63758e.setVisibility(0);
                        }
                        com.join.android.app.common.utils.l.h(u1Var.f63762i, gameDetailCloudArchive.getPic());
                        u1Var.f63761h.setText(gameDetailCloudArchive.getTitle());
                        u1Var.f63760g.setText(gameDetailCloudArchive.getAuth());
                        u1Var.f63759f.setText(gameDetailCloudArchive.getPraise_count() + "");
                        if (gameDetailCloudArchive.getDivider() == 1) {
                            u1Var.f63757d.setVisibility(8);
                        } else {
                            u1Var.f63757d.setVisibility(0);
                        }
                        u1Var.itemView.setOnClickListener(new o0());
                        break;
                    }
                } catch (Exception e15) {
                    e15.printStackTrace();
                    return;
                }
                break;
            case 32:
                try {
                    f3 f3Var = (f3) holder;
                    List<GameDetailOneTouchSkill> one_touch_skill = this.f63378e.getRoom_cfg_info().getOne_touch_skill();
                    if (one_touch_skill.size() == 1) {
                        f3Var.f63479d.setVisibility(8);
                    }
                    f3Var.f63479d.setData(one_touch_skill);
                    ViewPager viewPager = f3Var.f63480e;
                    if (viewPager instanceof MViewpagerV4) {
                        ((MViewpagerV4) viewPager).setIntercept(false);
                    }
                    f3Var.f63480e.setAdapter(this.f63396w);
                    f3Var.f63479d.setViewPager(f3Var.f63480e);
                    if (Build.VERSION.SDK_INT >= 23) {
                        f3Var.f63479d.smoothScrollTo(this.f63386m, 0);
                        f3Var.f63479d.setOnScrollChangeListener(new k0());
                    }
                    f3Var.f63480e.setCurrentItem(this.f63387n);
                    f3Var.f63479d.setOnPageChangeListener(new l0(f3Var));
                } catch (Exception e16) {
                    e16.printStackTrace();
                    return;
                }
                break;
            case 33:
                try {
                    t1 t1Var = (t1) holder;
                    t1Var.f63749d.setAdapter((ListAdapter) new com.join.mgps.adapter.w(this.f63380g, this.f63378e.getRoom_cfg_info().getCheck_point(), 1));
                    t1Var.f63749d.setOnItemClickListener(new m0());
                } catch (Exception e17) {
                    e17.printStackTrace();
                    return;
                }
                break;
            case 34:
                n2 n2Var = (n2) holder;
                n2Var.f63656g.setOnClickListener(new w(n2Var));
                if (this.f63378e.getGame_upgrade_info_switch() == 1) {
                    n2Var.f63653d.setText(this.f63378e.getGame_upgrade_info());
                }
                if (this.f63378e.getGame_detailed() != null) {
                    GamedetialMoreBean game_detailed2 = this.f63378e.getGame_detailed();
                    n2Var.f63660k.setText(game_detailed2.getSize() + "M");
                    n2Var.f63658i.setText(com.join.mgps.Util.t2.b(game_detailed2.getDownloads_count()) + "热度");
                    n2Var.f63659j.setText(game_detailed2.getCurrent_ver());
                    if (com.join.mgps.Util.t2.i(game_detailed2.getSource())) {
                        n2Var.f63664o.setText(game_detailed2.getSource());
                        n2Var.f63667r.setVisibility(0);
                    } else {
                        n2Var.f63667r.setVisibility(8);
                    }
                    if (com.join.mgps.Util.t2.i(game_detailed2.getCompany_name())) {
                        n2Var.f63663n.setText(game_detailed2.getCompany_name());
                        n2Var.f63668s.setVisibility(8);
                    } else {
                        n2Var.f63668s.setVisibility(8);
                    }
                    if (com.join.mgps.Util.t2.i(game_detailed2.getMobile_phone_system_ver())) {
                        n2Var.f63662m.setText(game_detailed2.getMobile_phone_system_ver());
                        n2Var.f63670u.setVisibility(0);
                    } else {
                        n2Var.f63670u.setVisibility(8);
                    }
                    n2Var.f63661l.setText(game_detailed2.getUpgrade_time());
                    n2Var.f63663n.setOnClickListener(new x());
                    if (!"46".equals(this.f63378e.getPlugin_num())) {
                        n2Var.f63665p.setVisibility(0);
                        n2Var.f63665p.setOnClickListener(new y());
                    }
                    if (this.f63378e.getPlugin_num() != null) {
                        if (this.f63378e.getPlugin_num().equals(ConstantIntEnum.H5.value() + "")) {
                            n2Var.f63671v.setVisibility(8);
                            n2Var.f63669t.setVisibility(8);
                            n2Var.f63657h.setText("启动数");
                            n2Var.f63658i.setText(com.join.mgps.Util.t2.c(game_detailed2.getDownloads_count()).replace("安装", this.f63380g.getResources().getString(R.string.download_status_finished)));
                        }
                    }
                }
                break;
            case 35:
                try {
                    z2 z2Var = (z2) holder;
                    List list = (List) this.f63392s.get(position).f63644a;
                    View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.join.mgps.adapter.w1
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.f63336b.D(view);
                        }
                    };
                    int i14 = 0;
                    while (true) {
                        TextView[] textViewArr = z2Var.f63854h;
                        if (textViewArr != null && i14 < textViewArr.length) {
                            if (list == null || list.size() <= i14) {
                                z2Var.f63854h[i14].setVisibility(8);
                            } else {
                                z2Var.f63854h[i14].setVisibility(0);
                                z2Var.f63854h[i14].setText((CharSequence) list.get(i14));
                                z2Var.f63854h[i14].setOnClickListener(onClickListener);
                            }
                            i14++;
                        }
                    }
                } catch (Exception e18) {
                    e18.printStackTrace();
                    return;
                }
                break;
            case 36:
                w1 w1Var = (w1) holder;
                Integer num = (Integer) this.f63392s.get(position).f63644a;
                w1Var.f63788d.setText(num + "张代金券可领取");
                w1Var.f63789e.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.s1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f63129b.lambda$onBindViewHolder$0(view);
                    }
                });
                break;
            case 37:
                i3 i3Var = (i3) holder;
                ServiceState serviceState = (ServiceState) this.f63392s.get(position).f63644a;
                i3Var.f63531d.setText(serviceState.getType() == 1 ? "开服" : "合服");
                i3Var.f63532e.setText(com.join.mgps.Util.e0.I(serviceState.getAdd_time()));
                i3Var.f63533f.setText(com.join.mgps.Util.e0.D(serviceState.getAdd_time(), "HH:mm"));
                i3Var.f63534g.setText(serviceState.getTitle());
                break;
            case 38:
                e3 e3Var = (e3) holder;
                final BTActivityBean bTActivityBean = (BTActivityBean) this.f63392s.get(position).f63644a;
                e3Var.f63467d.setText(bTActivityBean.getType());
                e3Var.f63468e.setText(bTActivityBean.getTitle());
                e3Var.f63469f.setText(bTActivityBean.getSub_head());
                e3Var.f63470g.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.t1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f63178b.A(bTActivityBean, view);
                    }
                });
                break;
            case 39:
                C0695x1 c0695x1 = (C0695x1) holder;
                n1 n1Var5 = this.f63392s.get(position);
                LinearLayout.LayoutParams layoutParams6 = (LinearLayout.LayoutParams) c0695x1.f63804l.getLayoutParams();
                Object obj5 = n1Var5.f63649f;
                if (obj5 != null) {
                    c0695x1.f63796d.setVisibility(0);
                    c0695x1.f63796d.setText((String) obj5);
                    layoutParams6.topMargin = (int) this.f63380g.getResources().getDimension(R.dimen.wdp20);
                } else {
                    c0695x1.f63796d.setVisibility(8);
                }
                layoutParams6.bottomMargin = 0;
                c0695x1.f63804l.setLayoutParams(layoutParams6);
                c0695x1.f63803k.setText((String) n1Var5.f63644a);
                break;
            case 40:
                ((o1) holder).f63676d.setAdapter((ListAdapter) new com.join.mgps.adapter.k1(this.f63380g, (this.f63378e.getComment_score_switch() == null || this.f63378e.getComment_score_switch().equals("1")) ? false : true, (List) this.f63392s.get(position).f63644a, this.f63382i));
                break;
            case 41:
                j3 j3Var = (j3) holder;
                CollectionBeanSub collectionBeanSub = (CollectionBeanSub) this.f63392s.get(position).f63644a;
                DownloadTask downloadTask = collectionBeanSub.getDownloadTask();
                ArrayList arrayList2 = new ArrayList();
                List<DetialShowImageBean> pic_info2 = collectionBeanSub.getPic_info();
                if (pic_info2 != null) {
                    for (int i15 = 0; i15 < pic_info2.size(); i15++) {
                        arrayList2.add(new ImageInfo(pic_info2.get(i15).getRemote().getPath()));
                    }
                }
                if (arrayList2.size() == 0) {
                    j3Var.f63546d.setVisibility(8);
                } else {
                    j3Var.f63546d.setVisibility(0);
                    j3Var.f63546d.setAdapter((ListAdapter) new com.join.mgps.adapter.p1(this.f63380g, collectionBeanSub.getPic_position(), arrayList2));
                    j3Var.f63546d.setOnItemClickListener(new t0(arrayList2));
                }
                j3Var.f63556n.setOnClickListener(new u0(collectionBeanSub));
                j3Var.f63548f.setText(collectionBeanSub.getGame_name());
                if (collectionBeanSub.getRec_game_tags() == null || collectionBeanSub.getRec_game_tags().size() == 0) {
                    j3Var.f63559q.setText(collectionBeanSub.getInfo());
                    j3Var.f63559q.setVisibility(0);
                    j3Var.f63562t.setVisibility(8);
                    z10 = true;
                } else {
                    UtilsMy.H(collectionBeanSub.getRec_game_tags(), j3Var.f63562t, this.f63380g);
                    j3Var.f63559q.setVisibility(8);
                    j3Var.f63562t.setVisibility(0);
                    z10 = false;
                }
                j3Var.f63547e.setImageResource(R.drawable.main_normal_icon);
                collectionBeanSub.getGift_package_switch();
                j3Var.f63554l.f(new v0(this.f63380g, collectionBeanSub, collectionBeanSub));
                com.join.android.app.common.utils.l.h(j3Var.f63547e, collectionBeanSub.getIco_remote());
                long j10 = (long) (Double.parseDouble(collectionBeanSub.getSize()) * 1024.0d * 1024.0d);
                UtilsMy.G(collectionBeanSub.getScore(), collectionBeanSub.getDown_count(), collectionBeanSub.getSize(), collectionBeanSub.getSp_tag_info(), collectionBeanSub.getTag_info(), j3Var.f63552j, this.f63380g);
                if (collectionBeanSub.isH5Game()) {
                    j3Var.f63552j.setVisibility(8);
                } else if (downloadTask == null) {
                    Y(j3Var, Boolean.TRUE, Boolean.FALSE, Boolean.valueOf(z10));
                } else {
                    int status = downloadTask.getStatus();
                    if (UtilsMy.x0(collectionBeanSub.getPay_tag_info(), collectionBeanSub.getCrc_sign_id()) > 0) {
                        status = 43;
                    }
                    if (status != 0) {
                        if (status == 48) {
                            Boolean bool = Boolean.FALSE;
                            Y(j3Var, bool, bool, Boolean.valueOf(z10));
                        } else if (status != 2) {
                            if (status != 3) {
                                if (status != 5) {
                                    if (status != 6) {
                                        if (status != 7) {
                                            if (status != 42) {
                                                if (status != 43) {
                                                    switch (status) {
                                                        case 9:
                                                            Y(j3Var, Boolean.TRUE, Boolean.FALSE, Boolean.valueOf(z10));
                                                            break;
                                                        case 10:
                                                            Boolean bool2 = Boolean.FALSE;
                                                            Y(j3Var, bool2, bool2, Boolean.valueOf(z10));
                                                            try {
                                                                j3Var.f63557o.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                                                                j3Var.f63550h.setProgress((int) downloadTask.getProgress());
                                                            } catch (Exception e19) {
                                                                e19.printStackTrace();
                                                            }
                                                            j3Var.f63560r.setText("等待中");
                                                            break;
                                                        case 11:
                                                            Y(j3Var, Boolean.TRUE, Boolean.FALSE, Boolean.valueOf(z10));
                                                            break;
                                                        case 12:
                                                            Y(j3Var, Boolean.FALSE, Boolean.TRUE, Boolean.valueOf(z10));
                                                            j3Var.f63557o.setText(UtilsMy.c(j10) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                                                            j3Var.f63560r.setText("解压中..");
                                                            j3Var.f63549g.setProgress((int) downloadTask.getProgress());
                                                            break;
                                                        case 13:
                                                            Y(j3Var, Boolean.FALSE, Boolean.TRUE, Boolean.valueOf(z10));
                                                            j3Var.f63557o.setText(UtilsMy.c(j10) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                                                            j3Var.f63560r.setText("点击重新解压");
                                                            j3Var.f63549g.setProgress((int) downloadTask.getProgress());
                                                            break;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                                Y(j3Var, Boolean.TRUE, Boolean.FALSE, Boolean.valueOf(z10));
                            }
                            Boolean bool3 = Boolean.FALSE;
                            Y(j3Var, bool3, bool3, Boolean.valueOf(z10));
                            try {
                                j3Var.f63557o.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                                j3Var.f63550h.setProgress((int) downloadTask.getProgress());
                            } catch (Exception e20) {
                                e20.printStackTrace();
                            }
                            j3Var.f63560r.setText("暂停中");
                        } else {
                            UtilsMy.U4(downloadTask);
                            Boolean bool4 = Boolean.FALSE;
                            Y(j3Var, bool4, bool4, Boolean.valueOf(z10));
                            j3Var.f63557o.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                            j3Var.f63560r.setText(downloadTask.getSpeed() + "/S");
                            j3Var.f63550h.setProgress((int) downloadTask.getProgress());
                        }
                    }
                    Y(j3Var, Boolean.TRUE, Boolean.FALSE, Boolean.valueOf(z10));
                }
                break;
            case 42:
                j1 j1Var = (j1) holder;
                Object obj6 = this.f63392s.get(position).f63644a;
                if (obj6 != null) {
                    j1Var.f63538d.setVisibility(0);
                    j1Var.f63538d.update((BtGameWelfare) obj6);
                    j1Var.f63538d.setListener(new w0());
                } else {
                    j1Var.f63538d.setVisibility(8);
                }
                break;
            case 43:
                k1 k1Var = (k1) holder;
                k1Var.f63566d.setVisibility(0);
                k1Var.f63566d.removeAllViews();
                List<TipBean> list2 = (List) this.f63392s.get(position).f63644a;
                if (list2 != null) {
                    int dimensionPixelOffset = this.f63380g.getResources().getDimensionPixelOffset(R.dimen.wdp12);
                    int dimensionPixelOffset2 = this.f63380g.getResources().getDimensionPixelOffset(R.dimen.wdp4);
                    boolean z11 = true;
                    for (TipBean tipBean3 : list2) {
                        if (!com.join.mgps.Util.t2.h(tipBean3.getName())) {
                            TextView textView5 = new TextView(this.f63380g);
                            textView5.setPadding(dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset, dimensionPixelOffset2);
                            LinearLayout.LayoutParams layoutParams7 = new LinearLayout.LayoutParams(-2, -2);
                            layoutParams7.rightMargin = this.f63380g.getResources().getDimensionPixelOffset(R.dimen.wdp14);
                            if (z11) {
                                layoutParams7.leftMargin = this.f63380g.getResources().getDimensionPixelOffset(R.dimen.wdp18);
                            }
                            textView5.setLayoutParams(layoutParams7);
                            textView5.setTextColor(-1);
                            textView5.setText(tipBean3.getName());
                            textView5.setTextSize(0, this.f63380g.getResources().getDimensionPixelSize(R.dimen.wdp21));
                            if (com.join.mgps.Util.t2.i(tipBean3.getColor())) {
                                GradientDrawable gradientDrawable = new GradientDrawable();
                                gradientDrawable.setShape(0);
                                gradientDrawable.setCornerRadius(this.f63380g.getResources().getDimensionPixelOffset(R.dimen.wdp4));
                                gradientDrawable.setColor(Color.parseColor(tipBean3.getColor()));
                                textView5.setBackground(gradientDrawable);
                            }
                            k1Var.f63566d.addView(textView5);
                            z11 = false;
                        }
                    }
                }
                break;
            case 44:
                n1 n1Var6 = this.f63392s.get(position);
                ((s1) holder).a(String.valueOf(n1Var6.f63644a), String.valueOf(n1Var6.f63649f));
                break;
            case 45:
                b3 b3Var = (b3) holder;
                n1 n1Var7 = this.f63392s.get(position);
                if (n1Var7 != null) {
                    b3Var.a((DomainInfoBean) n1Var7.f63644a);
                }
                break;
            case 46:
                c3 c3Var = (c3) holder;
                n1 n1Var8 = this.f63392s.get(position);
                if (n1Var8 != null) {
                    c3Var.a((DomainInfoBean) n1Var8.f63644a);
                }
                break;
            case 47:
                ((x2) holder).a((String) this.f63392s.get(position).f63644a);
                break;
            case 48:
                GameCfgBean gameCfgBean = (GameCfgBean) this.f63392s.get(position).f63644a;
                ((y2) holder).a("游戏信息", "类型：", "首发日期：", "支持语言：", "游戏大小：", "", gameCfgBean.getGame_type(), gameCfgBean.getFirst_date(), gameCfgBean.getLanguage(), gameCfgBean.getGame_size(), "");
                break;
            case 49:
                GameCfgBean gameCfgBean2 = (GameCfgBean) this.f63392s.get(position).f63644a;
                ((y2) holder).a("最低游戏配置", "CPU：", "内存：", "显卡：", "操作系统: ", "存储空间：", gameCfgBean2.getCpu_info(), gameCfgBean2.getMemory_info(), gameCfgBean2.getVideo_card_info(), gameCfgBean2.getSystem_info(), gameCfgBean2.getCapacity_info());
                break;
            case 50:
                ((g3) holder).a((List) this.f63392s.get(position).f63644a);
                break;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        switch (viewType) {
            case 1:
                return new u2(LayoutInflater.from(parent.getContext()).inflate(R.layout.gamedetail_item_title_v1, parent, false));
            case 2:
                return new k2(LayoutInflater.from(parent.getContext()).inflate(R.layout.gamedetail_item_iconlayout, parent, false));
            case 3:
                return new r2(LayoutInflater.from(parent.getContext()).inflate(R.layout.gamedetail_item_subscribe, parent, false));
            case 4:
                return new t2(LayoutInflater.from(parent.getContext()).inflate(R.layout.gamedetail_item_tipslayout_v1, parent, false));
            case 5:
                return new w2(LayoutInflater.from(parent.getContext()).inflate(R.layout.gamedetail_item_viewpage_v1, parent, false));
            case 6:
                return new l2(LayoutInflater.from(parent.getContext()).inflate(R.layout.gamedetail_item_gamenotice, parent, false));
            case 7:
                return new m2(LayoutInflater.from(parent.getContext()).inflate(R.layout.gamedetail_item_recommend, parent, false));
            case 8:
                return new h2(LayoutInflater.from(parent.getContext()).inflate(R.layout.gamedetail_item_describ_v1, parent, false));
            case 9:
                return new j2(LayoutInflater.from(parent.getContext()).inflate(R.layout.gamedetail_item_gifts, parent, false));
            case 10:
                return new z1(LayoutInflater.from(parent.getContext()).inflate(R.layout.gamedetail_item_auxiliarytool, parent, false));
            case 11:
                return new o2(LayoutInflater.from(parent.getContext()).inflate(R.layout.gamedetail_item_updateinfo, parent, false));
            case 12:
                return new i2(LayoutInflater.from(parent.getContext()).inflate(R.layout.gamedetail_item_gamedetialsimple, parent, false));
            case 13:
                return new d2(LayoutInflater.from(parent.getContext()).inflate(R.layout.gamedetail_item_record_header, parent, false));
            case 14:
                return new b2(LayoutInflater.from(parent.getContext()).inflate(R.layout.gamedetail_item_comment_item_layout, parent, false));
            case 15:
                return new e2(LayoutInflater.from(parent.getContext()).inflate(R.layout.gamedetail_item_comment_message_reply, parent, false));
            case 16:
                return new c2(LayoutInflater.from(parent.getContext()).inflate(R.layout.gamedetail_item_commit_footer, parent, false));
            case 17:
                return new q2(LayoutInflater.from(parent.getContext()).inflate(R.layout.gamedetail_item_gamerecommendlist, parent, false));
            case 18:
                return new a2(LayoutInflater.from(parent.getContext()).inflate(R.layout.gamedetail_item_bottom_empty, parent, false));
            case 19:
                return new v2(LayoutInflater.from(parent.getContext()).inflate(R.layout.gamedetail_item_video, parent, false));
            case 20:
                return new f2(LayoutInflater.from(parent.getContext()).inflate(R.layout.gamedetail_item_down_and_down, parent, false));
            case 21:
                return new g2(LayoutInflater.from(parent.getContext()).inflate(R.layout.gamedetail_item_factory_recommend, parent, false));
            case 22:
                return new s2(LayoutInflater.from(parent.getContext()).inflate(R.layout.gamedetail_item_supply_a_gap, parent, false));
            case 23:
                return new p2(LayoutInflater.from(parent.getContext()).inflate(R.layout.detial_hand_shark_item, parent, false));
            case 24:
                return new h3(LayoutInflater.from(parent.getContext()).inflate(R.layout.gamedetial_qq_item, parent, false));
            case 25:
                return new m1(LayoutInflater.from(parent.getContext()).inflate(R.layout.comment_list_item_view, parent, false));
            case 26:
                return new d3(LayoutInflater.from(parent.getContext()).inflate(R.layout.gamedetial_none_comment_layout, parent, false));
            case 27:
                return new v1(LayoutInflater.from(parent.getContext()).inflate(R.layout.gamedetial_comment_game_layout, parent, false));
            case 28:
                return new w2(LayoutInflater.from(parent.getContext()).inflate(R.layout.gamedetail_item_viewpagenew_v1, parent, false));
            case 29:
                return new y1(LayoutInflater.from(parent.getContext()).inflate(R.layout.detial_favortis_layout, parent, false));
            case 30:
                return new a3(LayoutInflater.from(parent.getContext()).inflate(R.layout.detial_golden_finger_layout, parent, false));
            case 31:
                return new u1(LayoutInflater.from(parent.getContext()).inflate(R.layout.detial_cloud_archive_layout, parent, false));
            case 32:
                return new f3(LayoutInflater.from(parent.getContext()).inflate(R.layout.detial_one_touch_skill_layout, parent, false));
            case 33:
                return new t1(LayoutInflater.from(parent.getContext()).inflate(R.layout.detial_check_point_layout, parent, false));
            case 34:
                return new n2(LayoutInflater.from(parent.getContext()).inflate(R.layout.gamedetail_item_updateinfo1, parent, false));
            case 35:
                return new z2(LayoutInflater.from(parent.getContext()).inflate(R.layout.detial_golden_finger1_layout, parent, false));
            case 36:
                return new w1(LayoutInflater.from(parent.getContext()).inflate(R.layout.gamedetial_bt_coupon_item, parent, false));
            case 37:
                return new i3(LayoutInflater.from(parent.getContext()).inflate(R.layout.gamedetial_bt_serviceinfo_item, parent, false));
            case 38:
                return new e3(LayoutInflater.from(parent.getContext()).inflate(R.layout.gamedetial_bt_notice_item, parent, false));
            case 39:
                return new C0695x1(LayoutInflater.from(parent.getContext()).inflate(R.layout.gamedetail_item_edit_recommend, parent, false));
            case 40:
                return new o1(LayoutInflater.from(parent.getContext()).inflate(R.layout.gamedetail_item_hot_comment_list, parent, false));
            case 41:
                return new j3(LayoutInflater.from(parent.getContext()).inflate(R.layout.item_game_detail_similar_view, parent, false));
            case 42:
                return new j1(LayoutInflater.from(parent.getContext()).inflate(R.layout.item_game_detial_activities, parent, false));
            case 43:
                return new k1(LayoutInflater.from(parent.getContext()).inflate(R.layout.item_game_detail_bt_tag, parent, false));
            case 44:
                return new s1(LayoutInflater.from(parent.getContext()).inflate(R.layout.item_game_detail_bt_welfare, parent, false));
            case 45:
                return new b3(LayoutInflater.from(parent.getContext()).inflate(R.layout.item_game_detail_mini_program, parent, false));
            case 46:
                return new c3(LayoutInflater.from(parent.getContext()).inflate(R.layout.item_game_detail_mini_program_type1, parent, false));
            case 47:
                return new x2(LayoutInflater.from(parent.getContext()).inflate(R.layout.item_game_detail_describe, parent, false));
            case 48:
            case 49:
                return new y2(LayoutInflater.from(parent.getContext()).inflate(R.layout.item_detail_game_info, parent, false));
            case 50:
                return new g3(LayoutInflater.from(parent.getContext()).inflate(R.layout.item_detail_pc_recommend_game, parent, false));
            default:
                return null;
        }
    }

    n1 p(String pid, InformationCommentBean bean, int myAuth, boolean showDivider) {
        return new n1(this, new r1(pid, bean, myAuth, showDivider), 15);
    }

    void q() {
        DownloadTask downloadtaskDown = this.f63378e.getDownloadtaskDown();
        UtilsMy.D1(downloadtaskDown, this.f63378e);
        if (UtilsMy.o1(this.f63380g, downloadtaskDown)) {
            return;
        }
        if (this.f63378e.getDown_status() == 5) {
            UtilsMy.l1(this.f63380g, downloadtaskDown);
        } else {
            UtilsMy.U0(this.f63380g, downloadtaskDown, this.f63378e.getTp_down_url(), this.f63378e.getOther_down_switch(), this.f63378e.getCdn_down_switch());
        }
    }

    void r(Context context, String type) {
        DownloadTask downloadTaskG = q5.f.M().G(this.f63378e.getGame_id());
        if (downloadTaskG == null || TextUtils.isEmpty(type)) {
            q();
            return;
        }
        if (downloadTaskG.getStatus() == 5) {
            V(context, context.getResources().getString(R.string.game_detail_down_status, type));
        } else if (downloadTaskG.getStatus() == 43 || downloadTaskG.getStatus() == 9 || downloadTaskG.getStatus() == 0) {
            q();
        } else {
            V(context, context.getResources().getString(R.string.game_detail_downing_status, type));
        }
    }

    public View s() {
        return this.f63394u;
    }

    public com.join.mgps.callbacks.j t() {
        return this.f63390q;
    }

    public List<View> v() {
        return this.f63395v;
    }

    public com.danikula.videocache.i w(Context context) {
        return MApplication.q(context);
    }

    public int x() {
        return this.f63389p;
    }

    public List<n1> y() {
        return this.f63392s;
    }
}
