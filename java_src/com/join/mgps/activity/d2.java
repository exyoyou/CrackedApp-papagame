package com.join.mgps.activity;

import android.content.ClipboardManager;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.haima.hmcp.Constants;
import com.haima.hmcp.utils.HmIMEManager;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.Util.AESUtils;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.gamedetail.GamedetailVideoMainActivity;
import com.join.mgps.activity.gamedetail.GamedetailVideoMainActivity_;
import com.join.mgps.adapter.x1.n1;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.db.tables.PurchasedListTable;
import com.join.mgps.dto.BtGameWelfare;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CommentAllListBean;
import com.join.mgps.dto.CommentBaseBean;
import com.join.mgps.dto.CommentPraiseBean;
import com.join.mgps.dto.CommentResponse;
import com.join.mgps.dto.CommentTokenBean;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.GamePariseRequest;
import com.join.mgps.dto.GameScore;
import com.join.mgps.dto.GamedetialModleFourBean;
import com.join.mgps.dto.GiftPackageDataInfoBean;
import com.join.mgps.dto.GiftPackageDataOperationBean;
import com.join.mgps.dto.GiftPackageOperationBean;
import com.join.mgps.dto.InformationCommentBean;
import com.join.mgps.dto.PariseBackData;
import com.join.mgps.dto.RequestCommentpraiseArgs;
import com.join.mgps.dto.RequestGameIdArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.RequestdetialFolowAndBeSpeak;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.ShareBean;
import com.join.mgps.dto.TipBean;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.enums.Dtype;
import com.join.mgps.pref.PrefDef_;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.Where;
import com.sigmob.sdk.base.mta.PointType;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
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

/* JADX INFO: loaded from: classes4.dex */
@EFragment(R.layout.gamedetial_modle_four_activity)
public class d2 extends Fragment implements com.join.mgps.callbacks.p {

    /* JADX INFO: renamed from: p2, reason: collision with root package name */
    private static final String f56907p2 = "GameDetialModleFourAct";

    @ViewById
    LinearLayout A;

    @ViewById
    LinearLayout B;

    @ViewById
    Button C;

    @ViewById
    RelativeLayout D;

    @ViewById
    SimpleDraweeView E;

    @ViewById
    TextView F;

    @ViewById
    NestedScrollView G;
    private DownloadTask H;
    com.join.mgps.rpc.e I;
    com.join.mgps.rpc.i J;
    com.join.mgps.rpc.f K;
    String L;
    ExtBean M;
    boolean N;
    private com.join.mgps.adapter.x1 O;
    private GamedetialModleFourBean P;
    private LinearLayoutManager Q;
    private com.join.mgps.customview.t R;
    private List<CommentBaseBean> R1;
    private UserInfo S;
    private com.join.mgps.customview.t T;
    private boolean U;
    com.join.mgps.recycler.e V;
    private String V1;
    com.join.mgps.callbacks.j W;
    com.join.android.app.component.video.c X;

    /* JADX INFO: renamed from: a2, reason: collision with root package name */
    private GameScore f56908a2;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private GamedetailVideoMainActivity f56911c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    TextView f56913d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    TextView f56915e;

    /* JADX INFO: renamed from: e2, reason: collision with root package name */
    private int f56916e2;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @ViewById
    ImageView f56917f;

    /* JADX INFO: renamed from: f2, reason: collision with root package name */
    private int f56919f2;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @ViewById
    ImageView f56920g;

    /* JADX INFO: renamed from: g2, reason: collision with root package name */
    @ViewById
    TextView f56921g2;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @ViewById
    ImageView f56922h;

    /* JADX INFO: renamed from: h2, reason: collision with root package name */
    @ViewById
    ImageView f56923h2;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @ViewById
    ImageView f56924i;

    /* JADX INFO: renamed from: i2, reason: collision with root package name */
    @ViewById
    ImageView f56926i2;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @ViewById
    ImageView f56927j;

    /* JADX INFO: renamed from: j2, reason: collision with root package name */
    @ViewById
    ImageView f56928j2;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @ViewById
    TextView f56929k;

    /* JADX INFO: renamed from: k2, reason: collision with root package name */
    @ViewById
    ImageView f56930k2;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @ViewById
    LinearLayout f56931l;

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    private com.join.android.app.common.manager.b f56932l1;

    /* JADX INFO: renamed from: l2, reason: collision with root package name */
    @ViewById(R.id.title_normal_download_cdv)
    CustomerDownloadView f56933l2;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @ViewById
    LinearLayout f56934m;

    /* JADX INFO: renamed from: m2, reason: collision with root package name */
    private Animation f56935m2;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @ViewById
    XRecyclerView f56936n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @ViewById
    TextView f56938o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @ViewById
    RelativeLayout f56940p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @ViewById
    RelativeLayout f56943q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @ViewById
    ImageView f56945r;

    /* JADX INFO: renamed from: r1, reason: collision with root package name */
    @Pref
    PrefDef_ f56946r1;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @ViewById
    TextView f56947s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @ViewById
    ProgressBar f56948t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @ViewById
    LinearLayout f56949u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @ViewById
    RelativeLayout f56950v;

    /* JADX INFO: renamed from: v1, reason: collision with root package name */
    com.join.mgps.customview.t f56951v1;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @ViewById
    RelativeLayout f56952w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @ViewById
    RelativeLayout f56953x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @ViewById
    ImageView f56954y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @ViewById
    ImageView f56955z;
    private List<CollectionBeanSub> Y = new ArrayList();
    private int Z = 0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    private int f56941p0 = 0;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    private boolean f56909b1 = false;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    private boolean f56918f1 = false;

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    private boolean f56925i1 = false;

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    private boolean f56942p1 = false;

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    int f56944q1 = 2;
    boolean L1 = false;

    /* JADX INFO: renamed from: b2, reason: collision with root package name */
    private CommentAllListBean.SelfCommentBean f56910b2 = null;

    /* JADX INFO: renamed from: c2, reason: collision with root package name */
    Runnable f56912c2 = new d();

    /* JADX INFO: renamed from: d2, reason: collision with root package name */
    private boolean f56914d2 = true;

    /* JADX INFO: renamed from: n2, reason: collision with root package name */
    com.join.mgps.customview.t f56937n2 = null;

