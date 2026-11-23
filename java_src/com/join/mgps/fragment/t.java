package com.join.mgps.fragment;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AESUtils;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.CommentCreatActivity_;
import com.join.mgps.activity.CommentDetailActivity_;
import com.join.mgps.adapter.CommentAllListFragmentAdapter;
import com.join.mgps.customview.LoadMoreRecyclerView;
import com.join.mgps.dto.CommentAllListBean;
import com.join.mgps.dto.CommentAlllistIntentData;
import com.join.mgps.dto.CommentBaseBean;
import com.join.mgps.dto.CommentPraiseBean;
import com.join.mgps.dto.CommentResponse;
import com.join.mgps.dto.CommentTokenBean;
import com.join.mgps.dto.GamedetialModleFourBean;
import com.join.mgps.dto.RequestCommentAllListArgs;
import com.join.mgps.dto.RequestCommentpraiseArgs;
import com.join.mgps.pref.PrefDef_;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes3.dex */
@EFragment(R.layout.comment_all_list_fragment)
public class t extends Fragment implements CommentAllListFragmentAdapter.h {
    private int A;
    private String B;
    private CommentBaseBean C;
    private CommentAllListFragmentAdapter E;
    private List<CommentAllListFragmentAdapter.i> F;
    private List<CommentBaseBean> G;
    private com.join.mgps.callbacks.c H;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f70886c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    ImageView f70887d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    TextView f70888e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @ViewById
    TextView f70889f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @ViewById
    LoadMoreRecyclerView f70890g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @ViewById
    LinearLayout f70891h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @ViewById
    LinearLayout f70892i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @ViewById
    NestedScrollView f70893j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    com.join.mgps.rpc.f f70894k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @Pref
    PrefDef_ f70895l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    String f70896m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    String f70897n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    float f70898o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    String f70899p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    String f70900q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    String f70901r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    int f70902s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    int f70903t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    String f70904u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    int f70905v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    int f70906w;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private UserInfo f70909z;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f70907x = 1;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f70908y = false;
    private List<CommentAllListBean> D = new ArrayList();

    class a implements LoadMoreRecyclerView.c {
        a() {
        }

        @Override // com.join.mgps.customview.LoadMoreRecyclerView.c
        public void onLoadMore() {
            t.this.O();
        }
    }

    public static t S(CommentAlllistIntentData intentData) {
        Bundle bundle = new Bundle();
        bundle.putSerializable("intentData", intentData);
        u uVar = new u();
        uVar.setArguments(bundle);
        return uVar;
    }

    void M(List<CommentBaseBean> list) {
        for (int i10 = 0; list != null && i10 < list.size(); i10++) {
            CommentBaseBean commentBaseBean = list.get(i10);
            if (commentBaseBean.isTitle()) {
                this.F.add(new CommentAllListFragmentAdapter.i(CommentAllListFragmentAdapter.ViewType.TITLE, new CommentAllListFragmentAdapter.i.a(commentBaseBean)));
            } else {
                this.F.add(new CommentAllListFragmentAdapter.i(CommentAllListFragmentAdapter.ViewType.COMMENT, new CommentAllListFragmentAdapter.i.a(commentBaseBean)));
            }
        }
    }

