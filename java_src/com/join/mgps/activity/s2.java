package com.join.mgps.activity;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.BaseAdapter;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
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
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.component.video.StandardVideoView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.domain.widget.CornersLinearLayout;
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
import com.join.mgps.activity.screenshot.ScreenshotTrueListAcvity_;
import com.join.mgps.adapter.FullScreenActivity;
import com.join.mgps.adapter.FullScreenActivity_;
import com.join.mgps.customview.CoordinatorLayout;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.customview.DownloadProgressBar;
import com.join.mgps.customview.FlowLayout;
import com.join.mgps.customview.MStarBar;
import com.join.mgps.customview.MViewpagerV4;
import com.join.mgps.customview.SlidingTabLayoutGameDetailImage;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dialog.DownloadMethodMultiDialog_;
import com.join.mgps.dto.CommentAlllistIntentData;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.DetialShowImageBean;
import com.join.mgps.dto.DomainInfoBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.GameFromBooleanBean;
import com.join.mgps.dto.GameFromPopoWinBean;
import com.join.mgps.dto.GamePromptBean;
import com.join.mgps.dto.GameScore;
import com.join.mgps.dto.GamedetialModleFourBean;
import com.join.mgps.dto.GamedetialMoreBean;
import com.join.mgps.dto.QueryDownloadInfoRequestArgs;
import com.join.mgps.dto.QueryDownloadInfoResponseData;
import com.join.mgps.dto.RequestGameIdArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.RequestdetialFolowAndBeSpeak;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.ServiceState;
import com.join.mgps.dto.ShareBean;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.enums.Dtype;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.papa.sim.statistic.Where;
import com.papa91.arc.ext.ToastManager;
import com.sigmob.sdk.base.mta.PointType;
import com.uc.crashsdk.export.LogType;
import com.wufan.user.service.protobuf.UserInfo;
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
@EFragment(R.layout.gamedetial_modle_bt_fragment)
public class s2 extends BaseGameDetailFragment implements com.join.mgps.callbacks.j {
    static String Y2 = "0";
    static String Z2 = "";

    /* JADX INFO: renamed from: a3, reason: collision with root package name */
    static boolean f57982a3 = false;

    /* JADX INFO: renamed from: b3, reason: collision with root package name */
    private static final String f57983b3 = "view";

    @ViewById
    LinearLayout A;
    public TextView A2;

    @ViewById
    ImageView B;
    public MStarBar B2;

    @ViewById
    ImageView C;
    public LinearLayout C2;

    @ViewById(R.id.title_normal_download_cdv)
    CustomerDownloadView D;
    public LinearLayout D2;

    @ViewById
    ImageView E;
    public SimpleDraweeView E2;

    @ViewById
    TextView F;
    public TextView F2;

    @ViewById
    TextView G;
    private LinearLayout G2;

    @ViewById
    CoordinatorLayout H;
    private TextView H2;

    @ViewById
    View I;
    private TextView I2;

    @ViewById
    View J;
    private DownloadTask J2;

    @ViewById
    View K;

    @ViewById
    TextView K2;

    @ViewById
    View L;
    boolean L1;

    @ViewById
    ImageView L2;

    @ViewById
    LinearLayout M;

    @ViewById
    ImageView M2;

    @ViewById
    LinearLayout N;

    @ViewById
    ImageView N2;

    @ViewById
    View O;

    @ViewById
    ImageView O2;

    @ViewById
    View P;
    private Animation P2;

    @ViewById
    BottomSheetLayout Q;
    private int Q2;

    @ViewById
    View R;
    int R1;
    private int R2;

    @ViewById
    LinearLayout S;
    UserInfo S2;

    @ViewById
    TextView T;

    @ViewById
    CornersLinearLayout U;

    @ViewById
    RelativeLayout V;
    int V1;

    @ViewById
    RelativeLayout W;

    @ViewById
    RelativeLayout X;

    @ViewById
    ImageView Y;

    @ViewById
    RelativeLayout Z;

    /* JADX INFO: renamed from: a2, reason: collision with root package name */
    private int f57984a2;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    boolean f57985b1;

    /* JADX INFO: renamed from: b2, reason: collision with root package name */
    private GamedetialModleFourBean f57986b2;

    /* JADX INFO: renamed from: c2, reason: collision with root package name */
    private GamedetialModleFourBean f57988c2;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    String f57989d;

    /* JADX INFO: renamed from: d2, reason: collision with root package name */
    PopupWindow f57990d2;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    ExtBean f57991e;

    /* JADX INFO: renamed from: e2, reason: collision with root package name */
    LinearLayout f57992e2;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    boolean f57993f;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    com.join.mgps.rpc.e f57994f1;

    /* JADX INFO: renamed from: f2, reason: collision with root package name */
    LinearLayout f57995f2;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @ViewById
    RelativeLayout f57996g;

    /* JADX INFO: renamed from: g2, reason: collision with root package name */
    LinearLayout f57997g2;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @ViewById
    View f57998h;

    /* JADX INFO: renamed from: h2, reason: collision with root package name */
    EditText f57999h2;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @ViewById
    StandardVideoView f58000i;

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    GamedetailVideoMainActivity f58001i1;

    /* JADX INFO: renamed from: i2, reason: collision with root package name */
    TextView f58002i2;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @ViewById
    SimpleDraweeView f58003j;

    /* JADX INFO: renamed from: j2, reason: collision with root package name */
    TextView f58004j2;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @ViewById
    SlidingTabLayout f58005k;

    /* JADX INFO: renamed from: k2, reason: collision with root package name */
    LinearLayout f58006k2;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @ViewById
    ViewPager f58007l;

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    private com.join.android.app.common.manager.b f58008l1;

    /* JADX INFO: renamed from: l2, reason: collision with root package name */
    public XListView2 f58009l2;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @ViewById
    SlidingTabLayoutGameDetailImage f58010m;

    /* JADX INFO: renamed from: m2, reason: collision with root package name */
    a0 f58011m2;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @ViewById
    View f58012n;

    /* JADX INFO: renamed from: n2, reason: collision with root package name */
    com.join.mgps.rpc.b f58013n2;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @ViewById
    ViewPager f58014o;

    /* JADX INFO: renamed from: o2, reason: collision with root package name */
    com.join.mgps.rpc.b f58015o2;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @ViewById
    View f58016p;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    @Pref
    PrefDef_ f58017p0;

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    String f58018p1;

    /* JADX INFO: renamed from: p2, reason: collision with root package name */
    GameFromPopoWinBean f58019p2;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @ViewById
    AppBarLayout f58020q;

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    String f58021q1;

    /* JADX INFO: renamed from: q2, reason: collision with root package name */
    PtrClassicFrameLayout f58022q2;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @ViewById
    RelativeLayout f58023r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @ViewById
    RelativeLayout f58026s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @ViewById
    RelativeLayout f58028t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @ViewById
    TextView f58030u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @ViewById
    RelativeLayout f58032v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @ViewById
    ConstraintLayout f58035w;

    /* JADX INFO: renamed from: w2, reason: collision with root package name */
    public SimpleDraweeView f58036w2;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @ViewById
    ImageView f58037x;

    /* JADX INFO: renamed from: x2, reason: collision with root package name */
    public TextView f58038x2;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @ViewById
    TextView f58039y;

    /* JADX INFO: renamed from: y2, reason: collision with root package name */
    public TextView f58040y2;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @ViewById
    ProgressBar f58041z;

    /* JADX INFO: renamed from: z2, reason: collision with root package name */
    public TextView f58042z2;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f57987c = "GamedetialModleFiveFragemnt";

    /* JADX INFO: renamed from: r1, reason: collision with root package name */
    int f58024r1 = 0;

    /* JADX INFO: renamed from: v1, reason: collision with root package name */
    String f58033v1 = "";

    /* JADX INFO: renamed from: r2, reason: collision with root package name */
    int f58025r2 = 1;

    /* JADX INFO: renamed from: s2, reason: collision with root package name */
    List<GameFromPopoWinBean.DataBean> f58027s2 = new ArrayList();

    /* JADX INFO: renamed from: t2, reason: collision with root package name */
    boolean f58029t2 = true;

    /* JADX INFO: renamed from: u2, reason: collision with root package name */
    int f58031u2 = 0;

    /* JADX INFO: renamed from: v2, reason: collision with root package name */
    boolean f58034v2 = false;
    Map<String, DownloadTask> T2 = new HashMap();
    Map<String, DownloadTask> U2 = new HashMap();
    boolean V2 = false;
    private List<View> W2 = new ArrayList();
    x X2 = new x();

    class a implements v7.e {
        a() {
        }

        @Override // v7.e
        public void a(Bitmap bitmap) {
            com.join.android.app.component.video.i.e(bitmap);
        }
    }

    class a0 extends BaseAdapter {

        class a implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ int f58045b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ b0 f58046c;

            a(final int val$position, final b0 val$holder) {
                this.f58045b = val$position;
                this.f58046c = val$holder;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                if (!s2.this.f58027s2.get(this.f58045b).getCurrent_game_state().equals("0")) {
                    this.f58046c.f58050b.setBackgroundResource(R.drawable.follow_none_image);
                    s2.this.f58027s2.get(this.f58045b).setCurrent_game_state("0");
                    s2 s2Var = s2.this;
                    s2Var.U(s2Var.f58027s2.get(this.f58045b).getId(), s2.this.f57989d, this.f58046c);
                    s2 s2Var2 = s2.this;
                    int i10 = s2Var2.f58024r1 - 1;
                    s2Var2.f58024r1 = i10;
                    s2Var2.f58024r1 = i10;
                    if (i10 == 0) {
                        s2Var2.E.setImageResource(R.drawable.follow_none_image);
                        s2.this.F.setText("收藏");
                        return;
                    }
                    return;
                }
                this.f58046c.f58050b.setBackgroundResource(R.drawable.followed_image);
                s2.this.f57992e2.setVisibility(0);
                s2.this.f58009l2.setVisibility(8);
                s2.this.f58002i2.setVisibility(0);
                s2.this.f58004j2.setText("收藏成功");
                s2.this.f58006k2.setVisibility(8);
                s2.Y2 = s2.this.f58027s2.get(this.f58045b).getId();
                s2 s2Var3 = s2.this;
                s2Var3.f58029t2 = false;
                int i11 = s2Var3.f58024r1 + 1;
                s2Var3.f58024r1 = i11;
                if (i11 > 0) {
                    s2Var3.E.setImageResource(R.drawable.followed_image);
                    s2.this.F.setText("已收藏");
                }
            }
        }

