package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.BaseAdapter;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.MApplication;
import com.bykv.vk.component.ttvideo.player.C;
import com.czhj.sdk.common.Constants;
import com.facebook.drawee.view.SimpleDraweeView;
import com.flipboard.bottomsheet.BottomSheetLayout;
import com.flyco.tablayout.SlidingTabLayout;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.component.video.StandardVideoView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.cloudarchive.GameDetailEmusCloudListFragment;
import com.join.kotlin.ui.cloudarchive.GameDetailModCloudListFragment;
import com.join.kotlin.ui.cloudarchive.IOnRunListener;
import com.join.kotlin.utils.DlTaskManager;
import com.join.kotlin.utils.extention.MobclickAgentKt;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.gamedetail.BaseGameDetailFragment;
import com.join.mgps.activity.gamedetail.GamedetailVideoMainActivity;
import com.join.mgps.activity.gamedetail.GamedetailVideoMainActivity_;
import com.join.mgps.activity.login.LoginSplashActivity_;
import com.join.mgps.activity.screenshot.ScreenshotGamedetialBean;
import com.join.mgps.activity.screenshot.ScreenshotTrueListAcvity_;
import com.join.mgps.customview.CoordinatorLayout;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.customview.DownloadProgressBar;
import com.join.mgps.customview.FlowLayout;
import com.join.mgps.customview.MViewpagerV4;
import com.join.mgps.customview.XListView2;
import com.join.mgps.customview.widget.detail.GameInfoCardView;
import com.join.mgps.customview.widget.detail.PcGameInfoCardView;
import com.join.mgps.dialog.DownloadMethodMultiDialog_;
import com.join.mgps.dto.CommentAlllistIntentData;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.DetialShowImageBean;
import com.join.mgps.dto.DomainInfoBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.ExtInfoBean;
import com.join.mgps.dto.GameCfgBean;
import com.join.mgps.dto.GameFromBooleanBean;
import com.join.mgps.dto.GameFromPopoWinBean;
import com.join.mgps.dto.GamePromptBean;
import com.join.mgps.dto.GamedetialModleFourBean;
import com.join.mgps.dto.GamedetialMoreBean;
import com.join.mgps.dto.ImageInfo;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.dto.QueryDownloadInfoRequestArgs;
import com.join.mgps.dto.QueryDownloadInfoResponseData;
import com.join.mgps.dto.RequestGameIdArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.RequestdetialFolowAndBeSpeak;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.ShareBean;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.enums.Dtype;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.EventP;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.Where;
import com.papa91.arc.ext.ToastManager;
import com.uc.crashsdk.export.LogType;
import com.wufan.user.service.protobuf.UserInfo;
import it.sephiroth.android.library.widget.AdapterView;
import it.sephiroth.android.library.widget.HListView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.springframework.util.LinkedMultiValueMap;

/* JADX INFO: loaded from: classes4.dex */
@EFragment(R.layout.gamedetial_modle_five_fragment)
public class b3 extends BaseGameDetailFragment implements com.join.mgps.callbacks.j, com.join.mgps.customview.widget.detail.a {
    static String R2 = "0";
    static String S2 = "";
    static boolean T2 = false;
    private static final String U2 = "view";

    @ViewById
    LinearLayout A;
    private DownloadTask A2;

    @ViewById
    ImageView B;

    @ViewById
    TextView B2;

    @ViewById
    ImageView C;

    @ViewById
    ImageView C2;

    @ViewById(R.id.title_normal_download_cdv)
    CustomerDownloadView D;

    @ViewById
    ImageView D2;

    @ViewById
    ImageView E;

    @ViewById
    ImageView E2;

    @ViewById
    TextView F;

    @ViewById
    ImageView F2;

    @ViewById
    TextView G;
    private Animation G2;

    @ViewById
    Toolbar H;
    private int H2;

    @ViewById
    CoordinatorLayout I;
    private int I2;

    @ViewById
    View J;
    UserInfo J2;

    @ViewById
    View K;

    @ViewById
    View L;

    @ViewById
    View M;

    @ViewById
    View N;

    @ViewById
    View O;

    @ViewById
    BottomSheetLayout P;

    @ViewById
    LinearLayout Q;

    @ViewById
    SimpleDraweeView R;

    @ViewById
    TextView S;

    @ViewById
    LinearLayout T;

    @ViewById
    HListView U;

    @ViewById
    ImageView V;

    @ViewById
    RelativeLayout W;

    @ViewById
    ImageView X;

    @ViewById
    FrameLayout Y;
    com.join.mgps.customview.widget.detail.b Z;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    boolean f56754b1;

    /* JADX INFO: renamed from: b2, reason: collision with root package name */
    boolean f56755b2;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    String f56758d;

    /* JADX INFO: renamed from: d2, reason: collision with root package name */
    int f56759d2;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    ExtBean f56760e;

    /* JADX INFO: renamed from: e2, reason: collision with root package name */
    int f56761e2;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    boolean f56762f;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    com.join.mgps.rpc.e f56763f1;

    /* JADX INFO: renamed from: f2, reason: collision with root package name */
    private int f56764f2;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @ViewById
    RelativeLayout f56765g;

    /* JADX INFO: renamed from: g2, reason: collision with root package name */
    private GamedetialModleFourBean f56766g2;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @ViewById
    View f56767h;

    /* JADX INFO: renamed from: h2, reason: collision with root package name */
    private GamedetialModleFourBean f56768h2;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @ViewById
    StandardVideoView f56769i;

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    GamedetailVideoMainActivity f56770i1;

    /* JADX INFO: renamed from: i2, reason: collision with root package name */
    PopupWindow f56771i2;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @ViewById
    SimpleDraweeView f56772j;

    /* JADX INFO: renamed from: j2, reason: collision with root package name */
    LinearLayout f56773j2;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @ViewById
    SlidingTabLayout f56774k;

    /* JADX INFO: renamed from: k2, reason: collision with root package name */
    LinearLayout f56775k2;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @ViewById
    ViewPager f56776l;

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    private com.join.android.app.common.manager.b f56777l1;

    /* JADX INFO: renamed from: l2, reason: collision with root package name */
    LinearLayout f56778l2;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @ViewById
    ViewPager f56779m;

    /* JADX INFO: renamed from: m2, reason: collision with root package name */
    EditText f56780m2;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @ViewById
    LinearLayout f56781n;

    /* JADX INFO: renamed from: n2, reason: collision with root package name */
    TextView f56782n2;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @ViewById
    View f56783o;

    /* JADX INFO: renamed from: o2, reason: collision with root package name */
    TextView f56784o2;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @ViewById
    AppBarLayout f56785p;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    @Pref
    PrefDef_ f56786p0;

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    String f56787p1;

    /* JADX INFO: renamed from: p2, reason: collision with root package name */
    LinearLayout f56788p2;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @ViewById
    CollapsingToolbarLayout f56789q;

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    String f56790q1;

    /* JADX INFO: renamed from: q2, reason: collision with root package name */
    public XListView2 f56791q2;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @ViewById
    RelativeLayout f56792r;

    /* JADX INFO: renamed from: r2, reason: collision with root package name */
    c0 f56794r2;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @ViewById
    RelativeLayout f56795s;

    /* JADX INFO: renamed from: s2, reason: collision with root package name */
    com.join.mgps.rpc.b f56796s2;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @ViewById
    RelativeLayout f56797t;

    /* JADX INFO: renamed from: t2, reason: collision with root package name */
    com.join.mgps.rpc.b f56798t2;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @ViewById
    TextView f56799u;

    /* JADX INFO: renamed from: u2, reason: collision with root package name */
    GameFromPopoWinBean f56800u2;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @ViewById
    RelativeLayout f56801v;

    /* JADX INFO: renamed from: v2, reason: collision with root package name */
    PtrClassicFrameLayout f56803v2;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @ViewById
    ConstraintLayout f56804w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @ViewById
    ImageView f56806x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @ViewById
    TextView f56808y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @ViewById
    ProgressBar f56810z;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f56756c = "GamedetialModleFiveFragemnt";

    /* JADX INFO: renamed from: r1, reason: collision with root package name */
    int f56793r1 = 0;

    /* JADX INFO: renamed from: v1, reason: collision with root package name */
    String f56802v1 = "";
    boolean L1 = false;
    boolean R1 = false;
    boolean V1 = false;

    /* JADX INFO: renamed from: a2, reason: collision with root package name */
    boolean f56753a2 = false;

    /* JADX INFO: renamed from: c2, reason: collision with root package name */
    boolean f56757c2 = false;

    /* JADX INFO: renamed from: w2, reason: collision with root package name */
    int f56805w2 = 1;

    /* JADX INFO: renamed from: x2, reason: collision with root package name */
    List<GameFromPopoWinBean.DataBean> f56807x2 = new ArrayList();

    /* JADX INFO: renamed from: y2, reason: collision with root package name */
    boolean f56809y2 = true;

