package com.join.mgps.activity;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.BaseActivity;
import com.bykv.vk.component.ttvideo.player.C;
import com.join.android.app.common.view.ClearEditText;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.login.LoginSplashActivity_;
import com.join.mgps.adapter.GameCommentAdapter;
import com.join.mgps.customview.KeyboardListenLayout;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.CommitContextDataBean;
import com.join.mgps.dto.CommitDataBean;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.InformationCommentBack;
import com.join.mgps.dto.InformationCommentBean;
import com.join.mgps.dto.PariseBackData;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.RewardBean;
import com.wufan.user.service.protobuf.UserInfo;
import it.sephiroth.android.library.widget.HListView;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.information_comment_activity)
public class GameCommentActivity extends BaseActivity {

    @Extra
    String CrcLinkTypeVal;
    private UserInfo accountBean;
    private GameCommentAdapter adapter;

    @ViewById
    ImageView back_image;

    @ViewById
    Button btn_chat_extension;

    @ViewById
    Button btn_chat_praise;

    @ViewById
    Button btn_chat_send;

    @ViewById
    View chat_layout_extension;

    @ViewById
    LinearLayout chat_layout_extension_container;

    @ViewById
    LinearLayout chat_layout_more;
    private List<InformationCommentBean> commitDataBeans;
    private Context context;
    private List<GameCommentAdapter.l> dataSet;

    @ViewById
    TextView edit_comment_count;

    @ViewById
    ClearEditText edit_user_comment;

    @ViewById
    TextView footer_tip;

    @ViewById
    TextView forum_title_center;

    @ViewById
    ImageView image_add;

    @Extra
    InformationCommentBean informationCommentBean;

    @Extra
    String informationId;

    @Extra
    boolean isEdit;

    @ViewById
    FrameLayout layout_forum_posts_main;

    @ViewById
    RelativeLayout layout_forum_posts_title;

    @ViewById
    TextView layout_title;

    @ViewById
    LinearLayout loding_faile;

    @ViewById
    LinearLayout loding_layout;

    @ViewById
    KeyboardListenLayout main;

    @ViewById
    HListView matchListView;

    @ViewById
    XListView2 mg_forum_post_comment_list;

