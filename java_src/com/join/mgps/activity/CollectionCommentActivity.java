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
import com.join.mgps.adapter.InformationAdapter;
import com.join.mgps.customview.KeyboardListenLayout;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CollectionCommentRequest;
import com.join.mgps.dto.InformationCommentBack;
import com.join.mgps.dto.InformationCommentBean;
import com.join.mgps.dto.InformationSendBack;
import com.join.mgps.dto.InformationSendRequestBean;
import com.join.mgps.dto.PariseBackData;
import com.join.mgps.dto.PariseRequest;
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
public class CollectionCommentActivity extends BaseActivity {
    private UserInfo accountBean;
    private InformationAdapter adapter;

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
    private List<InformationAdapter.n> dataSet;
    com.join.mgps.dialog.f1 dialog;

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
    private List<InformationCommentBean> informationComments;

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
    com.join.mgps.customview.t mDialog = null;

    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            int i10 = msg.what;
            if (i10 == 1) {
                if (CollectionCommentActivity.this.accountBean == null) {
                    IntentUtil.getInstance().goLoginInteractive(CollectionCommentActivity.this.context);
                    return;
                } else {
                    CollectionCommentActivity.this.sendParesed((InformationCommentBean) msg.obj);
                    return;
                }
            }
            if (i10 != 2) {
                if (i10 != 3) {
                    return;
                }
                CollectionCommentActivity.this.edit_user_comment.setFocusable(true);
                CollectionCommentActivity.this.edit_user_comment.setFocusableInTouchMode(true);
                CollectionCommentActivity.this.edit_user_comment.requestFocus();
                ((InputMethodManager) CollectionCommentActivity.this.edit_user_comment.getContext().getSystemService("input_method")).showSoftInput(CollectionCommentActivity.this.edit_user_comment, 0);
                return;
            }
            InformationCommentBean informationCommentBean = (InformationCommentBean) msg.obj;
            if (informationCommentBean.isTitle()) {
                return;
            }
            CollectionCommentActivity collectionCommentActivity = CollectionCommentActivity.this;
            collectionCommentActivity.informationCommentBean = informationCommentBean;
            collectionCommentActivity.edit_user_comment.setFocusable(true);
            CollectionCommentActivity.this.edit_user_comment.setFocusableInTouchMode(true);
            CollectionCommentActivity.this.edit_user_comment.requestFocus();
            ((InputMethodManager) CollectionCommentActivity.this.edit_user_comment.getContext().getSystemService("input_method")).showSoftInput(CollectionCommentActivity.this.edit_user_comment, 0);
            CollectionCommentActivity.this.edit_user_comment.setHint("@" + CollectionCommentActivity.this.informationCommentBean.getUser_name() + ":");
        }
    }

    class b implements InformationAdapter.l {
        b() {
        }

        @Override // com.join.mgps.adapter.InformationAdapter.l
        public void a(InformationCommentBean commitDataBean) {
            Message messageObtainMessage = CollectionCommentActivity.this.handler.obtainMessage();
            messageObtainMessage.what = 1;
            messageObtainMessage.obj = commitDataBean;
            messageObtainMessage.sendToTarget();
        }

        @Override // com.join.mgps.adapter.InformationAdapter.l
        public void b(InformationCommentBean.Sub sub) {
            CollectionCommentActivity.this.edit_user_comment.setHint("@" + sub.getUser_name() + "：");
            CollectionCommentActivity.this.edit_user_comment.setFocusable(true);
            CollectionCommentActivity.this.edit_user_comment.setFocusableInTouchMode(true);
            CollectionCommentActivity.this.edit_user_comment.requestFocus();
            ((InputMethodManager) CollectionCommentActivity.this.edit_user_comment.getContext().getSystemService("input_method")).showSoftInput(CollectionCommentActivity.this.edit_user_comment, 0);
            CollectionCommentActivity collectionCommentActivity = CollectionCommentActivity.this;
            if (collectionCommentActivity.informationCommentBean == null) {
                collectionCommentActivity.informationCommentBean = new InformationCommentBean();
            }
            CollectionCommentActivity.this.informationCommentBean.setComment_id(sub.getComment_id());
            CollectionCommentActivity.this.informationCommentBean.setUser_id(sub.getUser_id());
            CollectionCommentActivity.this.informationCommentBean.setUser_name(sub.getUser_name());
        }

        @Override // com.join.mgps.adapter.InformationAdapter.l
        public void c(InformationCommentBean bean) {
            CollectionCommentActivity.this.edit_user_comment.setHint("@" + bean.getUser_name() + "：");
            CollectionCommentActivity.this.edit_user_comment.setFocusable(true);
            CollectionCommentActivity.this.edit_user_comment.setFocusableInTouchMode(true);
            CollectionCommentActivity.this.edit_user_comment.requestFocus();
            ((InputMethodManager) CollectionCommentActivity.this.edit_user_comment.getContext().getSystemService("input_method")).showSoftInput(CollectionCommentActivity.this.edit_user_comment, 0);
            CollectionCommentActivity.this.informationCommentBean = bean;
        }
    }

    class c implements com.join.mgps.customview.i {
        c() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (CollectionCommentActivity.this.isLoding) {
                return;
            }
            CollectionCommentActivity.this.getInformationData();
        }
    }

    class d implements com.join.mgps.customview.j {
        d() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (CollectionCommentActivity.this.isLoding) {
                return;
            }
            CollectionCommentActivity.this.pn = 1;
            CollectionCommentActivity.this.getInformationData();
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
        this.context = this;
        this.accountBean = AccountUtil_.getInstance_(this).getAccountData();
        this.dialog = com.join.mgps.Util.h0.h0(this.context).x(this.context);
        showLoding();
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
        InformationAdapter informationAdapter = new InformationAdapter(this.context, this.handler, this.dataSet);
        this.adapter = informationAdapter;
        informationAdapter.m(bVar);
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

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void dismissLodingDialog() {
        this.dialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getInformationData() {
        if (!com.join.android.app.common.utils.m.j(this.context) || this.isLoding) {
            updateListFooter();
            showLodingFailed();
            return;
        }
        this.isLoding = true;
        List<InformationCommentBean> arrayList = new ArrayList<>();
        try {
            try {
                CollectionCommentRequest collectionCommentRequest = new CollectionCommentRequest();
                collectionCommentRequest.setComment_type(new int[]{1, 2});
                collectionCommentRequest.setCollection_id(this.informationId);
                collectionCommentRequest.setPn(this.pn);
                collectionCommentRequest.setPc(20);
                UserInfo userInfo = this.accountBean;
                if (userInfo != null) {
                    collectionCommentRequest.setUid(userInfo.getUid());
                }
                InformationCommentBack data = this.rpcClient.r0(RequestBeanUtil.getInstance(this).getGameInformationComment(collectionCommentRequest)).getMessages().getData();
                if (data != null) {
                    List<InformationCommentBean> hot = data.getHot();
                    List<InformationCommentBean> all = data.getAll();
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
                }
                if (arrayList.size() > 0) {
                    if (arrayList.size() == 0) {
                        noMore();
                    } else {
                        this.pn++;
                    }
                    showMain(arrayList);
                    updateListFooter();
                } else {
                    if (this.pn == 1) {
                        showMain(arrayList);
                    }
                    updateListFooter();
                    noMore();
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

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void noMore() {
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
            InformationCommentBean informationCommentBean = this.informationComments.get(i10);
            if (informationCommentBean.isTitle()) {
                this.dataSet.add(new InformationAdapter.n(InformationAdapter.ViewType.TITLE, new InformationAdapter.n.a(informationCommentBean)));
            } else {
                this.dataSet.add(new InformationAdapter.n(InformationAdapter.ViewType.COMMENT, new InformationAdapter.n.a(informationCommentBean)));
                List<InformationCommentBean.Sub> sub = informationCommentBean.getSub();
                if (sub != null && sub.size() > 0) {
                    this.dataSet.add(new InformationAdapter.n(InformationAdapter.ViewType.REPLY, new InformationAdapter.n.b(informationCommentBean.getComment_id(), informationCommentBean, 0, true)));
                }
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

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void sendMessage(UserInfo accountBean, String message) {
        if (!com.join.android.app.common.utils.m.j(this.context)) {
            showMessage("没有网络，请先检查网络。");
            return;
        }
        if (IntentUtil.getInstance().goLoginInteractive(this)) {
            return;
        }
        showLodingDialog();
        InformationSendRequestBean informationSendRequestBean = new InformationSendRequestBean();
        informationSendRequestBean.setCollection_id(this.informationId);
        informationSendRequestBean.setType(2);
        informationSendRequestBean.setUid(accountBean.getUid());
        informationSendRequestBean.setContent(message);
        informationSendRequestBean.setHead_portrait(accountBean.getAvatarSrc());
        informationSendRequestBean.setUser_name(accountBean.getAccount());
        informationSendRequestBean.setRandom_num(this.radomInt);
        informationSendRequestBean.setIp_address(UtilsMy.V1());
        informationSendRequestBean.setMobile_phone_model(com.join.android.app.common.utils.q.n(this.context).q());
        informationSendRequestBean.setIs_anonymous(0);
        InformationCommentBean informationCommentBean = this.informationCommentBean;
        if (informationCommentBean != null) {
            informationSendRequestBean.setReply_comment_id(informationCommentBean.getComment_id());
            informationSendRequestBean.setReply_comment_user_name(this.informationCommentBean.getUser_name());
            informationSendRequestBean.setReply_comment_user_id(this.informationCommentBean.getUser_id());
        }
        try {
            try {
                ResultMainBean<InformationSendBack> resultMainBeanJ0 = this.rpcClient.j0(RequestBeanUtil.getInstance(this).sendInformationComment(informationSendRequestBean));
                if (resultMainBeanJ0 != null && resultMainBeanJ0.getCode() == 706) {
                    showMessage(getString(R.string.tour_perfect_info_for_comment_toast));
                    IntentUtil.getInstance().goLoginInteractive(this);
                    return;
                }
                if (resultMainBeanJ0.getCode() == 806) {
                    showMessage(resultMainBeanJ0.getError_info());
                }
                if (resultMainBeanJ0.getFlag() == 1) {
                    sendSuccess();
                    showMessage("评论成功");
                    toastData(resultMainBeanJ0.getMessages().getData().getIs_reward());
                } else {
                    showMessage("评论失败");
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                showMessage("评论失败");
            }
        } finally {
            dismissLodingDialog();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void sendParesed(InformationCommentBean bean) {
        if (!com.join.android.app.common.utils.m.j(this)) {
            showToast("没有网络");
            return;
        }
        try {
            if (IntentUtil.getInstance().goLoginInteractive(this)) {
                return;
            }
            PariseRequest pariseRequest = new PariseRequest();
            pariseRequest.setCollection_id(bean.getCollection_id());
            pariseRequest.setComment_id(bean.getComment_id());
            pariseRequest.setUid(this.accountBean.getUid());
            ResultMainBean<List<PariseBackData>> resultMainBeanI0 = this.rpcClient.i0(RequestBeanUtil.getInstance(this).getGameInformationParis(pariseRequest));
            if (resultMainBeanI0 != null && resultMainBeanI0.getCode() == 706) {
                showMessage("完善资料后就可点赞哦");
                IntentUtil.getInstance().goLoginInteractive(this);
                return;
            }
            if (resultMainBeanI0 == null || resultMainBeanI0.getFlag() != 1) {
                showToast("点赞失败");
                return;
            }
            List<PariseBackData> data = resultMainBeanI0.getMessages().getData();
            if (data.size() <= 0) {
                showToast("你已赞过");
                return;
            }
            int i10 = 0;
            if (!data.get(0).isVal()) {
                showToast("你已赞过");
                return;
            }
            bean.setHasPraised(true);
            try {
                i10 = Integer.parseInt(bean.getPraise_count());
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            bean.setPraise_count((i10 + 1) + "");
            updateAdapter(bean);
        } catch (Exception e11) {
            e11.printStackTrace();
            showToast("点赞失败");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void sendSuccess() {
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

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        this.loding_layout.setVisibility(0);
        this.loding_faile.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingDialog() {
        this.dialog.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        List<InformationCommentBean> list = this.informationComments;
        if (list != null && list.size() != 0) {
            Toast.makeText(this, getString(R.string.net_connect_failed), 0).show();
            return;
        }
        this.loding_faile.setVisibility(0);
        this.loding_layout.setVisibility(8);
        this.layout_forum_posts_main.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMain(List<InformationCommentBean> informations) {
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
        if (com.join.mgps.Util.t2.h(this.informationCommentBean.getCollection_id())) {
            return;
        }
        this.edit_user_comment.setHint("@" + this.informationCommentBean.getUser_name() + ":");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMessage(String message) {
        com.join.mgps.Util.a3.b(this.context).d(message);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String message) {
        com.join.mgps.Util.a3.b(this.context).d(message);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void toastData(RewardBean rewardBean) {
        if (rewardBean != null) {
            rewardBean.getOn_off();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateAdapter(InformationCommentBean bean) {
        for (InformationCommentBean informationCommentBean : this.informationComments) {
            if (bean.getComment_id() == informationCommentBean.getComment_id()) {
                informationCommentBean.setHasPraised(bean.isHasPraised());
                break;
            }
        }
        refreshAdapter();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateListFooter() {
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