    /* JADX INFO: renamed from: o2, reason: collision with root package name */
    com.join.mgps.customview.t f56939o2 = null;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            d2.this.L0();
        }
    }

    class b implements com.join.mgps.callbacks.l {
        b() {
        }

        @Override // com.join.mgps.callbacks.l
        public void a(Object item) {
            com.join.mgps.callbacks.j jVar = d2.this.W;
            if (jVar != null) {
                jVar.u();
            }
        }
    }

    class c implements com.join.mgps.callbacks.l {
        c() {
        }

        @Override // com.join.mgps.callbacks.l
        public void a(Object item) {
            com.join.mgps.callbacks.j jVar = d2.this.W;
            if (jVar != null) {
                jVar.K();
            }
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!d2.this.f56911c.isFinishing() && !d2.this.isHidden()) {
                d2 d2Var = d2.this;
                d2Var.X.p(d2Var.f56936n);
            }
            d2.this.expListPoint();
        }
    }

    class e implements com.join.mgps.callbacks.d {
        e() {
        }

        @Override // com.join.mgps.callbacks.d
        public void onClickCancle() {
        }

        @Override // com.join.mgps.callbacks.d
        public void onClickOk() {
        }
    }

    class f implements Function0<Unit> {
        f() {
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Unit invoke() {
            d2 d2Var = d2.this;
            d2Var.V0(d2Var.Y);
            d2.this.D0();
            d2.this.updateDownloadView();
            return null;
        }
    }

    class g implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GiftPackageDataInfoBean f56962b;

        g(final GiftPackageDataInfoBean val$bean) {
            this.f56962b = val$bean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ((ClipboardManager) d2.this.f56911c.getSystemService(Constants.WS_MESSAGE_TYPE_CLIPBOARD)).setText(this.f56962b.getGift_package_code());
            com.join.mgps.Util.a3.b(d2.this.f56911c).d(this.f56962b.getGift_package_code() + "已复制到剪贴板");
        }
    }

    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (d2.this.T == null || !d2.this.T.isShowing()) {
                return;
            }
            d2.this.T.dismiss();
        }
    }

    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadTask downloadTaskG;
            if (d2.this.T != null && d2.this.T.isShowing()) {
                d2.this.T.dismiss();
            }
            int status = d2.this.H != null ? d2.this.H.getStatus() : 0;
            if (d2.this.P != null && UtilsMy.x0(d2.this.P.getPay_tag_info(), d2.this.P.getCrc_sign_id()) > 0) {
                status = 43;
            }
            if (status != 0) {
                if (status == 5) {
                    UtilsMy.p4(d2.this.f56911c, d2.this.H, "2");
                    return;
                } else if (status != 9 && status != 43) {
                    return;
                }
            }
            d2.this.H.setKeyword(Where.detail.name());
            if (com.join.mgps.Util.t2.i(d2.this.H.getCrc_link_type_val()) && (downloadTaskG = q5.f.M().G(d2.this.H.getCrc_link_type_val())) != null) {
                UtilsMy.V4(d2.this.H, downloadTaskG);
            }
            d2 d2Var = d2.this;
            d2Var.addFrom(d2Var.H);
            if (d2.this.P != null) {
                if (UtilsMy.z0(d2.this.P.getPay_tag_info(), d2.this.P.getCrc_sign_id()) > 0) {
                    ExtBean extBean = d2.this.M;
                    if (extBean != null && "checkgame".equals(extBean.getFrom())) {
                        GamedetailVideoMainActivity gamedetailVideoMainActivity = d2.this.f56911c;
                        d2 d2Var2 = d2.this;
                        UtilsMy.A4(gamedetailVideoMainActivity, d2Var2.L, d2Var2.M.getFrom_id());
                    } else if (d2.this.P.getDown_status() == 5) {
                        UtilsMy.l1(d2.this.f56911c, d2.this.H);
                    } else {
                        UtilsMy.z4(d2.this.f56911c, d2.this.L);
                    }
                } else {
                    UtilsMy.D1(d2.this.H, d2.this.P);
                    if (d2.this.P.getDown_status() == 5) {
                        UtilsMy.l1(d2.this.f56911c, d2.this.H);
                    } else {
                        UtilsMy.U0(d2.this.f56911c, d2.this.H, d2.this.P.getTp_down_url(), d2.this.P.getOther_down_switch(), d2.this.P.getCdn_down_switch());
                    }
                }
            }
            d2.this.H.setStatus(2);
        }
    }

    class j implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GiftPackageDataOperationBean f56966b;

        j(final GiftPackageDataOperationBean val$bean) {
            this.f56966b = val$bean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ((ClipboardManager) d2.this.f56911c.getSystemService(Constants.WS_MESSAGE_TYPE_CLIPBOARD)).setText(this.f56966b.getGift_info().getGift_package_code());
            com.join.mgps.Util.a3.b(d2.this.f56911c).d(this.f56966b.getGift_info().getGift_package_code() + "已复制到剪贴板");
        }
    }

    class k extends RecyclerView.OnScrollListener {

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        final /* synthetic */ LinearLayoutManager f56968t;

        k(final LinearLayoutManager val$layoutManager) {
            this.f56968t = val$layoutManager;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int newState) {
            super.onScrollStateChanged(recyclerView, newState);
            d2 d2Var = d2.this;
            if (d2Var.X != null && !d2Var.isHidden()) {
                d2.this.X.l(recyclerView, newState);
            }
            if (newState == 0) {
                d2.this.expListPoint();
            }
            d2.this.f56909b1 = newState != 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(@NonNull RecyclerView recyclerView, int dx, int dy) {
            super.onScrolled(recyclerView, dx, dy);
            d2.this.f56941p0 = this.f56968t.findFirstVisibleItemPosition();
            d2.this.Z = this.f56968t.findLastVisibleItemPosition();
            d2 d2Var = d2.this;
            if (d2Var.X == null || d2Var.isHidden()) {
                return;
            }
            d2 d2Var2 = d2.this;
            d2Var2.X.h(recyclerView, d2Var2.f56941p0, d2.this.Z - d2.this.f56941p0, d2.this.O.getItemCount());
        }
    }

    class l implements View.OnClickListener {
        l() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (d2.this.T == null || !d2.this.T.isShowing()) {
                return;
            }
            d2.this.T.dismiss();
        }
    }

    class m implements View.OnClickListener {
        m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadTask downloadTaskG;
            if (d2.this.T != null && d2.this.T.isShowing()) {
                d2.this.T.dismiss();
            }
            int status = d2.this.H != null ? d2.this.H.getStatus() : 0;
            if (d2.this.P != null && UtilsMy.x0(d2.this.P.getPay_tag_info(), d2.this.P.getCrc_sign_id()) > 0) {
                status = 43;
            }
            if (status != 0) {
                if (status == 5) {
                    UtilsMy.p4(d2.this.f56911c, d2.this.H, "2");
                    return;
                } else if (status != 9 && status != 43) {
                    return;
                }
            }
            if (d2.this.P.getDown_status() == 2) {
                return;
            }
            if (com.join.mgps.Util.t2.i(d2.this.H.getCrc_link_type_val()) && (downloadTaskG = q5.f.M().G(d2.this.H.getCrc_link_type_val())) != null) {
                UtilsMy.V4(d2.this.H, downloadTaskG);
            }
            d2.this.H.setKeyword(Where.detail.name());
            if (d2.this.P != null) {
                if (UtilsMy.z0(d2.this.P.getPay_tag_info(), d2.this.P.getCrc_sign_id()) > 0) {
                    UtilsMy.z4(d2.this.f56911c, d2.this.L);
                } else {
                    d2 d2Var = d2.this;
                    d2Var.addFrom(d2Var.H);
                    UtilsMy.D1(d2.this.H, d2.this.P);
                    if (!UtilsMy.o1(d2.this.f56911c, d2.this.H)) {
                        if (d2.this.P.getDown_status() == 5) {
                            UtilsMy.l1(d2.this.f56911c, d2.this.H);
                        } else {
                            UtilsMy.U0(d2.this.f56911c, d2.this.H, d2.this.P.getTp_down_url(), d2.this.P.getOther_down_switch(), d2.this.P.getCdn_down_switch());
                        }
                    }
                }
            }
            d2.this.H.setStatus(2);
        }
    }

    class n implements Animation.AnimationListener {
        n() {
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

    class o implements com.join.mgps.adapter.x1.p1 {
        o() {
        }

        @Override // com.join.mgps.adapter.x1.p1
        public void a(InformationCommentBean bean) {
            if (IntentUtil.getInstance().goLoginInteractive(d2.this.f56911c)) {
                return;
            }
            d2.this.B0(bean);
        }

        @Override // com.join.mgps.adapter.x1.p1
        public void b(InformationCommentBean.Sub sub) {
            InformationCommentBean informationCommentBean = new InformationCommentBean();
            informationCommentBean.setUser_name(sub.getUser_name());
            informationCommentBean.setComment_id(sub.getUser_id());
            informationCommentBean.setUser_id(sub.getUser_id());
            if (d2.this.P != null) {
                GameCommentActivity_.intent(d2.this.f56911c).a(d2.this.P.getCrc_sign_id()).d(true).b(informationCommentBean).start();
            }
        }

        @Override // com.join.mgps.adapter.x1.p1
        public void c(InformationCommentBean bean) {
            if (d2.this.P != null) {
                GameCommentActivity_.intent(d2.this.f56911c).a(d2.this.P.getCrc_sign_id()).d(true).b(bean).start();
            }
        }

        @Override // com.join.mgps.adapter.x1.p1
        public void d() {
        }

        @Override // com.join.mgps.adapter.x1.p1
        public void e() {
            d2.this.k0();
        }

        @Override // com.join.mgps.adapter.x1.p1
        public void f() {
            ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
            forumPostsBean.setPid((int) d2.this.P.getForum_id());
            com.join.mgps.Util.r0.v0(d2.this.f56911c, forumPostsBean);
        }

        @Override // com.join.mgps.adapter.x1.p1
        public void g() {
        }

        @Override // com.join.mgps.adapter.x1.p1
        public void h() {
            if (d2.this.P.getGame_book() == 1 || IntentUtil.getInstance().goLoginNetGame(d2.this.f56911c)) {
                return;
            }
            d2.this.changeGameFollow(4);
        }

        @Override // com.join.mgps.adapter.x1.p1
        public void i(boolean isGetGift, GiftPackageDataInfoBean gift) {
            if (IntentUtil.getInstance().goLoginNetGame(d2.this.f56911c)) {
                return;
            }
            if (!isGetGift) {
                d2.this.M0(gift);
            } else if (d2.this.e0(gift.getGift_package_type())) {
                d2.this.p0(gift);
            }
        }

        @Override // com.join.mgps.adapter.x1.p1
        public void onPraise(CommentBaseBean bean, int position, int type) {
            d2.this.x0(bean, position, type);
        }

        @Override // com.join.mgps.adapter.x1.p1
        public void onRootView(CommentBaseBean bean) {
            d2.this.y0(bean);
        }

        @Override // com.join.mgps.adapter.x1.p1
        public void onUnPraise(CommentBaseBean bean, int position, int type) {
            d2.this.z0(bean, position, type);
        }
    }

    class p implements XRecyclerView.f {
        p() {
        }

        @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
        public void onLoadMore() {
            d2.this.t0();
        }

        @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
        public void onRefresh() {
        }
    }

    class q implements View.OnClickListener {
        q() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            d2.this.G0();
        }
    }

    class r implements View.OnClickListener {
        r() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            d2.this.G0();
        }
    }

    class s implements com.join.mgps.Util.x1.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f56977a;

        s(final boolean val$needRetry) {
            this.f56977a = val$needRetry;
        }

        @Override // com.join.mgps.Util.x1.b
        public void a(com.join.mgps.Util.x1.c result) {
            if (result.a() == 1) {
                d2.this.f56911c.finish();
                com.join.mgps.Util.x1.c().e(d2.this.f56911c, d2.this.M.getFrom_id(), result.b());
                com.join.mgps.Util.a3.b(d2.this.f56911c).d("授权成功");
            } else if (this.f56977a) {
                d2.this.a1(false);
            }
        }
    }

    class t implements CompoundButton.OnCheckedChangeListener {
        t() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
            d2.this.f56946r1.noFavoriteTips().g(Boolean.valueOf(isChecked));
        }
    }

    class u implements View.OnClickListener {
        u() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            com.join.mgps.customview.t tVar = d2.this.f56951v1;
            if (tVar != null && tVar.isShowing()) {
                d2.this.f56951v1.dismiss();
            }
            d2.this.j0();
        }
    }

    class v implements View.OnClickListener {
        v() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            d2.this.J0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D0() {
        com.join.mgps.adapter.x1 x1Var = this.O;
        if (x1Var != null) {
            x1Var.notifyDataSetChanged();
        }
    }

    private void H0(List<com.join.mgps.adapter.x1.n1> gamedetialItemMains) {
        GamedetialModleFourBean gamedetialModleFourBean;
        GamedetialModleFourBean gamedetialModleFourBean2 = this.P;
        if (gamedetialModleFourBean2 == null || gamedetialModleFourBean2.getComment_switch() != 1) {
            return;
        }
        int i10 = 0;
        while (this.P.getCommitDataBeanList() != null) {
            if (i10 >= (this.P.getCommitDataBeanList().size() <= 3 ? this.P.getCommitDataBeanList().size() : 3)) {
                break;
            }
            CommentBaseBean commentBaseBean = this.P.getCommitDataBeanList().get(i10);
            com.join.mgps.adapter.x1 x1Var = this.O;
            Objects.requireNonNull(x1Var);
            gamedetialItemMains.add(new com.join.mgps.adapter.x1.n1(x1Var, commentBaseBean, 25));
            if (i10 == 0 && ((gamedetialModleFourBean = this.P) == null || gamedetialModleFourBean.getCpu_type() == 0 || APKUtils.f34739a.z(this.P.getCpu_type()))) {
                com.join.mgps.adapter.x1 x1Var2 = this.O;
                Objects.requireNonNull(x1Var2);
                gamedetialItemMains.add(new com.join.mgps.adapter.x1.n1(x1Var2, "", 27));
            }
            i10++;
        }
        com.join.mgps.adapter.x1 x1Var3 = this.O;
        Objects.requireNonNull(x1Var3);
        gamedetialItemMains.add(new com.join.mgps.adapter.x1.n1(x1Var3, "评论底部", 16));
    }

    private void I0(InformationCommentBean bean, List<com.join.mgps.adapter.x1.n1> gamedetialItemMains) {
        List<InformationCommentBean.Sub> sub = bean.getSub();
        if (sub == null || sub.size() <= 0) {
            return;
        }
        com.join.mgps.adapter.x1 x1Var = this.O;
        Objects.requireNonNull(x1Var);
        gamedetialItemMains.add(new com.join.mgps.adapter.x1.n1(x1Var, new com.join.mgps.adapter.x1.r1(bean.getComment_id(), bean, 0, true), 15));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void V0(List<CollectionBeanSub> SearchDataBeanList) {
        if (SearchDataBeanList == null || SearchDataBeanList.size() == 0) {
            return;
        }
        Iterator<CollectionBeanSub> it2 = SearchDataBeanList.iterator();
        while (it2.hasNext()) {
            DlTaskManager.INSTANCE.updateDownloadTask(it2.next());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean e0(String finalType) {
        if (com.join.mgps.Util.t2.h(finalType)) {
            com.join.mgps.Util.a3.b(this.f56911c).d(this.f56911c.getString(R.string.unknow_gift_type));
            return false;
        }
        UserInfo accountData = AccountUtil_.getInstance_(this.f56911c).getAccountData();
        if (finalType.equals("6")) {
            if (!com.join.mgps.Util.b.piv(accountData)) {
                P0();
                return false;
            }
        } else if (finalType.equals("7") && accountData.getSVIPLevel() <= 0) {
            O0();
            return false;
        }
        return true;
    }

    private void f0() {
        com.join.mgps.customview.t tVar = this.f56937n2;
        if (tVar == null || !tVar.isShowing()) {
            return;
        }
        this.f56937n2.dismiss();
    }

    private void g0() {
        com.join.mgps.customview.t tVar = this.f56939o2;
        if (tVar == null || !tVar.isShowing()) {
            return;
        }
        this.f56939o2.dismiss();
    }

    public static GameDetialModleFourActivity_ u0(String gameId, boolean autodown, ExtBean extBean) {
        Bundle bundle = new Bundle();
        bundle.putString("gameId", gameId);
        bundle.putBoolean(GamedetailVideoMainActivity_.AUTODOWN_EXTRA, autodown);
        bundle.putSerializable("extBean", extBean);
        GameDetialModleFourActivity_ gameDetialModleFourActivity_ = new GameDetialModleFourActivity_();
        gameDetialModleFourActivity_.setArguments(bundle);
        return gameDetialModleFourActivity_;
    }

    private void updateProgressPartly() {
        CollectionBeanSub collectionBeanSub;
        DownloadTask downloadTask;
        if (this.f56918f1) {
            return;
        }
        for (int i10 = this.f56941p0; i10 <= this.Z; i10++) {
            com.join.mgps.adapter.x1.n1 n1Var = this.O.y().get(i10);
            if (n1Var != null) {
                Object obj = n1Var.f63644a;
                if ((obj instanceof CollectionBeanSub) && (collectionBeanSub = (CollectionBeanSub) obj) != null && (downloadTask = collectionBeanSub.getDownloadTask()) != null && (downloadTask.getStatus() == 2 || downloadTask.getStatus() == 12)) {
                    View childAt = this.f56936n.getChildAt(i10 - this.f56941p0);
                    try {
                        DownloadTask downloadTaskG = com.join.android.app.common.servcie.j.f().g(downloadTask.getCrc_link_type_val());
                        if (downloadTaskG == null) {
                            return;
                        }
                        long j10 = (long) (Double.parseDouble(downloadTaskG.getShowSize()) * 1024.0d * 1024.0d);
                        if (downloadTask.getSize() == 0) {
                            ((TextView) childAt.findViewById(R.id.appSize)).setText(UtilsMy.c(downloadTaskG.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                        } else {
                            ((TextView) childAt.findViewById(R.id.appSize)).setText(UtilsMy.c(downloadTaskG.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                        }
                        if (downloadTask.getStatus() == 12) {
                            ((ProgressBar) childAt.findViewById(R.id.progressBarZip)).setProgress((int) downloadTaskG.getProgress());
                        } else {
                            ((ProgressBar) childAt.findViewById(R.id.progressBar)).setProgress((int) downloadTaskG.getProgress());
                        }
                        if (downloadTask.getStatus() == 2) {
                            ((TextView) childAt.findViewById(R.id.loding_info)).setText(downloadTaskG.getSpeed() + "/S");
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            }
        }
    }

    @Receiver(actions = {"com.join,mgps.sim.sdkgamePayfinish"})
    void A0(Intent intent) {
        this.f56911c.finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void B0(InformationCommentBean bean) {
        if (!com.join.android.app.common.utils.m.j(this.f56911c)) {
            showToast("没有网络");
            return;
        }
        try {
            GamePariseRequest gamePariseRequest = new GamePariseRequest();
            gamePariseRequest.setGame_id(this.L);
            gamePariseRequest.setComment_id(bean.getComment_id() + "");
            gamePariseRequest.setUid(this.S.getUid());
            ResultMainBean<List<PariseBackData>> resultMainBeanB = this.I.b(RequestBeanUtil.getInstance(this.f56911c).getGameDetailParis(gamePariseRequest));
            if (resultMainBeanB == null || resultMainBeanB.getFlag() != 1) {
                w0();
                showToast("点赞失败");
                return;
            }
            List<PariseBackData> data = resultMainBeanB.getMessages().getData();
            if (data.size() <= 0) {
                showToast("你已赞过");
                return;
            }
            if (!data.get(0).isVal()) {
                showToast("你已赞过");
                return;
            }
            for (CommentBaseBean commentBaseBean : this.R1) {
            }
            U0();
        } catch (Exception e10) {
            e10.printStackTrace();
            w0();
            showToast("点赞失败");
        }
    }

    @Receiver(actions = {p5.a.B})
    void C0(Intent intent) {
        this.S = AccountUtil_.getInstance_(this.f56911c).getAccountData();
        o0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void E0(String msg, boolean b10, int position, int type) {
        com.join.mgps.Util.a3.b(this.f56911c).d(msg);
        if (b10) {
            if (type == 1) {
                this.O.H(position, 0);
            } else {
                this.O.G(position, 0);
            }
        }
    }

    @Override // com.join.mgps.callbacks.p
    public void F(boolean show) {
        if (!show) {
            com.join.android.app.component.video.c cVar = this.X;
            if (cVar != null) {
                cVar.G();
            }
            this.U = true;
            return;
        }
        this.U = false;
        com.join.android.app.component.video.c cVar2 = this.X;
        if (cVar2 != null) {
            cVar2.H();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void F0(CommentResponse bean) {
        if (bean.getCode() != 801) {
            com.join.mgps.Util.a3.b(this.f56911c).d(bean.getMsg());
        } else {
            r0();
            com.join.mgps.Util.a3.b(this.f56911c).d("数据访问失败，请稍候再试！");
        }
    }

    @Click
    void G0() {
        IntentUtil.getInstance().goSearchHintActivity(this.f56911c);
        com.papa.sim.statistic.t.l(this.f56911c).y2(Where.detial2, AccountUtil_.getInstance_(this.f56911c).getUid());
    }

    @Click
    void J0() {
        ShareBean shareBean = new ShareBean();
        String share_url = this.P.getShare_url();
        shareBean.setqZoneShareUrl(share_url);
        shareBean.setQqUrl(share_url);
        shareBean.setWechatFriendUrl(share_url);
        shareBean.setWechatShareUrl(share_url);
        shareBean.setWeiboShareUrl(share_url);
        shareBean.setTitle(this.P.getGame_name());
        shareBean.setText(this.P.getInfo());
        shareBean.setImageUrl(this.P.getIco_remote());
        shareBean.setFrom(2);
        shareBean.setGameId(this.P.getGame_id());
        if (this.P.getShare_config() != null && this.P.getShare_config().getShare_switch() == 1) {
            shareBean.setIntentData(this.P.getShare_config().getJump_info());
        }
        com.join.mgps.Util.w.r(this.f56911c, shareBean);
    }

    @Click
    void K0() {
        ShareBean shareBean = new ShareBean();
        String share_url = this.P.getShare_url();
        shareBean.setqZoneShareUrl(share_url);
        shareBean.setQqUrl(share_url);
        shareBean.setWechatFriendUrl(share_url);
        shareBean.setWechatShareUrl(share_url);
        shareBean.setWeiboShareUrl(share_url);
        shareBean.setImageUrl(this.P.getIco_remote());
        shareBean.setTitle(this.P.getGame_name());
        shareBean.setText(this.P.getInfo());
        shareBean.setFrom(2);
        shareBean.setGameId(this.P.getGame_id());
        if (this.P.getShare_config() != null && this.P.getShare_config().getShare_switch() == 1) {
            shareBean.setIntentData(this.P.getShare_config().getJump_info());
        }
        com.join.mgps.Util.w.r(this.f56911c, shareBean);
    }

    void L0() {
        ShareBean shareBean = new ShareBean();
        String str = this.P.getActivity_entry().getUrl() + this.P.getCrc_sign_id();
        shareBean.setqZoneShareUrl(str);
        shareBean.setQqUrl(str);
        shareBean.setWechatFriendUrl(str);
        shareBean.setWechatShareUrl(str);
        shareBean.setWeiboShareUrl(str);
        shareBean.setTitle(this.P.getGame_name());
        shareBean.setText(this.P.getInfo());
        shareBean.setImageUrl(this.P.getIco_remote());
        shareBean.setFrom(2);
        shareBean.setGameId(this.P.getGame_id());
        com.join.mgps.Util.w.r(this.f56911c, shareBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code duplicated, block: B:23:0x00fb A[Catch: Exception -> 0x015b, TryCatch #0 {Exception -> 0x015b, blocks: (B:3:0x0002, B:5:0x0009, B:7:0x000f, B:8:0x0017, B:10:0x00c8, B:12:0x00ce, B:21:0x00ef, B:26:0x0131, B:28:0x013a, B:29:0x0142, B:31:0x014e, B:34:0x0155, B:22:0x00f5, B:23:0x00fb, B:25:0x0102), top: B:39:0x0002 }] */
    /* JADX WARN: Code duplicated, block: B:25:0x0102 A[Catch: Exception -> 0x015b, TryCatch #0 {Exception -> 0x015b, blocks: (B:3:0x0002, B:5:0x0009, B:7:0x000f, B:8:0x0017, B:10:0x00c8, B:12:0x00ce, B:21:0x00ef, B:26:0x0131, B:28:0x013a, B:29:0x0142, B:31:0x014e, B:34:0x0155, B:22:0x00f5, B:23:0x00fb, B:25:0x0102), top: B:39:0x0002 }] */
    @UiThread
    public void M0(final GiftPackageDataInfoBean bean) {
        GamedetialModleFourBean gamedetialModleFourBean;
        try {
            D0();
            com.join.mgps.customview.t tVar = this.T;
            if (tVar != null && tVar.isShowing()) {
                this.T.dismiss();
                this.T = null;
            }
            com.join.mgps.customview.t tVar2 = new com.join.mgps.customview.t(this.f56911c, R.style.MyDialog);
            this.T = tVar2;
            tVar2.setContentView(R.layout.save_code_dialog);
            Button button = (Button) this.T.findViewById(R.id.dialog_button_cancle);
            Button button2 = (Button) this.T.findViewById(R.id.dialog_button_ok);
            ((LinearLayout) this.T.findViewById(R.id.layoutTop)).setVisibility(8);
            ((LinearLayout) this.T.findViewById(R.id.layoutBottom)).setVisibility(0);
            TextView textView = (TextView) this.T.findViewById(R.id.tip_title);
            TextView textView2 = (TextView) this.T.findViewById(R.id.saveCodeTv);
            TextView textView3 = (TextView) this.T.findViewById(R.id.saveCodeContent);
            TextView textView4 = (TextView) this.T.findViewById(R.id.dialog_time);
            TextView textView5 = (TextView) this.T.findViewById(R.id.moneyText);
            textView.setText("领号成功");
            textView3.setText(bean.getGift_package_code());
            button2.setText("关闭");
            button.setText("下载游戏");
            textView4.setText(com.join.mgps.Util.e0.A(bean.getGift_package_times_end()));
            textView2.setOnClickListener(new g(bean));
            button2.setOnClickListener(new h());
            DownloadTask downloadTask = this.H;
            int status = downloadTask != null ? downloadTask.getStatus() : 0;
            if (UtilsMy.x0(this.P.getPay_tag_info(), this.P.getCrc_sign_id()) > 0) {
                status = 43;
            }
            if (status == 0) {
                button.setText("下载游戏");
                gamedetialModleFourBean = this.P;
                if (gamedetialModleFourBean != null) {
                    UtilsMy.x0(gamedetialModleFourBean.getPay_tag_info(), this.P.getCrc_sign_id());
                    UtilsMy.I3(button, this.P.getDown_status(), this.P.getPay_tag_info(), this.P.getCrc_sign_id());
                    button.setBackgroundColor(-1);
                    UtilsMy.B3(this.P.getSp_tag_info(), textView5);
                }
            } else if (status == 5) {
                button.setText("启动游戏");
            } else if (status == 9 || status == 43) {
                button.setText("下载游戏");
                gamedetialModleFourBean = this.P;
                if (gamedetialModleFourBean != null) {
                    UtilsMy.x0(gamedetialModleFourBean.getPay_tag_info(), this.P.getCrc_sign_id());
                    UtilsMy.I3(button, this.P.getDown_status(), this.P.getPay_tag_info(), this.P.getCrc_sign_id());
                    button.setBackgroundColor(-1);
                    UtilsMy.B3(this.P.getSp_tag_info(), textView5);
                }
            } else {
                button.setText("下载中..");
            }
            if (this.P.getDown_status() == 2) {
                button.setEnabled(false);
                button.setText("即将开放");
            }
            button.setOnClickListener(new i());
            com.join.mgps.customview.t tVar3 = this.T;
            if (tVar3 == null || tVar3.isShowing()) {
                return;
            }
            this.T.show();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code duplicated, block: B:26:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:28:0x00ea  */
    @UiThread
    public void N0(final GiftPackageDataOperationBean bean) {
        com.join.mgps.customview.t tVar = this.T;
        if (tVar != null && tVar.isShowing()) {
            this.T.dismiss();
            this.T = null;
        }
        com.join.mgps.customview.t tVar2 = new com.join.mgps.customview.t(this.f56911c, R.style.MyDialog);
        this.T = tVar2;
        tVar2.setContentView(R.layout.save_code_dialog);
        Button button = (Button) this.T.findViewById(R.id.dialog_button_cancle);
        Button button2 = (Button) this.T.findViewById(R.id.dialog_button_ok);
        TextView textView = (TextView) this.T.findViewById(R.id.tip_title);
        TextView textView2 = (TextView) this.T.findViewById(R.id.saveCodeTv);
        TextView textView3 = (TextView) this.T.findViewById(R.id.saveCodeContent);
        TextView textView4 = (TextView) this.T.findViewById(R.id.moneyText);
        textView.setText("领号成功");
        textView3.setText(bean.getGift_info().getGift_package_code());
        button2.setText("关闭");
        button.setText("下载游戏");
        textView2.setOnClickListener(new j(bean));
        button2.setOnClickListener(new l());
        if (this.P.getDown_status() == 2) {
            button.setEnabled(false);
            button.setText("即将开放");
        }
        DownloadTask downloadTask = this.H;
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        if (bean.getGame_info() != null && UtilsMy.x0(bean.getGame_info().getPay_tag_info(), bean.getGame_info().getCrc_sign_id()) > 0) {
            status = 43;
        }
        if (status == 0) {
            button.setText("下载游戏");
            if (bean.getGame_info() != null) {
                UtilsMy.x0(bean.getGame_info().getPay_tag_info(), bean.getGame_info().getCrc_sign_id());
                UtilsMy.I3(button, bean.getGame_info().getDown_status(), bean.getGame_info().getPay_tag_info(), bean.getGame_info().getCrc_sign_id());
                UtilsMy.B3(bean.getGame_info().getSp_tag_info(), textView4);
            }
        } else if (status == 5) {
            button.setText("启动游戏");
        } else if (status == 9 || status == 43) {
            button.setText("下载游戏");
            if (bean.getGame_info() != null) {
                UtilsMy.x0(bean.getGame_info().getPay_tag_info(), bean.getGame_info().getCrc_sign_id());
                UtilsMy.I3(button, bean.getGame_info().getDown_status(), bean.getGame_info().getPay_tag_info(), bean.getGame_info().getCrc_sign_id());
                UtilsMy.B3(bean.getGame_info().getSp_tag_info(), textView4);
            }
        } else {
            button.setText("下载中..");
        }
        button.setOnClickListener(new m());
        D0();
        com.join.mgps.customview.t tVar3 = this.T;
        if (tVar3 == null || tVar3.isShowing()) {
            return;
        }
        this.T.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void O0() {
        com.join.mgps.customview.t tVar = this.f56937n2;
        if (tVar == null) {
            this.f56937n2 = com.join.mgps.Util.h0.h0(this.f56911c).e0(this.f56911c);
        } else if (tVar.isShowing()) {
            return;
        }
        this.f56937n2.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void P0() {
        com.join.mgps.customview.t tVar = this.f56939o2;
        if (tVar == null) {
            this.f56939o2 = com.join.mgps.Util.h0.h0(this.f56911c).g0(this.f56911c);
        } else if (tVar.isShowing()) {
            return;
        }
        this.f56939o2.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 4000)
    public void Q0() {
        com.join.mgps.adapter.x1 x1Var = this.O;
        if (x1Var != null && x1Var.s() != null) {
            com.join.mgps.Util.e.g(this.O.s());
        }
        Q0();
    }

    void R0() {
        ImageView imageView = this.f56923h2;
        if (imageView == null) {
            return;
        }
        imageView.setImageResource(R.drawable.line_blue_bg);
        Animation animationLoadAnimation = AnimationUtils.loadAnimation(this.f56911c, R.anim.img_translate);
        this.f56935m2 = animationLoadAnimation;
        animationLoadAnimation.setFillAfter(true);
        this.f56935m2.setFillAfter(true);
        this.f56930k2.setVisibility(0);
        this.f56930k2.startAnimation(this.f56935m2);
        this.f56935m2.setAnimationListener(new n());
    }

    void S0() {
        ImageView imageView = this.f56930k2;
        if (imageView != null) {
            imageView.clearAnimation();
            this.f56930k2.setVisibility(8);
            this.f56923h2.setImageResource(R.drawable.line_white_bg);
        }
    }

    @Click
    void T0() {
        IntentUtil.getInstance().goMyGameManagerActivity(this.f56911c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void U0() {
        if (this.P.getGame_id() != null) {
            b1(this.P, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void W0(int number) {
        try {
            if (number < 100) {
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f56921g2.getLayoutParams();
                layoutParams.width = getResources().getDimensionPixelOffset(R.dimen.wdp24);
                layoutParams.height = getResources().getDimensionPixelOffset(R.dimen.wdp24);
                this.f56921g2.setLayoutParams(layoutParams);
                this.f56921g2.setCompoundDrawables(null, null, null, null);
                this.f56921g2.setBackgroundResource(R.drawable.mygame_big_round);
                this.f56921g2.setPadding(1, 0, 0, 1);
            } else {
                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.f56921g2.getLayoutParams();
                layoutParams2.width = getResources().getDimensionPixelOffset(R.dimen.dp70);
                layoutParams2.height = getResources().getDimensionPixelOffset(R.dimen.round_large_size);
                layoutParams2.setMargins(4, (int) TypedValue.applyDimension(1, 7.0f, getResources().getDisplayMetrics()), 0, 0);
                this.f56921g2.setGravity(17);
                this.f56921g2.setLayoutParams(layoutParams2);
                this.f56921g2.setCompoundDrawables(null, null, null, null);
                this.f56921g2.setBackgroundResource(R.drawable.message_round);
                this.f56921g2.setPadding(1, 0, 2, 1);
            }
            this.f56921g2.setVisibility(0);
            this.f56921g2.setText(number + "");
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void X0(int downloadingNumber) {
        if (downloadingNumber == 0) {
            S0();
        } else {
            R0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Y0(List<CollectionBeanSub> messageBean) {
        XRecyclerView xRecyclerView;
        if (messageBean != null) {
            List<com.join.mgps.adapter.x1.n1> listY = this.O.y();
            if (messageBean.size() > 0) {
                for (CollectionBeanSub collectionBeanSub : messageBean) {
                    collectionBeanSub.set_from(13301);
                    collectionBeanSub.set_from_type(13301);
                    collectionBeanSub.getExtBean().itemWithParent(this.M).setSopName("游戏详情同类推荐");
                    this.Y.add(collectionBeanSub);
                    com.join.mgps.adapter.x1 x1Var = this.O;
                    Objects.requireNonNull(x1Var);
                    listY.add(new com.join.mgps.adapter.x1.n1(x1Var, collectionBeanSub, 41));
                }
                V0(this.Y);
                D0();
                XRecyclerView xRecyclerView2 = this.f56936n;
                if (xRecyclerView2 != null) {
                    xRecyclerView2.removeCallbacks(this.f56912c2);
                }
                XRecyclerView xRecyclerView3 = this.f56936n;
                if (xRecyclerView3 != null) {
                    xRecyclerView3.postDelayed(this.f56912c2, 1000L);
                }
            }
            if (messageBean.size() <= 0) {
                XRecyclerView xRecyclerView4 = this.f56936n;
                if (xRecyclerView4 != null) {
                    xRecyclerView4.setNoMore();
                }
            } else {
                XRecyclerView xRecyclerView5 = this.f56936n;
                if (xRecyclerView5 != null) {
                    xRecyclerView5.loadMoreComplete();
                }
            }
        }
        if ((messageBean == null || messageBean.size() <= 0) && (xRecyclerView = this.f56936n) != null) {
            xRecyclerView.setNoMore();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Z0() {
        S0();
        TextView textView = this.f56921g2;
        if (textView != null) {
            textView.setVisibility(8);
            this.f56921g2.setText("");
        }
    }

    public d2 a0(com.join.mgps.callbacks.j listener) {
        this.W = listener;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 1000)
    public void a1(final boolean needRetry) {
        ExtBean extBean = this.M;
        if (extBean == null || !"checkgame".equals(extBean.getFrom())) {
            return;
        }
        com.join.mgps.Util.x1.c().b(this.f56911c, this.M.getFrom_id(), new s(needRetry));
    }

    void addFrom(DownloadTask downloadTask) {
        ExtBean extBean = this.M;
        if (extBean == null || TextUtils.isEmpty(extBean.getFrom()) || downloadTask == null || !"112".equals(this.M.getFrom())) {
            return;
        }
        ExtBean extBean2 = new ExtBean();
        extBean2.setFrom(PointType.ANTI_SPAM);
        extBean2.setPosition("112");
        extBean2.setLocation(this.M.getLocation());
        downloadTask.setExt(JsonMapper.toJsonString(extBean2));
    }

    @AfterViews
    void afterView() {
        this.I = com.join.mgps.rpc.impl.d.O1();
        this.J = com.join.mgps.rpc.impl.g.A0();
        this.K = com.join.mgps.rpc.impl.e.m();
        this.f56911c = (GamedetailVideoMainActivity) getActivity();
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.L = arguments.getString("gameId");
            this.N = arguments.getBoolean(GamedetailVideoMainActivity_.AUTODOWN_EXTRA);
            this.M = (ExtBean) arguments.getSerializable("extBean");
        }
        this.f56954y.setVisibility(0);
        this.f56955z.setVisibility(0);
        com.join.mgps.Util.j0.a().d(this);
        this.H = q5.f.M().G(this.L);
        getDownloadTaskInfo();
        this.P = new GamedetialModleFourBean();
        com.join.android.app.component.video.a.n0(f56907p2);
        this.X = new com.join.android.app.component.video.c(this.f56911c, f56907p2);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this.f56911c);
        this.f56936n.setLayoutManager(linearLayoutManager);
        this.f56936n.addOnScrollListener(new k(linearLayoutManager));
        this.V = new com.join.mgps.recycler.e(linearLayoutManager, this.f56936n);
        if (this.O == null) {
            this.O = new com.join.mgps.adapter.x1(requireActivity(), this.P, this.X);
        }
        this.O.L(this.W);
        ExtBean extBean = this.M;
        if (extBean != null) {
            this.O.T(extBean.get_from_type());
        }
        this.f56936n.setAdapter(this.O);
        this.O.M(new o());
        LinearLayoutManager linearLayoutManager2 = (LinearLayoutManager) this.f56936n.getLayoutManager();
        this.Q = linearLayoutManager2;
        linearLayoutManager2.setSmoothScrollbarEnabled(true);
        this.Q.setAutoMeasureEnabled(true);
        this.f56936n.setLayoutManager(this.Q);
        this.B.setVisibility(0);
        this.f56936n.setPullRefreshEnabled(false);
        this.f56936n.setLoadingListener(new p());
        GamedetialModleFourBean modleFourBeanShow = ((GamedetailVideoMainActivity) getActivity()).getModleFourBeanShow();
        if (modleFourBeanShow != null) {
            b1(modleFourBeanShow, false);
        } else {
            n0();
        }
        this.f56926i2.setOnClickListener(new q());
        this.f56928j2.setOnClickListener(new r());
        ExtBean extBean2 = this.M;
        if (extBean2 != null) {
            extBean2.getFrom();
            this.M.getPosition();
            this.M.getLocation();
        }
        a1(false);
    }

    @Click
    void b0() {
        this.f56911c.finish();
        s0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void b1(GamedetialModleFourBean modleFourBean, boolean isReload) {
        try {
            LinearLayout linearLayout = this.B;
            if (linearLayout != null) {
                linearLayout.setVisibility(8);
            }
            if (modleFourBean == null) {
                return;
            }
            LinearLayout linearLayout2 = this.A;
            if (linearLayout2 != null) {
                linearLayout2.setVisibility(8);
            }
            this.Y.clear();
            this.P = modleFourBean;
            this.f56918f1 = (modleFourBean.getSp_tag_info() == null || this.P.getSp_tag_info().getMini_game() == null) ? false : true;
            boolean zF = com.join.mgps.Util.d2.f(modleFourBean.getTag_info());
            this.f56925i1 = zF;
            this.f56936n.setLoadingMoreEnabled(!zF);
            if (this.N && q5.f.M().G(this.L) == null) {
                com.php25.PDownload.d.c(modleFourBean.getDownloadtaskDown(), this.f56911c);
            }
            com.join.mgps.adapter.x1 x1Var = this.O;
            if (x1Var != null) {
                x1Var.I(this.f56911c.getModleFourFragment());
            }
            if (modleFourBean.getShare_config() == null || modleFourBean.getShare_config().getShare_switch() != 1) {
                this.f56934m.setVisibility(8);
            } else {
                this.f56934m.setVisibility(0);
                com.join.android.app.common.utils.l.d(this.E, R.drawable.user_gift, "");
                this.f56934m.setOnClickListener(new v());
            }
            if (modleFourBean.getActivity_entry() != null) {
                this.f56934m.setVisibility(0);
                com.join.android.app.common.utils.l.h(this.E, modleFourBean.getActivity_entry().getPic());
                this.F.setText(modleFourBean.getActivity_entry().getTitle());
                this.f56934m.setOnClickListener(new a());
            } else {
                this.f56934m.setVisibility(8);
            }
            GamedetialModleFourBean gamedetialModleFourBean = this.P;
            if (gamedetialModleFourBean != null) {
                if (gamedetialModleFourBean.getGame_follow() == 1) {
                    this.f56927j.setImageResource(R.drawable.followed_image);
                    this.f56929k.setText("已收藏");
                } else {
                    this.f56927j.setImageResource(R.drawable.follow_none_image);
                    this.f56929k.setText("收藏");
                }
            }
            DownloadTask downloadTaskG = q5.f.M().G(this.L);
            this.H = downloadTaskG;
            if (downloadTaskG == null) {
                this.H = this.P.getDownloadtaskDown();
                if (UtilsMy.p0(this.P.getTag_info())) {
                    this.H.setFileType(Dtype.android.name());
                    if (com.join.android.app.common.utils.g.t0(this.f56911c).e(this.f56911c, this.P.getPackageName())) {
                        APKUtils.a aVarN = com.join.android.app.common.utils.g.t0(this.f56911c).n(this.f56911c, this.P.getPackageName());
                        if (!com.join.mgps.Util.t2.i(this.P.getVer()) || aVarN.d() >= Integer.parseInt(this.P.getVer())) {
                            this.H.setStatus(5);
                        } else {
                            this.H.setStatus(9);
                        }
                    } else {
                        this.H.setStatus(0);
                    }
                } else {
                    this.H.setStatus(0);
                }
            } else {
                downloadTaskG.setDownloadType(0);
                this.H.setScreenshot_pic(this.P.getScreenshot_pic());
            }
            if (("" + this.P.getPlugin_num()).equals("" + ConstantIntEnum.H5.value())) {
                GamedetialModleFourBean gamedetialModleFourBean2 = this.P;
                gamedetialModleFourBean2.setDown_count(gamedetialModleFourBean2.getStart_count());
            }
            updateButn();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        try {
            List<CommentBaseBean> list = this.R1;
            if (list != null) {
                this.P.setCommitDataBeanList(list);
            }
            this.P.setSelf_comment(this.f56910b2);
            this.P.setGame_comment_count(this.V1);
            this.P.setGame_score(this.f56908a2);
            this.O.K(modleFourBean);
            List<com.join.mgps.adapter.x1.n1> listY = this.O.y();
            listY.clear();
            if (this.f56925i1) {
                if (com.join.mgps.Util.t2.i(modleFourBean.getGame_describe_second())) {
                    com.join.mgps.adapter.x1 x1Var2 = this.O;
                    Objects.requireNonNull(x1Var2);
                    listY.add(new com.join.mgps.adapter.x1.n1(x1Var2, modleFourBean.getGame_describe_second(), 47));
                }
                List<CollectionBeanSub> similar_games_recommend_pc = this.P.getSimilar_games_recommend_pc();
                if (similar_games_recommend_pc != null && similar_games_recommend_pc.size() > 0) {
                    com.join.mgps.adapter.x1 x1Var3 = this.O;
                    Objects.requireNonNull(x1Var3);
                    listY.add(new com.join.mgps.adapter.x1.n1(x1Var3, similar_games_recommend_pc, 50));
                }
            } else {
                BtGameWelfare game_welfare = this.P.getGame_welfare();
                if (game_welfare != null && (game_welfare.getGame_activity_summary() != null || game_welfare.getGame_benefit_summary() != null)) {
                    com.join.mgps.adapter.x1 x1Var4 = this.O;
                    Objects.requireNonNull(x1Var4);
                    listY.add(new com.join.mgps.adapter.x1.n1(x1Var4, game_welfare, 42));
                }
                if (modleFourBean.getBt_game_switch() == 1 && com.join.mgps.Util.t2.i(modleFourBean.getEdit_recommend())) {
                    com.join.mgps.adapter.x1 x1Var5 = this.O;
                    Objects.requireNonNull(x1Var5);
                    com.join.mgps.adapter.x1.n1 n1Var = new com.join.mgps.adapter.x1.n1(x1Var5, modleFourBean.getEdit_recommend(), 39);
                    n1Var.f63649f = "编辑推荐";
                    listY.add(n1Var);
                }
                if (modleFourBean.getBt_game_switch() == 1) {
                    if (modleFourBean.getGame_screen_shot() == null || modleFourBean.getGame_screen_shot().size() <= 0) {
                        com.join.mgps.adapter.x1 x1Var6 = this.O;
                        Objects.requireNonNull(x1Var6);
                        listY.add(new com.join.mgps.adapter.x1.n1(x1Var6, null, 5));
                    } else {
                        com.join.mgps.adapter.x1 x1Var7 = this.O;
                        Objects.requireNonNull(x1Var7);
                        listY.add(new com.join.mgps.adapter.x1.n1(x1Var7, null, 28));
                    }
                }
                List<TipBean> game_bt_tag = modleFourBean.getGame_bt_tag();
                if (game_bt_tag != null && game_bt_tag.size() > 0) {
                    com.join.mgps.adapter.x1 x1Var8 = this.O;
                    Objects.requireNonNull(x1Var8);
                    listY.add(new com.join.mgps.adapter.x1.n1(x1Var8, game_bt_tag, 43));
                }
                if (this.P.getBt_game_switch() == 1) {
                    String game_exclusive_benefits = this.P.getGame_exclusive_benefits();
                    String game_buy_rebate = this.P.getGame_buy_rebate();
                    if (com.join.mgps.Util.t2.i(game_exclusive_benefits) || com.join.mgps.Util.t2.i(game_buy_rebate)) {
                        com.join.mgps.adapter.x1 x1Var9 = this.O;
                        Objects.requireNonNull(x1Var9);
                        com.join.mgps.adapter.x1.n1 n1Var2 = new com.join.mgps.adapter.x1.n1(x1Var9, game_exclusive_benefits, 44);
                        n1Var2.f63649f = game_buy_rebate;
                        listY.add(n1Var2);
                    }
                }
                if (com.join.mgps.Util.t2.i(modleFourBean.getGame_describe_second())) {
                    com.join.mgps.adapter.x1 x1Var10 = this.O;
                    Objects.requireNonNull(x1Var10);
                    listY.add(new com.join.mgps.adapter.x1.n1(x1Var10, "游戏简介", 1));
                    if (this.P.getTag_info() != null && this.P.getTag_info().size() > 0) {
                        com.join.mgps.adapter.x1 x1Var11 = this.O;
                        Objects.requireNonNull(x1Var11);
                        listY.add(new com.join.mgps.adapter.x1.n1(x1Var11, null, 4));
                    }
                    com.join.mgps.adapter.x1 x1Var12 = this.O;
                    Objects.requireNonNull(x1Var12);
                    com.join.mgps.adapter.x1.n1 n1Var3 = x1Var12.new n1(modleFourBean.getGame_describe_second(), 8, 1, new b());
                    n1Var3.f63649f = "游戏简介";
                    listY.add(n1Var3);
                    if (modleFourBean.getBt_game_switch() != 1 && com.join.mgps.Util.t2.i(modleFourBean.getEdit_recommend())) {
                        com.join.mgps.adapter.x1 x1Var13 = this.O;
                        Objects.requireNonNull(x1Var13);
                        listY.add(new com.join.mgps.adapter.x1.n1(x1Var13, modleFourBean.getEdit_recommend(), 39));
                    }
                }
                if (this.P.getBespeak_switch() == 1) {
                    com.join.mgps.adapter.x1 x1Var14 = this.O;
                    Objects.requireNonNull(x1Var14);
                    listY.add(new com.join.mgps.adapter.x1.n1(x1Var14, null, 3));
                }
                if (com.join.mgps.Util.t2.i(modleFourBean.getDev_info())) {
                    com.join.mgps.adapter.x1 x1Var15 = this.O;
                    Objects.requireNonNull(x1Var15);
                    listY.add(new com.join.mgps.adapter.x1.n1(x1Var15, "开发者的话", 1));
                    com.join.mgps.adapter.x1 x1Var16 = this.O;
                    Objects.requireNonNull(x1Var16);
                    listY.add(new com.join.mgps.adapter.x1.n1(x1Var16, modleFourBean.getDev_info(), 7));
                }
                if (modleFourBean.getGame_detailed() != null && com.join.mgps.Util.t2.i(modleFourBean.getGame_detailed().getTpl_two_qq())) {
                    com.join.mgps.adapter.x1 x1Var17 = this.O;
                    Objects.requireNonNull(x1Var17);
                    listY.add(new com.join.mgps.adapter.x1.n1(x1Var17, null, 24));
                }
                if (this.P.getMini_program() != null) {
                    if (com.join.mgps.Util.t2.i(this.P.getMini_program().getPic())) {
                        com.join.mgps.adapter.x1 x1Var18 = this.O;
                        Objects.requireNonNull(x1Var18);
                        listY.add(new com.join.mgps.adapter.x1.n1(x1Var18, this.P.getMini_program(), 46));
                    } else {
                        com.join.mgps.adapter.x1 x1Var19 = this.O;
                        Objects.requireNonNull(x1Var19);
                        listY.add(new com.join.mgps.adapter.x1.n1(x1Var19, this.P.getMini_program(), 45));
                    }
                    if (!isReload) {
                        com.papa.sim.statistic.t.l(getContext()).R1(Event.pdGameDetails, new Ext().setGameId(this.P.getGame_id()).setIsJoin(this.P.getMini_program().getIs_join()).setTestAbNumber(this.P.getMini_program().getAb_test_number()));
                    }
                }
                if (modleFourBean.getAuxiliary_tool() != null) {
                    com.join.mgps.adapter.x1 x1Var20 = this.O;
                    Objects.requireNonNull(x1Var20);
                    listY.add(new com.join.mgps.adapter.x1.n1(x1Var20, "辅助工具", 10));
                }
                int size = (modleFourBean.getRoom_cfg_info() == null || modleFourBean.getRoom_cfg_info().getGolden_finger() == null || modleFourBean.getRoom_cfg_info().getGolden_finger().size() <= 0) ? 0 : modleFourBean.getRoom_cfg_info().getGolden_finger().size();
                if ((modleFourBean.getGame_prompt() != null && modleFourBean.getGame_prompt().size() > 0) || modleFourBean.getGame_handle_entrance() != null || modleFourBean.getCommunity_entrance_switch() == 1 || size > 0) {
                    com.join.mgps.adapter.x1 x1Var21 = this.O;
                    Objects.requireNonNull(x1Var21);
                    com.join.mgps.adapter.x1.n1 n1Var4 = new com.join.mgps.adapter.x1.n1(x1Var21, null, 6, new c());
                    n1Var4.f63649f = Boolean.valueOf(modleFourBean.getGame_handle_entrance() != null);
                    n1Var4.f63650g = Integer.valueOf(size);
                    n1Var4.f63651h = Boolean.valueOf(modleFourBean.getCommunity_entrance_switch() == 1);
                    listY.add(n1Var4);
                }
                GamedetialModleFourBean gamedetialModleFourBean3 = this.P;
                if (gamedetialModleFourBean3 == null || gamedetialModleFourBean3.getComment_switch() == 1) {
                    com.join.mgps.adapter.x1 x1Var22 = this.O;
                    Objects.requireNonNull(x1Var22);
                    listY.add(new com.join.mgps.adapter.x1.n1(x1Var22, "评论", 13));
                    if (this.P.getCommitDataBeanList() != null && this.P.getCommitDataBeanList().size() > 0) {
                        H0(listY);
                    } else if (this.f56914d2) {
                        this.f56914d2 = false;
                        o0();
                    } else {
                        com.join.mgps.adapter.x1 x1Var23 = this.O;
                        Objects.requireNonNull(x1Var23);
                        listY.add(new com.join.mgps.adapter.x1.n1(x1Var23, "评论", 26));
                        GamedetialModleFourBean gamedetialModleFourBean4 = this.P;
                        if (gamedetialModleFourBean4 == null || gamedetialModleFourBean4.getCpu_type() == 0 || APKUtils.f34739a.z(this.P.getCpu_type())) {
                            com.join.mgps.adapter.x1 x1Var24 = this.O;
                            Objects.requireNonNull(x1Var24);
                            listY.add(new com.join.mgps.adapter.x1.n1(x1Var24, "评论", 27));
                        }
                    }
                }
                com.join.mgps.adapter.x1 x1Var25 = this.O;
                Objects.requireNonNull(x1Var25);
                listY.add(new com.join.mgps.adapter.x1.n1(x1Var25, "同类游戏", 1));
                List<CollectionBeanSub> similar_games_recommend = this.P.getSimilar_games_recommend();
                if (similar_games_recommend != null && similar_games_recommend.size() > 0) {
                    for (CollectionBeanSub collectionBeanSub : similar_games_recommend) {
                        collectionBeanSub.set_from(13301);
                        collectionBeanSub.set_from_type(13301);
                        collectionBeanSub.getExtBean().itemWithParent(this.M).setSopName("游戏详情同类推荐");
                        this.Y.add(collectionBeanSub);
                        com.join.mgps.adapter.x1 x1Var26 = this.O;
                        Objects.requireNonNull(x1Var26);
                        listY.add(new com.join.mgps.adapter.x1.n1(x1Var26, collectionBeanSub, 41));
                    }
                    V0(this.Y);
                }
            }
            D0();
            XRecyclerView xRecyclerView = this.f56936n;
            if (xRecyclerView != null) {
                xRecyclerView.removeCallbacks(this.f56912c2);
            }
            XRecyclerView xRecyclerView2 = this.f56936n;
            if (xRecyclerView2 != null) {
                xRecyclerView2.postDelayed(this.f56912c2, 1000L);
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void c0() {
        try {
            this.f56916e2 = q5.f.M().V();
            int iD0 = q5.f.M().d0();
            this.f56919f2 = iD0;
            X0(iD0);
            int i10 = this.f56916e2;
            if (i10 != 0) {
                W0(i10);
            } else {
                Z0();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        updateDownloadView();
    }

    @Receiver(actions = {"com.broadcast.bespeak.sussess"})
    void c1() {
        this.P.setGame_book(1);
        D0();
    }

    void changeDownloadTaskNumber(DownloadTask task, int from) {
        updateDownloadView();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void changeGameFollow(int type) {
        String str;
        ResultMainBean resultMainBeanJ1;
        if (com.join.android.app.common.utils.m.j(this.f56911c)) {
            UserInfo accountData = AccountUtil_.getInstance_(this.f56911c).getAccountData();
            this.S = accountData;
            int uid = accountData != null ? accountData.getUid() : 0;
            try {
                PackageInfo packageInfo = this.f56911c.getPackageManager().getPackageInfo(this.f56911c.getPackageName(), 0);
                str = packageInfo.versionCode + "_" + packageInfo.versionName;
            } catch (PackageManager.NameNotFoundException e10) {
                e10.printStackTrace();
                str = "";
            }
            RequestdetialFolowAndBeSpeak requestdetialFolowAndBeSpeak = new RequestdetialFolowAndBeSpeak();
            requestdetialFolowAndBeSpeak.setApp_ver(str);
            requestdetialFolowAndBeSpeak.setGame_id(this.P.getCrc_sign_id());
            requestdetialFolowAndBeSpeak.setUid(uid);
            requestdetialFolowAndBeSpeak.setMobile(this.S.getMobile());
            CommonRequestBean<RequestGameIdArgs> detialFollowAnd = RequestBeanUtil.getInstance(this.f56911c).getDetialFollowAnd(requestdetialFolowAndBeSpeak);
            if (type == 1) {
                resultMainBeanJ1 = this.I.j1(detialFollowAnd);
            } else if (type == 2) {
                resultMainBeanJ1 = this.I.n(detialFollowAnd);
            } else if (type != 3) {
                resultMainBeanJ1 = type != 4 ? null : this.I.M0(detialFollowAnd);
            } else {
                resultMainBeanJ1 = this.I.g(detialFollowAnd);
            }
            if (resultMainBeanJ1 != null) {
                updateTitleButn(resultMainBeanJ1, type);
            }
        }
    }

    @UiThread
    public void d0(int position, int i10) {
        if (i10 == 1) {
            this.O.G(position, 1);
        } else {
            this.O.H(position, 1);
        }
    }

    void expListPoint() {
        CollectionBeanSub collectionBeanSub;
        try {
            if (!this.f56942p1) {
                this.f56942p1 = true;
                int i10 = this.f56941p0;
                if (i10 >= 0) {
                    while (i10 < this.Z) {
                        com.join.mgps.adapter.x1.n1 n1Var = this.O.y().get(i10);
                        if (n1Var != null && n1Var.f63645b == 41) {
                            Object obj = n1Var.f63644a;
                            if ((obj instanceof CollectionBeanSub) && (collectionBeanSub = (CollectionBeanSub) obj) != null && !collectionBeanSub.getExposure()) {
                                com.papa.sim.statistic.t.l(requireContext()).R1(Event.expGameAdPage, collectionBeanSub.getExtBean().buildScene().toExt());
                            }
                        }
                        i10++;
                    }
                }
            }
        } catch (Exception unused) {
        } finally {
            this.f56942p1 = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getDownloadTaskInfo() {
        updateDownloadView();
    }

    @Click
    void h0() {
        IntentUtil.getInstance().goMyGameManagerActivity(this.f56911c);
    }

    @Click
    void i0() {
        IntentUtil.getInstance().goMyGameManagerActivity(this.f56911c);
    }

    @Click
    void instalButtomButn() {
        int game_book = this.P.getGame_book();
        if (this.P.getBespeak_switch() == 1 && game_book != 1 && this.P.getDown_status() == 2) {
            if (IntentUtil.getInstance().goLoginNetGame(this.f56911c) || this.P.getGame_book() == 1) {
                return;
            }
            changeGameFollow(4);
            return;
        }
        if (("" + this.P.getPlugin_num()).equals("" + ConstantIntEnum.H5.value())) {
            IntentUtil.getInstance().goShareWebActivity(this.f56911c, this.P.getDown_url_remote());
            UtilsMy.j3(this.H, this.f56911c);
        }
        DownloadTask downloadTask = this.H;
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        if (this.H != null && UtilsMy.x0(this.P.getPay_tag_info(), this.P.getCrc_sign_id()) > 0) {
            status = 43;
        }
        DownloadTask downloadTask2 = this.H;
        if (downloadTask2 == null) {
            return;
        }
        if (downloadTask2 != null && (status == 2 || status == 10)) {
            com.php25.PDownload.d.i(downloadTask2);
        } else {
            if (status == 12 || status == 27) {
                return;
            }
            if (status == 13) {
                com.php25.PDownload.d.l(this.f56911c, downloadTask2);
                return;
            }
            if (status == 5) {
                UtilsMy.p4(this.f56911c, downloadTask2, "2");
            } else if (status == 42) {
                downloadTask2.setVer(this.P.getVer());
                this.H.setVer_name(this.P.getVer_name());
                this.H.setUrl(this.P.getDown_url_remote());
                this.H.setCfg_ver(this.P.getCfg_ver());
                this.H.setCfg_ver_name(this.P.getCfg_ver_name());
                this.H.setCfg_down_url(this.P.getCfg_down_url());
                this.H.setPay_game_amount(this.P.getPay_tag_info() != null ? this.P.getPay_tag_info().getPay_game_amount() : 0);
                this.H.setKeyword(Where.detail.name());
                DownloadTask downloadTask3 = this.H;
                UtilsMy.W4(downloadTask3, downloadTask3.getCrc_link_type_val());
                UtilsMy.O4(this.f56911c, this.H);
            } else if (status == 9) {
                if (!com.join.android.app.common.utils.m.j(this.f56911c)) {
                    com.join.mgps.Util.a3.b(this.f56911c).d("无网络连接");
                    return;
                }
                if (this.P.getGame_detailed() != null && com.join.mgps.Util.t2.i(this.P.getGame_detailed().getTpl_two_qq())) {
                    com.join.mgps.Util.h0.h0(this.f56911c).d0(this.f56911c, this.P.getGame_detailed().getTpl_two_qq_key(), this.P.getGame_detailed().getAd_pic_qq(), this.P.getGame_detailed().getTpl_two_qq());
                }
                int downloadType = this.H.getDownloadType();
                if (downloadType == 0 || downloadType == 1) {
                    if (this.H.getCrc_link_type_val() == null || this.H.getCrc_link_type_val().equals("")) {
                        return;
                    }
                    addFrom(this.H);
                    if (UtilsMy.o1(this.f56911c, this.H)) {
                        return;
                    }
                    if (this.P.getDown_status() == 5) {
                        UtilsMy.l1(this.f56911c, this.H);
                        return;
                    }
                    com.php25.PDownload.d.b(this.H);
                    this.H.setVer(this.P.getVer());
                    this.H.setVer_name(this.P.getVer_name());
                    this.H.setUrl(this.P.getDown_url_remote());
                    this.H.setCfg_ver(this.P.getCfg_ver());
                    this.H.setCfg_ver_name(this.P.getCfg_ver_name());
                    this.H.setCfg_down_url(this.P.getCfg_down_url());
                    this.H.setPay_game_amount(this.P.getPay_tag_info() != null ? this.P.getPay_tag_info().getPay_game_amount() : 0);
                    this.H.setKeyword(Where.detail.name());
                    DownloadTask downloadTask4 = this.H;
                    UtilsMy.W4(downloadTask4, downloadTask4.getCrc_link_type_val());
                    if (UtilsMy.z0(this.P.getPay_tag_info(), this.P.getCrc_sign_id()) > 0) {
                        ExtBean extBean = this.M;
                        if (extBean != null && "checkgame".equals(extBean.getFrom())) {
                            UtilsMy.A4(this.f56911c, this.L, this.M.getFrom_id());
                        } else if (!UtilsMy.o1(this.f56911c, this.H)) {
                            if (this.P.getDown_status() == 5) {
                                UtilsMy.l1(this.f56911c, this.H);
                            } else {
                                UtilsMy.z4(this.f56911c, this.L);
                            }
                        }
                    } else {
                        UtilsMy.D1(this.H, this.P);
                        if (!UtilsMy.o1(this.f56911c, this.H)) {
                            if (this.P.getDown_status() == 5) {
                                UtilsMy.l1(this.f56911c, this.H);
                            } else {
                                UtilsMy.U0(this.f56911c, this.H, this.P.getTp_down_url(), this.P.getOther_down_switch(), this.P.getCdn_down_switch());
                            }
                        }
                    }
                } else if (downloadType == 2) {
                    UtilsMy.R4(this.H);
                }
            } else if (11 == status) {
                UtilsMy.w4(downloadTask2, this.f56911c);
            } else if (43 == status) {
                downloadTask2.setKeyword(Where.detail.name());
                GamedetialModleFourBean gamedetialModleFourBean = this.P;
                if (gamedetialModleFourBean != null) {
                    if (gamedetialModleFourBean.getGame_detailed() != null && com.join.mgps.Util.t2.i(this.P.getGame_detailed().getTpl_two_qq())) {
                        com.join.mgps.Util.h0.h0(this.f56911c).d0(this.f56911c, this.P.getGame_detailed().getTpl_two_qq_key(), this.P.getGame_detailed().getAd_pic_qq(), this.P.getGame_detailed().getTpl_two_qq());
                    }
                    addFrom(this.H);
                    if (UtilsMy.z0(this.P.getPay_tag_info(), this.P.getCrc_sign_id()) > 0) {
                        ExtBean extBean2 = this.M;
                        if (extBean2 != null && "checkgame".equals(extBean2.getFrom())) {
                            UtilsMy.A4(this.f56911c, this.L, this.M.getFrom_id());
                        } else if (!UtilsMy.o1(this.f56911c, this.H)) {
                            if (this.P.getDown_status() == 5) {
                                UtilsMy.l1(this.f56911c, this.H);
                            } else {
                                UtilsMy.z4(this.f56911c, this.L);
                            }
                        }
                    } else {
                        UtilsMy.D1(this.H, this.P);
                        if (!UtilsMy.o1(this.f56911c, this.H)) {
                            if (this.P.getDown_status() == 5) {
                                UtilsMy.l1(this.f56911c, this.H);
                            } else {
                                UtilsMy.U0(this.f56911c, this.H, this.P.getTp_down_url(), this.P.getOther_down_switch(), this.P.getCdn_down_switch());
                            }
                        }
                    }
                }
            } else {
                downloadTask2.setKeyword(Where.detail.name());
                if (this.P != null) {
                    addFrom(this.H);
                    if (this.P.getGame_detailed() != null && com.join.mgps.Util.t2.i(this.P.getGame_detailed().getTpl_two_qq())) {
                        com.join.mgps.Util.h0.h0(this.f56911c).d0(this.f56911c, this.P.getGame_detailed().getTpl_two_qq_key(), this.P.getGame_detailed().getAd_pic_qq(), this.P.getGame_detailed().getTpl_two_qq());
                    }
                    if (UtilsMy.z0(this.P.getPay_tag_info(), this.P.getCrc_sign_id()) > 0) {
                        ExtBean extBean3 = this.M;
                        if (extBean3 != null && "checkgame".equals(extBean3.getFrom())) {
                            UtilsMy.A4(this.f56911c, this.L, this.M.getFrom_id());
                        } else if (!UtilsMy.o1(this.f56911c, this.H)) {
                            if (this.P.getDown_status() == 5) {
                                UtilsMy.l1(this.f56911c, this.H);
                            } else {
                                UtilsMy.z4(this.f56911c, this.L);
                            }
                        }
                    } else {
                        UtilsMy.D1(this.H, this.P);
                        if (!UtilsMy.o1(this.f56911c, this.H)) {
                            if (this.P.getDown_status() == 5) {
                                UtilsMy.l1(this.f56911c, this.H);
                            } else {
                                UtilsMy.U0(this.f56911c, this.H, this.P.getTp_down_url(), this.P.getOther_down_switch(), this.P.getCdn_down_switch());
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
        this.f56911c.finish();
        s0();
    }

    void j0() {
        if (!com.join.android.app.common.utils.m.j(this.f56911c) || IntentUtil.getInstance().goLoginInteractive(this.f56911c) || this.P.getGame_follow() == 1) {
            return;
        }
        changeGameFollow(2);
    }

    void k0() {
        boolean zBooleanValue = this.f56946r1.noFavoriteTips().d().booleanValue();
        if (IntentUtil.getInstance().goLoginInteractive(this.f56911c)) {
            return;
        }
        if (zBooleanValue) {
            j0();
            return;
        }
        if (this.f56951v1 == null) {
            com.join.mgps.customview.t tVar = new com.join.mgps.customview.t(this.f56911c, R.style.MyDialog);
            this.f56951v1 = tVar;
            tVar.setContentView(R.layout.favorite_dialog);
            this.f56951v1.setCanceledOnTouchOutside(true);
        }
        Button button = (Button) this.f56951v1.findViewById(R.id.ok);
        ((CheckBox) this.f56951v1.findViewById(R.id.opt)).setOnCheckedChangeListener(new t());
        button.setOnClickListener(new u());
        com.join.mgps.customview.t tVar2 = this.f56951v1;
        if (tVar2 == null || tVar2.isShowing()) {
            return;
        }
        this.f56951v1.show();
    }

    @Click
    void l0() {
        GamedetialModleFourBean gamedetialModleFourBean;
        if (IntentUtil.getInstance().goLoginInteractive(this.f56911c) || (gamedetialModleFourBean = this.P) == null || gamedetialModleFourBean.getGame_follow() == 1) {
            return;
        }
        k0();
    }

    public RequestCommentpraiseArgs m0(String comment_id, int type, int pn) {
        String token;
        int uid;
        String str = Build.MODEL;
        UserInfo accountData = AccountUtil_.getInstance_(this.f56911c).getAccountData();
        this.S = accountData;
        if (accountData != null) {
            uid = accountData.getUid();
            token = this.S.getToken();
        } else {
            token = "";
            uid = 0;
        }
        return RequestBeanUtil.getInstance(this.f56911c).getPraiseComment(this.L, this.f56946r1.commentToken().d(), str, comment_id, token, uid, type, pn);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void n0() {
        GamedetialModleFourBean data;
        if (!com.join.android.app.common.utils.m.j(this.f56911c)) {
            showLodingFailed();
            return;
        }
        try {
            UserInfo accountData = AccountUtil_.getInstance_(this.f56911c).getAccountData();
            if (accountData == null) {
                accountData = UserInfo.newBuilder().build();
            }
            RequestModel requestModel = new RequestModel();
            requestModel.setDefault(this.f56911c);
            requestModel.setArgs(new RequestGameIdArgs(this.L, 1, accountData.getUid()));
            ResponseModel<GamedetialModleFourBean> responseModelBody = com.join.mgps.rpc.impl.i.P0().N0().P1(requestModel.makeSign()).execute().body();
            if (responseModelBody == null || responseModelBody.getCode() != 200 || (data = responseModelBody.getData()) == null) {
                showLodingFailed();
            } else {
                b1(data, false);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            showLodingFailed();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void o0() {
        if (com.join.android.app.common.utils.m.j(this.f56911c)) {
            com.join.mgps.rpc.impl.e eVarM = com.join.mgps.rpc.impl.e.m();
            new CommentAllListBean();
            try {
                CommentResponse<CommentAllListBean> commentResponseI = eVarM.i(RequestBeanUtil.getInstance(this.f56911c).getGamedetialCommentRequest(this.L, this.f56946r1.commentToken().d(), this.S.getUid() + ""));
                if (commentResponseI == null) {
                    showMain(new ArrayList());
                    return;
                }
                CommentAllListBean data_info = commentResponseI.getData_info();
                if (data_info != null) {
                    this.f56910b2 = data_info.getSelf_comment();
                    this.V1 = data_info.getGame_comment_count();
                    this.f56908a2 = data_info.getGame_score();
                    this.f56911c.getModleFourFragment().setCommentNumber(this.V1);
                }
                if (data_info == null || data_info.getHot_comment() == null || data_info.getHot_comment().size() < 0) {
                    showMain(new ArrayList());
                    return;
                }
                List<CommentAllListBean.HotCommentBean> hot_comment = data_info.getHot_comment();
                ArrayList arrayList = new ArrayList();
                Iterator<CommentAllListBean.HotCommentBean> it2 = hot_comment.iterator();
                while (it2.hasNext()) {
                    arrayList.add(it2.next());
                }
                showMain(arrayList);
            } catch (Exception e10) {
                e10.printStackTrace();
                showMain(new ArrayList());
            }
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onChangeComment(com.join.mgps.event.n event) {
        if (event.getType() == 1 || event.getType() == 0 || event.getType() == 2) {
            o0();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        g0();
        f0();
        com.join.mgps.Util.j0.a().e(this);
        com.join.mgps.customview.t tVar = this.T;
        if (tVar != null && tVar.isShowing()) {
            this.T.dismiss();
        }
        com.join.android.app.component.video.c cVar = this.X;
        if (cVar != null) {
            cVar.F();
        }
    }

    /* JADX WARN: Code duplicated, block: B:47:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:49:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:53:0x00ea  */
    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.r downloadTaskEvent) {
        DownloadTask downloadTaskA = downloadTaskEvent.a();
        DlTaskManager.INSTANCE.onNotifyDataSet(downloadTaskEvent, new f());
        if (downloadTaskEvent.c() == 8 && !this.f56909b1) {
            updateProgressPartly();
        }
        if (downloadTaskEvent.c() == 8) {
            DownloadTask downloadTask = this.H;
            if (downloadTask == null || downloadTask.getPath() == null) {
                return;
            }
            UtilsMy.U4(this.H);
            this.f56948t.setProgress((int) this.H.getProgress());
            this.f56947s.setText(this.H.getProgress() + "%");
            return;
        }
        if (downloadTaskA != null && this.H != null && downloadTaskA.getCrc_link_type_val().equals(this.H.getCrc_link_type_val())) {
            this.H = downloadTaskA;
            int iC = downloadTaskEvent.c();
            if (iC == 2) {
                R0();
                c0();
            } else if (iC == 3) {
                c0();
            } else if (iC == 5) {
                if (this.H != null && downloadTaskA.getCrc_link_type_val().equals(this.H.getCrc_link_type_val())) {
                    this.H = downloadTaskA;
                }
                c0();
            } else if (iC == 6 || iC == 7) {
                c0();
            } else {
                if (iC == 8) {
                    DownloadTask downloadTask2 = this.H;
                    if (downloadTask2 == null || downloadTask2.getPath() == null) {
                        return;
                    }
                    UtilsMy.U4(this.H);
                    this.f56948t.setProgress((int) this.H.getProgress());
                    this.f56947s.setText(this.H.getProgress() + "%");
                    return;
                }
                if (iC == 10) {
                    c0();
                } else if (iC == 11) {
                    if (this.H != null) {
                        this.H = downloadTaskA;
                    }
                    c0();
                } else if (iC == 27) {
                    c0();
                } else if (iC == 48) {
                    if (this.H != null) {
                        this.H = downloadTaskA;
                    }
                    c0();
                }
            }
        }
        updateButn();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        com.join.android.app.component.video.c cVar = this.X;
        if (cVar != null) {
            cVar.G();
        }
        this.U = true;
        XRecyclerView xRecyclerView = this.f56936n;
        if (xRecyclerView != null) {
            xRecyclerView.removeCallbacks(this.f56912c2);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        GamedetialModleFourBean gamedetialModleFourBean;
        super.onResume();
        this.U = false;
        com.join.android.app.component.video.c cVar = this.X;
        if (cVar != null) {
            cVar.H();
        }
        this.S = AccountUtil_.getInstance_(this.f56911c).getAccountData();
        c0();
        DownloadTask downloadTaskG = this.L != null ? q5.f.M().G(this.L) : null;
        if (downloadTaskG == null && (gamedetialModleFourBean = this.P) != null) {
            this.H = gamedetialModleFourBean.getDownloadtaskDown();
        }
        if (downloadTaskG == null || this.H == null) {
            return;
        }
        try {
            this.H = downloadTaskG;
            if (!downloadTaskG.getFileType().equals(Dtype.android.name()) || this.H.getStatus() != 5) {
                this.H.setStatus(downloadTaskG.getStatus());
            } else if (Boolean.valueOf(com.join.android.app.common.utils.g.t0(this.f56911c).e(this.f56911c, this.H.getPackageName())).booleanValue()) {
                APKUtils.a aVarN = com.join.android.app.common.utils.g.t0(this.f56911c).n(this.f56911c, this.H.getPackageName());
                if (!com.join.mgps.Util.t2.i(this.H.getVer()) || aVarN.d() >= Integer.parseInt(this.H.getVer())) {
                    this.H.setStatus(5);
                } else {
                    this.H.setStatus(9);
                }
            } else {
                this.H.setStatus(11);
            }
            updateButn();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void p0(GiftPackageDataInfoBean bean) {
        if (!com.join.android.app.common.utils.m.j(this.f56911c)) {
            showToast("领取失败");
            return;
        }
        try {
            try {
                GiftPackageOperationBean giftPackageOperationBeanN0 = this.I.N0(RequestBeanUtil.getInstance(this.f56911c).getGiftPackageOperationRequestBean(this.S.getUid(), bean.getGift_package_id(), this.L));
                if (giftPackageOperationBeanN0 != null) {
                    if (giftPackageOperationBeanN0.getFlag().equals("0")) {
                        String error_info = giftPackageOperationBeanN0.getError_info();
                        if (error_info == null || !giftPackageOperationBeanN0.getCode().equals(HmIMEManager.ERROR_CODE_NOT_ENABLE)) {
                            return;
                        }
                        showToast(error_info);
                        return;
                    }
                    List<GiftPackageDataOperationBean> data = giftPackageOperationBeanN0.getMessages().getData();
                    if (data == null || data.size() <= 0) {
                        showToast("领取失败");
                        return;
                    }
                    GiftPackageDataOperationBean giftPackageDataOperationBean = data.get(0);
                    List<GiftPackageDataInfoBean> game_gift_package = this.P.getGame_gift_package();
                    for (int i10 = 0; i10 < game_gift_package.size(); i10++) {
                        GiftPackageDataInfoBean giftPackageDataInfoBean = game_gift_package.get(i10);
                        if (bean.getGift_package_id() == giftPackageDataInfoBean.getGift_package_id()) {
                            giftPackageDataInfoBean.setGift_package_status(1);
                            giftPackageDataInfoBean.setGift_package_overdue(giftPackageDataOperationBean.getGift_info().getGift_package_overdue());
                            giftPackageDataInfoBean.setGift_package_code(giftPackageDataOperationBean.getGift_info().getGift_package_code());
                        }
                    }
                    this.P.setGame_gift_package(game_gift_package);
                    N0(giftPackageDataOperationBean);
                    return;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            showToast("领取失败");
        } catch (Throwable th) {
            showToast("领取失败");
            throw th;
        }
    }

    @Click
    void progress_layout() {
        DownloadTask downloadTask = this.H;
        if (downloadTask == null) {
            return;
        }
        if (downloadTask.getStatus() == 2) {
            updateButn();
            com.php25.PDownload.d.i(this.H);
        } else if (this.H.getStatus() == 3 || this.H.getStatus() == 6) {
            updateButn();
            com.php25.PDownload.d.c(this.H, this.f56911c);
        }
    }

    public CommonRequestBean q0() {
        UserInfo accountData = AccountUtil_.getInstance_(this.f56911c).getAccountData();
        this.S = accountData;
        return RequestBeanUtil.getInstance(this.f56911c).getGameCommentListRequestBean(1, 5, accountData != null ? accountData.getUid() : 0, this.L, new int[]{1});
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void r0() {
        if (com.join.android.app.common.utils.m.j(this.f56911c)) {
            try {
                CommentResponse<CommentTokenBean> commentResponseG = this.K.g(RequestBeanUtil.getInstance(this.f56911c).getTokenRequestBean(AccountUtil_.getInstance_(this.f56911c).getUid(), ""));
                if (commentResponseG == null || commentResponseG.getCode() != 0 || commentResponseG.getData_info() == null || TextUtils.isEmpty(commentResponseG.getData_info().getToken())) {
                    return;
                }
                this.f56946r1.commentToken().g(AESUtils.f(commentResponseG.getData_info().getToken() + "|" + commentResponseG.getData_info().getTimes()));
                this.f56946r1.lastCheckInTime().g(Long.valueOf(System.currentTimeMillis()));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @Click
    void relodingimag() {
        this.B.setVisibility(0);
        n0();
    }

    void s0() {
        ExtBean extBean = this.M;
        if (extBean == null || TextUtils.isEmpty(extBean.getFrom()) || !this.M.getFrom().equals("updateFromMarket")) {
            return;
        }
        IntentUtil.getInstance().goMGMainActivity2Front(this.f56911c);
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this.f56911c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showInstallButn() {
        GamedetialModleFourBean gamedetialModleFourBean = this.P;
        if (gamedetialModleFourBean == null || TextUtils.isEmpty(gamedetialModleFourBean.getCrc_sign_id())) {
            return;
        }
        RelativeLayout relativeLayout = this.f56940p;
        if (relativeLayout != null) {
            relativeLayout.setVisibility(8);
        }
        RelativeLayout relativeLayout2 = this.f56943q;
        if (relativeLayout2 != null) {
            relativeLayout2.setVisibility(0);
        }
        TextView textView = this.f56938o;
        if (textView != null) {
            textView.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        LinearLayout linearLayout = this.B;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        try {
            GamedetialModleFourBean gamedetialModleFourBean = this.P;
            if (gamedetialModleFourBean == null || com.join.mgps.Util.t2.h(gamedetialModleFourBean.getCrc_sign_id())) {
                LinearLayout linearLayout2 = this.A;
                if (linearLayout2 != null) {
                    linearLayout2.setVisibility(0);
                }
                if (com.join.android.app.common.utils.m.j(this.f56911c)) {
                    this.C.setVisibility(8);
                } else {
                    this.C.setVisibility(0);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMain(List<CommentBaseBean> commitDataBeans) {
        this.R1 = commitDataBeans;
        if (this.P.getGame_id() != null) {
            b1(this.P, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showProgress() {
        RelativeLayout relativeLayout = this.f56943q;
        if (relativeLayout != null) {
            relativeLayout.setVisibility(8);
        }
        TextView textView = this.f56938o;
        if (textView != null) {
            textView.setVisibility(8);
        }
        RelativeLayout relativeLayout2 = this.f56940p;
        if (relativeLayout2 != null) {
            relativeLayout2.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String charSequence) {
        com.join.mgps.Util.a3.b(this.f56911c).d(charSequence);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void t0() {
        if (!com.join.android.app.common.utils.m.j(this.f56911c)) {
            showLodingFailed();
            return;
        }
        try {
            UserInfo accountData = AccountUtil_.getInstance_(this.f56911c).getAccountData();
            if (accountData == null) {
                accountData = UserInfo.newBuilder().build();
            }
            RequestModel requestModel = new RequestModel();
            requestModel.setDefault(this.f56911c);
            String str = this.L;
            int i10 = this.f56944q1;
            this.f56944q1 = i10 + 1;
            RequestGameIdArgs requestGameIdArgs = new RequestGameIdArgs(str, i10, accountData.getUid());
            requestGameIdArgs.setDownloadedGameIdList(q5.f.M().B());
            requestModel.setArgs(requestGameIdArgs);
            ResponseModel<List<CollectionBeanSub>> responseModelBody = com.join.mgps.rpc.impl.i.P0().N0().l(requestModel.makeSign()).execute().body();
            if (responseModelBody == null || responseModelBody.getCode() != 200) {
                showLodingFailed();
            } else {
                Y0(responseModelBody.getData());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            showLodingFailed();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateButn() {
        GamedetialModleFourBean gamedetialModleFourBean = this.P;
        if (gamedetialModleFourBean == null || this.H == null || this.f56943q == null) {
            return;
        }
        if (this.f56918f1) {
            if (gamedetialModleFourBean.getDownloadtaskDown() == null || this.P.getDownloadtaskDown().isSingleGame() || this.P.getDownloadtaskDown().getStatus() != 11) {
                this.f56938o.setText("打开");
                return;
            } else {
                this.f56938o.setText("安装");
                return;
            }
        }
        UtilsMy.A3(gamedetialModleFourBean.getSp_tag_info(), this.f56943q, this.H);
        if (this.P.getPlugin_num() != null) {
            if (this.P.getPlugin_num().equals(ConstantIntEnum.H5.value() + "")) {
                this.f56938o.setBackgroundResource(R.drawable.detial_simple_normal_selecter);
                this.f56938o.setText("开始");
                showInstallButn();
                return;
            }
        }
        this.f56938o.setBackgroundResource(R.drawable.detial_simple_normal_selecter);
        DownloadTask downloadTask = this.H;
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        if (UtilsMy.x0(this.P.getPay_tag_info(), this.P.getCrc_sign_id()) > 0) {
            status = 43;
        }
        if (status == 9) {
            showInstallButn();
            this.f56938o.setText("更新");
            this.f56945r.setImageResource(R.drawable.detail_comment_download_continue);
            this.f56945r.setImageResource(R.drawable.detial_simple_install_selecter);
            return;
        }
        if (status == 12) {
            showInstallButn();
            this.f56938o.setText("解压中..");
            return;
        }
        if (status == 13) {
            showInstallButn();
            this.f56938o.setText("解压");
            this.f56945r.setImageResource(R.drawable.detail_comment_download_continue);
            return;
        }
        if (status == 11) {
            showInstallButn();
            this.f56938o.setText("安装");
            this.f56938o.setBackgroundResource(R.drawable.detial_simple_install_selecter);
            this.f56945r.setImageResource(R.drawable.detial_simple_install_selecter);
            return;
        }
        if (status == 5 || status == 42) {
            showInstallButn();
            a1(true);
            this.f56938o.setBackgroundResource(R.drawable.detial_simple_open_selecter);
            this.f56938o.setText(this.f56911c.getResources().getString(R.string.download_status_finished));
            this.f56945r.setImageResource(R.drawable.detail_comment_download_continue);
            return;
        }
        if (status == 2) {
            showProgress();
            this.f56945r.setImageResource(R.drawable.detail_comment_download_pause);
            UtilsMy.U4(this.H);
            this.f56948t.setProgress((int) this.H.getProgress());
            this.f56947s.setText(this.H.getProgress() + "%");
            return;
        }
        if (status == 3 || status == 6 || status == 27) {
            showProgress();
            this.f56945r.setImageResource(R.drawable.detail_comment_download_continue);
            UtilsMy.U4(this.H);
            this.f56948t.setProgress((int) this.H.getProgress());
            this.f56947s.setText(this.H.getProgress() + "%");
            return;
        }
        if (status == 10) {
            showInstallButn();
            this.f56938o.setText("等待\u3000" + this.P.getSize() + "M");
            this.f56945r.setImageResource(R.drawable.detail_comment_download_continue);
            return;
        }
        if (status == 1) {
            return;
        }
        if (status == 43) {
            showInstallButn();
            if (UtilsMy.x0(this.P.getPay_tag_info(), this.P.getCrc_sign_id()) > 0) {
                this.f56938o.setText(this.f56911c.getResources().getString(R.string.pay_game_amount, this.P.getPay_tag_info().getPayGameAmount()));
            } else {
                this.f56938o.setText(this.f56911c.getResources().getString(R.string.download_status_download));
            }
            this.f56945r.setImageResource(R.drawable.detail_comment_download_continue);
            GamedetialModleFourBean gamedetialModleFourBean2 = this.P;
            if (gamedetialModleFourBean2 != null) {
                if (gamedetialModleFourBean2.getBespeak_switch() != 1 || this.P.getDown_status() != 2) {
                    UtilsMy.x0(this.P.getPay_tag_info(), this.P.getCrc_sign_id());
                    UtilsMy.E3(this.f56938o, this.P);
                    return;
                } else {
                    if (this.P.getGame_book() != 1) {
                        this.f56938o.setText("预约");
                        return;
                    }
                    this.f56938o.setText("已预约");
                    UtilsMy.x0(this.P.getPay_tag_info(), this.P.getCrc_sign_id());
                    UtilsMy.E3(this.f56938o, this.P);
                    return;
                }
            }
            return;
        }
        if (status == 48) {
            showInstallButn();
            this.f56938o.setText(this.f56911c.getResources().getString(R.string.download_status_installing));
            return;
        }
        showInstallButn();
        if (UtilsMy.x0(this.P.getPay_tag_info(), this.P.getCrc_sign_id()) > 0) {
            this.f56938o.setText(this.f56911c.getResources().getString(R.string.pay_game_amount, this.P.getPay_tag_info().getPayGameAmount()));
        } else {
            this.f56938o.setText(this.f56911c.getResources().getString(R.string.download_status_download));
        }
        this.f56945r.setImageResource(R.drawable.detail_comment_download_continue);
        GamedetialModleFourBean gamedetialModleFourBean3 = this.P;
        if (gamedetialModleFourBean3 != null) {
            if (gamedetialModleFourBean3.getBespeak_switch() != 1 || this.P.getDown_status() != 2) {
                UtilsMy.x0(this.P.getPay_tag_info(), this.P.getCrc_sign_id());
                UtilsMy.E3(this.f56938o, this.P);
            } else {
                if (this.P.getGame_book() != 1) {
                    this.f56938o.setText("预约");
                    return;
                }
                this.f56938o.setText("已预约");
                UtilsMy.x0(this.P.getPay_tag_info(), this.P.getCrc_sign_id());
                UtilsMy.E3(this.f56938o, this.P);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateDownloadView() {
        try {
            this.f56933l2.setDownloadGameNum();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateTitleButn(ResultMainBean result, int type) {
        if (result.getFlag() == 1) {
            if (type == 1) {
                this.P.setGame_follow(0);
            } else if (type == 2) {
                this.P.setGame_follow(1);
                if (this.f56927j == null) {
                    return;
                }
                com.join.mgps.Util.a3.b(this.f56911c).d("收藏成功");
                this.f56927j.setImageResource(R.drawable.followed_image);
                this.f56929k.setText("已收藏");
            } else if (type == 3) {
                this.P.setGame_book(0);
            } else if (type == 4) {
                this.P.setGame_book(1);
                Intent intent = new Intent("com.broadcast.bespeak.sussess");
                intent.putExtra("gameid", this.P.getCrc_sign_id());
                this.f56911c.sendBroadcast(intent);
                com.join.mgps.Util.h0.h0(this.f56911c).O(this.f56911c, 1, new e()).show();
            }
            D0();
            updateButn();
        }
    }

    @Receiver(actions = {p5.a.G, p5.a.I})
    void v0(@Receiver.Extra("gameData") CollectionBeanSub sub) {
        if (sub != null) {
            PurchasedListTable purchasedListTableN = t6.e0.o().n(sub.getGame_id());
            if (purchasedListTableN == null) {
                purchasedListTableN = new PurchasedListTable();
            }
            purchasedListTableN.setGame_id(sub.getGame_id());
            t6.e0.o().m(purchasedListTableN);
        }
        updateButn();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void w0() {
        U0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void x0(CommentBaseBean bean, int position, int type) {
        if (!com.join.android.app.common.utils.m.j(this.f56911c)) {
            E0("网络连接失败，再试试吧~", true, position, 1);
            return;
        }
        try {
            CommentResponse<CommentPraiseBean> commentResponseD = this.K.d(m0(bean.getId(), type, bean.getPn()));
            if (commentResponseD == null) {
                E0("操作失败，请稍候再试~", true, position, 1);
                return;
            }
            if (commentResponseD.getCode() == 801) {
                F0(commentResponseD);
            } else if (commentResponseD.getSucc() != 1) {
                E0(commentResponseD.getMsg(), true, position, 1);
            }
            if (commentResponseD.getSucc() == 1) {
                d0(position, 1);
            }
        } catch (Exception e10) {
            E0("操作失败，请稍候再试~", true, position, 1);
            e10.printStackTrace();
        }
    }

    void y0(CommentBaseBean bean) {
        CommentDetailActivity_.intent(this.f56911c).d(bean.getGame_id()).b(bean.getId()).f(this.P.getPlugin_num()).a(this.P.getBespeak_switch()).e(this.P.getIs_started()).c(this.P.getComment_score_switch()).h(this.P.getGame_score().getSgc_switch()).g(this.P.getPackageName()).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void z0(CommentBaseBean bean, int position, int type) {
        if (!com.join.android.app.common.utils.m.j(this.f56911c)) {
            E0("网络连接失败，再试试吧~", true, position, 2);
            return;
        }
        try {
            CommentResponse<CommentPraiseBean> commentResponseE = this.K.e(m0(bean.getId(), type, bean.getPn()));
            if (commentResponseE == null) {
                E0("操作失败，请稍候再试~", true, position, 2);
                return;
            }
            if (commentResponseE.getCode() == 801) {
                F0(commentResponseE);
            } else if (commentResponseE.getSucc() != 1) {
                E0(commentResponseE.getMsg(), true, position, 2);
            }
            if (commentResponseE.getSucc() == 1) {
                d0(position, 2);
            }
        } catch (Exception e10) {
            E0("操作失败，请稍候再试~", true, position, 2);
            e10.printStackTrace();
        }
    }
}
