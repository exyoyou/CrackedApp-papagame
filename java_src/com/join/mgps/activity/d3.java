package com.join.mgps.activity;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.BaseAdapter;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.MApplication;
import com.bykv.vk.component.ttvideo.player.C;
import com.czhj.sdk.common.Constants;
import com.facebook.drawee.view.SimpleDraweeView;
import com.flyco.tablayout.SlidingTabLayout;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.component.video.StandardVideoView;
import com.join.android.app.mgsim.wufun.R;
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
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.customview.DownloadProgressBar;
import com.join.mgps.customview.MStarBar;
import com.join.mgps.customview.MViewpagerV4;
import com.join.mgps.customview.SlidingTabLayoutGameDetailImage;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CommentAlllistIntentData;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.DetialShowImageBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.GameFromBooleanBean;
import com.join.mgps.dto.GameFromPopoWinBean;
import com.join.mgps.dto.GameScore;
import com.join.mgps.dto.GamedetialModleFourBean;
import com.join.mgps.dto.RequestGameIdArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.RequestdetialFolowAndBeSpeak;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.ShareBean;
import com.join.mgps.dto.TipBean;
import com.join.mgps.dto.VolcanoOther;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.enums.Dtype;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.papa.sim.statistic.Where;
import com.sigmob.sdk.base.mta.PointType;
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
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.springframework.util.LinkedMultiValueMap;

/* JADX INFO: loaded from: classes4.dex */
@EFragment(R.layout.gamedetial_modle_four_fragment)
public class d3 extends BaseGameDetailFragment {
    static String L2 = "0";
    static String M2 = "";
    static boolean N2 = false;
    private static final String O2 = "view";

    @ViewById
    ProgressBar A;

    @ViewById
    ImageView A2;

    @ViewById
    LinearLayout B;

    @ViewById
    ImageView B2;

    @ViewById
    ImageView C;
    private Animation C2;

    @ViewById
    ImageView D;
    private int D2;

    @ViewById(R.id.title_normal_download_cdv)
    CustomerDownloadView E;
    private int E2;

    @ViewById
    ImageView F;
    UserInfo F2;

    @ViewById
    TextView G;

    @ViewById
    TextView H;

    @ViewById
    Toolbar I;

    @ViewById
    View J;

    @ViewById
    View K;

    @ViewById
    View L;
    TextView L1;

    @ViewById
    View M;

    @ViewById
    View N;

    @ViewById
    LinearLayout O;

    @ViewById
    LinearLayout P;

    @ViewById
    View Q;

    @ViewById
    View R;
    LinearLayout R1;
    com.join.mgps.rpc.e S;
    GamedetailVideoMainActivity T;
    private com.join.android.app.common.manager.b U;
    String V;
    public XListView2 V1;
    String W;
    boolean Z;

    /* JADX INFO: renamed from: a2, reason: collision with root package name */
    u f56982a2;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    private GamedetialModleFourBean f56983b1;

    /* JADX INFO: renamed from: b2, reason: collision with root package name */
    com.join.mgps.rpc.b f56984b2;

    /* JADX INFO: renamed from: c2, reason: collision with root package name */
    com.join.mgps.rpc.b f56986c2;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    String f56987d;

    /* JADX INFO: renamed from: d2, reason: collision with root package name */
    GameFromPopoWinBean f56988d2;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    ExtBean f56989e;

    /* JADX INFO: renamed from: e2, reason: collision with root package name */
    PtrClassicFrameLayout f56990e2;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    boolean f56991f;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    private GamedetialModleFourBean f56992f1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @ViewById
    RelativeLayout f56994g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @ViewById
    View f56996h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @ViewById
    StandardVideoView f56998i;

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    PopupWindow f56999i1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @ViewById
    SimpleDraweeView f57001j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @ViewById
    SlidingTabLayout f57003k;

    /* JADX INFO: renamed from: k2, reason: collision with root package name */
    public SimpleDraweeView f57004k2;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @ViewById
    ViewPager f57005l;

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    LinearLayout f57006l1;

    /* JADX INFO: renamed from: l2, reason: collision with root package name */
    public TextView f57007l2;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @ViewById
    SlidingTabLayoutGameDetailImage f57008m;

    /* JADX INFO: renamed from: m2, reason: collision with root package name */
    public TextView f57009m2;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @ViewById
    View f57010n;

    /* JADX INFO: renamed from: n2, reason: collision with root package name */
    public TextView f57011n2;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @ViewById
    ViewPager f57012o;

    /* JADX INFO: renamed from: o2, reason: collision with root package name */
    public TextView f57013o2;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @ViewById
    View f57014p;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    private int f57015p0;

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    LinearLayout f57016p1;

    /* JADX INFO: renamed from: p2, reason: collision with root package name */
    public MStarBar f57017p2;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @ViewById
    AppBarLayout f57018q;

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    LinearLayout f57019q1;

    /* JADX INFO: renamed from: q2, reason: collision with root package name */
    public LinearLayout f57020q2;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @ViewById
    CollapsingToolbarLayout f57021r;

    /* JADX INFO: renamed from: r1, reason: collision with root package name */
    EditText f57022r1;

    /* JADX INFO: renamed from: r2, reason: collision with root package name */
    public LinearLayout f57023r2;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @ViewById
    RelativeLayout f57024s;

    /* JADX INFO: renamed from: s2, reason: collision with root package name */
    public SimpleDraweeView f57025s2;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @ViewById
    RelativeLayout f57026t;

    /* JADX INFO: renamed from: t2, reason: collision with root package name */
    public TextView f57027t2;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @ViewById
    RelativeLayout f57028u;

    /* JADX INFO: renamed from: u2, reason: collision with root package name */
    private LinearLayout f57029u2;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @ViewById
    TextView f57030v;

    /* JADX INFO: renamed from: v1, reason: collision with root package name */
    TextView f57031v1;

    /* JADX INFO: renamed from: v2, reason: collision with root package name */
    private TextView f57032v2;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @ViewById
    RelativeLayout f57033w;

    /* JADX INFO: renamed from: w2, reason: collision with root package name */
    private DownloadTask f57034w2;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @ViewById
    RelativeLayout f57035x;

    /* JADX INFO: renamed from: x2, reason: collision with root package name */
    @ViewById
    TextView f57036x2;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @ViewById
    ImageView f57037y;

    /* JADX INFO: renamed from: y2, reason: collision with root package name */
    @ViewById
    ImageView f57038y2;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @ViewById
    TextView f57039z;

    /* JADX INFO: renamed from: z2, reason: collision with root package name */
    @ViewById
    ImageView f57040z2;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f56985c = "GamedetialModleFourFragemnt";
    int X = 0;
    String Y = "";

    /* JADX INFO: renamed from: f2, reason: collision with root package name */
    int f56993f2 = 1;

    /* JADX INFO: renamed from: g2, reason: collision with root package name */
    List<GameFromPopoWinBean.DataBean> f56995g2 = new ArrayList();

    /* JADX INFO: renamed from: h2, reason: collision with root package name */
    boolean f56997h2 = true;

    /* JADX INFO: renamed from: i2, reason: collision with root package name */
    int f57000i2 = 0;

