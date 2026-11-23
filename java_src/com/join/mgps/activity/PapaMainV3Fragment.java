package com.join.mgps.activity;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.SparseArray;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.ViewFlipper;
import androidx.annotation.NonNull;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.RecyclerView;
import com.MApplication;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.google.android.material.appbar.AppBarLayout;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.component.xrecyclerview.XRecyclerView2;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.presenter.HomeViewModle;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.vipzone.bean.LuckHistoryrequest;
import com.join.mgps.business.RecomDatabeanBusiness;
import com.join.mgps.db.tables.PurchasedListTable;
import com.join.mgps.dto.AppBean;
import com.join.mgps.dto.AppBeanMain;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.HomeFloatData;
import com.join.mgps.dto.MgpapaMainItemBean;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.dto.PAPAHomeBeanV7;
import com.join.mgps.dto.PAPAItemTitle2;
import com.join.mgps.dto.PapaHomeCheckNewDataBean;
import com.join.mgps.dto.RecomDatabean;
import com.join.mgps.dto.RequestGameIdArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.RequestOnlineCouponArgs;
import com.join.mgps.dto.RequestdetialFolowAndBeSpeak;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.SScrollingTxtBeanV2;
import com.join.mgps.dto.SScrollingTxtDTOV2;
import com.join.mgps.dto.VipPopData;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.kuaishou.weapon.p0.bg;
import com.papa.sim.statistic.Data;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.ExtFrom;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.FragmentArg;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.res.StringRes;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes4.dex */
@EFragment(R.layout.mgpapa_mainfragment_new_layout_v3)
public class PapaMainV3Fragment extends com.join.mgps.Util.z0.a implements View.OnClickListener {

    /* JADX INFO: renamed from: u2, reason: collision with root package name */
    private static final String f55287u2 = "MGPapaMainFragmentNewV2";

    @Pref
    PrefDef_ A;
    private LinearLayout B;
    private LinearLayout C;
    private com.join.mgps.adapter.o5 D;
    private List<MgpapaMainItemBean> E;
    private int F;
    private int G;
    private long H;

    @ViewById
    PtrClassicFrameLayout K;

    @ViewById
    View L;
    com.join.android.app.component.video.h R;
    MGMainActivity S;
    HomeViewModle T;
    private String U;
    private Handler W;
    private String Z;

    /* JADX INFO: renamed from: a2, reason: collision with root package name */
    com.join.mgps.customview.t f55288a2;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    private int f55289b1;

    /* JADX INFO: renamed from: d2, reason: collision with root package name */
    private int f55292d2;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    XRecyclerView2 f55293e;

    /* JADX INFO: renamed from: e2, reason: collision with root package name */
    private int f55294e2;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @StringRes(resName = "net_excption")
    String f55295f;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    private boolean f55296f1;

    /* JADX INFO: renamed from: f2, reason: collision with root package name */
    private RecomDatabean f55297f2;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @StringRes(resName = "connect_server_excption")
    String f55298g;

    /* JADX INFO: renamed from: g2, reason: collision with root package name */
    private RecomDatabean f55299g2;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    com.join.mgps.rpc.e f55300h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @ViewById
    TextView f55302i;

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    private int f55303i1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @ViewById
    LinearLayout f55305j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @ViewById
    LinearLayout f55307k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @ViewById
    ImageView f55309l;

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    private boolean f55310l1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @ViewById
    View f55312m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @ViewById
    SimpleDraweeView f55314n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @ViewById
    ImageView f55316o;

    /* JADX INFO: renamed from: o2, reason: collision with root package name */
    private long f55317o2;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @ViewById
    View f55318p;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    private ArrayList<SScrollingTxtBeanV2> f55319p0;

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    private boolean f55320p1;

    /* JADX INFO: renamed from: p2, reason: collision with root package name */
    private int f55321p2;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @ViewById
    FrameLayout f55322q;

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    private long f55323q1;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @ViewById
    ViewFlipper f55325r;

    /* JADX INFO: renamed from: r1, reason: collision with root package name */
    private boolean f55326r1;

    /* JADX INFO: renamed from: r2, reason: collision with root package name */
    private String f55327r2;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @ViewById
    ImageView f55328s;

    /* JADX INFO: renamed from: s2, reason: collision with root package name */
    private boolean f55329s2;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @ViewById
    AppBarLayout f55330t;

    /* JADX INFO: renamed from: t2, reason: collision with root package name */
    private boolean f55331t2;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @FragmentArg
    String f55332u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private Context f55333v;

    /* JADX INFO: renamed from: v1, reason: collision with root package name */
    private boolean f55334v1;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private List<DownloadTask> f55335w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f55336x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    List<RecomDatabeanBusiness> f55337y = null;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private Map<String, DownloadTask> f55338z = new ConcurrentHashMap();
    private boolean I = false;
    com.join.mgps.pref.f J = null;
    private boolean M = false;
    private boolean N = false;
    private String O = "m1";
    private int P = 1;
    private int Q = 0;
    private List<PAPAHomeBeanV7.HomeBeanDTO> V = null;
    private boolean X = true;
    private List<Integer> Y = new ArrayList();
    int L1 = 0;
    boolean R1 = true;
    private String V1 = "28";

    /* JADX INFO: renamed from: b2, reason: collision with root package name */
    private int f55290b2 = 0;

    /* JADX INFO: renamed from: c2, reason: collision with root package name */
    private int f55291c2 = 0;

    /* JADX INFO: renamed from: h2, reason: collision with root package name */
    private String f55301h2 = "";

    /* JADX INFO: renamed from: i2, reason: collision with root package name */
    long f55304i2 = 0;

    /* JADX INFO: renamed from: j2, reason: collision with root package name */
    long f55306j2 = 0;

    /* JADX INFO: renamed from: k2, reason: collision with root package name */
    boolean f55308k2 = true;

    /* JADX INFO: renamed from: l2, reason: collision with root package name */
    private boolean f55311l2 = true;

    /* JADX INFO: renamed from: m2, reason: collision with root package name */
    private SparseArray f55313m2 = new SparseArray(0);

    /* JADX INFO: renamed from: n2, reason: collision with root package name */
    GestureDetector f55315n2 = new GestureDetector(new b());

    /* JADX INFO: renamed from: q2, reason: collision with root package name */
    Runnable f55324q2 = new c();

    class a extends LinearSmoothScroller {
        a(Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.LinearSmoothScroller
        protected float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
            return super.calculateSpeedPerPixel(displayMetrics);
        }

        @Override // androidx.recyclerview.widget.LinearSmoothScroller
        protected int getVerticalSnapPreference() {
            return -1;
        }
    }

