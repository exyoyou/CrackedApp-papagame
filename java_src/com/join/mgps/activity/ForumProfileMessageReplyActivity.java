package com.join.mgps.activity;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.BitmapDrawable;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.BaseActivity;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.view.ClearEditText;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.posting.PostingActivity;
import com.join.mgps.adapter.ForumProfileMessageReplyAdapter;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.KeyboardListenLayout;
import com.join.mgps.customview.RewardType;
import com.join.mgps.customview.XListView;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.AccountTokenSuccess;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.ForumData;
import com.join.mgps.dto.ForumRequestBean;
import com.join.mgps.dto.ForumResponse;
import com.join.mgps.dto.GroupInfoBean;
import com.join.mgps.dto.TouristLoginRequestBean;
import com.join.mgps.pref.PrefDef_;
import com.wufan.user.service.protobuf.UserInfo;
import it.sephiroth.android.library.widget.HListView;
import java.io.File;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.res.StringRes;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.mg_forum_profile_message_reply_activity)
public class ForumProfileMessageReplyActivity extends BaseActivity {
    public static final String KEY_FORUM_COMMENT_BEAN = "key_forum_comment_bean";
    public static final String KEY_FORUM_POST_BEAN = "key_forum_post_bean";
    public static final String KEY_FORUM_REPLY_BEAN = "key_forum_reply_bean";
    private static final int MAX_POSTS_IMAGE = 9;

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
    private Button comment;
    ForumBean.ForumCommentBean commentBean;
    private int curCid;
    private String curMessage;
    private int curPid;
    private int curRid;
    private Button deleteComment;

    @ViewById
    TextView edit_comment_count;

    @ViewById
    ClearEditText edit_user_comment;

    @ViewById
    TextView footer_tip;
    private com.join.mgps.dialog.x0 forumDialog;
    private com.join.mgps.dialog.y0 forumLoadingDialog;
    ForumBean.ForumPostsBean forumPostsBean;
    ForumProfileMessageReplyAdapter forumProfileMessageAdapter1;

    @ViewById
    ImageView image_add;

    @ViewById
    RelativeLayout layout_forum_posts_title;

    @ViewById
    TextView layout_title;

    @ViewById
    TextView layout_title_right;
    List<ForumProfileMessageReplyAdapter.u> listData;

    @ViewById
    ForumLoadingView loadingView;
    private com.join.mgps.dialog.a2 mPrePostingHintDialog;

    @ViewById
    HListView matchListView;

    @ViewById
    XListView mg_forum_profile_message_list;

    @StringRes(resName = "connect_server_excption")
    String netConnectException;

    @StringRes(resName = "net_excption")
    String netExcption;
    private PopupWindow popupWindow;
    ForumBean.ForumCommentReplyBean replyBean;
    com.join.mgps.rpc.b rpcAccountClient;
    com.join.mgps.rpc.i rpcForumClient;
    private boolean isLoadingData = false;
    private final int LOADING = 0;
    private final int LOADING_FAILED = 16;
    private final int LOADING_SUCCESS = 32;
    private final int LOADING_NETWORK_FAILED = 17;
    private final int LOADING_DB_FAILED = 18;
    private final int LOADING_SRV_NO_REC_FAILED = 20;
    private final int LOADING_SRV_POSTS_FAILED = 24;
    private int loadingState = 0;
    private final int EVENT_COMMENT = 1;
    private final int EVENT_COMMENT_REPLY = 2;
    private final int EVENT_COMMENT_REPLY_REPLY = 4;
    private final int EVENT_DELETE_COMMENT = 17;
    private final int EVENT_DELETE_COMMENT_REPLY = 18;
    private final int EVENT_DELETE_COMMENT_REPLY_REPLY = 20;
    private final int EVENT_REPORT_COMMENT = 33;
    private final int EVENT_REPORT_COMMENT_REPLY = 34;
    private final int EVENT_REPORT_COMMENT_REPLY_REPLY = 36;
    private int curEventType = 2;
    int toggleSendOn = 0;
    ForumProfileMessageReplyAdapter.o mProfileListener = new i();
    Handler mHandler = new j();
    private boolean isShowKeyboard = false;
    boolean isShowInputExtensionFunction = false;
    boolean isShowInputExtensionBoard = false;
    boolean doingForumPostReport = false;
    boolean doingReport = false;
    boolean doingForumPostDelete = false;
    com.join.mgps.customview.t mDialog = null;
    private final PostingActivity.m mPostingCallback = new h();

