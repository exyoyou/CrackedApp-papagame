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
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.haima.hmcp.Constants;
import com.haima.hmcp.utils.HmIMEManager;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.Util.AESUtils;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.gamedetail.GamedetailVideoMainActivity;
import com.join.mgps.activity.gamedetail.GamedetailVideoMainActivity_;
import com.join.mgps.adapter.d2.b1;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.db.tables.PurchasedListTable;
import com.join.mgps.dto.BTActivityBean;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CommentAllListBean;
import com.join.mgps.dto.CommentBaseBean;
import com.join.mgps.dto.CommentPraiseBean;
import com.join.mgps.dto.CommentResponse;
import com.join.mgps.dto.CommentTokenBean;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.GameDetailCloudArchive;
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
import com.join.mgps.dto.ServiceState;
import com.join.mgps.dto.ShareBean;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.enums.Dtype;
import com.join.mgps.pref.PrefDef_;
import com.papa.sim.statistic.Where;
import com.sigmob.sdk.base.mta.PointType;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
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
@EFragment(R.layout.gamedetial_modle_three_activity)
public class f2 extends Fragment {

    /* JADX INFO: renamed from: f2, reason: collision with root package name */
    private static final String f57150f2 = "GameDetialModleThreeAct";

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
    private DownloadTask G;
    com.join.mgps.rpc.e H;
    com.join.mgps.rpc.i I;
    com.join.mgps.rpc.f J;
    String K;
    ExtBean L;

    @ViewById
    ImageView L1;
    boolean M;
    private com.join.mgps.adapter.d2 N;
    private GamedetialModleFourBean O;
    private LinearLayoutManager P;
    private com.join.mgps.customview.t Q;
    private UserInfo R;

    @ViewById
    ImageView R1;
    private com.join.mgps.customview.t S;
    private boolean T;
    com.join.mgps.recycler.e U;
    private com.join.android.app.common.manager.b V;

    @ViewById
    ImageView V1;

    @Pref
    PrefDef_ W;
    com.join.mgps.customview.t X;
    private List<CommentBaseBean> Z;

    /* JADX INFO: renamed from: a2, reason: collision with root package name */
    @ViewById
    ImageView f57151a2;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    private GameScore f57152b1;

    /* JADX INFO: renamed from: b2, reason: collision with root package name */
    @ViewById(R.id.title_normal_download_cdv)
    CustomerDownloadView f57153b2;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private GamedetailVideoMainActivity f57154c;

    /* JADX INFO: renamed from: c2, reason: collision with root package name */
    private Animation f57155c2;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    TextView f57156d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    TextView f57158e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @ViewById
    ImageView f57160f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @ViewById
    ImageView f57162g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @ViewById
    ImageView f57163h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @ViewById
    ImageView f57164i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @ViewById
    ImageView f57166j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @ViewById
    TextView f57167k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @ViewById
    LinearLayout f57168l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @ViewById
    LinearLayout f57170m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @ViewById
    RecyclerView f57171n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @ViewById
    TextView f57172o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @ViewById
    RelativeLayout f57173p;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    private String f57174p0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @ViewById
    RelativeLayout f57176q;

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    private int f57177q1;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @ViewById
    ImageView f57178r;

    /* JADX INFO: renamed from: r1, reason: collision with root package name */
    private int f57179r1;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @ViewById
    TextView f57180s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @ViewById
    ProgressBar f57181t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @ViewById
    LinearLayout f57182u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @ViewById
    RelativeLayout f57183v;

    /* JADX INFO: renamed from: v1, reason: collision with root package name */
    @ViewById
    TextView f57184v1;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @ViewById
    RelativeLayout f57185w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @ViewById
    RelativeLayout f57186x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @ViewById
    ImageView f57187y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @ViewById
    ImageView f57188z;
    boolean Y = false;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    private CommentAllListBean.SelfCommentBean f57161f1 = null;

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    private boolean f57165i1 = true;

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    Map<String, DownloadTask> f57169l1 = new HashMap();

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    Map<String, DownloadTask> f57175p1 = new HashMap();

    /* JADX INFO: renamed from: d2, reason: collision with root package name */
    com.join.mgps.customview.t f57157d2 = null;

    /* JADX INFO: renamed from: e2, reason: collision with root package name */
    com.join.mgps.customview.t f57159e2 = null;

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GiftPackageDataInfoBean f57189b;