    @UiThread
    public void N(int position, int i10) {
        CommentAllListFragmentAdapter commentAllListFragmentAdapter;
        if (!isAdded() || (commentAllListFragmentAdapter = this.E) == null) {
            return;
        }
        if (i10 == 1) {
            commentAllListFragmentAdapter.i(position, 1);
        } else {
            commentAllListFragmentAdapter.j(position, 1);
        }
        LoadMoreRecyclerView loadMoreRecyclerView = this.f70890g;
        if (loadMoreRecyclerView == null || loadMoreRecyclerView.getAdapter() == null) {
            this.E.notifyDataSetChanged();
        } else {
            this.f70890g.getAdapter().notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void O() {
        if (!com.join.android.app.common.utils.m.j(this.f70886c)) {
            showLodingFailed();
            return;
        }
        this.f70908y = true;
        try {
            CommentResponse commentResponseA = this.f70894k.a(Q());
            if (commentResponseA == null) {
                showLodingFailed();
                return;
            }
            if (commentResponseA.getCode() != 0) {
                U(commentResponseA);
            }
            CommentAllListBean.ScoringDetailsBean scoring_details = commentResponseA.getData_info().getScoring_details();
            CommentAllListBean.SelfCommentBean self_comment = commentResponseA.getData_info().getSelf_comment();
            this.C = self_comment;
            this.E.m(self_comment);
            List<CommentAllListBean.HotCommentBean> hot_comment = commentResponseA.getData_info().getHot_comment();
            List<CommentAllListBean.GeneralCommentBean> general_comment = commentResponseA.getData_info().getGeneral_comment();
            List<CommentBaseBean> arrayList = new ArrayList<>();
            if (hot_comment != null && hot_comment.size() > 0) {
                CommentBaseBean commentBaseBean = new CommentBaseBean();
                commentBaseBean.setIs_hot(1);
                commentBaseBean.setTitle(true);
                commentBaseBean.setPn(this.f70907x);
                arrayList.add(commentBaseBean);
                arrayList.addAll(hot_comment);
            }
            if (this.C != null && this.f70907x == 1) {
                CommentBaseBean commentBaseBean2 = new CommentBaseBean();
                commentBaseBean2.setIs_hot(2);
                commentBaseBean2.setTitle(true);
                commentBaseBean2.setPn(this.f70907x);
                arrayList.add(commentBaseBean2);
                this.C.setPn(this.f70907x);
                arrayList.add(this.C);
            }
            if (general_comment != null && general_comment.size() > 0) {
                if (this.f70907x == 1 && this.C == null) {
                    CommentBaseBean commentBaseBean3 = new CommentBaseBean();
                    commentBaseBean3.setIs_hot(2);
                    commentBaseBean3.setTitle(true);
                    commentBaseBean3.setPn(this.f70907x);
                    arrayList.add(commentBaseBean3);
                }
                for (int i10 = 0; i10 < general_comment.size(); i10++) {
                    CommentBaseBean commentBaseBean4 = general_comment.get(i10);
                    commentBaseBean4.setPn(this.f70907x);
                    arrayList.add(commentBaseBean4);
                }
            }
            W(arrayList, scoring_details);
        } catch (Exception e10) {
            showLodingFailed();
            e10.printStackTrace();
        }
    }

    public RequestCommentpraiseArgs P(String comment_id, int type, int pn) {
        String token;
        String str = Build.MODEL;
        this.B = this.f70895l.commentToken().d();
        UserInfo accountData = AccountUtil_.getInstance_(this.f70886c).getAccountData();
        this.f70909z = accountData;
        if (accountData != null) {
            this.A = accountData.getUid();
            token = this.f70909z.getToken();
        } else {
            token = "";
        }
        return RequestBeanUtil.getInstance(this.f70886c).getPraiseComment(this.f70899p, this.B, str, comment_id, token, this.A, type, pn);
    }

    public RequestCommentAllListArgs Q() {
        this.f70909z = AccountUtil_.getInstance_(this.f70886c).getAccountData();
        this.B = this.f70895l.commentToken().d();
        UserInfo userInfo = this.f70909z;
        if (userInfo != null) {
            this.A = userInfo.getUid();
        }
        return RequestBeanUtil.getInstance(this.f70886c).getRequestCommentAllList(this.f70907x, 10, this.f70899p, this.A, this.B);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void R() {
        if (com.join.android.app.common.utils.m.j(this.f70886c)) {
            try {
                CommentResponse<CommentTokenBean> commentResponseG = this.f70894k.g(RequestBeanUtil.getInstance(this.f70886c).getTokenRequestBean(AccountUtil_.getInstance_(this.f70886c).getUid(), ""));
                if (commentResponseG == null || commentResponseG.getCode() != 0 || commentResponseG.getData_info() == null || TextUtils.isEmpty(commentResponseG.getData_info().getToken())) {
                    return;
                }
                this.f70895l.commentToken().g(AESUtils.f(commentResponseG.getData_info().getToken() + "|" + commentResponseG.getData_info().getTimes()));
                this.f70895l.lastCheckInTime().g(Long.valueOf(System.currentTimeMillis()));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void T(String msg, boolean b10, int position, int type) {
        com.join.mgps.Util.a3.b(this.f70886c).d(msg);
        if (b10) {
            if (type == 1) {
                this.E.j(position, 0);
            } else {
                this.E.i(position, 0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void U(CommentResponse bean) {
        if (bean.getCode() != 801) {
            com.join.mgps.Util.a3.b(this.f70886c).d(bean.getMsg());
        } else {
            R();
            com.join.mgps.Util.a3.b(this.f70886c).d("数据访问失败，请稍候再试！");
        }
    }

    public void V(com.join.mgps.callbacks.c commentFragmentCallback) {
        this.H = commentFragmentCallback;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void W(List<CommentBaseBean> commentBaseBeans, CommentAllListBean.ScoringDetailsBean scoring) {
        String str;
        try {
            if (this.f70907x == 1) {
                if (commentBaseBeans.size() > 0) {
                    this.f70890g.setVisibility(0);
                    this.f70893j.setVisibility(8);
                } else {
                    this.f70890g.setVisibility(8);
                    this.f70893j.setVisibility(0);
                }
                this.f70892i.setVisibility(8);
                this.f70891h.setVisibility(8);
                this.G.clear();
                this.F.clear();
                if (scoring != null && (str = this.f70901r) != null && str.equals("1")) {
                    this.F.add(new CommentAllListFragmentAdapter.i(CommentAllListFragmentAdapter.ViewType.HEAD, scoring));
                }
            }
            this.f70907x++;
            this.G.addAll(commentBaseBeans);
            M(commentBaseBeans);
            if (commentBaseBeans.size() == 0) {
                this.f70890g.k(false);
            } else {
                this.f70890g.k(true);
            }
            this.E.notifyDataSetChanged();
            if (commentBaseBeans.size() == 0) {
                this.f70890g.k(false);
            } else {
                Y();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Click
    void X() {
        if (IntentUtil.getInstance().goLoginInteractive(this.f70886c)) {
            return;
        }
        UserInfo accountData = AccountUtil_.getInstance_(this.f70886c).getAccountData();
        if (com.join.mgps.Util.t2.h(accountData.getNickname()) || (accountData.getAccount().equals(accountData.getNickname()) && accountData.getAccount().startsWith("pa"))) {
            IntentUtil.getInstance().goChangeNickname(this.f70886c);
        } else if (this.E.g() == -1 || this.C == null) {
            CommentCreatActivity_.intent(this.f70886c).f(this.f70899p).j(this.f70900q).a(this.f70902s).d(this.f70901r).h(this.f70904u).g(1).start();
        } else {
            CommentCreatActivity_.intent(this.f70886c).f(this.f70899p).j(this.f70900q).d(this.f70901r).c(this.C.getId()).e(Float.valueOf(this.C.getStars_score()).floatValue()).h(this.f70904u).g(1).a(this.f70902s).b(this.C.getContent()).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Y() {
        try {
            this.f70890g.setLoadingMore(false);
            this.f70890g.k(true);
            if (this.G.size() < 10) {
                this.f70890g.k(false);
            }
            this.E.notifyDataSetChanged();
            this.f70908y = false;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @AfterViews
    void afterView() {
        this.f70894k = com.join.mgps.rpc.impl.e.m();
        CommentAlllistIntentData commentAlllistIntentData = (CommentAlllistIntentData) getArguments().getSerializable("intentData");
        this.f70896m = commentAlllistIntentData.getCommentId();
        this.f70897n = commentAlllistIntentData.getCommentContent();
        this.f70898o = commentAlllistIntentData.getCommentStars();
        this.f70899p = commentAlllistIntentData.getGameId();
        this.f70900q = commentAlllistIntentData.getPackageName();
        this.f70901r = commentAlllistIntentData.getCommentScoreSwitch();
        this.f70902s = commentAlllistIntentData.getBespeakSwitch();
        this.f70903t = commentAlllistIntentData.getSgcSwitch();
        this.f70904u = commentAlllistIntentData.getGameType();
        this.f70905v = commentAlllistIntentData.getGameIsStart();
        this.f70906w = commentAlllistIntentData.getCpu_type();
        this.f70886c = getContext();
        this.f70888e.setText("全部点评");
        if (!org.greenrobot.eventbus.c.f().o(this)) {
            org.greenrobot.eventbus.c.f().v(this);
        }
        UserInfo accountData = AccountUtil_.getInstance_(this.f70886c).getAccountData();
        this.f70909z = accountData;
        if (accountData != null) {
            this.A = accountData.getUid();
        }
        this.B = this.f70895l.commentToken().d();
        showLoding();
        O();
        this.G = new ArrayList();
        ArrayList arrayList = new ArrayList();
        this.F = arrayList;
        this.E = new CommentAllListFragmentAdapter(this.f70886c, this.A, arrayList, this.f70901r, this.f70903t, this.f70906w, this);
        this.f70890g.setLayoutManager(new LinearLayoutManager(getContext()));
        this.f70890g.setAdapter(this.E);
        this.f70890g.setVerticalScrollBarEnabled(false);
        this.f70890g.setAutoLoadMoreEnable(true);
        this.f70890g.setLoadMoreListener(new a());
    }

    @Click({R.id.goCommit})
    void goComment() {
        com.join.mgps.callbacks.c cVar;
        GamedetialModleFourBean gamedetialModleFourBeanA;
        UserInfo accountData = AccountUtil_.getInstance_(this.f70886c).getAccountData();
        if (com.join.mgps.Util.t2.h(accountData.getNickname()) || (accountData.getAccount().equals(accountData.getNickname()) && accountData.getAccount().startsWith("pa"))) {
            IntentUtil.getInstance().goChangeNickname(this.f70886c);
            return;
        }
        if (IntentUtil.getInstance().goLoginInteractive(this.f70886c) || (cVar = this.H) == null || (gamedetialModleFourBeanA = cVar.a()) == null) {
            return;
        }
        if (gamedetialModleFourBeanA.getSelf_comment() == null) {
            CommentCreatActivity_.intent(this.f70886c).f(gamedetialModleFourBeanA.getGame_id()).j(gamedetialModleFourBeanA.getPackageName()).h(gamedetialModleFourBeanA.getPlugin_num()).g(gamedetialModleFourBeanA.getIs_started()).a(gamedetialModleFourBeanA.getBespeak_switch()).d(gamedetialModleFourBeanA.getComment_score_switch()).start();
        } else {
            CommentAllListBean.SelfCommentBean self_comment = gamedetialModleFourBeanA.getSelf_comment();
            CommentCreatActivity_.intent(this.f70886c).f(gamedetialModleFourBeanA.getGame_id()).j(gamedetialModleFourBeanA.getPackageName()).d(gamedetialModleFourBeanA.getComment_score_switch()).c(self_comment.getId()).e(Float.valueOf(self_comment.getStars_score()).floatValue()).a(gamedetialModleFourBeanA.getBespeak_switch()).h(gamedetialModleFourBeanA.getPlugin_num()).g(gamedetialModleFourBeanA.getIs_started()).b(self_comment.getContent()).start();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onChangeComment(com.join.mgps.event.n event) {
        this.f70907x = 1;
        O();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        org.greenrobot.eventbus.c.f().A(this);
    }

    @Override // com.join.mgps.adapter.CommentAllListFragmentAdapter.h
    @Background
    public void onPraise(CommentBaseBean bean, int position, int type) {
        if (!com.join.android.app.common.utils.m.j(this.f70886c)) {
            T("网络连接失败，再试试吧~", true, position, 1);
            return;
        }
        try {
            CommentResponse<CommentPraiseBean> commentResponseD = this.f70894k.d(P(bean.getId(), type, bean.getPn()));
            if (commentResponseD == null) {
                T("操作失败，请稍候再试~", true, position, 1);
                return;
            }
            if (commentResponseD.getCode() == 801) {
                U(commentResponseD);
            } else if (commentResponseD.getSucc() != 1) {
                T(commentResponseD.getMsg(), true, position, 1);
            }
            if (commentResponseD.getSucc() == 1) {
                N(position, 1);
            }
        } catch (Exception e10) {
            T("操作失败，请稍候再试~", true, position, 1);
            e10.printStackTrace();
        }
    }

    @Override // com.join.mgps.adapter.CommentAllListFragmentAdapter.h
    public void onRootView(CommentBaseBean bean) {
        CommentDetailActivity_.intent(this.f70886c).d(bean.getGame_id()).b(bean.getId()).f(this.f70904u).a(this.f70902s).e(this.f70905v).h(this.f70903t).g(this.f70900q).c(this.f70901r).start();
    }

    @Override // com.join.mgps.adapter.CommentAllListFragmentAdapter.h
    @Background
    public void onUnPraise(CommentBaseBean bean, int position, int type) {
        if (!com.join.android.app.common.utils.m.j(this.f70886c)) {
            T("网络连接失败，再试试吧~", true, position, 2);
            return;
        }
        try {
            CommentResponse<CommentPraiseBean> commentResponseE = this.f70894k.e(P(bean.getId(), type, bean.getPn()));
            if (commentResponseE == null) {
                T("操作失败，请稍候再试~", true, position, 2);
                return;
            }
            if (commentResponseE.getCode() == 801) {
                U(commentResponseE);
            } else if (commentResponseE.getSucc() != 1) {
                T(commentResponseE.getMsg(), true, position, 2);
            }
            if (commentResponseE.getSucc() == 1) {
                N(position, 2);
            }
        } catch (Exception e10) {
            T("操作失败，请稍候再试~", true, position, 2);
            e10.printStackTrace();
        }
    }

    @Click
    void relodingimag() {
        this.f70907x = 1;
        O();
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(getContext());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        try {
            this.f70890g.setVisibility(8);
            this.f70892i.setVisibility(8);
            this.f70893j.setVisibility(8);
            this.f70891h.setVisibility(0);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        try {
            List<CommentAllListBean> list = this.D;
            if (list == null || list.size() == 0) {
                this.f70890g.setVisibility(8);
                this.f70892i.setVisibility(0);
                this.f70891h.setVisibility(8);
                this.f70893j.setVisibility(8);
            } else {
                Toast.makeText(this.f70886c, getString(R.string.net_connect_failed), 0).show();
            }
            Y();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMessage(String message) {
        com.join.mgps.Util.a3.b(this.f70886c).d(message);
    }

    @Override // com.join.mgps.adapter.CommentAllListFragmentAdapter.h
    public void v() {
        X();
    }
}
