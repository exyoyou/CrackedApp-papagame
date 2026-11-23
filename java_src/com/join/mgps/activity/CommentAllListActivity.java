package com.join.mgps.activity;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import android.widget.Toast;
import com.BaseAppCompatActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AESUtils;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.adapter.CommentAllListAdapter;
import com.join.mgps.customview.HistogramView;
import com.join.mgps.customview.MStarBar;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CommentAllListBean;
import com.join.mgps.dto.CommentBaseBean;
import com.join.mgps.dto.CommentPraiseBean;
import com.join.mgps.dto.CommentResponse;
import com.join.mgps.dto.CommentTokenBean;
import com.join.mgps.dto.RequestCommentAllListArgs;
import com.join.mgps.dto.RequestCommentpraiseArgs;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.wufan.user.service.protobuf.UserInfo;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.comment_all_list_activity)
public class CommentAllListActivity extends BaseAppCompatActivity implements CommentAllListAdapter.h {
    private UserInfo accountBean;

    @ViewById
    ImageView back_image;

    @Extra
    int bespeakSwitch;
    private List<CommentBaseBean> commentBaseBeanList;

    @Extra
    String commentContent;
    private MStarBar commentHeadMstarBar;
    private TextView commentHeadNumTx;
    private TextView commentHeadPointTx;

    @Extra
    String commentId;

    @Extra
    String commentScoreSwitch;

    @Extra
    float commentStars;

    @ViewById
    XListView2 comment_all_list;
    private TextView comment_head_nopoint_tx;
    private Context context;
    private List<CommentAllListAdapter.i> dataSet;
    private TextView editText5;
    private HistogramView fiveHv;
    private HistogramView fourHv;

    @Extra
    String gameId;

    @Extra
    int gameIsStart;

    @Extra
    String gameType;
    private LinearLayout goCommit;
    private View headView;

    @ViewById
    LinearLayout loding_faile;

    @ViewById
    LinearLayout loding_layout;
    private CommentAllListAdapter mAdapter;

    @ViewById
    PtrClassicFrameLayout mPtrFrame;
    private CommentBaseBean mySelf;

    @ViewById
    LinearLayout noCommentLl;
    private HistogramView oneHv;

    @Extra
    String packageName;
    private LinearLayout point_ll;

    @Pref
    PrefDef_ prefDef;
    com.join.mgps.rpc.f rpcClient;

    @Extra
    int sgcSwitch;
    private LinearLayout start_ll;

    @ViewById
    TextView textTopRight;
    private HistogramView threeHv;