        a(final GiftPackageDataInfoBean val$bean) {
            this.f57189b = val$bean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ((ClipboardManager) f2.this.f57154c.getSystemService(Constants.WS_MESSAGE_TYPE_CLIPBOARD)).setText(this.f57189b.getGift_package_code());
            com.join.mgps.Util.a3.b(f2.this.f57154c).d(this.f57189b.getGift_package_code() + "已复制到剪贴板");
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (f2.this.S == null || !f2.this.S.isShowing()) {
                return;
            }
            f2.this.S.dismiss();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadTask downloadTaskG;
            if (f2.this.S != null && f2.this.S.isShowing()) {
                f2.this.S.dismiss();
            }
            int status = f2.this.G != null ? f2.this.G.getStatus() : 0;
            if (f2.this.O != null && UtilsMy.x0(f2.this.O.getPay_tag_info(), f2.this.O.getCrc_sign_id()) > 0) {
                status = 43;
            }
            if (status != 0) {
                if (status == 5) {
                    UtilsMy.p4(f2.this.f57154c, f2.this.G, "2");
                    return;
                } else if (status != 9 && status != 43) {
                    return;
                }
            }
            f2.this.G.setKeyword(Where.detail.name());
            if (com.join.mgps.Util.t2.i(f2.this.G.getCrc_link_type_val()) && (downloadTaskG = q5.f.M().G(f2.this.G.getCrc_link_type_val())) != null) {
                UtilsMy.V4(f2.this.G, downloadTaskG);
            }
            f2 f2Var = f2.this;
            f2Var.addFrom(f2Var.G);
            if (f2.this.O != null) {
                if (UtilsMy.z0(f2.this.O.getPay_tag_info(), f2.this.O.getCrc_sign_id()) > 0) {
                    ExtBean extBean = f2.this.L;
                    if (extBean != null && "checkgame".equals(extBean.getFrom())) {
                        GamedetailVideoMainActivity gamedetailVideoMainActivity = f2.this.f57154c;
                        f2 f2Var2 = f2.this;
                        UtilsMy.A4(gamedetailVideoMainActivity, f2Var2.K, f2Var2.L.getFrom_id());
                    } else if (!UtilsMy.o1(f2.this.f57154c, f2.this.G)) {
                        if (f2.this.O.getDown_status() == 5) {
                            UtilsMy.l1(f2.this.f57154c, f2.this.G);
                        } else {
                            UtilsMy.z4(f2.this.f57154c, f2.this.K);
                        }
                    }
                } else {
                    UtilsMy.D1(f2.this.G, f2.this.O);
                    if (!UtilsMy.o1(f2.this.f57154c, f2.this.G)) {
                        if (f2.this.O.getDown_status() == 5) {
                            UtilsMy.l1(f2.this.f57154c, f2.this.G);
                        } else {
                            UtilsMy.U0(f2.this.f57154c, f2.this.G, f2.this.O.getTp_down_url(), f2.this.O.getOther_down_switch(), f2.this.O.getCdn_down_switch());
                        }
                    }
                }
            }
            f2.this.G.setStatus(2);
        }
    }

    class d implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GiftPackageDataOperationBean f57193b;

        d(final GiftPackageDataOperationBean val$bean) {
            this.f57193b = val$bean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ((ClipboardManager) f2.this.f57154c.getSystemService(Constants.WS_MESSAGE_TYPE_CLIPBOARD)).setText(this.f57193b.getGift_info().getGift_package_code());
            com.join.mgps.Util.a3.b(f2.this.f57154c).d(this.f57193b.getGift_info().getGift_package_code() + "已复制到剪贴板");
        }
    }

    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (f2.this.S == null || !f2.this.S.isShowing()) {
                return;
            }
            f2.this.S.dismiss();
        }
    }

    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadTask downloadTaskG;
            if (f2.this.S != null && f2.this.S.isShowing()) {
                f2.this.S.dismiss();
            }
            int status = f2.this.G != null ? f2.this.G.getStatus() : 0;
            if (f2.this.O != null && UtilsMy.x0(f2.this.O.getPay_tag_info(), f2.this.O.getCrc_sign_id()) > 0) {
                status = 43;
            }
            if (status != 0) {
                if (status == 5) {
                    UtilsMy.p4(f2.this.f57154c, f2.this.G, "2");
                    return;
                } else if (status != 9 && status != 43) {
                    return;
                }
            }
            if (f2.this.O.getDown_status() == 2) {
                return;
            }
            if (com.join.mgps.Util.t2.i(f2.this.G.getCrc_link_type_val()) && (downloadTaskG = q5.f.M().G(f2.this.G.getCrc_link_type_val())) != null) {
                UtilsMy.V4(f2.this.G, downloadTaskG);
            }
            f2.this.G.setKeyword(Where.detail.name());
            if (f2.this.O != null) {
                if (UtilsMy.z0(f2.this.O.getPay_tag_info(), f2.this.O.getCrc_sign_id()) > 0) {
                    UtilsMy.z4(f2.this.f57154c, f2.this.K);
                } else {
                    f2 f2Var = f2.this;
                    f2Var.addFrom(f2Var.G);
                    UtilsMy.D1(f2.this.G, f2.this.O);
                    if (!UtilsMy.o1(f2.this.f57154c, f2.this.G)) {
                        if (f2.this.O.getDown_status() == 5) {
                            UtilsMy.l1(f2.this.f57154c, f2.this.G);
                        } else {
                            UtilsMy.U0(f2.this.f57154c, f2.this.G, f2.this.O.getTp_down_url(), f2.this.O.getOther_down_switch(), f2.this.O.getCdn_down_switch());
                        }
                    }
                }
            }
            f2.this.G.setStatus(2);
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

    class h implements com.join.mgps.adapter.d2.c1 {
        h() {
        }

        @Override // com.join.mgps.adapter.d2.c1
        public void a(InformationCommentBean bean) {
            if (IntentUtil.getInstance().goLoginInteractive(f2.this.f57154c)) {
                return;
            }
            f2.this.r0(bean);
        }

        @Override // com.join.mgps.adapter.d2.c1
        public void b(InformationCommentBean.Sub sub) {
            InformationCommentBean informationCommentBean = new InformationCommentBean();
            informationCommentBean.setUser_name(sub.getUser_name());
            informationCommentBean.setComment_id(sub.getUser_id());
            informationCommentBean.setUser_id(sub.getUser_id());
            if (f2.this.O != null) {
                GameCommentActivity_.intent(f2.this.f57154c).a(f2.this.O.getCrc_sign_id()).d(true).b(informationCommentBean).start();
            }
        }

        @Override // com.join.mgps.adapter.d2.c1
        public void c(InformationCommentBean bean) {
            if (f2.this.O != null) {
                GameCommentActivity_.intent(f2.this.f57154c).a(f2.this.O.getCrc_sign_id()).d(true).b(bean).start();
            }
        }

        @Override // com.join.mgps.adapter.d2.c1
        public void d() {
        }

        @Override // com.join.mgps.adapter.d2.c1
        public void e() {
            f2.this.b0();
        }

        @Override // com.join.mgps.adapter.d2.c1
        public void f() {
            ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
            forumPostsBean.setPid((int) f2.this.O.getForum_id());
            com.join.mgps.Util.r0.v0(f2.this.f57154c, forumPostsBean);
        }

        @Override // com.join.mgps.adapter.d2.c1
        public void g() {
        }

        @Override // com.join.mgps.adapter.d2.c1
        public void h() {
            if (f2.this.O.getGame_book() == 1 || IntentUtil.getInstance().goLoginNetGame(f2.this.f57154c)) {
                return;
            }
            f2.this.changeGameFollow(4);
        }

        @Override // com.join.mgps.adapter.d2.c1
        public void i(boolean isGetGift, GiftPackageDataInfoBean gift) {
            if (IntentUtil.getInstance().goLoginNetGame(f2.this.f57154c)) {
                return;
            }
            if (!isGetGift) {
                f2.this.C0(gift);
            } else if (f2.this.V(gift.getGift_package_type())) {
                f2.this.g0(gift);
            }
        }

        @Override // com.join.mgps.adapter.d2.c1
        public void onPraise(CommentBaseBean bean, int position, int type) {
            f2.this.n0(bean, position, type);
        }

        @Override // com.join.mgps.adapter.d2.c1
        public void onRootView(CommentBaseBean bean) {
            f2.this.o0(bean);
        }

        @Override // com.join.mgps.adapter.d2.c1
        public void onUnPraise(CommentBaseBean bean, int position, int type) {
            f2.this.p0(bean, position, type);
        }
    }

    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            f2.this.w0();
        }
    }

    class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            f2.this.w0();
        }
    }

    class k implements com.join.mgps.Util.x1.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f57201a;

        k(final boolean val$needRetry) {
            this.f57201a = val$needRetry;
        }

        @Override // com.join.mgps.Util.x1.b
        public void a(com.join.mgps.Util.x1.c result) {
            if (result.a() == 1) {
                f2.this.f57154c.finish();
                com.join.mgps.Util.x1.c().e(f2.this.f57154c, f2.this.L.getFrom_id(), result.b());
                com.join.mgps.Util.a3.b(f2.this.f57154c).d("授权成功");
            } else if (this.f57201a) {
                f2.this.O0(false);
            }
        }
    }

    class l implements CompoundButton.OnCheckedChangeListener {
        l() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
            f2.this.W.noFavoriteTips().g(Boolean.valueOf(isChecked));
        }
    }

    class m implements View.OnClickListener {
        m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            com.join.mgps.customview.t tVar = f2.this.X;
            if (tVar != null && tVar.isShowing()) {
                f2.this.X.dismiss();
            }
            f2.this.a0();
        }
    }

    class n implements View.OnClickListener {
        n() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            f2.this.z0();
        }
    }

    class o implements View.OnClickListener {
        o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            f2.this.B0();
        }
    }

    class p implements com.join.mgps.callbacks.d {
        p() {
        }

        @Override // com.join.mgps.callbacks.d
        public void onClickCancle() {
        }

        @Override // com.join.mgps.callbacks.d
        public void onClickOk() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean V(String finalType) {
        if (com.join.mgps.Util.t2.h(finalType)) {
            com.join.mgps.Util.a3.b(this.f57154c).d(this.f57154c.getString(R.string.unknow_gift_type));
            return false;
        }
        UserInfo accountData = AccountUtil_.getInstance_(this.f57154c).getAccountData();
        if (finalType.equals("6")) {
            if (!com.join.mgps.Util.b.piv(accountData)) {
                F0();
                return false;
            }
        } else if (finalType.equals("7") && accountData.getSVIPLevel() <= 0) {
            E0();
            return false;
        }
        return true;
    }

    private void W() {
        com.join.mgps.customview.t tVar = this.f57157d2;
        if (tVar == null || !tVar.isShowing()) {
            return;
        }
        this.f57157d2.dismiss();
    }

    private void X() {
        com.join.mgps.customview.t tVar = this.f57159e2;
        if (tVar == null || !tVar.isShowing()) {
            return;
        }
        this.f57159e2.dismiss();
    }

    public static GameDetialModleThreeActivity_ k0(String gameId, boolean autodown, ExtBean extBean) {
        Bundle bundle = new Bundle();
        bundle.putString("gameId", gameId);
        bundle.putBoolean(GamedetailVideoMainActivity_.AUTODOWN_EXTRA, autodown);
        bundle.putSerializable("extBean", extBean);
        GameDetialModleThreeActivity_ gameDetialModleThreeActivity_ = new GameDetialModleThreeActivity_();
        gameDetialModleThreeActivity_.setArguments(bundle);
        return gameDetialModleThreeActivity_;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit lambda$onEventMainThread$0() {
        updateDownloadView();
        return null;
    }

    private void t0() {
        this.N.notifyDataSetChanged();
    }

    private void x0(List<com.join.mgps.adapter.d2.b1> gamedetialItemMains) {
        GamedetialModleFourBean gamedetialModleFourBean = this.O;
        if (gamedetialModleFourBean == null || gamedetialModleFourBean.getComment_switch() != 1) {
            return;
        }
        for (int i10 = 0; this.O.getCommitDataBeanList() != null && i10 < this.O.getCommitDataBeanList().size(); i10++) {
            CommentBaseBean commentBaseBean = this.O.getCommitDataBeanList().get(i10);
            com.join.mgps.adapter.d2 d2Var = this.N;
            Objects.requireNonNull(d2Var);
            gamedetialItemMains.add(d2Var.new b1(commentBaseBean, 25));
            if (i10 == 0) {
                com.join.mgps.adapter.d2 d2Var2 = this.N;
                Objects.requireNonNull(d2Var2);
                gamedetialItemMains.add(d2Var2.new b1("", 27));
            }
        }
        com.join.mgps.adapter.d2 d2Var3 = this.N;
        Objects.requireNonNull(d2Var3);
        gamedetialItemMains.add(d2Var3.new b1("评论底部", 16));
    }

    private void y0(InformationCommentBean bean, List<com.join.mgps.adapter.d2.b1> gamedetialItemMains) {
        List<InformationCommentBean.Sub> sub = bean.getSub();
        if (sub == null || sub.size() <= 0) {
            return;
        }
        com.join.mgps.adapter.d2 d2Var = this.N;
        Objects.requireNonNull(d2Var);
        gamedetialItemMains.add(d2Var.new b1(new com.join.mgps.adapter.d2.d1(bean.getComment_id(), bean, 0, true), 15));
    }

    @Click
    void A0() {
        ShareBean shareBean = new ShareBean();
        String share_url = this.O.getShare_url();
        shareBean.setqZoneShareUrl(share_url);
        shareBean.setQqUrl(share_url);
        shareBean.setWechatFriendUrl(share_url);
        shareBean.setWechatShareUrl(share_url);
        shareBean.setWeiboShareUrl(share_url);
        shareBean.setImageUrl(this.O.getIco_remote());
        shareBean.setTitle(this.O.getGame_name());
        shareBean.setText(this.O.getInfo());
        shareBean.setFrom(2);
        shareBean.setGameId(this.O.getGame_id());
        if (this.O.getShare_config() != null && this.O.getShare_config().getShare_switch() == 1) {
            shareBean.setIntentData(this.O.getShare_config().getJump_info());
        }
        com.join.mgps.Util.w.r(this.f57154c, shareBean);
    }

    void B0() {
        ShareBean shareBean = new ShareBean();
        String str = this.O.getActivity_entry().getUrl() + this.O.getCrc_sign_id();
        shareBean.setqZoneShareUrl(str);
        shareBean.setQqUrl(str);
        shareBean.setWechatFriendUrl(str);
        shareBean.setWechatShareUrl(str);
        shareBean.setWeiboShareUrl(str);
        shareBean.setTitle(this.O.getGame_name());
        shareBean.setText(this.O.getInfo());
        shareBean.setImageUrl(this.O.getIco_remote());
        shareBean.setFrom(2);
        shareBean.setGameId(this.O.getGame_id());
        com.join.mgps.Util.w.r(this.f57154c, shareBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code duplicated, block: B:23:0x00fb A[Catch: Exception -> 0x015b, TryCatch #0 {Exception -> 0x015b, blocks: (B:3:0x0002, B:5:0x0009, B:7:0x000f, B:8:0x0017, B:10:0x00c8, B:12:0x00ce, B:21:0x00ef, B:26:0x0131, B:28:0x013a, B:29:0x0142, B:31:0x014e, B:34:0x0155, B:22:0x00f5, B:23:0x00fb, B:25:0x0102), top: B:39:0x0002 }] */
    /* JADX WARN: Code duplicated, block: B:25:0x0102 A[Catch: Exception -> 0x015b, TryCatch #0 {Exception -> 0x015b, blocks: (B:3:0x0002, B:5:0x0009, B:7:0x000f, B:8:0x0017, B:10:0x00c8, B:12:0x00ce, B:21:0x00ef, B:26:0x0131, B:28:0x013a, B:29:0x0142, B:31:0x014e, B:34:0x0155, B:22:0x00f5, B:23:0x00fb, B:25:0x0102), top: B:39:0x0002 }] */
    @UiThread
    public void C0(final GiftPackageDataInfoBean bean) {
        GamedetialModleFourBean gamedetialModleFourBean;
        try {
            t0();
            com.join.mgps.customview.t tVar = this.S;
            if (tVar != null && tVar.isShowing()) {
                this.S.dismiss();
                this.S = null;
            }
            com.join.mgps.customview.t tVar2 = new com.join.mgps.customview.t(this.f57154c, R.style.MyDialog);
            this.S = tVar2;
            tVar2.setContentView(R.layout.save_code_dialog);
            Button button = (Button) this.S.findViewById(R.id.dialog_button_cancle);
            Button button2 = (Button) this.S.findViewById(R.id.dialog_button_ok);
            ((LinearLayout) this.S.findViewById(R.id.layoutTop)).setVisibility(8);
            ((LinearLayout) this.S.findViewById(R.id.layoutBottom)).setVisibility(0);
            TextView textView = (TextView) this.S.findViewById(R.id.tip_title);
            TextView textView2 = (TextView) this.S.findViewById(R.id.saveCodeTv);
            TextView textView3 = (TextView) this.S.findViewById(R.id.saveCodeContent);
            TextView textView4 = (TextView) this.S.findViewById(R.id.dialog_time);
            TextView textView5 = (TextView) this.S.findViewById(R.id.moneyText);
            textView.setText("领号成功");
            textView3.setText(bean.getGift_package_code());
            button2.setText("关闭");
            button.setText("下载游戏");
            textView4.setText(com.join.mgps.Util.e0.A(bean.getGift_package_times_end()));
            textView2.setOnClickListener(new a(bean));
            button2.setOnClickListener(new b());
            DownloadTask downloadTask = this.G;
            int status = downloadTask != null ? downloadTask.getStatus() : 0;
            if (UtilsMy.x0(this.O.getPay_tag_info(), this.O.getCrc_sign_id()) > 0) {
                status = 43;
            }
            if (status == 0) {
                button.setText("下载游戏");
                gamedetialModleFourBean = this.O;
                if (gamedetialModleFourBean != null) {
                    UtilsMy.x0(gamedetialModleFourBean.getPay_tag_info(), this.O.getCrc_sign_id());
                    UtilsMy.I3(button, this.O.getDown_status(), this.O.getPay_tag_info(), this.O.getCrc_sign_id());
                    button.setBackgroundColor(-1);
                    UtilsMy.B3(this.O.getSp_tag_info(), textView5);
                }
            } else if (status == 5) {
                button.setText("启动游戏");
            } else if (status == 9 || status == 43) {
                button.setText("下载游戏");
                gamedetialModleFourBean = this.O;
                if (gamedetialModleFourBean != null) {
                    UtilsMy.x0(gamedetialModleFourBean.getPay_tag_info(), this.O.getCrc_sign_id());
                    UtilsMy.I3(button, this.O.getDown_status(), this.O.getPay_tag_info(), this.O.getCrc_sign_id());
                    button.setBackgroundColor(-1);
                    UtilsMy.B3(this.O.getSp_tag_info(), textView5);
                }
            } else {
                button.setText("下载中..");
            }
            if (this.O.getDown_status() == 2) {
                button.setEnabled(false);
                button.setText("即将开放");
            }
            button.setOnClickListener(new c());
            com.join.mgps.customview.t tVar3 = this.S;
            if (tVar3 == null || tVar3.isShowing()) {
                return;
            }
            this.S.show();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code duplicated, block: B:26:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:28:0x00ea  */
    @UiThread
    public void D0(final GiftPackageDataOperationBean bean) {
        com.join.mgps.customview.t tVar = this.S;
        if (tVar != null && tVar.isShowing()) {
            this.S.dismiss();
            this.S = null;
        }
        com.join.mgps.customview.t tVar2 = new com.join.mgps.customview.t(this.f57154c, R.style.MyDialog);
        this.S = tVar2;
        tVar2.setContentView(R.layout.save_code_dialog);
        Button button = (Button) this.S.findViewById(R.id.dialog_button_cancle);
        Button button2 = (Button) this.S.findViewById(R.id.dialog_button_ok);
        TextView textView = (TextView) this.S.findViewById(R.id.tip_title);
        TextView textView2 = (TextView) this.S.findViewById(R.id.saveCodeTv);
        TextView textView3 = (TextView) this.S.findViewById(R.id.saveCodeContent);
        TextView textView4 = (TextView) this.S.findViewById(R.id.moneyText);
        textView.setText("领号成功");
        textView3.setText(bean.getGift_info().getGift_package_code());
        button2.setText("关闭");
        button.setText("下载游戏");
        textView2.setOnClickListener(new d(bean));
        button2.setOnClickListener(new e());
        if (this.O.getDown_status() == 2) {
            button.setEnabled(false);
            button.setText("即将开放");
        }
        DownloadTask downloadTask = this.G;
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
        button.setOnClickListener(new f());
        t0();
        com.join.mgps.customview.t tVar3 = this.S;
        if (tVar3 == null || tVar3.isShowing()) {
            return;
        }
        this.S.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void E0() {
        com.join.mgps.customview.t tVar = this.f57157d2;
        if (tVar == null) {
            this.f57157d2 = com.join.mgps.Util.h0.h0(this.f57154c).e0(this.f57154c);
        } else if (tVar.isShowing()) {
            return;
        }
        this.f57157d2.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void F0() {
        com.join.mgps.customview.t tVar = this.f57159e2;
        if (tVar == null) {
            this.f57159e2 = com.join.mgps.Util.h0.h0(this.f57154c).g0(this.f57154c);
        } else if (tVar.isShowing()) {
            return;
        }
        this.f57159e2.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 4000)
    public void G0() {
        com.join.mgps.adapter.d2 d2Var = this.N;
        if (d2Var != null && d2Var.s() != null) {
            com.join.mgps.Util.e.g(this.N.s());
        }
        G0();
    }

    void H0() {
        ImageView imageView = this.L1;
        if (imageView == null) {
            return;
        }
        imageView.setImageResource(R.drawable.line_blue_bg);
        Animation animationLoadAnimation = AnimationUtils.loadAnimation(this.f57154c, R.anim.img_translate);
        this.f57155c2 = animationLoadAnimation;
        animationLoadAnimation.setFillAfter(true);
        this.f57151a2.setVisibility(0);
        this.f57151a2.startAnimation(this.f57155c2);
        this.f57155c2.setAnimationListener(new g());
    }

    void I0() {
        ImageView imageView = this.f57151a2;
        if (imageView != null) {
            imageView.clearAnimation();
            this.f57151a2.setVisibility(8);
            this.L1.setImageResource(R.drawable.line_white_bg);
        }
    }

    @Click
    void J0() {
        IntentUtil.getInstance().goMyGameManagerActivity(this.f57154c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void K0() {
        if (this.O.getGame_id() != null) {
            P0(this.O);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void L0(int number) {
        try {
            if (number < 100) {
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f57184v1.getLayoutParams();
                layoutParams.width = getResources().getDimensionPixelOffset(R.dimen.wdp24);
                layoutParams.height = getResources().getDimensionPixelOffset(R.dimen.wdp24);
                this.f57184v1.setLayoutParams(layoutParams);
                this.f57184v1.setCompoundDrawables(null, null, null, null);
                this.f57184v1.setBackgroundResource(R.drawable.mygame_big_round);
                this.f57184v1.setPadding(1, 0, 0, 1);
            } else {
                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.f57184v1.getLayoutParams();
                layoutParams2.width = getResources().getDimensionPixelOffset(R.dimen.dp70);
                layoutParams2.height = getResources().getDimensionPixelOffset(R.dimen.round_large_size);
                layoutParams2.setMargins(4, (int) TypedValue.applyDimension(1, 7.0f, getResources().getDisplayMetrics()), 0, 0);
                this.f57184v1.setGravity(17);
                this.f57184v1.setLayoutParams(layoutParams2);
                this.f57184v1.setCompoundDrawables(null, null, null, null);
                this.f57184v1.setBackgroundResource(R.drawable.message_round);
                this.f57184v1.setPadding(1, 0, 2, 1);
            }
            this.f57184v1.setVisibility(0);
            this.f57184v1.setText(number + "");
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void M0(int downloadingNumber) {
        if (downloadingNumber == 0) {
            I0();
        } else {
            H0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void N0() {
        I0();
        TextView textView = this.f57184v1;
        if (textView != null) {
            textView.setVisibility(8);
            this.f57184v1.setText("");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 1000)
    public void O0(final boolean needRetry) {
        ExtBean extBean = this.L;
        if (extBean == null || !"checkgame".equals(extBean.getFrom())) {
            return;
        }
        com.join.mgps.Util.x1.c().b(this.f57154c, this.L.getFrom_id(), new k(needRetry));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void P0(GamedetialModleFourBean modleFourBean) {
        List<GiftPackageDataInfoBean> game_gift_package;
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
            this.O = modleFourBean;
            if (this.M && q5.f.M().G(this.K) == null) {
                com.php25.PDownload.d.c(modleFourBean.getDownloadtaskDown(), this.f57154c);
            }
            if (modleFourBean.getShare_config() == null || modleFourBean.getShare_config().getShare_switch() != 1) {
                this.f57170m.setVisibility(8);
            } else {
                this.f57170m.setVisibility(0);
                com.join.android.app.common.utils.l.d(this.E, R.drawable.user_gift, "");
                this.f57170m.setOnClickListener(new n());
            }
            if (modleFourBean.getActivity_entry() != null) {
                this.f57170m.setVisibility(0);
                com.join.android.app.common.utils.l.h(this.E, modleFourBean.getActivity_entry().getPic());
                this.F.setText(modleFourBean.getActivity_entry().getTitle());
                this.f57170m.setOnClickListener(new o());
            } else {
                this.f57170m.setVisibility(8);
            }
            GamedetialModleFourBean gamedetialModleFourBean = this.O;
            if (gamedetialModleFourBean != null) {
                if (gamedetialModleFourBean.getGame_follow() == 1) {
                    this.f57166j.setImageResource(R.drawable.followed_image);
                    this.f57167k.setText("已收藏");
                } else {
                    this.f57166j.setImageResource(R.drawable.follow_none_image);
                    this.f57167k.setText("收藏");
                }
            }
            DownloadTask downloadTaskG = q5.f.M().G(this.K);
            this.G = downloadTaskG;
            if (downloadTaskG == null) {
                this.G = this.O.getDownloadtaskDown();
                if (UtilsMy.p0(this.O.getTag_info())) {
                    this.G.setFileType(Dtype.android.name());
                    if (com.join.android.app.common.utils.g.t0(this.f57154c).e(this.f57154c, this.O.getPackageName())) {
                        APKUtils.a aVarN = com.join.android.app.common.utils.g.t0(this.f57154c).n(this.f57154c, this.O.getPackageName());
                        if (!com.join.mgps.Util.t2.i(this.O.getVer()) || aVarN.d() >= Integer.parseInt(this.O.getVer())) {
                            this.G.setStatus(5);
                        } else {
                            this.G.setStatus(9);
                        }
                    } else {
                        this.G.setStatus(0);
                    }
                } else {
                    this.G.setStatus(0);
                }
            } else {
                downloadTaskG.setDownloadType(0);
                this.G.setScreenshot_pic(this.O.getScreenshot_pic());
            }
            if (("" + this.O.getPlugin_num()).equals("" + ConstantIntEnum.H5.value())) {
                GamedetialModleFourBean gamedetialModleFourBean2 = this.O;
                gamedetialModleFourBean2.setDown_count(gamedetialModleFourBean2.getStart_count());
            }
            updateButn();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        try {
            List<CommentBaseBean> list = this.Z;
            if (list != null) {
                this.O.setCommitDataBeanList(list);
            }
            this.O.setSelf_comment(this.f57161f1);
            this.O.setGame_comment_count(this.f57174p0);
            this.O.setGame_score(this.f57152b1);
            this.N.I(modleFourBean);
            List<com.join.mgps.adapter.d2.b1> listX = this.N.x();
            listX.clear();
            if (this.O.getBt_game_switch() == 1) {
                if (this.O.getBt_game_coupon_count() > 0) {
                    com.join.mgps.adapter.d2 d2Var = this.N;
                    Objects.requireNonNull(d2Var);
                    listX.add(d2Var.new b1(Integer.valueOf(this.O.getBt_game_coupon_count()), 36));
                }
                String game_exclusive_benefits = this.O.getGame_exclusive_benefits();
                if (com.join.mgps.Util.t2.i(game_exclusive_benefits)) {
                    com.join.mgps.adapter.d2 d2Var2 = this.N;
                    Objects.requireNonNull(d2Var2);
                    listX.add(d2Var2.new b1("专属福利", 1));
                    com.join.mgps.adapter.d2 d2Var3 = this.N;
                    Objects.requireNonNull(d2Var3);
                    listX.add(d2Var3.new b1(game_exclusive_benefits, 8));
                }
                String game_buy_rebate = this.O.getGame_buy_rebate();
                if (com.join.mgps.Util.t2.i(game_exclusive_benefits)) {
                    com.join.mgps.adapter.d2 d2Var4 = this.N;
                    Objects.requireNonNull(d2Var4);
                    listX.add(d2Var4.new b1("充值返利", 1));
                    com.join.mgps.adapter.d2 d2Var5 = this.N;
                    Objects.requireNonNull(d2Var5);
                    listX.add(d2Var5.new b1(game_buy_rebate, 8));
                }
                List<BTActivityBean> activities = this.O.getActivities();
                if (activities != null && activities.size() > 0) {
                    com.join.mgps.adapter.d2 d2Var6 = this.N;
                    Objects.requireNonNull(d2Var6);
                    listX.add(d2Var6.new b1("活动公告", 1));
                    for (BTActivityBean bTActivityBean : activities) {
                        com.join.mgps.adapter.d2 d2Var7 = this.N;
                        Objects.requireNonNull(d2Var7);
                        listX.add(d2Var7.new b1(bTActivityBean, 38));
                    }
                }
                List<ServiceState> game_server_state = this.O.getGame_server_state();
                if (game_server_state != null && game_server_state.size() > 0) {
                    com.join.mgps.adapter.d2 d2Var8 = this.N;
                    Objects.requireNonNull(d2Var8);
                    listX.add(d2Var8.new b1("开合服", 1));
                    int i10 = 0;
                    for (ServiceState serviceState : game_server_state) {
                        i10++;
                        if (i10 <= 3) {
                            com.join.mgps.adapter.d2 d2Var9 = this.N;
                            Objects.requireNonNull(d2Var9);
                            listX.add(d2Var9.new b1(serviceState, 37));
                        }
                    }
                }
                List<GiftPackageDataInfoBean> game_gift_package2 = this.O.getGame_gift_package();
                if (game_gift_package2 != null && game_gift_package2.size() > 0) {
                    com.join.mgps.adapter.d2 d2Var10 = this.N;
                    Objects.requireNonNull(d2Var10);
                    listX.add(d2Var10.new b1("福利礼包", 1));
                    for (GiftPackageDataInfoBean giftPackageDataInfoBean : game_gift_package2) {
                        com.join.mgps.adapter.d2 d2Var11 = this.N;
                        Objects.requireNonNull(d2Var11);
                        listX.add(d2Var11.new b1(giftPackageDataInfoBean, 9));
                    }
                }
            }
            if (this.O.getBespeak_switch() == 1) {
                com.join.mgps.adapter.d2 d2Var12 = this.N;
                Objects.requireNonNull(d2Var12);
                listX.add(d2Var12.new b1(null, 3));
            }
            if (com.join.mgps.Util.t2.i(modleFourBean.getDev_info())) {
                com.join.mgps.adapter.d2 d2Var13 = this.N;
                Objects.requireNonNull(d2Var13);
                listX.add(d2Var13.new b1("开发者的话", 1));
                com.join.mgps.adapter.d2 d2Var14 = this.N;
                Objects.requireNonNull(d2Var14);
                listX.add(d2Var14.new b1(modleFourBean.getDev_info(), 7));
            }
            if (com.join.mgps.Util.t2.i(modleFourBean.getEdit_recommend())) {
                com.join.mgps.adapter.d2 d2Var15 = this.N;
                Objects.requireNonNull(d2Var15);
                listX.add(d2Var15.new b1("编辑推荐", 1));
                com.join.mgps.adapter.d2 d2Var16 = this.N;
                Objects.requireNonNull(d2Var16);
                listX.add(d2Var16.new b1(modleFourBean.getEdit_recommend(), 7));
            }
            if (this.O.getBt_game_switch() == 0 && this.O.getTag_info() != null && this.O.getTag_info().size() > 0) {
                com.join.mgps.adapter.d2 d2Var17 = this.N;
                Objects.requireNonNull(d2Var17);
                listX.add(d2Var17.new b1(null, 4));
            }
            if (modleFourBean.getGame_screen_shot() == null || modleFourBean.getGame_screen_shot().size() <= 0) {
                com.join.mgps.adapter.d2 d2Var18 = this.N;
                Objects.requireNonNull(d2Var18);
                listX.add(d2Var18.new b1(null, 5));
            } else {
                com.join.mgps.adapter.d2 d2Var19 = this.N;
                Objects.requireNonNull(d2Var19);
                listX.add(d2Var19.new b1("真实截图", 1));
                com.join.mgps.adapter.d2 d2Var20 = this.N;
                Objects.requireNonNull(d2Var20);
                listX.add(d2Var20.new b1(null, 28));
            }
            if (com.join.mgps.Util.t2.i(modleFourBean.getGame_describe_second())) {
                com.join.mgps.adapter.d2 d2Var21 = this.N;
                Objects.requireNonNull(d2Var21);
                listX.add(d2Var21.new b1("简介", 1));
                com.join.mgps.adapter.d2 d2Var22 = this.N;
                Objects.requireNonNull(d2Var22);
                listX.add(d2Var22.new b1(modleFourBean.getGame_describe_second(), 8));
            }
            if (modleFourBean.getGame_detailed() != null && com.join.mgps.Util.t2.i(modleFourBean.getGame_detailed().getTpl_two_qq())) {
                com.join.mgps.adapter.d2 d2Var23 = this.N;
                Objects.requireNonNull(d2Var23);
                listX.add(d2Var23.new b1(null, 24));
            }
            if (this.O.getBt_game_switch() == 0 && (game_gift_package = this.O.getGame_gift_package()) != null && game_gift_package.size() > 0) {
                com.join.mgps.adapter.d2 d2Var24 = this.N;
                Objects.requireNonNull(d2Var24);
                listX.add(d2Var24.new b1("福利礼包", 1));
                for (GiftPackageDataInfoBean giftPackageDataInfoBean2 : game_gift_package) {
                    com.join.mgps.adapter.d2 d2Var25 = this.N;
                    Objects.requireNonNull(d2Var25);
                    listX.add(d2Var25.new b1(giftPackageDataInfoBean2, 9));
                }
            }
            if (modleFourBean.getAuxiliary_tool() != null) {
                com.join.mgps.adapter.d2 d2Var26 = this.N;
                Objects.requireNonNull(d2Var26);
                listX.add(d2Var26.new b1("辅助工具", 10));
            }
            if (modleFourBean.getGame_prompt() != null && modleFourBean.getGame_prompt().size() > 0) {
                com.join.mgps.adapter.d2 d2Var27 = this.N;
                Objects.requireNonNull(d2Var27);
                listX.add(d2Var27.new b1(null, 6));
            }
            if (modleFourBean.getRoom_cfg_info() != null) {
                if (modleFourBean.getRoom_cfg_info().getGolden_finger() != null && modleFourBean.getRoom_cfg_info().getGolden_finger().size() > 0) {
                    com.join.mgps.adapter.d2 d2Var28 = this.N;
                    Objects.requireNonNull(d2Var28);
                    listX.add(d2Var28.new b1(GameMainActivity4.TITLE_GOLDFINGER, 1));
                    com.join.mgps.adapter.d2 d2Var29 = this.N;
                    Objects.requireNonNull(d2Var29);
                    listX.add(d2Var29.new b1(modleFourBean.getRoom_cfg_info().getGolden_finger(), 35));
                }
                if (modleFourBean.getRoom_cfg_info().getCloud_archive() != null && modleFourBean.getRoom_cfg_info().getCloud_archive().size() > 0) {
                    com.join.mgps.adapter.d2 d2Var30 = this.N;
                    Objects.requireNonNull(d2Var30);
                    listX.add(d2Var30.new b1("云存档", 1));
                    for (int i11 = 0; i11 < modleFourBean.getRoom_cfg_info().getCloud_archive().size() && i11 <= 1; i11++) {
                        GameDetailCloudArchive gameDetailCloudArchive = modleFourBean.getRoom_cfg_info().getCloud_archive().get(i11);
                        if (i11 == 0) {
                            gameDetailCloudArchive.setHideTop(1);
                        }
                        if (i11 == 3 || i11 == modleFourBean.getRoom_cfg_info().getCloud_archive().size() - 1) {
                            if (modleFourBean.getRoom_cfg_info().getOne_touch_skill() != null && modleFourBean.getRoom_cfg_info().getOne_touch_skill().size() > 0) {
                                gameDetailCloudArchive.setDivider(1);
                            }
                            if (modleFourBean.getRoom_cfg_info().getCheck_point() != null && modleFourBean.getRoom_cfg_info().getCheck_point().size() > 0) {
                                gameDetailCloudArchive.setDivider(1);
                            }
                        }
                        com.join.mgps.adapter.d2 d2Var31 = this.N;
                        Objects.requireNonNull(d2Var31);
                        listX.add(d2Var31.new b1(gameDetailCloudArchive, 31));
                    }
                }
            }
            if (modleFourBean.getGame_handle_entrance() != null) {
                com.join.mgps.adapter.d2 d2Var32 = this.N;
                Objects.requireNonNull(d2Var32);
                listX.add(d2Var32.new b1("支持手柄", 1));
            }
            if (modleFourBean.getCommunity_entrance_switch() == 1) {
                com.join.mgps.adapter.d2 d2Var33 = this.N;
                Objects.requireNonNull(d2Var33);
                listX.add(d2Var33.new b1("社区讨论", 1));
            }
            if (modleFourBean.getGame_upgrade_info_switch() == 1 || modleFourBean.getGame_detailed() != null) {
                com.join.mgps.adapter.d2 d2Var34 = this.N;
                Objects.requireNonNull(d2Var34);
                listX.add(d2Var34.new b1("", 34));
            }
            GamedetialModleFourBean gamedetialModleFourBean3 = this.O;
            if (gamedetialModleFourBean3 == null || gamedetialModleFourBean3.getComment_switch() == 1) {
                com.join.mgps.adapter.d2 d2Var35 = this.N;
                Objects.requireNonNull(d2Var35);
                listX.add(d2Var35.new b1("评论", 13));
                if (this.O.getCommitDataBeanList() != null && this.O.getCommitDataBeanList().size() > 0) {
                    x0(listX);
                } else if (this.f57165i1) {
                    this.f57165i1 = false;
                    f0();
                } else {
                    com.join.mgps.adapter.d2 d2Var36 = this.N;
                    Objects.requireNonNull(d2Var36);
                    listX.add(d2Var36.new b1("评论", 26));
                    com.join.mgps.adapter.d2 d2Var37 = this.N;
                    Objects.requireNonNull(d2Var37);
                    listX.add(d2Var37.new b1("评论", 27));
                }
            }
            if (this.O.getGame_favorites_top5() != null) {
                com.join.mgps.adapter.d2 d2Var38 = this.N;
                Objects.requireNonNull(d2Var38);
                listX.add(d2Var38.new b1("游戏单", 1));
                com.join.mgps.adapter.d2 d2Var39 = this.N;
                Objects.requireNonNull(d2Var39);
                listX.add(d2Var39.new b1("搜藏该游戏的游戏单", 29));
            }
            if (this.O.getBt_game_switch() != 1) {
                if (this.O.getRecommend_game_switch() == 1) {
                    com.join.mgps.adapter.d2 d2Var40 = this.N;
                    Objects.requireNonNull(d2Var40);
                    listX.add(d2Var40.new b1("同类游戏", 1));
                    com.join.mgps.adapter.d2 d2Var41 = this.N;
                    Objects.requireNonNull(d2Var41);
                    listX.add(d2Var41.new b1(1, 17));
                }
                if (this.O.getDown_and_down() != null && this.O.getDown_and_down().size() > 0) {
                    com.join.mgps.adapter.d2 d2Var42 = this.N;
                    Objects.requireNonNull(d2Var42);
                    listX.add(d2Var42.new b1("下了还会下", 1));
                    com.join.mgps.adapter.d2 d2Var43 = this.N;
                    Objects.requireNonNull(d2Var43);
                    listX.add(d2Var43.new b1(2, 17));
                }
            } else if (this.O.getBt_game_recommend() != null && this.O.getBt_game_recommend().size() > 0) {
                com.join.mgps.adapter.d2 d2Var44 = this.N;
                Objects.requireNonNull(d2Var44);
                listX.add(d2Var44.new b1("猜你喜欢", 1));
                com.join.mgps.adapter.d2 d2Var45 = this.N;
                Objects.requireNonNull(d2Var45);
                listX.add(d2Var45.new b1(4, 17));
            }
            this.N.notifyDataSetChanged();
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    @Receiver(actions = {"com.broadcast.bespeak.sussess"})
    void Q0() {
        this.O.setGame_book(1);
        this.N.notifyDataSetChanged();
    }

    @Click
    void S() {
        this.f57154c.finish();
        j0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void T() {
        try {
            this.f57177q1 = q5.f.M().V();
            int iD0 = q5.f.M().d0();
            this.f57179r1 = iD0;
            M0(iD0);
            int i10 = this.f57177q1;
            if (i10 != 0) {
                L0(i10);
            } else {
                N0();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        updateDownloadView();
    }

    @UiThread
    public void U(int position, int i10) {
        if (i10 == 1) {
            this.N.F(position, 1);
        } else {
            this.N.G(position, 1);
        }
    }

    @Click
    void Y() {
        IntentUtil.getInstance().goMyGameManagerActivity(this.f57154c);
    }

    @Click
    void Z() {
        IntentUtil.getInstance().goMyGameManagerActivity(this.f57154c);
    }

    void a0() {
        if (!com.join.android.app.common.utils.m.j(this.f57154c) || IntentUtil.getInstance().goLoginInteractive(this.f57154c) || this.O.getGame_follow() == 1) {
            return;
        }
        changeGameFollow(2);
    }

    void addFrom(DownloadTask downloadTask) {
        ExtBean extBean = this.L;
        if (extBean == null || TextUtils.isEmpty(extBean.getFrom()) || downloadTask == null || !"112".equals(this.L.getFrom())) {
            return;
        }
        ExtBean extBean2 = new ExtBean();
        extBean2.setFrom(PointType.ANTI_SPAM);
        extBean2.setPosition("112");
        extBean2.setLocation(this.L.getLocation());
        downloadTask.setExt(JsonMapper.toJsonString(extBean2));
    }

    @AfterViews
    void afterView() {
        this.H = com.join.mgps.rpc.impl.d.O1();
        this.I = com.join.mgps.rpc.impl.g.A0();
        this.J = com.join.mgps.rpc.impl.e.m();
        this.f57154c = (GamedetailVideoMainActivity) getActivity();
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.K = arguments.getString("gameId");
            this.M = arguments.getBoolean(GamedetailVideoMainActivity_.AUTODOWN_EXTRA);
            this.L = (ExtBean) arguments.getSerializable("extBean");
        }
        this.f57187y.setVisibility(0);
        this.f57188z.setVisibility(0);
        com.join.mgps.Util.j0.a().d(this);
        this.G = q5.f.M().G(this.K);
        getDownloadTaskInfo();
        this.O = new GamedetialModleFourBean();
        com.join.mgps.adapter.d2 d2Var = new com.join.mgps.adapter.d2(requireActivity(), this.f57154c.getModleFourFragment(), this.O);
        this.N = d2Var;
        ExtBean extBean = this.L;
        if (extBean != null) {
            d2Var.Q(extBean.get_from_type());
        }
        this.f57171n.setAdapter(this.N);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this.f57154c);
        this.f57171n.setLayoutManager(linearLayoutManager);
        this.U = new com.join.mgps.recycler.e(linearLayoutManager, this.f57171n);
        this.N.J(new h());
        LinearLayoutManager linearLayoutManager2 = (LinearLayoutManager) this.f57171n.getLayoutManager();
        this.P = linearLayoutManager2;
        linearLayoutManager2.setSmoothScrollbarEnabled(true);
        this.P.setAutoMeasureEnabled(true);
        this.f57171n.setLayoutManager(this.P);
        this.B.setVisibility(0);
        GamedetialModleFourBean modleFourBeanShow = ((GamedetailVideoMainActivity) getActivity()).getModleFourBeanShow();
        if (modleFourBeanShow != null) {
            P0(modleFourBeanShow);
        } else {
            e0();
        }
        this.R1.setOnClickListener(new i());
        this.V1.setOnClickListener(new j());
        ExtBean extBean2 = this.L;
        if (extBean2 != null) {
            extBean2.getFrom();
            this.L.getPosition();
            this.L.getLocation();
        }
        O0(false);
    }

    void b0() {
        boolean zBooleanValue = this.W.noFavoriteTips().d().booleanValue();
        if (IntentUtil.getInstance().goLoginInteractive(this.f57154c)) {
            return;
        }
        if (zBooleanValue) {
            a0();
            return;
        }
        if (this.X == null) {
            com.join.mgps.customview.t tVar = new com.join.mgps.customview.t(this.f57154c, R.style.MyDialog);
            this.X = tVar;
            tVar.setContentView(R.layout.favorite_dialog);
            this.X.setCanceledOnTouchOutside(true);
        }
        Button button = (Button) this.X.findViewById(R.id.ok);
        ((CheckBox) this.X.findViewById(R.id.opt)).setOnCheckedChangeListener(new l());
        button.setOnClickListener(new m());
        com.join.mgps.customview.t tVar2 = this.X;
        if (tVar2 == null || tVar2.isShowing()) {
            return;
        }
        this.X.show();
    }

    @Click
    void c0() {
        GamedetialModleFourBean gamedetialModleFourBean;
        if (IntentUtil.getInstance().goLoginInteractive(this.f57154c) || (gamedetialModleFourBean = this.O) == null || gamedetialModleFourBean.getGame_follow() == 1) {
            return;
        }
        b0();
    }

    void changeDownloadTaskNumber(DownloadTask task, int from) {
        if (task == null) {
            return;
        }
        String crc_link_type_val = task.getCrc_link_type_val();
        if (from == 2) {
            if (!this.f57169l1.containsKey(crc_link_type_val)) {
                this.f57169l1.put(crc_link_type_val, task);
            }
            if (!this.f57175p1.containsKey(crc_link_type_val)) {
                this.f57175p1.put(crc_link_type_val, task);
            }
        } else if (from != 3) {
            if (from != 5) {
                if (from != 6) {
                    if (from == 7) {
                        if (this.f57169l1.containsKey(crc_link_type_val)) {
                            this.f57169l1.remove(crc_link_type_val);
                        }
                        if (this.f57175p1.containsKey(crc_link_type_val)) {
                            this.f57175p1.remove(crc_link_type_val);
                        }
                    } else if (from == 10) {
                        if (!this.f57169l1.containsKey(crc_link_type_val)) {
                            this.f57169l1.put(crc_link_type_val, task);
                        }
                        if (!this.f57175p1.containsKey(crc_link_type_val)) {
                            this.f57175p1.put(crc_link_type_val, task);
                        }
                    } else if (from == 11) {
                    }
                } else if (this.f57175p1.containsKey(crc_link_type_val)) {
                    this.f57175p1.remove(crc_link_type_val);
                }
            } else if (this.f57169l1.containsKey(crc_link_type_val)) {
                this.f57169l1.remove(crc_link_type_val);
            }
            if (this.f57175p1.containsKey(crc_link_type_val)) {
                this.f57175p1.remove(crc_link_type_val);
            }
        } else if (this.f57175p1.containsKey(crc_link_type_val)) {
            this.f57175p1.remove(crc_link_type_val);
        }
        updateDownloadView();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void changeGameFollow(int type) {
        String str;
        ResultMainBean resultMainBeanJ1;
        if (com.join.android.app.common.utils.m.j(this.f57154c)) {
            UserInfo accountData = AccountUtil_.getInstance_(this.f57154c).getAccountData();
            this.R = accountData;
            int uid = accountData != null ? accountData.getUid() : 0;
            try {
                PackageInfo packageInfo = this.f57154c.getPackageManager().getPackageInfo(this.f57154c.getPackageName(), 0);
                str = packageInfo.versionCode + "_" + packageInfo.versionName;
            } catch (PackageManager.NameNotFoundException e10) {
                e10.printStackTrace();
                str = "";
            }
            RequestdetialFolowAndBeSpeak requestdetialFolowAndBeSpeak = new RequestdetialFolowAndBeSpeak();
            requestdetialFolowAndBeSpeak.setApp_ver(str);
            requestdetialFolowAndBeSpeak.setGame_id(this.O.getCrc_sign_id());
            requestdetialFolowAndBeSpeak.setUid(uid);
            requestdetialFolowAndBeSpeak.setMobile(this.R.getMobile());
            CommonRequestBean<RequestGameIdArgs> detialFollowAnd = RequestBeanUtil.getInstance(this.f57154c).getDetialFollowAnd(requestdetialFolowAndBeSpeak);
            if (type == 1) {
                resultMainBeanJ1 = this.H.j1(detialFollowAnd);
            } else if (type == 2) {
                resultMainBeanJ1 = this.H.n(detialFollowAnd);
            } else if (type != 3) {
                resultMainBeanJ1 = type != 4 ? null : this.H.M0(detialFollowAnd);
            } else {
                resultMainBeanJ1 = this.H.g(detialFollowAnd);
            }
            if (resultMainBeanJ1 != null) {
                updateTitleButn(resultMainBeanJ1, type);
            }
        }
    }

    public RequestCommentpraiseArgs d0(String comment_id, int type, int pn) {
        String token;
        int uid;
        String str = Build.MODEL;
        UserInfo accountData = AccountUtil_.getInstance_(this.f57154c).getAccountData();
        this.R = accountData;
        if (accountData != null) {
            uid = accountData.getUid();
            token = this.R.getToken();
        } else {
            token = "";
            uid = 0;
        }
        return RequestBeanUtil.getInstance(this.f57154c).getPraiseComment(this.K, this.W.commentToken().d(), str, comment_id, token, uid, type, pn);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void e0() {
        GamedetialModleFourBean data;
        if (!com.join.android.app.common.utils.m.j(this.f57154c)) {
            showLodingFailed();
            return;
        }
        try {
            UserInfo accountData = AccountUtil_.getInstance_(this.f57154c).getAccountData();
            if (accountData == null) {
                accountData = UserInfo.getDefaultInstance();
            }
            RequestModel requestModel = new RequestModel();
            requestModel.setDefault(this.f57154c);
            requestModel.setArgs(new RequestGameIdArgs(this.K, 1, accountData.getUid()));
            ResponseModel<GamedetialModleFourBean> responseModelBody = com.join.mgps.rpc.impl.i.P0().N0().P1(requestModel.makeSign()).execute().body();
            if (responseModelBody == null || responseModelBody.getCode() != 200 || (data = responseModelBody.getData()) == null) {
                showLodingFailed();
            } else {
                P0(data);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            showLodingFailed();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void f0() {
        if (com.join.android.app.common.utils.m.j(this.f57154c)) {
            com.join.mgps.rpc.impl.e eVarM = com.join.mgps.rpc.impl.e.m();
            new CommentAllListBean();
            try {
                CommentResponse<CommentAllListBean> commentResponseI = eVarM.i(RequestBeanUtil.getInstance(this.f57154c).getGamedetialCommentRequest(this.K, this.W.commentToken().d(), this.R.getUid() + ""));
                if (commentResponseI == null) {
                    showMain(new ArrayList());
                    return;
                }
                CommentAllListBean data_info = commentResponseI.getData_info();
                if (data_info != null) {
                    this.f57161f1 = data_info.getSelf_comment();
                    this.f57174p0 = data_info.getGame_comment_count();
                    this.f57152b1 = data_info.getGame_score();
                    this.f57154c.getModleFourFragment().setCommentNumber(this.f57174p0);
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

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void g0(GiftPackageDataInfoBean bean) {
        if (!com.join.android.app.common.utils.m.j(this.f57154c)) {
            showToast("领取失败");
            return;
        }
        try {
            try {
                GiftPackageOperationBean giftPackageOperationBeanN0 = this.H.N0(RequestBeanUtil.getInstance(this.f57154c).getGiftPackageOperationRequestBean(this.R.getUid(), bean.getGift_package_id(), this.K));
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
                    List<GiftPackageDataInfoBean> game_gift_package = this.O.getGame_gift_package();
                    for (int i10 = 0; i10 < game_gift_package.size(); i10++) {
                        GiftPackageDataInfoBean giftPackageDataInfoBean = game_gift_package.get(i10);
                        if (bean.getGift_package_id() == giftPackageDataInfoBean.getGift_package_id()) {
                            giftPackageDataInfoBean.setGift_package_status(1);
                            giftPackageDataInfoBean.setGift_package_overdue(giftPackageDataOperationBean.getGift_info().getGift_package_overdue());
                            giftPackageDataInfoBean.setGift_package_code(giftPackageDataOperationBean.getGift_info().getGift_package_code());
                        }
                    }
                    this.O.setGame_gift_package(game_gift_package);
                    D0(giftPackageDataOperationBean);
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

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getDownloadTaskInfo() {
        List<DownloadTask> listR = q5.f.M().r();
        List<DownloadTask> listQ = q5.f.M().q();
        if (listQ != null && listQ.size() > 0) {
            for (DownloadTask downloadTask : listQ) {
                this.f57169l1.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
        if (listR != null && listR.size() > 0) {
            for (DownloadTask downloadTask2 : listR) {
                this.f57175p1.put(downloadTask2.getCrc_link_type_val(), downloadTask2);
            }
        }
        updateDownloadView();
    }

    public CommonRequestBean h0() {
        UserInfo accountData = AccountUtil_.getInstance_(this.f57154c).getAccountData();
        this.R = accountData;
        return RequestBeanUtil.getInstance(this.f57154c).getGameCommentListRequestBean(1, 5, accountData != null ? accountData.getUid() : 0, this.K, new int[]{1});
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void i0() {
        if (com.join.android.app.common.utils.m.j(this.f57154c)) {
            try {
                CommentResponse<CommentTokenBean> commentResponseG = this.J.g(RequestBeanUtil.getInstance(this.f57154c).getTokenRequestBean(AccountUtil_.getInstance_(this.f57154c).getUid(), ""));
                if (commentResponseG == null || commentResponseG.getCode() != 0 || commentResponseG.getData_info() == null || TextUtils.isEmpty(commentResponseG.getData_info().getToken())) {
                    return;
                }
                this.W.commentToken().g(AESUtils.f(commentResponseG.getData_info().getToken() + "|" + commentResponseG.getData_info().getTimes()));
                this.W.lastCheckInTime().g(Long.valueOf(System.currentTimeMillis()));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @Click
    void instalButtomButn() {
        int game_book = this.O.getGame_book();
        if (this.O.getBespeak_switch() == 1 && game_book != 1 && this.O.getDown_status() == 2) {
            if (IntentUtil.getInstance().goLoginNetGame(this.f57154c) || this.O.getGame_book() == 1) {
                return;
            }
            changeGameFollow(4);
            return;
        }
        if (("" + this.O.getPlugin_num()).equals("" + ConstantIntEnum.H5.value())) {
            IntentUtil.getInstance().goShareWebActivity(this.f57154c, this.O.getDown_url_remote());
            UtilsMy.j3(this.G, this.f57154c);
        }
        DownloadTask downloadTask = this.G;
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        if (this.G != null && UtilsMy.x0(this.O.getPay_tag_info(), this.O.getCrc_sign_id()) > 0) {
            status = 43;
        }
        DownloadTask downloadTask2 = this.G;
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
                com.php25.PDownload.d.l(this.f57154c, downloadTask2);
                return;
            }
            if (status == 5) {
                UtilsMy.p4(this.f57154c, downloadTask2, "2");
            } else if (status == 42) {
                downloadTask2.setVer(this.O.getVer());
                this.G.setVer_name(this.O.getVer_name());
                this.G.setUrl(this.O.getDown_url_remote());
                this.G.setCfg_ver(this.O.getCfg_ver());
                this.G.setCfg_ver_name(this.O.getCfg_ver_name());
                this.G.setCfg_down_url(this.O.getCfg_down_url());
                this.G.setPay_game_amount(this.O.getPay_tag_info() != null ? this.O.getPay_tag_info().getPay_game_amount() : 0);
                DownloadTask downloadTask3 = this.G;
                Where where = Where.detail;
                downloadTask3.setKeyword(where.name());
                this.G.setKeyword(where.name());
                DownloadTask downloadTask4 = this.G;
                UtilsMy.W4(downloadTask4, downloadTask4.getCrc_link_type_val());
                UtilsMy.O4(this.f57154c, this.G);
            } else if (status == 9) {
                if (!com.join.android.app.common.utils.m.j(this.f57154c)) {
                    com.join.mgps.Util.a3.b(this.f57154c).d("无网络连接");
                    return;
                }
                if (this.O.getGame_detailed() != null && com.join.mgps.Util.t2.i(this.O.getGame_detailed().getTpl_two_qq())) {
                    com.join.mgps.Util.h0.h0(this.f57154c).d0(this.f57154c, this.O.getGame_detailed().getTpl_two_qq_key(), this.O.getGame_detailed().getAd_pic_qq(), this.O.getGame_detailed().getTpl_two_qq());
                }
                int downloadType = this.G.getDownloadType();
                if (downloadType == 0 || downloadType == 1) {
                    if (this.G.getCrc_link_type_val() == null || this.G.getCrc_link_type_val().equals("")) {
                        return;
                    }
                    addFrom(this.G);
                    if (UtilsMy.o1(this.f57154c, this.G)) {
                        return;
                    }
                    if (this.O.getDown_status() == 5) {
                        UtilsMy.l1(this.f57154c, this.G);
                        return;
                    }
                    com.php25.PDownload.d.b(this.G);
                    this.G.setVer(this.O.getVer());
                    this.G.setVer_name(this.O.getVer_name());
                    this.G.setUrl(this.O.getDown_url_remote());
                    this.G.setCfg_ver(this.O.getCfg_ver());
                    this.G.setCfg_ver_name(this.O.getCfg_ver_name());
                    this.G.setCfg_down_url(this.O.getCfg_down_url());
                    this.G.setPay_game_amount(this.O.getPay_tag_info() != null ? this.O.getPay_tag_info().getPay_game_amount() : 0);
                    this.G.setKeyword(Where.detail.name());
                    DownloadTask downloadTask5 = this.G;
                    UtilsMy.W4(downloadTask5, downloadTask5.getCrc_link_type_val());
                    if (UtilsMy.z0(this.O.getPay_tag_info(), this.O.getCrc_sign_id()) > 0) {
                        ExtBean extBean = this.L;
                        if (extBean != null && "checkgame".equals(extBean.getFrom())) {
                            UtilsMy.A4(this.f57154c, this.K, this.L.getFrom_id());
                        } else if (!UtilsMy.o1(this.f57154c, this.G)) {
                            if (this.O.getDown_status() == 5) {
                                UtilsMy.l1(this.f57154c, this.G);
                            } else {
                                UtilsMy.z4(this.f57154c, this.K);
                            }
                        }
                    } else {
                        UtilsMy.D1(this.G, this.O);
                        if (!UtilsMy.o1(this.f57154c, this.G)) {
                            if (this.O.getDown_status() == 5) {
                                UtilsMy.l1(this.f57154c, this.G);
                            } else {
                                UtilsMy.U0(this.f57154c, this.G, this.O.getTp_down_url(), this.O.getOther_down_switch(), this.O.getCdn_down_switch());
                            }
                        }
                    }
                } else if (downloadType == 2) {
                    UtilsMy.R4(this.G);
                }
            } else if (11 == status) {
                UtilsMy.w4(downloadTask2, this.f57154c);
            } else if (43 == status) {
                downloadTask2.setKeyword(Where.detail.name());
                GamedetialModleFourBean gamedetialModleFourBean = this.O;
                if (gamedetialModleFourBean != null) {
                    if (gamedetialModleFourBean.getGame_detailed() != null && com.join.mgps.Util.t2.i(this.O.getGame_detailed().getTpl_two_qq())) {
                        com.join.mgps.Util.h0.h0(this.f57154c).d0(this.f57154c, this.O.getGame_detailed().getTpl_two_qq_key(), this.O.getGame_detailed().getAd_pic_qq(), this.O.getGame_detailed().getTpl_two_qq());
                    }
                    addFrom(this.G);
                    if (UtilsMy.z0(this.O.getPay_tag_info(), this.O.getCrc_sign_id()) > 0) {
                        ExtBean extBean2 = this.L;
                        if (extBean2 != null && "checkgame".equals(extBean2.getFrom())) {
                            UtilsMy.A4(this.f57154c, this.K, this.L.getFrom_id());
                        } else if (!UtilsMy.o1(this.f57154c, this.G)) {
                            if (this.O.getDown_status() == 5) {
                                UtilsMy.l1(this.f57154c, this.G);
                            } else {
                                UtilsMy.z4(this.f57154c, this.K);
                            }
                        }
                    } else {
                        UtilsMy.D1(this.G, this.O);
                        if (!UtilsMy.o1(this.f57154c, this.G)) {
                            if (this.O.getDown_status() == 5) {
                                UtilsMy.l1(this.f57154c, this.G);
                            } else {
                                UtilsMy.U0(this.f57154c, this.G, this.O.getTp_down_url(), this.O.getOther_down_switch(), this.O.getCdn_down_switch());
                            }
                        }
                    }
                }
            } else {
                downloadTask2.setKeyword(Where.detail.name());
                if (this.O != null) {
                    addFrom(this.G);
                    if (this.O.getGame_detailed() != null && com.join.mgps.Util.t2.i(this.O.getGame_detailed().getTpl_two_qq())) {
                        com.join.mgps.Util.h0.h0(this.f57154c).d0(this.f57154c, this.O.getGame_detailed().getTpl_two_qq_key(), this.O.getGame_detailed().getAd_pic_qq(), this.O.getGame_detailed().getTpl_two_qq());
                    }
                    if (UtilsMy.z0(this.O.getPay_tag_info(), this.O.getCrc_sign_id()) > 0) {
                        ExtBean extBean3 = this.L;
                        if (extBean3 != null && "checkgame".equals(extBean3.getFrom())) {
                            UtilsMy.A4(this.f57154c, this.K, this.L.getFrom_id());
                        } else if (!UtilsMy.o1(this.f57154c, this.G)) {
                            if (this.O.getDown_status() == 5) {
                                UtilsMy.l1(this.f57154c, this.G);
                            } else {
                                UtilsMy.z4(this.f57154c, this.K);
                            }
                        }
                    } else {
                        UtilsMy.D1(this.G, this.O);
                        if (!UtilsMy.o1(this.f57154c, this.G)) {
                            if (this.O.getDown_status() == 5) {
                                UtilsMy.l1(this.f57154c, this.G);
                            } else {
                                UtilsMy.U0(this.f57154c, this.G, this.O.getTp_down_url(), this.O.getOther_down_switch(), this.O.getCdn_down_switch());
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
        this.f57154c.finish();
        j0();
    }

    void j0() {
        ExtBean extBean = this.L;
        if (extBean == null || TextUtils.isEmpty(extBean.getFrom()) || !this.L.getFrom().equals("updateFromMarket")) {
            return;
        }
        IntentUtil.getInstance().goMGMainActivity2Front(this.f57154c);
    }

    @Receiver(actions = {p5.a.G, p5.a.I})
    void l0(@Receiver.Extra("gameData") CollectionBeanSub sub) {
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
    public void m0() {
        K0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void n0(CommentBaseBean bean, int position, int type) {
        if (!com.join.android.app.common.utils.m.j(this.f57154c)) {
            u0("网络连接失败，再试试吧~", true, position, 1);
            return;
        }
        try {
            CommentResponse<CommentPraiseBean> commentResponseD = this.J.d(d0(bean.getId(), type, bean.getPn()));
            if (commentResponseD == null) {
                u0("操作失败，请稍候再试~", true, position, 1);
                return;
            }
            if (commentResponseD.getCode() == 801) {
                v0(commentResponseD);
            } else if (commentResponseD.getSucc() != 1) {
                u0(commentResponseD.getMsg(), true, position, 1);
            }
            if (commentResponseD.getSucc() == 1) {
                U(position, 1);
            }
        } catch (Exception e10) {
            u0("操作失败，请稍候再试~", true, position, 1);
            e10.printStackTrace();
        }
    }

    void o0(CommentBaseBean bean) {
        CommentDetailActivity_.intent(this.f57154c).d(bean.getGame_id()).b(bean.getId()).f(this.O.getPlugin_num()).a(this.O.getBespeak_switch()).e(this.O.getIs_started()).c(this.O.getComment_score_switch()).h(this.O.getGame_score().getSgc_switch()).g(this.O.getPackageName()).start();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onChangeComment(com.join.mgps.event.n event) {
        if (event.getType() == 1 || event.getType() == 0 || event.getType() == 2) {
            f0();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        X();
        W();
        com.join.mgps.Util.j0.a().e(this);
        com.join.mgps.customview.t tVar = this.S;
        if (tVar == null || !tVar.isShowing()) {
            return;
        }
        this.S.dismiss();
    }

    /* JADX WARN: Code duplicated, block: B:41:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:43:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:47:0x00dc  */
    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.r downloadTaskEvent) {
        DownloadTask downloadTaskA = downloadTaskEvent.a();
        DlTaskManager.INSTANCE.onNotifyDataSet(downloadTaskEvent, new Function0() { // from class: com.join.mgps.activity.e2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f57128b.lambda$onEventMainThread$0();
            }
        });
        if (downloadTaskEvent.c() == 8) {
            DownloadTask downloadTask = this.G;
            if (downloadTask == null || downloadTask.getPath() == null) {
                return;
            }
            UtilsMy.U4(this.G);
            this.f57181t.setProgress((int) this.G.getProgress());
            this.f57180s.setText(this.G.getProgress() + "%");
            return;
        }
        if (downloadTaskA != null && this.G != null && downloadTaskA.getCrc_link_type_val().equals(this.G.getCrc_link_type_val())) {
            this.G = downloadTaskA;
            int iC = downloadTaskEvent.c();
            if (iC == 2) {
                H0();
                T();
            } else if (iC == 3) {
                T();
            } else if (iC == 5) {
                if (this.G != null && downloadTaskA.getCrc_link_type_val().equals(this.G.getCrc_link_type_val())) {
                    this.G = downloadTaskA;
                }
                T();
            } else if (iC == 6 || iC == 7) {
                T();
            } else {
                if (iC == 8) {
                    DownloadTask downloadTask2 = this.G;
                    if (downloadTask2 == null || downloadTask2.getPath() == null) {
                        return;
                    }
                    UtilsMy.U4(this.G);
                    this.f57181t.setProgress((int) this.G.getProgress());
                    this.f57180s.setText(this.G.getProgress() + "%");
                    return;
                }
                if (iC == 10) {
                    T();
                } else if (iC == 11) {
                    if (this.G != null) {
                        this.G = downloadTaskA;
                    }
                    T();
                } else if (iC == 27) {
                    T();
                } else if (iC == 48) {
                    if (this.G != null) {
                        this.G = downloadTaskA;
                    }
                    T();
                }
            }
        }
        updateButn();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        this.T = true;
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        GamedetialModleFourBean gamedetialModleFourBean;
        super.onResume();
        this.T = false;
        this.R = AccountUtil_.getInstance_(this.f57154c).getAccountData();
        T();
        DownloadTask downloadTaskG = this.K != null ? q5.f.M().G(this.K) : null;
        if (downloadTaskG == null && (gamedetialModleFourBean = this.O) != null) {
            this.G = gamedetialModleFourBean.getDownloadtaskDown();
        }
        if (downloadTaskG == null || this.G == null) {
            return;
        }
        try {
            this.G = downloadTaskG;
            if (!downloadTaskG.getFileType().equals(Dtype.android.name()) || this.G.getStatus() != 5) {
                this.G.setStatus(downloadTaskG.getStatus());
            } else if (Boolean.valueOf(com.join.android.app.common.utils.g.t0(this.f57154c).e(this.f57154c, this.G.getPackageName())).booleanValue()) {
                APKUtils.a aVarN = com.join.android.app.common.utils.g.t0(this.f57154c).n(this.f57154c, this.G.getPackageName());
                if (!com.join.mgps.Util.t2.i(this.G.getVer()) || aVarN.d() >= Integer.parseInt(this.G.getVer())) {
                    this.G.setStatus(5);
                } else {
                    this.G.setStatus(9);
                }
            } else {
                this.G.setStatus(11);
            }
            updateButn();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void p0(CommentBaseBean bean, int position, int type) {
        if (!com.join.android.app.common.utils.m.j(this.f57154c)) {
            u0("网络连接失败，再试试吧~", true, position, 2);
            return;
        }
        try {
            CommentResponse<CommentPraiseBean> commentResponseE = this.J.e(d0(bean.getId(), type, bean.getPn()));
            if (commentResponseE == null) {
                u0("操作失败，请稍候再试~", true, position, 2);
                return;
            }
            if (commentResponseE.getCode() == 801) {
                v0(commentResponseE);
            } else if (commentResponseE.getSucc() != 1) {
                u0(commentResponseE.getMsg(), true, position, 2);
            }
            if (commentResponseE.getSucc() == 1) {
                U(position, 2);
            }
        } catch (Exception e10) {
            u0("操作失败，请稍候再试~", true, position, 2);
            e10.printStackTrace();
        }
    }

    @Click
    void progress_layout() {
        DownloadTask downloadTask = this.G;
        if (downloadTask == null) {
            return;
        }
        if (downloadTask.getStatus() == 2) {
            updateButn();
            com.php25.PDownload.d.i(this.G);
        } else if (this.G.getStatus() == 3 || this.G.getStatus() == 6) {
            updateButn();
            com.php25.PDownload.d.c(this.G, this.f57154c);
        }
    }

    @Receiver(actions = {"com.join,mgps.sim.sdkgamePayfinish"})
    void q0(Intent intent) {
        this.f57154c.finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void r0(InformationCommentBean bean) {
        if (!com.join.android.app.common.utils.m.j(this.f57154c)) {
            showToast("没有网络");
            return;
        }
        try {
            GamePariseRequest gamePariseRequest = new GamePariseRequest();
            gamePariseRequest.setGame_id(this.K);
            gamePariseRequest.setComment_id(bean.getComment_id() + "");
            gamePariseRequest.setUid(this.R.getUid());
            ResultMainBean<List<PariseBackData>> resultMainBeanB = this.H.b(RequestBeanUtil.getInstance(this.f57154c).getGameDetailParis(gamePariseRequest));
            if (resultMainBeanB == null || resultMainBeanB.getFlag() != 1) {
                m0();
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
            for (CommentBaseBean commentBaseBean : this.Z) {
            }
            K0();
        } catch (Exception e10) {
            e10.printStackTrace();
            m0();
            showToast("点赞失败");
        }
    }

    @Click
    void relodingimag() {
        this.B.setVisibility(0);
        e0();
    }

    @Receiver(actions = {p5.a.B})
    void s0(Intent intent) {
        this.R = AccountUtil_.getInstance_(this.f57154c).getAccountData();
        f0();
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this.f57154c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showInstallButn() {
        GamedetialModleFourBean gamedetialModleFourBean = this.O;
        if (gamedetialModleFourBean == null || TextUtils.isEmpty(gamedetialModleFourBean.getCrc_sign_id())) {
            return;
        }
        RelativeLayout relativeLayout = this.f57173p;
        if (relativeLayout != null) {
            relativeLayout.setVisibility(8);
        }
        RelativeLayout relativeLayout2 = this.f57176q;
        if (relativeLayout2 != null) {
            relativeLayout2.setVisibility(0);
        }
        TextView textView = this.f57172o;
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
            GamedetialModleFourBean gamedetialModleFourBean = this.O;
            if (gamedetialModleFourBean == null || com.join.mgps.Util.t2.h(gamedetialModleFourBean.getCrc_sign_id())) {
                LinearLayout linearLayout2 = this.A;
                if (linearLayout2 != null) {
                    linearLayout2.setVisibility(0);
                }
                if (com.join.android.app.common.utils.m.j(this.f57154c)) {
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
        this.Z = commitDataBeans;
        if (this.O.getGame_id() != null) {
            P0(this.O);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showProgress() {
        RelativeLayout relativeLayout = this.f57176q;
        if (relativeLayout != null) {
            relativeLayout.setVisibility(8);
        }
        TextView textView = this.f57172o;
        if (textView != null) {
            textView.setVisibility(8);
        }
        RelativeLayout relativeLayout2 = this.f57173p;
        if (relativeLayout2 != null) {
            relativeLayout2.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String charSequence) {
        com.join.mgps.Util.a3.b(this.f57154c).d(charSequence);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void u0(String msg, boolean b10, int position, int type) {
        com.join.mgps.Util.a3.b(this.f57154c).d(msg);
        if (b10) {
            if (type == 1) {
                this.N.G(position, 0);
            } else {
                this.N.F(position, 0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateButn() {
        GamedetialModleFourBean gamedetialModleFourBean = this.O;
        if (gamedetialModleFourBean == null || this.G == null || this.f57176q == null) {
            return;
        }
        UtilsMy.A3(gamedetialModleFourBean.getSp_tag_info(), this.f57176q, this.G);
        if (this.O.getPlugin_num() != null) {
            if (this.O.getPlugin_num().equals(ConstantIntEnum.H5.value() + "")) {
                this.f57172o.setBackgroundResource(R.drawable.detial_simple_normal_selecter);
                this.f57172o.setText("开始");
                showInstallButn();
                return;
            }
        }
        this.f57172o.setBackgroundResource(R.drawable.detial_simple_normal_selecter);
        DownloadTask downloadTask = this.G;
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        if (UtilsMy.x0(this.O.getPay_tag_info(), this.O.getCrc_sign_id()) > 0) {
            status = 43;
        }
        if (status == 9) {
            showInstallButn();
            this.f57172o.setText("更新");
            this.f57178r.setImageResource(R.drawable.detail_comment_download_continue);
            this.f57178r.setImageResource(R.drawable.detial_simple_install_selecter);
            return;
        }
        if (status == 12) {
            showInstallButn();
            this.f57172o.setText("解压中..");
            return;
        }
        if (status == 13) {
            showInstallButn();
            this.f57172o.setText("解压");
            this.f57178r.setImageResource(R.drawable.detail_comment_download_continue);
            return;
        }
        if (status == 11) {
            showInstallButn();
            this.f57172o.setText("安装");
            this.f57172o.setBackgroundResource(R.drawable.detial_simple_install_selecter);
            this.f57178r.setImageResource(R.drawable.detial_simple_install_selecter);
            return;
        }
        if (status == 5 || status == 42) {
            showInstallButn();
            O0(true);
            this.f57172o.setBackgroundResource(R.drawable.detial_simple_open_selecter);
            this.f57172o.setText(this.f57154c.getResources().getString(R.string.download_status_finished));
            this.f57178r.setImageResource(R.drawable.detail_comment_download_continue);
            return;
        }
        if (status == 2) {
            showProgress();
            this.f57178r.setImageResource(R.drawable.detail_comment_download_pause);
            UtilsMy.U4(this.G);
            this.f57181t.setProgress((int) this.G.getProgress());
            this.f57180s.setText(this.G.getProgress() + "%");
            return;
        }
        if (status == 3 || status == 6 || status == 27) {
            showProgress();
            this.f57178r.setImageResource(R.drawable.detail_comment_download_continue);
            UtilsMy.U4(this.G);
            this.f57181t.setProgress((int) this.G.getProgress());
            this.f57180s.setText(this.G.getProgress() + "%");
            return;
        }
        if (status == 10) {
            showInstallButn();
            this.f57172o.setText("等待\u3000" + this.O.getSize() + "M");
            this.f57178r.setImageResource(R.drawable.detail_comment_download_continue);
            return;
        }
        if (status == 1) {
            return;
        }
        if (status == 43) {
            showInstallButn();
            if (UtilsMy.x0(this.O.getPay_tag_info(), this.O.getCrc_sign_id()) > 0) {
                this.f57172o.setText(this.f57154c.getResources().getString(R.string.pay_game_amount, this.O.getPay_tag_info().getPayGameAmount()));
            } else {
                this.f57172o.setText(this.f57154c.getResources().getString(R.string.download_status_download));
            }
            this.f57178r.setImageResource(R.drawable.detail_comment_download_continue);
            GamedetialModleFourBean gamedetialModleFourBean2 = this.O;
            if (gamedetialModleFourBean2 != null) {
                if (gamedetialModleFourBean2.getBespeak_switch() != 1 || this.O.getDown_status() != 2) {
                    UtilsMy.x0(this.O.getPay_tag_info(), this.O.getCrc_sign_id());
                    UtilsMy.E3(this.f57172o, this.O);
                    return;
                } else {
                    if (this.O.getGame_book() != 1) {
                        this.f57172o.setText("预约");
                        return;
                    }
                    this.f57172o.setText("已预约");
                    UtilsMy.x0(this.O.getPay_tag_info(), this.O.getCrc_sign_id());
                    UtilsMy.E3(this.f57172o, this.O);
                    return;
                }
            }
            return;
        }
        if (status == 48) {
            showInstallButn();
            this.f57172o.setText(this.f57154c.getResources().getString(R.string.download_status_installing));
            return;
        }
        showInstallButn();
        if (UtilsMy.x0(this.O.getPay_tag_info(), this.O.getCrc_sign_id()) > 0) {
            this.f57172o.setText(this.f57154c.getResources().getString(R.string.pay_game_amount, this.O.getPay_tag_info().getPayGameAmount()));
        } else {
            this.f57172o.setText(this.f57154c.getResources().getString(R.string.download_status_download));
        }
        this.f57178r.setImageResource(R.drawable.detail_comment_download_continue);
        GamedetialModleFourBean gamedetialModleFourBean3 = this.O;
        if (gamedetialModleFourBean3 != null) {
            if (gamedetialModleFourBean3.getBespeak_switch() != 1 || this.O.getDown_status() != 2) {
                UtilsMy.x0(this.O.getPay_tag_info(), this.O.getCrc_sign_id());
                UtilsMy.E3(this.f57172o, this.O);
            } else {
                if (this.O.getGame_book() != 1) {
                    this.f57172o.setText("预约");
                    return;
                }
                this.f57172o.setText("已预约");
                UtilsMy.x0(this.O.getPay_tag_info(), this.O.getCrc_sign_id());
                UtilsMy.E3(this.f57172o, this.O);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateDownloadView() {
        try {
            this.f57153b2.setDownloadGameNum();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateTitleButn(ResultMainBean result, int type) {
        if (result.getFlag() == 1) {
            if (type == 1) {
                this.O.setGame_follow(0);
            } else if (type == 2) {
                this.O.setGame_follow(1);
                if (this.f57166j == null) {
                    return;
                }
                com.join.mgps.Util.a3.b(this.f57154c).d("收藏成功");
                this.f57166j.setImageResource(R.drawable.followed_image);
                this.f57167k.setText("已收藏");
            } else if (type == 3) {
                this.O.setGame_book(0);
            } else if (type == 4) {
                this.O.setGame_book(1);
                Intent intent = new Intent("com.broadcast.bespeak.sussess");
                intent.putExtra("gameid", this.O.getCrc_sign_id());
                this.f57154c.sendBroadcast(intent);
                com.join.mgps.Util.h0.h0(this.f57154c).O(this.f57154c, 1, new p()).show();
            }
            t0();
            updateButn();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void v0(CommentResponse bean) {
        if (bean.getCode() != 801) {
            com.join.mgps.Util.a3.b(this.f57154c).d(bean.getMsg());
        } else {
            i0();
            com.join.mgps.Util.a3.b(this.f57154c).d("数据访问失败，请稍候再试！");
        }
    }

    @Click
    void w0() {
        IntentUtil.getInstance().goSearchHintActivity(this.f57154c);
        com.papa.sim.statistic.t.l(this.f57154c).y2(Where.detial2, AccountUtil_.getInstance_(this.f57154c).getUid());
    }

    @Click
    void z0() {
        ShareBean shareBean = new ShareBean();
        String share_url = this.O.getShare_url();
        shareBean.setqZoneShareUrl(share_url);
        shareBean.setQqUrl(share_url);
        shareBean.setWechatFriendUrl(share_url);
        shareBean.setWechatShareUrl(share_url);
        shareBean.setWeiboShareUrl(share_url);
        shareBean.setTitle(this.O.getGame_name());
        shareBean.setText(this.O.getInfo());
        shareBean.setImageUrl(this.O.getIco_remote());
        shareBean.setFrom(2);
        shareBean.setGameId(this.O.getGame_id());
        if (this.O.getShare_config() != null && this.O.getShare_config().getShare_switch() == 1) {
            shareBean.setIntentData(this.O.getShare_config().getJump_info());
        }
        com.join.mgps.Util.w.r(this.f57154c, shareBean);
    }
}