    class b extends GestureDetector.SimpleOnGestureListener {
        b() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent e10, MotionEvent e11, float velocityX, float velocityY) {
            Fresco.getImagePipeline().Q();
            return super.onFling(e10, e11, velocityX, velocityY);
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PapaMainV3Fragment papaMainV3Fragment = PapaMainV3Fragment.this;
            papaMainV3Fragment.f55308k2 = false;
            if (papaMainV3Fragment.f55296f1) {
                if (PapaMainV3Fragment.this.A.isFirstCommendVersion().d().booleanValue() && PapaMainV3Fragment.this.A.isFirst35().d().booleanValue()) {
                    return;
                }
                PapaMainV3Fragment papaMainV3Fragment2 = PapaMainV3Fragment.this;
                XRecyclerView2 xRecyclerView2 = papaMainV3Fragment2.f55293e;
                if (xRecyclerView2 != null) {
                    papaMainV3Fragment2.F = xRecyclerView2.getLastCompletelyVisiblePosition();
                }
                for (int i10 = 0; i10 < PapaMainV3Fragment.this.E.size(); i10++) {
                    if (i10 <= PapaMainV3Fragment.this.F) {
                        MgpapaMainItemBean mgpapaMainItemBean = (MgpapaMainItemBean) PapaMainV3Fragment.this.E.get(i10);
                        if (!mgpapaMainItemBean.isHasExposure()) {
                            switch (mgpapaMainItemBean.getShowtype()) {
                                case 29:
                                case 40:
                                    PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO = (PAPAHomeBeanV7.HomeBeanDTO) mgpapaMainItemBean.getObject();
                                    if (homeBeanDTO != null) {
                                        if (TextUtils.equals(homeBeanDTO.getPosition(), "22-11-1")) {
                                            PapaMainV3Fragment.this.q1("20201", homeBeanDTO);
                                        } else if (TextUtils.equals(homeBeanDTO.getPosition(), "22-12-1")) {
                                            PapaMainV3Fragment.this.q1("20202", homeBeanDTO);
                                        }
                                    }
                                    break;
                                case 30:
                                    List list = (List) mgpapaMainItemBean.getObject();
                                    if (list != null && list.size() > 0) {
                                        for (int i11 = 0; i11 < list.size() && i11 < 4; i11++) {
                                            PAPAHomeBeanV7.NgSelectionDTO ngSelectionDTO = (PAPAHomeBeanV7.NgSelectionDTO) list.get(i11);
                                            if (ngSelectionDTO != null) {
                                                PapaMainV3Fragment.this.r1("204", ngSelectionDTO.getPosition(), ngSelectionDTO.getId());
                                                ngSelectionDTO.setHasExposure(true);
                                                list.set(i11, ngSelectionDTO);
                                            }
                                        }
                                        mgpapaMainItemBean.setObject(list);
                                        PapaMainV3Fragment.this.E.set(i10, mgpapaMainItemBean);
                                    }
                                    break;
                                case 32:
                                    PAPAHomeBeanV7.RankingListDTO rankingListDTO = (PAPAHomeBeanV7.RankingListDTO) mgpapaMainItemBean.getObject();
                                    if (rankingListDTO != null && rankingListDTO.getList() != null && rankingListDTO.getList().size() > 0) {
                                        PapaMainV3Fragment.this.y0(0, rankingListDTO.getList(), "20501");
                                    }
                                    break;
                                case 34:
                                    PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO2 = (PAPAHomeBeanV7.HomeBeanDTO) mgpapaMainItemBean.getObject();
                                    if (homeBeanDTO2 != null) {
                                        PapaMainV3Fragment.this.q1("206", homeBeanDTO2);
                                    }
                                    break;
                                case 35:
                                    List list2 = (List) mgpapaMainItemBean.getObject();
                                    if (list2 != null && list2.size() > 0) {
                                        for (int i12 = 0; i12 < list2.size() && i12 < 4; i12++) {
                                            PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO3 = (PAPAHomeBeanV7.HomeBeanDTO) list2.get(i12);
                                            if (homeBeanDTO3 != null) {
                                                PapaMainV3Fragment.this.q1("206", homeBeanDTO3);
                                                homeBeanDTO3.setHasExposure(true);
                                                list2.set(i12, homeBeanDTO3);
                                            }
                                        }
                                        mgpapaMainItemBean.setObject(list2);
                                        PapaMainV3Fragment.this.E.set(i10, mgpapaMainItemBean);
                                    }
                                    break;
                                case 36:
                                    PapaMainV3Fragment.this.q1("206", (PAPAHomeBeanV7.HomeBeanDTO) mgpapaMainItemBean.getObject());
                                    break;
                                case 37:
                                    PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO4 = (PAPAHomeBeanV7.HomeBeanDTO) mgpapaMainItemBean.getObject();
                                    if (homeBeanDTO4 != null) {
                                        PapaMainV3Fragment.this.q1("201", homeBeanDTO4);
                                    }
                                    break;
                                case 38:
                                    PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO5 = (PAPAHomeBeanV7.HomeBeanDTO) mgpapaMainItemBean.getObject();
                                    if (homeBeanDTO5 != null) {
                                        PapaMainV3Fragment.this.q1("203", homeBeanDTO5);
                                    }
                                    break;
                                case 39:
                                    PapaMainV3Fragment.e0(PapaMainV3Fragment.this);
                                    PapaMainV3Fragment papaMainV3Fragment3 = PapaMainV3Fragment.this;
                                    papaMainV3Fragment3.p1(papaMainV3Fragment3.f55321p2);
                                    break;
                            }
                            mgpapaMainItemBean.setHasExposure(true);
                        }
                    }
                }
            }
        }
    }

    class d extends AnimatorListenerAdapter {
        d() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            super.onAnimationEnd(animation);
            PapaMainV3Fragment.this.f55329s2 = false;
            PapaMainV3Fragment.this.f55331t2 = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animation) {
            super.onAnimationStart(animation);
            PapaMainV3Fragment.this.f55329s2 = true;
        }
    }

    class e extends AnimatorListenerAdapter {
        e() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            super.onAnimationEnd(animation);
            PapaMainV3Fragment.this.f55329s2 = false;
            PapaMainV3Fragment.this.f55331t2 = false;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animation) {
            super.onAnimationStart(animation);
            PapaMainV3Fragment.this.f55329s2 = true;
        }
    }

    class f implements com.join.mgps.callbacks.d {
        f() {
        }

        @Override // com.join.mgps.callbacks.d
        public void onClickCancle() {
        }

        @Override // com.join.mgps.callbacks.d
        public void onClickOk() {
        }
    }

    class g implements v6.f {
        g() {
        }

        @Override // v6.f
        public void a(String gameid, int game_book) {
            if (game_book == 1 || IntentUtil.getInstance().goLoginNetGame(PapaMainV3Fragment.this.f55333v)) {
                return;
            }
            PapaMainV3Fragment.this.B0(gameid);
        }
    }

    class h implements XRecyclerView2.g {
        h() {
        }

        @Override // com.join.android.app.component.xrecyclerview.XRecyclerView2.g
        public void onLoadMore() throws Throwable {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onLoadMore: ");
            sb2.append(PapaMainV3Fragment.this.P);
            sb2.append("  ");
            sb2.append(PapaMainV3Fragment.this.X);
            if (!PapaMainV3Fragment.this.X || PapaMainV3Fragment.this.f55334v1) {
                return;
            }
            PapaMainV3Fragment papaMainV3Fragment = PapaMainV3Fragment.this;
            papaMainV3Fragment.X0(papaMainV3Fragment.O, PapaMainV3Fragment.this.P);
        }

        @Override // com.join.android.app.component.xrecyclerview.XRecyclerView2.g
        public void onRefresh() throws Throwable {
            PapaMainV3Fragment.this.l1();
            PapaMainV3Fragment.this.f55326r1 = true;
        }
    }

    class i implements com.join.mgps.adapter.o5.i {
        i() {
        }

        @Override // com.join.mgps.adapter.o5.i
        public void a(int position, PAPAHomeBeanV7.HomeBeanDTO item) {
            if (item.getG_info() == null) {
                return;
            }
            PapaMainV3Fragment.this.C0(item.getG_info().getId(), item);
        }

        @Override // com.join.mgps.adapter.o5.i
        public void b(int postion, List<List<PAPAHomeBeanV7.HomeBeanDTO>> rankings) {
            String str;
            if (postion == 0) {
                str = "20501";
            } else if (postion != 1) {
                str = postion != 2 ? "" : "20503";
            } else {
                str = "20502";
            }
            PapaMainV3Fragment.this.y0(postion, rankings, str);
        }

        @Override // com.join.mgps.adapter.o5.i
        public void c(int position, PAPAHomeBeanV7.HomeBeanDTO item) {
        }
    }

    class j extends GridLayoutManager.SpanSizeLookup {
        j() {
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
        public int getSpanSize(int position) {
            if (PapaMainV3Fragment.this.E.size() <= position || PapaMainV3Fragment.this.E.get(position) == null) {
                return 2;
            }
            int showtype = ((MgpapaMainItemBean) PapaMainV3Fragment.this.E.get(position)).getShowtype();
            return (showtype == 28 || showtype == 34 || showtype == 37 || showtype == 38) ? 1 : 2;
        }
    }

    class k extends RecyclerView.OnScrollListener {
        k() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int newState) {
            super.onScrollStateChanged(recyclerView, newState);
            PapaMainV3Fragment.this.h1(recyclerView, newState);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(@NonNull RecyclerView recyclerView, int dx, int dy) {
            super.onScrolled(recyclerView, dx, dy);
            PapaMainV3Fragment papaMainV3Fragment = PapaMainV3Fragment.this;
            papaMainV3Fragment.F = papaMainV3Fragment.f55293e.getLastVisiblePosition();
            PapaMainV3Fragment papaMainV3Fragment2 = PapaMainV3Fragment.this;
            papaMainV3Fragment2.G = papaMainV3Fragment2.f55293e.getFirstVisiblePosition();
            MGMainActivity mGMainActivity = (MGMainActivity) PapaMainV3Fragment.this.getActivity();
            if (PapaMainV3Fragment.this.G >= PapaMainV3Fragment.this.Q && PapaMainV3Fragment.this.Q != 0) {
                if (PapaMainV3Fragment.this.f55311l2) {
                    mGMainActivity.setHomeTabImage(false);
                }
                PapaMainV3Fragment.this.f55311l2 = false;
            } else if (PapaMainV3Fragment.this.F + 1 < PapaMainV3Fragment.this.Q) {
                if (!PapaMainV3Fragment.this.f55311l2) {
                    mGMainActivity.setHomeTabImage(true);
                }
                PapaMainV3Fragment.this.f55311l2 = true;
            }
            if (PapaMainV3Fragment.this.f55326r1 && PapaMainV3Fragment.this.D.u(PapaMainV3Fragment.this.f55293e.getFirstCompletelyVisiblePosition()).getPage() == 2) {
                PapaMainV3Fragment.this.y1();
                Bundle bundle = new Bundle();
                bundle.putBoolean("homeHasNewData", false);
                PapaMainV3Fragment.this.J.callHomePageNewData(bundle);
                PapaMainV3Fragment.this.f55326r1 = false;
            }
        }
    }

    class l implements View.OnTouchListener {
        l() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View v10, MotionEvent event) {
            PapaMainV3Fragment.this.f55315n2.onTouchEvent(event);
            return false;
        }
    }

    class m implements Runnable {
        m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            com.join.android.app.component.video.h hVar = PapaMainV3Fragment.this.R;
            if (hVar != null) {
                hVar.g();
            }
        }
    }

    class n {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f55354a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f55355b = 0;

        n() {
        }
    }

    class o {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private ImageView f55357a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private TextView f55358b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private ImageView f55359c;

        o() {
        }
    }

    private void A1(List<RecomDatabean> recomDatabeens, List<RecomDatabean> top, String moretype) {
        List<RecomDatabeanBusiness> listJ1 = j1(recomDatabeens, null);
        this.f55337y.addAll(listJ1);
        if (listJ1 == null || listJ1.size() == 0) {
            return;
        }
        for (int i10 = 0; i10 < listJ1.size(); i10++) {
            MgpapaMainItemBean mgpapaMainItemBean = new MgpapaMainItemBean();
            if (i10 == 0) {
                if (top != null) {
                    RecomDatabean recomDatabean = top.get(0);
                    mgpapaMainItemBean.setShowtype(13);
                    listJ1.get(i10).getMain().setPic_remote(recomDatabean.getMain().getPic_remote());
                    listJ1.get(i10).getMain().setVedio_url(recomDatabean.getMain().getVedio_url());
                    mgpapaMainItemBean.setMoreType2(moretype + "x");
                }
            } else {
                mgpapaMainItemBean.setMoreType2(moretype + (i10 + 1) + "-");
                mgpapaMainItemBean.setShowtype(3);
            }
            mgpapaMainItemBean.setMoreType(i10);
            mgpapaMainItemBean.setRecomDatabeanLeft(listJ1.get(i10));
            z1(mgpapaMainItemBean);
            this.E.add(mgpapaMainItemBean);
        }
    }

    private String F0(PAPAHomeBeanV7.HomeBeanDTO bean) {
        if (bean == null || bean.getG_info() == null) {
            return null;
        }
        return (TextUtils.isEmpty(bean.getG_info().getId()) || TextUtils.equals(bean.getG_info().getId(), "0")) ? bean.getG_info().getMod_id() : bean.getG_info().getId();
    }

    private int H0() {
        int i10;
        int i11 = 0;
        int i12 = 0;
        while (true) {
            i10 = this.G;
            if (i11 >= i10) {
                break;
            }
            n nVar = (n) this.f55313m2.get(i11);
            if (nVar != null) {
                i12 += nVar.f55354a;
            }
            i11++;
        }
        n nVar2 = (n) this.f55313m2.get(i10);
        if (nVar2 == null) {
            nVar2 = new n();
        }
        return i12 - nVar2.f55355b;
    }

    /* JADX WARN: Code duplicated, block: B:44:0x00ca A[Catch: Exception -> 0x011b, TryCatch #1 {Exception -> 0x011b, blocks: (B:42:0x00af, B:44:0x00ca, B:46:0x00ce, B:48:0x00d4, B:50:0x00e9, B:52:0x00ef, B:54:0x0101), top: B:79:0x00af }] */
    /* JADX WARN: Code duplicated, block: B:60:0x0136  */
    /* JADX WARN: Code duplicated, block: B:61:0x0137 A[Catch: Exception -> 0x018c, TryCatch #0 {Exception -> 0x018c, blocks: (B:58:0x0120, B:61:0x0137, B:63:0x0141, B:65:0x0149, B:67:0x015b, B:69:0x0161, B:71:0x0173), top: B:77:0x0120 }] */
    /* JADX WARN: Code duplicated, block: B:63:0x0141 A[Catch: Exception -> 0x018c, TryCatch #0 {Exception -> 0x018c, blocks: (B:58:0x0120, B:61:0x0137, B:63:0x0141, B:65:0x0149, B:67:0x015b, B:69:0x0161, B:71:0x0173), top: B:77:0x0120 }] */
    /* JADX WARN: Code duplicated, block: B:65:0x0149 A[Catch: Exception -> 0x018c, TryCatch #0 {Exception -> 0x018c, blocks: (B:58:0x0120, B:61:0x0137, B:63:0x0141, B:65:0x0149, B:67:0x015b, B:69:0x0161, B:71:0x0173), top: B:77:0x0120 }] */
    /* JADX WARN: Code duplicated, block: B:71:0x0173 A[Catch: Exception -> 0x018c, TRY_LEAVE, TryCatch #0 {Exception -> 0x018c, blocks: (B:58:0x0120, B:61:0x0137, B:63:0x0141, B:65:0x0149, B:67:0x015b, B:69:0x0161, B:71:0x0173), top: B:77:0x0120 }] */
    /* JADX WARN: Code duplicated, block: B:77:0x0120 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:79:0x00af A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:91:0x0190 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:98:0x0190 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:99:0x0190 A[SYNTHETIC] */
    private void J1(DownloadTask task) {
        PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO;
        View childAt;
        RecyclerView.ViewHolder childViewHolder;
        com.join.mgps.adapter.o5.m mVar;
        PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO2;
        RecyclerView.ViewHolder childViewHolder2;
        RecyclerView recyclerView;
        com.join.mgps.adapter.c3 c3Var;
        int i10 = this.G;
        if (i10 >= 0) {
            for (int i11 = i10; i11 <= Math.min(this.F + 1, this.D.getItemCount() - 1); i11++) {
                MgpapaMainItemBean mgpapaMainItemBeanU = this.D.u(i11);
                if (mgpapaMainItemBeanU != null) {
                    int showtype = mgpapaMainItemBeanU.getShowtype();
                    if (showtype == 28) {
                        try {
                            homeBeanDTO = (PAPAHomeBeanV7.HomeBeanDTO) mgpapaMainItemBeanU.getObject();
                            homeBeanDTO.setRequesting(false);
                            childAt = this.f55293e.getChildAt(i11 - this.G);
                            if (childAt == null) {
                                childViewHolder = this.f55293e.getChildViewHolder(childAt);
                                if (childViewHolder instanceof com.join.mgps.adapter.o5.m) {
                                    mVar = (com.join.mgps.adapter.o5.m) childViewHolder;
                                    if (homeBeanDTO.getG_info() != null) {
                                        if (TextUtils.equals(task.getCrc_link_type_val(), homeBeanDTO.getG_info().getId()) || (homeBeanDTO.getDownloadTask() != null && TextUtils.equals(task.getCrc_link_type_val(), homeBeanDTO.getDownloadTask().getCrc_link_type_val()))) {
                                            update(homeBeanDTO, mVar.f62926f, mVar.f62932l, mVar.f62933m, mVar.f62934n, mVar.f62927g, mVar.f62928h, mVar.f62929i, mVar.f62930j, mVar.f62931k, mVar.f62935o);
                                        }
                                    }
                                }
                            }
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    } else if (showtype != 29) {
                        switch (showtype) {
                            case 34:
                            case 37:
                            case 38:
                                homeBeanDTO = (PAPAHomeBeanV7.HomeBeanDTO) mgpapaMainItemBeanU.getObject();
                                homeBeanDTO.setRequesting(false);
                                childAt = this.f55293e.getChildAt(i11 - this.G);
                                if (childAt == null) {
                                    childViewHolder = this.f55293e.getChildViewHolder(childAt);
                                    if (childViewHolder instanceof com.join.mgps.adapter.o5.m) {
                                        mVar = (com.join.mgps.adapter.o5.m) childViewHolder;
                                        if (homeBeanDTO.getG_info() != null) {
                                            if (TextUtils.equals(task.getCrc_link_type_val(), homeBeanDTO.getG_info().getId())) {
                                                update(homeBeanDTO, mVar.f62926f, mVar.f62932l, mVar.f62933m, mVar.f62934n, mVar.f62927g, mVar.f62928h, mVar.f62929i, mVar.f62930j, mVar.f62931k, mVar.f62935o);
                                            } else {
                                                update(homeBeanDTO, mVar.f62926f, mVar.f62932l, mVar.f62933m, mVar.f62934n, mVar.f62927g, mVar.f62928h, mVar.f62929i, mVar.f62930j, mVar.f62931k, mVar.f62935o);
                                            }
                                        }
                                    }
                                }
                                break;
                            case 35:
                                try {
                                    List<PAPAHomeBeanV7.HomeBeanDTO> list = (List) mgpapaMainItemBeanU.getObject();
                                    RecyclerView.ViewHolder childViewHolder3 = this.f55293e.getChildViewHolder(this.f55293e.getChildAt(i11 - this.G));
                                    if (childViewHolder3 instanceof com.join.mgps.adapter.o5.q) {
                                        com.join.mgps.adapter.o5.q qVar = (com.join.mgps.adapter.o5.q) childViewHolder3;
                                        if (list != null && (recyclerView = qVar.f62949d) != null && (c3Var = (com.join.mgps.adapter.c3) recyclerView.getAdapter()) != null && c3Var.getData() != null) {
                                            for (PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO3 : list) {
                                                if (homeBeanDTO3 != null && homeBeanDTO3.getDownloadTask() != null && TextUtils.equals(task.getCrc_link_type_val(), homeBeanDTO3.getDownloadTask().getCrc_link_type_val())) {
                                                    DownloadTask downloadTaskG = com.join.android.app.common.servcie.j.f().g(homeBeanDTO3.getDownloadTask().getCrc_link_type_val());
                                                    if (downloadTaskG != null) {
                                                        homeBeanDTO3.setDownloadTask(downloadTaskG);
                                                    }
                                                }
                                            }
                                            c3Var.setNewData(list);
                                        }
                                    }
                                } catch (Exception e11) {
                                    e11.printStackTrace();
                                }
                                break;
                            case 36:
                                try {
                                    homeBeanDTO2 = (PAPAHomeBeanV7.HomeBeanDTO) mgpapaMainItemBeanU.getObject();
                                    childViewHolder2 = this.f55293e.getChildViewHolder(this.f55293e.getChildAt(i11 - this.G));
                                    if (childViewHolder2 instanceof com.join.mgps.adapter.o5.j) {
                                        com.join.mgps.adapter.o5.j jVar = (com.join.mgps.adapter.o5.j) childViewHolder2;
                                        if (homeBeanDTO2 == null && homeBeanDTO2.getG_info() != null) {
                                            homeBeanDTO2.setRequesting(false);
                                            if (TextUtils.equals(homeBeanDTO2.getG_info().getId(), task.getCrc_link_type_val()) || (homeBeanDTO2.getDownloadTask() != null && TextUtils.equals(task.getCrc_link_type_val(), homeBeanDTO2.getDownloadTask().getCrc_link_type_val()))) {
                                                update(homeBeanDTO2, jVar.f62902f, jVar.f62908l, jVar.f62909m, jVar.f62910n, jVar.f62903g, jVar.f62904h, jVar.f62905i, jVar.f62906j, jVar.f62907k, jVar.f62913q);
                                            }
                                        }
                                    }
                                } catch (Exception e12) {
                                    e12.printStackTrace();
                                }
                                break;
                        }
                    } else {
                        homeBeanDTO2 = (PAPAHomeBeanV7.HomeBeanDTO) mgpapaMainItemBeanU.getObject();
                        childViewHolder2 = this.f55293e.getChildViewHolder(this.f55293e.getChildAt(i11 - this.G));
                        if (childViewHolder2 instanceof com.join.mgps.adapter.o5.j) {
                            com.join.mgps.adapter.o5.j jVar2 = (com.join.mgps.adapter.o5.j) childViewHolder2;
                            if (homeBeanDTO2 == null) {
                            }
                        }
                    }
                }
            }
        }
    }

    private void L1(DownloadTask downloadTask) {
        try {
            List<RecomDatabeanBusiness> list = this.f55337y;
            if (list == null || list.size() <= 0) {
                return;
            }
            for (int i10 = 0; i10 < this.f55337y.size(); i10++) {
                AppBean game_info = this.f55337y.get(i10).getSub().get(0).getGame_info();
                if (game_info != null) {
                    if (game_info.getMod_info() != null) {
                        ModInfoBean mod_info = game_info.getMod_info();
                        DownloadTask downloadTask2 = this.f55338z.get(mod_info.getMain_game_id());
                        boolean z10 = true;
                        boolean z11 = downloadTask2 != null && downloadTask2.getStatus() == 5;
                        DownloadTask downloadTask3 = this.f55338z.get(mod_info.getMod_game_id());
                        if (downloadTask3 == null || downloadTask3.getStatus() != 5) {
                            z10 = false;
                        }
                        if (z10 && z11) {
                            if (downloadTask.getCrc_link_type_val().equals(game_info.getCrc_sign_id())) {
                                this.f55337y.get(i10).setDownloadTask(downloadTask);
                            }
                        } else if (z10) {
                            if (game_info.getMod_info() != null && downloadTask.getCrc_link_type_val().equals(game_info.getMod_info().getMod_game_id())) {
                                this.f55337y.get(i10).setDownloadTask(downloadTask);
                            }
                        } else if (!z11) {
                            DownloadTask downloadTask4 = game_info.getMod_info() != null ? this.f55338z.get(game_info.getMod_info().getMod_game_id()) : null;
                            if (downloadTask4 == null) {
                                downloadTask4 = this.f55338z.get(game_info.getCrc_sign_id());
                            }
                            if (downloadTask4 != null && downloadTask.getCrc_link_type_val().equals(downloadTask4.getCrc_link_type_val())) {
                                this.f55337y.get(i10).setDownloadTask(downloadTask);
                            }
                        } else if (downloadTask.getCrc_link_type_val().equals(game_info.getCrc_sign_id())) {
                            this.f55337y.get(i10).setDownloadTask(downloadTask);
                        }
                    } else if (game_info.getCrc_sign_id().equals(downloadTask.getCrc_link_type_val())) {
                        this.f55337y.get(i10).setDownloadTask(downloadTask);
                        this.f55338z.put(downloadTask.getCrc_link_type_val(), downloadTask);
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void M0() {
        this.f55310l1 = com.join.android.app.common.utils.m.j(this.f55333v);
        HomeViewModle homeViewModle = (HomeViewModle) new ViewModelProvider(this, ViewModelProvider.AndroidViewModelFactory.getInstance(MApplication.f3182z)).get(HomeViewModle.class);
        this.T = homeViewModle;
        homeViewModle.initStat(this.f55333v);
        this.T.getLists().clear();
        int iV = com.join.android.app.common.utils.q.v(getContext());
        if (iV > this.f55333v.getResources().getDimension(R.dimen.wdp62)) {
            this.f55322q.setPadding(0, iV, 0, 0);
        }
        this.f55337y = new ArrayList();
        this.V = new ArrayList();
        ArrayList arrayList = new ArrayList();
        this.E = arrayList;
        com.join.mgps.adapter.o5 o5Var = new com.join.mgps.adapter.o5(this.f55333v, this, arrayList, this.R, new g());
        this.D = o5Var;
        o5Var.setHasStableIds(true);
        LayoutInflater.from(this.f55333v).inflate(R.layout.mg_papa_title_include_v2, (ViewGroup) null, false);
        this.f55293e.setLoadingListener(new h());
        this.f55293e.setPtrFrameLayout(this.K);
        this.f55293e.setPreLoadCount(10);
        this.D.R(new i());
        this.f55293e.setAdapter(this.D);
        GridLayoutManager gridLayoutManager = new GridLayoutManager(this.f55333v, 2);
        gridLayoutManager.setSpanSizeLookup(new j());
        this.f55293e.setLayoutManager(gridLayoutManager);
        this.f55293e.addOnScrollListener(new k());
        this.f55293e.setOnTouchListener(new l());
        this.K.j(true);
        this.f55330t.addOnOffsetChangedListener(new AppBarLayout.OnOffsetChangedListener() { // from class: com.join.mgps.activity.l8
            @Override // com.google.android.material.appbar.AppBarLayout.OnOffsetChangedListener, com.google.android.material.appbar.AppBarLayout.BaseOnOffsetChangedListener
            public final void onOffsetChanged(AppBarLayout appBarLayout, int i10) {
                this.f57404a.U0(appBarLayout, i10);
            }
        });
    }

    private void N0(SScrollingTxtDTOV2 scrollingTxtDTO) {
        if (scrollingTxtDTO == null) {
            return;
        }
        ArrayList<SScrollingTxtBeanV2> arrayList = new ArrayList<>(scrollingTxtDTO.getText());
        this.f55319p0 = arrayList;
        if (arrayList.size() <= 0) {
            this.f55319p0 = new ArrayList<>();
        }
        this.f55325r.stopFlipping();
        this.f55325r.removeAllViews();
        for (SScrollingTxtBeanV2 sScrollingTxtBeanV2 : this.f55319p0) {
            TextView textView = (TextView) LayoutInflater.from(this.f55333v).inflate(R.layout.item_search_hint_viewflipper, (ViewGroup) null);
            textView.setText(sScrollingTxtBeanV2.getWord());
            this.f55325r.addView(textView);
        }
        int interval = scrollingTxtDTO.getInterval();
        this.f55289b1 = interval;
        if (interval < 1) {
            this.f55289b1 = 1;
        }
        this.f55325r.setFlipInterval(this.f55289b1 * 1000);
        this.f55325r.startFlipping();
        MApplication.L1 = this.f55319p0;
        MApplication.R1 = this.f55289b1;
    }

    private boolean O0(PAPAHomeBeanV7.HomeBeanDTO dto) {
        return (dto == null || dto.getJp_info() == null || dto.getJp_info().getLink_type().intValue() == 1) ? false : true;
    }

    private void O1(TextView tvGameTags, LinearLayout llInfo, ProgressBar progressBar, ProgressBar progressBarZip, boolean isNormal, boolean isZip) {
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

    private PAPAHomeBeanV7.HomeBeanDTO Q1(PAPAHomeBeanV7.HomeBeanDTO bean, int from, int fromType) {
        List<PAPAHomeBeanV7.HomeBeanDTO> listR1 = R1(new ArrayList<PAPAHomeBeanV7.HomeBeanDTO>(bean) { // from class: com.join.mgps.activity.PapaMainV3Fragment.9

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ PAPAHomeBeanV7.HomeBeanDTO f55339b;

            {
                this.f55339b = bean;
                add(bean);
            }
        }, from, fromType);
        return (listR1 == null || listR1.size() <= 0) ? bean : listR1.get(0);
    }

    private List<PAPAHomeBeanV7.HomeBeanDTO> R1(List<PAPAHomeBeanV7.HomeBeanDTO> list, int from, int fromType) {
        if (list != null && list.size() > 0) {
            List<DownloadTask> listD = q5.f.M().d();
            for (PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO : list) {
                for (DownloadTask downloadTask : listD) {
                    if (homeBeanDTO.getG_info() != null && TextUtils.equals(downloadTask.getCrc_link_type_val(), homeBeanDTO.getG_info().getMod_id())) {
                        homeBeanDTO.setDownloadTask(downloadTask);
                        break;
                    }
                    if (homeBeanDTO.getG_info() != null && TextUtils.equals(downloadTask.getCrc_link_type_val(), homeBeanDTO.getG_info().getId())) {
                        homeBeanDTO.setDownloadTask(downloadTask);
                    }
                }
                homeBeanDTO.set_from(from);
                homeBeanDTO.set_from_type(fromType);
            }
        }
        return list;
    }

    private List<PAPAHomeBeanV7.HomeBeanDTO> S1(List<PAPAHomeBeanV7.HomeBeanDTO> list, String pointSuffix) {
        if (list != null && list.size() > 0) {
            int i10 = 0;
            while (i10 < list.size()) {
                PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO = list.get(i10);
                StringBuilder sb2 = new StringBuilder();
                sb2.append(pointSuffix);
                i10++;
                sb2.append(i10);
                homeBeanDTO.setPosition(sb2.toString());
            }
        }
        return list;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void T0() throws Throwable {
        this.f55334v1 = false;
        this.X = true;
        XRecyclerView2 xRecyclerView2 = this.f55293e;
        if (xRecyclerView2 != null) {
            xRecyclerView2.setNoMoreView(false);
        }
        this.P = 2;
        X0(this.O, 2);
    }

    private List<PAPAHomeBeanV7.HomeBeanDTO> T1(List<PAPAHomeBeanV7.HomeBeanDTO> list) {
        if (list != null && list.size() > 0) {
            for (int i10 = 0; i10 < list.size(); i10++) {
                list.get(i10).setPosition("22-18-" + (this.f55303i1 + 1));
                this.f55303i1 = this.f55303i1 + 1;
            }
        }
        return list;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void U0(AppBarLayout appBarLayout, int i10) {
        this.K.setEnabled(i10 >= 0);
    }

    private List<PAPAHomeBeanV7.NgSelectionDTO> U1(List<PAPAHomeBeanV7.NgSelectionDTO> list, int from) {
        if (list != null && list.size() > 0) {
            int i10 = 0;
            while (i10 < list.size()) {
                PAPAHomeBeanV7.NgSelectionDTO ngSelectionDTO = list.get(i10);
                StringBuilder sb2 = new StringBuilder();
                sb2.append("22-14-");
                int i11 = i10 + 1;
                sb2.append(i11);
                ngSelectionDTO.setPosition(sb2.toString());
                list.get(i10).set_from(from);
                list.get(i10).set_from_type(from);
                i10 = i11;
            }
        }
        return list;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void V0() {
        SimpleDraweeView simpleDraweeView = this.f55314n;
        if (simpleDraweeView == null || this.f55329s2 || !this.f55331t2 || simpleDraweeView.getVisibility() != 0) {
            return;
        }
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.f55314n, "translationX", this.f55333v.getResources().getDimension(R.dimen.wdp113), 0.0f).setDuration(150L);
        duration.addListener(new e());
        duration.start();
    }

    static /* synthetic */ int e0(PapaMainV3Fragment papaMainV3Fragment) {
        int i10 = papaMainV3Fragment.f55321p2;
        papaMainV3Fragment.f55321p2 = i10 + 1;
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h1(RecyclerView recyclerView, int newState) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onScrollStateChange: ");
        sb2.append(newState);
        sb2.append("  ");
        sb2.append(this.f55293e.getLastCompletelyVisiblePosition());
        sb2.append("  ");
        sb2.append(this.D.getData().size() - 1);
        if (newState == 0) {
            if (Fresco.getImagePipeline().P()) {
                Fresco.getImagePipeline().c0();
            }
            P0();
            x0();
            com.join.android.app.component.video.h hVar = this.R;
            if (hVar != null) {
                hVar.g();
            }
        } else if (this.f55293e.getLastCompletelyVisiblePosition() < this.D.getData().size() || this.X) {
            Q0();
        }
        if (System.currentTimeMillis() - this.f55323q1 > 10000) {
            v0();
        }
    }

    private RecomDatabeanBusiness i1(RecomDatabean recomDatabean) {
        if (recomDatabean != null) {
            return new RecomDatabeanBusiness(recomDatabean);
        }
        return null;
    }

    private List<RecomDatabeanBusiness> j1(List<RecomDatabean> recomDatabeans, List<RecomDatabeanBusiness> recomDatabeanBusinesses) {
        if (recomDatabeanBusinesses == null) {
            recomDatabeanBusinesses = new ArrayList<>();
        } else {
            recomDatabeanBusinesses.clear();
        }
        if (recomDatabeans != null) {
            Iterator<RecomDatabean> it2 = recomDatabeans.iterator();
            while (it2.hasNext()) {
                recomDatabeanBusinesses.add(new RecomDatabeanBusiness(it2.next()));
            }
        }
        return recomDatabeanBusinesses;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l1() throws Throwable {
        if (this.I) {
            return;
        }
        if (this.f55293e.getFirstVisiblePosition() > 1) {
            a1();
        }
        this.O = "m1";
        this.P = 1;
        this.Q = 0;
        this.f55293e.setNoMoreView(false);
        this.X = true;
        X0("refresh", this.P);
        I0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p1(int reMarks) {
        Ext ext = new Ext();
        ext.setPage("home");
        ext.setReMarks(String.valueOf(reMarks));
        StringBuilder sb2 = new StringBuilder();
        sb2.append("sendExposurePoint: ");
        sb2.append(reMarks);
        com.papa.sim.statistic.t.l(this.f55333v).k0(Event.pullDownModelExp, ext, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q1(String from, PAPAHomeBeanV7.HomeBeanDTO bean) {
        boolean zO0 = O0(bean);
        String strF0 = F0(bean);
        if (strF0 != null || zO0) {
            Ext ext = new Ext();
            ext.setPage("home");
            ext.setFrom(from);
            if (!zO0) {
                ext.setGameId(strF0);
            } else if (bean.getJp_info() != null) {
                ext.setReMarks(bean.getJp_info().getLink_type_val());
            }
            ext.setPosition(bean.getPosition());
            Data data = new Data();
            data.setWhere(bean.getIntentDataBean().getLink_type_val());
            if (!TextUtils.isEmpty(strF0)) {
                try {
                    data.setGameId(strF0);
                } catch (Exception unused) {
                }
            }
            com.papa.sim.statistic.t.l(this.f55333v).W1(zO0 ? Event.expH5AndCollGameAdPicPage : Event.expGameAdPage, ext, data);
            if (bean.isMiniGame()) {
                t1(bean);
            }
        }
    }

    private void r0() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r1(String from, String position, String gameId) {
        Ext ext = new Ext();
        ext.setPage("home");
        ext.setFrom(from);
        ext.setGameId(gameId);
        ext.setPosition(position);
        com.papa.sim.statistic.t.l(this.f55333v).k0(Event.expGameAdPage, ext, gameId);
    }

    private void receiveDelete(DownloadTask downloadTask) {
        for (PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO : this.V) {
            if (homeBeanDTO.getG_info() != null && (TextUtils.equals(homeBeanDTO.getG_info().getId(), downloadTask.getCrc_link_type_val()) || TextUtils.equals(homeBeanDTO.getG_info().getMod_id(), downloadTask.getCrc_link_type_val()))) {
                homeBeanDTO.setDownloadTask(null);
            }
        }
        notifyDataSetChanged();
        J1(downloadTask);
    }

    private void receiveError(DownloadTask downloadTask) {
        for (PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO : this.V) {
            if (homeBeanDTO.getG_info() != null && (TextUtils.equals(homeBeanDTO.getG_info().getId(), downloadTask.getCrc_link_type_val()) || TextUtils.equals(homeBeanDTO.getG_info().getMod_id(), downloadTask.getCrc_link_type_val()))) {
                homeBeanDTO.setDownloadTask(downloadTask);
            }
        }
        notifyDataSetChanged();
        J1(downloadTask);
    }

    private void receiveStart(DownloadTask downloadTask) {
        for (PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO : this.V) {
            if (homeBeanDTO.getG_info() != null && (TextUtils.equals(homeBeanDTO.getG_info().getId(), downloadTask.getCrc_link_type_val()) || TextUtils.equals(homeBeanDTO.getG_info().getMod_id(), downloadTask.getCrc_link_type_val()))) {
                homeBeanDTO.setDownloadTask(downloadTask);
            }
        }
        notifyDataSetChanged();
        J1(downloadTask);
    }

    private void receiveSuccess(DownloadTask downloadTask) {
        for (PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO : this.V) {
            if (homeBeanDTO.getG_info() != null && (TextUtils.equals(homeBeanDTO.getG_info().getId(), downloadTask.getCrc_link_type_val()) || TextUtils.equals(homeBeanDTO.getG_info().getMod_id(), downloadTask.getCrc_link_type_val()))) {
                homeBeanDTO.setDownloadTask(downloadTask);
            }
        }
        notifyDataSetChanged();
        J1(downloadTask);
    }

    private void s1(boolean isContainPosition) {
        Ext ext = new Ext();
        ext.setPage(ExtFrom.home.name());
        ext.setPosition(isContainPosition ? this.f55327r2 : null);
        com.papa.sim.statistic.t.l(this.f55333v).o1(Event.appPageVisit, ext);
    }

    private void t1(PAPAHomeBeanV7.HomeBeanDTO bean) {
        Ext ext = new Ext();
        ext.setPage("home");
        ext.setFrom("106");
        ext.setGameId(F0(bean));
        ext.setPosition(bean.getPosition());
        com.papa.sim.statistic.t.l(this.f55333v).k0(Event.expSmallGameAdPage, ext, this.f55332u);
    }

    private void u1(String pointName) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("22-");
        sb2.append(pointName);
        com.papa.sim.statistic.t.l(this.f55333v).t(ExtFrom.home.name(), "22-" + pointName, AccountUtil_.getInstance_(this.f55333v).getUid());
    }

    private void update(PAPAHomeBeanV7.HomeBeanDTO bean, TextView tvGameName, TextView tvGameTags, FrameLayout flBtn, TextView tvBtn, LinearLayout llInfo, TextView tvAppSize, TextView loding_info, ProgressBar progressBarZip, ProgressBar progressBar, ProgressBar loadingProgress) {
        DownloadTask downloadTask = bean.getDownloadTask();
        CollectionBeanSub gameBean = bean.getGameBean();
        long size = downloadTask != null ? downloadTask.getSize() : 0L;
        tvBtn.setVisibility(0);
        loadingProgress.setVisibility(4);
        if (gameBean != null) {
            if ((ConstantIntEnum.H5.value() + "").equals(gameBean.getPlugin_num())) {
                tvBtn.setText("开始");
                tvGameName.setVisibility(8);
                return;
            }
        }
        if (downloadTask == null) {
            O1(tvGameTags, llInfo, progressBar, progressBarZip, true, false);
            tvBtn.setText("获取");
            if (gameBean == null) {
                return;
            }
            if (!UtilsMy.p0(gameBean.getTag_info())) {
                UtilsMy.x0(gameBean.getPay_tag_info(), gameBean.getCrc_sign_id());
                UtilsMy.w3(tvBtn, flBtn, gameBean);
                return;
            }
            if (!com.join.android.app.common.utils.g.t0(this.f55333v).e(this.f55333v, gameBean.getPackageName()) || UtilsMy.x0(gameBean.getPay_tag_info(), gameBean.getCrc_sign_id()) != 0) {
                UtilsMy.x0(gameBean.getPay_tag_info(), gameBean.getCrc_sign_id());
                UtilsMy.w3(tvBtn, flBtn, gameBean);
                return;
            }
            APKUtils.a aVarN = com.join.android.app.common.utils.g.t0(this.f55333v).n(this.f55333v, gameBean.getPackageName());
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
                O1(tvGameTags, llInfo, progressBar, progressBarZip, true, false);
                return;
            }
            if (status == 2) {
                UtilsMy.U4(downloadTask);
                tvBtn.setText("暂停");
                O1(tvGameTags, llInfo, progressBar, progressBarZip, false, false);
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
                                            O1(tvGameTags, llInfo, progressBar, progressBarZip, true, false);
                                            break;
                                        case 10:
                                            tvBtn.setText("等待");
                                            O1(tvGameTags, llInfo, progressBar, progressBarZip, false, false);
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
                                            O1(tvGameTags, llInfo, progressBar, progressBarZip, true, false);
                                            break;
                                        case 12:
                                            O1(tvGameTags, llInfo, progressBar, progressBarZip, false, true);
                                            tvAppSize.setText(UtilsMy.i(size) + net.lingala.zip4j.util.e.F0 + UtilsMy.i(size));
                                            loding_info.setText("解压中..");
                                            progressBarZip.setProgress((int) downloadTask.getProgress());
                                            tvBtn.setText("解压中");
                                            break;
                                        case 13:
                                            O1(tvGameTags, llInfo, progressBar, progressBarZip, false, true);
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
                O1(tvGameTags, llInfo, progressBar, progressBarZip, true, true);
                return;
            }
            tvBtn.setText("继续");
            O1(tvGameTags, llInfo, progressBar, progressBarZip, false, false);
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
        UtilsMy.x0(gameBean.getPay_tag_info(), gameBean.getCrc_sign_id());
        UtilsMy.w3(tvBtn, flBtn, gameBean);
        O1(tvGameTags, llInfo, progressBar, progressBarZip, true, false);
    }

    /* JADX WARN: Code duplicated, block: B:105:0x0248 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:41:0x00bf A[Catch: Exception -> 0x0172, TryCatch #2 {Exception -> 0x0172, blocks: (B:39:0x00a5, B:41:0x00bf, B:43:0x00c3, B:45:0x00c9, B:47:0x00db, B:49:0x00f0, B:51:0x0137, B:53:0x013d, B:55:0x0152, B:57:0x0158, B:54:0x0148, B:50:0x0114), top: B:89:0x00a5 }] */
    /* JADX WARN: Code duplicated, block: B:63:0x0192 A[Catch: Exception -> 0x0244, TryCatch #1 {Exception -> 0x0244, blocks: (B:61:0x0178, B:63:0x0192, B:65:0x0196, B:67:0x019c, B:69:0x01ae, B:71:0x01c3, B:73:0x020a, B:75:0x0210, B:77:0x0225, B:79:0x022b, B:76:0x021b, B:72:0x01e7), top: B:87:0x0178 }] */
    /* JADX WARN: Code duplicated, block: B:87:0x0178 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:89:0x00a5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:99:0x0248 A[SYNTHETIC] */
    private void updateProgressPartly() {
        PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO;
        RecyclerView.ViewHolder childViewHolder;
        PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO2;
        RecyclerView.ViewHolder childViewHolder2;
        RecyclerView recyclerView;
        com.join.mgps.adapter.c3 c3Var;
        int i10 = this.G;
        if (i10 >= 0) {
            while (i10 <= Math.min(this.F + 1, this.D.getItemCount() - 1)) {
                MgpapaMainItemBean mgpapaMainItemBeanU = this.D.u(i10);
                if (mgpapaMainItemBeanU != null) {
                    int showtype = mgpapaMainItemBeanU.getShowtype();
                    if (showtype == 28) {
                        try {
                            homeBeanDTO = (PAPAHomeBeanV7.HomeBeanDTO) mgpapaMainItemBeanU.getObject();
                            childViewHolder = this.f55293e.getChildViewHolder(this.f55293e.getChildAt(i10 - this.G));
                            if (childViewHolder instanceof com.join.mgps.adapter.o5.m) {
                                com.join.mgps.adapter.o5.m mVar = (com.join.mgps.adapter.o5.m) childViewHolder;
                                if (homeBeanDTO == null && homeBeanDTO.getDownloadTask() != null) {
                                    DownloadTask downloadTask = homeBeanDTO.getDownloadTask();
                                    DownloadTask downloadTaskG = com.join.android.app.common.servcie.j.f().g(downloadTask.getCrc_link_type_val());
                                    if (downloadTaskG != null) {
                                        long j10 = (long) (Double.parseDouble(downloadTaskG.getShowSize()) * 1024.0d * 1024.0d);
                                        if (downloadTask.getSize() == 0) {
                                            mVar.f62928h.setText(UtilsMy.i(downloadTaskG.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.i(j10));
                                        } else {
                                            mVar.f62928h.setText(UtilsMy.i(downloadTaskG.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.i(j10));
                                        }
                                        if (downloadTask.getStatus() == 12) {
                                            mVar.f62930j.setProgress((int) downloadTaskG.getProgress());
                                        } else {
                                            mVar.f62931k.setProgress((int) downloadTaskG.getProgress());
                                        }
                                        if (downloadTask.getStatus() == 2) {
                                            mVar.f62929i.setText(downloadTaskG.getSpeed() + "/S");
                                        }
                                    }
                                }
                            }
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    } else if (showtype != 29) {
                        switch (showtype) {
                            case 34:
                            case 37:
                            case 38:
                                homeBeanDTO = (PAPAHomeBeanV7.HomeBeanDTO) mgpapaMainItemBeanU.getObject();
                                childViewHolder = this.f55293e.getChildViewHolder(this.f55293e.getChildAt(i10 - this.G));
                                if (childViewHolder instanceof com.join.mgps.adapter.o5.m) {
                                    com.join.mgps.adapter.o5.m mVar2 = (com.join.mgps.adapter.o5.m) childViewHolder;
                                    if (homeBeanDTO == null) {
                                    }
                                }
                                break;
                            case 35:
                                try {
                                    List<PAPAHomeBeanV7.HomeBeanDTO> list = (List) mgpapaMainItemBeanU.getObject();
                                    RecyclerView.ViewHolder childViewHolder3 = this.f55293e.getChildViewHolder(this.f55293e.getChildAt(i10 - this.G));
                                    if (childViewHolder3 instanceof com.join.mgps.adapter.o5.q) {
                                        com.join.mgps.adapter.o5.q qVar = (com.join.mgps.adapter.o5.q) childViewHolder3;
                                        if (list != null && (recyclerView = qVar.f62949d) != null && (c3Var = (com.join.mgps.adapter.c3) recyclerView.getAdapter()) != null && c3Var.getData() != null) {
                                            for (PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO3 : list) {
                                                if (homeBeanDTO3 != null && homeBeanDTO3.getDownloadTask() != null) {
                                                    DownloadTask downloadTaskG2 = com.join.android.app.common.servcie.j.f().g(homeBeanDTO3.getDownloadTask().getCrc_link_type_val());
                                                    if (downloadTaskG2 != null) {
                                                        homeBeanDTO3.setDownloadTask(downloadTaskG2);
                                                    }
                                                }
                                            }
                                            c3Var.setNewData(list);
                                        }
                                    }
                                } catch (Exception e11) {
                                    e11.printStackTrace();
                                }
                                break;
                            case 36:
                                try {
                                    homeBeanDTO2 = (PAPAHomeBeanV7.HomeBeanDTO) mgpapaMainItemBeanU.getObject();
                                    childViewHolder2 = this.f55293e.getChildViewHolder(this.f55293e.getChildAt(i10 - this.G));
                                    if (childViewHolder2 instanceof com.join.mgps.adapter.o5.j) {
                                        com.join.mgps.adapter.o5.j jVar = (com.join.mgps.adapter.o5.j) childViewHolder2;
                                        if (homeBeanDTO2 == null && homeBeanDTO2.getDownloadTask() != null) {
                                            DownloadTask downloadTask2 = homeBeanDTO2.getDownloadTask();
                                            DownloadTask downloadTaskG3 = com.join.android.app.common.servcie.j.f().g(downloadTask2.getCrc_link_type_val());
                                            if (downloadTaskG3 != null) {
                                                long j11 = (long) (Double.parseDouble(downloadTaskG3.getShowSize()) * 1024.0d * 1024.0d);
                                                if (downloadTask2.getSize() == 0) {
                                                    jVar.f62904h.setText(UtilsMy.i(downloadTaskG3.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.i(j11));
                                                } else {
                                                    jVar.f62904h.setText(UtilsMy.i(downloadTaskG3.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.i(j11));
                                                }
                                                if (downloadTask2.getStatus() == 12) {
                                                    jVar.f62906j.setProgress((int) downloadTaskG3.getProgress());
                                                } else {
                                                    jVar.f62907k.setProgress((int) downloadTaskG3.getProgress());
                                                }
                                                if (downloadTask2.getStatus() == 2) {
                                                    jVar.f62905i.setText(downloadTaskG3.getSpeed() + "/S");
                                                }
                                            }
                                        }
                                    }
                                } catch (Exception e12) {
                                    e12.printStackTrace();
                                }
                                break;
                        }
                    } else {
                        homeBeanDTO2 = (PAPAHomeBeanV7.HomeBeanDTO) mgpapaMainItemBeanU.getObject();
                        childViewHolder2 = this.f55293e.getChildViewHolder(this.f55293e.getChildAt(i10 - this.G));
                        if (childViewHolder2 instanceof com.join.mgps.adapter.o5.j) {
                            com.join.mgps.adapter.o5.j jVar2 = (com.join.mgps.adapter.o5.j) childViewHolder2;
                            if (homeBeanDTO2 == null) {
                            }
                        }
                    }
                }
                i10++;
            }
        }
    }

    private void w1(List<RecomDatabean> recomDatabeans, int _from, int _from_type) {
        AppBean game_info;
        if (recomDatabeans != null) {
            for (RecomDatabean recomDatabean : recomDatabeans) {
                if (recomDatabean.getSub() != null && recomDatabean.getSub().size() > 0 && (game_info = recomDatabean.getSub().get(0).getGame_info()) != null) {
                    game_info.set_from(_from);
                    game_info.set_from_type(_from_type);
                }
            }
        }
    }

    private void x0() {
        if (this.W == null) {
            this.W = new Handler();
        }
        this.W.post(this.f55324q2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y0(int postion, List<List<PAPAHomeBeanV7.HomeBeanDTO>> rankings, String from) {
        List<Integer> list = this.Y;
        if (list == null || list.contains(Integer.valueOf(postion)) || rankings == null || postion > rankings.size() - 1) {
            return;
        }
        Iterator<PAPAHomeBeanV7.HomeBeanDTO> it2 = rankings.get(postion).iterator();
        while (it2.hasNext()) {
            q1(from, it2.next());
        }
        this.Y.add(Integer.valueOf(postion));
    }

    private void z1(MgpapaMainItemBean mgpapaMainItemBean) {
        List<AppBeanMain> sub;
        String str;
        int showtype = mgpapaMainItemBean.getShowtype();
        if ((showtype == 3 || showtype == 13) && (sub = mgpapaMainItemBean.getRecomDatabeanLeft().getSub()) != null && sub.size() > 0) {
            AppBean game_info = sub.get(0).getGame_info();
            String[] strArrSplit = mgpapaMainItemBean.getMoreType2().split("-");
            String str2 = "0";
            if (strArrSplit.length <= 0) {
                str = "";
            } else if (strArrSplit[0].equals("4")) {
                str = "大家都在玩";
                if (strArrSplit.length > 1) {
                    str2 = strArrSplit[1];
                }
            } else if (strArrSplit[0].equals("7")) {
                str = "网游推荐";
                if (strArrSplit.length > 1) {
                    str2 = strArrSplit[1];
                }
            } else if (strArrSplit[0].equals("5")) {
                str = "最新网游";
                if (strArrSplit.length > 1) {
                    str2 = strArrSplit[1];
                }
            } else {
                str2 = strArrSplit.length > 2 ? strArrSplit[2] : "0";
                if (strArrSplit.length > 3) {
                    str = "模块" + strArrSplit[1];
                    str2 = strArrSplit[3];
                } else {
                    str = "模块";
                }
            }
            game_info.setRecPosition("home-" + str + "-" + str2);
        }
    }

    void A0(String gameid) {
        t0(gameid);
    }

    void B0(final String gameid) {
        A0(gameid);
    }

    @Click
    void B1() {
        com.join.mgps.Util.w.i(this.f55333v);
    }

    @Background
    void C0(String gameId, PAPAHomeBeanV7.HomeBeanDTO item) {
        CollectionBeanSub data;
        if (item.getGameBean() != null) {
            w0(item);
            return;
        }
        if (com.join.android.app.common.utils.m.j(this.f55333v)) {
            try {
                UserInfo accountData = AccountUtil_.getInstance_(this.f55333v).getAccountData();
                if (accountData == null) {
                    accountData = UserInfo.getDefaultInstance();
                }
                RequestModel requestModel = new RequestModel();
                requestModel.setDefault(this.f55333v);
                requestModel.setArgs(new RequestGameIdArgs(gameId, 1, accountData.getUid()));
                ResponseModel<CollectionBeanSub> responseModelBody = com.join.mgps.rpc.impl.i.P0().N0().N1(requestModel.makeSign()).execute().body();
                if (responseModelBody != null && responseModelBody.getCode() == 200 && (data = responseModelBody.getData()) != null) {
                    data.set_from(item.get_from());
                    data.set_from_type(item.get_from_type());
                    data.setRecPosition(item.getPosition());
                    item.setGameBean(data);
                    w0(item);
                    return;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                showMessage("获取下载信息失败");
            }
        } else {
            showMessage("当前网络不可用");
        }
        m1(item);
    }

    @UiThread
    void C1() {
        if (getUserVisibleHint()) {
            com.join.mgps.Util.h0.h0(this.f55333v).O(this.f55333v, 1, new f()).show();
        }
    }

    @Background
    void D0() {
        if (com.join.android.app.common.utils.m.j(this.f55333v)) {
            try {
                HomeFloatData data = this.f55300h.S(G0()).getMessages().getData();
                if (data != null) {
                    D1(data);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @UiThread
    void D1(HomeFloatData homeFloatData) {
        try {
            List<RecomDatabean> pendant = homeFloatData.getPendant();
            List<RecomDatabean> coin_entrance = homeFloatData.getCoin_entrance();
            if (this.f55314n != null) {
                if (pendant == null || pendant.size() <= 0) {
                    this.f55314n.setVisibility(8);
                } else {
                    RecomDatabean recomDatabean = pendant.get(0);
                    this.f55297f2 = recomDatabean;
                    if (recomDatabean == null || recomDatabean.getMain().getAd_switch() != 1) {
                        this.f55314n.setVisibility(8);
                    } else {
                        this.f55314n.setVisibility(0);
                        if (!com.join.mgps.Util.t2.i(this.f55297f2.getMain().getPic_remote())) {
                            this.f55314n.setVisibility(8);
                        } else if (!this.f55301h2.equals(this.f55297f2.getMain().getPic_remote())) {
                            this.f55301h2 = this.f55297f2.getMain().getPic_remote();
                            com.join.android.app.common.utils.l.d(this.f55314n, R.drawable.translate_drawable, this.f55297f2.getMain().getPic_remote());
                        }
                    }
                }
            }
            if (coin_entrance == null || coin_entrance.size() <= 0) {
                return;
            }
            this.f55299g2 = coin_entrance.get(0);
            Intent intent = new Intent(p5.a.F);
            intent.putExtra("coinFloatData", this.f55299g2);
            this.f55333v.sendBroadcast(intent);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Background
    void E0() {
        List<RecomDatabean> data;
        try {
            ResultMainBean<List<RecomDatabean>> resultMainBeanW1 = this.f55300h.w1(RequestBeanUtil.getInstance(this.f55333v).getRequestPnAndPc(1, 1));
            if (resultMainBeanW1 == null || resultMainBeanW1.getFlag() != 1 || (data = resultMainBeanW1.getMessages().getData()) == null || data.size() <= 0) {
                return;
            }
            this.V1 = data.get(0).getSub().get(0).getLink_type_val();
        } catch (Exception unused) {
        }
    }

    @UiThread
    void E1() {
        D0();
    }

    @UiThread
    void F1(List<VipPopData> vipPopDatas) {
    }

    public CommonRequestBean G0() {
        return RequestBeanUtil.getInstance(this.f55333v).getFloatadRequestBean();
    }

    public void G1() {
        com.join.android.app.component.video.h hVar = this.R;
        if (hVar != null) {
            hVar.y();
        }
    }

    @Click
    void H1() {
        IntentUtil.getInstance().goSearchHintActivity(this.f55333v);
    }

    @Background
    void I0() {
        List<VipPopData> data;
        if (!com.join.android.app.common.utils.m.j(this.f55333v)) {
            P1();
            return;
        }
        try {
            UserInfo accountData = AccountUtil_.getInstance_(this.f55333v).getAccountData();
            if (accountData == null) {
                return;
            }
            ResultMainBean<List<VipPopData>> resultMainBeanU = this.f55300h.U(RequestBeanUtil.getInstance(this.f55333v).vipMessage(accountData.getUid()));
            if (resultMainBeanU == null || resultMainBeanU.getFlag() != 1 || (data = resultMainBeanU.getMessages().getData()) == null || data.size() <= 0) {
                P1();
            } else {
                F1(data);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            P1();
        }
    }

    @UiThread
    void I1(String gameId) {
        for (MgpapaMainItemBean mgpapaMainItemBean : this.E) {
            if (mgpapaMainItemBean.getShowtype() == 11) {
                RecomDatabeanBusiness recomDatabeanLeft = mgpapaMainItemBean.getRecomDatabeanLeft();
                RecomDatabeanBusiness recomDatabeanRight = mgpapaMainItemBean.getRecomDatabeanRight();
                if (recomDatabeanLeft != null && recomDatabeanLeft.getSub() != null && recomDatabeanLeft.getSub().get(0).getCrc_link_type_val().equals(gameId)) {
                    AppBean game_info = recomDatabeanLeft.getSub().get(0).getGame_info();
                    game_info.setIs_bespeak(1);
                    game_info.setBespeak_count((Integer.parseInt(game_info.getBespeak_count()) + 1) + "");
                    d1();
                    C1();
                } else if (recomDatabeanRight != null && recomDatabeanRight.getSub() != null && recomDatabeanRight.getSub().get(0).getCrc_link_type_val().equals(gameId)) {
                    AppBean game_info2 = recomDatabeanRight.getSub().get(0).getGame_info();
                    game_info2.setIs_bespeak(1);
                    game_info2.setBespeak_count((Integer.parseInt(game_info2.getBespeak_count()) + 1) + "");
                    d1();
                    C1();
                }
            }
        }
    }

    @Receiver(actions = {"com.papa.maintab.clicked"})
    void J0(Intent intent) {
    }

    @UiThread(delay = 2000)
    void K0() {
        TextView textView = this.f55302i;
        if (textView != null) {
            textView.setVisibility(8);
        }
    }

    @UiThread
    void K1(PAPAHomeBeanV7 mainBean, String m10, int pnx, boolean fromNet) {
        try {
            MGMainActivity mGMainActivity = (MGMainActivity) getActivity();
            if (mGMainActivity != null) {
                mGMainActivity.setHomeTabImage(true);
            }
            N0(mainBean.getS_scrolling_txt_v2());
            if (this.f55320p1) {
                Iterator<MgpapaMainItemBean> it2 = this.E.iterator();
                while (it2.hasNext()) {
                    if (it2.next().getPage() != 1) {
                        it2.remove();
                    }
                }
                this.f55320p1 = false;
            }
            new MgpapaMainItemBean();
            int i10 = 31;
            if (pnx == 1) {
                this.f55296f1 = fromNet;
                this.f55321p2 = 0;
                this.f55303i1 = 0;
                this.T.getLists().clear();
                this.E.clear();
                MgpapaMainItemBean mgpapaMainItemBean = new MgpapaMainItemBean();
                mgpapaMainItemBean.setShowtype(33);
                mgpapaMainItemBean.setObject(Float.valueOf(1.0f));
                mgpapaMainItemBean.setPage(pnx);
                mgpapaMainItemBean.setMoreType2(this.Z);
                this.E.add(mgpapaMainItemBean);
                MgpapaMainItemBean mgpapaMainItemBean2 = new MgpapaMainItemBean();
                mgpapaMainItemBean2.setShowtype(26);
                if (mainBean.getTop_channel() != null) {
                    if (this.Z != null) {
                        mainBean.getTop_channel().setBg_color(this.Z);
                    }
                    mgpapaMainItemBean2.setObject(mainBean.getTop_channel());
                }
                mgpapaMainItemBean2.setPage(pnx);
                this.E.add(mgpapaMainItemBean2);
                if (mainBean.getFast_entry() != null && mainBean.getFast_entry().size() > 0) {
                    MgpapaMainItemBean mgpapaMainItemBean3 = new MgpapaMainItemBean();
                    mgpapaMainItemBean3.setShowtype(27);
                    mgpapaMainItemBean3.setObject(mainBean.getFast_entry());
                    mgpapaMainItemBean3.setPage(pnx);
                    this.E.add(mgpapaMainItemBean3);
                }
                MgpapaMainItemBean mgpapaMainItemBean4 = new MgpapaMainItemBean();
                mgpapaMainItemBean4.setShowtype(33);
                mgpapaMainItemBean4.setObject(Float.valueOf(this.f55333v.getResources().getDimension(R.dimen.wdp8)));
                mgpapaMainItemBean4.setPage(pnx);
                this.E.add(mgpapaMainItemBean4);
                List<PAPAHomeBeanV7.HomeBeanDTO> eo_playing = mainBean.getEo_playing();
                if (eo_playing != null && eo_playing.size() > 0) {
                    List<PAPAHomeBeanV7.HomeBeanDTO> listS1 = S1(eo_playing, "22-4-");
                    MgpapaMainItemBean mgpapaMainItemBean5 = new MgpapaMainItemBean();
                    mgpapaMainItemBean5.setPage(pnx);
                    mgpapaMainItemBean5.setShowtype(31);
                    mgpapaMainItemBean5.setObject(new PAPAItemTitle2("大家都在玩"));
                    this.E.add(mgpapaMainItemBean5);
                    MgpapaMainItemBean mgpapaMainItemBean6 = new MgpapaMainItemBean();
                    mgpapaMainItemBean6.setShowtype(33);
                    mgpapaMainItemBean6.setObject(Float.valueOf(this.f55333v.getResources().getDimension(R.dimen.wdp12)));
                    mgpapaMainItemBean6.setPage(pnx);
                    this.E.add(mgpapaMainItemBean6);
                    for (int i11 = 0; i11 < listS1.size(); i11++) {
                        PAPAHomeBeanV7.HomeBeanDTO homeBeanDTOQ1 = Q1(listS1.get(i11), 201, 201);
                        MgpapaMainItemBean mgpapaMainItemBean7 = new MgpapaMainItemBean();
                        mgpapaMainItemBean7.setShowtype(37);
                        mgpapaMainItemBean7.setObject(homeBeanDTOQ1);
                        mgpapaMainItemBean7.setPage(pnx);
                        mgpapaMainItemBean7.setMoreType2(String.valueOf(i11 % 2));
                        this.E.add(mgpapaMainItemBean7);
                        this.V.add(homeBeanDTOQ1);
                    }
                    MgpapaMainItemBean mgpapaMainItemBean8 = new MgpapaMainItemBean();
                    mgpapaMainItemBean8.setShowtype(39);
                    mgpapaMainItemBean8.setPage(pnx);
                    this.E.add(mgpapaMainItemBean8);
                    MgpapaMainItemBean mgpapaMainItemBean9 = new MgpapaMainItemBean();
                    mgpapaMainItemBean9.setShowtype(33);
                    mgpapaMainItemBean9.setObject(Float.valueOf(this.f55333v.getResources().getDimension(R.dimen.wdp26)));
                    mgpapaMainItemBean9.setPage(pnx);
                    this.E.add(mgpapaMainItemBean9);
                }
                if (mainBean.getF_video_ad() != null) {
                    PAPAHomeBeanV7.HomeBeanDTO homeBeanDTOQ2 = Q1(mainBean.getF_video_ad(), 20201, 20201);
                    homeBeanDTOQ2.setPosition("22-11-1");
                    MgpapaMainItemBean mgpapaMainItemBean10 = new MgpapaMainItemBean();
                    mgpapaMainItemBean10.setShowtype(O0(homeBeanDTOQ2) ? 40 : 29);
                    mgpapaMainItemBean10.setObject(homeBeanDTOQ2);
                    mgpapaMainItemBean10.setPage(pnx);
                    this.E.add(mgpapaMainItemBean10);
                    this.V.add(homeBeanDTOQ2);
                    MgpapaMainItemBean mgpapaMainItemBean11 = new MgpapaMainItemBean();
                    mgpapaMainItemBean11.setShowtype(39);
                    mgpapaMainItemBean11.setPage(pnx);
                    this.E.add(mgpapaMainItemBean11);
                    MgpapaMainItemBean mgpapaMainItemBean12 = new MgpapaMainItemBean();
                    mgpapaMainItemBean12.setShowtype(33);
                    mgpapaMainItemBean12.setObject(Float.valueOf(this.f55333v.getResources().getDimension(R.dimen.wdp42)));
                    mgpapaMainItemBean12.setPage(pnx);
                    this.E.add(mgpapaMainItemBean12);
                }
                List<PAPAHomeBeanV7.HomeBeanDTO> jys_like = mainBean.getJys_like();
                if (jys_like != null && jys_like.size() > 0) {
                    List<PAPAHomeBeanV7.HomeBeanDTO> listS2 = S1(jys_like, "22-13-");
                    MgpapaMainItemBean mgpapaMainItemBean13 = new MgpapaMainItemBean();
                    mgpapaMainItemBean13.setShowtype(31);
                    mgpapaMainItemBean13.setObject(new PAPAItemTitle2("像你一样的玩家都喜欢"));
                    mgpapaMainItemBean13.setPage(pnx);
                    this.E.add(mgpapaMainItemBean13);
                    MgpapaMainItemBean mgpapaMainItemBean14 = new MgpapaMainItemBean();
                    mgpapaMainItemBean14.setShowtype(33);
                    mgpapaMainItemBean14.setPage(pnx);
                    mgpapaMainItemBean14.setObject(Float.valueOf(this.f55333v.getResources().getDimension(R.dimen.wdp12)));
                    this.E.add(mgpapaMainItemBean14);
                    for (int i12 = 0; i12 < listS2.size(); i12++) {
                        PAPAHomeBeanV7.HomeBeanDTO homeBeanDTOQ3 = Q1(listS2.get(i12), 203, 203);
                        MgpapaMainItemBean mgpapaMainItemBean15 = new MgpapaMainItemBean();
                        mgpapaMainItemBean15.setShowtype(38);
                        mgpapaMainItemBean15.setObject(homeBeanDTOQ3);
                        mgpapaMainItemBean15.setPage(pnx);
                        mgpapaMainItemBean15.setMoreType2(String.valueOf(i12 % 2));
                        this.E.add(mgpapaMainItemBean15);
                        this.V.add(homeBeanDTOQ3);
                    }
                    MgpapaMainItemBean mgpapaMainItemBean16 = new MgpapaMainItemBean();
                    mgpapaMainItemBean16.setShowtype(39);
                    mgpapaMainItemBean16.setPage(pnx);
                    this.E.add(mgpapaMainItemBean16);
                    MgpapaMainItemBean mgpapaMainItemBean17 = new MgpapaMainItemBean();
                    mgpapaMainItemBean17.setShowtype(33);
                    mgpapaMainItemBean17.setPage(pnx);
                    mgpapaMainItemBean17.setObject(Float.valueOf(this.f55333v.getResources().getDimension(R.dimen.wdp26)));
                    this.E.add(mgpapaMainItemBean17);
                }
                List<PAPAHomeBeanV7.NgSelectionDTO> listU1 = U1(mainBean.getNg_selection(), 204);
                if (listU1 != null && listU1.size() > 0) {
                    MgpapaMainItemBean mgpapaMainItemBean18 = new MgpapaMainItemBean();
                    mgpapaMainItemBean18.setShowtype(31);
                    mgpapaMainItemBean18.setObject(new PAPAItemTitle2("新游精选"));
                    mgpapaMainItemBean18.setPage(pnx);
                    this.E.add(mgpapaMainItemBean18);
                    MgpapaMainItemBean mgpapaMainItemBean19 = new MgpapaMainItemBean();
                    mgpapaMainItemBean19.setShowtype(33);
                    mgpapaMainItemBean19.setPage(pnx);
                    mgpapaMainItemBean19.setObject(Float.valueOf(this.f55333v.getResources().getDimension(R.dimen.wdp24)));
                    this.E.add(mgpapaMainItemBean19);
                    MgpapaMainItemBean mgpapaMainItemBean20 = new MgpapaMainItemBean();
                    mgpapaMainItemBean20.setShowtype(30);
                    mgpapaMainItemBean20.setPage(pnx);
                    mgpapaMainItemBean20.setObject(listU1);
                    this.E.add(mgpapaMainItemBean20);
                    MgpapaMainItemBean mgpapaMainItemBean21 = new MgpapaMainItemBean();
                    mgpapaMainItemBean21.setShowtype(39);
                    mgpapaMainItemBean21.setPage(pnx);
                    this.E.add(mgpapaMainItemBean21);
                    MgpapaMainItemBean mgpapaMainItemBean22 = new MgpapaMainItemBean();
                    mgpapaMainItemBean22.setShowtype(33);
                    mgpapaMainItemBean22.setPage(pnx);
                    mgpapaMainItemBean22.setObject(Float.valueOf(this.f55333v.getResources().getDimension(R.dimen.wdp42)));
                    this.E.add(mgpapaMainItemBean22);
                }
                if (mainBean.getS_video_ad() != null) {
                    PAPAHomeBeanV7.HomeBeanDTO homeBeanDTOQ4 = Q1(mainBean.getS_video_ad(), 20202, 20202);
                    homeBeanDTOQ4.setPosition("22-12-1");
                    MgpapaMainItemBean mgpapaMainItemBean23 = new MgpapaMainItemBean();
                    mgpapaMainItemBean23.setShowtype(O0(homeBeanDTOQ4) ? 40 : 29);
                    mgpapaMainItemBean23.setObject(homeBeanDTOQ4);
                    mgpapaMainItemBean23.setPage(pnx);
                    this.E.add(mgpapaMainItemBean23);
                    this.V.add(homeBeanDTOQ4);
                    MgpapaMainItemBean mgpapaMainItemBean24 = new MgpapaMainItemBean();
                    mgpapaMainItemBean24.setShowtype(39);
                    mgpapaMainItemBean24.setPage(pnx);
                    this.E.add(mgpapaMainItemBean24);
                    MgpapaMainItemBean mgpapaMainItemBean25 = new MgpapaMainItemBean();
                    mgpapaMainItemBean25.setShowtype(33);
                    mgpapaMainItemBean25.setPage(pnx);
                    mgpapaMainItemBean25.setObject(Float.valueOf(this.f55333v.getResources().getDimension(R.dimen.wdp42)));
                    this.E.add(mgpapaMainItemBean25);
                }
                if (mainBean.getRanking_list() != null && !TextUtils.isEmpty(mainBean.getRanking_list().getTxt()) && mainBean.getRanking_list().getList() != null) {
                    List<List<PAPAHomeBeanV7.HomeBeanDTO>> list = mainBean.getRanking_list().getList();
                    for (int i13 = 0; i13 < list.size(); i13++) {
                        List<PAPAHomeBeanV7.HomeBeanDTO> list2 = list.get(i13);
                        if (i13 == 0) {
                            list.set(0, R1(S1(list2, "22-15-"), 20501, 20501));
                        } else if (i13 == 1) {
                            list.set(1, R1(S1(list2, "22-16-"), 20502, 20502));
                        } else if (i13 == 2) {
                            list.set(2, R1(S1(list2, "22-17-"), 20503, 20503));
                        }
                    }
                    mainBean.getRanking_list().setList(list);
                    MgpapaMainItemBean mgpapaMainItemBean26 = new MgpapaMainItemBean();
                    mgpapaMainItemBean26.setShowtype(32);
                    mgpapaMainItemBean26.setObject(mainBean.getRanking_list());
                    mgpapaMainItemBean26.setPage(pnx);
                    this.E.add(mgpapaMainItemBean26);
                    MgpapaMainItemBean mgpapaMainItemBean27 = new MgpapaMainItemBean();
                    mgpapaMainItemBean27.setShowtype(39);
                    mgpapaMainItemBean27.setPage(pnx);
                    this.E.add(mgpapaMainItemBean27);
                    MgpapaMainItemBean mgpapaMainItemBean28 = new MgpapaMainItemBean();
                    mgpapaMainItemBean28.setShowtype(33);
                    mgpapaMainItemBean28.setPage(pnx);
                    mgpapaMainItemBean28.setObject(Float.valueOf(this.f55333v.getResources().getDimension(R.dimen.wdp32)));
                    this.E.add(mgpapaMainItemBean28);
                }
            }
            List<PAPAHomeBeanV7.RecommendListDTO> recommend_list = mainBean.getRecommend_list();
            if (recommend_list != null && recommend_list.size() > 0) {
                for (PAPAHomeBeanV7.RecommendListDTO recommendListDTO : recommend_list) {
                    if (recommendListDTO.getList() != null && recommendListDTO.getList().size() > 0) {
                        MgpapaMainItemBean mgpapaMainItemBean29 = new MgpapaMainItemBean();
                        mgpapaMainItemBean29.setShowtype(i10);
                        mgpapaMainItemBean29.setObject(new PAPAItemTitle2(recommendListDTO.getTitle(), recommendListDTO.getSub_title()));
                        mgpapaMainItemBean29.setPage(pnx);
                        this.E.add(mgpapaMainItemBean29);
                        List<PAPAHomeBeanV7.HomeBeanDTO> listR1 = R1(recommendListDTO.getList(), 206, 206);
                        if (recommendListDTO.getTpl_type().intValue() == 0) {
                            MgpapaMainItemBean mgpapaMainItemBean30 = new MgpapaMainItemBean();
                            mgpapaMainItemBean30.setShowtype(33);
                            mgpapaMainItemBean30.setPage(pnx);
                            mgpapaMainItemBean30.setObject(Float.valueOf(this.f55333v.getResources().getDimension(R.dimen.wdp12)));
                            this.E.add(mgpapaMainItemBean30);
                            List<PAPAHomeBeanV7.HomeBeanDTO> listT1 = T1(listR1);
                            for (int i14 = 0; i14 < listT1.size(); i14++) {
                                PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO = listT1.get(i14);
                                MgpapaMainItemBean mgpapaMainItemBean31 = new MgpapaMainItemBean();
                                mgpapaMainItemBean31.setShowtype(34);
                                mgpapaMainItemBean31.setObject(homeBeanDTO);
                                mgpapaMainItemBean31.setPage(pnx);
                                mgpapaMainItemBean31.setMoreType2(String.valueOf(i14 % 2));
                                this.E.add(mgpapaMainItemBean31);
                                this.V.add(homeBeanDTO);
                            }
                            MgpapaMainItemBean mgpapaMainItemBean32 = new MgpapaMainItemBean();
                            mgpapaMainItemBean32.setShowtype(39);
                            mgpapaMainItemBean32.setPage(pnx);
                            this.E.add(mgpapaMainItemBean32);
                            MgpapaMainItemBean mgpapaMainItemBean33 = new MgpapaMainItemBean();
                            mgpapaMainItemBean33.setShowtype(33);
                            mgpapaMainItemBean33.setObject(Float.valueOf(this.f55333v.getResources().getDimension(R.dimen.wdp26)));
                            mgpapaMainItemBean33.setPage(pnx);
                            this.E.add(mgpapaMainItemBean33);
                        } else {
                            if (recommendListDTO.getTpl_type().intValue() == 1) {
                                MgpapaMainItemBean mgpapaMainItemBean34 = new MgpapaMainItemBean();
                                mgpapaMainItemBean34.setShowtype(33);
                                mgpapaMainItemBean34.setObject(Float.valueOf(this.f55333v.getResources().getDimension(R.dimen.wdp24)));
                                mgpapaMainItemBean34.setPage(pnx);
                                this.E.add(mgpapaMainItemBean34);
                                List<PAPAHomeBeanV7.HomeBeanDTO> listT2 = T1(listR1);
                                MgpapaMainItemBean mgpapaMainItemBean35 = new MgpapaMainItemBean();
                                mgpapaMainItemBean35.setShowtype(35);
                                mgpapaMainItemBean35.setObject(listT2);
                                mgpapaMainItemBean35.setPage(pnx);
                                this.E.add(mgpapaMainItemBean35);
                                this.V.addAll(listT2);
                                MgpapaMainItemBean mgpapaMainItemBean36 = new MgpapaMainItemBean();
                                mgpapaMainItemBean36.setShowtype(39);
                                mgpapaMainItemBean36.setPage(pnx);
                                this.E.add(mgpapaMainItemBean36);
                                MgpapaMainItemBean mgpapaMainItemBean37 = new MgpapaMainItemBean();
                                mgpapaMainItemBean37.setShowtype(33);
                                mgpapaMainItemBean37.setPage(pnx);
                                mgpapaMainItemBean37.setObject(Float.valueOf(this.f55333v.getResources().getDimension(R.dimen.wdp42)));
                                this.E.add(mgpapaMainItemBean37);
                            } else if (recommendListDTO.getTpl_type().intValue() == 2) {
                                MgpapaMainItemBean mgpapaMainItemBean38 = new MgpapaMainItemBean();
                                mgpapaMainItemBean38.setShowtype(33);
                                mgpapaMainItemBean38.setPage(pnx);
                                mgpapaMainItemBean38.setObject(Float.valueOf(this.f55333v.getResources().getDimension(R.dimen.wdp24)));
                                this.E.add(mgpapaMainItemBean38);
                                List<PAPAHomeBeanV7.HomeBeanDTO> listT3 = T1(listR1);
                                MgpapaMainItemBean mgpapaMainItemBean39 = new MgpapaMainItemBean();
                                mgpapaMainItemBean39.setShowtype(36);
                                mgpapaMainItemBean39.setPage(pnx);
                                mgpapaMainItemBean39.setObject(listT3.get(0));
                                this.E.add(mgpapaMainItemBean39);
                                this.V.add(listT3.get(0));
                                MgpapaMainItemBean mgpapaMainItemBean40 = new MgpapaMainItemBean();
                                mgpapaMainItemBean40.setShowtype(39);
                                mgpapaMainItemBean40.setPage(pnx);
                                this.E.add(mgpapaMainItemBean40);
                                MgpapaMainItemBean mgpapaMainItemBean41 = new MgpapaMainItemBean();
                                mgpapaMainItemBean41.setShowtype(33);
                                mgpapaMainItemBean41.setPage(pnx);
                                mgpapaMainItemBean41.setObject(Float.valueOf(this.f55333v.getResources().getDimension(R.dimen.wdp42)));
                                this.E.add(mgpapaMainItemBean41);
                            }
                            i10 = 31;
                        }
                        i10 = 31;
                    }
                }
            }
            this.D.P(this.E);
            if (pnx == 1) {
                h1(null, 0);
                return;
            }
            com.join.mgps.Util.z0 z0Var = this.f50191c;
            if (z0Var != null) {
                z0Var.postDelayed(new m(), 200L);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Background
    void L0(int messageId, String messageType) {
        try {
            this.f55300h.H(RequestBeanUtil.getInstance(this.f55333v).getIgnoreMessageRequest(AccountUtil_.getInstance_(this.f55333v).getAccountData().getUid(), messageId, messageType));
        } catch (Exception unused) {
        }
    }

    void M1(List<RecomDatabeanBusiness> collectionBeanSubList) {
        try {
            if (this.f55338z == null || collectionBeanSubList == null || collectionBeanSubList.size() <= 0) {
                return;
            }
            for (RecomDatabeanBusiness recomDatabeanBusiness : collectionBeanSubList) {
                List<AppBeanMain> sub = recomDatabeanBusiness.getSub();
                if (sub != null && sub.size() != 0) {
                    boolean z10 = false;
                    AppBean game_info = sub.get(0).getGame_info();
                    if (game_info != null) {
                        if (game_info.getMod_info() != null) {
                            ModInfoBean mod_info = game_info.getMod_info();
                            DownloadTask downloadTask = this.f55338z.get(mod_info.getMain_game_id());
                            boolean z11 = downloadTask != null && downloadTask.getStatus() == 5;
                            DownloadTask downloadTask2 = this.f55338z.get(mod_info.getMod_game_id());
                            if (downloadTask2 != null && downloadTask2.getStatus() == 5) {
                                z10 = true;
                            }
                            if (z10 && z11) {
                                if (downloadTask.getCrc_link_type_val().equals(game_info.getCrc_sign_id())) {
                                    recomDatabeanBusiness.setDownloadTask(downloadTask);
                                }
                            } else if (z10) {
                                if (game_info.getMod_info() != null && downloadTask2.getRef_crc_sign_id().equals(game_info.getCrc_sign_id())) {
                                    recomDatabeanBusiness.setDownloadTask(downloadTask2);
                                }
                            } else if (!z11) {
                                DownloadTask downloadTask3 = this.f55338z.get(mod_info.getMod_game_id());
                                if (downloadTask3 == null) {
                                    downloadTask3 = this.f55338z.get(game_info.getCrc_sign_id());
                                }
                                if (downloadTask3 != null && (downloadTask3.getCrc_link_type_val().equals(game_info.getCrc_sign_id()) || downloadTask3.getRef_crc_sign_id().equals(game_info.getCrc_sign_id()))) {
                                    recomDatabeanBusiness.setDownloadTask(downloadTask3);
                                }
                            } else if (downloadTask.getCrc_link_type_val().equals(game_info.getCrc_sign_id())) {
                                recomDatabeanBusiness.setDownloadTask(downloadTask);
                            }
                        } else {
                            DownloadTask downloadTask4 = this.f55338z.get(game_info.getCrc_sign_id());
                            if (downloadTask4 != null && downloadTask4.getCrc_link_type_val().equals(game_info.getCrc_sign_id())) {
                                recomDatabeanBusiness.setDownloadTask(downloadTask4);
                            }
                        }
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void N1() {
        XRecyclerView2 xRecyclerView2 = this.f55293e;
        if (xRecyclerView2 != null) {
            xRecyclerView2.stopRefresh();
            this.f55293e.stopLoadMore();
        }
    }

    @Receiver(actions = {p5.a.B})
    void P() throws Throwable {
        if (!this.I) {
            this.O = "m1";
            this.P = 1;
            this.X = true;
            this.f55293e.reset();
            X0(this.O, this.P);
            I0();
        }
        this.T.initStat(this.f55333v);
    }

    @UiThread
    void P0() {
        if (this.W == null) {
            this.W = new Handler();
        }
        this.W.postDelayed(new Runnable() { // from class: com.join.mgps.activity.m8
            @Override // java.lang.Runnable
            public final void run() {
                this.f57491b.V0();
            }
        }, 1000L);
    }

    @UiThread
    void P1() {
    }

    @UiThread
    void Q0() {
        SimpleDraweeView simpleDraweeView = this.f55314n;
        if (simpleDraweeView == null || this.f55329s2 || this.f55331t2 || simpleDraweeView.getVisibility() != 0) {
            return;
        }
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.f55314n, "translationX", 0.0f, this.f55333v.getResources().getDimension(R.dimen.wdp113)).setDuration(250L);
        duration.addListener(new d());
        duration.start();
    }

    @Click
    void R0() {
        try {
            if (com.join.mgps.Util.t2.i(this.f55297f2.getMain().getPic_remote())) {
                IntentUtil.getInstance().intentActivity(this.f55333v, this.f55297f2.getSub().get(0).getIntentDataBean());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Click
    void S0() {
        TextView textView = (TextView) this.f55325r.getCurrentView();
        if (textView == null || TextUtils.isEmpty(textView.getText().toString())) {
            IntentUtil.getInstance().goSearchHintActivity(this.f55333v);
        } else {
            SearchListActivity1_.intent(this.f55333v).e(textView.getText().toString()).d(false).a(0).start();
            com.papa.sim.statistic.t.l(this.f55333v).n1(Event.clickSearchButton, textView.getText().toString(), ExtFrom.home.name());
        }
        this.f55327r2 = null;
    }

    @Background
    void W0() throws Throwable {
        String strD = this.A.homeAllDataV3().d();
        PAPAHomeBeanV7 pAPAHomeBeanV7 = com.join.mgps.Util.t2.i(strD) ? (PAPAHomeBeanV7) JsonMapper.getInstance().fromJson(strD, PAPAHomeBeanV7.class) : null;
        if (pAPAHomeBeanV7 != null) {
            K1(pAPAHomeBeanV7, "m1", 1, false);
            com.join.mgps.Util.g1.c("显示主界面   " + System.currentTimeMillis());
            showMain();
            this.f55336x = false;
            if (pAPAHomeBeanV7.getTop_channel() != null) {
                this.U = pAPAHomeBeanV7.getTop_channel().getBg_color();
            } else {
                this.U = "";
            }
            n1();
        } else {
            com.join.mgps.Util.g1.c("数据库没有数据不显示主界面   " + System.currentTimeMillis());
            this.f55336x = true;
        }
        Y0();
    }

    /* JADX WARN: Code duplicated, block: B:60:0x0157  */
    @Background
    void X0(String m10, int pnx) throws Throwable {
        PAPAHomeBeanV7 data;
        Throwable th;
        Exception e10;
        com.join.mgps.Util.g1.c("开始加载数据   " + System.currentTimeMillis());
        String uid = AccountUtil_.getInstance_(this.f55333v).getUid();
        if (this.f55334v1 || !com.join.android.app.common.utils.m.j(this.f55333v) || this.I || uid == null || TextUtils.equals(uid, "0")) {
            if (this.f55336x && pnx == 1 && !this.I && !this.f55334v1 && !TextUtils.equals(uid, "0")) {
                showLodingFailed();
            }
            N1();
            return;
        }
        this.I = true;
        if (this.P == 1 && !"refresh".equals(m10)) {
            showLoding();
        }
        PAPAHomeBeanV7 pAPAHomeBeanV7 = null;
        try {
            UserInfo accountData = AccountUtil_.getInstance_(this.f55333v).getAccountData();
            RequestModel requestModel = new RequestModel();
            requestModel.setDefault(this.f55333v);
            LuckHistoryrequest luckHistoryrequest = new LuckHistoryrequest();
            luckHistoryrequest.setGameId(this.f55332u);
            luckHistoryrequest.setPage(pnx);
            luckHistoryrequest.setUid(accountData.getUid());
            ArrayList arrayList = new ArrayList();
            arrayList.add("HOME_FAST_ENTRY_FOR_PC");
            luckHistoryrequest.setPositionMark(arrayList);
            requestModel.setArgs(luckHistoryrequest);
            ResponseModel<PAPAHomeBeanV7> responseModelBody = com.join.mgps.rpc.impl.i.P0().N0().p1(requestModel.makeSign()).execute().body();
            com.join.mgps.Util.g1.c("开始加载数据完成   " + System.currentTimeMillis());
            if (responseModelBody == null || responseModelBody.getCode() != 200 || responseModelBody.getData() == null) {
                this.X = false;
                c1();
                if (this.f55336x && pnx == 1) {
                    showLodingFailed();
                } else {
                    showMain();
                }
            } else {
                data = responseModelBody.getData();
                try {
                    try {
                        if (data.isEmpty()) {
                            this.X = false;
                            c1();
                        } else {
                            this.X = true;
                            this.P = pnx + 1;
                        }
                        if (pnx == 1) {
                            o1(data);
                            if (data.getTop_channel() != null) {
                                this.U = data.getTop_channel().getBg_color();
                            } else {
                                this.U = "";
                            }
                            n1();
                            X0(this.O, this.P);
                        }
                        showMain();
                        pAPAHomeBeanV7 = data;
                    } catch (Exception e11) {
                        e10 = e11;
                        e10.printStackTrace();
                        this.X = false;
                        c1();
                        if (this.f55336x && pnx == 1) {
                            showLodingFailed();
                        }
                        N1();
                        this.I = false;
                        if (data != null) {
                            K1(data, m10, pnx, true);
                            return;
                        }
                        return;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    N1();
                    this.I = false;
                    if (data != null) {
                        K1(data, m10, pnx, true);
                    }
                    throw th;
                }
            }
            N1();
            this.I = false;
            if (pAPAHomeBeanV7 != null) {
                K1(pAPAHomeBeanV7, m10, pnx, true);
            }
        } catch (Exception e12) {
            data = null;
            e10 = e12;
        } catch (Throwable th3) {
            data = null;
            th = th3;
            N1();
            this.I = false;
            if (data != null) {
                K1(data, m10, pnx, true);
            }
            throw th;
        }
    }

    @UiThread
    void Y0() throws Throwable {
        X0("m1", 1);
    }

    public void Z0() throws Throwable {
        l1();
    }

    @Click
    void a1() {
        this.f55293e.smoothScrollToPosition(0);
        CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) this.f55330t.getLayoutParams()).getBehavior();
        if (behavior instanceof AppBarLayout.Behavior) {
            AppBarLayout.Behavior behavior2 = (AppBarLayout.Behavior) behavior;
            if (behavior2.getTopAndBottomOffset() != 0) {
                behavior2.setTopAndBottomOffset(0);
            }
        }
    }

    @AfterViews
    void afterViews() throws Throwable {
        this.f55300h = com.join.mgps.rpc.impl.d.O1();
        com.join.mgps.Util.j0.a().d(this);
        this.f55333v = getActivity();
        this.H = System.currentTimeMillis();
        this.R = new com.join.android.app.component.video.h(this.f55293e, "PapaMainV3Fragment");
        this.S = (MGMainActivity) getActivity();
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.L.getLayoutParams();
        layoutParams.topMargin = com.join.android.app.common.utils.q.v(this.f55333v);
        this.L.setLayoutParams(layoutParams);
        M0();
        W0();
        I0();
        E0();
        D0();
    }

    public void autoPlay() {
    }

    @UiThread
    void b1() {
        com.join.android.app.common.manager.a.h().j(this.f55333v, this.f55295f, 1);
    }

    @UiThread
    void c1() {
        XRecyclerView2 xRecyclerView2 = this.f55293e;
        if (xRecyclerView2 != null) {
            xRecyclerView2.setNoMore();
        }
        P0();
    }

    void d1() {
        com.join.mgps.adapter.o5 o5Var = this.D;
        if (o5Var != null) {
            o5Var.notifyDataSetChanged();
        }
    }

    @UiThread
    @Receiver(actions = {"android.net.wifi.WIFI_STATE_CHANGED", "android.net.wifi.STATE_CHANGE", "android.net.conn.CONNECTIVITY_CHANGE", "android.net.wifi.SCAN_RESULTS"})
    void e1(Intent intent) {
        if (this.f55293e != null && !this.f55310l1 && com.join.android.app.common.utils.m.j(this.f55333v)) {
            this.X = true;
            this.f55293e.setNoMoreView(false);
        }
        this.f55310l1 = com.join.android.app.common.utils.m.j(this.f55333v);
    }

    public void f1() {
    }

    @Receiver(actions = {p5.a.G, p5.a.I})
    void g1(@Receiver.Extra("gameData") CollectionBeanSub sub) {
        if (sub != null) {
            PurchasedListTable purchasedListTableN = t6.e0.o().n(sub.getGame_id());
            if (purchasedListTableN == null) {
                purchasedListTableN = new PurchasedListTable();
            }
            purchasedListTableN.setGame_id(sub.getGame_id());
            t6.e0.o().m(purchasedListTableN);
        }
        if (this.D == null || this.f55293e.isComputingLayout()) {
            return;
        }
        this.D.notifyDataSetChanged();
    }

    @Receiver(actions = {"com.broadcast.bespeak.sussess"})
    void k1(Intent intent) {
        if (intent != null) {
            String stringExtra = intent.getStringExtra("gameid");
            if (com.join.mgps.Util.t2.i(stringExtra)) {
                I1(stringExtra);
            }
        }
    }

    @UiThread
    void m1(PAPAHomeBeanV7.HomeBeanDTO item) {
        item.setRequesting(false);
        this.D.notifyDataSetChanged();
    }

    @UiThread
    void n1() {
        int measuredHeight;
        FrameLayout frameLayout = this.f55322q;
        if (frameLayout != null && (measuredHeight = frameLayout.getMeasuredHeight()) > 0) {
            double dimension = (((double) measuredHeight) * 1.0d) / ((double) (measuredHeight + this.f55333v.getResources().getDimension(R.dimen.wdp300)));
            String strW1 = UtilsMy.W1(this.U);
            this.U = strW1;
            this.Z = UtilsMy.a0(strW1, "#F7F8F9", dimension);
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setShape(0);
            gradientDrawable.setOrientation(GradientDrawable.Orientation.TOP_BOTTOM);
            gradientDrawable.setColors(new int[]{Color.parseColor(this.U), Color.parseColor(this.Z)});
            gradientDrawable.setGradientType(0);
            this.f55322q.setBackground(gradientDrawable);
        }
    }

    @UiThread
    void notifyDataSetChanged() {
    }

    @Background
    void o1(PAPAHomeBeanV7 mainBean) {
        this.A.homeAllDataV3().g(JsonMapper.toJsonString(mainBean));
        com.join.mgps.Util.g1.c("保存数据完成   " + System.currentTimeMillis());
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(@NonNull Context context) {
        super.onAttach(context);
        if (getActivity() instanceof MGMainActivity) {
            this.J = (MGMainActivity) getActivity();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        com.join.android.app.component.video.h hVar;
        com.join.mgps.Util.j0.a().e(this);
        this.N = true;
        MGMainActivity mGMainActivity = this.S;
        if (mGMainActivity != null && mGMainActivity.getPositionNum() == 3 && (hVar = this.R) != null) {
            hVar.x();
        }
        super.onDestroy();
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0047  */
    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.r downloadTaskEvent) {
        DownloadTask downloadTaskA = downloadTaskEvent.a();
        int iC = downloadTaskEvent.c();
        if (iC == 2) {
            updateUI(downloadTaskA, 1);
        } else if (iC == 3) {
            updateUI(downloadTaskA, 2);
        } else if (iC == 5) {
            updateUI(downloadTaskA, 5);
        } else if (iC == 6) {
            updateUI(downloadTaskA, 6);
        } else if (iC == 7) {
            updateUI(downloadTaskA, 3);
        } else if (iC == 8) {
            Map<String, DownloadTask> map = this.f55338z;
            if (map != null && !map.isEmpty()) {
                updateProgressPartly();
            }
        } else if (iC != 48) {
            switch (iC) {
                case 10:
                    updateUI(downloadTaskA, 7);
                    break;
                case 11:
                    updateUI(downloadTaskA, 5);
                    break;
                case 12:
                    updateUI(downloadTaskA, 8);
                    break;
                case 13:
                    updateUI(downloadTaskA, 9);
                    break;
            }
        } else {
            updateUI(downloadTaskA, 5);
        }
        com.join.mgps.Util.h1.e("receiveStart: " + downloadTaskEvent.c());
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean hidden) throws Throwable {
        super.onHiddenChanged(hidden);
        if (hidden) {
            com.join.android.app.component.video.h hVar = this.R;
            if (hVar != null) {
                hVar.y();
                return;
            }
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        com.join.mgps.Util.g1.d("notify time", com.join.mgps.Util.e0.C(jCurrentTimeMillis));
        long j10 = this.H;
        if (jCurrentTimeMillis - j10 > bg.f74510s && j10 != 0) {
            long jCurrentTimeMillis2 = System.currentTimeMillis();
            this.H = jCurrentTimeMillis2;
            com.join.mgps.Util.g1.d("notify time lastUpdateTime", com.join.mgps.Util.e0.C(jCurrentTimeMillis2));
            this.M = true;
            X0(this.O, this.P);
        } else if (j10 == 0) {
            this.H = System.currentTimeMillis();
            com.join.mgps.Util.g1.d("notify time lastUpdateTime2", com.join.mgps.Util.e0.C(jCurrentTimeMillis));
        }
        s1(false);
        v0();
        com.join.android.app.component.video.h hVar2 = this.R;
        if (hVar2 != null) {
            hVar2.D();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        com.join.android.app.component.video.h hVar;
        super.onPause();
        this.R1 = false;
        MGMainActivity mGMainActivity = this.S;
        if (mGMainActivity == null || mGMainActivity.getPositionNum() != 3 || (hVar = this.R) == null) {
            return;
        }
        hVar.y();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        List<MgpapaMainItemBean> list;
        com.join.android.app.component.video.h hVar;
        super.onResume();
        this.R1 = true;
        setUserVisibleHint(true);
        List<DownloadTask> listD = q5.f.M().d();
        this.f55335w = listD;
        if (listD == null || listD.size() <= 0) {
            this.f55335w = new ArrayList();
        } else {
            for (DownloadTask downloadTask : this.f55335w) {
                this.f55338z.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
        M1(this.f55337y);
        MGMainActivity mGMainActivity = this.S;
        if (mGMainActivity != null && mGMainActivity.getPositionNum() == 3 && (hVar = this.R) != null) {
            hVar.D();
        }
        if (this.f55308k2 && (list = this.E) != null && list.size() > 0) {
            h1(null, 0);
        }
        s1(true);
        v0();
        h1(null, 0);
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        this.f55292d2 = getResources().getDimensionPixelOffset(R.dimen.round_pointmagin_l_r_size);
        this.f55294e2 = getResources().getDimensionPixelOffset(R.dimen.round_point_size);
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        setUserVisibleHint(false);
    }

    @Click
    void relodingimag() throws Throwable {
        showLoding();
        this.O = "m1";
        this.P = 1;
        this.X = true;
        X0("m1", 1);
    }

    @UiThread
    void s0(PAPAHomeBeanV7.HomeBeanDTO item) {
    }

    @Click
    void search() {
        IntentUtil.getInstance().goSearchHintActivity(this.f55333v, "");
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(getActivity());
    }

    @UiThread
    void showLoding() {
        com.join.mgps.Util.g1.c("显示加载中");
        LinearLayout linearLayout = this.f55305j;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.f55307k;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        XRecyclerView2 xRecyclerView2 = this.f55293e;
        if (xRecyclerView2 != null) {
            xRecyclerView2.setVisibility(8);
        }
    }

    @UiThread
    void showLodingFailed() {
        com.join.mgps.Util.g1.c("显示加载失败");
        LinearLayout linearLayout = this.f55307k;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.f55305j;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        XRecyclerView2 xRecyclerView2 = this.f55293e;
        if (xRecyclerView2 != null) {
            xRecyclerView2.setVisibility(8);
        }
        FrameLayout frameLayout = this.f55322q;
        if (frameLayout != null) {
            frameLayout.setVisibility(8);
        }
    }

    @UiThread
    void showMain() {
        com.join.mgps.Util.g1.c("显示主界面main");
        LinearLayout linearLayout = this.f55307k;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        LinearLayout linearLayout2 = this.f55305j;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        XRecyclerView2 xRecyclerView2 = this.f55293e;
        if (xRecyclerView2 != null) {
            xRecyclerView2.setVisibility(0);
        }
        FrameLayout frameLayout = this.f55322q;
        if (frameLayout != null) {
            frameLayout.setVisibility(0);
        }
        if (this.M) {
            this.M = false;
            TextView textView = this.f55302i;
            if (textView != null) {
                textView.setVisibility(0);
            }
            K0();
        }
    }

    @UiThread
    void showMessage(String message) {
        com.join.mgps.Util.a3.b(this.f55333v).d(message);
    }

    @Background
    void t0(String gameId) {
        String str;
        if (com.join.android.app.common.utils.m.j(this.f55333v)) {
            UserInfo accountData = AccountUtil_.getInstance_(this.f55333v).getAccountData();
            int uid = accountData != null ? accountData.getUid() : 0;
            try {
                PackageInfo packageInfo = this.f55333v.getPackageManager().getPackageInfo(this.f55333v.getPackageName(), 0);
                str = packageInfo.versionCode + "_" + packageInfo.versionName;
            } catch (PackageManager.NameNotFoundException e10) {
                e10.printStackTrace();
                str = "";
            }
            RequestdetialFolowAndBeSpeak requestdetialFolowAndBeSpeak = new RequestdetialFolowAndBeSpeak();
            requestdetialFolowAndBeSpeak.setApp_ver(str);
            requestdetialFolowAndBeSpeak.setGame_id(gameId);
            requestdetialFolowAndBeSpeak.setUid(uid);
            requestdetialFolowAndBeSpeak.setMobile(accountData.getMobile());
            ResultMainBean resultMainBeanM0 = this.f55300h.M0(RequestBeanUtil.getInstance(this.f55333v).getDetialFollowAnd(requestdetialFolowAndBeSpeak));
            if (resultMainBeanM0 == null || resultMainBeanM0.getFlag() != 1) {
                return;
            }
            I1(gameId);
        }
    }

    void u0() {
        y1();
        this.f55321p2 = 0;
        this.f55303i1 = 0;
        this.f55334v1 = true;
        int i10 = 0;
        for (MgpapaMainItemBean mgpapaMainItemBean : this.E) {
            if (mgpapaMainItemBean.getPage() == 1) {
                i10++;
                if (mgpapaMainItemBean.getShowtype() == 39) {
                    this.f55321p2++;
                } else if (mgpapaMainItemBean.getShowtype() == 34 && mgpapaMainItemBean.getShowtype() == 35 && mgpapaMainItemBean.getShowtype() == 36) {
                    this.f55303i1++;
                }
            }
        }
        LinearLayoutManager linearLayoutManager = (LinearLayoutManager) this.f55293e.getLayoutManager();
        if (linearLayoutManager != null) {
            a aVar = new a(this.f55333v);
            aVar.setTargetPosition(i10);
            linearLayoutManager.startSmoothScroll(aVar);
        }
        CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) this.f55330t.getLayoutParams()).getBehavior();
        if (behavior instanceof AppBarLayout.Behavior) {
            AppBarLayout.Behavior behavior2 = (AppBarLayout.Behavior) behavior;
            if (behavior2.getTopAndBottomOffset() != 0) {
                behavior2.setTopAndBottomOffset(0);
            }
        }
        if (this.W == null) {
            this.W = new Handler();
        }
        this.f55320p1 = true;
        this.W.postDelayed(new Runnable() { // from class: com.join.mgps.activity.k8
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                this.f57386b.T0();
            }
        }, Math.max(1000, this.f55293e.getLastVisiblePosition() * 10));
    }

    void updateUI(DownloadTask downloadTask, int from) {
        if (downloadTask != null) {
            switch (from) {
                case 1:
                case 2:
                case 7:
                case 8:
                case 9:
                    receiveStart(downloadTask);
                    break;
                case 3:
                    receiveDelete(downloadTask);
                    break;
                case 5:
                    receiveSuccess(downloadTask);
                    break;
                case 6:
                    receiveError(downloadTask);
                    break;
            }
        }
    }

    @Background
    void v0() {
        PapaHomeCheckNewDataBean data;
        try {
            this.f55323q1 = System.currentTimeMillis();
            RequestModel requestModel = new RequestModel();
            requestModel.setDefault(this.f55333v);
            requestModel.setArgs(new RequestOnlineCouponArgs());
            ResponseModel<PapaHomeCheckNewDataBean> responseModelBody = com.join.mgps.rpc.impl.i.P0().N0().e1(requestModel.makeSign()).execute().body();
            if (responseModelBody == null || responseModelBody.getCode() != 200 || (data = responseModelBody.getData()) == null || data.getState() != 1) {
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putBoolean("homeHasNewData", true);
            this.J.callHomePageNewData(bundle);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void v1() {
        com.join.android.app.common.manager.a.h().j(this.f55333v, this.f55298g, 1);
    }

    @UiThread
    void w0(PAPAHomeBeanV7.HomeBeanDTO item) {
        DownloadTask downloadTask = item.getDownloadTask();
        CollectionBeanSub gameBean = item.getGameBean();
        if (gameBean.getPlugin_num().equals(ConstantIntEnum.H5.value() + "")) {
            IntentDateBean intentDateBean = new IntentDateBean();
            intentDateBean.setLink_type(4);
            intentDateBean.setLink_type_val(gameBean.getDown_url_remote());
            if (downloadTask == null) {
                downloadTask = gameBean.getDownloadTask();
            }
            UtilsMy.j3(downloadTask, this.f55333v);
            IntentUtil.getInstance().intentActivity(this.f55333v, intentDateBean);
            return;
        }
        if (downloadTask == null) {
            if (UtilsMy.p0(gameBean.getTag_info())) {
                if (gameBean.getMod_info() != null) {
                    boolean zE = com.join.android.app.common.utils.g.t0(this.f55333v).e(this.f55333v, gameBean.getPackageName());
                    boolean zK = com.join.mgps.va.overmind.i.q().K(gameBean.getPackageName());
                    if (zE || zK) {
                        com.join.android.app.common.utils.g.t0(this.f55333v);
                        APKUtils.a0(this.f55333v, gameBean.getMod_info(), gameBean.getExtBean());
                        return;
                    }
                } else if (com.join.android.app.common.utils.g.t0(this.f55333v).e(this.f55333v, gameBean.getPackageName())) {
                    APKUtils.a aVarN = com.join.android.app.common.utils.g.t0(this.f55333v).n(this.f55333v, gameBean.getPackageName());
                    if (!com.join.mgps.Util.t2.i(gameBean.getVer()) || aVarN.d() >= Integer.parseInt(gameBean.getVer())) {
                        com.join.android.app.common.utils.g.t0(this.f55333v);
                        APKUtils.f0(this.f55333v, gameBean.getPackageName());
                        return;
                    }
                }
            }
            if (UtilsMy.z0(gameBean.getPay_tag_info(), gameBean.getCrc_sign_id()) > 0) {
                UtilsMy.z4(this.f55333v, gameBean.getCrc_sign_id());
                return;
            } else {
                UtilsMy.b1(this.f55333v, gameBean);
                return;
            }
        }
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        downloadTask.set_from(item.get_from());
        downloadTask.set_from_type(item.get_from_type());
        if (UtilsMy.x0(gameBean.getPay_tag_info(), gameBean.getCrc_sign_id()) > 0) {
            status = 43;
        }
        if (status != 0) {
            if (status == 13) {
                com.php25.PDownload.d.l(this.f55333v, downloadTask);
                return;
            }
            if (status != 2) {
                if (status != 3) {
                    if (status == 5) {
                        UtilsMy.k4(this.f55333v, downloadTask);
                        return;
                    }
                    if (status != 6) {
                        if (status != 7) {
                            if (status == 42) {
                                UtilsMy.O4(this.f55333v, downloadTask);
                                return;
                            }
                            if (status != 43) {
                                switch (status) {
                                    case 9:
                                        if (!com.join.android.app.common.utils.m.j(this.f55333v)) {
                                            com.join.mgps.Util.a3.b(this.f55333v).d("无网络连接");
                                        } else {
                                            UtilsMy.X2(this.f55333v, downloadTask);
                                        }
                                        break;
                                    case 11:
                                        UtilsMy.w4(downloadTask, this.f55333v);
                                        break;
                                }
                                return;
                            }
                        }
                    }
                }
                com.php25.PDownload.d.c(downloadTask, this.f55333v);
                return;
            }
            com.php25.PDownload.d.i(downloadTask);
            return;
        }
        if (UtilsMy.z0(gameBean.getPay_tag_info(), gameBean.getCrc_sign_id()) > 0) {
            UtilsMy.z4(this.f55333v, gameBean.getCrc_sign_id());
            return;
        }
        UtilsMy.z1(downloadTask, gameBean);
        if (UtilsMy.o1(this.f55333v, downloadTask)) {
            return;
        }
        if (gameBean.getDown_status() == 5) {
            UtilsMy.l1(this.f55333v, downloadTask);
        } else {
            UtilsMy.U0(this.f55333v, downloadTask, gameBean.getTp_down_url(), gameBean.getOther_down_switch(), gameBean.getCdn_down_switch());
        }
    }

    public void x1(String lastPosition) {
        this.f55327r2 = lastPosition;
    }

    @Background
    void y1() {
        try {
            RequestModel requestModel = new RequestModel();
            requestModel.setDefault(this.f55333v);
            requestModel.setArgs(new RequestOnlineCouponArgs());
            com.join.mgps.rpc.impl.i.P0().N0().A1(requestModel.makeSign()).execute().body();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Click
    void z0() {
        ArrayList<SScrollingTxtBeanV2> arrayList = this.f55319p0;
        if (arrayList == null || arrayList.size() <= 0) {
            IntentUtil.getInstance().goSearchHintActivity(this.f55333v);
        } else {
            ViewFlipper viewFlipper = this.f55325r;
            if (viewFlipper != null && viewFlipper.getCurrentView() != null && !TextUtils.isEmpty(((TextView) this.f55325r.getCurrentView()).getText())) {
                String string = ((TextView) this.f55325r.getCurrentView()).getText().toString();
                int i10 = 0;
                while (true) {
                    if (i10 >= this.f55319p0.size()) {
                        i10 = 0;
                        break;
                    } else if (TextUtils.equals(string, this.f55319p0.get(i10).getWord())) {
                        break;
                    } else {
                        i10++;
                    }
                }
                if (i10 >= 0) {
                    ArrayList<SScrollingTxtBeanV2> arrayList2 = this.f55319p0;
                    List<SScrollingTxtBeanV2> listSubList = arrayList2.subList(i10, arrayList2.size());
                    List<SScrollingTxtBeanV2> listSubList2 = this.f55319p0.subList(0, i10);
                    ArrayList<SScrollingTxtBeanV2> arrayList3 = new ArrayList<>();
                    arrayList3.addAll(listSubList);
                    arrayList3.addAll(listSubList2);
                    this.f55319p0 = arrayList3;
                }
            }
            IntentUtil.getInstance().goSearchHintActivity(this.f55333v, this.f55319p0, this.f55289b1);
        }
        this.f55327r2 = null;
    }
}