    /* JADX INFO: renamed from: z2, reason: collision with root package name */
    boolean f56811z2 = false;
    Map<String, DownloadTask> K2 = new HashMap();
    Map<String, DownloadTask> L2 = new HashMap();
    boolean M2 = false;
    private List<z> N2 = new ArrayList();
    y O2 = new y();
    com.join.mgps.adapter.n1 P2 = null;
    List<ImageInfo> Q2 = new ArrayList();

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            String strTrim = b3.this.f56780m2.getText().toString().trim();
            b3.S2 = strTrim;
            if (com.join.mgps.Util.t.f(strTrim)) {
                b3.this.showToast("不能上传表情");
                return;
            }
            b3.this.f56771i2.dismiss();
            b3 b3Var = b3.this;
            if (b3Var.f56809y2) {
                return;
            }
            b3Var.f56809y2 = true;
            b3Var.U();
        }
    }

    class a0 extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        ImageView f56813d;

        public a0(View itemView) {
            super(itemView);
            this.f56813d = (ImageView) itemView.findViewById(R.id.img);
        }
    }

    class b implements v7.e {
        b() {
        }

        @Override // v7.e
        public void a(Bitmap bitmap) {
            com.join.android.app.component.video.i.e(bitmap);
        }
    }

    class b0 extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
        b0() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return 100;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public long getItemId(int position) {
            return 0L;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int position) {
            return super.getItemViewType(position);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder holder, int position) {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
            ImageView imageView = new ImageView(b3.this.f56770i1);
            imageView.setImageResource(R.drawable.icon);
            return b3.this.new a0(imageView);
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            b3.this.Z0();
        }
    }

    class c0 extends BaseAdapter {

        class a implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ GameFromPopoWinBean.DataBean f56819b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ d0 f56820c;

            a(final GameFromPopoWinBean.DataBean val$item, final d0 val$holder) {
                this.f56819b = val$item;
                this.f56820c = val$holder;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                if (!this.f56819b.getCurrent_game_state().equals("0")) {
                    this.f56820c.f56824b.setBackgroundResource(R.drawable.follow_none_image);
                    this.f56819b.setCurrent_game_state("0");
                    b3.this.V(this.f56819b.getId(), b3.this.f56758d, this.f56820c);
                    b3 b3Var = b3.this;
                    int i10 = b3Var.f56793r1 - 1;
                    b3Var.f56793r1 = i10;
                    b3Var.f56793r1 = i10;
                    if (i10 == 0) {
                        b3Var.E.setImageResource(R.drawable.follow_none_image);
                        b3.this.F.setText("收藏");
                        return;
                    }
                    return;
                }
                this.f56820c.f56824b.setBackgroundResource(R.drawable.followed_image);
                b3.this.f56773j2.setVisibility(0);
                b3.this.f56791q2.setVisibility(8);
                b3.this.f56782n2.setVisibility(0);
                b3.this.f56784o2.setText("收藏成功");
                b3.this.f56788p2.setVisibility(8);
                b3.R2 = this.f56819b.getId();
                b3 b3Var2 = b3.this;
                b3Var2.f56809y2 = false;
                int i11 = b3Var2.f56793r1 + 1;
                b3Var2.f56793r1 = i11;
                if (i11 > 0) {
                    b3Var2.E.setImageResource(R.drawable.followed_image);
                    b3.this.F.setText("已收藏");
                }
            }
        }

        c0() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return b3.this.f56807x2.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int position) {
            if (position < b3.this.f56807x2.size()) {
                return b3.this.f56807x2.get(position);
            }
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int position) {
            return position;
        }

        @Override // android.widget.Adapter
        public View getView(final int position, View convertView, ViewGroup parent) {
            d0 d0Var;
            if (convertView == null) {
                convertView = LayoutInflater.from(b3.this.f56770i1).inflate(R.layout.list_item, (ViewGroup) null);
                d0Var = b3.this.new d0();
                d0Var.f56823a = (SimpleDraweeView) convertView.findViewById(R.id.iv_img);
                d0Var.f56824b = (ImageView) convertView.findViewById(R.id.iv_coll);
                d0Var.f56825c = (TextView) convertView.findViewById(R.id.tv_title);
                d0Var.f56826d = (TextView) convertView.findViewById(R.id.tv_size);
                d0Var.f56828f = (RelativeLayout) convertView.findViewById(R.id.ll_gameform);
                d0Var.f56829g = (RelativeLayout) convertView.findViewById(R.id.rl_content);
                convertView.setTag(d0Var);
            } else {
                d0Var = (d0) convertView.getTag();
            }
            if (getItem(position) == null) {
                return convertView;
            }
            GameFromPopoWinBean.DataBean dataBean = (GameFromPopoWinBean.DataBean) getItem(position);
            if (dataBean.getGame_list().get(0).getGame_ico() == null || dataBean.getGame_list().get(0).getGame_ico().equals("")) {
                d0Var.f56823a.setImageResource(R.drawable.main_normal_icon);
            } else {
                d0Var.f56823a.setImageURI(dataBean.getGame_list().get(0).getGame_ico());
            }
            d0Var.f56825c.setText(dataBean.getTitle());
            d0Var.f56826d.setText(dataBean.getGame_count() + "款");
            if (dataBean.getCurrent_game_state().equals("0")) {
                d0Var.f56824b.setBackgroundResource(R.drawable.follow_none_image);
            } else {
                d0Var.f56824b.setBackgroundResource(R.drawable.followed_image);
                b3.this.f56793r1++;
            }
            d0Var.f56829g.setOnClickListener(new a(dataBean, d0Var));
            return convertView;
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            b3.this.Z0();
        }
    }

    class d0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        SimpleDraweeView f56823a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        ImageView f56824b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        TextView f56825c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        TextView f56826d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        TextView f56827e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        RelativeLayout f56828f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        RelativeLayout f56829g;

        d0() {
        }
    }

    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().goShareWebActivity(b3.this.getContext(), b3.this.f56766g2.getActivity_entry().getUrl() + b3.this.f56766g2.getCrc_sign_id());
        }
    }

    class f implements Animation.AnimationListener {
        f() {
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

    class g implements com.join.mgps.Util.x1.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f56833a;

        g(final boolean val$needRetry) {
            this.f56833a = val$needRetry;
        }

        @Override // com.join.mgps.Util.x1.b
        public void a(com.join.mgps.Util.x1.c result) {
            if (result.a() != 1) {
                if (this.f56833a) {
                    b3.this.p1(false);
                }
            } else {
                b3.this.f56770i1.clickBack();
                com.join.mgps.Util.x1 x1VarC = com.join.mgps.Util.x1.c();
                b3 b3Var = b3.this;
                x1VarC.e(b3Var.f56770i1, b3Var.f56760e.getFrom_id(), result.b());
                ToastManager.show("授权成功");
            }
        }
    }

    class h implements com.join.mgps.callbacks.d {
        h() {
        }

        @Override // com.join.mgps.callbacks.d
        public void onClickCancle() {
        }

        @Override // com.join.mgps.callbacks.d
        public void onClickOk() {
        }
    }

    class i implements ViewPager.OnPageChangeListener {
        i() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int state) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int position) {
            com.join.mgps.adapter.n1 n1Var = b3.this.P2;
            if (n1Var == null || position >= n1Var.getCount() || !b3.this.P2.getItem(position).isVideo()) {
                b3.this.pauseVideo();
            } else {
                b3.this.V0();
            }
            b3.this.U.P0(position);
            b3.this.P2.c(position);
        }
    }

    class j implements AdapterView.d {
        j() {
        }

        @Override // it.sephiroth.android.library.widget.AdapterView.d
        public void a(AdapterView<?> parent, View view, int position, long id2) {
            if (b3.this.P2.getItem(position).isVideo()) {
                b3.this.V0();
            } else {
                b3.this.pauseVideo();
            }
            b3.this.f56779m.setCurrentItem(position);
            b3.this.P2.c(position);
        }
    }

    class k implements AppBarLayout.OnOffsetChangedListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f56838a;

        k(final int val$collHeight) {
            this.f56838a = val$collHeight;
        }

        @Override // com.google.android.material.appbar.AppBarLayout.OnOffsetChangedListener, com.google.android.material.appbar.AppBarLayout.BaseOnOffsetChangedListener
        public void onOffsetChanged(AppBarLayout appBarLayout, int verticalOffset) {
            int currentState;
            View view;
            try {
                if (Math.abs(verticalOffset) < this.f56838a && ((view = b3.this.f56767h) == null || view.getVisibility() != 0)) {
                    b3.this.f56795s.setVisibility(0);
                    b3.this.f56797t.setVisibility(0);
                    b3.this.f56792r.setVisibility(8);
                    b3.this.H.getBackground().setAlpha(0);
                    b3 b3Var = b3.this;
                    StandardVideoView standardVideoView = b3Var.f56769i;
                    if (standardVideoView != null && !b3Var.M2 && standardVideoView.getCurrentState() == 5 && b3.this.f56769i.i()) {
                        b3.this.f56769i.onVideoResume(false);
                    }
                    if (b3.this.f56777l1 != null) {
                        b3.this.f56777l1.n(R.color.black_alpha);
                    }
                    b3.this.O.setVisibility(4);
                    return;
                }
                b3.this.f56792r.setVisibility(0);
                b3.this.f56795s.setVisibility(8);
                b3.this.f56797t.setVisibility(8);
                b3.this.H.getBackground().setAlpha(255);
                StandardVideoView standardVideoView2 = b3.this.f56769i;
                if (standardVideoView2 != null && standardVideoView2.i() && (currentState = b3.this.f56769i.getCurrentState()) == 2) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("currentState=");
                    sb2.append(currentState);
                    sb2.append(" -->performClick");
                    b3.this.f56769i.onVideoPause();
                }
                if (b3.this.f56777l1 != null) {
                    b3.this.f56777l1.n(R.color.black_30_alpha);
                }
                b3.this.O.setVisibility(0);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    class l implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f56840b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f56841c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f56842d;

        l(final int val$viewHeight, final int val$viewHeight1, final int val$topGalleyHeight) {
            this.f56840b = val$viewHeight;
            this.f56841c = val$viewHeight1;
            this.f56842d = val$topGalleyHeight;
        }

        @Override // java.lang.Runnable
        public void run() {
            AppBarLayout appBarLayout;
            b3 b3Var = b3.this;
            int i10 = b3Var.f56757c2 ? b3Var.f56759d2 : 0;
            int i11 = this.f56840b + this.f56841c + this.f56842d + b3Var.f56764f2;
            b3 b3Var2 = b3.this;
            int i12 = (i11 - b3Var2.f56761e2) + i10;
            if (i12 <= 0 || (appBarLayout = b3Var2.f56785p) == null) {
                return;
            }
            androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior behavior = ((androidx.coordinatorlayout.widget.CoordinatorLayout.LayoutParams) appBarLayout.getLayoutParams()).getBehavior();
            if (behavior instanceof AppBarLayout.Behavior) {
                ((AppBarLayout.Behavior) behavior).setTopAndBottomOffset(-i12);
            }
        }
    }

    class m implements Runnable {
        m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            View view = b3.this.J;
            if (view != null) {
                view.setVisibility(8);
            }
            View view2 = b3.this.K;
            if (view2 != null) {
                view2.setVisibility(8);
            }
        }
    }

    class n implements View.OnClickListener {
        n() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (AccountUtil_.getInstance_(b3.this.f56770i1).isTourist()) {
                IntentUtil.getInstance().goLogin(b3.this.f56770i1);
            } else {
                IntentUtil.getInstance().goShareWebActivity(b3.this.getContext(), b3.this.f56766g2.getFeedback_issue_url());
            }
        }
    }

    class o extends BaseAdapter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f56846b;

        class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public TextView f56848a;

            a() {
            }
        }

        o(final List val$goldenFingers) {
            this.f56846b = val$goldenFingers;
        }

        @Override // android.widget.Adapter
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public String getItem(int position) {
            return (String) this.f56846b.get(position);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.f56846b.size();
        }

        @Override // android.widget.Adapter
        public long getItemId(int position) {
            return position;
        }

        @Override // android.widget.Adapter
        public View getView(int position, View convertView, ViewGroup parent) {
            a aVar;
            Context context = parent.getContext();
            if (convertView != null) {
                aVar = (a) convertView.getTag();
            } else {
                a aVar2 = new a();
                View viewInflate = LayoutInflater.from(context).inflate(R.layout.layout_sheet_golden_finger_item, parent, false);
                aVar2.f56848a = (TextView) viewInflate.findViewById(R.id.name);
                viewInflate.setTag(aVar2);
                aVar = aVar2;
                convertView = viewInflate;
            }
            aVar.f56848a.setText(getItem(position));
            ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) aVar.f56848a.getLayoutParams();
            if (position == getCount() - 1) {
                ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = context.getResources().getDimensionPixelOffset(R.dimen.wdp20);
            } else {
                ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = 0;
            }
            aVar.f56848a.setLayoutParams(layoutParams);
            return convertView;
        }
    }

    class p implements android.widget.AdapterView.OnItemClickListener {
        p() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(android.widget.AdapterView<?> adapterView, View view, int i10, long l10) {
            b3.this.P.r();
            b3.this.l0(view.getContext(), GameMainActivity4.TITLE_GOLDFINGER);
        }
    }

    class q implements com.join.mgps.callbacks.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ GamedetialModleFourBean f56851a;

        q(final GamedetialModleFourBean val$modleFourBean) {
            this.f56851a = val$modleFourBean;
        }

        @Override // com.join.mgps.callbacks.c
        public GamedetialModleFourBean a() {
            return this.f56851a;
        }
    }

    class r implements IOnRunListener {
        r() {
        }

        @Override // com.join.kotlin.ui.cloudarchive.IOnRunListener
        public void onRun() {
            b3 b3Var = b3.this;
            b3Var.l0(b3Var.getContext(), "云存档");
        }
    }

    class s implements Runnable {
        s() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AppBarLayout appBarLayout;
            androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior behavior;
            if (b3.this.getActivity() == null || b3.this.getActivity().isFinishing() || b3.this.getActivity().isDestroyed() || (appBarLayout = b3.this.f56785p) == null || (behavior = ((androidx.coordinatorlayout.widget.CoordinatorLayout.LayoutParams) appBarLayout.getLayoutParams()).getBehavior()) == null) {
                return;
            }
            int[] iArr = new int[2];
            b3.this.f56774k.getLocationInWindow(iArr);
            b3 b3Var = b3.this;
            behavior.onNestedPreScroll(b3Var.I, b3Var.f56785p, b3Var.f56774k, 0, iArr[1], new int[]{0, 0}, 0);
        }
    }

    class t implements PopupWindow.OnDismissListener {
        t() {
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            b3 b3Var = b3.this;
            b3Var.f56805w2 = 1;
            b3Var.h0();
            b3 b3Var2 = b3.this;
            b3Var2.f56793r1 = 0;
            b3Var2.X0(1.0f);
            b3.S2 = b3.this.f56780m2.getText().toString().trim();
            b3 b3Var3 = b3.this;
            if (b3Var3.f56809y2) {
                return;
            }
            b3Var3.f56809y2 = true;
            b3Var3.U();
        }
    }

    class u implements com.join.mgps.customview.j {
        u() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            b3 b3Var = b3.this;
            b3Var.f56805w2 = 1;
            b3Var.X();
            b3.this.p0();
        }
    }

    class v implements com.join.mgps.customview.i {
        v() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            b3.this.X();
            b3.this.p0();
        }
    }

    class w implements View.OnClickListener {
        w() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            b3.this.f56771i2.dismiss();
        }
    }

    class x implements View.OnClickListener {
        x() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            b3.T2 = true;
            b3.this.startActivity(new Intent(b3.this.f56770i1, (Class<?>) BuildGameFromActivity_.class));
        }
    }

    public class y extends PagerAdapter {

        class a implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ int f56861b;

            a(final int val$position) {
                this.f56861b = val$position;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int i10 = 0;
                if (b3.this.z0()) {
                    if (this.f56861b == 0) {
                        return;
                    }
                    if (b3.this.y0()) {
                        ScreenshotTrueListAcvity_.intent(b3.this.f56770i1).fromData(b3.this.f56766g2.getGame_screen_shot().get(this.f56861b - 1)).gameId(b3.this.f56766g2.getGame_id()).start();
                        return;
                    }
                    List<DetialShowImageBean> pic_info = b3.this.f56766g2.getPic_info();
                    ArrayList arrayList = new ArrayList();
                    if (pic_info != null) {
                        for (int i11 = 0; i11 < pic_info.size(); i11++) {
                            arrayList.add(pic_info.get(i11).getRemote().getPath());
                        }
                    }
                    try {
                        Intent intent = new Intent(b3.this.f56770i1, (Class<?>) ImagePagerActivity.class);
                        String[] strArr = new String[arrayList.size()];
                        while (i10 < arrayList.size()) {
                            strArr[i10] = (String) arrayList.get(i10);
                            i10++;
                        }
                        intent.putExtra("image_urls", strArr);
                        intent.putExtra("image_index", this.f56861b - 1);
                        b3.this.f56770i1.startActivity(intent);
                        return;
                    } catch (Exception e10) {
                        e10.printStackTrace();
                        return;
                    }
                }
                if (b3.this.y0()) {
                    ScreenshotTrueListAcvity_.intent(b3.this.f56770i1).fromData(b3.this.f56766g2.getGame_screen_shot().get(this.f56861b)).gameId(b3.this.f56766g2.getGame_id()).start();
                    return;
                }
                List<DetialShowImageBean> pic_info2 = b3.this.f56766g2.getPic_info();
                ArrayList arrayList2 = new ArrayList();
                if (com.join.mgps.Util.t2.i(b3.this.f56766g2.getGame_info_top_pic()) && com.join.mgps.Util.t2.i(b3.this.f56766g2.getGame_info_top_video_url())) {
                    arrayList2.add(b3.this.f56766g2.getGame_info_top_pic());
                }
                if (pic_info2 != null) {
                    for (int i12 = 0; i12 < pic_info2.size(); i12++) {
                        arrayList2.add(pic_info2.get(i12).getRemote().getPath());
                    }
                }
                try {
                    Intent intent2 = new Intent(b3.this.f56770i1, (Class<?>) ImagePagerActivity.class);
                    String[] strArr2 = new String[arrayList2.size()];
                    while (i10 < arrayList2.size()) {
                        strArr2[i10] = (String) arrayList2.get(i10);
                        i10++;
                    }
                    intent2.putExtra("image_urls", strArr2);
                    intent2.putExtra("image_index", this.f56861b);
                    b3.this.f56770i1.startActivity(intent2);
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            }
        }

        public y() {
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public void destroyItem(ViewGroup container, int position, Object object) {
            container.removeView((View) object);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return b3.this.N2.size();
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public float getPageWidth(int position) {
            if (((z) b3.this.N2.get(position)).f56863a) {
                return 1.0f;
            }
            b3 b3Var = b3.this;
            if (b3Var.L1 && ((z) b3Var.N2.get(position)).f56865c == 1) {
                return 1.0f;
            }
            if (((z) b3.this.N2.get(position)).f56865c == 1) {
                return 0.33f;
            }
            return super.getPageWidth(position);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public Object instantiateItem(ViewGroup container, final int position) {
            container.addView(((z) b3.this.N2.get(position)).f56864b);
            View viewE = ((z) b3.this.N2.get(position)).e();
            viewE.setOnClickListener(new a(position));
            return viewE;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public boolean isViewFromObject(View view, Object object) {
            return view == object;
        }
    }

    public class z {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f56863a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private View f56864b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f56865c;

        public z(boolean isVideo, View view, int pic_position) {
            this.f56863a = isVideo;
            this.f56864b = view;
            this.f56865c = pic_position;
        }

        public int d() {
            return this.f56865c;
        }

        public View e() {
            return this.f56864b;
        }

        public boolean f() {
            return this.f56863a;
        }

        public void g(int pic_position) {
            this.f56865c = pic_position;
        }

        public void h(boolean video) {
            this.f56863a = video;
        }

        public void i(View view) {
            this.f56864b = view;
        }
    }

    private void D0() {
        try {
            if (this.f56769i != null) {
                if (!com.join.mgps.Util.t2.i(this.f56766g2.getGame_info_top_video_url()) && !com.join.mgps.Util.t2.i(this.f56766g2.getGame_info_top_pic())) {
                    this.f56767h.setVisibility(0);
                    this.f56772j.setVisibility(8);
                    this.f56769i.setVisibility(8);
                    return;
                }
                String game_info_top_video_url = this.f56766g2.getGame_info_top_video_url();
                if (com.join.mgps.Util.t2.h(game_info_top_video_url)) {
                    com.join.android.app.common.utils.l.d(this.f56772j, R.drawable.banner_normal_icon, this.f56766g2.getGame_info_top_pic());
                    this.f56769i.setVisibility(8);
                    this.f56772j.setVisibility(0);
                    return;
                }
                com.join.android.app.common.utils.l.h(this.f56769i.f35112b, this.f56766g2.getGame_info_top_pic());
                this.f56769i.setMuteWhenPlay(false);
                this.f56769i.setPlayTag(this.f56802v1);
                this.f56769i.setShowCoverWhenPause(false);
                if (this.f56755b2) {
                    com.join.android.app.component.video.j.c(this.f56769i, game_info_top_video_url, false, "");
                    com.join.android.app.component.video.j.a(this.f56769i);
                    this.f56769i.setCover(this.f56766g2.getGame_info_top_pic());
                } else {
                    this.f56769i.setUp(game_info_top_video_url, StandardVideoView.D, this.f56766g2.getGame_name(), this.f56766g2.getGame_info_top_pic());
                }
                i0(game_info_top_video_url);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void H0(View view) {
        this.P.r();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void I0(View view) {
        this.P.r();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void J0(View view) {
        this.P.r();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void K0(GamedetialMoreBean gamedetialMoreBean, View view) {
        IntentUtil.getInstance().goShareWebActivity(this.f56770i1, gamedetialMoreBean.getPrivacy_policy_url());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void L0(GamedetialMoreBean gamedetialMoreBean, View view) {
        GameDetailPermissionActivity_.intent(this.f56770i1).a(gamedetialMoreBean.getSensitive_authority()).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void M0(View view) {
        IntentUtil.getInstance().goShareWebActivity(this.f56770i1, "https://beian.miit.gov.cn/#/home");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void N0(View view) {
        if (com.join.mgps.Util.t2.h(this.f56766g2.getGame_company_id()) || "0".equals(this.f56766g2.getGame_company_id())) {
            return;
        }
        PaPaBannerListActivity_.intent(this.f56770i1).e(1).a(true).c(this.f56766g2.getGame_company_id()).d(this.f56766g2.getCompany_name()).start();
    }

    private void T0() {
    }

    private void U0() {
        if (this.f56755b2) {
            return;
        }
        StandardVideoView standardVideoView = this.f56769i;
        if (standardVideoView != null) {
            standardVideoView.release();
        }
        com.join.android.app.component.video.a.n0(this.f56802v1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void V0() {
        StandardVideoView standardVideoView = this.f56769i;
        if (standardVideoView == null || !standardVideoView.i()) {
            return;
        }
        this.M2 = false;
        this.f56769i.onVideoResume(false);
    }

    private int getStatusBarHeight(Context context) {
        int identifier = context.getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit lambda$onEventMainThread$0() {
        updateDownloadView();
        return null;
    }

    public static b3 q0(String gameId, ExtBean extBean, boolean autodown) {
        GamedetialModleFiveFragemnt_ gamedetialModleFiveFragemnt_ = new GamedetialModleFiveFragemnt_();
        Bundle bundle = new Bundle();
        bundle.putBoolean(GamedetailVideoMainActivity_.AUTODOWN_EXTRA, autodown);
        bundle.putSerializable("extBean", extBean);
        bundle.putString("gameId", gameId);
        bundle.putBoolean(EndGameDetailActivity_.IS_FROM_VIDEO_EXTRA, false);
        gamedetialModleFiveFragemnt_.setArguments(bundle);
        return gamedetialModleFiveFragemnt_;
    }

    public static b3 r0(String gameId, ExtBean extBean, boolean autodown, boolean isFromVideo, boolean isShowComment) {
        GamedetialModleFiveFragemnt_ gamedetialModleFiveFragemnt_ = new GamedetialModleFiveFragemnt_();
        Bundle bundle = new Bundle();
        bundle.putBoolean(GamedetailVideoMainActivity_.AUTODOWN_EXTRA, autodown);
        bundle.putSerializable("extBean", extBean);
        bundle.putString("gameId", gameId);
        bundle.putBoolean(EndGameDetailActivity_.IS_FROM_VIDEO_EXTRA, isFromVideo);
        bundle.putBoolean(GamedetailVideoMainActivity_.IS_SHOW_COMMENT_EXTRA, isShowComment);
        gamedetialModleFiveFragemnt_.setArguments(bundle);
        return gamedetialModleFiveFragemnt_;
    }

    private int s0(Context context) {
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("navigation_bar_height", "dimen", "android");
        if (identifier > 0) {
            return resources.getDimensionPixelSize(identifier);
        }
        return 0;
    }

    private static String u0(Context context, int id2) {
        try {
            return context.getResources().getResourceEntryName(id2);
        } catch (Exception unused) {
            return "";
        }
    }

    public static int v0(Context context) {
        return context.getResources().getDisplayMetrics().heightPixels;
    }

    private int w0(Activity context) {
        WindowManager windowManager = context.getWindow().getWindowManager();
        Point point = new Point();
        windowManager.getDefaultDisplay().getRealSize(point);
        return point.y;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void A0() {
        PopupWindow popupWindow = this.f56771i2;
        if (popupWindow != null) {
            popupWindow.dismiss();
        }
    }

    void B0() {
        this.f56779m.setAdapter(this.O2);
        this.f56779m.addOnPageChangeListener(new i());
        if (MViewpagerV4.class.isInstance(this.f56779m)) {
            ((MViewpagerV4) this.f56779m).setIntercept(false);
        }
        this.U.setOnItemClickListener(new j());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void C0() {
        View viewInflate = LayoutInflater.from(this.f56770i1).inflate(R.layout.popo_item, (ViewGroup) null);
        X0(0.4f);
        PopupWindow popupWindow = new PopupWindow(viewInflate, -1, -1, true);
        this.f56771i2 = popupWindow;
        popupWindow.setTouchable(true);
        this.f56771i2.setOutsideTouchable(true);
        this.f56771i2.setFocusable(true);
        this.f56771i2.setBackgroundDrawable(new ColorDrawable());
        this.f56771i2.setSoftInputMode(16);
        this.f56771i2.setOnDismissListener(new t());
        XListView2 xListView2 = (XListView2) viewInflate.findViewById(R.id.listview);
        this.f56791q2 = xListView2;
        xListView2.setPullRefreshEnable(new u());
        this.f56791q2.setPullLoadEnable(new v());
        this.f56784o2 = (TextView) viewInflate.findViewById(R.id.tv_show_tips);
        this.f56778l2 = (LinearLayout) viewInflate.findViewById(R.id.ll_our);
        this.f56773j2 = (LinearLayout) viewInflate.findViewById(R.id.ll_show_finish);
        this.f56775k2 = (LinearLayout) viewInflate.findViewById(R.id.ll_dismiss);
        this.f56780m2 = (EditText) viewInflate.findViewById(R.id.game_ed);
        this.f56782n2 = (TextView) viewInflate.findViewById(R.id.tv_finish);
        this.f56788p2 = (LinearLayout) viewInflate.findViewById(R.id.ll_build);
        this.f56775k2.setOnClickListener(new w());
        this.f56788p2.setOnClickListener(new x());
        this.f56782n2.setOnClickListener(new a());
        c0 c0Var = new c0();
        this.f56794r2 = c0Var;
        this.f56791q2.setAdapter((ListAdapter) c0Var);
        this.f56771i2.showAtLocation(LayoutInflater.from(this.f56770i1).inflate(R.layout.gamedetial_modle_three_activity, (ViewGroup) null), 81, 0, 0);
    }

    @Override // com.join.mgps.customview.widget.detail.a
    public void E() {
        this.f56776l.setCurrentItem(1);
    }

    public boolean E0(@NonNull final Activity activity) {
        boolean z10;
        ViewGroup viewGroup = (ViewGroup) activity.getWindow().getDecorView();
        int childCount = viewGroup.getChildCount();
        int i10 = 0;
        while (true) {
            if (i10 >= childCount) {
                z10 = false;
                break;
            }
            View childAt = viewGroup.getChildAt(i10);
            int id2 = childAt.getId();
            if (id2 != -1 && "navigationBarBackground".equals(u0(activity, id2)) && childAt.getVisibility() == 0) {
                z10 = true;
                break;
            }
            i10++;
        }
        if (!z10) {
            return z10;
        }
        if (com.join.mgps.Util.e2.x() && Build.VERSION.SDK_INT < 29) {
            try {
                return Settings.Global.getInt(activity.getContentResolver(), "navigationbar_hide_bar_enabled") == 0;
            } catch (Exception unused) {
            }
        }
        return (viewGroup.getSystemUiVisibility() & 2) == 0;
    }

    @Click
    void F0() {
        O0();
    }

    @Click
    void G0() {
        this.f56770i1.clickBack();
    }

    @Override // com.join.mgps.callbacks.j
    public void K() {
        GamedetialModleFourBean gamedetialModleFourBean = this.f56766g2;
        if (gamedetialModleFourBean == null) {
            return;
        }
        List<String> golden_finger = (gamedetialModleFourBean.getRoom_cfg_info() == null || this.f56766g2.getRoom_cfg_info().getGolden_finger() == null || this.f56766g2.getRoom_cfg_info().getGolden_finger().size() <= 0) ? null : this.f56766g2.getRoom_cfg_info().getGolden_finger();
        if (golden_finger == null) {
            return;
        }
        View viewInflate = LayoutInflater.from(this.f56770i1).inflate(R.layout.layout_game_detail_sheet_golden_finger, (ViewGroup) this.P, false);
        ListView listView = (ListView) viewInflate.findViewById(R.id.listView);
        viewInflate.findViewById(R.id.close).setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.a3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f56456b.H0(view);
            }
        });
        listView.setAdapter((ListAdapter) new o(golden_finger));
        listView.setOnItemClickListener(new p());
        d1(viewInflate);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void O0() {
        if (com.join.android.app.common.utils.m.j(getContext())) {
            try {
                String uid = AccountUtil_.getInstance_(getContext()).getUid();
                String token = AccountUtil_.getInstance_(getContext()).getToken();
                RequestModel<QueryDownloadInfoRequestArgs> requestModel = new RequestModel<>();
                requestModel.setDefault(getContext());
                QueryDownloadInfoRequestArgs queryDownloadInfoRequestArgs = new QueryDownloadInfoRequestArgs();
                queryDownloadInfoRequestArgs.setGameId(this.f56758d);
                queryDownloadInfoRequestArgs.setUid(uid);
                queryDownloadInfoRequestArgs.setToken(token);
                requestModel.setArgs(queryDownloadInfoRequestArgs);
                ResponseModel<QueryDownloadInfoResponseData> responseModelBody = com.join.mgps.rpc.impl.i.P0().N0().f0(requestModel).execute().body();
                if (responseModelBody == null || responseModelBody.getCode() != 600) {
                    return;
                }
                b1(responseModelBody.getData());
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    View P0(String s10, int resId, ViewGroup parent) {
        if (TextUtils.isEmpty(s10)) {
            return null;
        }
        View viewInflate = LayoutInflater.from(this.f56770i1).inflate(R.layout.layout_tag_game_detail_profile, parent, false);
        ImageView imageView = (ImageView) viewInflate.findViewById(R.id.icon);
        ((TextView) viewInflate.findViewById(R.id.name)).setText(s10);
        imageView.setBackgroundResource(resId);
        return viewInflate;
    }

    public void Q0(GamedetialModleFourBean modleFourBean) {
        try {
            this.N2.clear();
            this.Q2.clear();
            int pic_position = modleFourBean.getPic_position();
            ViewGroup.LayoutParams layoutParams = this.f56779m.getLayoutParams();
            if (this.L1 && pic_position == 1) {
                int dimension = (int) getResources().getDimension(R.dimen.wdp1216);
                layoutParams.height = dimension;
                this.f56785p.postDelayed(new l(dimension, (int) getResources().getDimension(R.dimen.wdp236), (int) getResources().getDimension(R.dimen.wdp111)), 20L);
                AppBarLayout appBarLayout = this.f56785p;
                if (appBarLayout != null) {
                    appBarLayout.postDelayed(new m(), 30L);
                }
            } else {
                layoutParams.height = (int) getResources().getDimension(R.dimen.wdp400);
            }
            if (z0()) {
                View viewInflate = LayoutInflater.from(this.f56770i1).inflate((this.L1 && pic_position == 1) ? R.layout.gamedetail_item_mini_game_video_v : R.layout.gamedetail_item_video, (ViewGroup) this.f56779m, false);
                this.f56765g = (RelativeLayout) viewInflate.findViewById(R.id.videolayout);
                this.f56767h = viewInflate.findViewById(R.id.nullView);
                this.f56769i = (StandardVideoView) viewInflate.findViewById(R.id.videoPlayer);
                this.f56772j = (SimpleDraweeView) viewInflate.findViewById(R.id.iv_book_bg);
                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.f56769i.getLayoutParams();
                RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) this.f56772j.getLayoutParams();
                layoutParams2.height = -1;
                layoutParams3.height = -1;
                D0();
                this.N2.add(new z(true, viewInflate, 0));
                this.Q2.add(new ImageInfo(modleFourBean.getGame_info_top_pic(), modleFourBean.getGame_info_top_video_url(), true));
            }
            this.T.setVisibility(0);
            int i10 = pic_position == 1 ? this.L1 ? R.layout.gamedetail_item_image_mini_game_v : R.layout.gamedetail_item_image_v_v1 : R.layout.gamedetail_item_image_v1;
            if (modleFourBean.getGame_screen_shot() == null || modleFourBean.getGame_screen_shot().size() == 0) {
                for (int i11 = 0; i11 < modleFourBean.getPic_info().size(); i11++) {
                    View viewInflate2 = LayoutInflater.from(this.f56770i1).inflate(i10, (ViewGroup) this.f56779m, false);
                    DetialShowImageBean detialShowImageBean = modleFourBean.getPic_info().get(i11);
                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) viewInflate2.findViewById(R.id.image);
                    TextView textView = (TextView) viewInflate2.findViewById(R.id.count);
                    if (pic_position == 1 && !this.L1) {
                        ConstraintLayout.LayoutParams layoutParams4 = (ConstraintLayout.LayoutParams) simpleDraweeView.getLayoutParams();
                        ((ViewGroup.MarginLayoutParams) layoutParams4).rightMargin = (int) getResources().getDimension(R.dimen.wdp12);
                        viewInflate2.setLayoutParams(layoutParams4);
                    }
                    com.join.android.app.common.utils.l.i(simpleDraweeView, detialShowImageBean.getRemote().getPath(), com.facebook.drawee.drawable.s.c.f27284a);
                    textView.setVisibility(8);
                    this.N2.add(new z(false, viewInflate2, pic_position));
                    this.Q2.add(new ImageInfo(detialShowImageBean.getRemote().getPath()));
                }
            } else {
                for (int i12 = 0; i12 < modleFourBean.getGame_screen_shot().size(); i12++) {
                    View viewInflate3 = LayoutInflater.from(this.f56770i1).inflate(i10, (ViewGroup) this.f56779m, false);
                    ScreenshotGamedetialBean screenshotGamedetialBean = modleFourBean.getGame_screen_shot().get(i12);
                    SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) viewInflate3.findViewById(R.id.image);
                    TextView textView2 = (TextView) viewInflate3.findViewById(R.id.count);
                    if (pic_position == 1 && !this.L1) {
                        ConstraintLayout.LayoutParams layoutParams5 = (ConstraintLayout.LayoutParams) simpleDraweeView2.getLayoutParams();
                        ((ViewGroup.MarginLayoutParams) layoutParams5).rightMargin = (int) getResources().getDimension(R.dimen.wdp12);
                        viewInflate3.setLayoutParams(layoutParams5);
                    }
                    com.join.android.app.common.utils.l.i(simpleDraweeView2, screenshotGamedetialBean.getPic(), com.facebook.drawee.drawable.s.c.f27284a);
                    textView2.setText(screenshotGamedetialBean.getCount() + "图");
                    this.N2.add(new z(false, viewInflate3, pic_position));
                    this.Q2.add(new ImageInfo(screenshotGamedetialBean.getPic()));
                }
            }
            if (this.N2.size() == 1) {
                this.T.setVisibility(8);
                this.T.postInvalidate();
            }
            if (this.P2 == null) {
                this.P2 = new com.join.mgps.adapter.n1(this.f56770i1, pic_position, this.Q2);
            }
            this.U.setAdapter((ListAdapter) this.P2);
            B0();
            if (this.P2.getCount() > 0) {
                this.P2.c(0);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Click({R.id.iv_cloud_launch})
    void R0() {
        ModInfoBean mod_info = this.f56768h2.getMod_info();
        String mod_game_id = this.f56758d;
        if (mod_info != null) {
            mod_game_id = mod_info.getMod_game_id();
        }
        DownloadTask downloadTaskI = com.join.mgps.Util.w0.i(this.f56768h2);
        if (downloadTaskI == null) {
            return;
        }
        ExtBean typeCode = new ExtBean().setGameId(mod_game_id).setParent(this.f56760e).setTypeCode(EventP.TypeCode.cloudGame.name());
        EventP.ChatId chatId = EventP.ChatId.detail;
        ExtBean extBeanBuildScene = typeCode.setChatId(chatId.name()).setPapaPage(chatId.name()).setResourceId(mod_game_id).buildScene();
        UtilsMy.q4(this.f56770i1, downloadTaskI, "2", extBeanBuildScene);
        com.papa.sim.statistic.t.l(this.f56770i1).R1(Event.commonClick, extBeanBuildScene.toExt());
    }

    @Receiver(actions = {"com.broadcast.bespeak.sussess"})
    void S0(Intent intent) {
        if (intent != null) {
            String stringExtra = intent.getStringExtra("gameid");
            int intExtra = intent.getIntExtra("game_book", 0);
            String stringExtra2 = intent.getStringExtra("message");
            DomainInfoBean domainInfoBean = (DomainInfoBean) intent.getSerializableExtra("pd_info");
            j1(stringExtra, intExtra);
            if (intExtra == 1) {
                if (domainInfoBean != null) {
                    UtilsMy.D4(getContext(), domainInfoBean.getInfo(), "game_search_subscribe");
                }
                com.join.mgps.Util.h0.h0(getContext()).J(getContext(), domainInfoBean, stringExtra2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void U() {
        try {
            UserInfo accountData = AccountUtil_.getInstance_(this.f56770i1).getAccountData();
            LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
            linkedMultiValueMap.add("uid", Integer.valueOf(accountData.getUid()));
            linkedMultiValueMap.add(Constants.TOKEN, accountData.getToken());
            linkedMultiValueMap.add("group_id", R2);
            linkedMultiValueMap.add("game_id", this.f56758d);
            linkedMultiValueMap.add("game_title", S2);
            linkedMultiValueMap.add("device_id", this.f56787p1);
            linkedMultiValueMap.add("version", this.f56790q1);
            GameFromBooleanBean gameFromBooleanBeanA = this.f56798t2.A(linkedMultiValueMap);
            if (gameFromBooleanBeanA != null && gameFromBooleanBeanA.getError() == 0 && gameFromBooleanBeanA.getData().isState()) {
                showToast("收藏成功!");
                MApplication.f3167a2 = true;
            } else if (gameFromBooleanBeanA.getData().getCode() == 10002) {
                showToast("游戏重复!");
            } else if (10001 == gameFromBooleanBeanA.getData().getCode()) {
                showToast("游戏不存在!");
            } else {
                showToast("收藏失败!");
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void V(String id2, String game_id, d0 holder) {
        try {
            if (com.join.android.app.common.utils.m.j(this.f56770i1)) {
                LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
                linkedMultiValueMap.add("uid", Integer.valueOf(this.J2.getUid()));
                linkedMultiValueMap.add(Constants.TOKEN, this.J2.getToken());
                linkedMultiValueMap.add("group_id", id2);
                linkedMultiValueMap.add("game_id", game_id);
                linkedMultiValueMap.add("device_id", this.f56787p1);
                linkedMultiValueMap.add("version", this.f56790q1);
                GameFromBooleanBean gameFromBooleanBeanT = this.f56798t2.t(linkedMultiValueMap);
                if (gameFromBooleanBeanT != null && gameFromBooleanBeanT.getError() == 0 && gameFromBooleanBeanT.getData().isState()) {
                    showToast("已取消该收藏!");
                    MApplication.f3167a2 = true;
                } else {
                    showToast("取消收藏失败!");
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Click
    void W() {
        this.N.setVisibility(8);
        ((GamedetailVideoMainActivity_) getActivity()).shakeAnimback();
    }

    void W0(TextView mgListviewItemInstall, GamedetialModleFourBean collectionBeanSub) {
        try {
            mgListviewItemInstall.setTextColor(-1);
            int down_status = collectionBeanSub.getDown_status();
            collectionBeanSub.getPay_tag_info();
            String game_id = collectionBeanSub.getGame_id();
            collectionBeanSub.getDownload_source_switch_v2();
            mgListviewItemInstall.setEnabled(true);
            int iX0 = UtilsMy.x0(collectionBeanSub.getPay_tag_info(), collectionBeanSub.getCrc_sign_id());
            boolean z10 = UtilsMy.w0(iX0, game_id) > 0;
            if (down_status == 3 && !z10) {
                mgListviewItemInstall.setTextColor(-1);
                mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.download_status_pre_download));
                mgListviewItemInstall.setBackgroundResource(R.drawable.detial_simple_normal_selecter);
                mgListviewItemInstall.setVisibility(0);
                return;
            }
            if ((down_status == 2 || down_status == 6) && !z10) {
                mgListviewItemInstall.setText("即将开放");
                mgListviewItemInstall.setEnabled(false);
                mgListviewItemInstall.setTextColor(-1);
                mgListviewItemInstall.setBackgroundResource(R.drawable.detial_simple_grey_selecter);
                mgListviewItemInstall.setVisibility(0);
                return;
            }
            if (down_status == 6 && !z10) {
                mgListviewItemInstall.setText("预约");
                mgListviewItemInstall.setBackgroundResource(R.drawable.detial_simple_normal_selecter);
                mgListviewItemInstall.setVisibility(0);
                return;
            }
            if (!this.V1) {
                mgListviewItemInstall.setText(t0(mgListviewItemInstall.getResources().getString(R.string.download_status_download)));
            } else if (com.join.mgps.Util.d1.c() && this.f56768h2.isCpsGame()) {
                mgListviewItemInstall.setText(t0(mgListviewItemInstall.getResources().getString(R.string.download_status_finished)));
            } else {
                mgListviewItemInstall.setText(t0(mgListviewItemInstall.getResources().getString(R.string.download_status_free)));
            }
            if (iX0 > 0) {
                mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.pay_game_amount, com.join.mgps.Util.t2.n(iX0)));
                return;
            }
            mgListviewItemInstall.setTextColor(-1);
            if (this.V1 && com.join.mgps.Util.d1.c() && this.f56768h2.isCpsGame()) {
                mgListviewItemInstall.setBackgroundResource(R.drawable.detial_simple_open_selecter);
            } else {
                mgListviewItemInstall.setBackgroundResource(R.drawable.detial_simple_normal_selecter);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void X() {
        try {
            XListView2 xListView2 = this.f56791q2;
            if (xListView2 != null) {
                xListView2.l();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void X0(float bgAlpha) {
        WindowManager.LayoutParams attributes = this.f56770i1.getWindow().getAttributes();
        attributes.alpha = bgAlpha;
        if (bgAlpha == 1.0f) {
            this.f56770i1.getWindow().clearFlags(2);
        } else {
            this.f56770i1.getWindow().addFlags(2);
        }
        this.f56770i1.getWindow().setAttributes(attributes);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Y0(d0 holder) {
        holder.f56824b.setBackgroundResource(R.drawable.follow_none_image);
    }

    @Click
    void Z0() {
        ShareBean shareBean = new ShareBean();
        String share_url = this.f56768h2.getShare_url();
        shareBean.setqZoneShareUrl(share_url);
        shareBean.setQqUrl(share_url);
        shareBean.setWechatFriendUrl(share_url);
        shareBean.setWechatShareUrl(share_url);
        shareBean.setWeiboShareUrl(share_url);
        shareBean.setTitle(this.f56768h2.getGame_name());
        shareBean.setText(this.f56768h2.getInfo());
        shareBean.setImageUrl(this.f56768h2.getIco_remote());
        shareBean.setFrom(2);
        shareBean.setGameId(this.f56768h2.getGame_id());
        if (this.f56768h2.getShare_config() != null && this.f56768h2.getShare_config().getShare_switch() == 1) {
            shareBean.setIntentData(this.f56768h2.getShare_config().getJump_info());
        }
        com.join.mgps.Util.w.r(this.f56770i1, shareBean);
    }

    @Click
    void a1() {
        ShareBean shareBean = new ShareBean();
        String share_url = this.f56768h2.getShare_url();
        shareBean.setqZoneShareUrl(share_url);
        shareBean.setQqUrl(share_url);
        shareBean.setWechatFriendUrl(share_url);
        shareBean.setWechatShareUrl(share_url);
        shareBean.setWeiboShareUrl(share_url);
        shareBean.setImageUrl(this.f56768h2.getIco_remote());
        shareBean.setTitle(this.f56768h2.getGame_name());
        shareBean.setText(this.f56768h2.getInfo());
        shareBean.setFrom(2);
        shareBean.setGameId(this.f56768h2.getGame_id());
        if (this.f56768h2.getShare_config() != null && this.f56768h2.getShare_config().getShare_switch() == 1) {
            shareBean.setIntentData(this.f56768h2.getShare_config().getJump_info());
        }
        com.join.mgps.Util.w.r(this.f56770i1, shareBean);
    }

    void addFrom(DownloadTask downloadTask) {
        ExtBean extBean = this.f56760e;
        if (extBean == null || TextUtils.isEmpty(extBean.getFrom()) || downloadTask == null) {
            return;
        }
        if (!"112".equals(this.f56760e.getFrom())) {
            downloadTask.setExt(JsonMapper.toJsonString(this.f56760e.toExt()));
            return;
        }
        this.f56760e.setPosition("112");
        ExtBean extBean2 = this.f56760e;
        extBean2.setLocation(extBean2.getLocation());
        downloadTask.setExt(JsonMapper.toJsonString(this.f56760e.toExt()));
    }

    @AfterViews
    void afterView() {
        Resources resources;
        int i10;
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f56758d = arguments.getString("gameId");
            this.f56762f = arguments.getBoolean(GamedetailVideoMainActivity_.AUTODOWN_EXTRA);
            this.f56755b2 = arguments.getBoolean(EndGameDetailActivity_.IS_FROM_VIDEO_EXTRA);
            this.f56754b1 = arguments.getBoolean(GamedetailVideoMainActivity_.IS_SHOW_COMMENT_EXTRA);
            this.f56760e = (ExtBean) arguments.getSerializable("extBean");
        }
        this.f56802v1 = this.f56756c + System.currentTimeMillis();
        if (this.f56755b2) {
            this.f56802v1 = "PapaMainAdapter";
        }
        if (this.f56760e == null) {
            this.f56760e = new ExtBean();
        }
        GamedetailVideoMainActivity gamedetailVideoMainActivity = (GamedetailVideoMainActivity) getActivity();
        this.f56770i1 = gamedetailVideoMainActivity;
        if (gamedetailVideoMainActivity.gethideOrshowCover()) {
            this.N.setVisibility(0);
        } else {
            this.N.setVisibility(8);
        }
        this.J.setVisibility(8);
        this.K.setVisibility(8);
        this.I.setVisibility(8);
        this.f56763f1 = com.join.mgps.rpc.impl.d.O1();
        this.f56796s2 = com.join.mgps.rpc.impl.a.c0();
        this.f56798t2 = com.join.mgps.rpc.impl.a.c0();
        com.join.mgps.Util.j0.a().d(this);
        RequestBeanUtil.getInstance(this.f56770i1);
        this.f56790q1 = RequestBeanUtil.getVersionAndVersionName();
        this.f56757c2 = E0(this.f56770i1);
        this.f56759d2 = s0(this.f56770i1);
        this.f56761e2 = w0(this.f56770i1);
        this.f56777l1 = new com.join.android.app.common.manager.b(this.f56770i1);
        this.f56770i1.getWindow().setFlags(67108864, 67108864);
        this.f56777l1.m(true);
        this.f56777l1.n(R.color.black_alpha);
        View childAt = ((ViewGroup) this.f56770i1.findViewById(android.R.id.content)).getChildAt(0);
        if (childAt != null) {
            ViewCompat.setFitsSystemWindows(childAt, false);
        }
        getResources().getDimensionPixelSize(getResources().getIdentifier("status_bar_height", "dimen", "android"));
        GamedetailVideoMainActivity gamedetailVideoMainActivity2 = this.f56770i1;
        com.join.mgps.Util.p2.c(gamedetailVideoMainActivity2, com.join.mgps.Util.p2.d(gamedetailVideoMainActivity2));
        Window window = getActivity().getWindow();
        window.clearFlags(67108864);
        window.getDecorView().setSystemUiVisibility(LogType.UNEXP_ANR);
        window.addFlags(Integer.MIN_VALUE);
        window.setStatusBarColor(0);
        GamedetialModleFourBean modleFourBeanShow = ((GamedetailVideoMainActivity) getActivity()).getModleFourBeanShow();
        if (modleFourBeanShow != null) {
            this.J.setVisibility(8);
            this.K.setVisibility(8);
            this.I.setVisibility(0);
            q1(modleFourBeanShow);
        } else {
            o0();
        }
        this.f56764f2 = getStatusBarHeight(this.f56770i1);
        this.H.getBackground().setAlpha(0);
        CollapsingToolbarLayout.LayoutParams layoutParams = (CollapsingToolbarLayout.LayoutParams) this.H.getLayoutParams();
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.O.getLayoutParams();
        layoutParams2.height = this.f56764f2;
        this.O.setLayoutParams(layoutParams2);
        ((FrameLayout.LayoutParams) layoutParams).height = getResources().getDimensionPixelOffset(R.dimen.wdp98) + this.f56764f2;
        this.H.setLayoutParams(layoutParams);
        if (this.L1) {
            resources = getResources();
            i10 = R.dimen.wdp1000;
        } else {
            resources = getResources();
            i10 = R.dimen.wdp300;
        }
        this.f56785p.addOnOffsetChangedListener((AppBarLayout.OnOffsetChangedListener) new k(resources.getDimensionPixelOffset(i10)));
        CoordinatorLayout coordinatorLayout = this.I;
        if (coordinatorLayout instanceof CoordinatorLayout) {
            coordinatorLayout.setSheetLayout(this.P);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void b1(QueryDownloadInfoResponseData resourceData) {
        if (resourceData != null) {
            ((DownloadMethodMultiDialog_.k) ((DownloadMethodMultiDialog_.k) ((DownloadMethodMultiDialog_.k) DownloadMethodMultiDialog_.intent(this.f56770i1).flags(805306368)).i(this.f56758d).extra("data", resourceData)).extra("fromRecomDown", false)).k(resourceData.isForceShow()).j(true).start();
        }
    }

    @Override // com.join.mgps.activity.gamedetail.BaseGameDetailFragment
    public void backpressedTofinishActivity() {
        StandardVideoView standardVideoView = this.f56769i;
        if (standardVideoView == null) {
            return;
        }
        standardVideoView.taskShotPic(new b());
        if (this.f56769i.getTimeHas() < 2000) {
            this.f56769i.onAutoCompletion();
        }
        com.join.android.app.component.video.i.f(this.f56769i);
        this.f56769i.getGSYVideoManager().z(this.f56769i);
        this.f56811z2 = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void c1(String sre) {
        Toast.makeText(this.f56770i1, sre, 0).show();
    }

    void changeDownloadTaskNumber(DownloadTask task, int from) {
        if (task == null) {
            return;
        }
        String crc_link_type_val = task.getCrc_link_type_val();
        if (from == 2) {
            if (!this.K2.containsKey(crc_link_type_val)) {
                this.K2.put(crc_link_type_val, task);
            }
            if (!this.L2.containsKey(crc_link_type_val)) {
                this.L2.put(crc_link_type_val, task);
            }
        } else if (from != 3) {
            if (from != 5) {
                if (from != 6) {
                    if (from == 7) {
                        if (this.K2.containsKey(crc_link_type_val)) {
                            this.K2.remove(crc_link_type_val);
                        }
                        if (this.L2.containsKey(crc_link_type_val)) {
                            this.L2.remove(crc_link_type_val);
                        }
                    } else if (from == 10) {
                        if (!this.K2.containsKey(crc_link_type_val)) {
                            this.K2.put(crc_link_type_val, task);
                        }
                        if (!this.L2.containsKey(crc_link_type_val)) {
                            this.L2.put(crc_link_type_val, task);
                        }
                    } else if (from == 11) {
                    }
                } else if (this.L2.containsKey(crc_link_type_val)) {
                    this.L2.remove(crc_link_type_val);
                }
            } else if (this.K2.containsKey(crc_link_type_val)) {
                this.K2.remove(crc_link_type_val);
            }
            if (this.L2.containsKey(crc_link_type_val)) {
                this.L2.remove(crc_link_type_val);
            }
        } else if (this.L2.containsKey(crc_link_type_val)) {
            this.L2.remove(crc_link_type_val);
        }
        updateDownloadView();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void changeGameFollow(int type) {
        String str;
        ResultMainBean resultMainBeanJ1;
        if (com.join.android.app.common.utils.m.j(this.f56770i1)) {
            UserInfo accountData = AccountUtil_.getInstance_(this.f56770i1).getAccountData();
            this.J2 = accountData;
            int uid = accountData != null ? accountData.getUid() : 0;
            try {
                PackageInfo packageInfo = this.f56770i1.getPackageManager().getPackageInfo(this.f56770i1.getPackageName(), 0);
                str = packageInfo.versionCode + "_" + packageInfo.versionName;
            } catch (PackageManager.NameNotFoundException e10) {
                e10.printStackTrace();
                str = "";
            }
            RequestdetialFolowAndBeSpeak requestdetialFolowAndBeSpeak = new RequestdetialFolowAndBeSpeak();
            requestdetialFolowAndBeSpeak.setApp_ver(str);
            requestdetialFolowAndBeSpeak.setGame_id(this.f56768h2.getCrc_sign_id());
            requestdetialFolowAndBeSpeak.setUid(uid);
            requestdetialFolowAndBeSpeak.setMobile(this.J2.getMobile());
            CommonRequestBean<RequestGameIdArgs> detialFollowAnd = RequestBeanUtil.getInstance(this.f56770i1).getDetialFollowAnd(requestdetialFolowAndBeSpeak);
            if (type == 1) {
                resultMainBeanJ1 = this.f56763f1.j1(detialFollowAnd);
            } else if (type == 2) {
                resultMainBeanJ1 = this.f56763f1.n(detialFollowAnd);
            } else if (type != 3) {
                resultMainBeanJ1 = type != 4 ? null : this.f56763f1.M0(detialFollowAnd);
            } else {
                resultMainBeanJ1 = this.f56763f1.g(detialFollowAnd);
            }
            if (resultMainBeanJ1 != null) {
                updateTitleButn(resultMainBeanJ1, type);
            }
        }
    }

    void d0() {
        this.A2.setKeyword(Where.detail.name());
        if (this.f56768h2 != null) {
            addFrom(this.A2);
            if (this.f56768h2.getGame_detailed() != null && com.join.mgps.Util.t2.i(this.f56768h2.getGame_detailed().getTpl_two_qq())) {
                com.join.mgps.Util.h0.h0(this.f56770i1).d0(this.f56770i1, this.f56768h2.getGame_detailed().getTpl_two_qq_key(), this.f56768h2.getGame_detailed().getAd_pic_qq(), this.f56768h2.getGame_detailed().getTpl_two_qq());
            }
            if (UtilsMy.z0(this.f56768h2.getPay_tag_info(), this.f56768h2.getCrc_sign_id()) <= 0) {
                UtilsMy.D1(this.A2, this.f56768h2);
                if (UtilsMy.o1(this.f56770i1, this.A2)) {
                    return;
                }
                if (this.f56768h2.getDown_status() == 5) {
                    UtilsMy.l1(this.f56770i1, this.A2);
                    return;
                } else {
                    UtilsMy.U0(this.f56770i1, this.A2, this.f56768h2.getTp_down_url(), this.f56768h2.getOther_down_switch(), this.f56768h2.getCdn_down_switch());
                    return;
                }
            }
            ExtBean extBean = this.f56760e;
            if (extBean != null && "checkgame".equals(extBean.getFrom())) {
                UtilsMy.A4(this.f56770i1, this.f56758d, this.f56760e.getFrom_id());
                return;
            }
            if (!UtilsMy.o1(this.f56770i1, this.A2)) {
                if (this.f56768h2.getDown_status() == 5) {
                    UtilsMy.l1(this.f56770i1, this.A2);
                } else {
                    UtilsMy.z4(this.f56770i1, this.f56758d);
                }
            }
            onDetailDownload();
        }
    }

    void d1(View view) {
        if (this.P == null || view == null) {
            return;
        }
        view.setPadding(0, getStatusBarHeight(this.f56770i1), 0, 0);
        this.P.I(view);
        this.P.setFocusable(true);
        this.P.setFocusableInTouchMode(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void e0(GameFromPopoWinBean data) {
        for (int i10 = 0; i10 < data.getData().size(); i10++) {
            this.f56807x2.add(data.getData().get(i10));
        }
        if (data.getData().size() < 10 && this.f56791q2 != null) {
            i1();
        }
        c0 c0Var = this.f56794r2;
        if (c0Var != null) {
            c0Var.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 4000)
    public void e1() {
        com.join.mgps.Util.e.g(this.R);
        if (isDetached()) {
            return;
        }
        e1();
    }

    @Click
    void f0() {
        if (this.P.getState() != BottomSheetLayout.State.HIDDEN) {
            this.P.r();
        } else {
            this.f56770i1.clickBack();
            x0();
        }
    }

    void f1() {
        try {
            this.C2.setImageResource(R.drawable.line_blue_bg);
            Animation animationLoadAnimation = AnimationUtils.loadAnimation(this.f56770i1, R.anim.img_translate);
            this.G2 = animationLoadAnimation;
            animationLoadAnimation.setFillAfter(true);
            this.F2.setVisibility(0);
            this.F2.startAnimation(this.G2);
            this.G2.setAnimationListener(new f());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void g0() {
        try {
            this.H2 = q5.f.M().V();
            int iD0 = q5.f.M().d0();
            this.I2 = iD0;
            l1(iD0);
            int i10 = this.H2;
            if (i10 != 0) {
                k1(i10);
            } else {
                n1();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        updateDownloadView();
    }

    void g1() {
        try {
            this.F2.clearAnimation();
            this.F2.setVisibility(8);
            this.C2.setImageResource(R.drawable.line_white_bg);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getDownloadTaskInfo() {
        List<DownloadTask> listR = q5.f.M().r();
        List<DownloadTask> listQ = q5.f.M().q();
        if (listQ != null && listQ.size() > 0) {
            for (DownloadTask downloadTask : listQ) {
                this.K2.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
        if (listR != null && listR.size() > 0) {
            for (DownloadTask downloadTask2 : listR) {
                this.L2.put(downloadTask2.getCrc_link_type_val(), downloadTask2);
            }
        }
        updateDownloadView();
    }

    @Override // com.join.mgps.activity.gamedetail.BaseGameDetailFragment
    public ViewPager getViewPager() {
        return this.f56776l;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void h0() {
        if (this.f56807x2.size() > 0) {
            this.f56807x2.clear();
            c0 c0Var = this.f56794r2;
            if (c0Var != null) {
                c0Var.notifyDataSetChanged();
            }
        }
    }

    @Click
    void h1() {
        IntentUtil.getInstance().goMyGameManagerActivity(this.f56770i1);
    }

    @Override // com.join.mgps.activity.gamedetail.BaseGameDetailFragment
    public void hideCover() {
        this.N.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 600)
    public void i0(String videoUrl) {
        StandardVideoView standardVideoView;
        if (this.M2 || (standardVideoView = this.f56769i) == null || !standardVideoView.i()) {
            return;
        }
        if (this.f56755b2) {
            this.f56769i.setSurfaceToPlay();
        } else {
            this.f56770i1.autoPlayVideo(this.f56769i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void i1() {
        XListView2 xListView2 = this.f56791q2;
        if (xListView2 != null) {
            try {
                xListView2.g();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    void initView() {
        try {
            this.L.setVisibility(8);
            this.G.setText(this.f56766g2.getGame_name());
            D0();
            if (!com.join.mgps.Util.t2.i(this.f56766g2.getGame_info_top_video_url()) && !com.join.mgps.Util.t2.i(this.f56766g2.getGame_info_top_pic())) {
                this.f56792r.setVisibility(0);
                this.f56795s.setVisibility(8);
                this.f56797t.setVisibility(8);
                this.H.getBackground().setAlpha(255);
            }
            GamedetialModleFourBean gamedetialModleFourBean = this.f56766g2;
            if (gamedetialModleFourBean != null) {
                if (com.join.mgps.Util.t2.i(gamedetialModleFourBean.getCompany_name())) {
                    this.Q.setOnClickListener(new c());
                }
                if (this.f56766g2.getShare_config() == null || this.f56766g2.getShare_config().getShare_switch() != 1) {
                    this.Q.setVisibility(8);
                } else {
                    this.Q.setVisibility(0);
                    com.join.android.app.common.utils.l.d(this.R, R.drawable.user_gift, "");
                    this.Q.setOnClickListener(new d());
                }
                if (this.f56766g2.getActivity_entry() != null) {
                    this.Q.setVisibility(0);
                    com.join.android.app.common.utils.l.h(this.R, this.f56766g2.getActivity_entry().getPic());
                    this.S.setText(this.f56766g2.getActivity_entry().getTitle());
                    e1();
                    this.Q.setOnClickListener(new e());
                } else {
                    this.Q.setVisibility(8);
                }
                if (this.V1) {
                    this.Z = new PcGameInfoCardView(this.f56770i1);
                } else {
                    this.Z = new GameInfoCardView(this.f56770i1);
                }
                FrameLayout frameLayout = this.Y;
                if (frameLayout != null) {
                    frameLayout.addView(this.Z.getContentView());
                }
                this.Z.setGameInfoCallback(this);
                this.Z.a(this.f56766g2);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Click
    void instalButtomButn() {
        boolean z10;
        int game_book = this.f56768h2.getGame_book();
        if (this.f56768h2.getBespeak_switch() == 1 && game_book != 1 && this.f56768h2.getDown_status() == 2) {
            if (IntentUtil.getInstance().goLoginNetGame(this.f56770i1) || this.f56768h2.getGame_book() == 1) {
                return;
            }
            changeGameFollow(4);
            return;
        }
        if (this.V1) {
            com.papa.sim.statistic.t.l(getContext()).R1(Event.clickPcDetailHomeBtn, new Ext().setFrom("1").setGameId(this.f56758d).setQkPosition(com.kuaishou.weapon.p0.t.f74899x));
        }
        if (("" + this.f56768h2.getPlugin_num()).equals("" + ConstantIntEnum.H5.value())) {
            IntentUtil.getInstance().goShareWebActivity(this.f56770i1, this.f56768h2.getDown_url_remote());
            UtilsMy.j3(this.A2, this.f56770i1);
        }
        DownloadTask downloadTask = this.A2;
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        if (this.A2 != null && UtilsMy.x0(this.f56768h2.getPay_tag_info(), this.f56768h2.getCrc_sign_id()) > 0) {
            status = 43;
        }
        if (this.V1 && com.join.mgps.Util.d1.c() && this.f56768h2.isCpsGame()) {
            com.join.mgps.Util.d1.b();
            return;
        }
        GamedetialModleFourBean gamedetialModleFourBean = this.f56768h2;
        if (gamedetialModleFourBean != null && gamedetialModleFourBean.getMod_info() != null) {
            List<DownloadTask> listH = q5.f.M().H(this.f56768h2.getMod_info().getMain_game_id(), this.f56768h2.getMod_info().getMod_game_id());
            if (listH == null || listH.size() <= 0) {
                this.A2 = null;
            } else {
                boolean z11 = false;
                loop0: while (true) {
                    z10 = false;
                    for (DownloadTask downloadTask2 : listH) {
                        if (Dtype.MOD.name().equals(downloadTask2.getFileType())) {
                            z11 = com.join.mgps.va.overmind.i.q().K(downloadTask2.getPackageName()) && downloadTask2.getStatus() == 5;
                        } else if (com.join.android.app.common.utils.g.t0(getContext()).e(getContext(), downloadTask2.getPackageName()) && downloadTask2.getStatus() == 5) {
                            z10 = true;
                        }
                    }
                    break loop0;
                }
                if (z11 && z10) {
                    this.A2 = q5.f.M().G(this.f56758d);
                } else if (z11) {
                    if (this.f56768h2.getMod_info() != null) {
                        this.A2 = q5.f.M().G(this.f56768h2.getMod_info().getMod_game_id());
                    }
                } else if (z10) {
                    this.A2 = q5.f.M().G(this.f56758d);
                } else {
                    if (this.f56768h2.getMod_info() != null) {
                        this.A2 = q5.f.M().G(this.f56768h2.getMod_info().getMod_game_id());
                    }
                    if (this.A2 == null) {
                        this.A2 = q5.f.M().G(this.f56758d);
                    }
                }
            }
        }
        DownloadTask downloadTask3 = this.A2;
        if (downloadTask3 == null || downloadTask3.getStatus() == 0) {
            this.f56766g2.setReMarks(this.f56760e.getReMarks());
            this.f56768h2.setDownType(0);
            this.f56768h2.setExt(JsonMapper.getInstance().toJson(this.f56760e.buildScene().toExt()));
            UtilsMy.d1(this.f56770i1, this.f56768h2);
            return;
        }
        DownloadTask downloadTask4 = this.A2;
        if (downloadTask4 != null && (status == 2 || status == 10)) {
            com.php25.PDownload.d.i(downloadTask4);
        } else {
            if (status == 12 || status == 27) {
                return;
            }
            if (status == 13) {
                com.php25.PDownload.d.l(this.f56770i1, downloadTask4);
                return;
            }
            if (status == 5) {
                UtilsMy.p4(this.f56770i1, downloadTask4, "2");
            } else if (status == 42) {
                downloadTask4.setVer(this.f56768h2.getVer());
                this.A2.setVer_name(this.f56768h2.getVer_name());
                this.A2.setUrl(this.f56768h2.getDown_url_remote());
                this.A2.setCfg_ver(this.f56768h2.getCfg_ver());
                this.A2.setCfg_ver_name(this.f56768h2.getCfg_ver_name());
                this.A2.setCfg_down_url(this.f56768h2.getCfg_down_url());
                this.A2.setPay_game_amount(this.f56768h2.getPay_tag_info() != null ? this.f56768h2.getPay_tag_info().getPay_game_amount() : 0);
                DownloadTask downloadTask5 = this.A2;
                Where where = Where.detail;
                downloadTask5.setKeyword(where.name());
                this.A2.setKeyword(where.name());
                DownloadTask downloadTask6 = this.A2;
                UtilsMy.W4(downloadTask6, downloadTask6.getCrc_link_type_val());
                UtilsMy.O4(this.f56770i1, this.A2);
            } else if (status == 9) {
                if (!com.join.android.app.common.utils.m.j(this.f56770i1)) {
                    ToastManager.show("无网络连接");
                    return;
                }
                if (this.f56768h2.getGame_detailed() != null && com.join.mgps.Util.t2.i(this.f56768h2.getGame_detailed().getTpl_two_qq())) {
                    com.join.mgps.Util.h0.h0(this.f56770i1).d0(this.f56770i1, this.f56768h2.getGame_detailed().getTpl_two_qq_key(), this.f56768h2.getGame_detailed().getAd_pic_qq(), this.f56768h2.getGame_detailed().getTpl_two_qq());
                }
                int downloadType = this.A2.getDownloadType();
                if (downloadType == 0 || downloadType == 1) {
                    if (this.A2.getCrc_link_type_val() == null || this.A2.getCrc_link_type_val().equals("")) {
                        return;
                    }
                    addFrom(this.A2);
                    if (UtilsMy.o1(this.f56770i1, this.A2)) {
                        return;
                    }
                    if (this.f56768h2.getDown_status() == 5) {
                        UtilsMy.l1(this.f56770i1, this.A2);
                        return;
                    }
                    com.php25.PDownload.d.b(this.A2);
                    this.A2.setVer(this.f56768h2.getVer());
                    this.A2.setVer_name(this.f56768h2.getVer_name());
                    this.A2.setUrl(this.f56768h2.getDown_url_remote());
                    this.A2.setCfg_ver(this.f56768h2.getCfg_ver());
                    this.A2.setCfg_ver_name(this.f56768h2.getCfg_ver_name());
                    this.A2.setCfg_down_url(this.f56768h2.getCfg_down_url());
                    this.A2.setPay_game_amount(this.f56768h2.getPay_tag_info() != null ? this.f56768h2.getPay_tag_info().getPay_game_amount() : 0);
                    this.A2.setKeyword(Where.detail.name());
                    DownloadTask downloadTask7 = this.A2;
                    UtilsMy.W4(downloadTask7, downloadTask7.getCrc_link_type_val());
                    if (UtilsMy.z0(this.f56768h2.getPay_tag_info(), this.f56768h2.getCrc_sign_id()) > 0) {
                        ExtBean extBean = this.f56760e;
                        if (extBean == null || !"checkgame".equals(extBean.getFrom())) {
                            if (!UtilsMy.o1(this.f56770i1, this.A2)) {
                                if (this.f56768h2.getDown_status() == 5) {
                                    UtilsMy.l1(this.f56770i1, this.A2);
                                } else {
                                    UtilsMy.z4(this.f56770i1, this.f56758d);
                                }
                            }
                            onDetailDownload();
                        } else {
                            UtilsMy.A4(this.f56770i1, this.f56758d, this.f56760e.getFrom_id());
                        }
                    } else {
                        UtilsMy.D1(this.A2, this.f56768h2);
                        if (!UtilsMy.o1(this.f56770i1, this.A2)) {
                            if (this.f56768h2.getDown_status() == 5) {
                                UtilsMy.l1(this.f56770i1, this.A2);
                            } else {
                                UtilsMy.U0(this.f56770i1, this.A2, this.f56768h2.getTp_down_url(), this.f56768h2.getOther_down_switch(), this.f56768h2.getCdn_down_switch());
                            }
                        }
                        onDetailDownload();
                    }
                } else if (downloadType == 2) {
                    UtilsMy.R4(this.A2);
                }
            } else if (11 == status) {
                UtilsMy.w4(downloadTask4, this.f56770i1);
            } else if (43 == status || 48 != status) {
                d0();
            }
        }
        updateButn();
    }

    @Click
    void iv_back() {
        if (this.P.getState() != BottomSheetLayout.State.HIDDEN) {
            this.P.r();
            return;
        }
        U0();
        this.f56770i1.clickBack();
        x0();
    }

    @Click
    void j0() {
        IntentUtil.getInstance().goMyGameManagerActivity(this.f56770i1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void j1(String gameId, int game_book) {
        GamedetialModleFourBean gamedetialModleFourBean;
        if (com.join.mgps.Util.t2.h(gameId) || (gamedetialModleFourBean = this.f56768h2) == null || this.f56799u == null) {
            return;
        }
        gamedetialModleFourBean.setGame_book(game_book);
        UtilsMy.E3(this.f56799u, this.f56768h2);
    }

    void k0() {
        DownloadTask downloadtaskDown = this.f56766g2.getDownloadtaskDown();
        UtilsMy.W4(downloadtaskDown, downloadtaskDown.getCrc_link_type_val());
        UtilsMy.D1(downloadtaskDown, this.f56766g2);
        if (UtilsMy.o1(this.f56770i1, downloadtaskDown)) {
            return;
        }
        if (this.f56766g2.getDown_status() == 5) {
            UtilsMy.l1(this.f56770i1, downloadtaskDown);
        } else {
            UtilsMy.U0(this.f56770i1, downloadtaskDown, this.f56766g2.getTp_down_url(), this.f56766g2.getOther_down_switch(), this.f56766g2.getCdn_down_switch());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void k1(int number) {
        try {
            if (number < 100) {
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.B2.getLayoutParams();
                layoutParams.width = getResources().getDimensionPixelOffset(R.dimen.wdp24);
                layoutParams.height = getResources().getDimensionPixelOffset(R.dimen.wdp24);
                this.B2.setLayoutParams(layoutParams);
                this.B2.setCompoundDrawables(null, null, null, null);
                this.B2.setBackgroundResource(R.drawable.mygame_big_round);
                this.B2.setPadding(1, 0, 0, 1);
            } else {
                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.B2.getLayoutParams();
                layoutParams2.width = getResources().getDimensionPixelOffset(R.dimen.dp70);
                layoutParams2.height = getResources().getDimensionPixelOffset(R.dimen.round_large_size);
                layoutParams2.setMargins(4, (int) TypedValue.applyDimension(1, 7.0f, getResources().getDisplayMetrics()), 0, 0);
                this.B2.setGravity(17);
                this.B2.setLayoutParams(layoutParams2);
                this.B2.setCompoundDrawables(null, null, null, null);
                this.B2.setBackgroundResource(R.drawable.message_round);
                this.B2.setPadding(1, 0, 2, 1);
            }
            this.B2.setVisibility(0);
            this.B2.setText(number + "");
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void l0(Context context, String type) {
        DownloadTask downloadTaskG = q5.f.M().G(this.f56766g2.getGame_id());
        if (downloadTaskG == null || TextUtils.isEmpty(type)) {
            k0();
            return;
        }
        if (downloadTaskG.getStatus() == 5) {
            com.join.mgps.Util.a3.b(getContext()).d(context.getResources().getString(R.string.game_detail_down_status, type));
        } else if (downloadTaskG.getStatus() == 43 || downloadTaskG.getStatus() == 9 || downloadTaskG.getStatus() == 0) {
            k0();
        } else {
            com.join.mgps.Util.a3.b(getContext()).d(context.getResources().getString(R.string.game_detail_downing_status, type));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void l1(int downloadingNumber) {
        if (downloadingNumber == 0) {
            g1();
        } else {
            f1();
        }
    }

    @Click
    void m0() {
        IntentUtil.getInstance().goMyGameManagerActivity(this.f56770i1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void m1() {
        XListView2 xListView2 = this.f56791q2;
        if (xListView2 != null) {
            try {
                xListView2.u();
                this.f56791q2.v();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Click
    void n0() {
        if (AccountUtil_.getInstance_(this.f56770i1).isTourist()) {
            ((LoginSplashActivity_.IntentBuilder_) LoginSplashActivity_.intent(this.f56770i1).flags(C.ENCODING_PCM_MU_LAW)).start();
        } else {
            C0();
            p0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void n1() {
        try {
            g1();
            this.B2.setVisibility(8);
            this.B2.setText("");
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void o0() {
        GamedetialModleFourBean data;
        if (!com.join.android.app.common.utils.m.j(this.f56770i1)) {
            showLodingFailed();
            return;
        }
        try {
            UserInfo accountData = AccountUtil_.getInstance_(this.f56770i1).getAccountData();
            if (accountData == null) {
                accountData = UserInfo.getDefaultInstance();
            }
            RequestModel requestModel = new RequestModel();
            requestModel.setDefault(this.f56770i1);
            RequestGameIdArgs requestGameIdArgs = new RequestGameIdArgs(this.f56758d, 1, accountData.getUid());
            requestGameIdArgs.setDownloadedGameIdList(q5.f.M().B());
            requestModel.setArgs(requestGameIdArgs);
            ResponseModel<GamedetialModleFourBean> responseModelBody = com.join.mgps.rpc.impl.i.P0().N0().e0(requestModel.makeSign()).execute().body();
            if (responseModelBody == null || responseModelBody.getCode() != 200 || (data = responseModelBody.getData()) == null) {
                showLodingFailed();
            } else {
                q1(data);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            showLodingFailed();
        }
    }

    void o1() {
        showInstallButn();
        this.f56799u.setTextColor(getResources().getColor(R.color.white));
        if (this.f56799u != null) {
            if (UtilsMy.x0(this.f56768h2.getPay_tag_info(), this.f56768h2.getCrc_sign_id()) > 0) {
                this.f56799u.setText(this.f56770i1.getResources().getString(R.string.pay_game_amount, this.f56768h2.getPay_tag_info().getPayGameAmount()));
            } else {
                if (!this.V1) {
                    this.f56799u.setText(t0(this.f56770i1.getResources().getString(R.string.download_status_download)));
                } else if (com.join.mgps.Util.d1.c() && this.f56768h2.isCpsGame()) {
                    this.f56799u.setText(t0(getResources().getString(R.string.download_status_finished)));
                } else {
                    this.f56799u.setText(t0(getResources().getString(R.string.download_status_free)));
                }
                this.f56799u.setTextColor(getResources().getColor(R.color.detail_download_normal_txt));
                this.f56799u.setBackgroundResource(R.drawable.detial_simple_normal_selecter1);
            }
        }
        this.f56806x.setImageResource(R.drawable.detail_comment_download_continue);
        GamedetialModleFourBean gamedetialModleFourBean = this.f56768h2;
        if (gamedetialModleFourBean == null || this.f56799u == null) {
            return;
        }
        if (gamedetialModleFourBean.getBespeak_switch() != 1 || (this.f56768h2.getDown_status() != 2 && this.f56768h2.getDown_status() != 6)) {
            UtilsMy.x0(this.f56768h2.getPay_tag_info(), this.f56768h2.getCrc_sign_id());
            W0(this.f56799u, this.f56768h2);
        } else {
            if (this.f56768h2.getGame_book() != 1) {
                this.f56799u.setText("预约");
                return;
            }
            this.f56799u.setText("已预约");
            UtilsMy.x0(this.f56768h2.getPay_tag_info(), this.f56768h2.getCrc_sign_id());
            W0(this.f56799u, this.f56768h2);
        }
    }

    @Override // com.join.mgps.activity.gamedetail.BaseGameDetailFragment
    public boolean onBackPressedMy() {
        if (com.join.android.app.component.video.a.c0(this.f56770i1, this.f56802v1)) {
            return true;
        }
        BottomSheetLayout bottomSheetLayout = this.P;
        if (bottomSheetLayout == null || bottomSheetLayout.getState() == BottomSheetLayout.State.HIDDEN) {
            return false;
        }
        this.P.r();
        return true;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        U0();
        com.join.mgps.Util.j0.a().e(this);
        super.onDestroy();
    }

    void onDetailDownload() {
        ExtBean extBean = this.f56760e;
        if (extBean == null || TextUtils.isEmpty(extBean.getFrom()) || !this.f56760e.getFrom().equals("downloadCenter")) {
            return;
        }
        MobclickAgentKt.onEvent(this.f56770i1, "detailDownload4.2.0.6");
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    void onDownloadSpeed(com.join.mgps.event.q event) {
        if (event == null || TextUtils.isEmpty(event.a()) || this.L1) {
            return;
        }
        ProgressBar progressBar = this.f56810z;
        if (progressBar instanceof DownloadProgressBar) {
            ((DownloadProgressBar) progressBar).update(event.a(), 1);
        }
    }

    /* JADX WARN: Code duplicated, block: B:54:0x010b  */
    /* JADX WARN: Code duplicated, block: B:56:0x010f  */
    /* JADX WARN: Code duplicated, block: B:60:0x0125  */
    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.r downloadTaskEvent) {
        DownloadTask downloadTaskA = downloadTaskEvent.a();
        changeDownloadTaskNumber(downloadTaskA, downloadTaskEvent.c());
        if (downloadTaskA != null && this.A2 == null) {
            this.A2 = q5.f.M().G(downloadTaskA.getCrc_link_type_val());
        }
        DownloadTask downloadTask = this.A2;
        if (downloadTask != null && downloadTaskA != null && downloadTask.getCrc_link_type_val().equals(downloadTaskA.getCrc_link_type_val()) && this.A2.getStatus() != downloadTaskA.getStatus()) {
            this.A2.setStatus(downloadTaskA.getStatus());
        }
        DlTaskManager.INSTANCE.onNotifyDataSet(downloadTaskEvent, new Function0() { // from class: com.join.mgps.activity.t2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f58108b.lambda$onEventMainThread$0();
            }
        });
        if (downloadTaskEvent.c() == 8) {
            DownloadTask downloadTask2 = this.A2;
            if (downloadTask2 == null || downloadTask2.getPath() == null) {
                return;
            }
            UtilsMy.U4(this.A2);
            this.f56810z.setProgress((int) this.A2.getProgress());
            this.f56808y.setText(this.A2.getProgress() + "%");
            return;
        }
        if (downloadTaskA != null && this.A2 != null && downloadTaskA.getCrc_link_type_val().equals(this.A2.getCrc_link_type_val())) {
            this.A2 = downloadTaskA;
            int iC = downloadTaskEvent.c();
            if (iC == 2) {
                f1();
                g0();
            } else if (iC == 3) {
                g0();
            } else if (iC == 5) {
                if (this.A2 != null && downloadTaskA.getCrc_link_type_val().equals(this.A2.getCrc_link_type_val())) {
                    this.A2 = downloadTaskA;
                }
                g0();
            } else if (iC == 6 || iC == 7) {
                g0();
            } else {
                if (iC == 8) {
                    DownloadTask downloadTask3 = this.A2;
                    if (downloadTask3 == null || downloadTask3.getPath() == null) {
                        return;
                    }
                    UtilsMy.U4(this.A2);
                    this.f56810z.setProgress((int) this.A2.getProgress());
                    this.f56808y.setText(this.A2.getProgress() + "%");
                    updateProgress(this.A2);
                    return;
                }
                if (iC == 10) {
                    g0();
                } else if (iC == 11) {
                    if (this.A2 != null) {
                        this.A2 = downloadTaskA;
                    }
                    g0();
                } else if (iC == 27) {
                    g0();
                } else if (iC == 48) {
                    if (this.A2 != null) {
                        this.A2 = downloadTaskA;
                    }
                    g0();
                }
            }
        }
        updateButn();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        StandardVideoView standardVideoView;
        StandardVideoView standardVideoView2;
        super.onPause();
        this.M2 = true;
        try {
            if (!this.f56755b2 && (standardVideoView2 = this.f56769i) != null && standardVideoView2.i()) {
                this.f56769i.onVideoPause();
            } else if (this.f56755b2 && (standardVideoView = this.f56769i) != null && !this.f56811z2 && standardVideoView.i()) {
                this.f56769i.onVideoPause();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        StandardVideoView standardVideoView;
        GamedetialModleFourBean gamedetialModleFourBean;
        boolean z10;
        super.onResume();
        this.M2 = false;
        this.J2 = AccountUtil_.getInstance_(this.f56770i1).getAccountData();
        if (T2) {
            this.f56805w2 = 1;
            T2 = false;
            p0();
        }
        if ((this.f56792r.getVisibility() == 4 || this.f56792r.getVisibility() == 8) && (standardVideoView = this.f56769i) != null && standardVideoView.i()) {
            this.f56769i.onVideoResume(false);
        }
        g0();
        GamedetialModleFourBean gamedetialModleFourBean2 = this.f56768h2;
        DownloadTask downloadTaskG = null;
        if (gamedetialModleFourBean2 != null) {
            List<DownloadTask> listH = gamedetialModleFourBean2.getMod_info() != null ? q5.f.M().H(this.f56768h2.getMod_info().getMod_game_id(), this.f56768h2.getMod_info().getMain_game_id()) : q5.f.M().I(this.f56768h2.getPackageName());
            if (listH != null && listH.size() > 0) {
                boolean z11 = false;
                loop0: while (true) {
                    z10 = false;
                    for (DownloadTask downloadTask : listH) {
                        if (Dtype.MOD.name().equals(downloadTask.getFileType())) {
                            z11 = com.join.mgps.va.overmind.i.q().K(downloadTask.getPackageName()) && downloadTask.getStatus() == 5;
                        } else if (com.join.android.app.common.utils.g.t0(getContext()).e(getContext(), downloadTask.getPackageName()) && downloadTask.getStatus() == 5) {
                            z10 = true;
                        }
                    }
                    break loop0;
                }
                if (z11 && z10) {
                    downloadTaskG = q5.f.M().G(this.f56758d);
                } else if (z11) {
                    if (this.f56768h2.getMod_info() != null) {
                        downloadTaskG = q5.f.M().G(this.f56768h2.getMod_info().getMod_game_id());
                    }
                } else if (z10) {
                    downloadTaskG = q5.f.M().G(this.f56758d);
                } else {
                    downloadTaskG = this.f56768h2.getMod_info() != null ? q5.f.M().G(this.f56768h2.getMod_info().getMod_game_id()) : null;
                    if (downloadTaskG == null) {
                        downloadTaskG = q5.f.M().G(this.f56758d);
                    }
                }
            }
        }
        if (downloadTaskG == null && (gamedetialModleFourBean = this.f56768h2) != null) {
            this.A2 = gamedetialModleFourBean.getDownloadtaskDown();
        }
        if (downloadTaskG != null && this.A2 != null) {
            try {
                this.A2 = downloadTaskG;
                if (!downloadTaskG.getFileType().equals(Dtype.android.name()) || this.A2.getStatus() != 5) {
                    this.A2.setStatus(downloadTaskG.getStatus());
                } else if (this.f56768h2.getMod_info() == null) {
                    com.join.android.app.common.utils.g gVarT0 = com.join.android.app.common.utils.g.t0(this.f56770i1);
                    GamedetailVideoMainActivity gamedetailVideoMainActivity = this.f56770i1;
                    String packageName = this.A2.getPackageName();
                    APKUtils.DEVICE_TYPE device_type = APKUtils.DEVICE_TYPE.ALL;
                    if (Boolean.valueOf(gVarT0.f(gamedetailVideoMainActivity, packageName, device_type)).booleanValue()) {
                        APKUtils.a aVarO = com.join.android.app.common.utils.g.t0(this.f56770i1).o(this.f56770i1, this.A2.getPackageName(), device_type);
                        if (!com.join.mgps.Util.t2.i(this.A2.getVer()) || aVarO.d() >= Integer.parseInt(this.A2.getVer())) {
                            this.A2.setStatus(5);
                        } else {
                            this.A2.setStatus(9);
                        }
                    } else {
                        this.A2.setStatus(0);
                    }
                }
                updateButn();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        UtilsMy.N4(this.f56770i1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void p0() {
        try {
            if (!com.join.android.app.common.utils.m.j(this.f56770i1)) {
                showToast("网络出错，请稍后重试");
                return;
            }
            if (IntentUtil.getInstance().goLoginInteractive(this.f56770i1)) {
                return;
            }
            this.f56787p1 = "";
            UserInfo accountData = AccountUtil_.getInstance_(this.f56770i1).getAccountData();
            LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
            linkedMultiValueMap.add("uid", Integer.valueOf(accountData.getUid()));
            linkedMultiValueMap.add(Constants.TOKEN, accountData.getToken());
            linkedMultiValueMap.add("current_game_id", this.f56758d);
            int i10 = this.f56805w2;
            this.f56805w2 = i10 + 1;
            linkedMultiValueMap.add("page", Integer.valueOf(i10));
            linkedMultiValueMap.add("device_id", this.f56787p1);
            linkedMultiValueMap.add("version ", this.f56790q1);
            GameFromPopoWinBean gameFromPopoWinBeanW = this.f56798t2.W(linkedMultiValueMap);
            if (gameFromPopoWinBeanW != null && gameFromPopoWinBeanW.getError() == 0 && gameFromPopoWinBeanW.getData() != null) {
                m1();
                if (this.f56805w2 == 2) {
                    h0();
                }
                e0(gameFromPopoWinBeanW);
                return;
            }
            if (gameFromPopoWinBeanW == null || gameFromPopoWinBeanW.getError() != 701) {
                i1();
                return;
            }
            IntentUtil.getInstance().goMyAccountLoginActivity(this.f56770i1);
            c1("Token已失效，请重新登录");
            IntentUtil.getInstance().goLogin(this.f56770i1);
            A0();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 1000)
    public void p1(final boolean needRetry) {
        ExtBean extBean = this.f56760e;
        if (extBean == null || !"checkgame".equals(extBean.getFrom())) {
            return;
        }
        com.join.mgps.Util.x1.c().b(this.f56770i1, this.f56760e.getFrom_id(), new g(needRetry));
    }

    @Override // com.join.mgps.activity.gamedetail.BaseGameDetailFragment
    public void pauseVideo() {
        this.M2 = true;
        StandardVideoView standardVideoView = this.f56769i;
        if (standardVideoView == null || !standardVideoView.i()) {
            return;
        }
        this.f56769i.onVideoPause();
    }

    @Override // com.join.mgps.activity.gamedetail.BaseGameDetailFragment
    public void playVideo() {
        StandardVideoView standardVideoView = this.f56769i;
        if (standardVideoView != null) {
            this.f56770i1.autoPlayVideo(standardVideoView);
        }
    }

    @Click
    void progress_layout() {
        DownloadTask downloadTask = this.A2;
        if (downloadTask == null) {
            return;
        }
        if (downloadTask.getStatus() == 2) {
            updateButn();
            com.php25.PDownload.d.i(this.A2);
        } else if (this.A2.getStatus() == 3 || this.A2.getStatus() == 6) {
            updateButn();
            com.php25.PDownload.d.c(this.A2, this.f56770i1);
            onDetailDownload();
        }
    }

    @Override // com.join.mgps.callbacks.j
    public void q() {
        View viewInflate = LayoutInflater.from(this.f56770i1).inflate(R.layout.layout_pc_game_detail_sheet_profile, (ViewGroup) this.P, false);
        View viewFindViewById = viewInflate.findViewById(R.id.scrollView);
        TextView textView = (TextView) viewInflate.findViewById(R.id.tv_label1);
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.tv_label2);
        TextView textView3 = (TextView) viewInflate.findViewById(R.id.tv_label3);
        TextView textView4 = (TextView) viewInflate.findViewById(R.id.tv_label4);
        TextView textView5 = (TextView) viewInflate.findViewById(R.id.tv_value1);
        TextView textView6 = (TextView) viewInflate.findViewById(R.id.tv_value2);
        TextView textView7 = (TextView) viewInflate.findViewById(R.id.tv_value3);
        TextView textView8 = (TextView) viewInflate.findViewById(R.id.tv_value4);
        TextView textView9 = (TextView) viewInflate.findViewById(R.id.tv_label21);
        TextView textView10 = (TextView) viewInflate.findViewById(R.id.tv_label22);
        TextView textView11 = (TextView) viewInflate.findViewById(R.id.tv_label23);
        TextView textView12 = (TextView) viewInflate.findViewById(R.id.tv_label24);
        TextView textView13 = (TextView) viewInflate.findViewById(R.id.tv_label25);
        TextView textView14 = (TextView) viewInflate.findViewById(R.id.tv_value21);
        TextView textView15 = (TextView) viewInflate.findViewById(R.id.tv_value22);
        TextView textView16 = (TextView) viewInflate.findViewById(R.id.tv_value23);
        TextView textView17 = (TextView) viewInflate.findViewById(R.id.tv_value24);
        TextView textView18 = (TextView) viewInflate.findViewById(R.id.tv_value25);
        viewInflate.findViewById(R.id.close).setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.z2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f58276b.I0(view);
            }
        });
        ExtInfoBean ext_info = this.f56766g2.getExt_info();
        if (ext_info != null && ext_info.getGame_cfg() != null) {
            GameCfgBean game_cfg = ext_info.getGame_cfg();
            textView.setText("类型：");
            textView2.setText("首发日期：");
            textView3.setText("支持语言：");
            textView4.setText("游戏大小：");
            textView5.setText(game_cfg.getGame_type());
            textView6.setText(game_cfg.getFirst_date());
            textView7.setText(game_cfg.getLanguage());
            try {
                textView8.setText(UtilsMy.c((long) (Double.parseDouble(game_cfg.getGame_size()) * 1024.0d * 1024.0d)));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            textView9.setText("CPU：");
            textView10.setText("内存：");
            textView11.setText("显卡：");
            textView12.setText("操作系统: ");
            textView13.setText("存储空间：");
            textView14.setText(game_cfg.getCpu_info());
            textView15.setText(game_cfg.getMemory_info());
            textView16.setText(game_cfg.getVideo_card_info());
            textView17.setText(game_cfg.getSystem_info());
            textView18.setText(game_cfg.getCapacity_info());
        }
        if (viewFindViewById == null) {
            return;
        }
        ((LinearLayout.LayoutParams) viewFindViewById.getLayoutParams()).height = this.P.getMeasuredHeight();
        d1(viewInflate);
        viewFindViewById.scrollTo(0, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void q1(GamedetialModleFourBean modleFourBean) {
        boolean z10;
        this.f56768h2 = modleFourBean;
        this.f56766g2 = modleFourBean;
        try {
            this.V1 = com.join.mgps.Util.d2.f(modleFourBean.getTag_info());
            this.L1 = (modleFourBean.getSp_tag_info() == null || modleFourBean.getSp_tag_info().getMini_game() == null) ? false : true;
            this.f56753a2 = modleFourBean.isCloudGame() && com.join.mgps.Util.w0.j();
            if (this.V1) {
                modleFourBean.setNodeId("3");
            } else {
                modleFourBean.setNodeId("1");
            }
            if (this.f56753a2) {
                this.X.setVisibility(0);
                if (com.join.mgps.Util.w0.m(this.f56768h2.getTagInfo()) || com.join.mgps.Util.w0.k(this.f56768h2.getTagInfo())) {
                    this.W.setVisibility(8);
                }
            } else {
                this.X.setVisibility(8);
            }
            modleFourBean.set_from_type(this.f56760e.get_from_type());
            modleFourBean.set_from(101);
            modleFourBean.setRecPosition(this.f56760e.getRecPosition());
            this.f56768h2.set_from_type(this.f56760e.get_from_type());
            this.f56768h2.set_from(101);
            this.f56768h2.setRecPosition(this.f56760e.getRecPosition());
            this.I.setVisibility(0);
            int pic_position = modleFourBean.getPic_position();
            if (!this.L1 || pic_position != 1) {
                this.J.setVisibility(8);
                this.K.setVisibility(8);
            }
            initView();
            ArrayList arrayList = new ArrayList();
            CommentAlllistIntentData commentAlllistIntentData = new CommentAlllistIntentData();
            commentAlllistIntentData.setGameId(modleFourBean.getGame_id());
            commentAlllistIntentData.setPackageName(modleFourBean.getPackageName());
            commentAlllistIntentData.setGameType(modleFourBean.getPlugin_num());
            commentAlllistIntentData.setGameIsStart(modleFourBean.getIs_started());
            commentAlllistIntentData.setCpu_type(modleFourBean.getCpu_type());
            if (modleFourBean.getGame_score() != null) {
                commentAlllistIntentData.setSgcSwitch(modleFourBean.getGame_score().getSgc_switch());
            }
            commentAlllistIntentData.setBespeakSwitch(modleFourBean.getBespeak_switch());
            commentAlllistIntentData.setCommentScoreSwitch(modleFourBean.getComment_score_switch());
            arrayList.add(new com.join.mgps.adapter.h0.a(this.V1 ? "游戏简介" : "详情", d2.u0(this.f56758d, this.f56762f, this.f56760e).a0(this)));
            if (this.V1) {
                this.f56781n.setVisibility(8);
            } else {
                this.f56781n.setVisibility(0);
                com.join.mgps.fragment.t tVarS = com.join.mgps.fragment.t.S(commentAlllistIntentData);
                tVarS.V(new q(modleFourBean));
                arrayList.add(new com.join.mgps.adapter.h0.a("评论", tVarS));
                if (modleFourBean.getStandalone_cloud_archive() != null && modleFourBean.getStandalone_cloud_archive().getTag_list() != null && modleFourBean.getMod_info() != null) {
                    Bundle bundle = new Bundle();
                    GameDetailModCloudListFragment gameDetailModCloudListFragment = new GameDetailModCloudListFragment();
                    bundle.putString("gameId", modleFourBean.getMod_info().getMod_game_id());
                    bundle.putInt("type", 1);
                    bundle.putSerializable("datas", modleFourBean.getStandalone_cloud_archive());
                    gameDetailModCloudListFragment.setArguments(bundle);
                    arrayList.add(new com.join.mgps.adapter.h0.a("云存档", gameDetailModCloudListFragment));
                } else if (modleFourBean.getRoom_cfg_info() != null && modleFourBean.getRoom_cfg_info().getCloud_archive_count() > 0) {
                    Bundle bundle2 = new Bundle();
                    GameDetailEmusCloudListFragment gameDetailEmusCloudListFragment = new GameDetailEmusCloudListFragment();
                    bundle2.putString("gameId", this.f56758d);
                    gameDetailEmusCloudListFragment.setArguments(bundle2);
                    gameDetailEmusCloudListFragment.setMListener(new r());
                    arrayList.add(new com.join.mgps.adapter.h0.a("云存档", gameDetailEmusCloudListFragment));
                }
                arrayList.add(new com.join.mgps.adapter.h0.a("游戏单", com.join.mgps.fragment.j3.X(modleFourBean.getGame_company_id(), this.f56758d)));
            }
            com.join.mgps.adapter.h0 h0Var = new com.join.mgps.adapter.h0(getChildFragmentManager(), arrayList);
            this.f56776l.setOffscreenPageLimit(3);
            this.f56776l.setAdapter(h0Var);
            this.f56774k.setTabSpaceEqual(!this.V1);
            this.f56774k.setViewPager(this.f56776l);
            if (this.f56754b1) {
                for (int i10 = 0; i10 < arrayList.size(); i10++) {
                    if (TextUtils.equals("评论", ((com.join.mgps.adapter.h0.a) arrayList.get(i10)).f62226a)) {
                        this.f56776l.setCurrentItem(i10);
                        break;
                    }
                }
                new Handler().postDelayed(new s(), 1500L);
            }
            if (arrayList.size() == 1) {
                this.U.setVisibility(8);
            }
            Q0(modleFourBean);
            if (this.f56762f && q5.f.M().G(this.f56758d) == null) {
                com.php25.PDownload.d.c(modleFourBean.getDownloadtaskDown(), this.f56770i1);
                onDetailDownload();
            }
            GamedetialModleFourBean gamedetialModleFourBean = this.f56768h2;
            if (gamedetialModleFourBean != null) {
                if (gamedetialModleFourBean.getGame_follow() == 1) {
                    this.E.setImageResource(R.drawable.followed_image);
                    this.F.setText("已收藏");
                } else {
                    this.E.setImageResource(R.drawable.follow_none_image);
                    this.F.setText("收藏");
                }
            }
            List<DownloadTask> listH = modleFourBean.getMod_info() != null ? q5.f.M().H(modleFourBean.getMod_info().getMain_game_id(), modleFourBean.getMod_info().getMod_game_id()) : q5.f.M().I(this.f56768h2.getPackageName());
            if (listH != null && listH.size() > 0) {
                boolean z11 = false;
                loop1: while (true) {
                    z10 = false;
                    for (DownloadTask downloadTask : listH) {
                        if (Dtype.MOD.name().equals(downloadTask.getFileType())) {
                            z11 = com.join.mgps.va.overmind.i.q().K(downloadTask.getPackageName()) && downloadTask.getStatus() == 5;
                        } else if (com.join.android.app.common.utils.g.t0(getContext()).e(getContext(), downloadTask.getPackageName()) && downloadTask.getStatus() == 5) {
                            z10 = true;
                        }
                    }
                    break loop1;
                }
                if (z11 && z10) {
                    this.A2 = q5.f.M().G(this.f56758d);
                } else if (z11) {
                    if (this.f56768h2.getMod_info() != null) {
                        this.A2 = q5.f.M().G(this.f56768h2.getMod_info().getMod_game_id());
                    }
                } else if (z10) {
                    this.A2 = q5.f.M().G(this.f56758d);
                } else {
                    if (this.f56768h2.getMod_info() != null) {
                        this.A2 = q5.f.M().G(this.f56768h2.getMod_info().getMod_game_id());
                    }
                    if (this.A2 == null) {
                        this.A2 = q5.f.M().G(this.f56758d);
                    }
                }
            }
            DownloadTask downloadTask2 = this.A2;
            if (downloadTask2 == null) {
                this.A2 = this.f56768h2.getDownloadtaskDown();
                if (!UtilsMy.p0(this.f56768h2.getTag_info())) {
                    this.A2.setStatus(0);
                } else if (this.A2.getMod_info() == null) {
                    this.A2.setFileType(Dtype.android.name());
                    if (com.join.android.app.common.utils.g.t0(this.f56770i1).e(this.f56770i1, this.f56768h2.getPackageName())) {
                        APKUtils.a aVarN = com.join.android.app.common.utils.g.t0(this.f56770i1).n(this.f56770i1, this.f56768h2.getPackageName());
                        if (!com.join.mgps.Util.t2.i(this.f56768h2.getVer()) || aVarN.d() >= Integer.parseInt(this.f56768h2.getVer())) {
                            this.A2.setStatus(5);
                        } else {
                            this.A2.setStatus(9);
                        }
                    } else {
                        this.A2.setStatus(0);
                    }
                }
            } else {
                downloadTask2.setDownloadType(0);
                this.A2.setTask_down_type(0);
                this.A2.setScreenshot_pic(this.f56768h2.getScreenshot_pic());
            }
            if (("" + this.f56768h2.getPlugin_num()).equals("" + ConstantIntEnum.H5.value())) {
                GamedetialModleFourBean gamedetialModleFourBean2 = this.f56768h2;
                gamedetialModleFourBean2.setDown_count(gamedetialModleFourBean2.getStart_count());
            }
            updateButn();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Receiver(actions = {"com.broadcast.bespeak.sussess"})
    void r1() {
        this.f56768h2.setGame_book(1);
        updateButn();
    }

    @Click
    void relodingimag() {
        showLoding();
        o0();
    }

    @Override // com.join.mgps.activity.gamedetail.BaseGameDetailFragment
    public void resumVideo() {
        StandardVideoView standardVideoView;
        StandardVideoView standardVideoView2 = this.f56769i;
        if (standardVideoView2 == null || !this.M2) {
            return;
        }
        this.M2 = false;
        if (standardVideoView2.i()) {
            this.f56769i.startPlayLogic();
        } else if ((this.f56792r.getVisibility() == 4 || this.f56792r.getVisibility() == 8) && (standardVideoView = this.f56769i) != null && standardVideoView.i()) {
            this.f56769i.onVideoResume(false);
        }
    }

    @Override // com.join.mgps.activity.gamedetail.BaseGameDetailFragment
    @UiThread
    public void setCommentNumber(String number) {
        if (this.V1) {
            return;
        }
        try {
            TextView textViewJ = this.f56774k.j(1);
            textViewJ.setWidth(getResources().getDimensionPixelOffset(R.dimen.wdp220));
            textViewJ.setText("点评(" + number + ")");
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this.f56770i1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showInstallButn() {
        GamedetialModleFourBean gamedetialModleFourBean = this.f56768h2;
        if (gamedetialModleFourBean == null || TextUtils.isEmpty(gamedetialModleFourBean.getCrc_sign_id())) {
            return;
        }
        GamedetialModleFourBean gamedetialModleFourBean2 = this.f56766g2;
        if (gamedetialModleFourBean2 == null || this.V == null || gamedetialModleFourBean2.getSp_tag_info() == null || this.f56766g2.getSp_tag_info().getSelf_support() == null) {
            ImageView imageView = this.V;
            if (imageView != null) {
                imageView.setVisibility(0);
            }
        } else {
            this.V.setVisibility(8);
        }
        try {
            RelativeLayout relativeLayout = this.f56801v;
            if (relativeLayout != null) {
                relativeLayout.setVisibility(8);
            }
            ConstraintLayout constraintLayout = this.f56804w;
            if (constraintLayout != null) {
                constraintLayout.setVisibility(0);
            }
            TextView textView = this.f56799u;
            if (textView != null) {
                textView.setVisibility(0);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        try {
            this.J.setVisibility(0);
            this.K.setVisibility(8);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: Removed unreachable split cross block B:21:0x003d */
    @UiThread
    public void showLodingFailed() {
        try {
            this.J.setVisibility(8);
            try {
                GamedetialModleFourBean gamedetialModleFourBean = this.f56768h2;
                if (gamedetialModleFourBean == null || com.join.mgps.Util.t2.h(gamedetialModleFourBean.getCrc_sign_id())) {
                    this.K.setVisibility(0);
                    this.L.setVisibility(0);
                    if (com.join.android.app.common.utils.m.j(this.f56770i1)) {
                        this.M.setVisibility(8);
                    } else {
                        this.M.setVisibility(0);
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showProgress() {
        try {
            ConstraintLayout constraintLayout = this.f56804w;
            if (constraintLayout != null) {
                constraintLayout.setVisibility(8);
            }
            TextView textView = this.f56799u;
            if (textView != null) {
                textView.setVisibility(8);
            }
            RelativeLayout relativeLayout = this.f56801v;
            if (relativeLayout != null) {
                relativeLayout.setVisibility(0);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String s10) {
        Toast.makeText(this.f56770i1, s10, 0).show();
    }

    String t0(String originText) {
        GamedetialModleFourBean gamedetialModleFourBean = this.f56768h2;
        if (gamedetialModleFourBean == null || TextUtils.isEmpty(gamedetialModleFourBean.getGame_btn_text())) {
            return originText;
        }
        return this.f56768h2.getGame_btn_text().length() > 10 ? this.f56768h2.getGame_btn_text().substring(0, 10) : this.f56768h2.getGame_btn_text();
    }

    @Override // com.join.mgps.callbacks.j
    public void u() {
        int i10;
        int i11;
        View viewInflate = LayoutInflater.from(this.f56770i1).inflate(R.layout.layout_game_detail_sheet_profile, (ViewGroup) this.P, false);
        View viewFindViewById = viewInflate.findViewById(R.id.scrollView);
        TextView textView = (TextView) viewInflate.findViewById(R.id.desc);
        View viewFindViewById2 = viewInflate.findViewById(R.id.close);
        FlowLayout flowLayout = (FlowLayout) viewInflate.findViewById(R.id.flowLayout);
        View viewFindViewById3 = viewInflate.findViewById(R.id.uploadGame);
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.vendor);
        TextView textView3 = (TextView) viewInflate.findViewById(R.id.versionName);
        TextView textView4 = (TextView) viewInflate.findViewById(R.id.appSize);
        TextView textView5 = (TextView) viewInflate.findViewById(R.id.date);
        TextView textView6 = (TextView) viewInflate.findViewById(R.id.updateMessageTitle);
        TextView textView7 = (TextView) viewInflate.findViewById(R.id.updateMessage);
        TextView textView8 = (TextView) viewInflate.findViewById(R.id.gameFrom);
        Group group = (Group) viewInflate.findViewById(R.id.sourceGroup);
        TextView textView9 = (TextView) viewInflate.findViewById(R.id.privacy);
        TextView textView10 = (TextView) viewInflate.findViewById(R.id.permission);
        TextView textView11 = (TextView) viewInflate.findViewById(R.id.textViewBeian);
        TextView textView12 = (TextView) viewInflate.findViewById(R.id.beian);
        viewFindViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.u2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f58152b.J0(view);
            }
        });
        textView.setText(this.f56766g2.getGame_describe_second());
        if (this.f56766g2.getGame_upgrade_info_switch() == 1) {
            String game_upgrade_info = this.f56766g2.getGame_upgrade_info();
            i10 = 0;
            textView6.setVisibility(0);
            textView7.setVisibility(0);
            textView7.setText(game_upgrade_info);
        } else {
            i10 = 0;
        }
        flowLayout.removeAllViews();
        flowLayout.setVisibility(i10);
        int i12 = Build.VERSION.SDK_INT;
        if (this.f56766g2.getMax_an_compatible_ver() != 0 && i12 >= this.f56766g2.getMin_an_compatible_ver()) {
            this.f56766g2.getMax_an_compatible_ver();
        }
        if (this.f56766g2.getGame_prompt() != null && this.f56766g2.getGame_prompt().size() != 0) {
            flowLayout.setVisibility(0);
            flowLayout.setHorizontalDivider(flowLayout.getResources().getDimensionPixelOffset(R.dimen.wdp20));
            flowLayout.setVerticalDivider(flowLayout.getResources().getDimensionPixelOffset(R.dimen.wdp14));
            for (int i13 = 0; i13 < this.f56766g2.getGame_prompt().size(); i13++) {
                GamePromptBean gamePromptBean = this.f56766g2.getGame_prompt().get(i13);
                if (gamePromptBean != null && gamePromptBean.getId() == 1) {
                    flowLayout.addView(P0(gamePromptBean.getText(), R.drawable.ic_ok, flowLayout));
                }
            }
        }
        final GamedetialMoreBean game_detailed = this.f56766g2.getGame_detailed();
        if (game_detailed != null) {
            textView3.setText(game_detailed.getCurrent_ver());
            textView5.setText(game_detailed.getUpgrade_time());
            textView4.setText(game_detailed.getSize() + "M");
            textView12.setText(game_detailed.getRecord_number());
            textView9.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.v2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f58167b.K0(game_detailed, view);
                }
            });
            textView10.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.w2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f58192b.L0(game_detailed, view);
                }
            });
            textView12.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.x2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f58204b.M0(view);
                }
            });
            if (TextUtils.isEmpty(game_detailed.getRecord_number())) {
                textView11.setVisibility(8);
                textView12.setVisibility(8);
                i11 = 0;
            } else {
                i11 = 0;
                textView11.setVisibility(0);
                textView12.setVisibility(0);
            }
            if (TextUtils.isEmpty(game_detailed.getCompany_name())) {
                group.setVisibility(4);
            } else {
                group.setVisibility(i11);
                textView8.setText(game_detailed.getCompany_name());
            }
        } else {
            i11 = 0;
        }
        textView2.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.y2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f58241b.N0(view);
            }
        });
        viewFindViewById3.setVisibility(i11);
        viewFindViewById3.setOnClickListener(new n());
        if (viewFindViewById == null) {
            return;
        }
        ((LinearLayout.LayoutParams) viewFindViewById.getLayoutParams()).height = this.P.getMeasuredHeight();
        d1(viewInflate);
        viewFindViewById.scrollTo(0, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateButn() {
        if (this.f56768h2 == null || this.A2 == null) {
            return;
        }
        ConstraintLayout constraintLayout = this.f56804w;
        if (constraintLayout != null) {
            constraintLayout.setVisibility(0);
        }
        if (this.f56768h2.getDel_tag() == 1 && !this.f56768h2.getCompany_name().equals("SNK")) {
            TextView textView = this.f56799u;
            if (textView != null) {
                textView.setEnabled(false);
                this.f56799u.setBackgroundResource(R.drawable.detial_simple_grey_selecter);
                this.f56799u.setText("已下架");
            }
            showInstallButn();
            return;
        }
        if (this.L1) {
            if (this.f56768h2.getDownloadtaskDown() == null || this.f56768h2.getDownloadtaskDown().isSingleGame() || this.f56768h2.getDownloadtaskDown().getStatus() != 11) {
                TextView textView2 = this.f56799u;
                if (textView2 != null) {
                    textView2.setText(t0("打开"));
                }
            } else {
                TextView textView3 = this.f56799u;
                if (textView3 != null) {
                    textView3.setText("安装");
                }
            }
            showInstallButn();
            return;
        }
        if (this.f56804w == null) {
            return;
        }
        UtilsMy.A3(this.f56768h2.getSp_tag_info(), this.f56804w, this.A2);
        if (this.f56768h2.getPlugin_num() != null) {
            if (this.f56768h2.getPlugin_num().equals(ConstantIntEnum.H5.value() + "")) {
                TextView textView4 = this.f56799u;
                if (textView4 != null) {
                    textView4.setBackgroundResource(R.drawable.detial_simple_normal_selecter);
                    this.f56799u.setText(t0("开始"));
                }
                showInstallButn();
                return;
            }
        }
        TextView textView5 = this.f56799u;
        if (textView5 != null) {
            textView5.setTextColor(getResources().getColor(R.color.white));
            this.f56799u.setBackgroundResource(R.drawable.detial_simple_normal_selecter);
        }
        DownloadTask downloadTask = this.A2;
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        if (UtilsMy.x0(this.f56768h2.getPay_tag_info(), this.f56768h2.getCrc_sign_id()) > 0) {
            status = 43;
        }
        if (status == 9) {
            showInstallButn();
            TextView textView6 = this.f56799u;
            if (textView6 != null) {
                textView6.setText("更新");
            }
            ImageView imageView = this.f56806x;
            if (imageView != null) {
                imageView.setImageResource(R.drawable.detail_comment_download_continue);
                this.f56806x.setImageResource(R.drawable.detial_simple_install_selecter);
                return;
            }
            return;
        }
        if (status == 12) {
            showInstallButn();
            TextView textView7 = this.f56799u;
            if (textView7 != null) {
                textView7.setText("解压中..");
                return;
            }
            return;
        }
        if (status == 13) {
            showInstallButn();
            TextView textView8 = this.f56799u;
            if (textView8 != null) {
                textView8.setText("解压");
            }
            ImageView imageView2 = this.f56806x;
            if (imageView2 != null) {
                imageView2.setImageResource(R.drawable.detail_comment_download_continue);
                return;
            }
            return;
        }
        if (status == 11) {
            showInstallButn();
            TextView textView9 = this.f56799u;
            if (textView9 != null) {
                textView9.setText("安装");
                this.f56799u.setBackgroundResource(R.drawable.detial_simple_install_selecter);
            }
            ImageView imageView3 = this.f56806x;
            if (imageView3 != null) {
                imageView3.setImageResource(R.drawable.detial_simple_install_selecter);
                return;
            }
            return;
        }
        if (status == 5 || status == 42) {
            showInstallButn();
            p1(true);
            TextView textView10 = this.f56799u;
            if (textView10 != null) {
                textView10.setBackgroundResource(R.drawable.detial_simple_open_selecter);
                this.f56799u.setText(this.f56770i1.getResources().getString(R.string.download_status_finished));
            }
            ImageView imageView4 = this.f56806x;
            if (imageView4 != null) {
                imageView4.setImageResource(R.drawable.detail_comment_download_continue);
                return;
            }
            return;
        }
        if (status == 2) {
            showProgress();
            ImageView imageView5 = this.f56806x;
            if (imageView5 != null) {
                imageView5.setImageResource(R.drawable.detail_comment_download_pause);
            }
            UtilsMy.U4(this.A2);
            ProgressBar progressBar = this.f56810z;
            if (progressBar != null) {
                progressBar.setProgress((int) this.A2.getProgress());
            }
            TextView textView11 = this.f56808y;
            if (textView11 != null) {
                textView11.setText(this.A2.getProgress() + "%");
                return;
            }
            return;
        }
        if (status == 3 || status == 6 || status == 27) {
            showProgress();
            this.f56806x.setImageResource(R.drawable.detail_comment_download_continue);
            UtilsMy.U4(this.A2);
            ProgressBar progressBar2 = this.f56810z;
            if (progressBar2 != null) {
                progressBar2.setProgress((int) this.A2.getProgress());
            }
            TextView textView12 = this.f56808y;
            if (textView12 != null) {
                textView12.setText(this.A2.getProgress() + "%");
                return;
            }
            return;
        }
        if (status == 10) {
            showInstallButn();
            TextView textView13 = this.f56799u;
            if (textView13 != null) {
                textView13.setText("等待\u3000" + this.f56768h2.getSize() + "M");
            }
            ImageView imageView6 = this.f56806x;
            if (imageView6 != null) {
                imageView6.setImageResource(R.drawable.detail_comment_download_continue);
                return;
            }
            return;
        }
        if (status == 1) {
            return;
        }
        if (status == 43) {
            o1();
            return;
        }
        if (status != 48) {
            o1();
            return;
        }
        showInstallButn();
        TextView textView14 = this.f56799u;
        if (textView14 != null) {
            textView14.setText(this.f56770i1.getResources().getString(R.string.download_status_installing));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateDownloadView() {
        try {
            this.D.setDownloadGameNum();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void updateProgress(DownloadTask downloadTask) {
        if (downloadTask == null || this.L1) {
            return;
        }
        ProgressBar progressBar = this.f56810z;
        if (progressBar instanceof DownloadProgressBar) {
            ((DownloadProgressBar) progressBar).update(downloadTask.getCrc_link_type_val(), 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateTitleButn(ResultMainBean result, int type) {
        if (result.getFlag() == 1) {
            if (type == 1) {
                this.f56768h2.setGame_follow(0);
            } else if (type == 2) {
                this.f56768h2.setGame_follow(1);
                ToastManager.show("收藏成功");
                this.E.setImageResource(R.drawable.followed_image);
                this.F.setText("已收藏");
            } else if (type == 3) {
                this.f56768h2.setGame_book(0);
            } else if (type == 4) {
                this.f56768h2.setGame_book(1);
                Intent intent = new Intent("com.broadcast.bespeak.sussess");
                intent.putExtra("gameid", this.f56768h2.getCrc_sign_id());
                this.f56770i1.sendBroadcast(intent);
                com.join.mgps.Util.h0.h0(this.f56770i1).O(this.f56770i1, 1, new h()).show();
            }
            T0();
            updateButn();
        }
    }

    void x0() {
        ExtBean extBean = this.f56760e;
        if (extBean == null || TextUtils.isEmpty(extBean.getFrom()) || !this.f56760e.getFrom().equals("updateFromMarket")) {
            return;
        }
        IntentUtil.getInstance().goMGMainActivity2Front(this.f56770i1);
    }

    boolean y0() {
        GamedetialModleFourBean gamedetialModleFourBean = this.f56766g2;
        return (gamedetialModleFourBean == null || gamedetialModleFourBean.getGame_screen_shot() == null || this.f56766g2.getGame_screen_shot().size() <= 0) ? false : true;
    }

    boolean z0() {
        return com.join.mgps.Util.t2.i(this.f56766g2.getGame_info_top_video_url()) || com.join.mgps.Util.t2.i(this.f56766g2.getGame_info_top_pic());
    }
}