    @ViewById
    TextView noMessage;
    private String replyCommentId;
    int replyUserId;
    private String replyUserName;
    com.join.mgps.rpc.e rpcClient;
    private int uid;
    private ViewTreeObserver vto;
    private int pn = 1;
    private boolean isLoading = false;
    Handler handler = new a();
    com.join.mgps.dialog.f1 dialog = null;
    com.join.mgps.customview.t mDialog = null;

    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            int i10 = msg.what;
            if (i10 == 1) {
                if (IntentUtil.getInstance().goLoginInteractive(GameCommentActivity.this.context)) {
                    return;
                }
                GameCommentActivity.this.postPraised((InformationCommentBean) msg.obj);
                return;
            }
            if (i10 != 2) {
                if (i10 != 3) {
                    return;
                }
                GameCommentActivity.this.edit_user_comment.setFocusable(true);
                GameCommentActivity.this.edit_user_comment.setFocusableInTouchMode(true);
                GameCommentActivity.this.edit_user_comment.requestFocus();
                ((InputMethodManager) GameCommentActivity.this.edit_user_comment.getContext().getSystemService("input_method")).showSoftInput(GameCommentActivity.this.edit_user_comment, 0);
                return;
            }
            CommitDataBean commitDataBean = (CommitDataBean) msg.obj;
            if (commitDataBean.isHas_praised()) {
                return;
            }
            GameCommentActivity.this.edit_user_comment.setFocusable(true);
            GameCommentActivity.this.edit_user_comment.setFocusableInTouchMode(true);
            GameCommentActivity.this.edit_user_comment.requestFocus();
            ((InputMethodManager) GameCommentActivity.this.edit_user_comment.getContext().getSystemService("input_method")).showSoftInput(GameCommentActivity.this.edit_user_comment, 0);
            GameCommentActivity.this.edit_user_comment.setHint("@" + commitDataBean.getUser_name() + ":");
        }
    }

    class b implements GameCommentAdapter.j {
        b() {
        }

        @Override // com.join.mgps.adapter.GameCommentAdapter.j
        public void a(InformationCommentBean commitDataBean) {
            Message messageObtainMessage = GameCommentActivity.this.handler.obtainMessage();
            messageObtainMessage.what = 1;
            messageObtainMessage.obj = commitDataBean;
            messageObtainMessage.sendToTarget();
        }

        @Override // com.join.mgps.adapter.GameCommentAdapter.j
        public void b(InformationCommentBean.Sub sub) {
            GameCommentActivity.this.edit_user_comment.setHint("@" + sub.getUser_name() + "：");
            GameCommentActivity.this.edit_user_comment.setFocusable(true);
            GameCommentActivity.this.edit_user_comment.setFocusableInTouchMode(true);
            GameCommentActivity.this.edit_user_comment.requestFocus();
            ((InputMethodManager) GameCommentActivity.this.edit_user_comment.getContext().getSystemService("input_method")).showSoftInput(GameCommentActivity.this.edit_user_comment, 0);
            GameCommentActivity.this.replyCommentId = sub.getComment_id();
            GameCommentActivity.this.replyUserId = Integer.parseInt(sub.getUser_id());
            GameCommentActivity.this.replyUserName = sub.getUser_name();
        }

        @Override // com.join.mgps.adapter.GameCommentAdapter.j
        public void c(InformationCommentBean bean) {
            GameCommentActivity.this.edit_user_comment.setHint("@" + bean.getUser_name() + "：");
            GameCommentActivity.this.edit_user_comment.setFocusable(true);
            GameCommentActivity.this.edit_user_comment.setFocusableInTouchMode(true);
            GameCommentActivity.this.edit_user_comment.requestFocus();
            ((InputMethodManager) GameCommentActivity.this.edit_user_comment.getContext().getSystemService("input_method")).showSoftInput(GameCommentActivity.this.edit_user_comment, 0);
            GameCommentActivity.this.replyCommentId = bean.getComment_id();
            GameCommentActivity.this.replyUserId = Integer.parseInt(bean.getUser_id());
            GameCommentActivity.this.replyUserName = bean.getUser_name();
        }

        @Override // com.join.mgps.adapter.GameCommentAdapter.j
        public void d() {
        }
    }

    class c implements com.join.mgps.customview.i {
        c() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (GameCommentActivity.this.isLoading) {
                return;
            }
            GameCommentActivity.this.getGameCommentList();
        }
    }

    class d implements com.join.mgps.customview.j {
        d() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (GameCommentActivity.this.isLoading) {
                return;
            }
            GameCommentActivity.this.pn = 1;
            GameCommentActivity.this.getGameCommentList();
        }
    }

    private UserInfo accountBean(Context ctx) {
        return AccountUtil_.getInstance_(ctx).getAccountData();
    }

    private boolean isLogined(Context context) {
        UserInfo userInfoAccountBean = accountBean(context);
        return userInfoAccountBean != null && com.join.mgps.Util.t2.i(userInfoAccountBean.getToken());
    }

    void addViewItem(List<InformationCommentBean> list) {
        for (int i10 = 0; list != null && i10 < list.size(); i10++) {
            InformationCommentBean informationCommentBean = list.get(i10);
            if (informationCommentBean.isTitle()) {
                this.dataSet.add(new GameCommentAdapter.l(GameCommentAdapter.ViewType.TITLE, new GameCommentAdapter.l.a(informationCommentBean)));
            } else {
                this.dataSet.add(new GameCommentAdapter.l(GameCommentAdapter.ViewType.COMMENT, new GameCommentAdapter.l.a(informationCommentBean)));
                List<InformationCommentBean.Sub> sub = informationCommentBean.getSub();
                if (sub != null && sub.size() > 0) {
                    this.dataSet.add(new GameCommentAdapter.l(GameCommentAdapter.ViewType.REPLY, new GameCommentAdapter.l.b(informationCommentBean.getComment_id(), informationCommentBean, 0, true)));
                }
            }
        }
    }

    @AfterViews
    void afterview() {
        this.rpcClient = com.join.mgps.rpc.impl.d.O1();
        this.context = this;
        UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
        this.accountBean = accountData;
        if (accountData != null) {
            this.uid = accountData.getUid();
        }
        this.dialog = com.join.mgps.Util.h0.h0(this.context).x(this.context);
        showLoding();
        getGameCommentList();
        this.layout_title.setText("评论");
        this.edit_user_comment.setHint("评论一下吧");
        this.layout_title.setVisibility(0);
        this.btn_chat_praise.setVisibility(8);
        this.btn_chat_extension.setVisibility(8);
        this.edit_comment_count.setVisibility(8);
        this.dataSet = new ArrayList();
        this.commitDataBeans = new ArrayList();
        b bVar = new b();
        if (this.informationCommentBean != null) {
            this.edit_user_comment.setHint("@" + this.informationCommentBean.getUser_name() + "：");
            this.edit_user_comment.setFocusable(true);
            this.edit_user_comment.setFocusableInTouchMode(true);
            this.edit_user_comment.requestFocus();
            ((InputMethodManager) this.edit_user_comment.getContext().getSystemService("input_method")).showSoftInput(this.edit_user_comment, 0);
            this.replyCommentId = this.informationCommentBean.getComment_id();
            this.replyUserId = Integer.parseInt(this.informationCommentBean.getUser_id());
            this.replyUserName = this.informationCommentBean.getUser_name();
        }
        GameCommentAdapter gameCommentAdapter = new GameCommentAdapter(this.context, this.dataSet, bVar);
        this.adapter = gameCommentAdapter;
        this.mg_forum_post_comment_list.setAdapter((ListAdapter) gameCommentAdapter);
        this.mg_forum_post_comment_list.setPreLoadCount(10);
        this.mg_forum_post_comment_list.setVerticalScrollBarEnabled(false);
        this.mg_forum_post_comment_list.setPullLoadEnable(new c());
        this.mg_forum_post_comment_list.setPullRefreshEnable(new d());
    }

    @Click
    void back_image() {
        try {
            InputMethodManager inputMethodManager = (InputMethodManager) getSystemService("input_method");
            if (inputMethodManager != null && getCurrentFocus() != null) {
                inputMethodManager.hideSoftInputFromWindow(getCurrentFocus().getWindowToken(), 2);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        finish();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Click
    void btn_chat_send() {
        UserInfo accountData = AccountUtil_.getInstance_(this.context).getAccountData();
        if (accountData == null) {
            ((LoginSplashActivity_.IntentBuilder_) LoginSplashActivity_.intent(this.context).flags(C.ENCODING_PCM_MU_LAW)).start();
            return;
        }
        String string = this.edit_user_comment.getText().toString();
        if (string.length() == 0) {
            com.join.mgps.Util.a3.b(this.context).d("不能发表空字符串");
            return;
        }
        if (string.length() < 4) {
            com.join.mgps.Util.a3.b(this.context).d("发表评论不能小于4个");
            return;
        }
        ((InputMethodManager) getSystemService("input_method")).hideSoftInputFromWindow(getCurrentFocus().getWindowToken(), 2);
        if (IntentUtil.getInstance().goLoginInteractive(this)) {
            return;
        }
        this.edit_user_comment.setText("");
        postGameCommentRelpy(accountData, string);
    }

    @UiThread
    void dismissLodingDialog() {
        this.dialog.dismiss();
    }

    @Background
    void getGameCommentList() {
        if (!com.join.android.app.common.utils.m.j(this.context)) {
            updateListFooter();
            showLodingFailed();
            return;
        }
        this.isLoading = true;
        try {
            InformationCommentBack data = this.rpcClient.a1(getGameCommentRequestBean()).getMessages().getData();
            if (data != null) {
                List<InformationCommentBean> hot = data.getHot();
                List<InformationCommentBean> all = data.getAll();
                List<InformationCommentBean> arrayList = new ArrayList<>();
                if (hot != null && hot.size() > 0) {
                    InformationCommentBean informationCommentBean = new InformationCommentBean();
                    informationCommentBean.setIs_hot(1);
                    informationCommentBean.setTitle(true);
                    arrayList.add(informationCommentBean);
                    arrayList.addAll(hot);
                }
                if (all != null && all.size() > 0) {
                    if (this.pn == 1) {
                        InformationCommentBean informationCommentBean2 = new InformationCommentBean();
                        informationCommentBean2.setIs_hot(2);
                        informationCommentBean2.setTitle(true);
                        arrayList.add(informationCommentBean2);
                    }
                    arrayList.addAll(all);
                }
                showMain(arrayList);
            } else {
                updateListFooter();
                showLodingFailed();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        } finally {
            updateListFooter();
            showLodingFailed();
            this.isLoading = false;
        }
    }

    public CommonRequestBean getGameCommentRequestBean() {
        UserInfo accountData = AccountUtil_.getInstance_(this.context).getAccountData();
        this.accountBean = accountData;
        if (accountData != null) {
            this.uid = accountData.getUid();
        }
        return RequestBeanUtil.getInstance(this.context).getGameCommentListRequestBean(this.pn, 10, this.uid, this.CrcLinkTypeVal, new int[]{1, 2});
    }

    @Click
    void mg_loading() {
        this.pn = 1;
        getGameCommentList();
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
    }

    @UiThread
    void onPraiseFail(InformationCommentBean bean) {
        updateAdapter(bean);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        UserInfo accountData = AccountUtil_.getInstance_(this.context).getAccountData();
        this.accountBean = accountData;
        if (accountData != null) {
            this.uid = accountData.getUid();
        }
    }

    @Background
    void postGameComment(AccountBean accountBean, String message) {
        if (!com.join.android.app.common.utils.m.j(this.context)) {
            showMessage("没有网络，请先检查网络。");
            return;
        }
        showLodingDialog();
        try {
            try {
                if (IntentUtil.getInstance().goLoginInteractive(this)) {
                    return;
                }
                postGameCommentBean(accountBean, message);
                showMessage("评论失败");
            } catch (Exception e10) {
                e10.printStackTrace();
                showMessage("评论失败");
            }
        } finally {
            dismissLodingDialog();
        }
    }

    public CommonRequestBean postGameCommentBean(AccountBean accountBean, String message) {
        Random random = new Random(2000L);
        return RequestBeanUtil.getInstance(this.context).postGameCommentRequestBean(this.CrcLinkTypeVal, this.uid, accountBean.getAvatarSrc(), accountBean.getAccount(), com.join.android.app.common.utils.q.n(this.context).q(), UtilsMy.V1(), random.nextInt(), message);
    }

    @Background
    void postGameCommentRelpy(UserInfo accountBean, String message) {
        if (!com.join.android.app.common.utils.m.j(this.context)) {
            showMessage("没有网络，请先检查网络。");
            return;
        }
        showLodingDialog();
        try {
            try {
                if (IntentUtil.getInstance().goLoginInteractive(this)) {
                    return;
                }
                ResultMainBean<CommitContextDataBean> resultMainBeanX0 = this.rpcClient.x0(postGameCommentRelpyRequestBean(accountBean, message));
                if (resultMainBeanX0 == null) {
                    showMessage("评论失败");
                } else {
                    if (resultMainBeanX0.getCode() == 706) {
                        showMessage(getString(R.string.tour_perfect_info_for_comment_toast));
                        IntentUtil.getInstance().goLoginInteractive(this);
                        return;
                    }
                    if (resultMainBeanX0.getCode() == 806) {
                        showMessage(resultMainBeanX0.getError_info());
                    }
                    if (resultMainBeanX0.getFlag() == 1) {
                        showMessage("评论成功");
                        sendSuccess();
                        toastData(resultMainBeanX0.getMessages().getData().getIs_reward());
                    } else {
                        showMessage("评论失败");
                    }
                }
            } catch (Exception e10) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("异常");
                sb2.append(e10.getMessage());
                sb2.append(e10.toString());
                e10.printStackTrace();
                showMessage("评论失败");
            }
        } finally {
            dismissLodingDialog();
        }
    }

    public CommonRequestBean postGameCommentRelpyRequestBean(UserInfo accountBean, String message) {
        Random random = new Random(2000L);
        return RequestBeanUtil.getInstance(this.context).postGameCommentRelpyRequestBean(this.uid, this.CrcLinkTypeVal, accountBean.getAvatarSrc(), accountBean.getAccount(), com.join.android.app.common.utils.q.n(this.context).q(), UtilsMy.V1(), random.nextInt(), message, this.replyCommentId, this.replyUserName, this.replyUserId);
    }

    @Background
    void postPraised(InformationCommentBean bean) {
        if (!com.join.android.app.common.utils.m.j(this)) {
            showMessage("没有网络");
            return;
        }
        try {
            if (IntentUtil.getInstance().goLoginInteractive(this)) {
                return;
            }
            ResultMainBean<List<PariseBackData>> resultMainBeanB = this.rpcClient.b(postPraisedBean(bean.getComment_id()));
            if (resultMainBeanB == null || resultMainBeanB.getFlag() != 1) {
                onPraiseFail(bean);
                showMessage("点赞失败");
                return;
            }
            List<PariseBackData> data = resultMainBeanB.getMessages().getData();
            if (data.size() <= 0) {
                showMessage("你已赞过");
                return;
            }
            int i10 = 0;
            if (!data.get(0).isVal()) {
                showMessage("你已赞过");
                return;
            }
            bean.setHasPraised(true);
            try {
                i10 = Integer.parseInt(bean.getPraise_count()) + 1;
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            bean.setPraise_count(i10 + "");
            updateAdapter(bean);
        } catch (Exception e11) {
            e11.printStackTrace();
            onPraiseFail(bean);
            showMessage("点赞失败");
        }
    }

    public CommonRequestBean postPraisedBean(String commentId) {
        UserInfo accountData = AccountUtil_.getInstance_(this.context).getAccountData();
        this.accountBean = accountData;
        if (accountData != null) {
            this.uid = accountData.getUid();
        }
        return RequestBeanUtil.getInstance(this.context).postPraisedRequestBean(commentId, this.uid, this.CrcLinkTypeVal);
    }

    void refreshViewItem() {
        this.dataSet.clear();
        addViewItem(this.commitDataBeans);
    }

    @Click
    void relodingimag() {
        this.pn = 1;
        showLoding();
        getGameCommentList();
    }

    @UiThread
    void sendSuccess() {
        this.edit_user_comment.setHint("添加评论");
        this.replyCommentId = "0";
        this.replyUserId = 0;
        this.replyUserName = "";
        this.pn = 1;
        this.mg_forum_post_comment_list.l();
        getGameCommentList();
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this);
    }

    @UiThread
    void showLoding() {
        this.loding_layout.setVisibility(0);
        this.loding_faile.setVisibility(8);
    }

    @UiThread
    void showLodingDialog() {
        this.dialog.b();
    }

    @UiThread
    void showLodingFailed() {
        List<InformationCommentBean> list = this.commitDataBeans;
        if (list != null && list.size() != 0) {
            Toast.makeText(this, getString(R.string.net_connect_failed), 0).show();
            return;
        }
        this.layout_forum_posts_main.setVisibility(8);
        this.loding_faile.setVisibility(0);
        this.loding_layout.setVisibility(8);
    }

    @UiThread
    void showMain(List<InformationCommentBean> commitDataBeanList) {
        if (this.pn == 1) {
            this.loding_faile.setVisibility(8);
            this.loding_layout.setVisibility(8);
            this.layout_forum_posts_main.setVisibility(0);
            this.noMessage.setVisibility(0);
            this.commitDataBeans.clear();
            this.dataSet.clear();
        }
        this.pn++;
        this.commitDataBeans.addAll(commitDataBeanList);
        addViewItem(commitDataBeanList);
        this.mg_forum_post_comment_list.u();
        this.mg_forum_post_comment_list.v();
        if (commitDataBeanList.size() < 10) {
            this.mg_forum_post_comment_list.setNoMore();
        }
        this.adapter.notifyDataSetChanged();
        if (this.isEdit) {
            this.isEdit = false;
            Message message = new Message();
            message.what = 3;
            this.handler.sendMessageDelayed(message, 300L);
        }
    }

    @UiThread
    void showMessage(String message) {
        com.join.mgps.Util.a3.b(this.context).d(message);
    }

    @UiThread
    void toastData(RewardBean rewardBean) {
        if (rewardBean != null) {
            rewardBean.getOn_off();
        }
    }

    @UiThread
    void updateAdapter(InformationCommentBean bean) {
        for (InformationCommentBean informationCommentBean : this.commitDataBeans) {
            if (bean.getComment_id() == informationCommentBean.getComment_id()) {
                informationCommentBean.setHasPraised(bean.isHasPraised());
                break;
            }
        }
        this.adapter.notifyDataSetChanged();
    }

    @UiThread
    void updateListFooter() {
        this.mg_forum_post_comment_list.u();
        this.mg_forum_post_comment_list.v();
    }

    boolean validAccount() {
        if (accountBean(this.context) == null) {
            return false;
        }
        return !AccountUtil_.getInstance_(this).isTourist();
    }
}
