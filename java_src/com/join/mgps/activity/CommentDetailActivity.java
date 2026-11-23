package com.join.mgps.activity;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import android.widget.TextView;
import android.widget.Toast;
import com.BaseAppCompatActivity;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.view.ClearEditText;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AESUtils;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.adapter.CommentDetailAdapter;
import com.join.mgps.customview.CopyTextViewNew;
import com.join.mgps.customview.MStarBar;
import com.join.mgps.customview.VipView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CommentCreateArgs;
import com.join.mgps.dto.CommentCreateBean;
import com.join.mgps.dto.CommentDetailBean;
import com.join.mgps.dto.CommentPraiseBean;
import com.join.mgps.dto.CommentResponse;
import com.join.mgps.dto.CommentTokenBean;
import com.join.mgps.dto.DeleteCommentArgs;
import com.join.mgps.dto.RequestCommentDetailArgs;
import com.join.mgps.dto.RequestCommentpraiseArgs;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.WindowFeature;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes4.dex */
@WindowFeature({10})
@EActivity(R.layout.comment_detail_activity)
public class CommentDetailActivity extends BaseAppCompatActivity implements CommentDetailAdapter.h {
    private UserInfo accountBean;
    private SimpleDraweeView appIcon;

    @ViewById
    ImageView back_image;

    @Extra
    int bespeakSwitch;

    @ViewById
    Button btn_chat_extension;

    @ViewById
    Button btn_chat_praise;

    @ViewById
    Button btn_chat_send;
    private LinearLayout commentDetailTopLl;

    @Extra
    String commentId;

    @Extra
    String commentScoreSwitch;

    @ViewById
    XListView2 comment_detail_list;
    private MStarBar comment_head_mstarBar;
    private TextView comment_head_num_tx;
    private TextView content;
    private CopyTextViewNew contentWeb;
    private Context context;
    private TextView deleteTx;

    @ViewById
    TextView deletedTv;
    private ImageView down;
    private TextView downNumber;
    private LinearLayout editLl;
    private TextView editTx;

    @ViewById
    TextView edit_comment_count;

    @ViewById
    ClearEditText edit_user_comment;

    @Extra
    String gameId;

    @Extra
    int gameIsStart;
    private TextView gameName;

    @Extra
    String gameType;
    private View headView;

    @ViewById
    ImageView imTopRight;

    @ViewById
    LinearLayout inputLl;
    private ImageView isAuth;
    private TextView isConnoisseurs;
    private ImageView isGood;
    private TextView isMe;
    private VipView levelTv;

    @ViewById
    LinearLayout loding_faile;

    @ViewById
    LinearLayout loding_layout;
    private CommentDetailAdapter mAdapter;

    @ViewById
    PtrClassicFrameLayout mPtrFrame;
    private ImageView message;
    private TextView messageNumber;
    private TextView more;

    @Extra
    String packageName;
    private ImageView parise;
    private TextView pariseNumber;
    private TextView phoneModle;

    @Pref
    PrefDef_ prefDef;
    private String replyCommentId;
    private String replyContent;
    private String replyMainCommentId;
    private String replyUid;
    private String replyUserName;
    com.join.mgps.rpc.f rpcClient;

    @Extra
    int sgcSwitch;
    private TextView time;

