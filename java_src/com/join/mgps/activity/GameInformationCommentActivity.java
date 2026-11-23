package com.join.mgps.activity;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
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
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.login.LoginSplashActivity_;
import com.join.mgps.adapter.InformationAdapterV2;
import com.join.mgps.customview.KeyboardListenLayout;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.AddGameInformationCommentArgs;
import com.join.mgps.dto.GameInformationCommentPraiseArgs;
import com.join.mgps.dto.GameInformationCommentRequestV2;
import com.join.mgps.dto.InformationCommentBackV2;
import com.join.mgps.dto.InformationCommentBeanV2;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
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
public class GameInformationCommentActivity extends BaseActivity {
    private UserInfo accountBean;
    private InformationAdapterV2 adapter;

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
    private Context context;
    private List<InformationAdapterV2.n> dataSet;

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
    InformationCommentBeanV2 informationCommentBean;
    private List<InformationCommentBeanV2> informationComments;

    @Extra
    String informationId;

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
    private int radomInt;
    com.join.mgps.rpc.e rpcClient;
    private ViewTreeObserver vto;
    private int pn = 1;
    private boolean isLoding = false;
    Handler handler = new a();
    private boolean isFirst = true;
    private com.join.mgps.dialog.f1 dialog = null;
    com.join.mgps.customview.t mDialog = null;

    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            int i10 = msg.what;
            if (i10 == 1) {
                if (IntentUtil.getInstance().goLoginInteractive(GameInformationCommentActivity.this.context)) {
                    return;
                }
                GameInformationCommentActivity.this.sendParesed((InformationCommentBeanV2) msg.obj);
                return;
            }
            if (i10 != 2) {
                if (i10 != 3) {
                    return;
                }
                GameInformationCommentActivity.this.edit_user_comment.setFocusable(true);
                GameInformationCommentActivity.this.edit_user_comment.setFocusableInTouchMode(true);
                GameInformationCommentActivity.this.edit_user_comment.requestFocus();
                ((InputMethodManager) GameInformationCommentActivity.this.edit_user_comment.getContext().getSystemService("input_method")).showSoftInput(GameInformationCommentActivity.this.edit_user_comment, 0);
                return;
            }
            InformationCommentBeanV2 informationCommentBeanV2 = (InformationCommentBeanV2) msg.obj;
            GameInformationCommentActivity gameInformationCommentActivity = GameInformationCommentActivity.this;
            gameInformationCommentActivity.informationCommentBean = informationCommentBeanV2;
            gameInformationCommentActivity.edit_user_comment.setFocusable(true);
            GameInformationCommentActivity.this.edit_user_comment.setFocusableInTouchMode(true);
            GameInformationCommentActivity.this.edit_user_comment.requestFocus();
            ((InputMethodManager) GameInformationCommentActivity.this.edit_user_comment.getContext().getSystemService("input_method")).showSoftInput(GameInformationCommentActivity.this.edit_user_comment, 0);
            GameInformationCommentActivity.this.edit_user_comment.setHint("@" + GameInformationCommentActivity.this.informationCommentBean.getNickname() + ":");
        }
    }

    class b implements InformationAdapterV2.l {
        b() {
        }

        @Override // com.join.mgps.adapter.InformationAdapterV2.l
        public void a(InformationCommentBeanV2 sub) {
            GameInformationCommentActivity.this.edit_user_comment.setHint("@" + sub.getNickname() + "：");
            GameInformationCommentActivity.this.edit_user_comment.setFocusable(true);
            GameInformationCommentActivity.this.edit_user_comment.setFocusableInTouchMode(true);
            GameInformationCommentActivity.this.edit_user_comment.requestFocus();
            ((InputMethodManager) GameInformationCommentActivity.this.edit_user_comment.getContext().getSystemService("input_method")).showSoftInput(GameInformationCommentActivity.this.edit_user_comment, 0);
            GameInformationCommentActivity gameInformationCommentActivity = GameInformationCommentActivity.this;
            if (gameInformationCommentActivity.informationCommentBean == null) {
                gameInformationCommentActivity.informationCommentBean = new InformationCommentBeanV2();
            }
            GameInformationCommentActivity.this.informationCommentBean.setCommentId(sub.getCommentId());
            GameInformationCommentActivity.this.informationCommentBean.setUid(sub.getUid());
            GameInformationCommentActivity.this.informationCommentBean.setNickname(sub.getNickname());
        }

        @Override // com.join.mgps.adapter.InformationAdapterV2.l
        public void b(InformationCommentBeanV2 commitDataBean) {
            Message messageObtainMessage = GameInformationCommentActivity.this.handler.obtainMessage();
            messageObtainMessage.what = 1;
            messageObtainMessage.obj = commitDataBean;
            messageObtainMessage.sendToTarget();
        }

        @Override // com.join.mgps.adapter.InformationAdapterV2.l
        public void c(InformationCommentBeanV2 bean) {
            GameInformationCommentActivity.this.edit_user_comment.setHint("@" + bean.getNickname() + "：");
            GameInformationCommentActivity.this.edit_user_comment.setFocusable(true);
            GameInformationCommentActivity.this.edit_user_comment.setFocusableInTouchMode(true);
            GameInformationCommentActivity.this.edit_user_comment.requestFocus();
            ((InputMethodManager) GameInformationCommentActivity.this.edit_user_comment.getContext().getSystemService("input_method")).showSoftInput(GameInformationCommentActivity.this.edit_user_comment, 0);
            GameInformationCommentActivity.this.informationCommentBean = bean;
        }
    }

    class c implements com.join.mgps.customview.i {
        c() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (GameInformationCommentActivity.this.isLoding) {
                return;
            }
            GameInformationCommentActivity.this.getInformationData();
        }
    }

    class d implements com.join.mgps.customview.j {
        d() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (GameInformationCommentActivity.this.isLoding) {
                return;
            }
            GameInformationCommentActivity.this.pn = 1;
            GameInformationCommentActivity.this.getInformationData();
        }
    }

    private UserInfo accountBean(Context ctx) {
        return AccountUtil_.getInstance_(ctx).getAccountData();
    }

    private void dialogDismiss() {
        com.join.mgps.customview.t tVar = this.mDialog;
        if (tVar == null || !tVar.isShowing()) {
            return;
        }
        this.mDialog.dismiss();
    }

    private boolean isLogined(Context context) {
        UserInfo userInfoAccountBean = accountBean(context);
        return userInfoAccountBean != null && com.join.mgps.Util.t2.i(userInfoAccountBean.getToken());
    }

    @AfterViews
    void afterview() {
        this.rpcClient = com.join.mgps.rpc.impl.d.O1();
        this.accountBean = AccountUtil_.getInstance_(this.context).getAccountData();
        this.context = this;
        showLoding();
        this.dialog = com.join.mgps.Util.h0.h0(this.context).x(this.context);
        getInformationData();
        this.layout_title.setText("评论");
        this.edit_user_comment.setHint("评论一下吧");
        this.layout_title.setVisibility(0);
        this.btn_chat_praise.setVisibility(8);
        this.btn_chat_extension.setVisibility(8);
        this.edit_comment_count.setVisibility(8);
        this.informationComments = new ArrayList();
        this.dataSet = new ArrayList();
        b bVar = new b();
        if (this.informationCommentBean != null) {
            this.edit_user_comment.setHint("@" + this.informationCommentBean.getNickname() + "：");
            this.edit_user_comment.setFocusable(true);
            this.edit_user_comment.setFocusableInTouchMode(true);
            this.edit_user_comment.requestFocus();
            ((InputMethodManager) this.edit_user_comment.getContext().getSystemService("input_method")).showSoftInput(this.edit_user_comment, 0);
        }
        InformationAdapterV2 informationAdapterV2 = new InformationAdapterV2(this.context, this.handler, this.dataSet);
        this.adapter = informationAdapterV2;
        informationAdapterV2.m(bVar);
        this.mg_forum_post_comment_list.setAdapter((ListAdapter) this.adapter);
        this.mg_forum_post_comment_list.setPreLoadCount(5);
        this.mg_forum_post_comment_list.setVerticalScrollBarEnabled(false);
        this.mg_forum_post_comment_list.setPullLoadEnable(new c());
        this.mg_forum_post_comment_list.setPullRefreshEnable(new d());
        this.radomInt = new Random(2000L).nextInt();
    }

    @Click
    void back_image() {
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
        sendMessage(accountData, string);
    }

    @UiThread
    void dismissLodingDialog() {
        this.dialog.dismiss();
    }

    @Background
    void getInformationData() {
        if (!com.join.android.app.common.utils.m.j(this.context) || this.isLoding) {
            updateListFooter();
            showLodingFailed();
            return;
        }
        this.isLoding = true;
        ArrayList arrayList = new ArrayList();
        try {
            try {
                RequestModel requestModel = new RequestModel();
                requestModel.setDefault(this.context);
                GameInformationCommentRequestV2 gameInformationCommentRequestV2 = new GameInformationCommentRequestV2();
                gameInformationCommentRequestV2.setInformation_id(this.informationId);
                InformationCommentBeanV2 informationCommentBeanV2 = this.informationCommentBean;
                if (informationCommentBeanV2 != null) {
                    gameInformationCommentRequestV2.setComment_id(informationCommentBeanV2.getId());
                }
                gameInformationCommentRequestV2.setUid(AccountUtil_.getInstance_(this.context).getUid());
                gameInformationCommentRequestV2.setToken(AccountUtil_.getInstance_(this.context).getToken());
                gameInformationCommentRequestV2.setPage(this.pn);
                requestModel.setArgs(gameInformationCommentRequestV2);
                ResponseModel<InformationCommentBackV2> responseModelBody = com.join.mgps.rpc.impl.i.P0().N0().C0(requestModel.makeSign()).execute().body();
                if (responseModelBody != null && responseModelBody.getCode() == 200 && responseModelBody.getData() != null) {
                    InformationCommentBackV2 data = responseModelBody.getData();
                    if (data != null && data.getComments() != null && data.getComments().size() > 0) {
                        arrayList.addAll(data.getComments());
                    }
                    if (arrayList.size() > 0) {
                        this.pn++;
                        showMain(arrayList);
                        updateListFooter();
                    } else {
                        if (this.pn == 1) {
                            showMain(arrayList);
                        }
                        updateListFooter();
                        noMore();
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                updateListFooter();
                showLodingFailed();
            }
        } finally {
            this.isLoding = false;
        }
    }

    @Click
    void mg_loading() {
        this.pn = 1;
        getInformationData();
    }

    @UiThread
    void noMore() {
        this.mg_forum_post_comment_list.setNoMore();
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        this.accountBean = AccountUtil_.getInstance_(this.context).getAccountData();
    }

    void refreshAdapter() {
        this.dataSet.clear();
        if (this.informationComments == null) {
            return;
        }
        for (int i10 = 0; i10 < this.informationComments.size(); i10++) {
            InformationCommentBeanV2 informationCommentBeanV2 = this.informationComments.get(i10);
            this.dataSet.add(new InformationAdapterV2.n(InformationAdapterV2.ViewType.COMMENT, new InformationAdapterV2.n.a(informationCommentBeanV2)));
            List<InformationCommentBeanV2> replyList = informationCommentBeanV2.getReplyList();
            if (replyList != null && replyList.size() > 0) {
                this.dataSet.add(new InformationAdapterV2.n(InformationAdapterV2.ViewType.REPLY, new InformationAdapterV2.n.b(informationCommentBeanV2.getCommentId(), informationCommentBeanV2, 0, true)));
            }
        }
        this.adapter.notifyDataSetChanged();
    }

    @Click
    void relodingimag() {
        this.pn = 1;
        showLoding();
        getInformationData();
    }

    @Background
    void sendMessage(UserInfo accountBean, String message) {
        if (!com.join.android.app.common.utils.m.j(this.context)) {
            showMessage("没有网络，请先检查网络。");
            return;
        }
        if (IntentUtil.getInstance().goLoginInteractive(this)) {
            return;
        }
        showLodingDialog();
        RequestModel requestModel = new RequestModel();
        requestModel.setDefault(this.context);
        AddGameInformationCommentArgs addGameInformationCommentArgs = new AddGameInformationCommentArgs();
        addGameInformationCommentArgs.setMsg(message);
        addGameInformationCommentArgs.setInformation_id(this.informationId);
        addGameInformationCommentArgs.setUserToken(accountBean.getToken());
        addGameInformationCommentArgs.setUid(accountBean.getUid() + "");
        InformationCommentBeanV2 informationCommentBeanV2 = this.informationCommentBean;
        if (informationCommentBeanV2 != null) {
            addGameInformationCommentArgs.setRuid(informationCommentBeanV2.getUid());
            addGameInformationCommentArgs.setComment_id(this.informationCommentBean.getId());
        }
        requestModel.setArgs(addGameInformationCommentArgs);
        try {
            try {
                ResponseModel responseModelBody = com.join.mgps.rpc.impl.i.P0().N0().g(requestModel.makeSign()).execute().body();
                if (responseModelBody != null && responseModelBody.getCode() == 706) {
                    showMessage(getString(R.string.tour_perfect_info_for_comment_toast));
                    IntentUtil.getInstance().goLoginInteractive(this);
                    return;
                }
                if (responseModelBody != null && responseModelBody.getCode() == 806) {
                    showMessage(responseModelBody.getMessage());
                }
                if (responseModelBody == null || responseModelBody.getCode() != 200) {
                    showMessage("评论失败");
                } else {
                    showMessage("评论成功");
                    updateEditText();
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                showMessage("评论失败");
            }
        } finally {
            dismissLodingDialog();
        }
    }

    @Background
    void sendParesed(InformationCommentBeanV2 bean) {
        int like;
        if (!com.join.android.app.common.utils.m.j(this)) {
            showToast("没有网络");
            return;
        }
        try {
            if (IntentUtil.getInstance().goLoginInteractive(this)) {
                return;
            }
            RequestModel requestModel = new RequestModel();
            requestModel.setDefault(this);
            GameInformationCommentPraiseArgs gameInformationCommentPraiseArgs = new GameInformationCommentPraiseArgs();
            gameInformationCommentPraiseArgs.setCommentId(bean.getId());
            gameInformationCommentPraiseArgs.setUid(this.accountBean.getUid() + "");
            gameInformationCommentPraiseArgs.setUserToken(this.accountBean.getToken());
            requestModel.setArgs(gameInformationCommentPraiseArgs);
            ResponseModel responseModelBody = com.join.mgps.rpc.impl.i.P0().N0().D(requestModel.makeSign()).execute().body();
            if (responseModelBody != null && responseModelBody.getCode() == 706) {
                showMessage("完善资料后就可点赞哦");
                IntentUtil.getInstance().goLoginInteractive(this);
                return;
            }
            if (responseModelBody == null || responseModelBody.getCode() != 200) {
                if (responseModelBody == null || responseModelBody.getMessage() == null) {
                    showToast("点赞失败");
                    return;
                } else {
                    showToast(responseModelBody.getMessage());
                    return;
                }
            }
            bean.setPraise(Boolean.TRUE);
            try {
                like = bean.getLike();
            } catch (Exception e10) {
                e10.printStackTrace();
                like = 0;
            }
            bean.setLike(like + 1);
            updateAdapter(bean);
        } catch (Exception e11) {
            e11.printStackTrace();
            showToast("点赞失败");
        }
    }

    @UiThread
    void sendSuccess() {
        this.edit_user_comment.setHint("添加评论");
        this.informationCommentBean = null;
        this.mg_forum_post_comment_list.l();
        this.pn = 1;
        getInformationData();
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
        List<InformationCommentBeanV2> list = this.informationComments;
        if (list != null && list.size() != 0) {
            Toast.makeText(this, getString(R.string.net_connect_failed), 0).show();
            return;
        }
        this.loding_faile.setVisibility(0);
        this.loding_layout.setVisibility(8);
        this.layout_forum_posts_main.setVisibility(8);
    }

    @UiThread
    void showMain(List<InformationCommentBeanV2> informations) {
        if (informations == null || informations.size() == 0) {
            if (this.pn == 1) {
                this.loding_faile.setVisibility(8);
                this.loding_layout.setVisibility(8);
                this.layout_forum_posts_main.setVisibility(0);
                this.noMessage.setVisibility(0);
                return;
            }
            return;
        }
        this.noMessage.setVisibility(8);
        this.loding_faile.setVisibility(8);
        this.loding_layout.setVisibility(8);
        this.layout_forum_posts_main.setVisibility(0);
        if (this.pn == 2) {
            this.informationComments.clear();
        }
        this.informationComments.addAll(informations);
        refreshAdapter();
        if (this.informationCommentBean == null || !this.isFirst) {
            return;
        }
        this.isFirst = false;
        Message message = new Message();
        message.what = 3;
        this.handler.sendMessageDelayed(message, 300L);
        if (this.informationCommentBean != null) {
            this.edit_user_comment.setHint("@" + this.informationCommentBean.getNickname() + ":");
        }
    }

    @UiThread
    void showMessage(String message) {
        com.join.mgps.Util.a3.b(this.context).d(message);
    }

    @UiThread
    void showToast(String message) {
        com.join.mgps.Util.a3.b(this.context).d(message);
    }

    @UiThread
    void toastData(RewardBean rewardBean) {
        if (rewardBean != null) {
            rewardBean.getOn_off();
        }
    }

    @UiThread
    void updateAdapter(InformationCommentBeanV2 bean) {
        for (InformationCommentBeanV2 informationCommentBeanV2 : this.informationComments) {
            if (TextUtils.equals(bean.getId(), informationCommentBeanV2.getId())) {
                informationCommentBeanV2.setPraise(bean.getPraise());
                break;
            }
        }
        refreshAdapter();
    }

    @UiThread
    void updateEditText() {
        this.informationCommentBean = null;
        this.edit_user_comment.setHint("添加评论");
        this.pn = 1;
        getInformationData();
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