        a0() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return s2.this.f58027s2.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int position) {
            return s2.this.f58027s2.get(position);
        }

        @Override // android.widget.Adapter
        public long getItemId(int position) {
            return position;
        }

        @Override // android.widget.Adapter
        public View getView(final int position, View convertView, ViewGroup parent) {
            b0 b0Var;
            if (convertView == null) {
                convertView = LayoutInflater.from(s2.this.f58001i1).inflate(R.layout.list_item, (ViewGroup) null);
                b0Var = s2.this.new b0();
                b0Var.f58049a = (SimpleDraweeView) convertView.findViewById(R.id.iv_img);
                b0Var.f58050b = (ImageView) convertView.findViewById(R.id.iv_coll);
                b0Var.f58051c = (TextView) convertView.findViewById(R.id.tv_title);
                b0Var.f58052d = (TextView) convertView.findViewById(R.id.tv_size);
                b0Var.f58054f = (RelativeLayout) convertView.findViewById(R.id.ll_gameform);
                b0Var.f58055g = (RelativeLayout) convertView.findViewById(R.id.rl_content);
                convertView.setTag(b0Var);
            } else {
                b0Var = (b0) convertView.getTag();
            }
            if (s2.this.f58027s2.get(position).getGame_list().get(0).getGame_ico() == null || s2.this.f58027s2.get(position).getGame_list().get(0).getGame_ico().equals("")) {
                b0Var.f58049a.setImageResource(R.drawable.main_normal_icon);
            } else {
                b0Var.f58049a.setImageURI(s2.this.f58027s2.get(position).getGame_list().get(0).getGame_ico());
            }
            b0Var.f58051c.setText(s2.this.f58027s2.get(position).getTitle());
            b0Var.f58052d.setText(s2.this.f58027s2.get(position).getGame_count() + "款");
            if (s2.this.f58027s2.get(position).getCurrent_game_state().equals("0")) {
                b0Var.f58050b.setBackgroundResource(R.drawable.follow_none_image);
            } else {
                b0Var.f58050b.setBackgroundResource(R.drawable.followed_image);
                s2.this.f58024r1++;
            }
            b0Var.f58055g.setOnClickListener(new a(position, b0Var));
            return convertView;
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            s2.this.f58007l.setCurrentItem(1);
        }
    }

    class b0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        SimpleDraweeView f58049a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        ImageView f58050b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        TextView f58051c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        TextView f58052d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        TextView f58053e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        RelativeLayout f58054f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        RelativeLayout f58055g;

        b0() {
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            s2.this.N0();
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            PaPaBannerListActivity_.intent(s2.this.f58001i1).e(1).a(true).c(s2.this.f57986b2.getGame_company_id()).d(s2.this.f57986b2.getCompany_name()).start();
        }
    }

    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            s2.this.N0();
        }
    }

    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().goShareWebActivity(s2.this.f58001i1, s2.this.f57988c2.getActivity_entry().getUrl() + s2.this.f57988c2.getCrc_sign_id());
        }
    }

    class g implements Animation.AnimationListener {
        g() {
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

    class h implements com.join.mgps.Util.x1.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f58062a;

        h(final boolean val$needRetry) {
            this.f58062a = val$needRetry;
        }

        @Override // com.join.mgps.Util.x1.b
        public void a(com.join.mgps.Util.x1.c result) {
            if (result.a() != 1) {
                if (this.f58062a) {
                    s2.this.d1(false);
                }
            } else {
                s2.this.f58001i1.clickBack();
                com.join.mgps.Util.x1 x1VarC = com.join.mgps.Util.x1.c();
                s2 s2Var = s2.this;
                x1VarC.e(s2Var.f58001i1, s2Var.f57991e.getFrom_id(), result.b());
                ToastManager.show("授权成功");
            }
        }
    }

    class i implements com.join.mgps.callbacks.d {
        i() {
        }

        @Override // com.join.mgps.callbacks.d
        public void onClickCancle() {
        }

        @Override // com.join.mgps.callbacks.d
        public void onClickOk() {
        }
    }

    class j implements ViewPager.OnPageChangeListener {
        j() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i10) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i10, float v10, int i11) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i10) {
            if (!s2.this.r0() || i10 != 0) {
                s2.this.pauseVideo();
            } else {
                s2 s2Var = s2.this;
                s2Var.f58001i1.autoPlayVideo(s2Var.f58000i);
            }
        }
    }

    class k implements AppBarLayout.OnOffsetChangedListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f58066a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f58067b;

        k(final View val$statuHVIew, final int val$tab_bar_corner) {
            this.f58066a = val$statuHVIew;
            this.f58067b = val$tab_bar_corner;
        }

        @Override // com.google.android.material.appbar.AppBarLayout.OnOffsetChangedListener, com.google.android.material.appbar.AppBarLayout.BaseOnOffsetChangedListener
        public void onOffsetChanged(AppBarLayout appBarLayout, int verticalOffset) {
            int currentState;
            View view;
            try {
                int iAbs = Math.abs(verticalOffset);
                s2 s2Var = s2.this;
                if (iAbs < s2Var.R1 - s2Var.V1 && ((view = s2Var.f57998h) == null || view.getVisibility() != 0)) {
                    s2.this.U.setConner_top_right(this.f58067b);
                    s2.this.U.setConner_top_left(this.f58067b);
                    s2.this.U.invalidate();
                    s2.this.f58026s.setVisibility(0);
                    s2.this.f58028t.setVisibility(0);
                    s2.this.f58023r.setVisibility(8);
                    s2.this.X.setBackgroundColor(0);
                    if (s2.this.f58008l1 != null) {
                        s2.this.f58008l1.n(R.color.black_alpha);
                    }
                    s2 s2Var2 = s2.this;
                    StandardVideoView standardVideoView = s2Var2.f58000i;
                    if (standardVideoView != null && !s2Var2.V2 && standardVideoView.getCurrentState() == 5 && s2.this.f58000i.i()) {
                        s2.this.f58000i.onVideoResume(false);
                    }
                    this.f58066a.setVisibility(4);
                    return;
                }
                s2.this.U.setConner_top_right(0);
                s2.this.U.setConner_top_left(0);
                s2.this.U.invalidate();
                s2.this.f58023r.setVisibility(0);
                s2.this.f58026s.setVisibility(8);
                s2.this.f58028t.setVisibility(8);
                s2.this.X.setBackgroundColor(-1);
                StandardVideoView standardVideoView2 = s2.this.f58000i;
                if (standardVideoView2 != null && standardVideoView2.i() && (currentState = s2.this.f58000i.getCurrentState()) == 2) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("currentState=");
                    sb2.append(currentState);
                    sb2.append(" -->performClick");
                    s2.this.f58000i.onVideoPause();
                }
                if (s2.this.f58008l1 != null) {
                    s2.this.f58008l1.n(R.color.black_30_alpha);
                }
                this.f58066a.setVisibility(0);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    class l implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ RelativeLayout.LayoutParams f58069b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ RelativeLayout.LayoutParams f58070c;

        l(final RelativeLayout.LayoutParams val$lp, final RelativeLayout.LayoutParams val$lp1) {
            this.f58069b = val$lp;
            this.f58070c = val$lp1;
        }

        @Override // java.lang.Runnable
        public void run() {
            s2 s2Var = s2.this;
            RelativeLayout relativeLayout = s2Var.V;
            if (relativeLayout != null) {
                s2Var.R1 = (int) (relativeLayout.getMeasuredHeight() + s2.this.getResources().getDimension(R.dimen.wdp36));
                RelativeLayout.LayoutParams layoutParams = this.f58069b;
                s2 s2Var2 = s2.this;
                layoutParams.height = s2Var2.R1;
                this.f58070c.height = -1;
                s2Var2.f58014o.setLayoutParams(layoutParams);
            }
        }
    }

    class m implements Runnable {
        m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            s2 s2Var = s2.this;
            RelativeLayout relativeLayout = s2Var.X;
            if (relativeLayout != null) {
                s2Var.V1 = (int) (relativeLayout.getMeasuredHeight() + s2.this.getResources().getDimension(R.dimen.wdp18));
                s2 s2Var2 = s2.this;
                s2Var2.W.setMinimumHeight(s2Var2.V1);
            }
        }
    }

    class n implements View.OnClickListener {
        n() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (AccountUtil_.getInstance_(s2.this.f58001i1).isTourist()) {
                IntentUtil.getInstance().goLogin(s2.this.f58001i1);
            } else {
                IntentUtil.getInstance().goShareWebActivity(s2.this.getContext(), s2.this.f57986b2.getFeedback_issue_url());
            }
        }
    }

    class o extends BaseAdapter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f58074b;

        class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public TextView f58076a;

            a() {
            }
        }

        o(final List val$goldenFingers) {
            this.f58074b = val$goldenFingers;
        }

        @Override // android.widget.Adapter
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public String getItem(int position) {
            return (String) this.f58074b.get(position);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.f58074b.size();
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
                aVar2.f58076a = (TextView) viewInflate.findViewById(R.id.name);
                viewInflate.setTag(aVar2);
                aVar = aVar2;
                convertView = viewInflate;
            }
            aVar.f58076a.setText(getItem(position));
            ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) aVar.f58076a.getLayoutParams();
            if (position == getCount() - 1) {
                ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = context.getResources().getDimensionPixelOffset(R.dimen.wdp20);
            } else {
                ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = 0;
            }
            aVar.f58076a.setLayoutParams(layoutParams);
            return convertView;
        }
    }

    class p implements Runnable {
        p() {
        }

        @Override // java.lang.Runnable
        public void run() {
            androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior behavior = ((androidx.coordinatorlayout.widget.CoordinatorLayout.LayoutParams) s2.this.f58020q.getLayoutParams()).getBehavior();
            if (behavior != null) {
                int[] iArr = new int[2];
                s2.this.f58005k.getLocationInWindow(iArr);
                s2 s2Var = s2.this;
                behavior.onNestedPreScroll(s2Var.H, s2Var.f58020q, s2Var.f58005k, 0, iArr[1], new int[]{0, 0}, 0);
            }
        }
    }

    class q implements ViewPager.OnPageChangeListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.adapter.h0 f58079b;

        q(final com.join.mgps.adapter.h0 val$adapter) {
            this.f58079b = val$adapter;
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int state) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int position) {
            int i10 = 0;
            while (i10 < this.f58079b.getCount()) {
                if (this.f58079b.getItem(i10) instanceof com.join.mgps.callbacks.p) {
                    ((com.join.mgps.callbacks.p) this.f58079b.getItem(i10)).F(i10 == position);
                }
                i10++;
            }
        }
    }

    class r implements PopupWindow.OnDismissListener {
        r() {
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            s2 s2Var = s2.this;
            s2Var.f58025r2 = 1;
            s2Var.f0();
            s2 s2Var2 = s2.this;
            s2Var2.f58024r1 = 0;
            s2Var2.L0(1.0f);
            s2.Z2 = s2.this.f57999h2.getText().toString().trim();
            s2 s2Var3 = s2.this;
            if (s2Var3.f58029t2) {
                return;
            }
            s2Var3.f58029t2 = true;
            s2Var3.T();
        }
    }

    class s implements com.join.mgps.customview.j {
        s() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            s2 s2Var = s2.this;
            s2Var.f58025r2 = 1;
            s2Var.W();
            s2.this.l0();
        }
    }

    class t implements com.join.mgps.customview.i {
        t() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            s2.this.W();
            s2.this.l0();
        }
    }

    class u implements View.OnClickListener {
        u() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            s2.this.f57990d2.dismiss();
        }
    }

    class v implements View.OnClickListener {
        v() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            s2.f57982a3 = true;
            s2.this.startActivity(new Intent(s2.this.f58001i1, (Class<?>) BuildGameFromActivity_.class));
        }
    }

    class w implements View.OnClickListener {
        w() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            String strTrim = s2.this.f57999h2.getText().toString().trim();
            s2.Z2 = strTrim;
            if (com.join.mgps.Util.t.f(strTrim)) {
                s2.this.showToast("不能上传表情");
                return;
            }
            s2.this.f57990d2.dismiss();
            s2 s2Var = s2.this;
            if (s2Var.f58029t2) {
                return;
            }
            s2Var.f58029t2 = true;
            s2Var.T();
        }
    }

    class x extends PagerAdapter {

        class a implements View.OnTouchListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ int f58088b;

            a(final int val$position) {
                this.f58088b = val$position;
            }

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View v10, MotionEvent event) {
                if (s2.this.r0()) {
                    if (this.f58088b != 0) {
                        if (s2.this.q0()) {
                            ScreenshotTrueListAcvity_.intent(s2.this.f58001i1).fromData(s2.this.f57986b2.getGame_screen_shot().get(this.f58088b - 1)).gameId(s2.this.f57986b2.getGame_id()).start();
                        } else {
                            List<DetialShowImageBean> pic_info = s2.this.f57986b2.getPic_info();
                            ArrayList arrayList = new ArrayList();
                            if (pic_info != null) {
                                for (int i10 = 0; i10 < pic_info.size(); i10++) {
                                    arrayList.add(pic_info.get(i10).getRemote().getPath());
                                }
                            }
                            try {
                                Intent intent = new Intent(s2.this.f58001i1, (Class<?>) ImagePagerActivity.class);
                                String[] strArr = new String[arrayList.size()];
                                for (int i11 = 0; i11 < arrayList.size(); i11++) {
                                    strArr[i11] = (String) arrayList.get(i11);
                                }
                                if (com.join.mgps.Util.t2.i(s2.this.f57986b2.getVedio_url()) && this.f58088b == 0) {
                                    FullScreenActivity.VideoInfo videoInfo = new FullScreenActivity.VideoInfo();
                                    videoInfo.H(s2.this.f57986b2.getVedio_url());
                                    videoInfo.C(strArr[0]);
                                    FullScreenActivity_.intent(s2.this.f58001i1).a(videoInfo).start();
                                } else {
                                    intent.putExtra("image_urls", strArr);
                                    intent.putExtra("image_index", this.f58088b - 1);
                                    s2.this.f58001i1.startActivity(intent);
                                }
                            } catch (Exception e10) {
                                e10.printStackTrace();
                            }
                        }
                    }
                } else if (s2.this.q0()) {
                    ScreenshotTrueListAcvity_.intent(s2.this.f58001i1).fromData(s2.this.f57986b2.getGame_screen_shot().get(this.f58088b)).gameId(s2.this.f57986b2.getGame_id()).start();
                } else {
                    List<DetialShowImageBean> pic_info2 = s2.this.f57986b2.getPic_info();
                    ArrayList arrayList2 = new ArrayList();
                    if (pic_info2 != null) {
                        for (int i12 = 0; i12 < pic_info2.size(); i12++) {
                            arrayList2.add(pic_info2.get(i12).getRemote().getPath());
                        }
                    }
                    try {
                        Intent intent2 = new Intent(s2.this.f58001i1, (Class<?>) ImagePagerActivity.class);
                        String[] strArr2 = new String[arrayList2.size()];
                        for (int i13 = 0; i13 < arrayList2.size(); i13++) {
                            strArr2[i13] = (String) arrayList2.get(i13);
                        }
                        if (com.join.mgps.Util.t2.i(s2.this.f57986b2.getVedio_url()) && this.f58088b == 0) {
                            FullScreenActivity.VideoInfo videoInfo2 = new FullScreenActivity.VideoInfo();
                            videoInfo2.H(s2.this.f57986b2.getVedio_url());
                            videoInfo2.C(strArr2[0]);
                            FullScreenActivity_.intent(s2.this.f58001i1).a(videoInfo2).start();
                        } else {
                            intent2.putExtra("image_urls", strArr2);
                            intent2.putExtra("image_index", this.f58088b - 1);
                            s2.this.f58001i1.startActivity(intent2);
                        }
                    } catch (Exception e11) {
                        e11.printStackTrace();
                    }
                }
                return false;
            }
        }

        x() {
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public void destroyItem(ViewGroup container, int position, Object object) {
            container.removeView((View) object);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return s2.this.W2.size();
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public Object instantiateItem(ViewGroup container, final int position) {
            container.addView((View) s2.this.W2.get(position));
            View view = (View) s2.this.W2.get(position);
            view.setOnTouchListener(new a(position));
            return view;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public boolean isViewFromObject(View view, Object object) {
            return view == object;
        }
    }

    class y extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        ImageView f58090d;

        public y(View itemView) {
            super(itemView);
            this.f58090d = (ImageView) itemView.findViewById(R.id.img);
        }
    }

    class z extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
        z() {
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
            ImageView imageView = new ImageView(s2.this.f58001i1);
            imageView.setImageResource(R.drawable.icon);
            return s2.this.new y(imageView);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void A0(View view) {
        this.Q.r();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void B0(GamedetialMoreBean gamedetialMoreBean, View view) {
        IntentUtil.getInstance().goShareWebActivity(this.f58001i1, gamedetialMoreBean.getPrivacy_policy_url());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void C0(GamedetialMoreBean gamedetialMoreBean, View view) {
        GameDetailPermissionActivity_.intent(this.f58001i1).a(gamedetialMoreBean.getSensitive_authority()).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void D0(View view) {
        IntentUtil.getInstance().goShareWebActivity(this.f58001i1, "https://beian.miit.gov.cn/#/home");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ GamedetialModleFourBean E0(GamedetialModleFourBean gamedetialModleFourBean) {
        return gamedetialModleFourBean;
    }

    private void J0() {
    }

    private void e1() {
        try {
            GameScore game_score = this.f57986b2.getGame_score();
            if (!"1".equals(this.f57986b2.getComment_score_switch()) || game_score == null || !com.join.mgps.Util.t2.i(game_score.getScore())) {
                this.G2.setVisibility(8);
                return;
            }
            if ("0.0".equals(game_score.getScore()) || "0".equals(game_score.getScore())) {
                this.I2.setText("暂未出分");
                this.H2.setText("0");
            } else {
                this.H2.setText(game_score.getScore());
            }
            this.B2.setIntegerMark(false);
            this.B2.setEnabled(false);
            this.B2.setStarMark(game_score.getTotal_stars());
            this.G2.setVisibility(0);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private int getStatusBarHeight(Context context) {
        int identifier = context.getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    public static s2 m0(String gameId, ExtBean extBean, boolean autodown) {
        GamedetialModleBtFragemnt_ gamedetialModleBtFragemnt_ = new GamedetialModleBtFragemnt_();
        Bundle bundle = new Bundle();
        bundle.putBoolean(GamedetailVideoMainActivity_.AUTODOWN_EXTRA, autodown);
        bundle.putSerializable("extBean", extBean);
        bundle.putString("gameId", gameId);
        bundle.putBoolean(EndGameDetailActivity_.IS_FROM_VIDEO_EXTRA, false);
        gamedetialModleBtFragemnt_.setArguments(bundle);
        return gamedetialModleBtFragemnt_;
    }

    public static s2 n0(String gameId, ExtBean extBean, boolean autodown, boolean isFromVideo, boolean isShowComment) {
        GamedetialModleBtFragemnt_ gamedetialModleBtFragemnt_ = new GamedetialModleBtFragemnt_();
        Bundle bundle = new Bundle();
        bundle.putBoolean(GamedetailVideoMainActivity_.AUTODOWN_EXTRA, autodown);
        bundle.putSerializable("extBean", extBean);
        bundle.putString("gameId", gameId);
        bundle.putBoolean(EndGameDetailActivity_.IS_FROM_VIDEO_EXTRA, isFromVideo);
        bundle.putBoolean(GamedetailVideoMainActivity_.IS_SHOW_COMMENT_EXTRA, isShowComment);
        gamedetialModleBtFragemnt_.setArguments(bundle);
        return gamedetialModleBtFragemnt_;
    }

    private void v0() {
        try {
            if (this.f58000i != null) {
                if (!com.join.mgps.Util.t2.i(this.f57986b2.getGame_info_top_video_url()) && !com.join.mgps.Util.t2.i(this.f57986b2.getGame_info_top_pic())) {
                    this.f57998h.setVisibility(0);
                    this.f58003j.setVisibility(8);
                    this.f58000i.setVisibility(8);
                    return;
                }
                if (this.f57986b2.getBt_game_switch() == 1) {
                    com.join.android.app.common.utils.l.e(this.f58003j, R.drawable.banner_normal_icon, this.f57986b2.getGame_info_top_pic(), com.facebook.drawee.drawable.s.c.f27292i);
                    this.f58000i.setVisibility(8);
                    this.f58003j.setVisibility(0);
                    return;
                }
                String game_info_top_video_url = this.f57986b2.getGame_info_top_video_url();
                if (com.join.mgps.Util.t2.h(game_info_top_video_url)) {
                    com.join.android.app.common.utils.l.d(this.f58003j, R.drawable.banner_normal_icon, this.f57986b2.getGame_info_top_pic());
                    this.f58000i.setVisibility(8);
                    this.f58003j.setVisibility(0);
                }
                if (com.join.mgps.Util.t2.i(game_info_top_video_url)) {
                    com.join.android.app.common.utils.l.h(this.f58000i.f35112b, this.f57986b2.getGame_info_top_pic());
                    this.f58000i.setMuteWhenPlay(false);
                    this.f58000i.setPlayTag(this.f58033v1);
                    this.f58000i.setShowCoverWhenPause(false);
                    if (!this.L1) {
                        this.f58000i.setUp(game_info_top_video_url, StandardVideoView.D, this.f57986b2.getGame_name(), this.f57986b2.getGame_info_top_pic());
                        this.f58001i1.autoPlayVideo(this.f58000i);
                    } else {
                        com.join.android.app.component.video.j.c(this.f58000i, game_info_top_video_url, false, "");
                        com.join.android.app.component.video.j.a(this.f58000i);
                        this.f58000i.setSurfaceToPlay();
                        this.f58000i.setCover(this.f57986b2.getGame_info_top_pic());
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit y0() {
        updateDownloadView();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void z0(View view) {
        this.Q.r();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void F0() {
        if (com.join.android.app.common.utils.m.j(getContext())) {
            try {
                String uid = AccountUtil_.getInstance_(getContext()).getUid();
                String token = AccountUtil_.getInstance_(getContext()).getToken();
                RequestModel<QueryDownloadInfoRequestArgs> requestModel = new RequestModel<>();
                requestModel.setDefault(getContext());
                QueryDownloadInfoRequestArgs queryDownloadInfoRequestArgs = new QueryDownloadInfoRequestArgs();
                queryDownloadInfoRequestArgs.setGameId(this.f57989d);
                queryDownloadInfoRequestArgs.setUid(uid);
                queryDownloadInfoRequestArgs.setToken(token);
                requestModel.setArgs(queryDownloadInfoRequestArgs);
                ResponseModel<QueryDownloadInfoResponseData> responseModelBody = com.join.mgps.rpc.impl.i.P0().N0().f0(requestModel).execute().body();
                if (responseModelBody == null || responseModelBody.getCode() != 600) {
                    return;
                }
                P0(responseModelBody.getData());
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    View G0(String s10, int resId, ViewGroup parent) {
        if (TextUtils.isEmpty(s10)) {
            return null;
        }
        View viewInflate = LayoutInflater.from(this.f58001i1).inflate(R.layout.layout_tag_game_detail_profile, parent, false);
        ImageView imageView = (ImageView) viewInflate.findViewById(R.id.icon);
        ((TextView) viewInflate.findViewById(R.id.name)).setText(s10);
        imageView.setBackgroundResource(resId);
        return viewInflate;
    }

    public void H0(GamedetialModleFourBean modleFourBean) {
        try {
            this.W2.clear();
            if (r0()) {
                View viewInflate = LayoutInflater.from(this.f58001i1).inflate(R.layout.gamedetail_item_video_bt, (ViewGroup) this.f58014o, false);
                this.f57996g = (RelativeLayout) viewInflate.findViewById(R.id.videolayout);
                this.f57998h = viewInflate.findViewById(R.id.nullView);
                this.f58000i = (StandardVideoView) viewInflate.findViewById(R.id.videoPlayer);
                this.f58003j = (SimpleDraweeView) viewInflate.findViewById(R.id.iv_book_bg);
                this.R = viewInflate.findViewById(R.id.v_mask);
                this.V.post(new l((RelativeLayout.LayoutParams) this.f58000i.getLayoutParams(), (RelativeLayout.LayoutParams) this.f58003j.getLayoutParams()));
                this.X.post(new m());
                v0();
                this.W2.add(viewInflate);
            } else {
                this.f58008l1.n(R.color.black_alpha);
                this.P.setVisibility(0);
            }
            if (!r0()) {
                this.f58014o.setVisibility(4);
                if (this.f57998h == null) {
                    this.f57998h = new View(this.f58001i1);
                }
                this.f58014o.getLayoutParams().height = getResources().getDimensionPixelOffset(R.dimen.wdp100);
                this.f57998h.setVisibility(0);
            }
            this.f58012n.setVisibility(8);
            this.f58010m.setVisibility(8);
            this.f58012n.setVisibility(8);
            this.f58010m.postInvalidate();
            this.X2.notifyDataSetChanged();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Receiver(actions = {"com.broadcast.bespeak.sussess"})
    void I0(Intent intent) {
        if (intent != null) {
            String stringExtra = intent.getStringExtra("gameid");
            int intExtra = intent.getIntExtra("game_book", 0);
            String stringExtra2 = intent.getStringExtra("message");
            DomainInfoBean domainInfoBean = (DomainInfoBean) intent.getSerializableExtra("pd_info");
            X0(stringExtra, intExtra);
            if (intExtra == 1) {
                if (domainInfoBean != null) {
                    UtilsMy.D4(getContext(), domainInfoBean.getInfo(), "game_search_subscribe");
                }
                com.join.mgps.Util.h0.h0(getContext()).J(getContext(), domainInfoBean, stringExtra2);
            }
        }
    }

    @Override // com.join.mgps.callbacks.j
    public void K() {
        GamedetialModleFourBean gamedetialModleFourBean = this.f57986b2;
        if (gamedetialModleFourBean == null) {
            return;
        }
        List<String> golden_finger = (gamedetialModleFourBean.getRoom_cfg_info() == null || this.f57986b2.getRoom_cfg_info().getGolden_finger() == null || this.f57986b2.getRoom_cfg_info().getGolden_finger().size() <= 0) ? null : this.f57986b2.getRoom_cfg_info().getGolden_finger();
        if (golden_finger == null) {
            return;
        }
        View viewInflate = LayoutInflater.from(this.f58001i1).inflate(R.layout.layout_game_detail_sheet_golden_finger, (ViewGroup) this.Q, false);
        ListView listView = (ListView) viewInflate.findViewById(R.id.listView);
        viewInflate.findViewById(R.id.close).setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.q2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f57904b.z0(view);
            }
        });
        listView.setAdapter((ListAdapter) new o(golden_finger));
        R0(viewInflate);
    }

    void K0(TextView mgListviewItemInstall, GamedetialModleFourBean collectionBeanSub) {
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
            } else if ((down_status == 2 || down_status == 6) && !z10) {
                mgListviewItemInstall.setText("即将开放");
                mgListviewItemInstall.setEnabled(false);
                mgListviewItemInstall.setTextColor(-1);
                mgListviewItemInstall.setBackgroundResource(R.drawable.detial_simple_grey_selecter);
                mgListviewItemInstall.setVisibility(0);
            } else if (down_status != 6 || z10) {
                this.f58030u.setText(o0(this.f58001i1.getResources().getString(R.string.download_status_download)));
                if (iX0 > 0) {
                    mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.pay_game_amount, com.join.mgps.Util.t2.n(iX0)));
                } else {
                    mgListviewItemInstall.setTextColor(-1);
                    mgListviewItemInstall.setBackgroundResource(R.drawable.detial_simple_normal_selecter);
                }
            } else {
                mgListviewItemInstall.setText("预约");
                mgListviewItemInstall.setBackgroundResource(R.drawable.detial_simple_normal_selecter);
                mgListviewItemInstall.setVisibility(0);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void L0(float bgAlpha) {
        WindowManager.LayoutParams attributes = this.f58001i1.getWindow().getAttributes();
        attributes.alpha = bgAlpha;
        if (bgAlpha == 1.0f) {
            this.f58001i1.getWindow().clearFlags(2);
        } else {
            this.f58001i1.getWindow().addFlags(2);
        }
        this.f58001i1.getWindow().setAttributes(attributes);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void M0(b0 holder) {
        holder.f58050b.setBackgroundResource(R.drawable.follow_none_image);
    }

    @Click
    void N0() {
        ShareBean shareBean = new ShareBean();
        String share_url = this.f57988c2.getShare_url();
        shareBean.setqZoneShareUrl(share_url);
        shareBean.setQqUrl(share_url);
        shareBean.setWechatFriendUrl(share_url);
        shareBean.setWechatShareUrl(share_url);
        shareBean.setWeiboShareUrl(share_url);
        shareBean.setTitle(this.f57988c2.getGame_name());
        shareBean.setText(this.f57988c2.getInfo());
        shareBean.setImageUrl(this.f57988c2.getIco_remote());
        shareBean.setFrom(2);
        shareBean.setGameId(this.f57988c2.getGame_id());
        if (this.f57988c2.getShare_config() != null && this.f57988c2.getShare_config().getShare_switch() == 1) {
            shareBean.setIntentData(this.f57988c2.getShare_config().getJump_info());
        }
        com.join.mgps.Util.w.r(this.f58001i1, shareBean);
    }

    @Click
    void O0() {
        ShareBean shareBean = new ShareBean();
        String share_url = this.f57988c2.getShare_url();
        shareBean.setqZoneShareUrl(share_url);
        shareBean.setQqUrl(share_url);
        shareBean.setWechatFriendUrl(share_url);
        shareBean.setWechatShareUrl(share_url);
        shareBean.setWeiboShareUrl(share_url);
        shareBean.setImageUrl(this.f57988c2.getIco_remote());
        shareBean.setTitle(this.f57988c2.getGame_name());
        shareBean.setText(this.f57988c2.getInfo());
        shareBean.setFrom(2);
        shareBean.setGameId(this.f57988c2.getGame_id());
        if (this.f57988c2.getShare_config() != null && this.f57988c2.getShare_config().getShare_switch() == 1) {
            shareBean.setIntentData(this.f57988c2.getShare_config().getJump_info());
        }
        com.join.mgps.Util.w.r(this.f58001i1, shareBean);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void P0(QueryDownloadInfoResponseData resourceData) {
        if (resourceData != null) {
            ((DownloadMethodMultiDialog_.k) ((DownloadMethodMultiDialog_.k) ((DownloadMethodMultiDialog_.k) DownloadMethodMultiDialog_.intent(this.f58001i1).flags(805306368)).i(this.f57989d).extra("data", resourceData)).extra("fromRecomDown", false)).k(resourceData.isForceShow()).j(true).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Q0(String sre) {
        Toast.makeText(this.f58001i1, sre, 0).show();
    }

    void R0(View view) {
        if (this.Q == null) {
            return;
        }
        view.setPadding(0, getStatusBarHeight(this.f58001i1), 0, 0);
        this.Q.I(view);
        this.Q.setFocusable(true);
        this.Q.setFocusableInTouchMode(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 4000)
    public void S0() {
        com.join.mgps.Util.e.g(this.E2);
        S0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void T() {
        try {
            UserInfo accountData = AccountUtil_.getInstance_(this.f58001i1).getAccountData();
            LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
            linkedMultiValueMap.add("uid", Integer.valueOf(accountData.getUid()));
            linkedMultiValueMap.add(Constants.TOKEN, accountData.getToken());
            linkedMultiValueMap.add("group_id", Y2);
            linkedMultiValueMap.add("game_id", this.f57989d);
            linkedMultiValueMap.add("game_title", Z2);
            linkedMultiValueMap.add("device_id", this.f58018p1);
            linkedMultiValueMap.add("version", this.f58021q1);
            GameFromBooleanBean gameFromBooleanBeanA = this.f58015o2.A(linkedMultiValueMap);
            if (gameFromBooleanBeanA != null && gameFromBooleanBeanA.getError() == 0 && gameFromBooleanBeanA.getData() != null && gameFromBooleanBeanA.getData().isState()) {
                showToast("收藏成功!");
                MApplication.f3167a2 = true;
            } else if (gameFromBooleanBeanA != null && gameFromBooleanBeanA.getData() != null && gameFromBooleanBeanA.getData().getCode() == 10002) {
                showToast("游戏重复!");
            } else if (gameFromBooleanBeanA == null || gameFromBooleanBeanA.getData() == null || 10001 != gameFromBooleanBeanA.getData().getCode()) {
                showToast("收藏失败!");
            } else {
                showToast("游戏不存在!");
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void T0() {
        try {
            this.L2.setImageResource(R.drawable.line_blue_bg);
            Animation animationLoadAnimation = AnimationUtils.loadAnimation(this.f58001i1, R.anim.img_translate);
            this.P2 = animationLoadAnimation;
            animationLoadAnimation.setFillAfter(true);
            this.O2.setVisibility(0);
            this.O2.startAnimation(this.P2);
            this.P2.setAnimationListener(new g());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void U(String id2, String game_id, b0 holder) {
        try {
            if (com.join.android.app.common.utils.m.j(this.f58001i1)) {
                LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
                linkedMultiValueMap.add("uid", Integer.valueOf(this.S2.getUid()));
                linkedMultiValueMap.add(Constants.TOKEN, this.S2.getToken());
                linkedMultiValueMap.add("group_id", id2);
                linkedMultiValueMap.add("game_id", game_id);
                linkedMultiValueMap.add("device_id", this.f58018p1);
                linkedMultiValueMap.add("version", this.f58021q1);
                GameFromBooleanBean gameFromBooleanBeanT = this.f58015o2.t(linkedMultiValueMap);
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

    void U0() {
        try {
            this.O2.clearAnimation();
            this.O2.setVisibility(8);
            this.L2.setImageResource(R.drawable.line_white_bg);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Click
    void V() {
        this.O.setVisibility(8);
        ((GamedetailVideoMainActivity_) getActivity()).shakeAnimback();
    }

    @Click
    void V0() {
        IntentUtil.getInstance().goMyGameManagerActivity(this.f58001i1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void W() {
        try {
            XListView2 xListView2 = this.f58009l2;
            if (xListView2 != null) {
                xListView2.l();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void W0() {
        XListView2 xListView2 = this.f58009l2;
        if (xListView2 != null) {
            try {
                xListView2.g();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void X0(String gameId, int game_book) {
        GamedetialModleFourBean gamedetialModleFourBean;
        if (com.join.mgps.Util.t2.h(gameId) || (gamedetialModleFourBean = this.f57988c2) == null || this.f58030u == null) {
            return;
        }
        gamedetialModleFourBean.setGame_book(game_book);
        UtilsMy.E3(this.f58030u, this.f57988c2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Y0(int number) {
        try {
            if (number < 100) {
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.K2.getLayoutParams();
                layoutParams.width = getResources().getDimensionPixelOffset(R.dimen.wdp24);
                layoutParams.height = getResources().getDimensionPixelOffset(R.dimen.wdp24);
                this.K2.setLayoutParams(layoutParams);
                this.K2.setCompoundDrawables(null, null, null, null);
                this.K2.setBackgroundResource(R.drawable.mygame_big_round);
                this.K2.setPadding(1, 0, 0, 1);
            } else {
                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.K2.getLayoutParams();
                layoutParams2.width = getResources().getDimensionPixelOffset(R.dimen.dp70);
                layoutParams2.height = getResources().getDimensionPixelOffset(R.dimen.round_large_size);
                layoutParams2.setMargins(4, (int) TypedValue.applyDimension(1, 7.0f, getResources().getDisplayMetrics()), 0, 0);
                this.K2.setGravity(17);
                this.K2.setLayoutParams(layoutParams2);
                this.K2.setCompoundDrawables(null, null, null, null);
                this.K2.setBackgroundResource(R.drawable.message_round);
                this.K2.setPadding(1, 0, 2, 1);
            }
            this.K2.setVisibility(0);
            this.K2.setText(number + "");
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Z0(int downloadingNumber) {
        if (downloadingNumber == 0) {
            U0();
        } else {
            T0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void a1() {
        XListView2 xListView2 = this.f58009l2;
        if (xListView2 != null) {
            try {
                xListView2.u();
                this.f58009l2.v();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    void addFrom(DownloadTask downloadTask) {
        ExtBean extBean = this.f57991e;
        if (extBean == null || TextUtils.isEmpty(extBean.getFrom()) || downloadTask == null) {
            return;
        }
        if (!"112".equals(this.f57991e.getFrom())) {
            this.f57991e.setFrom(PointType.ANTI_SPAM);
            downloadTask.setExt(JsonMapper.toJsonString(this.f57991e));
            return;
        }
        ExtBean extBean2 = new ExtBean();
        extBean2.setFrom(PointType.ANTI_SPAM);
        extBean2.setPosition("112");
        extBean2.setLocation(this.f57991e.getLocation());
        downloadTask.setExt(JsonMapper.toJsonString(extBean2));
    }

    @AfterViews
    void afterView() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f57989d = arguments.getString("gameId");
            this.f57993f = arguments.getBoolean(GamedetailVideoMainActivity_.AUTODOWN_EXTRA);
            this.L1 = arguments.getBoolean(EndGameDetailActivity_.IS_FROM_VIDEO_EXTRA);
            this.f57985b1 = arguments.getBoolean(GamedetailVideoMainActivity_.IS_SHOW_COMMENT_EXTRA);
            this.f57991e = (ExtBean) arguments.getSerializable("extBean");
        }
        this.f58033v1 = this.f57987c + System.currentTimeMillis();
        if (this.L1) {
            this.f58033v1 = "PapaMainAdapter";
        }
        if (this.f57991e == null) {
            this.f57991e = new ExtBean();
        }
        GamedetailVideoMainActivity gamedetailVideoMainActivity = (GamedetailVideoMainActivity) getActivity();
        this.f58001i1 = gamedetailVideoMainActivity;
        if (gamedetailVideoMainActivity.gethideOrshowCover()) {
            this.O.setVisibility(0);
        } else {
            this.O.setVisibility(8);
        }
        this.I.setVisibility(8);
        this.J.setVisibility(8);
        this.H.setVisibility(8);
        this.f57994f1 = com.join.mgps.rpc.impl.d.O1();
        this.f58013n2 = com.join.mgps.rpc.impl.a.c0();
        this.f58015o2 = com.join.mgps.rpc.impl.a.c0();
        com.join.mgps.Util.j0.a().d(this);
        RequestBeanUtil.getInstance(this.f58001i1);
        this.f58021q1 = RequestBeanUtil.getVersionAndVersionName();
        this.f58008l1 = new com.join.android.app.common.manager.b(this.f58001i1);
        this.f58001i1.getWindow().setFlags(67108864, 67108864);
        this.f58008l1.m(true);
        this.f58008l1.n(R.color.black_alpha);
        View childAt = ((ViewGroup) this.f58001i1.findViewById(android.R.id.content)).getChildAt(0);
        if (childAt != null) {
            ViewCompat.setFitsSystemWindows(childAt, false);
        }
        getResources().getDimensionPixelSize(getResources().getIdentifier("status_bar_height", "dimen", "android"));
        GamedetailVideoMainActivity gamedetailVideoMainActivity2 = this.f58001i1;
        com.join.mgps.Util.p2.c(gamedetailVideoMainActivity2, com.join.mgps.Util.p2.d(gamedetailVideoMainActivity2));
        Window window = getActivity().getWindow();
        window.clearFlags(67108864);
        window.getDecorView().setSystemUiVisibility(LogType.UNEXP_ANR);
        window.addFlags(Integer.MIN_VALUE);
        window.setStatusBarColor(0);
        GamedetialModleFourBean modleFourBeanShow = ((GamedetailVideoMainActivity) getActivity()).getModleFourBeanShow();
        if (modleFourBeanShow != null) {
            this.I.setVisibility(8);
            this.J.setVisibility(8);
            this.H.setVisibility(0);
            f1(modleFourBeanShow);
        } else {
            k0();
        }
        this.f57984a2 = getStatusBarHeight(this.f58001i1);
        androidx.coordinatorlayout.widget.CoordinatorLayout.LayoutParams layoutParams = (androidx.coordinatorlayout.widget.CoordinatorLayout.LayoutParams) this.X.getLayoutParams();
        View viewFindViewById = this.f58001i1.findViewById(R.id.statuHVIew);
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) viewFindViewById.getLayoutParams();
        layoutParams2.height = this.f57984a2;
        viewFindViewById.setLayoutParams(layoutParams2);
        ((ViewGroup.MarginLayoutParams) layoutParams).height = getResources().getDimensionPixelOffset(R.dimen.wdp96) + this.f57984a2;
        this.X.setLayoutParams(layoutParams);
        int dimension = (int) getResources().getDimension(R.dimen.wdp25);
        this.R1 = (((int) getResources().getDimension(R.dimen.wdp400)) - ((int) this.f58001i1.getResources().getDimension(R.dimen.wdp96))) - this.f57984a2;
        this.f58020q.addOnOffsetChangedListener((AppBarLayout.OnOffsetChangedListener) new k(viewFindViewById, dimension));
        CoordinatorLayout coordinatorLayout = this.H;
        if (coordinatorLayout instanceof CoordinatorLayout) {
            coordinatorLayout.setSheetLayout(this.Q);
        }
    }

    void b0() {
        this.J2.setKeyword(Where.detail.name());
        if (this.f57988c2 != null) {
            addFrom(this.J2);
            if (this.f57988c2.getGame_detailed() != null && com.join.mgps.Util.t2.i(this.f57988c2.getGame_detailed().getTpl_two_qq())) {
                com.join.mgps.Util.h0.h0(this.f58001i1).d0(this.f58001i1, this.f57988c2.getGame_detailed().getTpl_two_qq_key(), this.f57988c2.getGame_detailed().getAd_pic_qq(), this.f57988c2.getGame_detailed().getTpl_two_qq());
            }
            if (UtilsMy.z0(this.f57988c2.getPay_tag_info(), this.f57988c2.getCrc_sign_id()) <= 0) {
                UtilsMy.D1(this.J2, this.f57988c2);
                if (UtilsMy.o1(this.f58001i1, this.J2)) {
                    return;
                }
                if (this.f57988c2.getDown_status() == 5) {
                    UtilsMy.l1(this.f58001i1, this.J2);
                    return;
                } else {
                    UtilsMy.U0(this.f58001i1, this.J2, this.f57988c2.getTp_down_url(), this.f57988c2.getOther_down_switch(), this.f57988c2.getCdn_down_switch());
                    return;
                }
            }
            ExtBean extBean = this.f57991e;
            if (extBean != null && "checkgame".equals(extBean.getFrom())) {
                UtilsMy.A4(this.f58001i1, this.f57989d, this.f57991e.getFrom_id());
                return;
            }
            if (!UtilsMy.o1(this.f58001i1, this.J2)) {
                if (this.f57988c2.getDown_status() == 5) {
                    UtilsMy.l1(this.f58001i1, this.J2);
                } else {
                    UtilsMy.z4(this.f58001i1, this.f57989d);
                }
            }
            onDetailDownload();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void b1() {
        try {
            U0();
            this.K2.setVisibility(8);
            this.K2.setText("");
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.join.mgps.activity.gamedetail.BaseGameDetailFragment
    public void backpressedTofinishActivity() {
        StandardVideoView standardVideoView = this.f58000i;
        if (standardVideoView == null) {
            return;
        }
        standardVideoView.taskShotPic(new a());
        if (this.f58000i.getTimeHas() < 2000) {
            this.f58000i.onAutoCompletion();
        }
        com.join.android.app.component.video.i.f(this.f58000i);
        this.f58000i.getGSYVideoManager().z(this.f58000i);
        this.f58034v2 = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void c0(GameFromPopoWinBean data) {
        for (int i10 = 0; i10 < data.getData().size(); i10++) {
            this.f58027s2.add(data.getData().get(i10));
        }
        if (data.getData().size() < 10 && this.f58009l2 != null) {
            W0();
        }
        a0 a0Var = this.f58011m2;
        if (a0Var != null) {
            a0Var.notifyDataSetChanged();
        }
    }

    void c1() {
        showInstallButn();
        if (this.f58030u != null) {
            if (UtilsMy.x0(this.f57988c2.getPay_tag_info(), this.f57988c2.getCrc_sign_id()) > 0) {
                this.f58030u.setText(this.f58001i1.getResources().getString(R.string.pay_game_amount, this.f57988c2.getPay_tag_info().getPayGameAmount()));
            } else {
                this.f58030u.setText(o0(this.f58001i1.getResources().getString(R.string.download_status_download)));
                this.f58030u.setTextColor(getResources().getColor(R.color.detail_download_normal_txt));
                this.f58030u.setBackgroundResource(R.drawable.detial_simple_normal_selecter1);
            }
        }
        this.f58037x.setImageResource(R.drawable.detail_comment_download_continue);
        GamedetialModleFourBean gamedetialModleFourBean = this.f57988c2;
        if (gamedetialModleFourBean != null) {
            if (gamedetialModleFourBean.getBespeak_switch() != 1 || this.f57988c2.getDown_status() != 2) {
                UtilsMy.x0(this.f57988c2.getPay_tag_info(), this.f57988c2.getCrc_sign_id());
                K0(this.f58030u, this.f57988c2);
            } else {
                if (this.f57988c2.getGame_book() != 1) {
                    this.f58030u.setText("预约");
                    return;
                }
                this.f58030u.setText("已预约");
                UtilsMy.x0(this.f57988c2.getPay_tag_info(), this.f57988c2.getCrc_sign_id());
                K0(this.f58030u, this.f57988c2);
            }
        }
    }

    void changeDownloadTaskNumber(DownloadTask task, int from) {
        if (task == null) {
            return;
        }
        String crc_link_type_val = task.getCrc_link_type_val();
        if (from == 2) {
            if (!this.T2.containsKey(crc_link_type_val)) {
                this.T2.put(crc_link_type_val, task);
            }
            if (!this.U2.containsKey(crc_link_type_val)) {
                this.U2.put(crc_link_type_val, task);
            }
        } else if (from != 3) {
            if (from != 5) {
                if (from != 6) {
                    if (from == 7) {
                        if (this.T2.containsKey(crc_link_type_val)) {
                            this.T2.remove(crc_link_type_val);
                        }
                        if (this.U2.containsKey(crc_link_type_val)) {
                            this.U2.remove(crc_link_type_val);
                        }
                    } else if (from == 10) {
                        if (!this.T2.containsKey(crc_link_type_val)) {
                            this.T2.put(crc_link_type_val, task);
                        }
                        if (!this.U2.containsKey(crc_link_type_val)) {
                            this.U2.put(crc_link_type_val, task);
                        }
                    } else if (from == 11) {
                    }
                } else if (this.U2.containsKey(crc_link_type_val)) {
                    this.U2.remove(crc_link_type_val);
                }
            } else if (this.T2.containsKey(crc_link_type_val)) {
                this.T2.remove(crc_link_type_val);
            }
            if (this.U2.containsKey(crc_link_type_val)) {
                this.U2.remove(crc_link_type_val);
            }
        } else if (this.U2.containsKey(crc_link_type_val)) {
            this.U2.remove(crc_link_type_val);
        }
        updateDownloadView();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void changeGameFollow(int type) {
        String str;
        ResultMainBean resultMainBeanJ1;
        if (com.join.android.app.common.utils.m.j(this.f58001i1)) {
            UserInfo accountData = AccountUtil_.getInstance_(this.f58001i1).getAccountData();
            this.S2 = accountData;
            int uid = accountData != null ? accountData.getUid() : 0;
            try {
                PackageInfo packageInfo = this.f58001i1.getPackageManager().getPackageInfo(this.f58001i1.getPackageName(), 0);
                str = packageInfo.versionCode + "_" + packageInfo.versionName;
            } catch (PackageManager.NameNotFoundException e10) {
                e10.printStackTrace();
                str = "";
            }
            RequestdetialFolowAndBeSpeak requestdetialFolowAndBeSpeak = new RequestdetialFolowAndBeSpeak();
            requestdetialFolowAndBeSpeak.setApp_ver(str);
            requestdetialFolowAndBeSpeak.setGame_id(this.f57988c2.getCrc_sign_id());
            requestdetialFolowAndBeSpeak.setUid(uid);
            requestdetialFolowAndBeSpeak.setMobile(this.S2.getMobile());
            CommonRequestBean<RequestGameIdArgs> detialFollowAnd = RequestBeanUtil.getInstance(this.f58001i1).getDetialFollowAnd(requestdetialFolowAndBeSpeak);
            if (type == 1) {
                resultMainBeanJ1 = this.f57994f1.j1(detialFollowAnd);
            } else if (type == 2) {
                resultMainBeanJ1 = this.f57994f1.n(detialFollowAnd);
            } else if (type != 3) {
                resultMainBeanJ1 = type != 4 ? null : this.f57994f1.M0(detialFollowAnd);
            } else {
                resultMainBeanJ1 = this.f57994f1.g(detialFollowAnd);
            }
            if (resultMainBeanJ1 != null) {
                updateTitleButn(resultMainBeanJ1, type);
            }
        }
    }

    @Click
    void d0() {
        if (this.Q.getState() != BottomSheetLayout.State.HIDDEN) {
            this.Q.r();
        } else {
            this.f58001i1.clickBack();
            p0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 1000)
    public void d1(final boolean needRetry) {
        ExtBean extBean = this.f57991e;
        if (extBean == null || !"checkgame".equals(extBean.getFrom())) {
            return;
        }
        com.join.mgps.Util.x1.c().b(this.f58001i1, this.f57991e.getFrom_id(), new h(needRetry));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void e0() {
        try {
            this.Q2 = q5.f.M().V();
            int iD0 = q5.f.M().d0();
            this.R2 = iD0;
            Z0(iD0);
            int i10 = this.Q2;
            if (i10 != 0) {
                Y0(i10);
            } else {
                b1();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        updateDownloadView();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void f0() {
        if (this.f58027s2.size() > 0) {
            this.f58027s2.clear();
            a0 a0Var = this.f58011m2;
            if (a0Var != null) {
                a0Var.notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void f1(final GamedetialModleFourBean modleFourBean) {
        boolean z10;
        modleFourBean.setNodeId("2");
        this.f57988c2 = modleFourBean;
        this.f57986b2 = modleFourBean;
        try {
            if (modleFourBean.getBt_game_switch() == 1 && modleFourBean.getGame_ranking_pos() != null) {
                UtilsMy.F(modleFourBean.getGame_ranking_pos(), this.N, this.f58001i1);
            }
            modleFourBean.set_from_type(this.f57991e.get_from_type());
            modleFourBean.set_from(101);
            modleFourBean.setRecPosition(this.f57991e.getRecPosition());
            this.f57988c2.set_from_type(this.f57991e.get_from_type());
            this.f57988c2.set_from(101);
            this.f57988c2.setRecPosition(this.f57991e.getRecPosition());
            this.H.setVisibility(0);
            this.I.setVisibility(8);
            this.J.setVisibility(8);
            initView();
            ArrayList arrayList = new ArrayList();
            CommentAlllistIntentData commentAlllistIntentData = new CommentAlllistIntentData();
            commentAlllistIntentData.setGameId(modleFourBean.getGame_id());
            commentAlllistIntentData.setPackageName(modleFourBean.getPackageName());
            commentAlllistIntentData.setGameType(modleFourBean.getPlugin_num());
            commentAlllistIntentData.setGameIsStart(modleFourBean.getIs_started());
            if (modleFourBean.getGame_score() != null) {
                commentAlllistIntentData.setSgcSwitch(modleFourBean.getGame_score().getSgc_switch());
            }
            commentAlllistIntentData.setBespeakSwitch(modleFourBean.getBespeak_switch());
            commentAlllistIntentData.setCommentScoreSwitch(modleFourBean.getComment_score_switch());
            arrayList.add(new com.join.mgps.adapter.h0.a("详情", d2.u0(this.f57989d, this.f57993f, this.f57991e).a0(this)));
            com.join.mgps.fragment.t tVarS = com.join.mgps.fragment.t.S(commentAlllistIntentData);
            tVarS.V(new com.join.mgps.callbacks.c() { // from class: com.join.mgps.activity.r2
                @Override // com.join.mgps.callbacks.c
                public final GamedetialModleFourBean a() {
                    return s2.E0(modleFourBean);
                }
            });
            arrayList.add(new com.join.mgps.adapter.h0.a("评论", tVarS));
            arrayList.add(new com.join.mgps.adapter.h0.a("游戏单", com.join.mgps.fragment.j3.X(modleFourBean.getGame_company_id(), this.f57989d)));
            com.join.mgps.adapter.h0 h0Var = new com.join.mgps.adapter.h0(getChildFragmentManager(), arrayList);
            this.f58007l.setAdapter(h0Var);
            this.f58007l.setOffscreenPageLimit(3);
            this.f58005k.setViewPager(this.f58007l);
            if (this.f57985b1) {
                for (int i10 = 0; i10 < arrayList.size(); i10++) {
                    if (TextUtils.equals("评论", ((com.join.mgps.adapter.h0.a) arrayList.get(i10)).f62226a)) {
                        this.f58007l.setCurrentItem(i10);
                        break;
                    }
                }
                new Handler().postDelayed(new p(), 1500L);
            }
            this.f58007l.addOnPageChangeListener(new q(h0Var));
            if (arrayList.size() == 1) {
                this.f58012n.setVisibility(8);
                this.f58010m.setVisibility(8);
            }
            List<ServiceState> game_server_state = this.f57988c2.getGame_server_state();
            if (game_server_state == null || game_server_state.size() <= 0) {
                this.S.setVisibility(8);
            } else {
                this.S.setVisibility(0);
                ServiceState serviceState = game_server_state.get(0);
                TextView textView = this.T;
                StringBuilder sb2 = new StringBuilder();
                sb2.append(serviceState.getType() == 1 ? "开服" : "合服");
                sb2.append("通知:");
                sb2.append(com.join.mgps.Util.e0.I(serviceState.getAdd_time()));
                sb2.append(" ");
                sb2.append(com.join.mgps.Util.e0.D(serviceState.getAdd_time(), "HH:mm"));
                sb2.append(" ");
                sb2.append(serviceState.getTitle());
                textView.setText(sb2.toString());
            }
            H0(modleFourBean);
            this.f58010m.setData(modleFourBean);
            if (this.f57993f && q5.f.M().G(this.f57989d) == null) {
                com.php25.PDownload.d.c(modleFourBean.getDownloadtaskDown(), this.f58001i1);
                onDetailDownload();
            }
            GamedetialModleFourBean gamedetialModleFourBean = this.f57988c2;
            if (gamedetialModleFourBean != null) {
                if (gamedetialModleFourBean.getGame_follow() == 1) {
                    this.E.setImageResource(R.drawable.followed_image);
                    this.F.setText("已收藏");
                } else {
                    this.E.setImageResource(R.drawable.follow_none_image);
                    this.F.setText("收藏");
                }
            }
            List<DownloadTask> listH = modleFourBean.getMod_info() != null ? q5.f.M().H(modleFourBean.getMod_info().getMain_game_id(), modleFourBean.getMod_info().getMod_game_id()) : q5.f.M().I(this.f57988c2.getPackageName());
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
                    this.J2 = q5.f.M().G(this.f57989d);
                } else if (z11) {
                    if (this.f57988c2.getMod_info() != null) {
                        this.J2 = q5.f.M().G(this.f57988c2.getMod_info().getMod_game_id());
                    }
                } else if (z10) {
                    this.J2 = q5.f.M().G(this.f57989d);
                } else {
                    if (this.f57988c2.getMod_info() != null) {
                        this.J2 = q5.f.M().G(this.f57988c2.getMod_info().getMod_game_id());
                    }
                    if (this.J2 == null) {
                        this.J2 = q5.f.M().G(this.f57989d);
                    }
                }
            }
            DownloadTask downloadTask2 = this.J2;
            if (downloadTask2 == null) {
                this.J2 = this.f57988c2.getDownloadtaskDown();
                if (!UtilsMy.p0(this.f57988c2.getTag_info())) {
                    this.J2.setStatus(0);
                } else if (this.J2.getMod_info() == null) {
                    this.J2.setFileType(Dtype.android.name());
                    if (com.join.android.app.common.utils.g.t0(this.f58001i1).e(this.f58001i1, this.f57988c2.getPackageName())) {
                        APKUtils.a aVarN = com.join.android.app.common.utils.g.t0(this.f58001i1).n(this.f58001i1, this.f57988c2.getPackageName());
                        if (!com.join.mgps.Util.t2.i(this.f57988c2.getVer()) || aVarN.d() >= Integer.parseInt(this.f57988c2.getVer())) {
                            this.J2.setStatus(5);
                        } else {
                            this.J2.setStatus(9);
                        }
                    } else {
                        this.J2.setStatus(0);
                    }
                }
            } else {
                downloadTask2.setDownloadType(0);
                this.J2.setTask_down_type(0);
                this.J2.setScreenshot_pic(this.f57988c2.getScreenshot_pic());
            }
            if (("" + this.f57988c2.getPlugin_num()).equals("" + ConstantIntEnum.H5.value())) {
                GamedetialModleFourBean gamedetialModleFourBean2 = this.f57988c2;
                gamedetialModleFourBean2.setDown_count(gamedetialModleFourBean2.getStart_count());
            }
            updateButn();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Click({R.id.ll_notice})
    void g0() {
        if (this.f57986b2 != null) {
            DetialMoreServiceListActivity_.intent(this.f58001i1).a(this.f57986b2.getCrc_sign_id()).start();
        }
    }

    @Receiver(actions = {"com.broadcast.bespeak.sussess"})
    void g1() {
        this.f57988c2.setGame_book(1);
        updateButn();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getDownloadTaskInfo() {
        List<DownloadTask> listR = q5.f.M().r();
        List<DownloadTask> listQ = q5.f.M().q();
        if (listQ != null && listQ.size() > 0) {
            for (DownloadTask downloadTask : listQ) {
                this.T2.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
        if (listR != null && listR.size() > 0) {
            for (DownloadTask downloadTask2 : listR) {
                this.U2.put(downloadTask2.getCrc_link_type_val(), downloadTask2);
            }
        }
        updateDownloadView();
    }

    @Override // com.join.mgps.activity.gamedetail.BaseGameDetailFragment
    public ViewPager getViewPager() {
        return this.f58007l;
    }

    @Click
    void h0() {
        IntentUtil.getInstance().goMyGameManagerActivity(this.f58001i1);
    }

    @Override // com.join.mgps.activity.gamedetail.BaseGameDetailFragment
    public void hideCover() {
        this.O.setVisibility(8);
    }

    @Click
    void i0() {
        IntentUtil.getInstance().goMyGameManagerActivity(this.f58001i1);
    }

    void initView() {
        try {
            this.K.setVisibility(8);
            this.G.setText(this.f57986b2.getGame_name());
            v0();
            t0();
            if (!com.join.mgps.Util.t2.i(this.f57986b2.getGame_info_top_video_url()) && !com.join.mgps.Util.t2.i(this.f57986b2.getGame_info_top_pic())) {
                this.f58023r.setVisibility(0);
                this.f58026s.setVisibility(8);
                this.f58028t.setVisibility(8);
                this.X.getBackground().setAlpha(255);
            }
            int dimensionPixelSize = getResources().getDimensionPixelSize(getResources().getIdentifier("status_bar_height", "dimen", "android"));
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f58016p.getLayoutParams();
            layoutParams.height = dimensionPixelSize;
            this.f58016p.setLayoutParams(layoutParams);
            this.f58038x2 = (TextView) this.f58001i1.findViewById(R.id.appName);
            this.f58040y2 = (TextView) this.f58001i1.findViewById(R.id.appCompany);
            this.f58042z2 = (TextView) this.f58001i1.findViewById(R.id.appSize);
            this.A2 = (TextView) this.f58001i1.findViewById(R.id.appDownloadCount);
            this.B2 = (MStarBar) this.f58001i1.findViewById(R.id.comment_head_mstarBar);
            this.f58036w2 = (SimpleDraweeView) this.f58001i1.findViewById(R.id.appIcon);
            this.C2 = (LinearLayout) this.f58001i1.findViewById(R.id.companyLayout);
            this.D2 = (LinearLayout) this.f58001i1.findViewById(R.id.layoutGift);
            this.E2 = (SimpleDraweeView) this.f58001i1.findViewById(R.id.giftImage);
            this.F2 = (TextView) this.f58001i1.findViewById(R.id.giftContent);
            this.G2 = (LinearLayout) this.f58001i1.findViewById(R.id.scoreLayout);
            this.H2 = (TextView) this.f58001i1.findViewById(R.id.comment_head_point_tx);
            this.I2 = (TextView) this.f58001i1.findViewById(R.id.comment_head_num_tx);
            com.join.android.app.common.utils.l.h(this.f58036w2, this.f57986b2.getIco_remote());
            this.f58038x2.setText(this.f57986b2.getGame_name());
            this.f58040y2.setText(this.f57986b2.getCompany_name());
            if (this.f57986b2.getBespeak_switch() == 1) {
                if (this.f57986b2.getAppSize() == null || "0.00".equals(this.f57986b2.getAppSize())) {
                    this.f58042z2.setVisibility(8);
                } else {
                    this.f58042z2.setText(this.f57986b2.getAppSize() + "M");
                    this.f58042z2.setVisibility(0);
                }
                if (this.f57986b2.getBespeak_count() == null) {
                    this.A2.setText("已有0人预约");
                } else {
                    this.A2.setText("已有" + this.f57986b2.getBespeak_count() + "人预约");
                }
            } else {
                this.f58042z2.setVisibility(0);
                this.A2.setText(com.join.mgps.Util.t2.c(this.f57986b2.getDown_count()));
                this.f58042z2.setText(this.f57986b2.getAppSize() + "M");
                try {
                    if (this.f57986b2.getDown_status() == 5 && this.f57986b2.getSp_tag_info() != null && this.f57986b2.getSp_tag_info().getDown_res() != null) {
                        this.A2.setText(this.f57986b2.getSp_tag_info().getDown_res().getName());
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            if (this.f57986b2.getPlugin_num() != null) {
                if (this.f57986b2.getPlugin_num().equals(ConstantIntEnum.H5.value() + "")) {
                    this.f58042z2.setVisibility(8);
                    this.A2.setText(com.join.mgps.Util.t2.c(this.f57986b2.getDown_count()).replace("安装", this.f58001i1.getResources().getString(R.string.download_status_finished)));
                }
            }
            e1();
            this.G2.setOnClickListener(new b());
            if (com.join.mgps.Util.t2.h(this.f57986b2.getCompany_name())) {
                this.C2.setVisibility(8);
            } else {
                this.C2.setVisibility(8);
                this.D2.setOnClickListener(new c());
            }
            this.f58040y2.setOnClickListener(new d());
            if (this.f57986b2.getShare_config() == null || this.f57986b2.getShare_config().getShare_switch() != 1) {
                this.D2.setVisibility(8);
            } else {
                this.D2.setVisibility(0);
                com.join.android.app.common.utils.l.d(this.E2, R.drawable.user_gift, "");
                this.D2.setOnClickListener(new e());
            }
            if (this.f57986b2.getActivity_entry() == null) {
                this.D2.setVisibility(8);
                return;
            }
            this.D2.setVisibility(0);
            com.join.android.app.common.utils.l.h(this.E2, this.f57986b2.getActivity_entry().getPic());
            this.F2.setText(this.f57986b2.getActivity_entry().getTitle());
            S0();
            this.D2.setOnClickListener(new f());
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    @Click
    void instalButtomButn() {
        boolean z10;
        int game_book = this.f57988c2.getGame_book();
        if (this.f57988c2.getBespeak_switch() == 1 && game_book != 1 && this.f57988c2.getDown_status() == 2) {
            if (IntentUtil.getInstance().goLoginNetGame(this.f58001i1) || this.f57988c2.getGame_book() == 1) {
                return;
            }
            changeGameFollow(4);
            return;
        }
        if (("" + this.f57988c2.getPlugin_num()).equals("" + ConstantIntEnum.H5.value())) {
            IntentUtil.getInstance().goShareWebActivity(this.f58001i1, this.f57988c2.getDown_url_remote());
            UtilsMy.j3(this.J2, this.f58001i1);
        }
        DownloadTask downloadTask = this.J2;
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        if (this.J2 != null && UtilsMy.x0(this.f57988c2.getPay_tag_info(), this.f57988c2.getCrc_sign_id()) > 0) {
            status = 43;
        }
        GamedetialModleFourBean gamedetialModleFourBean = this.f57988c2;
        if (gamedetialModleFourBean != null && gamedetialModleFourBean.getMod_info() != null) {
            List<DownloadTask> listH = q5.f.M().H(this.f57988c2.getMod_info().getMain_game_id(), this.f57988c2.getMod_info().getMod_game_id());
            if (listH == null || listH.size() <= 0) {
                this.J2 = null;
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
                    this.J2 = q5.f.M().G(this.f57989d);
                } else if (z11) {
                    if (this.f57988c2.getMod_info() != null) {
                        this.J2 = q5.f.M().G(this.f57988c2.getMod_info().getMod_game_id());
                    }
                } else if (z10) {
                    this.J2 = q5.f.M().G(this.f57989d);
                } else {
                    if (this.f57988c2.getMod_info() != null) {
                        this.J2 = q5.f.M().G(this.f57988c2.getMod_info().getMod_game_id());
                    }
                    if (this.J2 == null) {
                        this.J2 = q5.f.M().G(this.f57989d);
                    }
                }
            }
        }
        DownloadTask downloadTask3 = this.J2;
        if (downloadTask3 == null || downloadTask3.getStatus() == 0) {
            this.f57986b2.setReMarks(this.f57991e.getReMarks());
            this.f57988c2.setDownType(0);
            this.f57991e.setFrom(PointType.ANTI_SPAM);
            this.f57988c2.setExt(JsonMapper.getInstance().toJson(this.f57991e));
            UtilsMy.d1(this.f58001i1, this.f57988c2);
            return;
        }
        DownloadTask downloadTask4 = this.J2;
        if (downloadTask4 != null && (status == 2 || status == 10)) {
            com.php25.PDownload.d.i(downloadTask4);
        } else {
            if (status == 12 || status == 27) {
                return;
            }
            if (status == 13) {
                com.php25.PDownload.d.l(this.f58001i1, downloadTask4);
                return;
            }
            if (status == 5) {
                UtilsMy.p4(this.f58001i1, downloadTask4, "2");
            } else if (status == 42) {
                downloadTask4.setVer(this.f57988c2.getVer());
                this.J2.setVer_name(this.f57988c2.getVer_name());
                this.J2.setUrl(this.f57988c2.getDown_url_remote());
                this.J2.setCfg_ver(this.f57988c2.getCfg_ver());
                this.J2.setCfg_ver_name(this.f57988c2.getCfg_ver_name());
                this.J2.setCfg_down_url(this.f57988c2.getCfg_down_url());
                this.J2.setPay_game_amount(this.f57988c2.getPay_tag_info() != null ? this.f57988c2.getPay_tag_info().getPay_game_amount() : 0);
                DownloadTask downloadTask5 = this.J2;
                Where where = Where.detail;
                downloadTask5.setKeyword(where.name());
                this.J2.setKeyword(where.name());
                DownloadTask downloadTask6 = this.J2;
                UtilsMy.W4(downloadTask6, downloadTask6.getCrc_link_type_val());
                UtilsMy.O4(this.f58001i1, this.J2);
            } else if (status == 9) {
                if (!com.join.android.app.common.utils.m.j(this.f58001i1)) {
                    ToastManager.show("无网络连接");
                    return;
                }
                if (this.f57988c2.getGame_detailed() != null && com.join.mgps.Util.t2.i(this.f57988c2.getGame_detailed().getTpl_two_qq())) {
                    com.join.mgps.Util.h0.h0(this.f58001i1).d0(this.f58001i1, this.f57988c2.getGame_detailed().getTpl_two_qq_key(), this.f57988c2.getGame_detailed().getAd_pic_qq(), this.f57988c2.getGame_detailed().getTpl_two_qq());
                }
                int downloadType = this.J2.getDownloadType();
                if (downloadType == 0 || downloadType == 1) {
                    if (this.J2.getCrc_link_type_val() == null || this.J2.getCrc_link_type_val().equals("")) {
                        return;
                    }
                    addFrom(this.J2);
                    if (UtilsMy.o1(this.f58001i1, this.J2)) {
                        return;
                    }
                    if (this.f57988c2.getDown_status() == 5) {
                        UtilsMy.l1(this.f58001i1, this.J2);
                        return;
                    }
                    com.php25.PDownload.d.b(this.J2);
                    this.J2.setVer(this.f57988c2.getVer());
                    this.J2.setVer_name(this.f57988c2.getVer_name());
                    this.J2.setUrl(this.f57988c2.getDown_url_remote());
                    this.J2.setCfg_ver(this.f57988c2.getCfg_ver());
                    this.J2.setCfg_ver_name(this.f57988c2.getCfg_ver_name());
                    this.J2.setCfg_down_url(this.f57988c2.getCfg_down_url());
                    this.J2.setPay_game_amount(this.f57988c2.getPay_tag_info() != null ? this.f57988c2.getPay_tag_info().getPay_game_amount() : 0);
                    this.J2.setKeyword(Where.detail.name());
                    DownloadTask downloadTask7 = this.J2;
                    UtilsMy.W4(downloadTask7, downloadTask7.getCrc_link_type_val());
                    if (UtilsMy.z0(this.f57988c2.getPay_tag_info(), this.f57988c2.getCrc_sign_id()) > 0) {
                        ExtBean extBean = this.f57991e;
                        if (extBean == null || !"checkgame".equals(extBean.getFrom())) {
                            if (!UtilsMy.o1(this.f58001i1, this.J2)) {
                                if (this.f57988c2.getDown_status() == 5) {
                                    UtilsMy.l1(this.f58001i1, this.J2);
                                } else {
                                    UtilsMy.z4(this.f58001i1, this.f57989d);
                                }
                            }
                            onDetailDownload();
                        } else {
                            UtilsMy.A4(this.f58001i1, this.f57989d, this.f57991e.getFrom_id());
                        }
                    } else {
                        UtilsMy.D1(this.J2, this.f57988c2);
                        if (!UtilsMy.o1(this.f58001i1, this.J2)) {
                            if (this.f57988c2.getDown_status() == 5) {
                                UtilsMy.l1(this.f58001i1, this.J2);
                            } else {
                                UtilsMy.U0(this.f58001i1, this.J2, this.f57988c2.getTp_down_url(), this.f57988c2.getOther_down_switch(), this.f57988c2.getCdn_down_switch());
                            }
                        }
                        onDetailDownload();
                    }
                } else if (downloadType == 2) {
                    UtilsMy.R4(this.J2);
                }
            } else if (11 == status) {
                UtilsMy.w4(downloadTask4, this.f58001i1);
            } else if (43 == status || 48 != status) {
                b0();
            }
        }
        updateButn();
    }

    @Click
    void iv_back() {
        if (this.Q.getState() != BottomSheetLayout.State.HIDDEN) {
            this.Q.r();
        } else {
            this.f58001i1.clickBack();
            p0();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Click
    void j0() {
        if (AccountUtil_.getInstance_(this.f58001i1).isTourist()) {
            ((LoginSplashActivity_.IntentBuilder_) LoginSplashActivity_.intent(this.f58001i1).flags(C.ENCODING_PCM_MU_LAW)).start();
        } else {
            u0();
            l0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void k0() {
        GamedetialModleFourBean data;
        if (!com.join.android.app.common.utils.m.j(this.f58001i1)) {
            showLodingFailed();
            return;
        }
        try {
            UserInfo accountData = AccountUtil_.getInstance_(this.f58001i1).getAccountData();
            if (accountData == null) {
                accountData = UserInfo.newBuilder().build();
            }
            RequestModel requestModel = new RequestModel();
            requestModel.setDefault(this.f58001i1);
            RequestGameIdArgs requestGameIdArgs = new RequestGameIdArgs(this.f57989d, 1, accountData.getUid());
            requestGameIdArgs.setDownloadedGameIdList(q5.f.M().B());
            requestModel.setArgs(requestGameIdArgs);
            ResponseModel<GamedetialModleFourBean> responseModelBody = com.join.mgps.rpc.impl.i.P0().N0().e0(requestModel.makeSign()).execute().body();
            if (responseModelBody == null || responseModelBody.getCode() != 200 || (data = responseModelBody.getData()) == null) {
                showLodingFailed();
            } else {
                f1(data);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            showLodingFailed();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void l0() {
        try {
            if (!com.join.android.app.common.utils.m.j(this.f58001i1)) {
                showToast("网络出错，请稍后重试");
                return;
            }
            if (IntentUtil.getInstance().goLoginInteractive(this.f58001i1)) {
                return;
            }
            this.f58018p1 = "";
            UserInfo accountData = AccountUtil_.getInstance_(this.f58001i1).getAccountData();
            LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
            linkedMultiValueMap.add("uid", Integer.valueOf(accountData.getUid()));
            linkedMultiValueMap.add(Constants.TOKEN, accountData.getToken());
            linkedMultiValueMap.add("current_game_id", this.f57989d);
            int i10 = this.f58025r2;
            this.f58025r2 = i10 + 1;
            linkedMultiValueMap.add("page", Integer.valueOf(i10));
            linkedMultiValueMap.add("device_id", this.f58018p1);
            linkedMultiValueMap.add("version ", this.f58021q1);
            GameFromPopoWinBean gameFromPopoWinBeanW = this.f58015o2.W(linkedMultiValueMap);
            if (gameFromPopoWinBeanW != null && gameFromPopoWinBeanW.getError() == 0 && gameFromPopoWinBeanW.getData() != null) {
                a1();
                if (this.f58025r2 == 2) {
                    f0();
                }
                c0(gameFromPopoWinBeanW);
                return;
            }
            if (gameFromPopoWinBeanW == null || gameFromPopoWinBeanW.getError() != 701) {
                W0();
                return;
            }
            IntentUtil.getInstance().goMyAccountLoginActivity(this.f58001i1);
            Q0("Token已失效，请重新登录");
            IntentUtil.getInstance().goLogin(this.f58001i1);
            s0();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    String o0(String originText) {
        GamedetialModleFourBean gamedetialModleFourBean = this.f57988c2;
        if (gamedetialModleFourBean == null || TextUtils.isEmpty(gamedetialModleFourBean.getGame_btn_text())) {
            return originText;
        }
        return this.f57988c2.getGame_btn_text().length() > 10 ? this.f57988c2.getGame_btn_text().substring(0, 10) : this.f57988c2.getGame_btn_text();
    }

    @Override // com.join.mgps.activity.gamedetail.BaseGameDetailFragment
    public boolean onBackPressedMy() {
        if (com.join.android.app.component.video.a.c0(this.f58001i1, this.f58033v1)) {
            return true;
        }
        BottomSheetLayout bottomSheetLayout = this.Q;
        if (bottomSheetLayout == null || bottomSheetLayout.getState() == BottomSheetLayout.State.HIDDEN) {
            return false;
        }
        this.Q.r();
        return true;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        if (!this.L1) {
            StandardVideoView standardVideoView = this.f58000i;
            if (standardVideoView != null && standardVideoView.i()) {
                this.f58000i.release();
            }
            com.join.android.app.component.video.a.n0(this.f58033v1);
        }
        com.join.mgps.Util.j0.a().e(this);
    }

    void onDetailDownload() {
        ExtBean extBean = this.f57991e;
        if (extBean == null || TextUtils.isEmpty(extBean.getFrom()) || !this.f57991e.getFrom().equals("downloadCenter")) {
            return;
        }
        MobclickAgentKt.onEvent(this.f58001i1, "detailDownload4.2.0.6");
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    void onDownloadSpeed(com.join.mgps.event.q event) {
        if (event == null || TextUtils.isEmpty(event.a())) {
            return;
        }
        ProgressBar progressBar = this.f58041z;
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
        if (downloadTaskA != null && this.J2 == null) {
            this.J2 = q5.f.M().G(downloadTaskA.getCrc_link_type_val());
        }
        DlTaskManager.INSTANCE.onNotifyDataSet(downloadTaskEvent, new Function0() { // from class: com.join.mgps.activity.l2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f57393b.y0();
            }
        });
        DownloadTask downloadTask = this.J2;
        if (downloadTask != null && downloadTaskA != null && downloadTask.getCrc_link_type_val().equals(downloadTaskA.getCrc_link_type_val()) && this.J2.getStatus() != downloadTaskA.getStatus()) {
            this.J2.setStatus(downloadTaskA.getStatus());
        }
        if (downloadTaskEvent.c() == 8) {
            DownloadTask downloadTask2 = this.J2;
            if (downloadTask2 == null || downloadTask2.getPath() == null) {
                return;
            }
            UtilsMy.U4(this.J2);
            this.f58041z.setProgress((int) this.J2.getProgress());
            this.f58039y.setText(this.J2.getProgress() + "%");
            return;
        }
        if (downloadTaskA != null && this.J2 != null && downloadTaskA.getCrc_link_type_val().equals(this.J2.getCrc_link_type_val())) {
            this.J2 = downloadTaskA;
            int iC = downloadTaskEvent.c();
            if (iC == 2) {
                T0();
                e0();
            } else if (iC == 3) {
                e0();
            } else if (iC == 5) {
                if (this.J2 != null && downloadTaskA.getCrc_link_type_val().equals(this.J2.getCrc_link_type_val())) {
                    this.J2 = downloadTaskA;
                }
                e0();
            } else if (iC == 6 || iC == 7) {
                e0();
            } else {
                if (iC == 8) {
                    DownloadTask downloadTask3 = this.J2;
                    if (downloadTask3 == null || downloadTask3.getPath() == null) {
                        return;
                    }
                    UtilsMy.U4(this.J2);
                    this.f58041z.setProgress((int) this.J2.getProgress());
                    this.f58039y.setText(this.J2.getProgress() + "%");
                    updateProgress(this.J2);
                    return;
                }
                if (iC == 10) {
                    e0();
                } else if (iC == 11) {
                    if (this.J2 != null) {
                        this.J2 = downloadTaskA;
                    }
                    e0();
                } else if (iC == 27) {
                    e0();
                } else if (iC == 48) {
                    if (this.J2 != null) {
                        this.J2 = downloadTaskA;
                    }
                    e0();
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
        this.V2 = true;
        try {
            if (!this.L1 && (standardVideoView2 = this.f58000i) != null && standardVideoView2.i()) {
                this.f58000i.onVideoPause();
            } else if (this.L1 && (standardVideoView = this.f58000i) != null && standardVideoView.i() && !this.f58034v2) {
                this.f58000i.onVideoPause();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        GamedetialModleFourBean gamedetialModleFourBean;
        boolean z10;
        StandardVideoView standardVideoView;
        super.onResume();
        this.V2 = false;
        this.S2 = AccountUtil_.getInstance_(this.f58001i1).getAccountData();
        if (f57982a3) {
            this.f58025r2 = 1;
            f57982a3 = false;
            l0();
        }
        if (this.f58023r.getVisibility() == 4 && (standardVideoView = this.f58000i) != null && standardVideoView.i()) {
            this.f58000i.onVideoResume(false);
        }
        e0();
        updateDownloadView();
        GamedetialModleFourBean gamedetialModleFourBean2 = this.f57988c2;
        DownloadTask downloadTaskG = null;
        if (gamedetialModleFourBean2 != null) {
            List<DownloadTask> listH = gamedetialModleFourBean2.getMod_info() != null ? q5.f.M().H(this.f57988c2.getMod_info().getMod_game_id(), this.f57988c2.getMod_info().getMain_game_id()) : q5.f.M().I(this.f57988c2.getPackageName());
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
                    downloadTaskG = q5.f.M().G(this.f57989d);
                } else if (z11) {
                    if (this.f57988c2.getMod_info() != null) {
                        downloadTaskG = q5.f.M().G(this.f57988c2.getMod_info().getMod_game_id());
                    }
                } else if (z10) {
                    downloadTaskG = q5.f.M().G(this.f57989d);
                } else {
                    downloadTaskG = this.f57988c2.getMod_info() != null ? q5.f.M().G(this.f57988c2.getMod_info().getMod_game_id()) : null;
                    if (downloadTaskG == null) {
                        downloadTaskG = q5.f.M().G(this.f57989d);
                    }
                }
            }
        }
        if (downloadTaskG == null && (gamedetialModleFourBean = this.f57988c2) != null) {
            this.J2 = gamedetialModleFourBean.getDownloadtaskDown();
        }
        if (downloadTaskG != null && this.J2 != null) {
            try {
                this.J2 = downloadTaskG;
                if (!downloadTaskG.getFileType().equals(Dtype.android.name()) || this.J2.getStatus() != 5) {
                    this.J2.setStatus(downloadTaskG.getStatus());
                } else if (this.f57988c2.getMod_info() == null) {
                    com.join.android.app.common.utils.g gVarT0 = com.join.android.app.common.utils.g.t0(this.f58001i1);
                    GamedetailVideoMainActivity gamedetailVideoMainActivity = this.f58001i1;
                    String packageName = this.J2.getPackageName();
                    APKUtils.DEVICE_TYPE device_type = APKUtils.DEVICE_TYPE.ALL;
                    if (Boolean.valueOf(gVarT0.f(gamedetailVideoMainActivity, packageName, device_type)).booleanValue()) {
                        APKUtils.a aVarO = com.join.android.app.common.utils.g.t0(this.f58001i1).o(this.f58001i1, this.J2.getPackageName(), device_type);
                        if (!com.join.mgps.Util.t2.i(this.J2.getVer()) || aVarO.d() >= Integer.parseInt(this.J2.getVer())) {
                            this.J2.setStatus(5);
                        } else {
                            this.J2.setStatus(9);
                        }
                    } else {
                        this.J2.setStatus(0);
                    }
                }
                updateButn();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        UtilsMy.N4(this.f58001i1);
    }

    void p0() {
        ExtBean extBean = this.f57991e;
        if (extBean == null || TextUtils.isEmpty(extBean.getFrom()) || !this.f57991e.getFrom().equals("updateFromMarket")) {
            return;
        }
        IntentUtil.getInstance().goMGMainActivity2Front(this.f58001i1);
    }

    @Override // com.join.mgps.activity.gamedetail.BaseGameDetailFragment
    public void pauseVideo() {
        this.V2 = true;
        StandardVideoView standardVideoView = this.f58000i;
        if (standardVideoView == null || !standardVideoView.i()) {
            return;
        }
        this.f58000i.onVideoPause();
    }

    @Override // com.join.mgps.activity.gamedetail.BaseGameDetailFragment
    public void playVideo() {
        StandardVideoView standardVideoView = this.f58000i;
        if (standardVideoView != null) {
            this.f58001i1.autoPlayVideo(standardVideoView);
        }
    }

    @Click
    void progress_layout() {
        DownloadTask downloadTask = this.J2;
        if (downloadTask == null) {
            return;
        }
        if (downloadTask.getStatus() == 2) {
            updateButn();
            com.php25.PDownload.d.i(this.J2);
        } else if (this.J2.getStatus() == 3 || this.J2.getStatus() == 6) {
            updateButn();
            com.php25.PDownload.d.c(this.J2, this.f58001i1);
            onDetailDownload();
        }
    }

    @Override // com.join.mgps.callbacks.j
    public void q() {
    }

    boolean q0() {
        GamedetialModleFourBean gamedetialModleFourBean = this.f57986b2;
        return (gamedetialModleFourBean == null || gamedetialModleFourBean.getGame_screen_shot() == null || this.f57986b2.getGame_screen_shot().size() <= 0) ? false : true;
    }

    boolean r0() {
        return com.join.mgps.Util.t2.i(this.f57986b2.getGame_info_top_video_url()) || com.join.mgps.Util.t2.i(this.f57986b2.getGame_info_top_pic());
    }

    @Click
    void relodingimag() {
        showLoding();
        k0();
    }

    @Override // com.join.mgps.activity.gamedetail.BaseGameDetailFragment
    public void resumVideo() {
        this.V2 = false;
        StandardVideoView standardVideoView = this.f58000i;
        if (standardVideoView != null) {
            if (standardVideoView.i()) {
                this.f58000i.startPlayLogic();
            } else if (this.f58023r.getVisibility() == 4 && this.f58000i.i()) {
                this.f58000i.onVideoResume(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void s0() {
        PopupWindow popupWindow = this.f57990d2;
        if (popupWindow != null) {
            popupWindow.dismiss();
        }
    }

    @Override // com.join.mgps.activity.gamedetail.BaseGameDetailFragment
    @UiThread
    public void setCommentNumber(String number) {
        try {
            TextView textViewJ = this.f58005k.j(1);
            textViewJ.setWidth(getResources().getDimensionPixelOffset(R.dimen.wdp220));
            textViewJ.setText("点评(" + number + ")");
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this.f58001i1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showInstallButn() {
        GamedetialModleFourBean gamedetialModleFourBean = this.f57988c2;
        if (gamedetialModleFourBean == null || TextUtils.isEmpty(gamedetialModleFourBean.getCrc_sign_id())) {
            return;
        }
        GamedetialModleFourBean gamedetialModleFourBean2 = this.f57986b2;
        if (gamedetialModleFourBean2 == null || gamedetialModleFourBean2.getSp_tag_info().getSelf_support() == null) {
            ImageView imageView = this.Y;
            if (imageView != null) {
                imageView.setVisibility(0);
            }
        } else {
            ImageView imageView2 = this.Y;
            if (imageView2 != null) {
                imageView2.setVisibility(8);
            }
        }
        try {
            this.f58032v.setVisibility(8);
            this.f58035w.setVisibility(0);
            this.f58030u.setVisibility(0);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        try {
            this.I.setVisibility(0);
            this.J.setVisibility(8);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: Removed unreachable split cross block B:21:0x003d */
    @UiThread
    public void showLodingFailed() {
        try {
            this.I.setVisibility(8);
            try {
                GamedetialModleFourBean gamedetialModleFourBean = this.f57988c2;
                if (gamedetialModleFourBean == null || com.join.mgps.Util.t2.h(gamedetialModleFourBean.getCrc_sign_id())) {
                    this.J.setVisibility(0);
                    this.K.setVisibility(0);
                    if (com.join.android.app.common.utils.m.j(this.f58001i1)) {
                        this.L.setVisibility(8);
                    } else {
                        this.L.setVisibility(0);
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
            ConstraintLayout constraintLayout = this.f58035w;
            if (constraintLayout != null) {
                constraintLayout.setVisibility(8);
            }
            TextView textView = this.f58030u;
            if (textView != null) {
                textView.setVisibility(8);
            }
            RelativeLayout relativeLayout = this.f58032v;
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
        Toast.makeText(this.f58001i1, s10, 0).show();
    }

    void t0() {
        this.f58014o.setAdapter(this.X2);
        this.f58010m.setViewPager(this.f58014o);
        if (MViewpagerV4.class.isInstance(this.f58014o)) {
            ((MViewpagerV4) this.f58014o).setIntercept(false);
        }
        this.f58010m.setOnPageChangeListener(new j());
    }

    @Override // com.join.mgps.callbacks.j
    public void u() {
        int i10;
        int i11;
        View viewInflate = LayoutInflater.from(this.f58001i1).inflate(R.layout.layout_game_detail_sheet_profile, (ViewGroup) this.Q, false);
        View viewFindViewById = viewInflate.findViewById(R.id.scrollView);
        TextView textView = (TextView) viewInflate.findViewById(R.id.desc);
        View viewFindViewById2 = viewInflate.findViewById(R.id.close);
        FlowLayout flowLayout = (FlowLayout) viewInflate.findViewById(R.id.flowLayout);
        View viewFindViewById3 = viewInflate.findViewById(R.id.uploadGame);
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.downloadCount);
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
        viewFindViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.m2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f57479b.A0(view);
            }
        });
        textView.setText(this.f57986b2.getGame_describe_second());
        if (this.f57986b2.getGame_upgrade_info_switch() == 1) {
            String game_upgrade_info = this.f57986b2.getGame_upgrade_info();
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
        if (this.f57986b2.getMax_an_compatible_ver() != 0 && i12 >= this.f57986b2.getMin_an_compatible_ver()) {
            this.f57986b2.getMax_an_compatible_ver();
        }
        if (this.f57986b2.getGame_prompt() != null && this.f57986b2.getGame_prompt().size() != 0) {
            flowLayout.setVisibility(0);
            flowLayout.setHorizontalDivider(flowLayout.getResources().getDimensionPixelOffset(R.dimen.wdp20));
            flowLayout.setVerticalDivider(flowLayout.getResources().getDimensionPixelOffset(R.dimen.wdp14));
            for (int i13 = 0; i13 < this.f57986b2.getGame_prompt().size(); i13++) {
                GamePromptBean gamePromptBean = this.f57986b2.getGame_prompt().get(i13);
                if (gamePromptBean != null && gamePromptBean.getId() == 1) {
                    flowLayout.addView(G0(gamePromptBean.getText(), R.drawable.ic_ok, flowLayout));
                }
            }
        }
        final GamedetialMoreBean game_detailed = this.f57986b2.getGame_detailed();
        if (game_detailed != null) {
            textView3.setText(game_detailed.getCurrent_ver());
            textView5.setText(game_detailed.getUpgrade_time());
            textView4.setText(game_detailed.getSize() + "M");
            textView12.setText(game_detailed.getRecord_number());
            textView9.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.n2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f57774b.B0(game_detailed, view);
                }
            });
            textView10.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.o2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f57805b.C0(game_detailed, view);
                }
            });
            textView12.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.p2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f57832b.D0(view);
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
        }
        textView2.setText(com.join.mgps.Util.t2.b(game_detailed.getDownloads_count()) + "热度");
        viewFindViewById3.setVisibility(0);
        viewFindViewById3.setOnClickListener(new n());
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) viewFindViewById.getLayoutParams();
        BottomSheetLayout bottomSheetLayout = this.Q;
        if (bottomSheetLayout != null) {
            layoutParams.height = bottomSheetLayout.getMeasuredHeight();
        }
        R0(viewInflate);
        viewFindViewById.scrollTo(0, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void u0() {
        View viewInflate = LayoutInflater.from(this.f58001i1).inflate(R.layout.popo_item, (ViewGroup) null);
        L0(0.4f);
        PopupWindow popupWindow = new PopupWindow(viewInflate, -1, -1, true);
        this.f57990d2 = popupWindow;
        popupWindow.setTouchable(true);
        this.f57990d2.setOutsideTouchable(true);
        this.f57990d2.setFocusable(true);
        this.f57990d2.setBackgroundDrawable(new ColorDrawable());
        this.f57990d2.setSoftInputMode(16);
        this.f57990d2.setOnDismissListener(new r());
        XListView2 xListView2 = (XListView2) viewInflate.findViewById(R.id.listview);
        this.f58009l2 = xListView2;
        xListView2.setPullRefreshEnable(new s());
        this.f58009l2.setPullLoadEnable(new t());
        this.f58004j2 = (TextView) viewInflate.findViewById(R.id.tv_show_tips);
        this.f57997g2 = (LinearLayout) viewInflate.findViewById(R.id.ll_our);
        this.f57992e2 = (LinearLayout) viewInflate.findViewById(R.id.ll_show_finish);
        this.f57995f2 = (LinearLayout) viewInflate.findViewById(R.id.ll_dismiss);
        this.f57999h2 = (EditText) viewInflate.findViewById(R.id.game_ed);
        this.f58002i2 = (TextView) viewInflate.findViewById(R.id.tv_finish);
        this.f58006k2 = (LinearLayout) viewInflate.findViewById(R.id.ll_build);
        this.f57995f2.setOnClickListener(new u());
        this.f58006k2.setOnClickListener(new v());
        this.f58002i2.setOnClickListener(new w());
        a0 a0Var = new a0();
        this.f58011m2 = a0Var;
        this.f58009l2.setAdapter((ListAdapter) a0Var);
        this.f57990d2.showAtLocation(LayoutInflater.from(this.f58001i1).inflate(R.layout.gamedetial_modle_three_activity, (ViewGroup) null), 81, 0, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateButn() {
        if (this.f57988c2 == null || this.J2 == null || this.f58030u == null) {
            return;
        }
        ConstraintLayout constraintLayout = this.f58035w;
        if (constraintLayout != null) {
            constraintLayout.setVisibility(0);
        }
        if (this.f57988c2.getDel_tag() == 1 && !this.f57988c2.getCompany_name().equals("SNK")) {
            this.f58030u.setEnabled(false);
            this.f58030u.setBackgroundResource(R.drawable.detial_simple_grey_selecter);
            this.f58030u.setText("已下架");
            showInstallButn();
            return;
        }
        UtilsMy.A3(this.f57988c2.getSp_tag_info(), this.f58035w, this.J2);
        if (this.f57988c2.getPlugin_num() != null) {
            if (this.f57988c2.getPlugin_num().equals(ConstantIntEnum.H5.value() + "")) {
                this.f58030u.setBackgroundResource(R.drawable.detial_simple_normal_selecter);
                TextView textView = this.f58030u;
                if (textView != null) {
                    textView.setText("打开");
                }
                showInstallButn();
                return;
            }
        }
        TextView textView2 = this.f58030u;
        if (textView2 != null) {
            textView2.setTextColor(getResources().getColor(R.color.white));
            this.f58030u.setBackgroundResource(R.drawable.detial_simple_normal_selecter);
        }
        DownloadTask downloadTask = this.J2;
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        if (UtilsMy.x0(this.f57988c2.getPay_tag_info(), this.f57988c2.getCrc_sign_id()) > 0) {
            status = 43;
        }
        if (status == 9) {
            showInstallButn();
            this.f58030u.setText("更新");
            this.f58037x.setImageResource(R.drawable.detail_comment_download_continue);
            this.f58037x.setImageResource(R.drawable.detial_simple_install_selecter);
            return;
        }
        if (status == 12) {
            showInstallButn();
            this.f58030u.setText("解压中..");
            return;
        }
        if (status == 13) {
            showInstallButn();
            this.f58030u.setText("解压");
            this.f58037x.setImageResource(R.drawable.detail_comment_download_continue);
            return;
        }
        if (status == 11) {
            showInstallButn();
            this.f58030u.setText("安装");
            this.f58030u.setBackgroundResource(R.drawable.detial_simple_install_selecter);
            this.f58037x.setImageResource(R.drawable.detial_simple_install_selecter);
            return;
        }
        if (status == 5 || status == 42) {
            showInstallButn();
            d1(true);
            TextView textView3 = this.f58030u;
            if (textView3 != null) {
                textView3.setBackgroundResource(R.drawable.detial_simple_open_selecter);
                this.f58030u.setText(this.f58001i1.getResources().getString(R.string.download_status_finished));
                this.f58037x.setImageResource(R.drawable.detail_comment_download_continue);
                return;
            }
            return;
        }
        if (status == 2) {
            showProgress();
            this.f58037x.setImageResource(R.drawable.detail_comment_download_pause);
            UtilsMy.U4(this.J2);
            this.f58041z.setProgress((int) this.J2.getProgress());
            this.f58039y.setText(this.J2.getProgress() + "%");
            return;
        }
        if (status == 3 || status == 6 || status == 27) {
            showProgress();
            this.f58037x.setImageResource(R.drawable.detail_comment_download_continue);
            UtilsMy.U4(this.J2);
            this.f58041z.setProgress((int) this.J2.getProgress());
            this.f58039y.setText(this.J2.getProgress() + "%");
            return;
        }
        if (status == 10) {
            showInstallButn();
            this.f58030u.setText("等待\u3000" + this.f57988c2.getSize() + "M");
            this.f58037x.setImageResource(R.drawable.detail_comment_download_continue);
            return;
        }
        if (status == 1) {
            return;
        }
        if (status == 43) {
            c1();
        } else if (status != 48) {
            c1();
        } else {
            showInstallButn();
            this.f58030u.setText(this.f58001i1.getResources().getString(R.string.download_status_installing));
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
        if (downloadTask == null) {
            return;
        }
        ProgressBar progressBar = this.f58041z;
        if (progressBar instanceof DownloadProgressBar) {
            ((DownloadProgressBar) progressBar).update(downloadTask.getCrc_link_type_val(), 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateTitleButn(ResultMainBean result, int type) {
        if (result.getFlag() == 1) {
            if (type == 1) {
                this.f57988c2.setGame_follow(0);
            } else if (type == 2) {
                this.f57988c2.setGame_follow(1);
                ToastManager.show("收藏成功");
                this.E.setImageResource(R.drawable.followed_image);
                this.F.setText("已收藏");
            } else if (type == 3) {
                this.f57988c2.setGame_book(0);
            } else if (type == 4) {
                this.f57988c2.setGame_book(1);
                Intent intent = new Intent("com.broadcast.bespeak.sussess");
                intent.putExtra("gameid", this.f57988c2.getCrc_sign_id());
                this.f58001i1.sendBroadcast(intent);
                com.join.mgps.Util.h0.h0(this.f58001i1).O(this.f58001i1, 1, new i()).show();
            }
            J0();
            updateButn();
        }
    }

    @Click
    void w0() {
        F0();
    }

    @Click
    void x0() {
        this.f58001i1.clickBack();
    }
}