    @ViewById
    TextView title_textview;
    private String token;
    private int uid;
    private SimpleDraweeView usericon;
    private TextView username;
    private int pn = 1;
    private boolean isLoading = false;
    private List<CommentDetailAdapter.j> dataSet = new ArrayList();
    private List<CommentDetailBean.MainCommentBean> allSubCommentBeanXs = new ArrayList();
    private CommentDetailBean.MainCommentBean mainCommentBean = null;
    private Context mContext = this;
    private int replyPn = 1;
    private String replyPositionID = "";
    com.join.mgps.dialog.f1 dialog = null;
    private String sort = "desc";

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (IntentUtil.getInstance().goLoginInteractive(CommentDetailActivity.this.mContext)) {
                return;
            }
            CommentDetailActivity commentDetailActivity = CommentDetailActivity.this;
            commentDetailActivity.unPraise(v10, commentDetailActivity.downNumber, CommentDetailActivity.this.mainCommentBean);
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            CommentDetailActivity.this.edit_user_comment.setHint("@" + CommentDetailActivity.this.mainCommentBean.getUser_name() + "：");
            CommentDetailActivity.this.edit_user_comment.setFocusable(true);
            CommentDetailActivity.this.edit_user_comment.setFocusableInTouchMode(true);
            CommentDetailActivity.this.edit_user_comment.requestFocus();
            ((InputMethodManager) CommentDetailActivity.this.edit_user_comment.getContext().getSystemService("input_method")).showSoftInput(CommentDetailActivity.this.edit_user_comment, 0);
            CommentDetailActivity commentDetailActivity = CommentDetailActivity.this;
            commentDetailActivity.replyCommentId = commentDetailActivity.commentId;
            CommentDetailActivity.this.replyPn = 1;
            CommentDetailActivity commentDetailActivity2 = CommentDetailActivity.this;
            commentDetailActivity2.replyUserName = commentDetailActivity2.mainCommentBean.getUser_name();
            CommentDetailActivity commentDetailActivity3 = CommentDetailActivity.this;
            commentDetailActivity3.replyUid = commentDetailActivity3.mainCommentBean.getUid();
            CommentDetailActivity.this.replyPositionID = "";
        }
    }

    class c implements Animation.AnimationListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ TextView f50945b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ CommentDetailBean.MainCommentBean f50946c;

        c(final TextView val$tv, final CommentDetailBean.MainCommentBean val$mainCommentBean) {
            this.f50945b = val$tv;
            this.f50946c = val$mainCommentBean;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            long jLongValue = Long.valueOf(this.f50945b.getText().toString()).longValue();
            this.f50945b.setText((jLongValue + 1) + "");
            CommentDetailActivity.this.addDespise();
            CommentDetailActivity.this.onUnPraise(this.f50946c, 1);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    class d implements Animation.AnimationListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ TextView f50948b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ CommentDetailBean.MainCommentBean f50949c;

        d(final TextView val$tv, final CommentDetailBean.MainCommentBean val$mainCommentBean) {
            this.f50948b = val$tv;
            this.f50949c = val$mainCommentBean;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            long jLongValue = Long.valueOf(this.f50948b.getText().toString()).longValue();
            this.f50948b.setText((jLongValue + 1) + "");
            CommentDetailActivity.this.addPraise();
            CommentDetailActivity.this.topPraise(this.f50949c, 1);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    class e implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ PopupWindow f50951b;

        e(final PopupWindow val$window) {
            this.f50951b = val$window;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            this.f50951b.dismiss();
            if (CommentDetailActivity.this.isLoading) {
                return;
            }
            CommentDetailActivity.this.allSubCommentBeanXs.clear();
            CommentDetailActivity.this.dataSet.clear();
            if (CommentDetailActivity.this.sort.equals("desc")) {
                CommentDetailActivity.this.sort = "asc";
            } else {
                CommentDetailActivity.this.sort = "desc";
            }
            CommentDetailActivity.this.pn = 1;
            CommentDetailActivity commentDetailActivity = CommentDetailActivity.this;
            commentDetailActivity.getCommentList(commentDetailActivity.sort);
        }
    }

    class f implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ PopupWindow f50953b;

        f(final PopupWindow val$window) {
            this.f50953b = val$window;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            this.f50953b.dismiss();
            IntentUtil.getInstance().goShareWebActivity(CommentDetailActivity.this.context, com.join.mgps.rpc.h.f72353k + "/user/comment_report?comment_id=" + CommentDetailActivity.this.commentId);
        }
    }

    class g implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.t f50955b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f50956c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f50957d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ int f50958e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f50959f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ String f50960g;

        g(final com.join.mgps.customview.t val$mDialog, final String val$name, final String val$childCommentId, final int val$pn, final String val$uid, final String val$id) {
            this.f50955b = val$mDialog;
            this.f50956c = val$name;
            this.f50957d = val$childCommentId;
            this.f50958e = val$pn;
            this.f50959f = val$uid;
            this.f50960g = val$id;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (IntentUtil.getInstance().goLoginInteractive(CommentDetailActivity.this.mContext)) {
                this.f50955b.dismiss();
                return;
            }
            com.join.mgps.customview.t tVar = this.f50955b;
            if (tVar == null || !tVar.isShowing()) {
                return;
            }
            this.f50955b.dismiss();
            CommentDetailActivity.this.edit_user_comment.setHint("@" + this.f50956c + "：");
            CommentDetailActivity.this.replyCommentId = this.f50957d;
            CommentDetailActivity.this.replyPn = this.f50958e;
            CommentDetailActivity.this.replyUserName = this.f50956c;
            CommentDetailActivity.this.replyUid = this.f50959f;
            CommentDetailActivity.this.replyPositionID = this.f50960g;
            CommentDetailActivity.this.showInput();
        }
    }

    class h implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.t f50962b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f50963c;

        h(final com.join.mgps.customview.t val$mDialog, final String val$childCommentId) {
            this.f50962b = val$mDialog;
            this.f50963c = val$childCommentId;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            this.f50962b.dismiss();
            IntentUtil.getInstance().goShareWebActivity(CommentDetailActivity.this.context, com.join.mgps.rpc.h.f72353k + "/user/comment_report?comment_id=" + this.f50963c);
        }
    }

    class i implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.t f50965b;

        i(final com.join.mgps.customview.t val$mDialog) {
            this.f50965b = val$mDialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            this.f50965b.dismiss();
        }
    }

    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ((InputMethodManager) CommentDetailActivity.this.edit_user_comment.getContext().getSystemService("input_method")).showSoftInput(CommentDetailActivity.this.edit_user_comment, 0);
        }
    }

    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (IntentUtil.getInstance().goLoginInteractive(CommentDetailActivity.this.mContext)) {
                return;
            }
            CommentDetailActivity commentDetailActivity = CommentDetailActivity.this;
            commentDetailActivity.replyContent = commentDetailActivity.edit_user_comment.getText().toString();
            if (CommentDetailActivity.this.replyContent.length() == 0) {
                com.join.mgps.Util.a3.b(CommentDetailActivity.this.context).d("不能发表空字符串");
            } else {
                if (CommentDetailActivity.this.replyContent.length() <= 3) {
                    com.join.mgps.Util.a3.b(CommentDetailActivity.this.context).d("超过3个字才可以发表");
                    return;
                }
                ((InputMethodManager) CommentDetailActivity.this.getSystemService("input_method")).hideSoftInputFromWindow(CommentDetailActivity.this.getCurrentFocus().getWindowToken(), 2);
                CommentDetailActivity commentDetailActivity2 = CommentDetailActivity.this;
                commentDetailActivity2.toCreateComment(commentDetailActivity2.replyMainCommentId, CommentDetailActivity.this.replyContent, Build.MODEL, CommentDetailActivity.this.replyUid, CommentDetailActivity.this.replyUserName, CommentDetailActivity.this.replyCommentId, CommentDetailActivity.this.replyPn);
            }
        }
    }

    class l implements com.join.mgps.customview.i {
        l() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (CommentDetailActivity.this.isLoading) {
                return;
            }
            CommentDetailActivity commentDetailActivity = CommentDetailActivity.this;
            commentDetailActivity.getCommentList(commentDetailActivity.sort);
        }
    }

    class m implements com.join.mgps.customview.j {
        m() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (CommentDetailActivity.this.isLoading) {
                return;
            }
            CommentDetailActivity.this.pn = 1;
            CommentDetailActivity commentDetailActivity = CommentDetailActivity.this;
            commentDetailActivity.getCommentList(commentDetailActivity.sort);
        }
    }

    class n implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CommentDetailBean.MainCommentBean f50971b;

        n(final CommentDetailBean.MainCommentBean val$temp) {
            this.f50971b = val$temp;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentSelfListActivity_.intent(view.getContext()).a(Integer.parseInt(this.f50971b.getUid())).start();
        }
    }

    class o implements View.OnLongClickListener {
        o() {
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View v10) {
            return false;
        }
    }

    class p implements View.OnClickListener {
        p() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            IntentUtil.getInstance().goGameDetialActivity(CommentDetailActivity.this.context, CommentDetailActivity.this.gameId, "0", 0, 0);
        }
    }

    class q implements View.OnClickListener {
        q() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (!CommentDetailActivity.this.mainCommentBean.getUid().equals(String.valueOf(CommentDetailActivity.this.uid)) || IntentUtil.getInstance().goLoginInteractive(CommentDetailActivity.this.mContext)) {
                return;
            }
            CommentCreatActivity_.intent(CommentDetailActivity.this.context).f(CommentDetailActivity.this.gameId).j(CommentDetailActivity.this.packageName).d(CommentDetailActivity.this.commentScoreSwitch).c(CommentDetailActivity.this.commentId).e(Float.valueOf(CommentDetailActivity.this.mainCommentBean.getStars_score()).floatValue()).h(CommentDetailActivity.this.gameType).g(1).i(true).a(CommentDetailActivity.this.bespeakSwitch).k(CommentDetailActivity.this.mainCommentBean.getMobile_phone_model()).b(CommentDetailActivity.this.mainCommentBean.getContent()).start();
        }
    }

    class r implements View.OnClickListener {

        class a implements com.join.mgps.dialog.b.c {
            a() {
            }

            @Override // com.join.mgps.dialog.b.c
            public void ClickCancleButn(com.join.mgps.dialog.b dialog) {
                dialog.dismiss();
            }

            @Override // com.join.mgps.dialog.b.c
            public void ClickOKButn(com.join.mgps.dialog.b dialog) {
                dialog.dismiss();
                CommentDetailActivity.this.deleteMyComment();
            }
        }

        r() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            new com.join.mgps.dialog.b(CommentDetailActivity.this.context, R.style.HKDialogLoading).g("您确定要删除自己的点评？").j("确定").d("取消").k("提示").i(new a()).show();
        }
    }

    class s implements View.OnClickListener {
        s() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (IntentUtil.getInstance().goLoginInteractive(CommentDetailActivity.this.mContext)) {
                return;
            }
            CommentDetailActivity commentDetailActivity = CommentDetailActivity.this;
            commentDetailActivity.praise(v10, commentDetailActivity.pariseNumber, CommentDetailActivity.this.mainCommentBean);
        }
    }

    private void addViewItem(List<CommentDetailBean.MainCommentBean> subCommentBeanXs, boolean isFirst) {
        for (int i10 = 0; subCommentBeanXs != null && i10 < subCommentBeanXs.size(); i10++) {
            CommentDetailBean.MainCommentBean mainCommentBean = subCommentBeanXs.get(i10);
            CommentDetailAdapter.j jVar = new CommentDetailAdapter.j(CommentDetailAdapter.ViewType.COMMENT, new CommentDetailAdapter.j.a(mainCommentBean));
            if (isFirst) {
                this.dataSet.add(0, jVar);
            } else {
                this.dataSet.add(jVar);
            }
            List<CommentDetailBean.MainCommentBean.SubCommentBean> sub_comment = mainCommentBean.getSub_comment();
            if (sub_comment != null && sub_comment.size() > 0) {
                CommentDetailAdapter.j jVar2 = new CommentDetailAdapter.j(CommentDetailAdapter.ViewType.REPLY, new CommentDetailAdapter.j.b(mainCommentBean.getId(), mainCommentBean, 0, true));
                if (isFirst) {
                    this.dataSet.add(0, jVar2);
                } else {
                    this.dataSet.add(jVar2);
                }
            }
        }
    }

    private RequestCommentDetailArgs getCommentDetailRequestBean(String sort) {
        String str = Build.MODEL;
        this.token = this.prefDef.commentToken().d();
        UserInfo accountData = AccountUtil_.getInstance_(this.context).getAccountData();
        this.accountBean = accountData;
        if (accountData != null) {
            this.uid = accountData.getUid();
        }
        return RequestBeanUtil.getInstance(this.context).getCommentDetailList(sort, this.commentId, this.gameId, this.uid, this.pn, 10, str, this.token);
    }

    private void initHeadView() {
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.comment_detail_head_view, (ViewGroup) null);
        this.headView = viewInflate;
        this.commentDetailTopLl = (LinearLayout) viewInflate.findViewById(R.id.commentDetailTopLl);
        this.appIcon = (SimpleDraweeView) this.headView.findViewById(R.id.appIcon);
        this.usericon = (SimpleDraweeView) this.headView.findViewById(R.id.usericon);
        this.gameName = (TextView) this.headView.findViewById(R.id.gameName);
        this.username = (TextView) this.headView.findViewById(R.id.userName);
        this.levelTv = (VipView) this.headView.findViewById(R.id.levelTv);
        this.isMe = (TextView) this.headView.findViewById(R.id.isMe);
        this.isConnoisseurs = (TextView) this.headView.findViewById(R.id.isConnoisseurs);
        this.comment_head_num_tx = (TextView) this.headView.findViewById(R.id.comment_head_num_tx);
        this.time = (TextView) this.headView.findViewById(R.id.time);
        this.content = (TextView) this.headView.findViewById(R.id.content);
        this.contentWeb = (CopyTextViewNew) this.headView.findViewById(R.id.contentWeb);
        this.more = (TextView) this.headView.findViewById(R.id.more);
        this.isAuth = (ImageView) this.headView.findViewById(R.id.isAuth);
        this.isGood = (ImageView) this.headView.findViewById(R.id.isGood);
        MStarBar mStarBar = (MStarBar) this.headView.findViewById(R.id.comment_head_mstarBar);
        this.comment_head_mstarBar = mStarBar;
        mStarBar.setIntegerMark(false);
        this.comment_head_mstarBar.setEnabled(false);
        this.editLl = (LinearLayout) this.headView.findViewById(R.id.editLl);
        this.editTx = (TextView) this.headView.findViewById(R.id.editTx);
        this.deleteTx = (TextView) this.headView.findViewById(R.id.deleteTx);
        this.phoneModle = (TextView) this.headView.findViewById(R.id.phoneModle);
        this.parise = (ImageView) this.headView.findViewById(R.id.parise);
        this.pariseNumber = (TextView) this.headView.findViewById(R.id.pariseNumber);
        this.down = (ImageView) this.headView.findViewById(R.id.down);
        this.downNumber = (TextView) this.headView.findViewById(R.id.downNumber);
        this.message = (ImageView) this.headView.findViewById(R.id.message);
        this.messageNumber = (TextView) this.headView.findViewById(R.id.messageNumber);
        this.more.setVisibility(8);
        this.content.setVisibility(8);
        this.contentWeb.setVisibility(0);
        this.contentWeb.setOnLongClickListener(new o());
        this.commentDetailTopLl.setOnClickListener(new p());
        this.editTx.setOnClickListener(new q());
        this.deleteTx.setOnClickListener(new r());
        this.parise.setOnClickListener(new s());
        this.down.setOnClickListener(new a());
        this.message.setOnClickListener(new b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void praise(View v10, final TextView tv2, final CommentDetailBean.MainCommentBean mainCommentBean) {
        if (mainCommentBean == null) {
            return;
        }
        if (mainCommentBean.getIs_praise() == 1) {
            subPraise();
            ((ImageView) v10).setImageResource(R.drawable.up_ic);
            topPraise(mainCommentBean, 2);
            return;
        }
        mainCommentBean.setIs_praise(1);
        if (AccountUtil_.getInstance_(this.mContext).getAccountData() == null) {
            IntentUtil.getInstance().goLoginInteractive(this.mContext);
            return;
        }
        ((ImageView) v10).setImageResource(R.drawable.uped_ic);
        Animation animationLoadAnimation = AnimationUtils.loadAnimation(this.mContext, R.anim.scale_reset);
        v10.startAnimation(animationLoadAnimation);
        animationLoadAnimation.setAnimationListener(new d(tv2, mainCommentBean));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showInput() {
        this.edit_user_comment.setFocusable(true);
        this.edit_user_comment.setFocusableInTouchMode(true);
        this.edit_user_comment.requestFocus();
        new Handler().postDelayed(new j(), 200L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void unPraise(View v10, final TextView tv2, final CommentDetailBean.MainCommentBean mainCommentBean) {
        if (mainCommentBean == null) {
            return;
        }
        if (mainCommentBean.getIs_despise() == 1) {
            subDespise();
            ((ImageView) v10).setImageResource(R.drawable.down_ic);
            onUnPraise(mainCommentBean, 2);
            return;
        }
        mainCommentBean.setIs_despise(1);
        if (AccountUtil_.getInstance_(this.mContext).getAccountData() == null) {
            IntentUtil.getInstance().goLoginInteractive(this.mContext);
            return;
        }
        ((ImageView) v10).setImageResource(R.drawable.downed_ic);
        Animation animationLoadAnimation = AnimationUtils.loadAnimation(this.mContext, R.anim.scale_reset);
        v10.startAnimation(animationLoadAnimation);
        animationLoadAnimation.setAnimationListener(new c(tv2, mainCommentBean));
    }

    public void addDespise() {
        long jLongValue = Long.valueOf(this.mainCommentBean.getDespise_count()).longValue();
        this.mainCommentBean.setIs_despise(1);
        this.mainCommentBean.setDespise_count((jLongValue + 1) + "");
    }

    public void addPraise() {
        long jLongValue = Long.valueOf(this.mainCommentBean.getPraise_count()).longValue();
        this.mainCommentBean.setIs_praise(1);
        this.mainCommentBean.setPraise_count((jLongValue + 1) + "");
    }

    @AfterViews
    void afterView() {
        this.rpcClient = com.join.mgps.rpc.impl.e.m();
        this.context = this;
        this.title_textview.setText("点评详情");
        org.greenrobot.eventbus.c.f().v(this);
        this.token = this.prefDef.commentToken().d();
        String str = this.commentId;
        this.replyMainCommentId = str;
        this.replyCommentId = str;
        this.dialog = com.join.mgps.Util.h0.h0(this.context).x(this.context);
        initHeadView();
        this.edit_user_comment.setShowDeleteIcon(false);
        this.btn_chat_praise.setVisibility(8);
        this.btn_chat_extension.setVisibility(8);
        this.edit_comment_count.setVisibility(8);
        this.btn_chat_send.setOnClickListener(new k());
        showLoding();
        getCommentList(this.sort);
        this.mAdapter = new CommentDetailAdapter(this.context, this.dataSet, this);
        this.comment_detail_list.addHeaderView(this.headView);
        this.comment_detail_list.setAdapter((ListAdapter) this.mAdapter);
        this.comment_detail_list.setPreLoadCount(10);
        this.comment_detail_list.setVerticalScrollBarEnabled(false);
        this.comment_detail_list.setPullLoadEnable(new l());
        this.comment_detail_list.setPullRefreshEnable(new m());
    }

    @Click
    void back_image() {
        finish();
    }

    void bottomDialog(final String childCommentId, final String name, final String uid, final String id2, final int pn) {
        com.join.mgps.customview.t tVar = new com.join.mgps.customview.t(this.context, R.style.MyDialog);
        tVar.setContentView(R.layout.commentdetail_report_dialog);
        TextView textView = (TextView) tVar.findViewById(R.id.replyTv);
        TextView textView2 = (TextView) tVar.findViewById(R.id.reportTv);
        TextView textView3 = (TextView) tVar.findViewById(R.id.cancelTv);
        textView.setOnClickListener(new g(tVar, name, childCommentId, pn, uid, id2));
        textView2.setOnClickListener(new h(tVar, childCommentId));
        textView3.setOnClickListener(new i(tVar));
        tVar.show();
        WindowManager.LayoutParams attributes = tVar.getWindow().getAttributes();
        attributes.gravity = 80;
        attributes.width = -1;
        attributes.height = -2;
        tVar.getWindow().getDecorView().setPadding(0, 0, 0, 0);
        tVar.getWindow().setAttributes(attributes);
    }

    @UiThread
    public void checkReset(int i10) {
        if (i10 == 1) {
            resetDespise(1);
        } else {
            resetPraise(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void deleteMyComment() {
        if (!com.join.android.app.common.utils.m.j(this.context)) {
            resultShow2("网络连接失败，再试试吧~", false);
            return;
        }
        try {
            CommentResponse<CommentPraiseBean> commentResponseL = this.rpcClient.l(getDeleteCommentRequestBean(this.mainCommentBean.getId(), this.mainCommentBean.getPn()));
            if (commentResponseL == null) {
                resultShow2("删除失败，请稍候再试~", false);
            } else if (commentResponseL.getSucc() == 1) {
                resultShow2("", true);
            } else if (commentResponseL.getCode() == 801) {
                resultShow2(commentResponseL);
            } else {
                resultShow2(commentResponseL.getMsg(), false);
            }
        } catch (Exception e10) {
            resultShow2("删除失败，请稍候再试~", false);
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void dismissLodingDialog() {
        this.dialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getCommentList(String sort) {
        int i10;
        if (!com.join.android.app.common.utils.m.j(this.context)) {
            showLodingFailed();
            return;
        }
        this.isLoading = true;
        try {
            CommentResponse<CommentDetailBean> commentResponseH = this.rpcClient.h(getCommentDetailRequestBean(sort));
            if (commentResponseH == null) {
                showLodingFailed();
                return;
            }
            if (commentResponseH.getCode() != 0) {
                resultShow2(commentResponseH);
            }
            if (this.pn == 1 && (commentResponseH.getData_info().getMain_comment() == null || commentResponseH.getData_info().getMain_comment().size() <= 0)) {
                showDeleteView();
                return;
            }
            CommentDetailBean.GameInfoBean game_info = commentResponseH.getData_info().getGame_info();
            List<CommentDetailBean.MainCommentBean> main_comment = commentResponseH.getData_info().getMain_comment();
            if (this.pn == 1 && game_info != null) {
                setTopGame(game_info);
            }
            if (this.pn != 1 || main_comment == null || main_comment.size() <= 0) {
                i10 = 10;
            } else {
                CommentDetailBean.MainCommentBean mainCommentBean = main_comment.get(0);
                this.mainCommentBean = mainCommentBean;
                mainCommentBean.setPn(this.pn);
                setTopComment(this.mainCommentBean);
                main_comment.remove(0);
                i10 = 9;
            }
            if (main_comment != null) {
                for (int i11 = 0; i11 < main_comment.size(); i11++) {
                    main_comment.get(i11).setPn(this.pn);
                }
            }
            showMain(main_comment, i10);
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

    public CommentCreateArgs getCreateCommentRequestBean(String replyCommentId, String str, String upPhoneModel, String reply_comment_user_id, String reply_comment_user_name, String reply_comment_id, int pn) {
        String str2;
        String avatarSrc;
        String token;
        int i10;
        String strD = this.prefDef.commentToken().d();
        UserInfo accountData = AccountUtil_.getInstance_(this.context).getAccountData();
        this.accountBean = accountData;
        if (accountData != null) {
            int uid = accountData.getUid();
            String nickname = this.accountBean.getNickname();
            i10 = uid;
            str2 = nickname;
            avatarSrc = this.accountBean.getAvatarSrc();
            token = this.accountBean.getToken();
        } else {
            str2 = "";
            avatarSrc = str2;
            token = avatarSrc;
            i10 = -1;
        }
        return RequestBeanUtil.getInstance(this.context).getReplyCreateCommentBean(this.gameId, 0.0f, str, strD, upPhoneModel, 2, replyCommentId, str2, avatarSrc, token, i10, reply_comment_user_id, reply_comment_user_name, reply_comment_id, pn);
    }

    public DeleteCommentArgs getDeleteCommentRequestBean(String comment_id, int pn) {
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
        return RequestBeanUtil.getInstance(this.context).getDeleteComment(this.gameId, this.token, str, comment_id, token, this.uid, pn);
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

    @Click
    void imTopRight() {
        View viewInflate = getLayoutInflater().inflate(R.layout.comment_detail_top_popwin, (ViewGroup) null);
        TextView textView = (TextView) viewInflate.findViewById(R.id.pop_list_order_tx);
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.pop_report_tx);
        PopupWindow popupWindow = new PopupWindow(viewInflate, -2, -2);
        popupWindow.setBackgroundDrawable(new ColorDrawable(Color.parseColor("#00000000")));
        popupWindow.setFocusable(true);
        popupWindow.setOutsideTouchable(true);
        popupWindow.update();
        popupWindow.showAsDropDown(this.imTopRight, 0, 0);
        if (this.sort.equals("desc")) {
            textView.setText("顺序查看");
        } else {
            textView.setText("倒序查看");
        }
        textView.setOnClickListener(new e(popupWindow));
        textView2.setOnClickListener(new f(popupWindow));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onChangeComment(com.join.mgps.event.n event) {
        if (event.getType() == 2) {
            this.comment_head_mstarBar.setStarCount((int) event.c());
            this.comment_head_mstarBar.setStarMark(event.c());
            if (event.b() == null || event.b().isEmpty()) {
                this.phoneModle.setVisibility(4);
                this.mainCommentBean.setMobile_phone_model("");
            } else {
                this.phoneModle.setVisibility(0);
                this.phoneModle.setText(event.b());
            }
        }
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        org.greenrobot.eventbus.c.f().A(this);
    }

    @Override // com.join.mgps.adapter.CommentDetailAdapter.h
    @Background
    public void onPraise(CommentDetailBean.MainCommentBean bean, int position, int type) {
        if (!com.join.android.app.common.utils.m.j(this.context)) {
            resultShow3("网络连接失败，再试试吧~", true, position, 1);
            return;
        }
        try {
            CommentResponse<CommentPraiseBean> commentResponseD = this.rpcClient.d(getCommentPraiseRequestBean(bean.getId(), type, bean.getPn()));
            if (commentResponseD == null) {
                resultShow3("操作失败，请稍候再试~", true, position, 1);
            } else if (commentResponseD.getSucc() != 1) {
                if (commentResponseD.getCode() == 801) {
                    resultShow2(commentResponseD);
                } else {
                    resultShow3(commentResponseD.getMsg(), true, position, 1);
                }
            }
        } catch (Exception e10) {
            resultShow3("操作失败，请稍候再试~", true, position, 1);
            e10.printStackTrace();
        }
    }

    @Override // com.join.mgps.adapter.CommentDetailAdapter.h
    public void onReply(CommentDetailBean.MainCommentBean bean, int position) {
        bottomDialog(bean.getId(), bean.getUser_name(), bean.getUid(), bean.getId(), bean.getPn());
    }

    @Override // com.join.mgps.adapter.CommentDetailAdapter.h
    public void onReplyReply(CommentDetailBean.MainCommentBean.SubCommentBean sub, int pn, String id2) {
        bottomDialog(sub.getId(), sub.getUser_name(), sub.getUid(), id2, pn);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void onUnPraise(CommentDetailBean.MainCommentBean bean, int type) {
        if (!com.join.android.app.common.utils.m.j(this.context)) {
            resultShow("网络连接失败，再试试吧~", true, 2);
            return;
        }
        try {
            CommentResponse<CommentPraiseBean> commentResponseE = this.rpcClient.e(getCommentPraiseRequestBean(bean.getId(), type, bean.getPn()));
            if (commentResponseE == null) {
                resultShow("操作失败，请稍候再试~", true, 2);
            } else if (commentResponseE.getSucc() == 1) {
                checkReset(2);
            } else if (commentResponseE.getCode() == 801) {
                resultShow2(commentResponseE);
            } else {
                resultShow(commentResponseE.getMsg(), true, 2);
            }
        } catch (Exception e10) {
            resultShow("操作失败，请稍候再试~", true, 2);
            e10.printStackTrace();
        }
    }

    public void resetDespise(int state) {
        long jLongValue = Long.valueOf(this.mainCommentBean.getDespise_count()).longValue();
        if (this.mainCommentBean.getIs_despise() == 1) {
            this.mainCommentBean.setIs_despise(0);
            long j10 = jLongValue - 1;
            if (j10 < 0) {
                this.mainCommentBean.setDespise_count("0");
            } else {
                this.mainCommentBean.setDespise_count(j10 + "");
            }
        } else if (state != 1) {
            this.mainCommentBean.setIs_despise(1);
            this.mainCommentBean.setDespise_count((jLongValue + 1) + "");
        }
        setTopComment(this.mainCommentBean);
    }

    public void resetPraise(int state) {
        long jLongValue = Long.valueOf(this.mainCommentBean.getPraise_count()).longValue();
        if (this.mainCommentBean.getIs_praise() == 1) {
            this.mainCommentBean.setIs_praise(0);
            long j10 = jLongValue - 1;
            if (j10 < 0) {
                this.mainCommentBean.setPraise_count("0");
            } else {
                this.mainCommentBean.setPraise_count(j10 + "");
            }
        } else if (state != 1) {
            this.mainCommentBean.setIs_praise(1);
            this.mainCommentBean.setPraise_count((jLongValue + 1) + "");
        }
        setTopComment(this.mainCommentBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void resultShow(String msg, boolean b10, int type) {
        com.join.mgps.Util.a3.b(this.context).d(msg);
        if (b10) {
            if (type == 1) {
                resetPraise(0);
            } else {
                resetDespise(0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void resultShow2(String msg, boolean b10) {
        if (!msg.isEmpty()) {
            com.join.mgps.Util.a3.b(this.context).d(msg);
        }
        if (b10) {
            org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.n(1, "", 0.0d, 0L, ""));
            finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void resultShow3(String msg, boolean b10, int position, int type) {
        com.join.mgps.Util.a3.b(this.context).d(msg);
        if (b10 && type == 1) {
            this.mAdapter.j(position);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void resultShow4(String msg, CommentCreateBean.InfoBean bean, boolean b10) {
        dismissLodingDialog();
        com.join.mgps.Util.a3.b(this.context).d(msg);
        if (b10) {
            ArrayList arrayList = new ArrayList();
            if (this.replyCommentId == this.commentId) {
                CommentDetailBean.MainCommentBean mainCommentBean = new CommentDetailBean.MainCommentBean();
                mainCommentBean.setId(bean.getId());
                mainCommentBean.setUid(bean.getUid());
                mainCommentBean.setUser_name(bean.getUser_name());
                mainCommentBean.setRank(bean.getRank());
                mainCommentBean.setHead_portrait(bean.getHead_portrait());
                mainCommentBean.setGame_id(bean.getGame_id());
                mainCommentBean.setContent(bean.getContent());
                mainCommentBean.setMobile_phone_model(bean.getMobile_phone_model());
                mainCommentBean.setPraise_count(String.valueOf(bean.getPraise_count()));
                mainCommentBean.setDespise_count(String.valueOf(bean.getDespise_count()));
                mainCommentBean.setStart_game_count(String.valueOf(bean.getStart_game_count()));
                mainCommentBean.setStars_score(bean.getStars_score());
                mainCommentBean.setApproval_rate(bean.getApproval_rate());
                mainCommentBean.setAdd_times(String.valueOf(bean.getAdd_times()));
                mainCommentBean.setIs_belong_to(bean.getIs_despise());
                mainCommentBean.setReply_count(String.valueOf(bean.getReply_count()));
                mainCommentBean.setIs_praise(bean.getIs_praise());
                mainCommentBean.setIs_despise(bean.getIs_despise());
                mainCommentBean.setIs_old(String.valueOf(bean.getIs_old()));
                mainCommentBean.setPn(this.replyPn);
                mainCommentBean.setVip_level(bean.getVip_level());
                mainCommentBean.setSvip_level(bean.getSvip_level());
                arrayList.add(0, mainCommentBean);
                this.allSubCommentBeanXs.addAll(0, arrayList);
                addViewItem(arrayList, true);
            } else {
                int i10 = -1;
                for (int i11 = 0; i11 < this.allSubCommentBeanXs.size(); i11++) {
                    if (this.allSubCommentBeanXs.get(i11).getId().equals(this.replyPositionID)) {
                        i10 = i11;
                    }
                }
                if (i10 == -1) {
                    return;
                }
                CommentDetailBean.MainCommentBean mainCommentBean2 = this.allSubCommentBeanXs.get(i10);
                if (this.replyCommentId != mainCommentBean2.getId() && mainCommentBean2.getSub_comment() != null) {
                    int size = mainCommentBean2.getSub_comment().size();
                    for (int i12 = 0; i12 < size; i12++) {
                        mainCommentBean2.getSub_comment().get(i12).getId().equals(this.replyCommentId);
                    }
                }
                CommentDetailBean.MainCommentBean.SubCommentBean subCommentBean = new CommentDetailBean.MainCommentBean.SubCommentBean();
                subCommentBean.setId(bean.getId());
                subCommentBean.setUid(bean.getUid());
                subCommentBean.setUser_name(bean.getUser_name());
                subCommentBean.setGame_id(bean.getGame_id());
                subCommentBean.setContent(bean.getContent());
                subCommentBean.setVip_level(bean.getVip_level());
                subCommentBean.setSvip_level(bean.getSvip_level());
                subCommentBean.setReply_vip_level(bean.getReply_vip_level());
                subCommentBean.setReply_svip_level(bean.getReply_svip_level());
                if (mainCommentBean2.getSub_comment() == null) {
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add(subCommentBean);
                    mainCommentBean2.setSub_comment(arrayList2);
                } else {
                    mainCommentBean2.getSub_comment().add(0, subCommentBean);
                }
                this.allSubCommentBeanXs.set(i10, mainCommentBean2);
                this.dataSet.clear();
                addViewItem(this.allSubCommentBeanXs, false);
            }
            this.mAdapter.notifyDataSetChanged();
            this.edit_user_comment.setText("");
            this.edit_user_comment.setHint("添加评论");
            this.replyCommentId = this.commentId;
            this.replyPn = 1;
            this.replyUserName = this.mainCommentBean.getUser_name();
            this.replyUid = this.mainCommentBean.getUid();
            this.replyPositionID = "";
        }
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void setTopComment(CommentDetailBean.MainCommentBean temp) {
        String str;
        if (temp != null) {
            this.replyUserName = temp.getUser_name();
            this.replyUid = temp.getUid();
            UtilsMy.J3(this, temp.getHead_portrait(), this.usericon);
            this.usericon.setOnClickListener(new n(temp));
            this.username.setText(temp.getUser_name());
            this.username.setTextColor(-16777216);
            if (temp.getVip_level() > 0) {
                this.username.setTextColor(getResources().getColor(R.color.vip_color));
            }
            if (temp.getSvip_level() > 0) {
                this.username.setTextColor(getResources().getColor(R.color.vip_svip_color));
            }
            this.levelTv.setVipData(temp.getVip_level(), temp.getSvip_level());
            if (temp.getUid().equals("" + this.uid)) {
                this.isMe.setVisibility(0);
                if (temp.getIs_old().equals("1")) {
                    this.editLl.setVisibility(8);
                } else {
                    this.editLl.setVisibility(0);
                }
            } else {
                this.isMe.setVisibility(8);
                this.editLl.setVisibility(8);
            }
            if (temp.getRank().equals("")) {
                this.isAuth.setVisibility(8);
            } else {
                this.isAuth.setVisibility(0);
            }
            this.isConnoisseurs.setText(temp.getRank());
            this.contentWeb.setTextHeader(temp.getContent());
            if (temp.getIs_old().equals("1") || temp.getMobile_phone_model() == null || temp.getMobile_phone_model().isEmpty()) {
                this.phoneModle.setVisibility(4);
            } else {
                this.phoneModle.setVisibility(0);
                this.phoneModle.setText(temp.getMobile_phone_model());
            }
            this.pariseNumber.setText(temp.getPraise_count() + "");
            this.downNumber.setText(temp.getDespise_count() + "");
            this.messageNumber.setText(temp.getReply_count() + "");
            this.time.setText(com.join.android.app.common.utils.i.a(Long.parseLong(temp.getAdd_times() + "000")));
            if (temp.getIs_old().equals("1") || Float.valueOf(temp.getStars_score()).floatValue() == 0.0f || !((str = this.commentScoreSwitch) == null || str.equals("1"))) {
                this.comment_head_mstarBar.setVisibility(8);
            } else {
                this.comment_head_mstarBar.setVisibility(0);
                this.comment_head_mstarBar.setStarCount(Integer.valueOf(temp.getStars_score()).intValue());
                this.comment_head_mstarBar.setStarMark(Float.valueOf(temp.getStars_score()).floatValue());
            }
            this.comment_head_num_tx.setVisibility(8);
            if (temp.getApproval_rate() == null || Double.valueOf(temp.getApproval_rate()).doubleValue() <= 70.0d) {
                this.isGood.setVisibility(8);
            } else {
                this.isGood.setVisibility(0);
            }
            if (temp.getIs_praise() == 1) {
                this.parise.setImageResource(R.drawable.uped_ic);
            } else {
                this.parise.setImageResource(R.drawable.up_ic);
            }
            if (temp.getIs_despise() == 1) {
                this.down.setImageResource(R.drawable.downed_ic);
            } else {
                this.down.setImageResource(R.drawable.down_ic);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void setTopGame(CommentDetailBean.GameInfoBean bean) {
        if (bean != null) {
            if (com.join.mgps.Util.t2.i(bean.getGame_ico())) {
                UtilsMy.M3(this, bean.getGame_ico(), this.appIcon);
            }
            this.gameName.setText(bean.getGame_name());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showDeleteView() {
        this.mPtrFrame.setVisibility(8);
        this.deletedTv.setVisibility(0);
        this.inputLl.setVisibility(8);
        this.loding_faile.setVisibility(8);
        this.loding_layout.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        this.comment_detail_list.setVisibility(8);
        this.mPtrFrame.setVisibility(8);
        this.inputLl.setVisibility(8);
        this.loding_faile.setVisibility(8);
        this.loding_layout.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingDialog() {
        this.dialog.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        updateListFooter();
        List<CommentDetailBean.MainCommentBean> list = this.allSubCommentBeanXs;
        if (list != null && list.size() != 0) {
            Toast.makeText(this, getString(R.string.net_connect_failed), 0).show();
            return;
        }
        this.comment_detail_list.setVisibility(8);
        this.mPtrFrame.setVisibility(8);
        this.inputLl.setVisibility(8);
        this.loding_faile.setVisibility(0);
        this.loding_layout.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMain(List<CommentDetailBean.MainCommentBean> subCommentBeanXs, int maxItem) {
        if (this.pn == 1) {
            this.comment_detail_list.setVisibility(0);
            this.mPtrFrame.setVisibility(0);
            this.inputLl.setVisibility(0);
            this.loding_faile.setVisibility(8);
            this.loding_layout.setVisibility(8);
            this.allSubCommentBeanXs.clear();
            this.dataSet.clear();
        }
        if (subCommentBeanXs == null) {
            this.comment_detail_list.setNoMore();
            return;
        }
        this.pn++;
        this.allSubCommentBeanXs.addAll(subCommentBeanXs);
        addViewItem(subCommentBeanXs, false);
        if (subCommentBeanXs.size() <= 0) {
            this.comment_detail_list.setNoMore();
        }
        this.mAdapter.notifyDataSetChanged();
        updateListFooter();
    }

    public void subDespise() {
        long jLongValue = Long.valueOf(this.mainCommentBean.getDespise_count()).longValue();
        this.mainCommentBean.setIs_despise(0);
        long j10 = jLongValue - 1;
        if (j10 < 0) {
            this.mainCommentBean.setDespise_count("0");
            return;
        }
        this.mainCommentBean.setDespise_count(j10 + "");
    }

    public void subPraise() {
        long jLongValue = Long.valueOf(this.mainCommentBean.getPraise_count()).longValue();
        this.mainCommentBean.setIs_praise(0);
        long j10 = jLongValue - 1;
        if (j10 < 0) {
            this.mainCommentBean.setPraise_count("0");
            return;
        }
        this.mainCommentBean.setPraise_count(j10 + "");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void toCreateComment(String replyCommentId, String str, String upPhoneModel, String reply_comment_user_id, String reply_comment_user_name, String reply_comment_id, int replyPn) {
        if (!com.join.android.app.common.utils.m.j(this.context)) {
            resultShow4("网络连接失败，再试试吧~", null, false);
            return;
        }
        showLodingDialog();
        try {
            CommentResponse<CommentCreateBean> commentResponseB = this.rpcClient.b(getCreateCommentRequestBean(replyCommentId, str, upPhoneModel, reply_comment_user_id, reply_comment_user_name, reply_comment_id, replyPn));
            if (commentResponseB == null) {
                resultShow4("回复失败，请稍候再试~", null, false);
            } else if (commentResponseB.getCode() != 0) {
                if (commentResponseB.getCode() == 801) {
                    resultShow2(commentResponseB);
                } else {
                    resultShow4(commentResponseB.getMsg(), null, false);
                }
            } else if (commentResponseB.getData_info().getInfo() != null) {
                resultShow4("内容将在审核后显示！", commentResponseB.getData_info().getInfo(), true);
            }
        } catch (Exception e10) {
            resultShow4(e10.getMessage(), null, false);
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void topPraise(CommentDetailBean.MainCommentBean mainCommentBean, int type) {
        if (!com.join.android.app.common.utils.m.j(this.context)) {
            resultShow("网络连接失败，再试试吧~", true, 1);
            return;
        }
        try {
            CommentResponse<CommentPraiseBean> commentResponseD = this.rpcClient.d(getCommentPraiseRequestBean(mainCommentBean.getId(), type, mainCommentBean.getPn()));
            if (commentResponseD == null) {
                resultShow("操作失败，请稍候再试~", true, 1);
            } else if (commentResponseD.getSucc() == 1) {
                checkReset(1);
            } else if (commentResponseD.getCode() == 801) {
                resultShow2(commentResponseD);
            } else {
                resultShow(commentResponseD.getMsg(), true, 1);
            }
        } catch (Exception e10) {
            resultShow("操作失败，请稍候再试~", true, 1);
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateListFooter() {
        this.comment_detail_list.u();
        this.comment_detail_list.v();
        this.isLoading = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void resultShow2(CommentResponse bean) {
        if (bean.getCode() == 801) {
            getToken();
            com.join.mgps.Util.a3.b(this.context).d("数据访问失败，请稍候再试！");
        } else {
            com.join.mgps.Util.a3.b(this.context).d(bean.getMsg());
        }
    }
}