    class a extends ForumLoadingView.e {
        a(ForumLoadingView loadingView) {
            super(loadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void a(View v10) {
            super.a(v10);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            Context applicationContext = ForumProfileMessageReplyActivity.this.getApplicationContext();
            if (com.join.mgps.Util.r0.Y0(applicationContext)) {
                ForumProfileMessageReplyActivity.this.loading();
            } else {
                ForumProfileMessageReplyActivity.this.showToast("用户未登录，请登录！");
                com.join.mgps.Util.r0.L0(applicationContext);
            }
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            ForumProfileMessageReplyActivity.this.dismissPopupWindow();
            if (ForumProfileMessageReplyActivity.this.curCid == -1) {
                return;
            }
            if (ForumProfileMessageReplyActivity.this.curEventType == 1) {
                ForumProfileMessageReplyActivity.this.curEventType = 2;
            }
            if (ForumProfileMessageReplyActivity.this.curEventType == 2) {
                ForumProfileMessageReplyActivity.this.curEventType = 4;
            }
            ForumProfileMessageReplyActivity.this.edit_user_comment.requestFocus();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            ForumProfileMessageReplyActivity.this.dismissPopupWindow();
            if (ForumProfileMessageReplyActivity.this.curCid == -1) {
                return;
            }
            if (ForumProfileMessageReplyActivity.this.curEventType == 1) {
                ForumProfileMessageReplyActivity.this.curEventType = 17;
            }
            if (ForumProfileMessageReplyActivity.this.curEventType == 2) {
                ForumProfileMessageReplyActivity.this.curEventType = 18;
            }
            if (ForumProfileMessageReplyActivity.this.curEventType == 4) {
                ForumProfileMessageReplyActivity.this.curEventType = 20;
            }
            ForumProfileMessageReplyActivity.this.showPromptDialog(ForumProfileMessageReplyActivity.this.curCid, ForumProfileMessageReplyActivity.this.curRid);
        }
    }

    class d implements View.OnTouchListener {
        d() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View v10, MotionEvent event) {
            if (event.getAction() != 4) {
                return false;
            }
            ForumProfileMessageReplyActivity.this.popupWindow.dismiss();
            return true;
        }
    }

    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            ForumProfileMessageReplyActivity.this.forumDialog.dismiss();
        }
    }

    class f implements DialogInterface.OnCancelListener {
        f() {
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialog) {
            ForumProfileMessageReplyActivity.this.toggleSendOn = 0;
        }
    }

    class g implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f51935b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f51936c;

        g(final int val$pid, final int val$rid) {
            this.f51935b = val$pid;
            this.f51936c = val$rid;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (ForumProfileMessageReplyActivity.this.curEventType == 17) {
                ForumProfileMessageReplyActivity.this.deleteComment(this.f51935b);
            } else if (ForumProfileMessageReplyActivity.this.curEventType == 18 || ForumProfileMessageReplyActivity.this.curEventType == 20) {
                ForumProfileMessageReplyActivity.this.deleteCommentReply(this.f51936c);
            }
            ForumProfileMessageReplyActivity.this.forumDialog.dismiss();
        }
    }

    class h implements PostingActivity.m {
        h() {
        }

        @Override // com.join.mgps.activity.posting.PostingActivity.m
        public void a(int value) {
        }

        @Override // com.join.mgps.activity.posting.PostingActivity.m
        public void b(int type) {
            if (type == 4355) {
                IntentUtil.getInstance().goShareWebActivity(ForumProfileMessageReplyActivity.this, com.join.mgps.rpc.h.f72385t);
            } else {
                if (type != 4356) {
                    return;
                }
                IntentUtil.getInstance().goShareWebActivity(ForumProfileMessageReplyActivity.this, com.join.mgps.rpc.h.f72382s);
            }
        }

        @Override // com.join.mgps.activity.posting.PostingActivity.m
        public void c(int type) {
        }

        @Override // com.join.mgps.activity.posting.PostingActivity.m
        public void d(int type) {
            ForumProfileMessageReplyActivity.this.finish();
        }

        @Override // com.join.mgps.activity.posting.PostingActivity.m
        public void e(GroupInfoBean groupInfoBean) {
        }
    }

    class i implements ForumProfileMessageReplyAdapter.o {
        i() {
        }

        @Override // com.join.mgps.adapter.ForumProfileMessageReplyAdapter.o
        public void a(int pid) {
            ForumProfileMessageReplyActivity forumProfileMessageReplyActivity = ForumProfileMessageReplyActivity.this;
            if (!com.join.mgps.Util.r0.Y0(forumProfileMessageReplyActivity)) {
                com.join.mgps.Util.a3.b(forumProfileMessageReplyActivity).d("用户未登录，请登录");
                com.join.mgps.Util.r0.L0(forumProfileMessageReplyActivity);
            } else if (!ForumProfileMessageReplyActivity.this.validAccount()) {
                ForumProfileMessageReplyActivity.this.showDialog();
            } else {
                ForumProfileMessageReplyActivity.this.reversePraise();
                ForumProfileMessageReplyActivity.this.praisePosts();
            }
        }

        @Override // com.join.mgps.adapter.ForumProfileMessageReplyAdapter.o
        public void b(int pid) {
        }

        @Override // com.join.mgps.adapter.ForumProfileMessageReplyAdapter.o
        public void c(int cid, int rid, String rNickname) {
            ForumProfileMessageReplyActivity.this.replyReply(cid, rid, rNickname);
        }

        @Override // com.join.mgps.adapter.ForumProfileMessageReplyAdapter.o
        public void d(int cid) {
            ForumProfileMessageReplyActivity.this.curEventType = 17;
            ForumProfileMessageReplyActivity.this.showPromptDialog(cid, 0);
        }

        @Override // com.join.mgps.adapter.ForumProfileMessageReplyAdapter.o
        public void e(View v10, int cid, int rid, int ruid) {
            ForumProfileMessageReplyActivity.this.hideExtensionFunction(true);
            ForumProfileMessageReplyActivity.this.curEventType = 4;
            ForumProfileMessageReplyActivity.this.curCid = cid;
            ForumProfileMessageReplyActivity.this.curRid = rid;
            ForumProfileMessageReplyActivity.this.showPopupwindow(v10, 4);
            UserInfo userInfoT = com.join.mgps.Util.r0.T(v10.getContext());
            if (userInfoT == null) {
                return;
            }
            if (ruid == userInfoT.getUid()) {
                ForumProfileMessageReplyActivity.this.setPopupWindowAttr(true, true);
            } else {
                ForumProfileMessageReplyActivity.this.setPopupWindowAttr(false, true);
            }
        }

        @Override // com.join.mgps.adapter.ForumProfileMessageReplyAdapter.o
        public void f(int rid) {
            ForumProfileMessageReplyActivity.this.doForumPostReport(0, rid);
        }

        @Override // com.join.mgps.adapter.ForumProfileMessageReplyAdapter.o
        public void g(View v10, int rid) {
            ForumProfileMessageReplyActivity.this.hideExtensionFunction(true);
        }

        @Override // com.join.mgps.adapter.ForumProfileMessageReplyAdapter.o
        public void h(int rid) {
            ForumProfileMessageReplyActivity.this.curEventType = 18;
            ForumProfileMessageReplyActivity.this.showPromptDialog(0, rid);
        }

        @Override // com.join.mgps.adapter.ForumProfileMessageReplyAdapter.o
        public void i(int cid, String cNickname) {
            ForumProfileMessageReplyActivity.this.commentReply(cid, cNickname);
        }

        @Override // com.join.mgps.adapter.ForumProfileMessageReplyAdapter.o
        public void j(int cid) {
            ForumProfileMessageReplyActivity.this.doForumPostReport(cid, 0);
        }

        @Override // com.join.mgps.adapter.ForumProfileMessageReplyAdapter.o
        public void k(int cid, int rid, String rNickname) {
            ForumProfileMessageReplyActivity.this.hideExtensionFunction(true);
            ForumProfileMessageReplyActivity.this.curEventType = 4;
            ForumProfileMessageReplyActivity.this.curCid = cid;
            ForumProfileMessageReplyActivity.this.curRid = rid;
            ForumProfileMessageReplyActivity.this.edit_user_comment.setText("");
            ForumProfileMessageReplyActivity.this.edit_user_comment.requestFocus();
            ForumProfileMessageReplyActivity forumProfileMessageReplyActivity = ForumProfileMessageReplyActivity.this;
            forumProfileMessageReplyActivity.showSystemKeyBoard(forumProfileMessageReplyActivity.edit_user_comment);
            ForumProfileMessageReplyActivity.this.edit_user_comment.setHint("回复" + rNickname + ":");
        }

        @Override // com.join.mgps.adapter.ForumProfileMessageReplyAdapter.o
        public void l(View view, int cid, int uid) {
            ForumProfileMessageReplyActivity.this.curCid = cid;
            ForumProfileMessageReplyActivity.this.curRid = 0;
            ForumProfileMessageReplyActivity.this.showPopupwindow(view.findViewById(R.id.comment_message), 1);
            UserInfo userInfoT = com.join.mgps.Util.r0.T(view.getContext());
            if (userInfoT == null) {
                return;
            }
            if (uid == userInfoT.getUid()) {
                ForumProfileMessageReplyActivity.this.setPopupWindowAttr(true, true);
            } else {
                ForumProfileMessageReplyActivity.this.setPopupWindowAttr(false, true);
            }
        }

        @Override // com.join.mgps.adapter.ForumProfileMessageReplyAdapter.o
        public void m() {
            ForumProfileMessageReplyActivity.this.clearCommentMessage();
        }
    }

    class j extends Handler {
        j() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            ForumProfileMessageReplyActivity.this.mg_forum_profile_message_list.r();
            ForumProfileMessageReplyActivity.this.mg_forum_profile_message_list.q();
        }
    }

    class k implements KeyboardListenLayout.a {
        k() {
        }

        @Override // com.join.mgps.customview.KeyboardListenLayout.a
        public void onHidden() {
        }

        @Override // com.join.mgps.customview.KeyboardListenLayout.a
        public void onShown() {
            ForumProfileMessageReplyActivity.this.hideExtensionFunction(true);
        }
    }

    class l implements View.OnFocusChangeListener {
        l() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View v10, boolean hasFocus) {
            if (!hasFocus) {
                ForumProfileMessageReplyActivity.this.edit_comment_count.setVisibility(0);
                ForumProfileMessageReplyActivity.this.btn_chat_send.setVisibility(8);
                ForumProfileMessageReplyActivity.this.image_add.setVisibility(8);
            } else {
                ForumProfileMessageReplyActivity.this.edit_comment_count.setVisibility(8);
                ForumProfileMessageReplyActivity.this.btn_chat_praise.setVisibility(8);
                ForumProfileMessageReplyActivity.this.image_add.setVisibility(8);
                ForumProfileMessageReplyActivity.this.btn_chat_send.setVisibility(0);
                ForumProfileMessageReplyActivity.this.showSystemKeyBoard(v10);
            }
        }
    }

    class m implements com.join.mgps.customview.i {
        m() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (com.join.android.app.common.utils.m.j(ForumProfileMessageReplyActivity.this)) {
                ForumProfileMessageReplyActivity.this.stopXlistRefreshAndLoadMore();
                ForumProfileMessageReplyActivity.this.mg_forum_profile_message_list.setNoMore();
            } else {
                ForumProfileMessageReplyActivity forumProfileMessageReplyActivity = ForumProfileMessageReplyActivity.this;
                forumProfileMessageReplyActivity.showToast(forumProfileMessageReplyActivity.getString(R.string.net_connect_failed));
                ForumProfileMessageReplyActivity.this.stopXlistRefreshAndLoadMore();
            }
        }
    }

    class n implements com.join.mgps.customview.j {
        n() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (com.join.android.app.common.utils.m.j(ForumProfileMessageReplyActivity.this)) {
                ForumProfileMessageReplyActivity.this.getForumProfileMessageReplyData();
                return;
            }
            ForumProfileMessageReplyActivity.this.stopXlistRefreshAndLoadMore();
            ForumProfileMessageReplyActivity forumProfileMessageReplyActivity = ForumProfileMessageReplyActivity.this;
            forumProfileMessageReplyActivity.showToast(forumProfileMessageReplyActivity.getString(R.string.net_connect_failed));
        }
    }

    class o extends ForumLoadingView.e {
        o(ForumLoadingView loadingView) {
            super(loadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void a(View v10) {
            super.a(v10);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            Context applicationContext = ForumProfileMessageReplyActivity.this.getApplicationContext();
            if (com.join.mgps.Util.r0.Y0(applicationContext)) {
                ForumProfileMessageReplyActivity.this.loading();
            } else {
                ForumProfileMessageReplyActivity.this.showToast("用户未登录，请登录！");
                com.join.mgps.Util.r0.L0(applicationContext);
            }
        }
    }

    class p extends ForumLoadingView.e {
        p(ForumLoadingView loadingView) {
            super(loadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void a(View v10) {
            super.a(v10);
        }
    }

    class q extends ForumLoadingView.e {
        q(ForumLoadingView loadingView) {
            super(loadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            Context applicationContext = ForumProfileMessageReplyActivity.this.getApplicationContext();
            if (com.join.mgps.Util.r0.Y0(applicationContext)) {
                ForumProfileMessageReplyActivity.this.loading();
            } else {
                ForumProfileMessageReplyActivity.this.showToast("用户未登录，请登录！");
                com.join.mgps.Util.r0.L0(applicationContext);
            }
        }
    }

    private UserInfo accountBean(Context ctx) {
        return AccountUtil_.getInstance_(ctx).getAccountData();
    }

    private void deleteTempPic(List<String> images) {
        if (images == null || images.size() == 0) {
            return;
        }
        for (int i10 = 0; i10 < images.size(); i10++) {
            try {
                File file = new File(images.get(i10));
                if (file.getParentFile().exists()) {
                    UtilsMy.delete(file.getParentFile());
                }
                if (file.exists() && file.getAbsolutePath().contains(com.join.mgps.Util.r0.l0().getAbsolutePath())) {
                    UtilsMy.delete(file);
                }
            } catch (Exception unused) {
            }
        }
        net.bither.util.b.p().f94541c = new Hashtable<>();
        net.bither.util.b.p().f94540b = new Hashtable<>();
    }

    private void dialogDismiss() {
        com.join.mgps.customview.t tVar = this.mDialog;
        if (tVar == null || !tVar.isShowing()) {
            return;
        }
        this.mDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dismissPopupWindow() {
        PopupWindow popupWindow = this.popupWindow;
        if (popupWindow == null || !popupWindow.isShowing()) {
            return;
        }
        this.popupWindow.dismiss();
    }

    private boolean inRangeOfView(View view, MotionEvent ev) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int i10 = iArr[0];
        int i11 = iArr[1];
        return ev.getX() >= ((float) i10) && ev.getX() <= ((float) (i10 + view.getWidth())) && ev.getY() >= ((float) i11) && ev.getY() <= ((float) (i11 + view.getHeight()));
    }

    private void initPopupWindow() {
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.mg_forum_popupwindow_layout, (ViewGroup) null);
        this.popupWindow = new PopupWindow(viewInflate, -2, -2);
        this.comment = (Button) viewInflate.findViewById(R.id.btn_forum_comment);
        this.deleteComment = (Button) viewInflate.findViewById(R.id.btn_forum_comment_delete);
        this.comment.setOnClickListener(new b());
        this.deleteComment.setOnClickListener(new c());
        this.popupWindow.setBackgroundDrawable(new BitmapDrawable());
        this.popupWindow.setTouchable(true);
        this.popupWindow.setOutsideTouchable(true);
        this.popupWindow.setTouchInterceptor(new d());
    }

    private void initViews() {
        this.layout_title.setText("我的消息");
        this.layout_title_right.setText("查看主贴");
        String str = (String) getIntent().getSerializableExtra(KEY_FORUM_COMMENT_BEAN);
        String str2 = (String) getIntent().getSerializableExtra(KEY_FORUM_POST_BEAN);
        String str3 = (String) getIntent().getSerializableExtra(KEY_FORUM_REPLY_BEAN);
        if (!com.join.mgps.Util.t2.h(str)) {
            this.commentBean = (ForumBean.ForumCommentBean) JsonMapper.getInstance().fromJson(str, JsonMapper.getInstance().createCollectionType(ForumBean.ForumCommentBean.class, new Class[0]));
        }
        if (!com.join.mgps.Util.t2.h(str2)) {
            this.forumPostsBean = (ForumBean.ForumPostsBean) JsonMapper.getInstance().fromJson(str2, JsonMapper.getInstance().createCollectionType(ForumBean.ForumPostsBean.class, new Class[0]));
        }
        if (!com.join.mgps.Util.t2.h(str3)) {
            this.replyBean = (ForumBean.ForumCommentReplyBean) JsonMapper.getInstance().fromJson(str3, JsonMapper.getInstance().createCollectionType(ForumBean.ForumCommentReplyBean.class, new Class[0]));
        }
        ForumBean.ForumCommentBean forumCommentBean = this.commentBean;
        if (forumCommentBean == null || this.forumPostsBean == null) {
            finish();
            return;
        }
        this.curCid = forumCommentBean.getPid();
        this.forumLoadingDialog = new com.join.mgps.dialog.y0(this);
        initPopupWindow();
        this.image_add.setVisibility(8);
        clearCommentMessage();
        try {
            ((KeyboardListenLayout) this.layout_forum_posts_title.getParent()).setOnSoftKeyboardListener(new k());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        this.btn_chat_praise.setVisibility(8);
        this.edit_user_comment.setOnFocusChangeListener(new l());
        this.mg_forum_profile_message_list.setPreLoadCount(com.join.mgps.Util.r0.f49990e);
        this.mg_forum_profile_message_list.setPullLoadEnable(new m());
        this.mg_forum_profile_message_list.setPullRefreshEnable(new n());
        this.forumProfileMessageAdapter1 = new ForumProfileMessageReplyAdapter(this);
        this.listData = new ArrayList();
        this.forumProfileMessageAdapter1.C(this.mProfileListener);
        this.mg_forum_profile_message_list.setAdapter((ListAdapter) this.forumProfileMessageAdapter1);
        ForumBean.ForumCommentBean forumCommentBean2 = this.commentBean;
        if (forumCommentBean2 != null && forumCommentBean2.getPid() != 0) {
            this.curCid = this.commentBean.getPid();
        }
        ForumBean.ForumPostsBean forumPostsBean = this.forumPostsBean;
        if (forumPostsBean != null && forumPostsBean.getPid() != 0) {
            this.curPid = this.forumPostsBean.getPid();
        }
        ForumBean.ForumCommentReplyBean forumCommentReplyBean = this.replyBean;
        if (forumCommentReplyBean == null || forumCommentReplyBean.getRid() == 0) {
            return;
        }
        this.curRid = this.replyBean.getRid();
    }

    private boolean isLogined(Context context) {
        UserInfo userInfoAccountBean = accountBean(context);
        return userInfoAccountBean != null && com.join.mgps.Util.t2.i(userInfoAccountBean.getToken());
    }

    private void loadDBData() {
        changeLoadingState(18);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loading() {
        changeLoadingState(0);
        loadDBData();
        if (com.join.android.app.common.utils.m.j(this)) {
            loadSrvData();
        } else {
            showToast(getString(R.string.net_connect_failed));
            changeLoadingState(17);
        }
    }

    private void reGetToken() {
        if (AccountUtil_.getInstance_(this).isTourist()) {
            touristLogin();
        } else {
            showMessage(getString(R.string.forum_user_login_invalid));
        }
    }

    private void refreshCommentCount() {
        ForumBean.ForumCommentBean forumCommentBean = this.commentBean;
        if (forumCommentBean == null) {
            this.edit_comment_count.setText("已有0条回复");
            return;
        }
        int size = forumCommentBean.getReply_list() != null ? this.commentBean.getReply_list().size() : 0;
        this.edit_comment_count.setText("已有" + size + "条回复");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reversePraise() {
        boolean zIs_praise = this.forumPostsBean.is_praise();
        int praise = this.forumPostsBean.getPraise();
        this.forumPostsBean.setPraise(zIs_praise ? praise - 1 : praise + 1);
        this.forumPostsBean.setIs_praise(!zIs_praise);
        modifyPraiseView(this.forumPostsBean.is_praise(), this.forumPostsBean.getPraise());
    }

    private void sendCommentReplyReplyRequest() {
        if (!isLogined(this)) {
            showMessage(getString(R.string.forum_user_not_login));
            return;
        }
        if (!validAccount()) {
            showDialog();
            return;
        }
        ForumRequestBean.ForumCommentReplyRequestBean forumCommentReplyRequestBeanY = com.join.mgps.Util.r0.Y(this, this.curCid, this.curMessage, this.curRid);
        forumCommentReplyRequestBeanY.setDevice_id("");
        ForumResponse<ForumData.ForumCommentReplyReplyData> forumResponseC0 = this.rpcForumClient.c0(forumCommentReplyRequestBeanY.getParams());
        if (forumResponseC0 == null) {
            showSendPromptDialog(1);
            return;
        }
        if (forumResponseC0.getError() == 706) {
            showToast(getString(R.string.tour_perfect_info_for_comment_toast));
            showDialog();
            return;
        }
        ForumData.ForumCommentReplyReplyData data = forumResponseC0.getData();
        if (!data.isResult()) {
            if (data.getError_type() == 1) {
                showPrePostingHintDialog(data.getError_type());
                return;
            }
            if (TextUtils.isEmpty(data.getMsg())) {
                showToast(data.getMsg());
            }
            showSendPromptDialog(1);
            return;
        }
        showSendPromptDialog(2);
        ForumBean.ForumCommentReplyBean forumCommentReplyBean = new ForumBean.ForumCommentReplyBean();
        UserInfo userInfoT = com.join.mgps.Util.r0.T(this);
        forumCommentReplyBean.setUid(userInfoT.getUid());
        forumCommentReplyBean.setNickname(userInfoT.getNickname());
        forumCommentReplyBean.setMessage(forumCommentReplyRequestBeanY.getMessage());
        forumCommentReplyBean.setAdd_time(System.currentTimeMillis() / 1000);
        forumCommentReplyBean.setRrid(this.curRid);
        if (this.curRid != 0) {
            forumCommentReplyBean.setRid(data.getRid());
            processCommentReplySendSuccess(forumCommentReplyBean);
            showRewardToast(RewardType.REPLY_POST, data.getReward_money(), data.getReward_exp());
        }
    }

    private void sendCommentReplyRequest() {
        if (!isLogined(this)) {
            showMessage(getString(R.string.forum_user_not_login));
            return;
        }
        if (!validAccount()) {
            showDialog();
            return;
        }
        ForumRequestBean.ForumCommentReplyRequestBean forumCommentReplyRequestBeanY = com.join.mgps.Util.r0.Y(this, this.curCid, this.curMessage, this.curRid);
        forumCommentReplyRequestBeanY.setDevice_id("");
        ForumResponse<ForumData.ForumCommentReplyData> forumResponseG = this.rpcForumClient.G(forumCommentReplyRequestBeanY.getParams());
        if (forumResponseG == null) {
            showSendPromptDialog(1);
            return;
        }
        if (forumResponseG.getError() == 706) {
            showToast(getString(R.string.tour_perfect_info_for_comment_toast));
            showDialog();
            return;
        }
        ForumData.ForumCommentReplyData data = forumResponseG.getData();
        if (!data.isResult()) {
            if (data.getError_type() == 1) {
                showPrePostingHintDialog(data.getError_type());
                return;
            }
            if (TextUtils.isEmpty(data.getMsg())) {
                showToast(data.getMsg());
            }
            showSendPromptDialog(1);
            return;
        }
        showSendPromptDialog(2);
        ForumBean.ForumCommentReplyBean forumCommentReplyBean = new ForumBean.ForumCommentReplyBean();
        UserInfo userInfoT = com.join.mgps.Util.r0.T(this);
        forumCommentReplyBean.setUid(userInfoT.getUid());
        forumCommentReplyBean.setNickname(userInfoT.getNickname());
        forumCommentReplyBean.setMessage(forumCommentReplyRequestBeanY.getMessage());
        forumCommentReplyBean.setAdd_time(System.currentTimeMillis() / 1000);
        forumCommentReplyBean.setRrid(this.curRid);
        forumCommentReplyBean.setRid(data.getRid());
        processCommentReplyDirectSendSuccess(forumCommentReplyBean);
        showRewardToast(RewardType.REPLY_POST, data.getReward_money(), data.getReward_exp());
    }

    @AfterViews
    void afterViews() {
        this.rpcForumClient = com.join.mgps.rpc.impl.g.A0();
        this.rpcAccountClient = com.join.mgps.rpc.impl.a.c0();
        initViews();
        loading();
        if (com.join.mgps.Util.r0.Y0(this)) {
            return;
        }
        showToast("用户未登录，请登录！");
        com.join.mgps.Util.r0.L0(this);
    }

    @Click
    void back_image() {
        if (this.isShowInputExtensionBoard) {
            return;
        }
        if (this.isShowKeyboard) {
            clearCommentMessage();
        } else {
            finish();
        }
    }

    @Click
    void btn_chat_praise() {
        if (!com.join.mgps.Util.r0.Y0(this)) {
            com.join.mgps.Util.a3.b(this).d("用户未登录，请登录");
            com.join.mgps.Util.r0.L0(this);
        } else {
            if (!validAccount()) {
                showDialog();
                return;
            }
            this.btn_chat_praise.startAnimation(AnimationUtils.loadAnimation(this, R.anim.scale_reset));
            reversePraise();
            praisePosts();
        }
    }

    @Click
    void btn_chat_send() {
        String string = this.edit_user_comment.getText().toString();
        this.curMessage = string;
        if (com.join.mgps.Util.t2.h(string)) {
            com.join.mgps.Util.a3.b(this).d("回复内容不能为空");
            return;
        }
        int i10 = this.curEventType;
        if (i10 == 1) {
            sendComment();
        } else if (i10 == 2) {
            sendCommentReply();
        } else if (i10 == 4) {
            sendCommentReply();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void changeLoadingState(int state) {
        int i10 = this.loadingState;
        if (i10 == 32) {
            return;
        }
        if (state == 32) {
            this.loadingState = 32;
            this.loadingView.j(2);
            return;
        }
        if (state == 0) {
            this.loadingState = 0;
            this.loadingView.m();
            this.loadingView.j(1);
            return;
        }
        this.loadingState = state | i10;
        if (checkFailed(-11)) {
            this.loadingState = 16;
            ForumLoadingView forumLoadingView = this.loadingView;
            forumLoadingView.setListener(new o(forumLoadingView));
            this.loadingView.j(9);
            return;
        }
        if (checkFailed(22)) {
            this.loadingState = 16;
            this.loadingView.setFailedMsg("该评论已经删除~");
            ForumLoadingView forumLoadingView2 = this.loadingView;
            forumLoadingView2.setListener(new p(forumLoadingView2));
            this.loadingView.j(10);
            return;
        }
        if (checkFailed(31) || checkFailed(26)) {
            this.loadingState = 16;
            this.loadingView.setFailedMsg("加载失败，再试试吧~");
            ForumLoadingView forumLoadingView3 = this.loadingView;
            forumLoadingView3.setListener(new q(forumLoadingView3));
            this.loadingView.j(16);
            return;
        }
        if (checkFailed(17)) {
            this.loadingState = 16;
            ForumLoadingView forumLoadingView4 = this.loadingView;
            forumLoadingView4.setListener(new a(forumLoadingView4));
            this.loadingView.j(9);
        }
    }

    boolean checkFailed(int val) {
        return (this.loadingState & val) == val;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void checkKeyboard() {
        int i10 = this.curCid;
        if (i10 != 0) {
            int i11 = this.curRid;
            if (i11 != 0) {
                replyReply(i10, i11, this.replyBean.getNickname());
            } else {
                commentReply(i10, this.commentBean.getNickname());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void clearCommentMessage() {
        this.btn_chat_extension.setVisibility(8);
        this.curEventType = 2;
        this.edit_comment_count.setVisibility(0);
        this.btn_chat_praise.setVisibility(8);
        this.btn_chat_send.setVisibility(8);
        this.image_add.setVisibility(8);
        hideSystemKeyBoard(this.edit_user_comment);
        this.edit_user_comment.setText("");
        this.edit_user_comment.setHint("添加回复");
        this.edit_user_comment.clearFocus();
    }

    void commentReply(int cid, String cNickname) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("cid=");
        sb2.append(cid);
        sb2.append(" cNickname=");
        sb2.append(cNickname);
        this.curEventType = 2;
        this.curCid = cid;
        this.curRid = 0;
        this.edit_user_comment.setText("");
        this.edit_user_comment.requestFocus();
        hideExtensionFunction(true);
        showSystemKeyBoard(this.edit_user_comment);
        this.edit_user_comment.setHint("回复" + cNickname + ":");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void deleteComment(int pid) {
        ForumResponse<ForumData.ForumCommentDeleteData> forumResponseC;
        try {
            try {
                if (com.join.android.app.common.utils.m.j(this)) {
                    ForumRequestBean.ForumCommentDeleteRequestBean forumCommentDeleteRequestBeanW = com.join.mgps.Util.r0.W(this, pid);
                    if (forumCommentDeleteRequestBeanW != null) {
                        forumCommentDeleteRequestBeanW.setDevice_id("");
                        forumResponseC = this.rpcForumClient.C(forumCommentDeleteRequestBeanW.getParams());
                    } else {
                        forumResponseC = null;
                    }
                    if (forumResponseC == null) {
                        if (!com.join.mgps.Util.r0.Y0(this)) {
                            com.join.mgps.Util.r0.L0(this);
                        }
                    } else if (forumResponseC.getData().isResult()) {
                        showToast("评论已删除");
                        processCommentDeleteSuccess(pid);
                    } else {
                        showToast("评论删除失败");
                    }
                } else {
                    showToast(getString(R.string.net_connect_failed));
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                showToast("评论删除失败");
            }
        } finally {
            clearCommentMessage();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void deleteCommentReply(int rid) {
        ForumResponse<ForumData.ForumCommentReplyDeleteData> forumResponseO;
        if (rid == 0) {
            return;
        }
        try {
            ForumRequestBean.ForumCommentReplyDeleteRequestBean forumCommentReplyDeleteRequestBeanX = com.join.mgps.Util.r0.X(this, rid);
            if (forumCommentReplyDeleteRequestBeanX != null) {
                forumCommentReplyDeleteRequestBeanX.setDevice_id("");
                forumResponseO = this.rpcForumClient.o(forumCommentReplyDeleteRequestBeanX.getParams());
            } else {
                forumResponseO = null;
            }
            if (forumResponseO == null) {
                if (com.join.mgps.Util.r0.Y0(this)) {
                    return;
                }
                com.join.mgps.Util.r0.L0(this);
            } else if (!forumResponseO.getData().isResult()) {
                showToast("回复删除失败");
            } else {
                processDeleteCommentReplySuccess(rid);
                showToast("回复已删除");
            }
        } catch (Exception e10) {
            showToast("回复删除失败");
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void deletePosts() {
        ForumData.ForumPostsDeleteData data;
        if (!com.join.android.app.common.utils.m.j(this)) {
            showToast(getString(R.string.net_connect_failed));
            this.doingForumPostDelete = false;
            return;
        }
        boolean z10 = true;
        if (this.doingForumPostDelete) {
            return;
        }
        this.doingForumPostDelete = true;
        int pid = this.forumPostsBean.getPid();
        try {
            try {
                if (com.join.mgps.Util.r0.c0(this, pid) != null) {
                    ForumResponse<ForumData.ForumPostsDeleteData> forumResponseI = this.rpcForumClient.I(com.join.mgps.Util.r0.c0(this, pid).getParams());
                    if (forumResponseI == null || forumResponseI.getError() != 0 || (data = forumResponseI.getData()) == null || !data.isResult()) {
                        z10 = false;
                    }
                    if (z10) {
                        showToast("帖子删除成功");
                        finish();
                    } else {
                        showToast("帖子删除失败");
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        } finally {
            this.doingForumPostDelete = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void dismissSendPromptDialog() {
        try {
            com.join.mgps.dialog.y0 y0Var = this.forumLoadingDialog;
            if (y0Var == null || !y0Var.isShowing()) {
                return;
            }
            this.forumLoadingDialog.dismiss();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent ev) {
        InputMethodManager inputMethodManager;
        if (ev.getAction() != 0) {
            if (getWindow().superDispatchTouchEvent(ev)) {
                return true;
            }
            return onTouchEvent(ev);
        }
        View currentFocus = getCurrentFocus();
        if (!isIgnored(ev) && isShouldHideInput(currentFocus, ev) && (inputMethodManager = (InputMethodManager) getSystemService("input_method")) != null) {
            inputMethodManager.hideSoftInputFromWindow(currentFocus.getWindowToken(), 0);
        }
        return super.dispatchTouchEvent(ev);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void doForumPostReport() {
        if (this.doingForumPostReport) {
            return;
        }
        this.doingForumPostReport = true;
        ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
        try {
            ForumBean.ForumPostsBean forumPostsBean2 = this.forumPostsBean;
            if (forumPostsBean2 != null) {
                forumPostsBean = (ForumBean.ForumPostsBean) forumPostsBean2.clone();
            }
        } catch (CloneNotSupportedException e10) {
            e10.printStackTrace();
        }
        if (!com.join.android.app.common.utils.m.j(this)) {
            showToast(getString(R.string.net_connect_failed));
            this.doingForumPostReport = false;
            return;
        }
        try {
            try {
                if (!com.join.mgps.Util.r0.Y0(this)) {
                    com.join.mgps.Util.r0.L0(this);
                    showToast(getString(R.string.forum_user_not_login));
                    return;
                }
                UserInfo userInfoT = com.join.mgps.Util.r0.T(this);
                ForumResponse<ForumData.ForumPostsReportData> forumResponseC = this.rpcForumClient.c(new ForumRequestBean.ForumPostsReportRequestBean(userInfoT.getUid(), userInfoT.getToken(), forumPostsBean.getPid(), "").getParams());
                if (forumResponseC != null) {
                    int error = forumResponseC.getError();
                    if (error == 0) {
                        ForumData.ForumPostsReportData data = forumResponseC.getData();
                        if (data == null || !data.isResult()) {
                            showToast(getString(R.string.forum_post_report_fail));
                        } else {
                            showToast(getString(R.string.forum_post_report_success));
                        }
                    } else if (error == 701) {
                        showToast(getString(R.string.forum_user_login_invalid));
                    }
                } else {
                    showToast(getString(R.string.forum_post_report_fail));
                }
            } catch (Exception e11) {
                showToast(getString(R.string.forum_post_report_fail));
                e11.printStackTrace();
            }
        } finally {
            this.doingForumPostReport = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void error(String message) {
        com.join.mgps.Util.a3.b(this).d(message);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getForumProfileMessageReplyData() {
        if (this.isLoadingData) {
            return;
        }
        this.isLoadingData = true;
        if (!com.join.android.app.common.utils.m.j(this)) {
            showToast(getString(R.string.net_connect_failed));
            changeLoadingState(17);
            return;
        }
        try {
            try {
                UserInfo userInfoT = com.join.mgps.Util.r0.T(this);
                ForumBean.ForumCommentBean comment = null;
                ForumResponse<ForumData.ForumProfileMessageReplyData> forumResponseB = com.join.mgps.Util.r0.Y0(this) ? this.rpcForumClient.B(userInfoT.getUid(), userInfoT.getToken(), this.commentBean.getPid(), "") : null;
                if (forumResponseB.getError() == 701) {
                    showToast(getString(R.string.forum_user_not_login));
                    changeLoadingState(20);
                } else {
                    ForumData.ForumProfileMessageReplyData data = forumResponseB.getData();
                    if (data != null) {
                        comment = data.getComment();
                    } else {
                        changeLoadingState(24);
                    }
                    if (comment != null) {
                        updateMessageData(comment);
                    }
                    if (comment != null && comment.getPid() != 0) {
                        changeLoadingState(32);
                        checkKeyboard();
                        return;
                    }
                    changeLoadingState(20);
                }
            } catch (Exception e10) {
                changeLoadingState(24);
                e10.printStackTrace();
            }
        } finally {
            this.isLoadingData = false;
            stopXlistRefreshAndLoadMore();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void hideExtensionBoard() {
        this.chat_layout_more.setVisibility(8);
        this.chat_layout_extension.setVisibility(8);
        this.chat_layout_extension_container.setVisibility(8);
        this.isShowInputExtensionBoard = false;
    }

    void hideExtensionFunction(boolean hide) {
        hideExtensionBoard();
        if (hide) {
            this.btn_chat_extension.setVisibility(8);
        } else {
            this.btn_chat_extension.setVisibility(0);
        }
        this.isShowInputExtensionFunction = hide;
    }

    public void hideSystemKeyBoard(View v10) {
        ((InputMethodManager) getSystemService("input_method")).hideSoftInputFromWindow(v10.getWindowToken(), 0);
        this.isShowKeyboard = false;
    }

    public boolean isIgnored(MotionEvent ev) {
        return inRangeOfView(findViewById(new int[]{R.id.layout_chat_cell_container}[0]), ev);
    }

    public boolean isShouldHideInput(View v10, MotionEvent event) {
        if (v10 == null || !(v10 instanceof EditText)) {
            return false;
        }
        int[] iArr = {0, 0};
        v10.getLocationInWindow(iArr);
        int i10 = iArr[0];
        int i11 = iArr[1];
        return event.getX() <= ((float) i10) || event.getX() >= ((float) (v10.getWidth() + i10)) || event.getY() <= ((float) i11) || event.getY() >= ((float) (v10.getHeight() + i11));
    }

    @Click
    void layout_title_right() {
        if (this.forumPostsBean == null) {
            this.forumPostsBean = new ForumBean.ForumPostsBean();
        }
        com.join.mgps.Util.r0.v0(this, this.forumPostsBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void loadSrvData() {
        getForumProfileMessageReplyData();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void modifyPraiseView(boolean like, int count) {
        if (like) {
            this.btn_chat_praise.setBackgroundResource(R.drawable.like);
        } else {
            this.btn_chat_praise.setBackgroundResource(R.drawable.unlike);
        }
        notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void notifyAdapter() {
        this.forumProfileMessageAdapter1.u(this.listData);
        this.forumProfileMessageAdapter1.notifyDataSetChanged();
    }

    synchronized void notifyDataSetChanged() {
        this.listData.clear();
        setProfileViewData(this.commentBean);
        notifyAdapter();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void notifyLoginSuccess() {
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.isShowInputExtensionBoard) {
            return;
        }
        if (this.isShowKeyboard) {
            clearCommentMessage();
        } else {
            super.onBackPressed();
        }
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        if (this.loadingState == 16) {
            loading();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void praisePosts() {
        try {
            if (!com.join.mgps.Util.r0.Y0(this)) {
                com.join.mgps.Util.r0.L0(this);
                com.join.mgps.Util.a3.b(this).d("尚未登录，请先登录！");
                return;
            }
            ForumRequestBean.ForumPostsPraiseRequestBean forumPostsPraiseRequestBeanE0 = com.join.mgps.Util.r0.e0(this, this.curPid);
            forumPostsPraiseRequestBeanE0.setDevice_id("");
            ForumResponse<ForumData.ForumPostsPraiseData> forumResponseR = this.rpcForumClient.R(forumPostsPraiseRequestBeanE0.getParams());
            if (forumResponseR == null) {
                return;
            }
            if (forumResponseR.getError() == 706) {
                reversePraise();
                showDialog();
                return;
            }
            ForumData.ForumPostsPraiseData data = forumResponseR.getData();
            boolean zIs_praise = this.forumPostsBean.is_praise();
            if (data.isResult()) {
                if (zIs_praise) {
                    showToast("点赞成功");
                } else {
                    showToast("取消点赞成功");
                }
            } else if (zIs_praise) {
                showToast("点赞失败");
            } else {
                showToast("取消点赞失败");
            }
            com.join.mgps.Util.r0.m1(forumPostsPraiseRequestBeanE0, data);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void processCommentDeleteSuccess(int pid) {
        refreshCommentCount();
        notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void processCommentReplyDirectSendSuccess(ForumBean.ForumCommentReplyBean bean) {
        try {
            ForumBean.ForumCommentBean forumCommentBean = this.commentBean;
            if (bean.getRrid() == 0 && this.curCid == forumCommentBean.getPid()) {
                List<ForumBean.ForumCommentReplyBean> reply_list = forumCommentBean.getReply_list();
                if (reply_list == null) {
                    reply_list = new ArrayList<>();
                }
                ArrayList arrayList = new ArrayList();
                arrayList.add(bean);
                arrayList.addAll(reply_list);
                forumCommentBean.setReply_list(arrayList);
            }
            refreshCommentCount();
            notifyDataSetChanged();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void processCommentReplySendSuccess(ForumBean.ForumCommentReplyBean bean) {
        ForumBean.ForumCommentBean forumCommentBean = this.commentBean;
        List<ForumBean.ForumCommentReplyBean> reply_list = forumCommentBean.getReply_list();
        if (reply_list == null || reply_list.size() == 0) {
            ArrayList arrayList = new ArrayList();
            bean.setRuid(forumCommentBean.getUid());
            bean.setRnickname(forumCommentBean.getNickname());
            arrayList.add(bean);
            forumCommentBean.setReply_list(arrayList);
            this.forumProfileMessageAdapter1.notifyDataSetChanged();
        } else {
            ArrayList arrayList2 = new ArrayList();
            arrayList2.addAll(reply_list);
            for (int i10 = 0; i10 < reply_list.size(); i10++) {
                ForumBean.ForumCommentReplyBean forumCommentReplyBean = reply_list.get(i10);
                if (forumCommentReplyBean.getRid() == bean.getRrid()) {
                    bean.setRuid(forumCommentReplyBean.getUid());
                    bean.setRnickname(forumCommentReplyBean.getNickname());
                    reply_list.clear();
                    reply_list.add(bean);
                    reply_list.addAll(arrayList2);
                    this.forumProfileMessageAdapter1.notifyDataSetChanged();
                    break;
                }
            }
        }
        refreshCommentCount();
        notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void processCommentSendSuccess(ForumBean.ForumCommentBean bean) {
        notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void processDeleteCommentReplySuccess(int rid) {
        ForumBean.ForumCommentBean forumCommentBean = this.commentBean;
        if (forumCommentBean.getReply_list() == null || forumCommentBean.getReply_list().size() == 0) {
            return;
        }
        for (ForumBean.ForumCommentReplyBean forumCommentReplyBean : forumCommentBean.getReply_list()) {
            if (forumCommentReplyBean.getRid() == rid) {
                forumCommentBean.getReply_list().remove(forumCommentReplyBean);
                notifyDataSetChanged();
                return;
            }
        }
    }

    void processSendCommentResult(ForumRequestBean.ForumPostsCommentRequestBean requestBean, ForumResponse<ForumData.ForumPostsCommentData> response) {
        try {
            if (response != null) {
                ForumData.ForumPostsCommentData data = response.getData();
                if (data.isResult()) {
                    showSendPromptDialog(2);
                    ForumBean.ForumCommentBean forumCommentBean = new ForumBean.ForumCommentBean();
                    forumCommentBean.setPid(data.getPid());
                    UserInfo userInfoT = com.join.mgps.Util.r0.T(this);
                    forumCommentBean.setUid(userInfoT.getUid());
                    forumCommentBean.setNickname(userInfoT.getNickname());
                    forumCommentBean.setAvatar_src(userInfoT.getAvatarSrc());
                    forumCommentBean.setMessage(requestBean.getMessage());
                    forumCommentBean.setAdd_time(System.currentTimeMillis() / 1000);
                    forumCommentBean.setPic_list(data.getPic_list());
                    forumCommentBean.setRaw_pic_list(data.getRaw_pic_list());
                    forumCommentBean.setFloor(data.getFloor());
                    processCommentSendSuccess(forumCommentBean);
                    showRewardToast(RewardType.COMMENT_POST, data.getReward_money(), data.getReward_exp());
                    processSendCommentResultRefreshCommenCount(1);
                    deleteTempPic(requestBean.getImages());
                } else if (data.getError_type() == 1) {
                    dismissSendPromptDialog();
                    showPrePostingHintDialog(data.getError_type());
                } else if (TextUtils.isEmpty(data.getMsg())) {
                    showSendPromptDialog(1);
                } else {
                    dismissSendPromptDialog();
                    showToast(data.getMsg());
                }
                return;
            }
            showSendPromptDialog(1);
            clearCommentMessage();
            hideExtensionBoard();
        } catch (Exception e10) {
            e10.printStackTrace();
            showSendPromptDialog(1);
        } finally {
            clearCommentMessage();
            hideExtensionBoard();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void processSendCommentResultRefreshCommenCount(int diff) {
        notifyDataSetChanged();
    }

    void replyReply(int cid, int rid, String rNickname) {
        hideExtensionFunction(true);
        this.curEventType = 4;
        this.curCid = cid;
        this.curRid = rid;
        this.edit_user_comment.setText("");
        this.edit_user_comment.requestFocus();
        showSystemKeyBoard(this.edit_user_comment);
        this.edit_user_comment.setHint("回复" + rNickname + ":");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void sendComment() {
        try {
            if (!com.join.android.app.common.utils.m.j(this)) {
                this.toggleSendOn = 0;
                showToast(getString(R.string.net_connect_failed));
            } else if (!com.join.mgps.Util.r0.Y0(this)) {
                com.join.mgps.Util.r0.L0(this);
                com.join.mgps.Util.a3.b(this).d("尚未登录，请先登录！");
            } else {
                showSendPromptDialog(0);
                this.toggleSendOn = 1;
                net.bither.util.b.p().x();
            }
        } catch (Exception e10) {
            this.toggleSendOn = 0;
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void sendCommentReply() {
        try {
            try {
                if (!com.join.mgps.Util.r0.Y0(this)) {
                    com.join.mgps.Util.r0.L0(this);
                    showToast("尚未登录，请先登录！");
                    clearCommentMessage();
                    return;
                }
                showSendPromptDialog(0);
                synchronized (Integer.valueOf(this.curRid)) {
                    if (this.curRid == 0) {
                        sendCommentReplyRequest();
                    } else {
                        sendCommentReplyReplyRequest();
                    }
                }
                clearCommentMessage();
            } catch (Exception e10) {
                e10.printStackTrace();
                showSendPromptDialog(1);
            }
        } catch (Throwable th) {
            clearCommentMessage();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void setPopupWindowAttr(boolean deleteVisible, boolean commentVisible) {
        if (this.popupWindow == null) {
            initPopupWindow();
        }
        View contentView = this.popupWindow.getContentView();
        Button button = (Button) contentView.findViewById(R.id.btn_forum_comment);
        Button button2 = (Button) contentView.findViewById(R.id.btn_forum_comment_delete);
        View viewFindViewById = contentView.findViewById(R.id.divider_forum_comment_1);
        if (!deleteVisible) {
            button2.setVisibility(8);
            viewFindViewById.setVisibility(8);
        } else {
            button2.setVisibility(0);
            viewFindViewById.setVisibility(0);
            button.setVisibility(0);
        }
    }

    void setProfileViewData(ForumBean.ForumCommentBean data) {
        if (data == null) {
            return;
        }
        try {
            UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
            data.getForum_auth();
            this.forumPostsBean.getHelp();
            this.forumPostsBean.getSolve_flg();
            int auth = this.forumPostsBean.getAuth();
            if (accountData != null) {
                accountData.getUid();
                this.forumPostsBean.getUid();
            }
            if (accountData != null) {
                data.getUid();
                accountData.getUid();
            }
            data.getUid();
            this.forumPostsBean.getUid();
            this.listData.add(new ForumProfileMessageReplyAdapter.u(ForumProfileMessageReplyAdapter.ViewType.PROFILE_HEADER, new ForumProfileMessageReplyAdapter.u.b(true, data.getAvatar_src(), data.getNickname(), data.getAdd_time(), data.getPid(), false, data.getVip_level(), data.getSvip_level(), data.getUid())));
            this.listData.add(new ForumProfileMessageReplyAdapter.u(ForumProfileMessageReplyAdapter.ViewType.PROFILE_MESSAGE_ITEM, new ForumProfileMessageReplyAdapter.u.c(data.getPid(), data.getMessage())));
            for (int i10 = 0; this.commentBean.getPic_list() != null && i10 < this.commentBean.getPic_list().size(); i10++) {
                this.listData.add(new ForumProfileMessageReplyAdapter.u(ForumProfileMessageReplyAdapter.ViewType.PROFILE_COMMENT_IMAGE, new ForumProfileMessageReplyAdapter.u.a(this.commentBean.getPic_list().get(i10), i10, this.commentBean.getRaw_pic_list())));
            }
            data.getReply_list();
            this.listData.add(new ForumProfileMessageReplyAdapter.u(ForumProfileMessageReplyAdapter.ViewType.PROFILE_MESSAGE_REPLY_ITEM, new ForumProfileMessageReplyAdapter.u.d(data.getPid(), data, auth)));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showDialog() {
        com.join.mgps.Util.h0.h0(this).m(this);
    }

    void showExtensionBoard() {
        this.chat_layout_more.setVisibility(0);
        this.chat_layout_extension.setVisibility(0);
        this.chat_layout_extension_container.setVisibility(8);
        hideSystemKeyBoard(this.chat_layout_extension_container);
        this.isShowInputExtensionBoard = true;
    }

    void showExtensionContentBoard() {
        this.chat_layout_more.setVisibility(0);
        this.chat_layout_extension.setVisibility(8);
        this.chat_layout_extension_container.setVisibility(0);
        hideSystemKeyBoard(this.chat_layout_extension_container);
        this.isShowInputExtensionBoard = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMessage(String message) {
        com.join.mgps.Util.a3.b(this).d(message);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMoreLoading() {
        this.mg_forum_profile_message_list.q();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showPopupwindow(View anchor, int type) {
        float f10 = getResources().getDisplayMetrics().scaledDensity;
        int i10 = getResources().getDisplayMetrics().widthPixels;
        this.popupWindow.showAsDropDown(anchor, 0, (int) ((anchor.getMeasuredHeight() * (-1)) - (f10 * 40.0f)));
        this.curEventType = type;
        if (type == 2) {
            this.curRid = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showPrePostingHintDialog(int type) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showPromptDialog(final int pid, final int rid) {
        if (this.forumDialog == null) {
            com.join.mgps.dialog.x0 x0Var = new com.join.mgps.dialog.x0(this);
            this.forumDialog = x0Var;
            x0Var.f("确定");
            this.forumDialog.d("取消");
            this.forumDialog.b(8);
            this.forumDialog.g("确定要删除该评论吗？").c(new e());
            this.forumDialog.setCancelable(true);
            this.forumDialog.setOnCancelListener(new f());
        }
        int i10 = this.curEventType;
        if (i10 == 17) {
            this.forumDialog.g("确定要删除该评论吗？");
        } else if (i10 == 18 || i10 == 20) {
            this.forumDialog.g("确定要删除该回复吗？");
        }
        this.forumDialog.e(new g(pid, rid));
        if (this.forumDialog.isShowing()) {
            return;
        }
        this.forumDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showRewardToast(RewardType type, int money, int exp) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showSendPromptDialog(int type) {
        if (this.forumLoadingDialog == null) {
            this.forumLoadingDialog = new com.join.mgps.dialog.y0(this);
        }
        this.forumLoadingDialog.c(type);
    }

    public void showSystemKeyBoard(View v10) {
        ((InputMethodManager) getSystemService("input_method")).showSoftInput(v10, 0);
        this.isShowKeyboard = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String msg) {
        com.join.mgps.Util.a3.b(this).d(msg);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void stopXlistRefreshAndLoadMore() {
        if (this.mg_forum_profile_message_list.g()) {
            this.mHandler.sendEmptyMessageDelayed(0, BaseCloudFileManager.ACK_TIMEOUT);
        } else {
            this.mHandler.sendEmptyMessage(0);
        }
    }

    void submitForumPostsComment(final ForumRequestBean.ForumPostsCommentRequestBean requestBean) {
        try {
            if (!isLogined(this)) {
                showMessage(getString(R.string.forum_user_not_login));
                return;
            }
            if (!validAccount()) {
                showDialog();
                return;
            }
            if (requestBean != null) {
                requestBean.setDevice_id("");
                ForumResponse<ForumData.ForumPostsCommentData> forumResponseZ0 = this.rpcForumClient.z0(requestBean.getParams1());
                int error = forumResponseZ0.getError();
                if (error == 706) {
                    showToast(getString(R.string.tour_perfect_info_for_comment_toast));
                    showDialog();
                } else {
                    if (error == 701) {
                        reGetToken();
                    }
                    processSendCommentResult(requestBean, forumResponseZ0);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            showSendPromptDialog(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void touristLogin() {
        if (!com.join.android.app.common.utils.m.j(this) || isLogined(this)) {
            return;
        }
        try {
            TouristLoginRequestBean touristLoginRequestBean = new TouristLoginRequestBean();
            touristLoginRequestBean.setVersion(com.join.android.app.common.utils.q.n(this).A());
            touristLoginRequestBean.setDevice_id("");
            touristLoginRequestBean.setMac("");
            touristLoginRequestBean.setSource("2");
            touristLoginRequestBean.setTuid(new PrefDef_(this).touriseTUID().d().longValue());
            touristLoginRequestBean.setSign(com.join.mgps.Util.k2.g(touristLoginRequestBean));
            AccountResultMainBean<AccountTokenSuccess> accountResultMainBeanI = this.rpcAccountClient.I(touristLoginRequestBean.getParams());
            if (accountResultMainBeanI != null && accountResultMainBeanI.getError() == 0) {
                if (accountResultMainBeanI.getData().is_success()) {
                    AccountUtil_.getInstance_(this).saveAccountData(g8.a.a(accountResultMainBeanI.getData().getUser_info()), this);
                    notifyLoginSuccess();
                } else {
                    error(accountResultMainBeanI.getData().getError_msg());
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateMessageData(ForumBean.ForumCommentBean bean) {
        this.commentBean = bean;
        refreshCommentCount();
        stopXlistRefreshAndLoadMore();
        notifyDataSetChanged();
    }

    boolean validAccount() {
        if (accountBean(this) == null) {
            return false;
        }
        return !AccountUtil_.getInstance_(this).isTourist();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void doForumPostReport(int cid, int rid) {
        String str = cid != 0 ? "评论举报成功" : "回复举报成功";
        String str2 = cid != 0 ? "评论举报失败" : "回复举报失败";
        if (com.join.android.app.common.utils.m.j(this)) {
            if (this.doingReport) {
                return;
            }
            this.doingReport = true;
            Integer num = new Integer(cid);
            Integer num2 = new Integer(rid);
            try {
                try {
                    if (!com.join.mgps.Util.r0.Y0(this)) {
                        com.join.mgps.Util.r0.L0(this);
                        showToast(getString(R.string.forum_user_not_login));
                        return;
                    }
                    UserInfo userInfoT = com.join.mgps.Util.r0.T(this);
                    ForumResponse<ForumData.ForumPostsReportData> forumResponseC = this.rpcForumClient.c(new ForumRequestBean.ForumPostsReportRequestBean(userInfoT.getUid(), userInfoT.getToken(), 0, num.intValue(), num2.intValue(), "").getParams());
                    if (forumResponseC != null) {
                        int error = forumResponseC.getError();
                        if (error == 0) {
                            ForumData.ForumPostsReportData data = forumResponseC.getData();
                            if (data != null && data.isResult()) {
                                showToast(str);
                            } else {
                                showToast(str2);
                            }
                        } else if (error == 701) {
                            showToast(getString(R.string.forum_user_login_invalid));
                        }
                    } else {
                        showToast(str2);
                    }
                } catch (Exception e10) {
                    showToast(str2);
                    e10.printStackTrace();
                }
            } finally {
                this.doingReport = false;
            }
        } else {
            showToast(getString(R.string.net_connect_failed));
            this.doingReport = false;
        }
    }
}