    @ViewById
    TextView title_textview;
    private String token;
    private HistogramView twoHv;
    private int uid;
    private int pn = 1;
    private boolean isLoading = false;
    private List<CommentAllListBean> CommentAllListBeans = new ArrayList();

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            CommentAllListActivity.this.textTopRight();
        }
    }

    class b implements com.join.mgps.customview.i {
        b() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (CommentAllListActivity.this.isLoading) {
                return;
            }
            CommentAllListActivity.this.getCommentList();
        }
    }

    class c implements com.join.mgps.customview.j {
        c() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (CommentAllListActivity.this.isLoading) {
                return;
            }
            CommentAllListActivity.this.pn = 1;
            CommentAllListActivity.this.getCommentList();
        }
    }

    private int dip2px(Context context, float dpValue) {
        return (int) ((dpValue * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    void addViewItem(List<CommentBaseBean> list) {
        for (int i10 = 0; list != null && i10 < list.size(); i10++) {
            CommentBaseBean commentBaseBean = list.get(i10);
            if (commentBaseBean.isTitle()) {
                this.dataSet.add(new CommentAllListAdapter.i(CommentAllListAdapter.ViewType.TITLE, new CommentAllListAdapter.i.a(commentBaseBean)));
            } else {
                this.dataSet.add(new CommentAllListAdapter.i(CommentAllListAdapter.ViewType.COMMENT, new CommentAllListAdapter.i.a(commentBaseBean)));
            }
        }
    }

    @AfterViews
    void afterView() {
        this.rpcClient = com.join.mgps.rpc.impl.e.m();
        this.context = this;
        this.title_textview.setText("全部点评");
        org.greenrobot.eventbus.c.f().v(this);
        UserInfo accountData = AccountUtil_.getInstance_(this.context).getAccountData();
        this.accountBean = accountData;
        if (accountData != null) {
            this.uid = accountData.getUid();
        }
        this.token = this.prefDef.commentToken().d();
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.comment_list_head_view, (ViewGroup) null);
        this.headView = viewInflate;
        this.oneHv = (HistogramView) viewInflate.findViewById(R.id.oneHv);
        this.twoHv = (HistogramView) this.headView.findViewById(R.id.twoHv);
        this.threeHv = (HistogramView) this.headView.findViewById(R.id.threeHv);
        this.fourHv = (HistogramView) this.headView.findViewById(R.id.fourHv);
        this.fiveHv = (HistogramView) this.headView.findViewById(R.id.fiveHv);
        this.commentHeadMstarBar = (MStarBar) this.headView.findViewById(R.id.comment_head_mstarBar);
        this.commentHeadPointTx = (TextView) this.headView.findViewById(R.id.comment_head_point_tx);
        this.comment_head_nopoint_tx = (TextView) this.headView.findViewById(R.id.comment_head_nopoint_tx);
        this.commentHeadNumTx = (TextView) this.headView.findViewById(R.id.comment_head_num_tx);
        TextView textView = (TextView) this.headView.findViewById(R.id.editText5);
        this.editText5 = textView;
        textView.setText("写评论");
        this.start_ll = (LinearLayout) this.headView.findViewById(R.id.start_ll);
        this.point_ll = (LinearLayout) this.headView.findViewById(R.id.point_ll);
        this.headView.findViewById(R.id.goCommit).setOnClickListener(new a());
        this.commentHeadMstarBar.setIntegerMark(false);
        this.commentHeadMstarBar.setEnabled(false);
        showLoding();
        getCommentList();
        this.commentBaseBeanList = new ArrayList();
        this.dataSet = new ArrayList();
        this.mAdapter = new CommentAllListAdapter(this.context, this.uid, this.dataSet, this.commentScoreSwitch, this.sgcSwitch, this);
        String str = this.commentScoreSwitch;
        if (str == null || !str.equals("1")) {
            this.textTopRight.setVisibility(0);
        } else {
            this.comment_all_list.addHeaderView(this.headView);
            this.textTopRight.setVisibility(8);
        }
        this.comment_all_list.setAdapter((ListAdapter) this.mAdapter);
        this.comment_all_list.setPreLoadCount(10);
        this.comment_all_list.setVerticalScrollBarEnabled(false);
        this.comment_all_list.setPullLoadEnable(new b());
        this.comment_all_list.setPullRefreshEnable(new c());
    }

    @Click
    void back_image() {
        finish();
    }

    @UiThread
    public void checkReset(int position, int i10) {
        if (i10 == 1) {
            this.mAdapter.i(position, 1);
        } else {
            this.mAdapter.j(position, 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getCommentList() {
        if (!com.join.android.app.common.utils.m.j(this.context)) {
            showLodingFailed();
            return;
        }
        this.isLoading = true;
        try {
            CommentResponse commentResponseA = this.rpcClient.a(getGameCommentRequestBean());
            if (commentResponseA == null) {
                showLodingFailed();
                return;
            }
            if (commentResponseA.getCode() != 0) {
                resultShow2(commentResponseA);
            }
            CommentAllListBean.ScoringDetailsBean scoring_details = commentResponseA.getData_info().getScoring_details();
            this.mySelf = commentResponseA.getData_info().getSelf_comment();
            List<CommentAllListBean.HotCommentBean> hot_comment = commentResponseA.getData_info().getHot_comment();
            List<CommentAllListBean.GeneralCommentBean> general_comment = commentResponseA.getData_info().getGeneral_comment();
            List<CommentBaseBean> arrayList = new ArrayList<>();
            if (scoring_details != null) {
                setLinechartData(scoring_details);
            }
            if (hot_comment != null && hot_comment.size() > 0) {
                CommentBaseBean commentBaseBean = new CommentBaseBean();
                commentBaseBean.setIs_hot(1);
                commentBaseBean.setTitle(true);
                commentBaseBean.setPn(this.pn);
                arrayList.add(commentBaseBean);
                arrayList.addAll(hot_comment);
            }
            if (this.mySelf != null && this.pn == 1) {
                CommentBaseBean commentBaseBean2 = new CommentBaseBean();
                commentBaseBean2.setIs_hot(2);
                commentBaseBean2.setTitle(true);
                commentBaseBean2.setPn(this.pn);
                arrayList.add(commentBaseBean2);
                this.mySelf.setPn(this.pn);
                arrayList.add(this.mySelf);
            }
            if (general_comment != null && general_comment.size() > 0) {
                if (this.pn == 1 && this.mySelf == null) {
                    CommentBaseBean commentBaseBean3 = new CommentBaseBean();
                    commentBaseBean3.setIs_hot(2);
                    commentBaseBean3.setTitle(true);
                    commentBaseBean3.setPn(this.pn);
                    arrayList.add(commentBaseBean3);
                }
                for (int i10 = 0; i10 < general_comment.size(); i10++) {
                    CommentBaseBean commentBaseBean4 = general_comment.get(i10);
                    commentBaseBean4.setPn(this.pn);
                    arrayList.add(commentBaseBean4);
                }
            }
            showMain(arrayList);
        } catch (Exception e10) {
            showLodingFailed();
            e10.printStackTrace();
        }
    }

    public RequestCommentpraiseArgs getCommentPraiseRequestBean(String comment_id, int type, int pn) {
        String token;
        String str = Build.MODEL;
        this.token = this.prefDef.commentToken().d();
        UserInfo accountData = AccountUtil_.getInstance_(this.context).getAccountData();
        this.accountBean = accountData;
        if (accountData != null) {
            this.uid = accountData.getUid();
            token = this.accountBean.getToken();
        } else {
            token = "";
        }
        return RequestBeanUtil.getInstance(this.context).getPraiseComment(this.gameId, this.token, str, comment_id, token, this.uid, type, pn);
    }

    public RequestCommentAllListArgs getGameCommentRequestBean() {
        this.accountBean = AccountUtil_.getInstance_(this.context).getAccountData();
        this.token = this.prefDef.commentToken().d();
        UserInfo userInfo = this.accountBean;
        if (userInfo != null) {
            this.uid = userInfo.getUid();
        }
        return RequestBeanUtil.getInstance(this.context).getRequestCommentAllList(this.pn, 10, this.gameId, this.uid, this.token);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getToken() {
        if (com.join.android.app.common.utils.m.j(this.context)) {
            try {
                CommentResponse<CommentTokenBean> commentResponseG = this.rpcClient.g(RequestBeanUtil.getInstance(this).getTokenRequestBean(AccountUtil_.getInstance_(this).getUid(), ""));
                if (commentResponseG == null || commentResponseG.getCode() != 0 || commentResponseG.getData_info() == null || TextUtils.isEmpty(commentResponseG.getData_info().getToken())) {
                    return;
                }
                this.prefDef.commentToken().g(AESUtils.f(commentResponseG.getData_info().getToken() + "|" + commentResponseG.getData_info().getTimes()));
                this.prefDef.lastCheckInTime().g(Long.valueOf(System.currentTimeMillis()));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onChangeComment(com.join.mgps.event.n event) {
        this.pn = 1;
        getCommentList();
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        org.greenrobot.eventbus.c.f().A(this);
    }

    @Override // com.join.mgps.adapter.CommentAllListAdapter.h
    @Background
    public void onPraise(CommentBaseBean bean, int position, int type) {
        if (!com.join.android.app.common.utils.m.j(this.context)) {
            resultShow("网络连接失败，再试试吧~", true, position, 1);
            return;
        }
        try {
            CommentResponse<CommentPraiseBean> commentResponseD = this.rpcClient.d(getCommentPraiseRequestBean(bean.getId(), type, bean.getPn()));
            if (commentResponseD == null) {
                resultShow("操作失败，请稍候再试~", true, position, 1);
                return;
            }
            if (commentResponseD.getCode() == 801) {
                resultShow2(commentResponseD);
            } else if (commentResponseD.getSucc() != 1) {
                resultShow(commentResponseD.getMsg(), true, position, 1);
            }
            if (commentResponseD.getSucc() == 1) {
                checkReset(position, 1);
            }
        } catch (Exception e10) {
            resultShow("操作失败，请稍候再试~", true, position, 1);
            e10.printStackTrace();
        }
    }

    @Override // com.join.mgps.adapter.CommentAllListAdapter.h
    public void onRootView(CommentBaseBean bean) {
        CommentDetailActivity_.intent(this.context).d(bean.getGame_id()).b(bean.getId()).f(this.gameType).a(this.bespeakSwitch).e(this.gameIsStart).h(this.sgcSwitch).g(this.packageName).c(this.commentScoreSwitch).start();
    }

    @Override // com.join.mgps.adapter.CommentAllListAdapter.h
    @Background
    public void onUnPraise(CommentBaseBean bean, int position, int type) {
        if (!com.join.android.app.common.utils.m.j(this.context)) {
            resultShow("网络连接失败，再试试吧~", true, position, 2);
            return;
        }
        try {
            CommentResponse<CommentPraiseBean> commentResponseE = this.rpcClient.e(getCommentPraiseRequestBean(bean.getId(), type, bean.getPn()));
            if (commentResponseE == null) {
                resultShow("操作失败，请稍候再试~", true, position, 2);
                return;
            }
            if (commentResponseE.getCode() == 801) {
                resultShow2(commentResponseE);
            } else if (commentResponseE.getSucc() != 1) {
                resultShow(commentResponseE.getMsg(), true, position, 2);
            }
            if (commentResponseE.getSucc() == 1) {
                checkReset(position, 2);
            }
        } catch (Exception e10) {
            resultShow("操作失败，请稍候再试~", true, position, 2);
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void resultShow(String msg, boolean b10, int position, int type) {
        com.join.mgps.Util.a3.b(this.context).d(msg);
        if (b10) {
            if (type == 1) {
                this.mAdapter.j(position, 0);
            } else {
                this.mAdapter.i(position, 0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void resultShow2(CommentResponse bean) {
        if (bean.getCode() != 801) {
            com.join.mgps.Util.a3.b(this.context).d(bean.getMsg());
        } else {
            getToken();
            com.join.mgps.Util.a3.b(this.context).d("数据访问失败，请稍候再试！");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void setLinechartData(CommentAllListBean.ScoringDetailsBean scoringDetailsBean) {
        HistogramView[] histogramViewArr = {this.oneHv, this.twoHv, this.threeHv, this.fourHv, this.fiveHv};
        String[] strArr = {"#F47500", "#FFA423", "#FFB53D", "#FBCD36", "#E4DECA"};
        this.commentHeadPointTx.setText(new DecimalFormat("#.0").format(Double.valueOf(scoringDetailsBean.getTotal_score()).doubleValue()));
        this.commentHeadMstarBar.setStarMark(scoringDetailsBean.getTotal_stars());
        double[] dArr = {Double.valueOf(scoringDetailsBean.getStars_score5()).doubleValue(), Double.valueOf(scoringDetailsBean.getStars_score4()).doubleValue(), Double.valueOf(scoringDetailsBean.getStars_score3()).doubleValue(), Double.valueOf(scoringDetailsBean.getStars_score2()).doubleValue(), Double.valueOf(scoringDetailsBean.getStars_score1()).doubleValue()};
        double d10 = 0.0d;
        double d11 = 0.0d;
        int i10 = 0;
        for (int i11 = 0; i11 < 5; i11++) {
            double d12 = dArr[i11];
            if (d12 > d11) {
                i10 = i11;
                d11 = d12;
            }
        }
        this.commentHeadNumTx.setText(scoringDetailsBean.getP_count() + "人");
        if (scoringDetailsBean.getP_count() <= 0) {
            this.commentHeadMstarBar.setStarMark(0.0d);
            this.comment_head_nopoint_tx.setVisibility(0);
            this.commentHeadPointTx.setVisibility(8);
            this.commentHeadNumTx.setVisibility(8);
        } else {
            this.point_ll.setVisibility(0);
        }
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, dip2px(this, 10.0f));
        int i12 = 0;
        while (i12 < 5) {
            histogramViewArr[i12].setAnim(false);
            double d13 = dArr[i12];
            if (d13 == d10) {
                histogramViewArr[i12].setProgress(d10);
            } else if (i12 == i10) {
                histogramViewArr[i12].setProgress(1.0d);
            } else if (d11 == d13) {
                histogramViewArr[i12].setProgress(1.0d);
            } else {
                histogramViewArr[i12].setProgress(d13 / d11);
            }
            histogramViewArr[i12].setRateBackgroundColor(strArr[i12]);
            histogramViewArr[i12].setLayoutParams(layoutParams);
            histogramViewArr[i12].setOrientation(0);
            i12++;
            d10 = 0.0d;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        this.comment_all_list.setVisibility(8);
        this.mPtrFrame.setVisibility(8);
        this.loding_faile.setVisibility(8);
        this.noCommentLl.setVisibility(8);
        this.loding_layout.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        List<CommentAllListBean> list = this.CommentAllListBeans;
        if (list == null || list.size() == 0) {
            this.comment_all_list.setVisibility(8);
            this.mPtrFrame.setVisibility(8);
            this.loding_faile.setVisibility(0);
            this.loding_layout.setVisibility(8);
            this.noCommentLl.setVisibility(8);
            this.textTopRight.setVisibility(0);
        } else {
            Toast.makeText(this, getString(R.string.net_connect_failed), 0).show();
        }
        updateListFooter();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMain(List<CommentBaseBean> commentBaseBeans) {
        if (this.pn == 1) {
            if (commentBaseBeans.size() > 0) {
                this.comment_all_list.setVisibility(0);
                this.mPtrFrame.setVisibility(0);
                this.noCommentLl.setVisibility(8);
                this.textTopRight.setVisibility(8);
            } else {
                this.comment_all_list.setVisibility(8);
                this.mPtrFrame.setVisibility(8);
                this.noCommentLl.setVisibility(0);
                this.textTopRight.setVisibility(0);
            }
            this.loding_faile.setVisibility(8);
            this.loding_layout.setVisibility(8);
            this.commentBaseBeanList.clear();
            this.dataSet.clear();
        }
        this.pn++;
        this.commentBaseBeanList.addAll(commentBaseBeans);
        addViewItem(commentBaseBeans);
        this.comment_all_list.u();
        this.comment_all_list.v();
        if (commentBaseBeans.size() <= 0) {
            this.comment_all_list.setNoMore();
        }
        this.mAdapter.notifyDataSetChanged();
        updateListFooter();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMessage(String message) {
        com.join.mgps.Util.a3.b(this.context).d(message);
    }

    @Click
    void textTopRight() {
        if (IntentUtil.getInstance().goLoginInteractive(this.context)) {
            return;
        }
        if (this.mAdapter.g() == -1 || this.mySelf == null) {
            CommentCreatActivity_.intent(this.context).f(this.gameId).j(this.packageName).a(this.bespeakSwitch).d(this.commentScoreSwitch).h(this.gameType).g(1).start();
        } else {
            CommentCreatActivity_.intent(this.context).f(this.gameId).j(this.packageName).d(this.commentScoreSwitch).c(this.mySelf.getId()).e(Float.valueOf(this.mySelf.getStars_score()).floatValue()).h(this.gameType).g(1).a(this.bespeakSwitch).b(this.mySelf.getContent()).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateListFooter() {
        this.comment_all_list.u();
        this.comment_all_list.v();
        this.isLoading = false;
    }
}