    /* JADX INFO: renamed from: j2, reason: collision with root package name */
    boolean f57002j2 = false;
    Map<String, DownloadTask> G2 = new HashMap();
    Map<String, DownloadTask> H2 = new HashMap();
    boolean I2 = false;
    private List<View> J2 = new ArrayList();
    r K2 = new r();

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            d3.this.t0();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            PaPaBannerListActivity_.intent(d3.this.T).e(1).a(true).c(d3.this.f56983b1.getGame_company_id()).d(d3.this.f56983b1.getCompany_name()).start();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            d3.this.t0();
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().goShareWebActivity(d3.this.T, d3.this.f56992f1.getActivity_entry().getUrl() + d3.this.f56992f1.getCrc_sign_id());
        }
    }

    class e implements Animation.AnimationListener {
        e() {
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

    class f implements com.join.mgps.Util.x1.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f57046a;

        f(final boolean val$needRetry) {
            this.f57046a = val$needRetry;
        }

        @Override // com.join.mgps.Util.x1.b
        public void a(com.join.mgps.Util.x1.c result) {
            if (result.a() != 1) {
                if (this.f57046a) {
                    d3.this.F0(false);
                }
            } else {
                d3.this.T.clickBack();
                com.join.mgps.Util.x1 x1VarC = com.join.mgps.Util.x1.c();
                d3 d3Var = d3.this;
                x1VarC.e(d3Var.T, d3Var.f56989e.getFrom_id(), result.b());
                com.join.mgps.Util.a3.b(d3.this.T).d("授权成功");
            }
        }
    }

    class g implements com.join.mgps.callbacks.d {
        g() {
        }

        @Override // com.join.mgps.callbacks.d
        public void onClickCancle() {
        }

        @Override // com.join.mgps.callbacks.d
        public void onClickOk() {
        }
    }

    class h implements ViewPager.OnPageChangeListener {
        h() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i10) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i10, float v10, int i11) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i10) {
            if (d3.this.j0() && i10 == 0) {
                d3 d3Var = d3.this;
                d3Var.T.autoPlayVideo(d3Var.f56998i);
            }
        }
    }

    class i implements AppBarLayout.OnOffsetChangedListener {
        i() {
        }

        @Override // com.google.android.material.appbar.AppBarLayout.OnOffsetChangedListener, com.google.android.material.appbar.AppBarLayout.BaseOnOffsetChangedListener
        public void onOffsetChanged(AppBarLayout appBarLayout, int verticalOffset) {
            View view;
            try {
                appBarLayout.getHeight();
                d3.this.I.getHeight();
                int unused = d3.this.f57015p0;
                if (Math.abs(verticalOffset) < d3.this.getResources().getDimensionPixelOffset(R.dimen.wdp300) && ((view = d3.this.f56996h) == null || view.getVisibility() != 0)) {
                    d3.this.f57026t.setVisibility(0);
                    d3.this.f57028u.setVisibility(0);
                    d3.this.f57024s.setVisibility(8);
                    d3.this.I.getBackground().setAlpha(0);
                    if (d3.this.U != null) {
                        d3.this.U.n(R.color.black_alpha);
                    }
                    d3 d3Var = d3.this;
                    StandardVideoView standardVideoView = d3Var.f56998i;
                    if (standardVideoView != null && !d3Var.I2 && standardVideoView.getCurrentState() == 5) {
                        d3.this.f56998i.onVideoResume(false);
                    }
                    d3.this.R.setVisibility(4);
                    return;
                }
                d3.this.f57024s.setVisibility(0);
                d3.this.f57026t.setVisibility(8);
                d3.this.f57028u.setVisibility(8);
                d3.this.I.getBackground().setAlpha(255);
                StandardVideoView standardVideoView2 = d3.this.f56998i;
                if (standardVideoView2 == null) {
                    return;
                }
                int currentState = standardVideoView2.getCurrentState();
                if (currentState == 2) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("currentState=");
                    sb2.append(currentState);
                    sb2.append(" -->performClick");
                    d3.this.f56998i.onVideoPause();
                }
                if (d3.this.U != null) {
                    d3.this.U.n(R.color.black_30_alpha);
                }
                d3.this.R.setVisibility(0);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    class j implements PopupWindow.OnDismissListener {
        j() {
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            d3 d3Var = d3.this;
            d3Var.f56993f2 = 1;
            d3Var.Z();
            d3 d3Var2 = d3.this;
            d3Var2.X = 0;
            d3Var2.r0(1.0f);
            d3.M2 = d3.this.f57022r1.getText().toString().trim();
            d3 d3Var3 = d3.this;
            if (d3Var3.f56997h2) {
                return;
            }
            d3Var3.f56997h2 = true;
            d3Var3.N();
        }
    }

    class k implements com.join.mgps.customview.j {
        k() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            d3 d3Var = d3.this;
            d3Var.f56993f2 = 1;
            d3Var.Q();
            d3.this.e0();
        }
    }

    class l implements com.join.mgps.customview.i {
        l() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            d3.this.Q();
            d3.this.e0();
        }
    }

    class m implements View.OnClickListener {
        m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            d3.this.f56999i1.dismiss();
        }
    }

    class n implements View.OnClickListener {
        n() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            d3.N2 = true;
            d3.this.startActivity(new Intent(d3.this.T, (Class<?>) BuildGameFromActivity_.class));
        }
    }

    class o implements View.OnClickListener {
        o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            String strTrim = d3.this.f57022r1.getText().toString().trim();
            d3.M2 = strTrim;
            if (com.join.mgps.Util.t.f(strTrim)) {
                d3.this.showToast("不能上传表情");
                return;
            }
            d3.this.f56999i1.dismiss();
            d3 d3Var = d3.this;
            if (d3Var.f56997h2) {
                return;
            }
            d3Var.f56997h2 = true;
            d3Var.N();
        }
    }

    class p implements v7.e {
        p() {
        }

        @Override // v7.e
        public void a(Bitmap bitmap) {
            com.join.android.app.component.video.i.e(bitmap);
        }
    }

    class q implements View.OnClickListener {
        q() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            d3.this.f57005l.setCurrentItem(1);
        }
    }

    class r extends PagerAdapter {

        class a implements View.OnTouchListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ int f57060b;

            a(final int val$position) {
                this.f57060b = val$position;
            }

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View v10, MotionEvent event) {
                if (d3.this.j0()) {
                    if (this.f57060b != 0) {
                        if (d3.this.i0()) {
                            ScreenshotTrueListAcvity_.intent(d3.this.T).fromData(d3.this.f56983b1.getGame_screen_shot().get(this.f57060b - 1)).gameId(d3.this.f56983b1.getGame_id()).start();
                        } else {
                            List<DetialShowImageBean> pic_info = d3.this.f56983b1.getPic_info();
                            ArrayList arrayList = new ArrayList();
                            if (pic_info != null) {
                                for (int i10 = 0; i10 < pic_info.size(); i10++) {
                                    arrayList.add(pic_info.get(i10).getRemote().getPath());
                                }
                            }
                            try {
                                Intent intent = new Intent(d3.this.T, (Class<?>) ImagePagerActivity.class);
                                String[] strArr = new String[arrayList.size()];
                                for (int i11 = 0; i11 < arrayList.size(); i11++) {
                                    strArr[i11] = (String) arrayList.get(i11);
                                }
                                if (com.join.mgps.Util.t2.i(d3.this.f56983b1.getVedio_url()) && this.f57060b == 0) {
                                    FullScreenActivity.VideoInfo videoInfo = new FullScreenActivity.VideoInfo();
                                    videoInfo.H(d3.this.f56983b1.getVedio_url());
                                    videoInfo.C(strArr[0]);
                                    FullScreenActivity_.intent(d3.this.T).a(videoInfo).start();
                                } else {
                                    intent.putExtra("image_urls", strArr);
                                    intent.putExtra("image_index", this.f57060b - 1);
                                    d3.this.T.startActivity(intent);
                                }
                            } catch (Exception e10) {
                                e10.printStackTrace();
                            }
                        }
                    }
                } else if (d3.this.i0()) {
                    ScreenshotTrueListAcvity_.intent(d3.this.T).fromData(d3.this.f56983b1.getGame_screen_shot().get(this.f57060b)).gameId(d3.this.f56983b1.getGame_id()).start();
                } else {
                    List<DetialShowImageBean> pic_info2 = d3.this.f56983b1.getPic_info();
                    ArrayList arrayList2 = new ArrayList();
                    if (pic_info2 != null) {
                        for (int i12 = 0; i12 < pic_info2.size(); i12++) {
                            arrayList2.add(pic_info2.get(i12).getRemote().getPath());
                        }
                    }
                    try {
                        Intent intent2 = new Intent(d3.this.T, (Class<?>) ImagePagerActivity.class);
                        String[] strArr2 = new String[arrayList2.size()];
                        for (int i13 = 0; i13 < arrayList2.size(); i13++) {
                            strArr2[i13] = (String) arrayList2.get(i13);
                        }
                        if (com.join.mgps.Util.t2.i(d3.this.f56983b1.getVedio_url()) && this.f57060b == 0) {
                            FullScreenActivity.VideoInfo videoInfo2 = new FullScreenActivity.VideoInfo();
                            videoInfo2.H(d3.this.f56983b1.getVedio_url());
                            videoInfo2.C(strArr2[0]);
                            FullScreenActivity_.intent(d3.this.T).a(videoInfo2).start();
                        } else {
                            intent2.putExtra("image_urls", strArr2);
                            intent2.putExtra("image_index", this.f57060b - 1);
                            d3.this.T.startActivity(intent2);
                        }
                    } catch (Exception e11) {
                        e11.printStackTrace();
                    }
                }
                return false;
            }
        }

        r() {
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public void destroyItem(ViewGroup container, int position, Object object) {
            container.removeView((View) object);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return d3.this.J2.size();
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public Object instantiateItem(ViewGroup container, final int position) {
            container.addView((View) d3.this.J2.get(position));
            View view = (View) d3.this.J2.get(position);
            view.setOnTouchListener(new a(position));
            return view;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public boolean isViewFromObject(View view, Object object) {
            return view == object;
        }
    }

    class s extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        ImageView f57062d;

        public s(View itemView) {
            super(itemView);
            this.f57062d = (ImageView) itemView.findViewById(R.id.img);
        }
    }

    class t extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
        t() {
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
            ImageView imageView = new ImageView(d3.this.T);
            imageView.setImageResource(R.drawable.icon);
            return d3.this.new s(imageView);
        }
    }

    class u extends BaseAdapter {

        class a implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ int f57066b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ v f57067c;

            a(final int val$position, final v val$holder) {
                this.f57066b = val$position;
                this.f57067c = val$holder;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                if (!d3.this.f56995g2.get(this.f57066b).getCurrent_game_state().equals("0")) {
                    this.f57067c.f57070b.setBackgroundResource(R.drawable.follow_none_image);
                    d3.this.f56995g2.get(this.f57066b).setCurrent_game_state("0");
                    d3 d3Var = d3.this;
                    d3Var.O(d3Var.f56995g2.get(this.f57066b).getId(), d3.this.f56987d, this.f57067c);
                    d3 d3Var2 = d3.this;
                    int i10 = d3Var2.X - 1;
                    d3Var2.X = i10;
                    d3Var2.X = i10;
                    if (i10 == 0) {
                        d3Var2.F.setImageResource(R.drawable.follow_none_image);
                        d3.this.G.setText("收藏");
                        return;
                    }
                    return;
                }
                this.f57067c.f57070b.setBackgroundResource(R.drawable.followed_image);
                d3.this.f57006l1.setVisibility(0);
                d3.this.V1.setVisibility(8);
                d3.this.f57031v1.setVisibility(0);
                d3.this.L1.setText("收藏成功");
                d3.this.R1.setVisibility(8);
                d3.L2 = d3.this.f56995g2.get(this.f57066b).getId();
                d3 d3Var3 = d3.this;
                d3Var3.f56997h2 = false;
                int i11 = d3Var3.X + 1;
                d3Var3.X = i11;
                if (i11 > 0) {
                    d3Var3.F.setImageResource(R.drawable.followed_image);
                    d3.this.G.setText("已收藏");
                }
            }
        }

        u() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return d3.this.f56995g2.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int position) {
            return d3.this.f56995g2.get(position);
        }

        @Override // android.widget.Adapter
        public long getItemId(int position) {
            return position;
        }

        @Override // android.widget.Adapter
        public View getView(final int position, View convertView, ViewGroup parent) {
            v vVar;
            if (convertView == null) {
                convertView = LayoutInflater.from(d3.this.T).inflate(R.layout.list_item, (ViewGroup) null);
                vVar = d3.this.new v();
                vVar.f57069a = (SimpleDraweeView) convertView.findViewById(R.id.iv_img);
                vVar.f57070b = (ImageView) convertView.findViewById(R.id.iv_coll);
                vVar.f57071c = (TextView) convertView.findViewById(R.id.tv_title);
                vVar.f57072d = (TextView) convertView.findViewById(R.id.tv_size);
                vVar.f57074f = (RelativeLayout) convertView.findViewById(R.id.ll_gameform);
                vVar.f57075g = (RelativeLayout) convertView.findViewById(R.id.rl_content);
                convertView.setTag(vVar);
            } else {
                vVar = (v) convertView.getTag();
            }
            if (d3.this.f56995g2.get(position).getGame_list().get(0).getGame_ico() == null || d3.this.f56995g2.get(position).getGame_list().get(0).getGame_ico().equals("")) {
                vVar.f57069a.setImageResource(R.drawable.main_normal_icon);
            } else {
                vVar.f57069a.setImageURI(d3.this.f56995g2.get(position).getGame_list().get(0).getGame_ico());
            }
            vVar.f57071c.setText(d3.this.f56995g2.get(position).getTitle());
            vVar.f57072d.setText(d3.this.f56995g2.get(position).getGame_count() + "款");
            if (d3.this.f56995g2.get(position).getCurrent_game_state().equals("0")) {
                vVar.f57070b.setBackgroundResource(R.drawable.follow_none_image);
            } else {
                vVar.f57070b.setBackgroundResource(R.drawable.followed_image);
                d3.this.X++;
            }
            vVar.f57075g.setOnClickListener(new a(position, vVar));
            return convertView;
        }
    }

    class v {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        SimpleDraweeView f57069a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        ImageView f57070b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        TextView f57071c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        TextView f57072d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        TextView f57073e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        RelativeLayout f57074f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        RelativeLayout f57075g;

        v() {
        }
    }

    private void G0() {
        try {
            GameScore game_score = this.f56983b1.getGame_score();
            if (!"1".equals(this.f56983b1.getComment_score_switch()) || game_score == null || !com.join.mgps.Util.t2.i(game_score.getScore())) {
                this.f57029u2.setVisibility(8);
                return;
            }
            if ("0.0".equals(game_score.getScore()) || "0".equals(game_score.getScore())) {
                this.f57032v2.setText("暂无评分");
                this.f57032v2.setTextSize(14.0f);
                this.f57032v2.setTextColor(Color.parseColor("#8a8a8a"));
            } else {
                this.f57032v2.setText(game_score.getScore());
            }
            this.f57017p2.setIntegerMark(false);
            this.f57017p2.setEnabled(false);
            this.f57017p2.setStarMark(game_score.getTotal_stars());
            this.f57029u2.setVisibility(0);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static d3 f0(String gameId, ExtBean extBean, boolean autodown) {
        GamedetialModleFourFragemnt_ gamedetialModleFourFragemnt_ = new GamedetialModleFourFragemnt_();
        Bundle bundle = new Bundle();
        bundle.putBoolean(GamedetailVideoMainActivity_.AUTODOWN_EXTRA, autodown);
        bundle.putSerializable("extBean", extBean);
        bundle.putString("gameId", gameId);
        bundle.putBoolean(EndGameDetailActivity_.IS_FROM_VIDEO_EXTRA, false);
        gamedetialModleFourFragemnt_.setArguments(bundle);
        return gamedetialModleFourFragemnt_;
    }

    public static d3 g0(String gameId, ExtBean extBean, boolean autodown, boolean isFromVideo) {
        GamedetialModleFourFragemnt_ gamedetialModleFourFragemnt_ = new GamedetialModleFourFragemnt_();
        Bundle bundle = new Bundle();
        bundle.putBoolean(GamedetailVideoMainActivity_.AUTODOWN_EXTRA, autodown);
        bundle.putSerializable("extBean", extBean);
        bundle.putString("gameId", gameId);
        bundle.putBoolean(EndGameDetailActivity_.IS_FROM_VIDEO_EXTRA, isFromVideo);
        gamedetialModleFourFragemnt_.setArguments(bundle);
        return gamedetialModleFourFragemnt_;
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

    private void n0() {
        try {
            if (this.f56998i != null) {
                if (!com.join.mgps.Util.t2.i(this.f56983b1.getGame_info_top_video_url()) && !com.join.mgps.Util.t2.i(this.f56983b1.getGame_info_top_pic())) {
                    this.f56996h.setVisibility(0);
                    this.f57001j.setVisibility(8);
                    this.f56998i.setVisibility(8);
                    return;
                }
                String game_info_top_video_url = this.f56983b1.getGame_info_top_video_url();
                if (com.join.mgps.Util.t2.h(game_info_top_video_url)) {
                    com.join.android.app.common.utils.l.d(this.f57001j, R.drawable.banner_normal_icon, this.f56983b1.getGame_info_top_pic());
                    this.f56998i.setVisibility(8);
                    this.f57001j.setVisibility(0);
                }
                if (com.join.mgps.Util.t2.i(game_info_top_video_url)) {
                    com.join.android.app.common.utils.l.h(this.f56998i.f35112b, this.f56983b1.getGame_info_top_pic());
                    this.f56998i.setMuteWhenPlay(false);
                    this.f56998i.setPlayTag(this.Y);
                    if (!this.Z) {
                        this.f56998i.setUp(game_info_top_video_url, StandardVideoView.D, this.f56983b1.getGame_name(), this.f56983b1.getGame_info_top_pic());
                        this.T.autoPlayVideo(this.f56998i);
                    } else {
                        com.join.android.app.component.video.j.c(this.f56998i, game_info_top_video_url, false, "");
                        com.join.android.app.component.video.j.a(this.f56998i);
                        this.f56998i.setSurfaceToPlay();
                        this.f56998i.setCover(this.f56983b1.getGame_info_top_pic());
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void q0() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void A0() {
        XListView2 xListView2 = this.V1;
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
    public void B0(int number) {
        try {
            if (number < 100) {
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f57036x2.getLayoutParams();
                layoutParams.width = getResources().getDimensionPixelOffset(R.dimen.wdp24);
                layoutParams.height = getResources().getDimensionPixelOffset(R.dimen.wdp24);
                this.f57036x2.setLayoutParams(layoutParams);
                this.f57036x2.setCompoundDrawables(null, null, null, null);
                this.f57036x2.setBackgroundResource(R.drawable.mygame_big_round);
                this.f57036x2.setPadding(1, 0, 0, 1);
            } else {
                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.f57036x2.getLayoutParams();
                layoutParams2.width = getResources().getDimensionPixelOffset(R.dimen.dp70);
                layoutParams2.height = getResources().getDimensionPixelOffset(R.dimen.round_large_size);
                layoutParams2.setMargins(4, (int) TypedValue.applyDimension(1, 7.0f, getResources().getDisplayMetrics()), 0, 0);
                this.f57036x2.setGravity(17);
                this.f57036x2.setLayoutParams(layoutParams2);
                this.f57036x2.setCompoundDrawables(null, null, null, null);
                this.f57036x2.setBackgroundResource(R.drawable.message_round);
                this.f57036x2.setPadding(1, 0, 2, 1);
            }
            this.f57036x2.setVisibility(0);
            this.f57036x2.setText(number + "");
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void C0(int downloadingNumber) {
        if (downloadingNumber == 0) {
            y0();
        } else {
            x0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void D0() {
        XListView2 xListView2 = this.V1;
        if (xListView2 != null) {
            try {
                xListView2.u();
                this.V1.v();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void E0() {
        try {
            y0();
            this.f57036x2.setVisibility(8);
            this.f57036x2.setText("");
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 1000)
    public void F0(final boolean needRetry) {
        ExtBean extBean = this.f56989e;
        if (extBean == null || !"checkgame".equals(extBean.getFrom())) {
            return;
        }
        com.join.mgps.Util.x1.c().b(this.T, this.f56989e.getFrom_id(), new f(needRetry));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void H0(GamedetialModleFourBean modleFourBean) {
        boolean z10;
        if (modleFourBean.getBt_game_switch() == 1) {
            modleFourBean.setNodeId("2");
        } else {
            modleFourBean.setNodeId("0");
        }
        this.f56992f1 = modleFourBean;
        this.f56983b1 = modleFourBean;
        try {
            if (modleFourBean.getBt_game_switch() == 1) {
                this.O.setVisibility(0);
                this.O.removeAllViews();
                List<TipBean> game_bt_tag = modleFourBean.getGame_bt_tag();
                if (game_bt_tag != null) {
                    int dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.wdp10);
                    int dimensionPixelOffset2 = getResources().getDimensionPixelOffset(R.dimen.wdp3);
                    boolean z11 = true;
                    for (TipBean tipBean : game_bt_tag) {
                        TextView textView = new TextView(this.T);
                        textView.setPadding(dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset, dimensionPixelOffset2);
                        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                        layoutParams.rightMargin = getResources().getDimensionPixelOffset(R.dimen.wdp12);
                        if (z11) {
                            layoutParams.leftMargin = getResources().getDimensionPixelOffset(R.dimen.wdp18);
                        }
                        textView.setLayoutParams(layoutParams);
                        textView.setTextColor(-1);
                        textView.setText(tipBean.getName());
                        textView.setTextSize(0, getResources().getDimensionPixelSize(R.dimen.wdp18));
                        if (com.join.mgps.Util.t2.i(tipBean.getColor())) {
                            GradientDrawable gradientDrawable = new GradientDrawable();
                            gradientDrawable.setShape(0);
                            gradientDrawable.setCornerRadius(getResources().getDimensionPixelOffset(R.dimen.wdp4));
                            gradientDrawable.setColor(Color.parseColor(tipBean.getColor()));
                            textView.setBackground(gradientDrawable);
                        }
                        this.O.addView(textView);
                        z11 = false;
                    }
                }
                if (modleFourBean.getTag_info() != null) {
                    UtilsMy.O(modleFourBean.getTag_info(), this.P, this.T);
                }
            }
            modleFourBean.set_from_type(this.f56989e.get_from_type());
            modleFourBean.set_from(101);
            modleFourBean.setRecPosition(this.f56989e.getRecPosition());
            if (!TextUtils.isEmpty(this.f56989e.getVolcanoOther())) {
                modleFourBean.setPosition_path((VolcanoOther) JsonMapper.getInstance().fromJson(this.f56989e.getVolcanoOther(), VolcanoOther.class));
            }
            this.f56992f1.set_from_type(this.f56989e.get_from_type());
            this.f56992f1.set_from(101);
            this.f56992f1.setRecPosition(this.f56989e.getRecPosition());
            if (!TextUtils.isEmpty(this.f56989e.getVolcanoOther())) {
                this.f56992f1.setPosition_path((VolcanoOther) JsonMapper.getInstance().fromJson(this.f56989e.getVolcanoOther(), VolcanoOther.class));
            }
            this.J.setVisibility(0);
            this.K.setVisibility(8);
            this.L.setVisibility(8);
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
            arrayList.add(new com.join.mgps.adapter.h0.a("详情", f2.k0(this.f56987d, this.f56991f, this.f56989e)));
            arrayList.add(new com.join.mgps.adapter.h0.a("点评", com.join.mgps.fragment.t.S(commentAlllistIntentData)));
            arrayList.add(new com.join.mgps.adapter.h0.a("游戏单", com.join.mgps.fragment.j3.X(modleFourBean.getGame_company_id(), this.f56987d)));
            this.f57005l.setAdapter(new com.join.mgps.adapter.h0(getChildFragmentManager(), arrayList));
            this.f57005l.setOffscreenPageLimit(3);
            this.f57003k.setViewPager(this.f57005l);
            if (arrayList.size() == 1) {
                this.f57010n.setVisibility(8);
                this.f57008m.setVisibility(8);
            }
            p0(modleFourBean);
            this.f57008m.setData(modleFourBean);
            if (this.f56991f && q5.f.M().G(this.f56987d) == null) {
                com.php25.PDownload.d.c(modleFourBean.getDownloadtaskDown(), this.T);
                onDetailDownload();
            }
            GamedetialModleFourBean gamedetialModleFourBean = this.f56992f1;
            if (gamedetialModleFourBean != null) {
                if (gamedetialModleFourBean.getGame_follow() == 1) {
                    this.F.setImageResource(R.drawable.followed_image);
                    this.G.setText("已收藏");
                } else {
                    this.F.setImageResource(R.drawable.follow_none_image);
                    this.G.setText("收藏");
                }
            }
            List<DownloadTask> listH = modleFourBean.getMod_info() != null ? q5.f.M().H(modleFourBean.getMod_info().getMain_game_id(), modleFourBean.getMod_info().getMod_game_id()) : q5.f.M().I(this.f56992f1.getPackageName());
            if (listH != null && listH.size() > 0) {
                boolean z12 = false;
                loop1: while (true) {
                    z10 = false;
                    for (DownloadTask downloadTask : listH) {
                        if (Dtype.MOD.name().equals(downloadTask.getFileType())) {
                            z12 = com.join.mgps.va.overmind.i.q().K(downloadTask.getPackageName()) && downloadTask.getStatus() == 5;
                        } else if (com.join.android.app.common.utils.g.t0(getContext()).e(getContext(), downloadTask.getPackageName()) && downloadTask.getStatus() == 5) {
                            z10 = true;
                        }
                    }
                    break loop1;
                }
                if (z12 && z10) {
                    this.f57034w2 = q5.f.M().G(this.f56987d);
                } else if (z12) {
                    if (this.f56992f1.getMod_info() != null) {
                        this.f57034w2 = q5.f.M().G(this.f56992f1.getMod_info().getMod_game_id());
                    }
                } else if (z10) {
                    this.f57034w2 = q5.f.M().G(this.f56987d);
                } else {
                    if (this.f56992f1.getMod_info() != null) {
                        this.f57034w2 = q5.f.M().G(this.f56992f1.getMod_info().getMod_game_id());
                    }
                    if (this.f57034w2 == null) {
                        this.f57034w2 = q5.f.M().G(this.f56987d);
                    }
                }
            }
            DownloadTask downloadTask2 = this.f57034w2;
            if (downloadTask2 == null) {
                this.f57034w2 = this.f56992f1.getDownloadtaskDown();
                if (!UtilsMy.p0(this.f56992f1.getTag_info())) {
                    this.f57034w2.setStatus(0);
                } else if (this.f57034w2.getMod_info() == null) {
                    this.f57034w2.setFileType(Dtype.android.name());
                    if (com.join.android.app.common.utils.g.t0(this.T).e(this.T, this.f56992f1.getPackageName())) {
                        APKUtils.a aVarN = com.join.android.app.common.utils.g.t0(this.T).n(this.T, this.f56992f1.getPackageName());
                        if (!com.join.mgps.Util.t2.i(this.f56992f1.getVer()) || aVarN.d() >= Integer.parseInt(this.f56992f1.getVer())) {
                            this.f57034w2.setStatus(5);
                        } else {
                            this.f57034w2.setStatus(9);
                        }
                    } else {
                        this.f57034w2.setStatus(0);
                    }
                }
            } else {
                downloadTask2.setDownloadType(0);
                this.f57034w2.setTask_down_type(0);
                this.f57034w2.setScreenshot_pic(this.f56992f1.getScreenshot_pic());
            }
            if (("" + this.f56992f1.getPlugin_num()).equals("" + ConstantIntEnum.H5.value())) {
                GamedetialModleFourBean gamedetialModleFourBean2 = this.f56992f1;
                gamedetialModleFourBean2.setDown_count(gamedetialModleFourBean2.getStart_count());
            }
            updateButn();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Receiver(actions = {"com.broadcast.bespeak.sussess"})
    void I0() {
        this.f56992f1.setGame_book(1);
        updateButn();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void N() {
        try {
            UserInfo accountData = AccountUtil_.getInstance_(this.T).getAccountData();
            LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
            linkedMultiValueMap.add("uid", Integer.valueOf(accountData.getUid()));
            linkedMultiValueMap.add(Constants.TOKEN, accountData.getToken());
            linkedMultiValueMap.add("group_id", L2);
            linkedMultiValueMap.add("game_id", this.f56987d);
            linkedMultiValueMap.add("game_title", M2);
            linkedMultiValueMap.add("device_id", this.V);
            linkedMultiValueMap.add("version", this.W);
            GameFromBooleanBean gameFromBooleanBeanA = this.f56986c2.A(linkedMultiValueMap);
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
    public void O(String id2, String game_id, v holder) {
        try {
            if (com.join.android.app.common.utils.m.j(this.T)) {
                LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
                linkedMultiValueMap.add("uid", Integer.valueOf(this.F2.getUid()));
                linkedMultiValueMap.add(Constants.TOKEN, this.F2.getToken());
                linkedMultiValueMap.add("group_id", id2);
                linkedMultiValueMap.add("game_id", game_id);
                linkedMultiValueMap.add("device_id", this.V);
                linkedMultiValueMap.add("version", this.W);
                GameFromBooleanBean gameFromBooleanBeanT = this.f56986c2.t(linkedMultiValueMap);
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
    void P() {
        this.Q.setVisibility(8);
        ((GamedetailVideoMainActivity_) getActivity()).shakeAnimback();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Q() {
        try {
            XListView2 xListView2 = this.V1;
            if (xListView2 != null) {
                xListView2.l();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void W(GameFromPopoWinBean data) {
        for (int i10 = 0; i10 < data.getData().size(); i10++) {
            this.f56995g2.add(data.getData().get(i10));
        }
        if (data.getData().size() < 10 && this.V1 != null) {
            A0();
        }
        u uVar = this.f56982a2;
        if (uVar != null) {
            uVar.notifyDataSetChanged();
        }
    }

    @Click
    void X() {
        this.T.clickBack();
        h0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void Y() {
        try {
            this.D2 = q5.f.M().V();
            int iD0 = q5.f.M().d0();
            this.E2 = iD0;
            C0(iD0);
            int i10 = this.D2;
            if (i10 != 0) {
                B0(i10);
            } else {
                E0();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        updateDownloadView();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Z() {
        if (this.f56995g2.size() > 0) {
            this.f56995g2.clear();
            u uVar = this.f56982a2;
            if (uVar != null) {
                uVar.notifyDataSetChanged();
            }
        }
    }

    @Click
    void a0() {
        IntentUtil.getInstance().goMyGameManagerActivity(this.T);
    }

    void addFrom(DownloadTask downloadTask) {
        ExtBean extBean = this.f56989e;
        if (extBean == null || TextUtils.isEmpty(extBean.getFrom()) || downloadTask == null || !"112".equals(this.f56989e.getFrom())) {
            return;
        }
        ExtBean extBean2 = new ExtBean();
        extBean2.setFrom(PointType.ANTI_SPAM);
        extBean2.setPosition("112");
        extBean2.setLocation(this.f56989e.getLocation());
        downloadTask.setExt(JsonMapper.toJsonString(extBean2));
    }

    @AfterViews
    void afterView() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f56987d = arguments.getString("gameId");
            this.f56991f = arguments.getBoolean(GamedetailVideoMainActivity_.AUTODOWN_EXTRA);
            this.Z = arguments.getBoolean(EndGameDetailActivity_.IS_FROM_VIDEO_EXTRA);
            this.f56989e = (ExtBean) arguments.getSerializable("extBean");
        }
        this.Y = this.f56985c + System.currentTimeMillis();
        if (this.Z) {
            this.Y = "PapaMainAdapter";
        }
        if (this.f56989e == null) {
            this.f56989e = new ExtBean();
        }
        GamedetailVideoMainActivity gamedetailVideoMainActivity = (GamedetailVideoMainActivity) getActivity();
        this.T = gamedetailVideoMainActivity;
        if (gamedetailVideoMainActivity.gethideOrshowCover()) {
            this.Q.setVisibility(0);
        } else {
            this.Q.setVisibility(8);
        }
        this.K.setVisibility(8);
        this.L.setVisibility(8);
        this.J.setVisibility(8);
        this.S = com.join.mgps.rpc.impl.d.O1();
        this.f56984b2 = com.join.mgps.rpc.impl.a.c0();
        this.f56986c2 = com.join.mgps.rpc.impl.a.c0();
        com.join.mgps.Util.j0.a().d(this);
        RequestBeanUtil.getInstance(this.T);
        this.W = RequestBeanUtil.getVersionAndVersionName();
        this.U = new com.join.android.app.common.manager.b(this.T);
        this.T.getWindow().setFlags(67108864, 67108864);
        this.U.m(true);
        this.U.n(R.color.black_30_alpha);
        View childAt = ((ViewGroup) this.T.findViewById(android.R.id.content)).getChildAt(0);
        if (childAt != null) {
            ViewCompat.setFitsSystemWindows(childAt, false);
        }
        getResources().getDimensionPixelSize(getResources().getIdentifier("status_bar_height", "dimen", "android"));
        this.U.n(R.color.black_alpha);
        GamedetailVideoMainActivity gamedetailVideoMainActivity2 = this.T;
        com.join.mgps.Util.p2.c(gamedetailVideoMainActivity2, com.join.mgps.Util.p2.d(gamedetailVideoMainActivity2));
        GamedetialModleFourBean modleFourBeanShow = ((GamedetailVideoMainActivity) getActivity()).getModleFourBeanShow();
        if (modleFourBeanShow != null) {
            this.K.setVisibility(8);
            this.L.setVisibility(8);
            this.J.setVisibility(0);
            H0(modleFourBeanShow);
        } else {
            d0();
        }
        this.f57015p0 = getStatusBarHeight(this.T);
        this.I.getBackground().setAlpha(0);
        CollapsingToolbarLayout.LayoutParams layoutParams = (CollapsingToolbarLayout.LayoutParams) this.I.getLayoutParams();
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.R.getLayoutParams();
        layoutParams2.height = this.f57015p0;
        this.R.setLayoutParams(layoutParams2);
        ((FrameLayout.LayoutParams) layoutParams).height = getResources().getDimensionPixelOffset(R.dimen.wdp98) + this.f57015p0;
        this.I.setLayoutParams(layoutParams);
        this.f57018q.addOnOffsetChangedListener((AppBarLayout.OnOffsetChangedListener) new i());
    }

    @Click
    void b0() {
        IntentUtil.getInstance().goMyGameManagerActivity(this.T);
    }

    @Override // com.join.mgps.activity.gamedetail.BaseGameDetailFragment
    public void backpressedTofinishActivity() {
        StandardVideoView standardVideoView = this.f56998i;
        if (standardVideoView == null) {
            return;
        }
        standardVideoView.taskShotPic(new p());
        if (this.f56998i.getTimeHas() < 2000) {
            this.f56998i.onAutoCompletion();
        }
        com.join.android.app.component.video.i.f(this.f56998i);
        this.f56998i.getGSYVideoManager().z(this.f56998i);
        this.f57002j2 = true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Click
    void c0() {
        if (AccountUtil_.getInstance_(this.T).isTourist()) {
            ((LoginSplashActivity_.IntentBuilder_) LoginSplashActivity_.intent(this.T).flags(C.ENCODING_PCM_MU_LAW)).start();
        } else {
            m0();
            e0();
        }
    }

    void changeDownloadTaskNumber(DownloadTask task, int from) {
        if (task == null) {
            return;
        }
        String crc_link_type_val = task.getCrc_link_type_val();
        if (from == 2) {
            if (!this.G2.containsKey(crc_link_type_val)) {
                this.G2.put(crc_link_type_val, task);
            }
            if (!this.H2.containsKey(crc_link_type_val)) {
                this.H2.put(crc_link_type_val, task);
            }
        } else if (from != 3) {
            if (from != 5) {
                if (from != 6) {
                    if (from == 7) {
                        if (this.G2.containsKey(crc_link_type_val)) {
                            this.G2.remove(crc_link_type_val);
                        }
                        if (this.H2.containsKey(crc_link_type_val)) {
                            this.H2.remove(crc_link_type_val);
                        }
                    } else if (from == 10) {
                        if (!this.G2.containsKey(crc_link_type_val)) {
                            this.G2.put(crc_link_type_val, task);
                        }
                        if (!this.H2.containsKey(crc_link_type_val)) {
                            this.H2.put(crc_link_type_val, task);
                        }
                    } else if (from == 11) {
                    }
                } else if (this.H2.containsKey(crc_link_type_val)) {
                    this.H2.remove(crc_link_type_val);
                }
            } else if (this.G2.containsKey(crc_link_type_val)) {
                this.G2.remove(crc_link_type_val);
            }
            if (this.H2.containsKey(crc_link_type_val)) {
                this.H2.remove(crc_link_type_val);
            }
        } else if (this.H2.containsKey(crc_link_type_val)) {
            this.H2.remove(crc_link_type_val);
        }
        updateDownloadView();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void changeGameFollow(int type) {
        String str;
        ResultMainBean resultMainBeanJ1;
        if (com.join.android.app.common.utils.m.j(this.T)) {
            UserInfo accountData = AccountUtil_.getInstance_(this.T).getAccountData();
            this.F2 = accountData;
            int uid = accountData != null ? accountData.getUid() : 0;
            try {
                PackageInfo packageInfo = this.T.getPackageManager().getPackageInfo(this.T.getPackageName(), 0);
                str = packageInfo.versionCode + "_" + packageInfo.versionName;
            } catch (PackageManager.NameNotFoundException e10) {
                e10.printStackTrace();
                str = "";
            }
            RequestdetialFolowAndBeSpeak requestdetialFolowAndBeSpeak = new RequestdetialFolowAndBeSpeak();
            requestdetialFolowAndBeSpeak.setApp_ver(str);
            requestdetialFolowAndBeSpeak.setGame_id(this.f56992f1.getCrc_sign_id());
            requestdetialFolowAndBeSpeak.setUid(uid);
            requestdetialFolowAndBeSpeak.setMobile(this.F2.getMobile());
            CommonRequestBean<RequestGameIdArgs> detialFollowAnd = RequestBeanUtil.getInstance(this.T).getDetialFollowAnd(requestdetialFolowAndBeSpeak);
            if (type == 1) {
                resultMainBeanJ1 = this.S.j1(detialFollowAnd);
            } else if (type == 2) {
                resultMainBeanJ1 = this.S.n(detialFollowAnd);
            } else if (type != 3) {
                resultMainBeanJ1 = type != 4 ? null : this.S.M0(detialFollowAnd);
            } else {
                resultMainBeanJ1 = this.S.g(detialFollowAnd);
            }
            if (resultMainBeanJ1 != null) {
                updateTitleButn(resultMainBeanJ1, type);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void d0() {
        GamedetialModleFourBean data;
        if (!com.join.android.app.common.utils.m.j(this.T)) {
            showLodingFailed();
            return;
        }
        try {
            UserInfo accountData = AccountUtil_.getInstance_(this.T).getAccountData();
            if (accountData == null) {
                accountData = UserInfo.getDefaultInstance();
            }
            RequestModel requestModel = new RequestModel();
            requestModel.setDefault(this.T);
            requestModel.setArgs(new RequestGameIdArgs(this.f56987d, 1, accountData.getUid()));
            ResponseModel<GamedetialModleFourBean> responseModelBody = com.join.mgps.rpc.impl.i.P0().N0().P1(requestModel.makeSign()).execute().body();
            if (responseModelBody == null || responseModelBody.getCode() != 200 || (data = responseModelBody.getData()) == null) {
                showLodingFailed();
            } else {
                H0(data);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            showLodingFailed();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void e0() {
        try {
            if (!com.join.android.app.common.utils.m.j(this.T)) {
                showToast("网络出错，请稍后重试");
                return;
            }
            if (IntentUtil.getInstance().goLoginInteractive(this.T)) {
                return;
            }
            this.V = "";
            UserInfo accountData = AccountUtil_.getInstance_(this.T).getAccountData();
            LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
            linkedMultiValueMap.add("uid", Integer.valueOf(accountData.getUid()));
            linkedMultiValueMap.add(Constants.TOKEN, accountData.getToken());
            linkedMultiValueMap.add("current_game_id", this.f56987d);
            int i10 = this.f56993f2;
            this.f56993f2 = i10 + 1;
            linkedMultiValueMap.add("page", Integer.valueOf(i10));
            linkedMultiValueMap.add("device_id", this.V);
            linkedMultiValueMap.add("version ", this.W);
            GameFromPopoWinBean gameFromPopoWinBeanW = this.f56986c2.W(linkedMultiValueMap);
            if (gameFromPopoWinBeanW != null && gameFromPopoWinBeanW.getError() == 0 && gameFromPopoWinBeanW.getData() != null) {
                D0();
                if (this.f56993f2 == 2) {
                    Z();
                }
                W(gameFromPopoWinBeanW);
                return;
            }
            if (gameFromPopoWinBeanW == null || gameFromPopoWinBeanW.getError() != 701) {
                A0();
                return;
            }
            IntentUtil.getInstance().goMyAccountLoginActivity(this.T);
            v0("Token已失效，请重新登录");
            IntentUtil.getInstance().goLogin(this.T);
            k0();
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
                this.G2.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
        if (listR != null && listR.size() > 0) {
            for (DownloadTask downloadTask2 : listR) {
                this.H2.put(downloadTask2.getCrc_link_type_val(), downloadTask2);
            }
        }
        updateDownloadView();
    }

    @Override // com.join.mgps.activity.gamedetail.BaseGameDetailFragment
    public ViewPager getViewPager() {
        return this.f57005l;
    }

    void h0() {
        ExtBean extBean = this.f56989e;
        if (extBean == null || TextUtils.isEmpty(extBean.getFrom()) || !this.f56989e.getFrom().equals("updateFromMarket")) {
            return;
        }
        IntentUtil.getInstance().goMGMainActivity2Front(this.T);
    }

    @Override // com.join.mgps.activity.gamedetail.BaseGameDetailFragment
    public void hideCover() {
        this.Q.setVisibility(8);
    }

    boolean i0() {
        GamedetialModleFourBean gamedetialModleFourBean = this.f56983b1;
        return (gamedetialModleFourBean == null || gamedetialModleFourBean.getGame_screen_shot() == null || this.f56983b1.getGame_screen_shot().size() <= 0) ? false : true;
    }

    void initView() {
        try {
            this.M.setVisibility(8);
            this.H.setText(this.f56983b1.getGame_name());
            n0();
            l0();
            if (!com.join.mgps.Util.t2.i(this.f56983b1.getGame_info_top_video_url()) && !com.join.mgps.Util.t2.i(this.f56983b1.getGame_info_top_pic())) {
                this.f57024s.setVisibility(0);
                this.f57026t.setVisibility(8);
                this.f57028u.setVisibility(8);
                this.I.getBackground().setAlpha(255);
                int dimensionPixelSize = getResources().getDimensionPixelSize(getResources().getIdentifier("status_bar_height", "dimen", "android"));
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f57014p.getLayoutParams();
                layoutParams.height = dimensionPixelSize;
                this.f57014p.setLayoutParams(layoutParams);
            }
            this.f57007l2 = (TextView) this.T.findViewById(R.id.appName);
            this.f57009m2 = (TextView) this.T.findViewById(R.id.appCompany);
            this.f57011n2 = (TextView) this.T.findViewById(R.id.appSize);
            this.f57013o2 = (TextView) this.T.findViewById(R.id.appDownloadCount);
            this.f57017p2 = (MStarBar) this.T.findViewById(R.id.comment_head_mstarBar);
            this.f57004k2 = (SimpleDraweeView) this.T.findViewById(R.id.appIcon);
            this.f57020q2 = (LinearLayout) this.T.findViewById(R.id.companyLayout);
            this.f57023r2 = (LinearLayout) this.T.findViewById(R.id.layoutGift);
            this.f57025s2 = (SimpleDraweeView) this.T.findViewById(R.id.giftImage);
            this.f57027t2 = (TextView) this.T.findViewById(R.id.giftContent);
            this.f57029u2 = (LinearLayout) this.T.findViewById(R.id.scoreLayout);
            this.f57032v2 = (TextView) this.T.findViewById(R.id.comment_head_point_tx);
            com.join.android.app.common.utils.l.h(this.f57004k2, this.f56983b1.getIco_remote());
            this.f57007l2.setText(this.f56983b1.getGame_name());
            this.f57009m2.setText(this.f56983b1.getCompany_name());
            if (this.f56983b1.getBespeak_switch() == 1) {
                if (this.f56983b1.getAppSize() == null || "0.00".equals(this.f56983b1.getAppSize())) {
                    this.f57011n2.setVisibility(8);
                } else {
                    this.f57011n2.setText(this.f56983b1.getAppSize() + "M");
                    this.f57011n2.setVisibility(0);
                }
                if (this.f56983b1.getBespeak_count() == null) {
                    this.f57013o2.setText("已有0人预约");
                } else {
                    this.f57013o2.setText("已有" + this.f56983b1.getBespeak_count() + "人预约");
                }
            } else {
                this.f57011n2.setVisibility(0);
                this.f57013o2.setText(com.join.mgps.Util.t2.c(this.f56983b1.getDown_count()));
                this.f57011n2.setText(this.f56983b1.getAppSize() + "M");
                try {
                    if (this.f56983b1.getDown_status() == 5 && this.f56983b1.getSp_tag_info() != null && this.f56983b1.getSp_tag_info().getDown_res() != null) {
                        this.f57013o2.setText(this.f56983b1.getSp_tag_info().getDown_res().getName());
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            if (this.f56983b1.getPlugin_num() != null) {
                if (this.f56983b1.getPlugin_num().equals(ConstantIntEnum.H5.value() + "")) {
                    this.f57011n2.setVisibility(8);
                    this.f57013o2.setText(com.join.mgps.Util.t2.c(this.f56983b1.getDown_count()).replace("安装", this.T.getResources().getString(R.string.download_status_finished)));
                }
            }
            G0();
            this.f57029u2.setOnClickListener(new q());
            if (com.join.mgps.Util.t2.h(this.f56983b1.getCompany_name())) {
                this.f57020q2.setVisibility(8);
            } else {
                this.f57020q2.setVisibility(8);
                this.f57023r2.setOnClickListener(new a());
            }
            this.f57009m2.setOnClickListener(new b());
            if (this.f56983b1.getShare_config() == null || this.f56983b1.getShare_config().getShare_switch() != 1) {
                this.f57023r2.setVisibility(8);
            } else {
                this.f57023r2.setVisibility(0);
                com.join.android.app.common.utils.l.d(this.f57025s2, R.drawable.user_gift, "");
                this.f57023r2.setOnClickListener(new c());
            }
            if (this.f56983b1.getActivity_entry() == null) {
                this.f57023r2.setVisibility(8);
                return;
            }
            this.f57023r2.setVisibility(0);
            com.join.android.app.common.utils.l.h(this.f57025s2, this.f56983b1.getActivity_entry().getPic());
            this.f57027t2.setText(this.f56983b1.getActivity_entry().getTitle());
            w0();
            this.f57023r2.setOnClickListener(new d());
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    @Click
    void instalButtomButn() {
        boolean z10;
        int game_book = this.f56992f1.getGame_book();
        if (this.f56992f1.getBespeak_switch() == 1 && game_book != 1 && this.f56992f1.getDown_status() == 2) {
            if (IntentUtil.getInstance().goLoginNetGame(this.T) || this.f56992f1.getGame_book() == 1) {
                return;
            }
            changeGameFollow(4);
            return;
        }
        if (("" + this.f56992f1.getPlugin_num()).equals("" + ConstantIntEnum.H5.value())) {
            IntentUtil.getInstance().goShareWebActivity(this.T, this.f56992f1.getDown_url_remote());
            UtilsMy.j3(this.f57034w2, this.T);
        }
        DownloadTask downloadTask = this.f57034w2;
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        if (this.f57034w2 != null && UtilsMy.x0(this.f56992f1.getPay_tag_info(), this.f56992f1.getCrc_sign_id()) > 0) {
            status = 43;
        }
        GamedetialModleFourBean gamedetialModleFourBean = this.f56992f1;
        if (gamedetialModleFourBean != null && gamedetialModleFourBean.getMod_info() != null) {
            List<DownloadTask> listH = q5.f.M().H(this.f56992f1.getMod_info().getMain_game_id(), this.f56992f1.getMod_info().getMod_game_id());
            if (listH == null || listH.size() <= 0) {
                this.f57034w2 = null;
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
                    this.f57034w2 = q5.f.M().G(this.f56987d);
                } else if (z11) {
                    if (this.f56992f1.getMod_info() != null) {
                        this.f57034w2 = q5.f.M().G(this.f56992f1.getMod_info().getMod_game_id());
                    }
                } else if (z10) {
                    this.f57034w2 = q5.f.M().G(this.f56987d);
                } else {
                    if (this.f56992f1.getMod_info() != null) {
                        this.f57034w2 = q5.f.M().G(this.f56992f1.getMod_info().getMod_game_id());
                    }
                    if (this.f57034w2 == null) {
                        this.f57034w2 = q5.f.M().G(this.f56987d);
                    }
                }
            }
        }
        DownloadTask downloadTask3 = this.f57034w2;
        if (downloadTask3 == null || downloadTask3.getStatus() == 0) {
            this.f56983b1.setReMarks(this.f56989e.getReMarks());
            this.f56989e.setFrom(PointType.ANTI_SPAM);
            this.f56992f1.setExt(JsonMapper.getInstance().toJson(this.f56989e));
            UtilsMy.d1(this.T, this.f56992f1);
            return;
        }
        DownloadTask downloadTask4 = this.f57034w2;
        if (downloadTask4 != null && (status == 2 || status == 10)) {
            com.php25.PDownload.d.i(downloadTask4);
        } else {
            if (status == 12 || status == 27) {
                return;
            }
            if (status == 13) {
                com.php25.PDownload.d.l(this.T, downloadTask4);
                return;
            }
            if (status == 5) {
                UtilsMy.p4(this.T, downloadTask4, "2");
            } else if (status == 42) {
                downloadTask4.setVer(this.f56992f1.getVer());
                this.f57034w2.setVer_name(this.f56992f1.getVer_name());
                this.f57034w2.setUrl(this.f56992f1.getDown_url_remote());
                this.f57034w2.setCfg_ver(this.f56992f1.getCfg_ver());
                this.f57034w2.setCfg_ver_name(this.f56992f1.getCfg_ver_name());
                this.f57034w2.setCfg_down_url(this.f56992f1.getCfg_down_url());
                this.f57034w2.setPay_game_amount(this.f56992f1.getPay_tag_info() != null ? this.f56992f1.getPay_tag_info().getPay_game_amount() : 0);
                DownloadTask downloadTask5 = this.f57034w2;
                Where where = Where.detail;
                downloadTask5.setKeyword(where.name());
                this.f57034w2.setKeyword(where.name());
                DownloadTask downloadTask6 = this.f57034w2;
                UtilsMy.W4(downloadTask6, downloadTask6.getCrc_link_type_val());
                UtilsMy.O4(this.T, this.f57034w2);
            } else if (status == 9) {
                if (!com.join.android.app.common.utils.m.j(this.T)) {
                    com.join.mgps.Util.a3.b(this.T).d("无网络连接");
                    return;
                }
                if (this.f56992f1.getGame_detailed() != null && com.join.mgps.Util.t2.i(this.f56992f1.getGame_detailed().getTpl_two_qq())) {
                    com.join.mgps.Util.h0.h0(this.T).d0(this.T, this.f56992f1.getGame_detailed().getTpl_two_qq_key(), this.f56992f1.getGame_detailed().getAd_pic_qq(), this.f56992f1.getGame_detailed().getTpl_two_qq());
                }
                int downloadType = this.f57034w2.getDownloadType();
                if (downloadType == 0 || downloadType == 1) {
                    if (this.f57034w2.getCrc_link_type_val() == null || this.f57034w2.getCrc_link_type_val().equals("")) {
                        return;
                    }
                    addFrom(this.f57034w2);
                    if (UtilsMy.o1(this.T, this.f57034w2)) {
                        return;
                    }
                    if (this.f56992f1.getDown_status() == 5) {
                        UtilsMy.l1(this.T, this.f57034w2);
                        return;
                    }
                    com.php25.PDownload.d.b(this.f57034w2);
                    this.f57034w2.setVer(this.f56992f1.getVer());
                    this.f57034w2.setVer_name(this.f56992f1.getVer_name());
                    this.f57034w2.setUrl(this.f56992f1.getDown_url_remote());
                    this.f57034w2.setCfg_ver(this.f56992f1.getCfg_ver());
                    this.f57034w2.setCfg_ver_name(this.f56992f1.getCfg_ver_name());
                    this.f57034w2.setCfg_down_url(this.f56992f1.getCfg_down_url());
                    this.f57034w2.setPay_game_amount(this.f56992f1.getPay_tag_info() != null ? this.f56992f1.getPay_tag_info().getPay_game_amount() : 0);
                    this.f57034w2.setKeyword(Where.detail.name());
                    DownloadTask downloadTask7 = this.f57034w2;
                    UtilsMy.W4(downloadTask7, downloadTask7.getCrc_link_type_val());
                    if (UtilsMy.z0(this.f56992f1.getPay_tag_info(), this.f56992f1.getCrc_sign_id()) > 0) {
                        ExtBean extBean = this.f56989e;
                        if (extBean == null || !"checkgame".equals(extBean.getFrom())) {
                            if (!UtilsMy.o1(this.T, this.f57034w2)) {
                                if (this.f56992f1.getDown_status() == 5) {
                                    UtilsMy.l1(this.T, this.f57034w2);
                                } else {
                                    UtilsMy.z4(this.T, this.f56987d);
                                }
                            }
                            onDetailDownload();
                        } else {
                            UtilsMy.A4(this.T, this.f56987d, this.f56989e.getFrom_id());
                        }
                    } else {
                        UtilsMy.D1(this.f57034w2, this.f56992f1);
                        if (!UtilsMy.o1(this.T, this.f57034w2)) {
                            if (this.f56992f1.getDown_status() == 5) {
                                UtilsMy.l1(this.T, this.f57034w2);
                            } else {
                                UtilsMy.U0(this.T, this.f57034w2, this.f56992f1.getTp_down_url(), this.f56992f1.getOther_down_switch(), this.f56992f1.getCdn_down_switch());
                            }
                        }
                        onDetailDownload();
                    }
                } else if (downloadType == 2) {
                    UtilsMy.R4(this.f57034w2);
                }
            } else if (11 == status) {
                UtilsMy.w4(downloadTask4, this.T);
            } else if (43 == status) {
                downloadTask4.setKeyword(Where.detail.name());
                if (this.f56992f1 != null) {
                    addFrom(this.f57034w2);
                    if (this.f56992f1.getGame_detailed() != null && com.join.mgps.Util.t2.i(this.f56992f1.getGame_detailed().getTpl_two_qq())) {
                        com.join.mgps.Util.h0.h0(this.T).d0(this.T, this.f56992f1.getGame_detailed().getTpl_two_qq_key(), this.f56992f1.getGame_detailed().getAd_pic_qq(), this.f56992f1.getGame_detailed().getTpl_two_qq());
                    }
                    if (UtilsMy.z0(this.f56992f1.getPay_tag_info(), this.f56992f1.getCrc_sign_id()) > 0) {
                        ExtBean extBean2 = this.f56989e;
                        if (extBean2 == null || !"checkgame".equals(extBean2.getFrom())) {
                            if (!UtilsMy.o1(this.T, this.f57034w2)) {
                                if (this.f56992f1.getDown_status() == 5) {
                                    UtilsMy.l1(this.T, this.f57034w2);
                                } else {
                                    UtilsMy.z4(this.T, this.f56987d);
                                }
                            }
                            onDetailDownload();
                        } else {
                            UtilsMy.A4(this.T, this.f56987d, this.f56989e.getFrom_id());
                        }
                    } else {
                        UtilsMy.D1(this.f57034w2, this.f56992f1);
                        if (!UtilsMy.o1(this.T, this.f57034w2)) {
                            if (this.f56992f1.getDown_status() == 5) {
                                UtilsMy.l1(this.T, this.f57034w2);
                            } else {
                                UtilsMy.U0(this.T, this.f57034w2, this.f56992f1.getTp_down_url(), this.f56992f1.getOther_down_switch(), this.f56992f1.getCdn_down_switch());
                            }
                        }
                    }
                }
            } else if (48 != status) {
                downloadTask4.setKeyword(Where.detail.name());
                if (this.f56992f1 != null) {
                    addFrom(this.f57034w2);
                    if (this.f56992f1.getGame_detailed() != null && com.join.mgps.Util.t2.i(this.f56992f1.getGame_detailed().getTpl_two_qq())) {
                        com.join.mgps.Util.h0.h0(this.T).d0(this.T, this.f56992f1.getGame_detailed().getTpl_two_qq_key(), this.f56992f1.getGame_detailed().getAd_pic_qq(), this.f56992f1.getGame_detailed().getTpl_two_qq());
                    }
                    if (UtilsMy.z0(this.f56992f1.getPay_tag_info(), this.f56992f1.getCrc_sign_id()) > 0) {
                        ExtBean extBean3 = this.f56989e;
                        if (extBean3 == null || !"checkgame".equals(extBean3.getFrom())) {
                            if (!UtilsMy.o1(this.T, this.f57034w2)) {
                                if (this.f56992f1.getDown_status() == 5) {
                                    UtilsMy.l1(this.T, this.f57034w2);
                                } else {
                                    UtilsMy.z4(this.T, this.f56987d);
                                }
                            }
                            onDetailDownload();
                        } else {
                            UtilsMy.A4(this.T, this.f56987d, this.f56989e.getFrom_id());
                        }
                    } else {
                        UtilsMy.D1(this.f57034w2, this.f56992f1);
                        if (!UtilsMy.o1(this.T, this.f57034w2)) {
                            if (this.f56992f1.getDown_status() == 5) {
                                UtilsMy.l1(this.T, this.f57034w2);
                            } else {
                                UtilsMy.U0(this.T, this.f57034w2, this.f56992f1.getTp_down_url(), this.f56992f1.getOther_down_switch(), this.f56992f1.getCdn_down_switch());
                            }
                        }
                    }
                }
            }
        }
        updateButn();
    }

    @Click
    void iv_back() {
        this.T.clickBack();
        h0();
    }

    boolean j0() {
        return com.join.mgps.Util.t2.i(this.f56983b1.getGame_info_top_video_url()) || com.join.mgps.Util.t2.i(this.f56983b1.getGame_info_top_pic());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void k0() {
        PopupWindow popupWindow = this.f56999i1;
        if (popupWindow != null) {
            popupWindow.dismiss();
        }
    }

    void l0() {
        this.f57012o.setAdapter(this.K2);
        this.f57008m.setViewPager(this.f57012o);
        if (MViewpagerV4.class.isInstance(this.f57012o)) {
            ((MViewpagerV4) this.f57012o).setIntercept(false);
        }
        this.f57008m.setOnPageChangeListener(new h());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void m0() {
        View viewInflate = LayoutInflater.from(this.T).inflate(R.layout.popo_item, (ViewGroup) null);
        r0(0.4f);
        PopupWindow popupWindow = new PopupWindow(viewInflate, -1, -1, true);
        this.f56999i1 = popupWindow;
        popupWindow.setTouchable(true);
        this.f56999i1.setOutsideTouchable(true);
        this.f56999i1.setFocusable(true);
        this.f56999i1.setBackgroundDrawable(new ColorDrawable());
        this.f56999i1.setSoftInputMode(16);
        this.f56999i1.setOnDismissListener(new j());
        XListView2 xListView2 = (XListView2) viewInflate.findViewById(R.id.listview);
        this.V1 = xListView2;
        xListView2.setPullRefreshEnable(new k());
        this.V1.setPullLoadEnable(new l());
        this.L1 = (TextView) viewInflate.findViewById(R.id.tv_show_tips);
        this.f57019q1 = (LinearLayout) viewInflate.findViewById(R.id.ll_our);
        this.f57006l1 = (LinearLayout) viewInflate.findViewById(R.id.ll_show_finish);
        this.f57016p1 = (LinearLayout) viewInflate.findViewById(R.id.ll_dismiss);
        this.f57022r1 = (EditText) viewInflate.findViewById(R.id.game_ed);
        this.f57031v1 = (TextView) viewInflate.findViewById(R.id.tv_finish);
        this.R1 = (LinearLayout) viewInflate.findViewById(R.id.ll_build);
        this.f57016p1.setOnClickListener(new m());
        this.R1.setOnClickListener(new n());
        this.f57031v1.setOnClickListener(new o());
        u uVar = new u();
        this.f56982a2 = uVar;
        this.V1.setAdapter((ListAdapter) uVar);
        this.f56999i1.showAtLocation(LayoutInflater.from(this.T).inflate(R.layout.gamedetial_modle_three_activity, (ViewGroup) null), 81, 0, 0);
    }

    @Click
    void o0() {
        this.T.clickBack();
    }

    @Override // com.join.mgps.activity.gamedetail.BaseGameDetailFragment
    public boolean onBackPressedMy() {
        return com.join.android.app.component.video.a.c0(this.T, this.Y);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        if (!this.Z) {
            StandardVideoView standardVideoView = this.f56998i;
            if (standardVideoView != null) {
                standardVideoView.release();
            }
            com.join.android.app.component.video.a.n0(this.Y);
        }
        com.join.mgps.Util.j0.a().e(this);
    }

    void onDetailDownload() {
        ExtBean extBean = this.f56989e;
        if (extBean == null || TextUtils.isEmpty(extBean.getFrom()) || !this.f56989e.getFrom().equals("downloadCenter")) {
            return;
        }
        MobclickAgentKt.onEvent(this.T, "detailDownload4.2.0.6");
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    void onDownloadSpeed(com.join.mgps.event.q event) {
        if (event == null || TextUtils.isEmpty(event.a())) {
            return;
        }
        ProgressBar progressBar = this.A;
        if (progressBar instanceof DownloadProgressBar) {
            ((DownloadProgressBar) progressBar).update(event.a(), 1);
        }
    }

    /* JADX WARN: Code duplicated, block: B:46:0x00db  */
    /* JADX WARN: Code duplicated, block: B:48:0x00df  */
    /* JADX WARN: Code duplicated, block: B:52:0x00f5  */
    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.r downloadTaskEvent) {
        DownloadTask downloadTaskA = downloadTaskEvent.a();
        if (downloadTaskA != null && this.f57034w2 == null) {
            this.f57034w2 = q5.f.M().G(downloadTaskA.getCrc_link_type_val());
        }
        DlTaskManager.INSTANCE.onNotifyDataSet(downloadTaskEvent, new Function0() { // from class: com.join.mgps.activity.c3
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f56878b.lambda$onEventMainThread$0();
            }
        });
        if (downloadTaskEvent.c() == 8) {
            DownloadTask downloadTask = this.f57034w2;
            if (downloadTask == null || downloadTask.getPath() == null) {
                return;
            }
            UtilsMy.U4(this.f57034w2);
            this.A.setProgress((int) this.f57034w2.getProgress());
            this.f57039z.setText(this.f57034w2.getProgress() + "%");
            return;
        }
        if (downloadTaskA != null && this.f57034w2 != null && downloadTaskA.getCrc_link_type_val().equals(this.f57034w2.getCrc_link_type_val())) {
            this.f57034w2 = downloadTaskA;
            int iC = downloadTaskEvent.c();
            if (iC == 2) {
                x0();
                Y();
            } else if (iC == 3) {
                Y();
            } else if (iC == 5) {
                if (this.f57034w2 != null && downloadTaskA.getCrc_link_type_val().equals(this.f57034w2.getCrc_link_type_val())) {
                    this.f57034w2 = downloadTaskA;
                }
                Y();
            } else if (iC == 6 || iC == 7) {
                Y();
            } else {
                if (iC == 8) {
                    DownloadTask downloadTask2 = this.f57034w2;
                    if (downloadTask2 == null || downloadTask2.getPath() == null) {
                        return;
                    }
                    UtilsMy.U4(this.f57034w2);
                    this.A.setProgress((int) this.f57034w2.getProgress());
                    this.f57039z.setText(this.f57034w2.getProgress() + "%");
                    updateProgress(this.f57034w2);
                    return;
                }
                if (iC == 10) {
                    Y();
                } else if (iC == 11) {
                    if (this.f57034w2 != null) {
                        this.f57034w2 = downloadTaskA;
                    }
                    Y();
                } else if (iC == 27) {
                    Y();
                } else if (iC == 48) {
                    if (this.f57034w2 != null) {
                        this.f57034w2 = downloadTaskA;
                    }
                    Y();
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
        this.I2 = true;
        try {
            boolean z10 = this.Z;
            if (!z10 && (standardVideoView2 = this.f56998i) != null) {
                standardVideoView2.onVideoPause();
            } else if (z10 && (standardVideoView = this.f56998i) != null && !this.f57002j2) {
                standardVideoView.onVideoPause();
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
        this.I2 = false;
        this.F2 = AccountUtil_.getInstance_(this.T).getAccountData();
        if (N2) {
            this.f56993f2 = 1;
            N2 = false;
            e0();
        }
        if (this.f57024s.getVisibility() == 4 && (standardVideoView = this.f56998i) != null) {
            standardVideoView.onVideoResume(false);
        }
        Y();
        GamedetialModleFourBean gamedetialModleFourBean2 = this.f56992f1;
        DownloadTask downloadTaskG = null;
        if (gamedetialModleFourBean2 != null) {
            List<DownloadTask> listH = gamedetialModleFourBean2.getMod_info() != null ? q5.f.M().H(this.f56992f1.getMod_info().getMod_game_id(), this.f56992f1.getMod_info().getMain_game_id()) : q5.f.M().I(this.f56992f1.getPackageName());
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
                    downloadTaskG = q5.f.M().G(this.f56987d);
                } else if (z11) {
                    if (this.f56992f1.getMod_info() != null) {
                        downloadTaskG = q5.f.M().G(this.f56992f1.getMod_info().getMod_game_id());
                    }
                } else if (z10) {
                    downloadTaskG = q5.f.M().G(this.f56987d);
                } else {
                    downloadTaskG = this.f56992f1.getMod_info() != null ? q5.f.M().G(this.f56992f1.getMod_info().getMod_game_id()) : null;
                    if (downloadTaskG == null) {
                        downloadTaskG = q5.f.M().G(this.f56987d);
                    }
                }
            }
        }
        if (downloadTaskG == null && (gamedetialModleFourBean = this.f56992f1) != null) {
            this.f57034w2 = gamedetialModleFourBean.getDownloadtaskDown();
        }
        if (downloadTaskG == null || this.f57034w2 == null) {
            return;
        }
        try {
            this.f57034w2 = downloadTaskG;
            if (!downloadTaskG.getFileType().equals(Dtype.android.name()) || this.f57034w2.getStatus() != 5) {
                this.f57034w2.setStatus(downloadTaskG.getStatus());
            } else if (this.f56992f1.getMod_info() == null) {
                com.join.android.app.common.utils.g gVarT0 = com.join.android.app.common.utils.g.t0(this.T);
                GamedetailVideoMainActivity gamedetailVideoMainActivity = this.T;
                String packageName = this.f57034w2.getPackageName();
                APKUtils.DEVICE_TYPE device_type = APKUtils.DEVICE_TYPE.ALL;
                if (Boolean.valueOf(gVarT0.f(gamedetailVideoMainActivity, packageName, device_type)).booleanValue()) {
                    APKUtils.a aVarO = com.join.android.app.common.utils.g.t0(this.T).o(this.T, this.f57034w2.getPackageName(), device_type);
                    if (!com.join.mgps.Util.t2.i(this.f57034w2.getVer()) || aVarO.d() >= Integer.parseInt(this.f57034w2.getVer())) {
                        this.f57034w2.setStatus(5);
                    } else {
                        this.f57034w2.setStatus(9);
                    }
                } else {
                    this.f57034w2.setStatus(0);
                }
            }
            updateButn();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void p0(GamedetialModleFourBean modleFourBean) {
        try {
            this.J2.clear();
            if (j0()) {
                View viewInflate = LayoutInflater.from(this.T).inflate(R.layout.gamedetail_item_video, (ViewGroup) this.f57012o, false);
                this.f56994g = (RelativeLayout) viewInflate.findViewById(R.id.videolayout);
                this.f56996h = viewInflate.findViewById(R.id.nullView);
                this.f56998i = (StandardVideoView) viewInflate.findViewById(R.id.videoPlayer);
                this.f57001j = (SimpleDraweeView) viewInflate.findViewById(R.id.iv_book_bg);
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f56998i.getLayoutParams();
                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.f57001j.getLayoutParams();
                layoutParams.height = -1;
                layoutParams2.height = -1;
                n0();
                this.J2.add(viewInflate);
            } else {
                this.U.n(R.color.black_30_alpha);
                this.R.setVisibility(0);
            }
            if (!j0()) {
                this.f57012o.setVisibility(4);
                if (this.f56996h == null) {
                    this.f56996h = new View(this.T);
                }
                this.f57012o.getLayoutParams().height = getResources().getDimensionPixelOffset(R.dimen.wdp100);
                this.f56996h.setVisibility(0);
            }
            this.f57010n.setVisibility(8);
            this.f57008m.setVisibility(8);
            this.f57010n.setVisibility(8);
            this.f57008m.postInvalidate();
            this.K2.notifyDataSetChanged();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.join.mgps.activity.gamedetail.BaseGameDetailFragment
    public void pauseVideo() {
        this.I2 = true;
        StandardVideoView standardVideoView = this.f56998i;
        if (standardVideoView != null) {
            standardVideoView.onVideoPause();
        }
    }

    @Override // com.join.mgps.activity.gamedetail.BaseGameDetailFragment
    public void playVideo() {
        StandardVideoView standardVideoView = this.f56998i;
        if (standardVideoView != null) {
            this.T.autoPlayVideo(standardVideoView);
        }
    }

    @Click
    void progress_layout() {
        DownloadTask downloadTask = this.f57034w2;
        if (downloadTask == null) {
            return;
        }
        if (downloadTask.getStatus() == 2) {
            updateButn();
            com.php25.PDownload.d.i(this.f57034w2);
        } else if (this.f57034w2.getStatus() == 3 || this.f57034w2.getStatus() == 6) {
            updateButn();
            com.php25.PDownload.d.c(this.f57034w2, this.T);
            onDetailDownload();
        }
    }

    public void r0(float bgAlpha) {
        WindowManager.LayoutParams attributes = this.T.getWindow().getAttributes();
        attributes.alpha = bgAlpha;
        if (bgAlpha == 1.0f) {
            this.T.getWindow().clearFlags(2);
        } else {
            this.T.getWindow().addFlags(2);
        }
        this.T.getWindow().setAttributes(attributes);
    }

    @Click
    void relodingimag() {
        showLoding();
        d0();
    }

    @Override // com.join.mgps.activity.gamedetail.BaseGameDetailFragment
    public void resumVideo() {
        this.I2 = false;
        StandardVideoView standardVideoView = this.f56998i;
        if (standardVideoView != null) {
            if (standardVideoView.i()) {
                this.f56998i.startPlayLogic();
            } else if (this.f57024s.getVisibility() == 4) {
                this.f56998i.onVideoResume(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void s0(v holder) {
        holder.f57070b.setBackgroundResource(R.drawable.follow_none_image);
    }

    @Override // com.join.mgps.activity.gamedetail.BaseGameDetailFragment
    @UiThread
    public void setCommentNumber(String number) {
        try {
            TextView textViewJ = this.f57003k.j(1);
            textViewJ.setWidth(getResources().getDimensionPixelOffset(R.dimen.wdp220));
            textViewJ.setText("点评(" + number + ")");
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this.T);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showInstallButn() {
        GamedetialModleFourBean gamedetialModleFourBean = this.f56992f1;
        if (gamedetialModleFourBean == null || TextUtils.isEmpty(gamedetialModleFourBean.getCrc_sign_id())) {
            return;
        }
        try {
            this.f57033w.setVisibility(8);
            this.f57035x.setVisibility(0);
            this.f57030v.setVisibility(0);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        try {
            this.K.setVisibility(0);
            this.L.setVisibility(8);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: Removed unreachable split cross block B:21:0x003d */
    @UiThread
    public void showLodingFailed() {
        try {
            this.K.setVisibility(8);
            try {
                GamedetialModleFourBean gamedetialModleFourBean = this.f56992f1;
                if (gamedetialModleFourBean == null || com.join.mgps.Util.t2.h(gamedetialModleFourBean.getCrc_sign_id())) {
                    this.L.setVisibility(0);
                    this.M.setVisibility(0);
                    if (com.join.android.app.common.utils.m.j(this.T)) {
                        this.N.setVisibility(8);
                    } else {
                        this.N.setVisibility(0);
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
            this.f57035x.setVisibility(8);
            this.f57030v.setVisibility(8);
            this.f57033w.setVisibility(0);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String s10) {
        Toast.makeText(this.T, s10, 0).show();
    }

    @Click
    void t0() {
        ShareBean shareBean = new ShareBean();
        String share_url = this.f56992f1.getShare_url();
        shareBean.setqZoneShareUrl(share_url);
        shareBean.setQqUrl(share_url);
        shareBean.setWechatFriendUrl(share_url);
        shareBean.setWechatShareUrl(share_url);
        shareBean.setWeiboShareUrl(share_url);
        shareBean.setTitle(this.f56992f1.getGame_name());
        shareBean.setText(this.f56992f1.getInfo());
        shareBean.setImageUrl(this.f56992f1.getIco_remote());
        shareBean.setFrom(2);
        shareBean.setGameId(this.f56992f1.getGame_id());
        if (this.f56992f1.getShare_config() != null && this.f56992f1.getShare_config().getShare_switch() == 1) {
            shareBean.setIntentData(this.f56992f1.getShare_config().getJump_info());
        }
        com.join.mgps.Util.w.r(this.T, shareBean);
    }

    @Click
    void u0() {
        ShareBean shareBean = new ShareBean();
        String share_url = this.f56992f1.getShare_url();
        shareBean.setqZoneShareUrl(share_url);
        shareBean.setQqUrl(share_url);
        shareBean.setWechatFriendUrl(share_url);
        shareBean.setWechatShareUrl(share_url);
        shareBean.setWeiboShareUrl(share_url);
        shareBean.setImageUrl(this.f56992f1.getIco_remote());
        shareBean.setTitle(this.f56992f1.getGame_name());
        shareBean.setText(this.f56992f1.getInfo());
        shareBean.setFrom(2);
        shareBean.setGameId(this.f56992f1.getGame_id());
        if (this.f56992f1.getShare_config() != null && this.f56992f1.getShare_config().getShare_switch() == 1) {
            shareBean.setIntentData(this.f56992f1.getShare_config().getJump_info());
        }
        com.join.mgps.Util.w.r(this.T, shareBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateButn() {
        GamedetialModleFourBean gamedetialModleFourBean = this.f56992f1;
        if (gamedetialModleFourBean == null || this.f57034w2 == null) {
            return;
        }
        if (gamedetialModleFourBean.getDel_tag() == 1 && !this.f56992f1.getCompany_name().equals("SNK")) {
            this.f57030v.setEnabled(false);
            this.f57030v.setBackgroundResource(R.drawable.detial_simple_grey_selecter);
            this.f57030v.setText("已下架");
            showInstallButn();
            return;
        }
        if (this.f57035x == null) {
            return;
        }
        UtilsMy.A3(this.f56992f1.getSp_tag_info(), this.f57035x, this.f57034w2);
        if (this.f56992f1.getPlugin_num() != null) {
            if (this.f56992f1.getPlugin_num().equals(ConstantIntEnum.H5.value() + "")) {
                this.f57030v.setBackgroundResource(R.drawable.detial_simple_normal_selecter);
                this.f57030v.setText("开始");
                showInstallButn();
                return;
            }
        }
        this.f57030v.setBackgroundResource(R.drawable.detial_simple_normal_selecter);
        DownloadTask downloadTask = this.f57034w2;
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        if (UtilsMy.x0(this.f56992f1.getPay_tag_info(), this.f56992f1.getCrc_sign_id()) > 0) {
            status = 43;
        }
        if (status == 9) {
            showInstallButn();
            this.f57030v.setText("更新");
            this.f57037y.setImageResource(R.drawable.detail_comment_download_continue);
            this.f57037y.setImageResource(R.drawable.detial_simple_install_selecter);
            return;
        }
        if (status == 12) {
            showInstallButn();
            this.f57030v.setText("解压中..");
            return;
        }
        if (status == 13) {
            showInstallButn();
            this.f57030v.setText("解压");
            this.f57037y.setImageResource(R.drawable.detail_comment_download_continue);
            return;
        }
        if (status == 11) {
            showInstallButn();
            this.f57030v.setText("安装");
            this.f57030v.setBackgroundResource(R.drawable.detial_simple_install_selecter);
            this.f57037y.setImageResource(R.drawable.detial_simple_install_selecter);
            return;
        }
        if (status == 5 || status == 42) {
            showInstallButn();
            F0(true);
            this.f57030v.setBackgroundResource(R.drawable.detial_simple_open_selecter);
            this.f57030v.setText(this.T.getResources().getString(R.string.download_status_finished));
            this.f57037y.setImageResource(R.drawable.detail_comment_download_continue);
            return;
        }
        if (status == 2) {
            showProgress();
            this.f57037y.setImageResource(R.drawable.detail_comment_download_pause);
            UtilsMy.U4(this.f57034w2);
            this.A.setProgress((int) this.f57034w2.getProgress());
            this.f57039z.setText(this.f57034w2.getProgress() + "%");
            return;
        }
        if (status == 3 || status == 6 || status == 27) {
            showProgress();
            this.f57037y.setImageResource(R.drawable.detail_comment_download_continue);
            UtilsMy.U4(this.f57034w2);
            this.A.setProgress((int) this.f57034w2.getProgress());
            this.f57039z.setText(this.f57034w2.getProgress() + "%");
            return;
        }
        if (status == 10) {
            showInstallButn();
            this.f57030v.setText("等待\u3000" + this.f56992f1.getSize() + "M");
            this.f57037y.setImageResource(R.drawable.detail_comment_download_continue);
            return;
        }
        if (status == 1) {
            return;
        }
        if (status == 43) {
            showInstallButn();
            if (UtilsMy.x0(this.f56992f1.getPay_tag_info(), this.f56992f1.getCrc_sign_id()) > 0) {
                this.f57030v.setText(this.T.getResources().getString(R.string.pay_game_amount, this.f56992f1.getPay_tag_info().getPayGameAmount()));
            } else {
                this.f57030v.setText(this.T.getResources().getString(R.string.download_status_download));
            }
            this.f57037y.setImageResource(R.drawable.detail_comment_download_continue);
            GamedetialModleFourBean gamedetialModleFourBean2 = this.f56992f1;
            if (gamedetialModleFourBean2 != null) {
                if (gamedetialModleFourBean2.getBespeak_switch() != 1 || this.f56992f1.getDown_status() != 2) {
                    UtilsMy.x0(this.f56992f1.getPay_tag_info(), this.f56992f1.getCrc_sign_id());
                    UtilsMy.E3(this.f57030v, this.f56992f1);
                    return;
                } else {
                    if (this.f56992f1.getGame_book() != 1) {
                        this.f57030v.setText("预约");
                        return;
                    }
                    this.f57030v.setText("已预约");
                    UtilsMy.x0(this.f56992f1.getPay_tag_info(), this.f56992f1.getCrc_sign_id());
                    UtilsMy.E3(this.f57030v, this.f56992f1);
                    return;
                }
            }
            return;
        }
        if (status == 48) {
            showInstallButn();
            this.f57030v.setText(this.T.getResources().getString(R.string.download_status_installing));
            return;
        }
        showInstallButn();
        if (UtilsMy.x0(this.f56992f1.getPay_tag_info(), this.f56992f1.getCrc_sign_id()) > 0) {
            this.f57030v.setText(this.T.getResources().getString(R.string.pay_game_amount, this.f56992f1.getPay_tag_info().getPayGameAmount()));
        } else {
            this.f57030v.setText(this.T.getResources().getString(R.string.download_status_download));
        }
        this.f57037y.setImageResource(R.drawable.detail_comment_download_continue);
        GamedetialModleFourBean gamedetialModleFourBean3 = this.f56992f1;
        if (gamedetialModleFourBean3 != null) {
            if (gamedetialModleFourBean3.getBespeak_switch() != 1 || (this.f56992f1.getDown_status() != 2 && this.f56992f1.getDown_status() != 6)) {
                UtilsMy.x0(this.f56992f1.getPay_tag_info(), this.f56992f1.getCrc_sign_id());
                UtilsMy.E3(this.f57030v, this.f56992f1);
            } else {
                if (this.f56992f1.getGame_book() != 1) {
                    this.f57030v.setText("预约");
                    return;
                }
                this.f57030v.setText("已预约");
                UtilsMy.x0(this.f56992f1.getPay_tag_info(), this.f56992f1.getCrc_sign_id());
                UtilsMy.E3(this.f57030v, this.f56992f1);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateDownloadView() {
        try {
            this.E.setDownloadGameNum();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void updateProgress(DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        ProgressBar progressBar = this.A;
        if (progressBar instanceof DownloadProgressBar) {
            ((DownloadProgressBar) progressBar).update(downloadTask.getCrc_link_type_val(), 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateTitleButn(ResultMainBean result, int type) {
        if (result.getFlag() == 1) {
            if (type == 1) {
                this.f56992f1.setGame_follow(0);
            } else if (type == 2) {
                this.f56992f1.setGame_follow(1);
                com.join.mgps.Util.a3.b(this.T).d("收藏成功");
                this.F.setImageResource(R.drawable.followed_image);
                this.G.setText("已收藏");
            } else if (type == 3) {
                this.f56992f1.setGame_book(0);
            } else if (type == 4) {
                this.f56992f1.setGame_book(1);
                Intent intent = new Intent("com.broadcast.bespeak.sussess");
                intent.putExtra("gameid", this.f56992f1.getCrc_sign_id());
                this.T.sendBroadcast(intent);
                com.join.mgps.Util.h0.h0(this.T).O(this.T, 1, new g()).show();
            }
            q0();
            updateButn();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void v0(String sre) {
        Toast.makeText(this.T, sre, 0).show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 4000)
    public void w0() {
        com.join.mgps.Util.e.g(this.f57025s2);
        w0();
    }

    void x0() {
        try {
            this.f57038y2.setImageResource(R.drawable.line_blue_bg);
            Animation animationLoadAnimation = AnimationUtils.loadAnimation(this.T, R.anim.img_translate);
            this.C2 = animationLoadAnimation;
            animationLoadAnimation.setFillAfter(true);
            this.B2.setVisibility(0);
            this.B2.startAnimation(this.C2);
            this.C2.setAnimationListener(new e());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void y0() {
        try {
            this.B2.clearAnimation();
            this.B2.setVisibility(8);
            this.f57038y2.setImageResource(R.drawable.line_white_bg);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Click
    void z0() {
        IntentUtil.getInstance().goMyGameManagerActivity(this.T);
    }
}
