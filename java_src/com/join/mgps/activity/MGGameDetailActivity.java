package com.join.mgps.activity;

import android.app.Activity;
import android.app.Dialog;
import android.content.ClipboardManager;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.AbsListView;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import com.BaseActivity;
import com.MApplication;
import com.bykv.vk.component.ttvideo.player.C;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.haima.hmcp.Constants;
import com.haima.hmcp.utils.HmIMEManager;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.utils.DlTaskManager;
import com.join.kotlin.utils.extention.MobclickAgentKt;
import com.join.mgps.Util.AESUtils;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentToDetialBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.login.LoginSplashActivity_;
import com.join.mgps.adapter.MGGameDetailAdapter;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.customview.ScrollTextViewLayout;
import com.join.mgps.customview.XListView2;
import com.join.mgps.db.tables.PurchasedListTable;
import com.join.mgps.dto.AccountGetVoucherResult;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CommentAllListBean;
import com.join.mgps.dto.CommentBaseBean;
import com.join.mgps.dto.CommentPraiseBean;
import com.join.mgps.dto.CommentResponse;
import com.join.mgps.dto.CommentTokenBean;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.DetailResultBeanV3;
import com.join.mgps.dto.DetialIntentBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.GameDetialBookTag;
import com.join.mgps.dto.GameDetialStrategyItem;
import com.join.mgps.dto.GameDetialStrategyTag;
import com.join.mgps.dto.GameFromBooleanBean;
import com.join.mgps.dto.GameFromPopoWinBean;
import com.join.mgps.dto.GamePariseRequest;
import com.join.mgps.dto.GameScore;
import com.join.mgps.dto.GameVoucherBean;
import com.join.mgps.dto.GiftPackageDataInfoBean;
import com.join.mgps.dto.GiftPackageDataOperationBean;
import com.join.mgps.dto.GiftPackageOperationBean;
import com.join.mgps.dto.InformationCommentBean;
import com.join.mgps.dto.PapayVoucherResultMain;
import com.join.mgps.dto.PariseBackData;
import com.join.mgps.dto.RecommendInfomationBean;
import com.join.mgps.dto.RequestCommentpraiseArgs;
import com.join.mgps.dto.RequestGameIdArgs;
import com.join.mgps.dto.RequestdetialFolowAndBeSpeak;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.ServiceState;
import com.join.mgps.dto.ShareBean;
import com.join.mgps.dto.TipBean;
import com.join.mgps.enums.Dtype;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.papa.sim.statistic.Where;
import com.sigmob.sdk.base.mta.PointType;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.springframework.util.LinkedMultiValueMap;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.mg_game_detail_layout)
public class MGGameDetailActivity extends BaseActivity {
    private static final String TAG = "MGGameDetailActivity";
    static String gameTitle = "";
    static String gamefromid = "0";
    static boolean isShowPo;
    private UserInfo accountBean;
    private Animation animation;

    @ViewById
    ImageView backBtn;

    @ViewById
    ImageView back_image;
    GameFromPopoWinBean bean;

    @ViewById
    TextView biground;

    @ViewById
    ProgressBar butnProgressBar;

    @ViewById
    ImageView butn_showdownload;

    @ViewById
    RelativeLayout container;
    private Activity context;
    private List<MGGameDetailAdapter.y0> dataSet;
    private DetailResultBeanV3 detailResultBean;
    private IntentToDetialBean detialBean;

    @ViewById
    RelativeLayout detialDownBottom;
    String device_id;

    @ViewById
    LinearLayout downloadLayout;

    @ViewById
    ImageView downloadLine;

    @ViewById
    RelativeLayout downloadRLayout2;
    private DownloadTask downloadTask;

    @ViewById(R.id.title_normal_download_cdv)
    CustomerDownloadView downloadView;
    private int downloadingNumber;
    EditText ed_text;

    @Extra
    ExtBean extBean;

    @ViewById
    TextView gameDescribeInit;
    String gameId;

    @ViewById
    ListView gameListView;
    private String game_comment_count;
    private GameScore game_score;

    @ViewById
    ImageView hasNewFinishedGameImage;

    @ViewById
    ImageView imageLoading;

    @ViewById
    TextView instalButtomButn;

    @ViewById
    RelativeLayout instalbutnLayout;
    private IntentDateBean intentDateBean;

    @Extra
    IntentDateBean intentdate;
    private boolean isLoadSuccess;
    private RelativeLayout layoutM;

    @ViewById
    View linebutn;
    public XListView2 list;
    LinearLayout ll_build;
    LinearLayout ll_dismiss;
    LinearLayout ll_our;
    LinearLayout ll_show_finish;

    @ViewById(resName = "loding_layout")
    LinearLayout loading;
    private com.join.mgps.dialog.f1 loadingDialog;

    @ViewById
    LinearLayout loding_faile;
    com.join.mgps.customview.t mFavoriteDialog;
    com.join.mgps.rpc.o mRpcPawalletClient;
    private MGGameDetailAdapter mgGameDetailAdapter;
    private Dialog myDialog;
    v myPopoAdapter;
    PtrClassicFrameLayout myswip;
    private int num;

    @ViewById
    TextView percent;
    PopupWindow popupWindow;

    @Pref
    PrefDef_ prefDef;

    @ViewById
    RelativeLayout progressbarLayout;
    com.join.mgps.rpc.e recommendClient;
    com.join.mgps.rpc.b rpcAccountClient;
    com.join.mgps.rpc.f rpcCommentClient;
    com.join.mgps.rpc.b rpcForumClient;

    @ViewById
    TextView scroll_text;

    @ViewById
    ScrollTextViewLayout scroll_text_layout;

    @ViewById
    ImageView search_detial_image;

    @ViewById
    ImageView share;
    private com.join.android.app.common.manager.b tintManager;

    @ViewById
    RelativeLayout title_bar_layout;

    @ViewById
    ImageView title_normal_search_img;

    @ViewById
    TextView title_textview;

    @ViewById
    View topBarline;
    TextView tv_finish;
    TextView tv_show_tips;
    private int uid;
    String version;
    private boolean defaultDown = false;
    private int lineCount = 0;
    Map<String, DownloadTask> downloadedMap = new HashMap();
    Map<String, DownloadTask> downloadingMap = new HashMap();
    Handler handler2 = new k();
    com.join.mgps.customview.t mDialog = null;
    private CommentAllListBean.SelfCommentBean selfCommit = null;
    com.join.mgps.customview.t mGiftDialog = null;
    com.join.mgps.customview.t mVipDialog = null;
    int countRed = 0;
    int page = 1;
    List<GameFromPopoWinBean.DataBean> listData = new ArrayList();
    boolean isCommit = true;
    int count = 0;

    class a implements MGGameDetailAdapter.v0 {
        a() {
        }

        @Override // com.join.mgps.adapter.MGGameDetailAdapter.v0
        public void a(InformationCommentBean bean) {
        }

        @Override // com.join.mgps.adapter.MGGameDetailAdapter.v0
        public void b(InformationCommentBean.Sub sub) {
            InformationCommentBean informationCommentBean = new InformationCommentBean();
            informationCommentBean.setUser_name(sub.getUser_name());
            informationCommentBean.setComment_id(sub.getUser_id());
            informationCommentBean.setUser_id(sub.getUser_id());
            if (MGGameDetailActivity.this.detailResultBean != null) {
                GameCommentActivity_.intent(MGGameDetailActivity.this.context).a(MGGameDetailActivity.this.detailResultBean.getCrc_sign_id()).d(true).b(informationCommentBean).start();
            }
        }

        @Override // com.join.mgps.adapter.MGGameDetailAdapter.v0
        public void c(CommentBaseBean commitDataBean) {
            if (MGGameDetailActivity.this.detailResultBean != null) {
                MGGameDetailActivity.this.onRootViewX(commitDataBean);
            }
        }

        @Override // com.join.mgps.adapter.MGGameDetailAdapter.v0
        public void d() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.join.mgps.adapter.MGGameDetailAdapter.v0
        public void e() {
            if (AccountUtil_.getInstance_(MGGameDetailActivity.this.context).isTourist()) {
                ((LoginSplashActivity_.IntentBuilder_) LoginSplashActivity_.intent(MGGameDetailActivity.this.context).flags(C.ENCODING_PCM_MU_LAW)).start();
            } else {
                MGGameDetailActivity.this.initPopowindow();
                MGGameDetailActivity.this.getGameFromList();
            }
        }

        @Override // com.join.mgps.adapter.MGGameDetailAdapter.v0
        public void f() {
            ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
            forumPostsBean.setPid((int) MGGameDetailActivity.this.detailResultBean.getForum_id());
            com.join.mgps.Util.r0.v0(MGGameDetailActivity.this, forumPostsBean);
        }

        @Override // com.join.mgps.adapter.MGGameDetailAdapter.v0
        public void g() {
        }

        @Override // com.join.mgps.adapter.MGGameDetailAdapter.v0
        public void h() {
            if (MGGameDetailActivity.this.detailResultBean.getGame_book() == 1 || IntentUtil.getInstance().goLoginNetGame(MGGameDetailActivity.this.context)) {
                return;
            }
            MGGameDetailActivity.this.changeGameFollow(4);
        }

        @Override // com.join.mgps.adapter.MGGameDetailAdapter.v0
        public void onPraise(CommentBaseBean bean, int position, int type) {
            MGGameDetailActivity.this.onPraiseX(bean, position, type);
        }

        @Override // com.join.mgps.adapter.MGGameDetailAdapter.v0
        public void onRootView(CommentBaseBean bean) {
            MGGameDetailActivity.this.onRootViewX(bean);
        }

        @Override // com.join.mgps.adapter.MGGameDetailAdapter.v0
        public void onUnPraise(CommentBaseBean bean, int position, int type) {
            MGGameDetailActivity.this.onUnPraiseX(bean, position, type);
        }
    }

    class b implements com.join.mgps.Util.x1.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f54139a;

        b(final boolean val$needRetry) {
            this.f54139a = val$needRetry;
        }

        @Override // com.join.mgps.Util.x1.b
        public void a(com.join.mgps.Util.x1.c result) {
            if (result.a() == 1) {
                MGGameDetailActivity.this.finish();
                com.join.mgps.Util.x1.c().e(MGGameDetailActivity.this.context, MGGameDetailActivity.this.extBean.getFrom_id(), result.b());
                com.join.mgps.Util.a3.b(MGGameDetailActivity.this.context).d("授权成功");
            } else if (this.f54139a) {
                MGGameDetailActivity.this.updatePay(false);
            }
        }
    }

    class c implements CompoundButton.OnCheckedChangeListener {
        c() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
            MGGameDetailActivity.this.prefDef.noFavoriteTips().g(Boolean.valueOf(isChecked));
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            com.join.mgps.customview.t tVar = MGGameDetailActivity.this.mFavoriteDialog;
            if (tVar != null && tVar.isShowing()) {
                MGGameDetailActivity.this.mFavoriteDialog.dismiss();
            }
            MGGameDetailActivity.this.followGame();
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

    class f implements Animation.AnimationListener {
        f() {
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

    class g implements PopupWindow.OnDismissListener {
        g() {
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            MGGameDetailActivity mGGameDetailActivity = MGGameDetailActivity.this;
            mGGameDetailActivity.page = 1;
            mGGameDetailActivity.cleanData();
            MGGameDetailActivity mGGameDetailActivity2 = MGGameDetailActivity.this;
            mGGameDetailActivity2.countRed = 0;
            mGGameDetailActivity2.setPopWindowBackgroundAlpha(1.0f);
            MGGameDetailActivity.gameTitle = MGGameDetailActivity.this.ed_text.getText().toString().trim();
            MGGameDetailActivity mGGameDetailActivity3 = MGGameDetailActivity.this;
            if (mGGameDetailActivity3.isCommit) {
                return;
            }
            mGGameDetailActivity3.isCommit = true;
            mGGameDetailActivity3.AddGameToFrom();
        }
    }

    class h implements com.join.mgps.customview.j {
        h() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            MGGameDetailActivity mGGameDetailActivity = MGGameDetailActivity.this;
            mGGameDetailActivity.page = 1;
            mGGameDetailActivity.Refresh();
            MGGameDetailActivity.this.getGameFromList();
        }
    }

    class i implements com.join.mgps.customview.i {
        i() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            MGGameDetailActivity.this.Refresh();
            MGGameDetailActivity.this.getGameFromList();
        }
    }

    class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGGameDetailActivity.this.popupWindow.dismiss();
        }
    }

    class k extends Handler {
        k() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            MGGameDetailActivity mGGameDetailActivity = MGGameDetailActivity.this;
            mGGameDetailActivity.accountBean = AccountUtil_.getInstance_(mGGameDetailActivity.getApplicationContext()).getAccountData();
            int i10 = msg.what;
            if (i10 == 1) {
                if (IntentUtil.getInstance().goLoginInteractive(MGGameDetailActivity.this.context)) {
                    return;
                }
                MGGameDetailActivity.this.postPraised((InformationCommentBean) msg.obj);
                return;
            }
            if (i10 == 2) {
                if (IntentUtil.getInstance().goLoginNetGame(MGGameDetailActivity.this.context)) {
                    return;
                }
                MGGameDetailActivity.this.showDialog((GiftPackageDataInfoBean) msg.obj);
                return;
            }
            if (i10 == 3) {
                if (IntentUtil.getInstance().goLoginNetGame(MGGameDetailActivity.this.context)) {
                    return;
                }
                GiftPackageDataInfoBean giftPackageDataInfoBean = (GiftPackageDataInfoBean) msg.obj;
                if (MGGameDetailActivity.this.checkRight(giftPackageDataInfoBean.getGift_package_type())) {
                    MGGameDetailActivity.this.getGiftPackageOperation(giftPackageDataInfoBean);
                    return;
                }
                return;
            }
            if (i10 == 4 && !IntentUtil.getInstance().goLoginNetGame(MGGameDetailActivity.this.context)) {
                MGGameDetailActivity mGGameDetailActivity2 = MGGameDetailActivity.this;
                mGGameDetailActivity2.loadingDialog = com.join.mgps.Util.h0.h0(mGGameDetailActivity2.context).x(MGGameDetailActivity.this.context);
                MGGameDetailActivity.this.loadingDialog.show();
                MGGameDetailActivity.this.getVoucher((GameVoucherBean) msg.obj);
            }
        }
    }

    class l implements View.OnClickListener {
        l() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            MGGameDetailActivity.isShowPo = true;
            MGGameDetailActivity.this.startActivity(new Intent(MGGameDetailActivity.this, (Class<?>) BuildGameFromActivity_.class));
        }
    }

    class m implements View.OnClickListener {
        m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            String strTrim = MGGameDetailActivity.this.ed_text.getText().toString().trim();
            MGGameDetailActivity.gameTitle = strTrim;
            if (com.join.mgps.Util.t.f(strTrim)) {
                MGGameDetailActivity.this.showToast("不能上传表情");
                return;
            }
            MGGameDetailActivity.this.popupWindow.dismiss();
            MGGameDetailActivity mGGameDetailActivity = MGGameDetailActivity.this;
            if (mGGameDetailActivity.isCommit) {
                return;
            }
            mGGameDetailActivity.isCommit = true;
            mGGameDetailActivity.AddGameToFrom();
        }
    }

    class n implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GiftPackageDataInfoBean f54152b;

        n(final GiftPackageDataInfoBean val$bean) {
            this.f54152b = val$bean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ((ClipboardManager) MGGameDetailActivity.this.context.getSystemService(Constants.WS_MESSAGE_TYPE_CLIPBOARD)).setText(this.f54152b.getGift_package_code());
            com.join.mgps.Util.a3.b(MGGameDetailActivity.this.context).d(this.f54152b.getGift_package_code() + "已复制到剪贴板");
        }
    }

    class o implements View.OnClickListener {
        o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (MGGameDetailActivity.this.myDialog == null || !MGGameDetailActivity.this.myDialog.isShowing()) {
                return;
            }
            MGGameDetailActivity.this.myDialog.dismiss();
        }
    }

    class p implements View.OnClickListener {
        p() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadTask downloadTaskG;
            if (MGGameDetailActivity.this.myDialog != null && MGGameDetailActivity.this.myDialog.isShowing()) {
                MGGameDetailActivity.this.myDialog.dismiss();
            }
            int status = MGGameDetailActivity.this.downloadTask != null ? MGGameDetailActivity.this.downloadTask.getStatus() : 0;
            if (UtilsMy.x0(MGGameDetailActivity.this.detailResultBean.getPay_tag_info(), MGGameDetailActivity.this.detailResultBean.getCrc_sign_id()) > 0) {
                status = 43;
            }
            if (status != 0) {
                if (status == 5) {
                    UtilsMy.p4(MGGameDetailActivity.this.context, MGGameDetailActivity.this.downloadTask, "2");
                    return;
                } else if (status != 9 && status != 43) {
                    return;
                }
            }
            MGGameDetailActivity.this.downloadTask.setKeyword(Where.detail.name());
            if (com.join.mgps.Util.t2.i(MGGameDetailActivity.this.downloadTask.getCrc_link_type_val()) && (downloadTaskG = q5.f.M().G(MGGameDetailActivity.this.downloadTask.getCrc_link_type_val())) != null) {
                UtilsMy.V4(MGGameDetailActivity.this.downloadTask, downloadTaskG);
            }
            MGGameDetailActivity mGGameDetailActivity = MGGameDetailActivity.this;
            mGGameDetailActivity.addFrom(mGGameDetailActivity.downloadTask);
            if (MGGameDetailActivity.this.detailResultBean != null) {
                if (UtilsMy.z0(MGGameDetailActivity.this.detailResultBean.getPay_tag_info(), MGGameDetailActivity.this.detailResultBean.getCrc_sign_id()) > 0) {
                    ExtBean extBean = MGGameDetailActivity.this.extBean;
                    if (extBean == null || !"checkgame".equals(extBean.getFrom())) {
                        UtilsMy.z4(MGGameDetailActivity.this.context, MGGameDetailActivity.this.detailResultBean.getCrc_sign_id());
                    } else {
                        UtilsMy.A4(MGGameDetailActivity.this.context, MGGameDetailActivity.this.detailResultBean.getCrc_sign_id(), MGGameDetailActivity.this.extBean.getFrom_id());
                    }
                } else {
                    UtilsMy.B1(MGGameDetailActivity.this.downloadTask, MGGameDetailActivity.this.detailResultBean);
                    if (!UtilsMy.o1(MGGameDetailActivity.this.context, MGGameDetailActivity.this.downloadTask)) {
                        if (MGGameDetailActivity.this.detailResultBean.getDown_status() == 5) {
                            UtilsMy.l1(MGGameDetailActivity.this.context, MGGameDetailActivity.this.downloadTask);
                        } else {
                            UtilsMy.U0(MGGameDetailActivity.this.context, MGGameDetailActivity.this.downloadTask, MGGameDetailActivity.this.detailResultBean.getTp_down_url(), MGGameDetailActivity.this.detailResultBean.getOther_down_switch(), MGGameDetailActivity.this.detailResultBean.getCdn_down_switch());
                        }
                    }
                    MGGameDetailActivity.this.onDetailDownload();
                }
            }
            MGGameDetailActivity.this.downloadTask.setStatus(2);
        }
    }

    class q implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GiftPackageDataOperationBean f54156b;

        q(final GiftPackageDataOperationBean val$bean) {
            this.f54156b = val$bean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ((ClipboardManager) MGGameDetailActivity.this.context.getSystemService(Constants.WS_MESSAGE_TYPE_CLIPBOARD)).setText(this.f54156b.getGift_info().getGift_package_code());
            com.join.mgps.Util.a3.b(MGGameDetailActivity.this.context).d(this.f54156b.getGift_info().getGift_package_code() + "已复制到剪贴板");
        }
    }

    class r implements View.OnClickListener {
        r() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (MGGameDetailActivity.this.myDialog == null || !MGGameDetailActivity.this.myDialog.isShowing()) {
                return;
            }
            MGGameDetailActivity.this.myDialog.dismiss();
        }
    }

    class s implements View.OnClickListener {
        s() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadTask downloadTaskG;
            if (MGGameDetailActivity.this.myDialog != null && MGGameDetailActivity.this.myDialog.isShowing()) {
                MGGameDetailActivity.this.myDialog.dismiss();
            }
            int status = MGGameDetailActivity.this.downloadTask != null ? MGGameDetailActivity.this.downloadTask.getStatus() : 0;
            if (UtilsMy.x0(MGGameDetailActivity.this.detailResultBean.getPay_tag_info(), MGGameDetailActivity.this.detailResultBean.getCrc_sign_id()) > 0) {
                status = 43;
            }
            if (status != 0) {
                if (status == 5) {
                    UtilsMy.p4(MGGameDetailActivity.this.context, MGGameDetailActivity.this.downloadTask, "2");
                    return;
                } else if (status != 9 && status != 43) {
                    return;
                }
            }
            if (MGGameDetailActivity.this.detailResultBean.getDown_status() == 2) {
                return;
            }
            MGGameDetailActivity.this.downloadTask.setKeyword(Where.detail.name());
            if (com.join.mgps.Util.t2.i(MGGameDetailActivity.this.downloadTask.getCrc_link_type_val()) && (downloadTaskG = q5.f.M().G(MGGameDetailActivity.this.downloadTask.getCrc_link_type_val())) != null) {
                UtilsMy.V4(MGGameDetailActivity.this.downloadTask, downloadTaskG);
            }
            MGGameDetailActivity mGGameDetailActivity = MGGameDetailActivity.this;
            mGGameDetailActivity.addFrom(mGGameDetailActivity.downloadTask);
            if (MGGameDetailActivity.this.detailResultBean != null) {
                if (UtilsMy.z0(MGGameDetailActivity.this.detailResultBean.getPay_tag_info(), MGGameDetailActivity.this.detailResultBean.getCrc_sign_id()) > 0) {
                    UtilsMy.z4(MGGameDetailActivity.this.context, MGGameDetailActivity.this.detailResultBean.getCrc_sign_id());
                } else {
                    UtilsMy.B1(MGGameDetailActivity.this.downloadTask, MGGameDetailActivity.this.detailResultBean);
                    if (!UtilsMy.o1(MGGameDetailActivity.this.context, MGGameDetailActivity.this.downloadTask)) {
                        if (MGGameDetailActivity.this.detailResultBean.getDown_status() == 5) {
                            UtilsMy.l1(MGGameDetailActivity.this.context, MGGameDetailActivity.this.downloadTask);
                        } else {
                            UtilsMy.U0(MGGameDetailActivity.this.context, MGGameDetailActivity.this.downloadTask, MGGameDetailActivity.this.detailResultBean.getTp_down_url(), MGGameDetailActivity.this.detailResultBean.getOther_down_switch(), MGGameDetailActivity.this.detailResultBean.getCdn_down_switch());
                        }
                    }
                    MGGameDetailActivity.this.onDetailDownload();
                }
            }
            MGGameDetailActivity.this.downloadTask.setStatus(2);
        }
    }

    class t implements View.OnClickListener {
        t() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            MGGameDetailActivity.this.search_detial_back();
        }
    }

    class u implements AbsListView.OnScrollListener {
        u() {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
            try {
                if (firstVisibleItem == 0) {
                    View childAt = MGGameDetailActivity.this.gameListView.getChildAt(0);
                    if (childAt == null || childAt.getTop() != 0) {
                        MGGameDetailActivity.this.backBtn.setVisibility(8);
                        MGGameDetailActivity.this.title_bar_layout.setVisibility(0);
                        MGGameDetailActivity.this.topBarline.setVisibility(0);
                        if (MGGameDetailActivity.this.tintManager != null) {
                            MGGameDetailActivity.this.tintManager.n(R.color.ov_status_bar);
                        }
                    } else if (MGGameDetailActivity.this.detailResultBean.getSp_tpl_two_position() == 0 || MGGameDetailActivity.this.detailResultBean.getBespeak_switch() == 1) {
                        MGGameDetailActivity.this.topBarline.setVisibility(8);
                        MGGameDetailActivity.this.backBtn.setVisibility(0);
                        MGGameDetailActivity.this.title_bar_layout.setVisibility(8);
                        MGGameDetailActivity.this.tintManager.n(R.color.transparent);
                    } else {
                        MGGameDetailActivity.this.backBtn.setVisibility(8);
                        MGGameDetailActivity.this.title_bar_layout.setVisibility(0);
                        MGGameDetailActivity.this.topBarline.setVisibility(0);
                        MGGameDetailActivity.this.tintManager.n(R.color.ov_status_bar);
                    }
                } else {
                    MGGameDetailActivity.this.backBtn.setVisibility(8);
                    MGGameDetailActivity.this.title_bar_layout.setVisibility(0);
                    MGGameDetailActivity.this.topBarline.setVisibility(0);
                    MGGameDetailActivity.this.tintManager.n(R.color.ov_status_bar);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView view, int scrollState) {
        }
    }

    class v extends BaseAdapter {

        class a implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ int f54163b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ w f54164c;

            a(final int val$position, final w val$holder) {
                this.f54163b = val$position;
                this.f54164c = val$holder;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                if (!MGGameDetailActivity.this.listData.get(this.f54163b).getCurrent_game_state().equals("0")) {
                    this.f54164c.f54167b.setBackgroundResource(R.drawable.follow_none_image);
                    MGGameDetailActivity.this.listData.get(this.f54163b).setCurrent_game_state("0");
                    MGGameDetailActivity mGGameDetailActivity = MGGameDetailActivity.this;
                    mGGameDetailActivity.DelectGame(mGGameDetailActivity.listData.get(this.f54163b).getId(), MGGameDetailActivity.this.gameId, this.f54164c);
                    MGGameDetailActivity mGGameDetailActivity2 = MGGameDetailActivity.this;
                    int i10 = mGGameDetailActivity2.countRed - 1;
                    mGGameDetailActivity2.countRed = i10;
                    mGGameDetailActivity2.countRed = i10;
                    if (i10 == 0) {
                        mGGameDetailActivity2.detailResultBean.setGame_follow(0);
                        MGGameDetailActivity.this.refreshAdapter();
                        return;
                    }
                    return;
                }
                this.f54164c.f54167b.setBackgroundResource(R.drawable.followed_image);
                MGGameDetailActivity.this.ll_show_finish.setVisibility(0);
                MGGameDetailActivity.this.list.setVisibility(8);
                MGGameDetailActivity.this.tv_finish.setVisibility(0);
                MGGameDetailActivity.this.tv_show_tips.setText("收藏成功");
                MGGameDetailActivity.this.ll_build.setVisibility(8);
                MGGameDetailActivity.gamefromid = MGGameDetailActivity.this.listData.get(this.f54163b).getId();
                MGGameDetailActivity mGGameDetailActivity3 = MGGameDetailActivity.this;
                mGGameDetailActivity3.isCommit = false;
                int i11 = mGGameDetailActivity3.countRed + 1;
                mGGameDetailActivity3.countRed = i11;
                if (i11 > 0) {
                    mGGameDetailActivity3.detailResultBean.setGame_follow(1);
                    MGGameDetailActivity.this.refreshAdapter();
                }
            }
        }

        v() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return MGGameDetailActivity.this.listData.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int position) {
            return MGGameDetailActivity.this.listData.get(position);
        }

        @Override // android.widget.Adapter
        public long getItemId(int position) {
            return position;
        }

        @Override // android.widget.Adapter
        public View getView(final int position, View convertView, ViewGroup parent) {
            w wVar;
            if (convertView == null) {
                convertView = LayoutInflater.from(MGGameDetailActivity.this.context).inflate(R.layout.list_item, (ViewGroup) null);
                wVar = MGGameDetailActivity.this.new w();
                wVar.f54166a = (SimpleDraweeView) convertView.findViewById(R.id.iv_img);
                wVar.f54167b = (ImageView) convertView.findViewById(R.id.iv_coll);
                wVar.f54168c = (TextView) convertView.findViewById(R.id.tv_title);
                wVar.f54169d = (TextView) convertView.findViewById(R.id.tv_size);
                wVar.f54171f = (RelativeLayout) convertView.findViewById(R.id.ll_gameform);
                wVar.f54172g = (RelativeLayout) convertView.findViewById(R.id.rl_content);
                convertView.setTag(wVar);
            } else {
                wVar = (w) convertView.getTag();
            }
            if (MGGameDetailActivity.this.listData.get(position).getGame_list().get(0).getGame_ico() == null || MGGameDetailActivity.this.listData.get(position).getGame_list().get(0).getGame_ico().equals("")) {
                wVar.f54166a.setImageResource(R.drawable.main_normal_icon);
            } else {
                wVar.f54166a.setImageURI(MGGameDetailActivity.this.listData.get(position).getGame_list().get(0).getGame_ico());
            }
            wVar.f54168c.setText(MGGameDetailActivity.this.listData.get(position).getTitle());
            wVar.f54169d.setText(MGGameDetailActivity.this.listData.get(position).getGame_count() + "款");
            if (MGGameDetailActivity.this.listData.get(position).getCurrent_game_state().equals("0")) {
                wVar.f54167b.setBackgroundResource(R.drawable.follow_none_image);
            } else {
                wVar.f54167b.setBackgroundResource(R.drawable.followed_image);
                MGGameDetailActivity.this.countRed++;
            }
            wVar.f54172g.setOnClickListener(new a(position, wVar));
            return convertView;
        }
    }

    class w {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        SimpleDraweeView f54166a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        ImageView f54167b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        TextView f54168c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        TextView f54169d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        TextView f54170e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        RelativeLayout f54171f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        RelativeLayout f54172g;

        w() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkRight(String finalType) {
        if (com.join.mgps.Util.t2.h(finalType)) {
            com.join.mgps.Util.a3.b(this.context).d(this.context.getString(R.string.unknow_gift_type));
            return false;
        }
        UserInfo accountData = AccountUtil_.getInstance_(this.context).getAccountData();
        if (finalType.equals("6")) {
            if (!com.join.mgps.Util.b.piv(accountData)) {
                showVipDialog();
                return false;
            }
        } else if (finalType.equals("7") && accountData.getSVIPLevel() <= 0) {
            showSvipGiftDialog();
            return false;
        }
        return true;
    }

    private void dialogDismiss() {
        com.join.mgps.customview.t tVar = this.mDialog;
        if (tVar == null || !tVar.isShowing()) {
            return;
        }
        this.mDialog.dismiss();
    }

    private void dismissSvipGiftDialog() {
        com.join.mgps.customview.t tVar = this.mGiftDialog;
        if (tVar == null || !tVar.isShowing()) {
            return;
        }
        this.mGiftDialog.dismiss();
    }

    private void dismissVipDialog() {
        com.join.mgps.customview.t tVar = this.mVipDialog;
        if (tVar == null || !tVar.isShowing()) {
            return;
        }
        this.mVipDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit lambda$onEventMainThread$0() {
        updateDownloadView();
        return null;
    }

    private void setAdGroup() {
        DetailResultBeanV3 detailResultBeanV3 = this.detailResultBean;
        if (detailResultBeanV3 == null || detailResultBeanV3.getBanner() == null || this.detailResultBean.getBanner().size() < 1) {
            return;
        }
        this.dataSet.add(new MGGameDetailAdapter.y0(MGGameDetailAdapter.ViewType.DETIAL_ADGROUP, new MGGameDetailAdapter.y0.d(this.detailResultBean.getBanner())));
    }

    private void setCommit() {
        DetailResultBeanV3 detailResultBeanV3 = this.detailResultBean;
        if (detailResultBeanV3 == null || detailResultBeanV3.getComment_switch() != 1) {
            return;
        }
        this.detailResultBean.setSelf_comment(this.selfCommit);
        this.detailResultBean.setGame_comment_count(this.game_comment_count);
        this.detailResultBean.setGame_score(this.game_score);
        for (int i10 = 0; this.detailResultBean.getCommitDataBeanList() != null && i10 < this.detailResultBean.getCommitDataBeanList().size(); i10++) {
            this.dataSet.add(new MGGameDetailAdapter.y0(MGGameDetailAdapter.ViewType.COMMIT, new MGGameDetailAdapter.y0.a(this.detailResultBean.getComment_switch() == 1, this.detailResultBean.getCommitDataBeanList().get(i10), true)));
        }
    }

    private void setCommitFooter() {
        DetailResultBeanV3 detailResultBeanV3 = this.detailResultBean;
        if (detailResultBeanV3 != null) {
            if (detailResultBeanV3.getComment_switch() != 1) {
                return;
            }
            this.dataSet.add(new MGGameDetailAdapter.y0(MGGameDetailAdapter.ViewType.COMMIT_FOOTER, new MGGameDetailAdapter.y0.b(this.detailResultBean.getComment_switch() == 1, this.detailResultBean.getComment_count(), this.detailResultBean.getCrc_sign_id())));
        }
    }

    private void setCommitHeader() {
        this.dataSet.add(new MGGameDetailAdapter.y0(MGGameDetailAdapter.ViewType.COMMIT_HEADER, new MGGameDetailAdapter.y0.c(this.detailResultBean.getRecommend_information_switch(), this.detailResultBean.getRecommend_game_switch(), this.detailResultBean.getComment_switch(), this.detailResultBean.getComment_count(), this.detailResultBean.getCrc_sign_id())));
    }

    private void setCommitReply(CommentBaseBean bean) {
    }

    private void setDetialTitle() {
        if (this.detailResultBean == null) {
            return;
        }
        this.dataSet.add(new MGGameDetailAdapter.y0(MGGameDetailAdapter.ViewType.GAME_ITEM_TOP, new MGGameDetailAdapter.y0.o(null, "游戏详情")));
    }

    private void setFastEntry() {
        if (this.detailResultBean.getGame_service_switch() == 0) {
            return;
        }
        this.dataSet.add(new MGGameDetailAdapter.y0(MGGameDetailAdapter.ViewType.GAME_FAST_ENTRY, new MGGameDetailAdapter.y0.e(this.detailResultBean.getForum_id(), this.detailResultBean.getServer_qq(), this.detailResultBean.getPlayer_qq(), this.detailResultBean.getFast_entry_no4(), this.detailResultBean.getForum_count())));
    }

    private void setGameAd() {
        DetailResultBeanV3 detailResultBeanV3 = this.detailResultBean;
        if (detailResultBeanV3 == null || detailResultBeanV3.getRecommend_adinfo_switch() == 0 || this.detailResultBean.getRecommend_ad_info() == null || this.detailResultBean.getRecommend_ad_info().size() == 0) {
            return;
        }
        this.dataSet.add(new MGGameDetailAdapter.y0(MGGameDetailAdapter.ViewType.GAMEAD, new MGGameDetailAdapter.y0.f(this.detailResultBean.getRecommend_adinfo_switch(), this.detailResultBean.getRecommend_ad_info())));
    }

    private void setGameGifts() {
    }

    private void setGameGiftsAndServiceItem() {
        DetailResultBeanV3 detailResultBeanV3 = this.detailResultBean;
        if (detailResultBeanV3 == null) {
            return;
        }
        List<GiftPackageDataInfoBean> game_gift_package = detailResultBeanV3.getGame_gift_package();
        List<ServiceState> game_server_state = this.detailResultBean.getGame_server_state();
        if ((game_gift_package == null || game_gift_package.size() == 0) && (game_server_state == null || game_server_state.size() == 0)) {
            return;
        }
        this.dataSet.add(this.detailResultBean.getGame_server_switch() == 1 ? new MGGameDetailAdapter.y0(MGGameDetailAdapter.ViewType.GIFT_AND_SERVICE, new MGGameDetailAdapter.y0.j(this.detailResultBean.getGame_gift_package(), this.detailResultBean.getGame_server_state())) : new MGGameDetailAdapter.y0(MGGameDetailAdapter.ViewType.GIFT_AND_SERVICE, new MGGameDetailAdapter.y0.j(this.detailResultBean.getGame_gift_package(), null)));
    }

    private void setGameGiftsBottom() {
        DetailResultBeanV3 detailResultBeanV3 = this.detailResultBean;
        if (detailResultBeanV3 == null || detailResultBeanV3.getGame_gift_package() == null || this.detailResultBean.getGame_gift_package().size() < 1) {
            return;
        }
        this.dataSet.add(new MGGameDetailAdapter.y0(MGGameDetailAdapter.ViewType.GAME_GIFTS_BOTTOM, new MGGameDetailAdapter.y0.g(true)));
    }

    private void setGameGiftsItem() {
        DetailResultBeanV3 detailResultBeanV3 = this.detailResultBean;
        if (detailResultBeanV3 == null || detailResultBeanV3.getGame_gift_package() == null || this.detailResultBean.getGame_gift_package().size() < 1) {
            return;
        }
        for (int i10 = 0; i10 < this.detailResultBean.getGame_gift_package().size(); i10++) {
            this.dataSet.add(new MGGameDetailAdapter.y0(MGGameDetailAdapter.ViewType.GAME_GIFTS_ITEM, new MGGameDetailAdapter.y0.h(true, this.detailResultBean.getGame_gift_package().get(i10))));
        }
    }

    private void setGameGiftsTop() {
        DetailResultBeanV3 detailResultBeanV3 = this.detailResultBean;
        if (detailResultBeanV3 == null || detailResultBeanV3.getGame_gift_package() == null || this.detailResultBean.getGame_gift_package().size() < 1) {
            return;
        }
        DetialIntentBean detialIntentBean = new DetialIntentBean();
        detialIntentBean.setGameId(this.detailResultBean.getCrc_sign_id());
        detialIntentBean.setIntentType(4);
        this.dataSet.add(new MGGameDetailAdapter.y0(MGGameDetailAdapter.ViewType.GAME_ITEM_TOP, new MGGameDetailAdapter.y0.o(detialIntentBean, "福利礼包")));
    }

    private void setInformationItem() {
        DetailResultBeanV3 detailResultBeanV3 = this.detailResultBean;
        if (detailResultBeanV3 == null || detailResultBeanV3.getRecommend_information_switch() != 1) {
            return;
        }
        List<RecommendInfomationBean> recommend_information = this.detailResultBean.getRecommend_information();
        if (this.detailResultBean == null || recommend_information == null || recommend_information.size() < 2) {
            return;
        }
        int i10 = 0;
        while (i10 < recommend_information.size()) {
            this.dataSet.add(new MGGameDetailAdapter.y0(MGGameDetailAdapter.ViewType.INFORMATION, new MGGameDetailAdapter.y0.k(i10 != 0, this.detailResultBean.getRecommend_information_switch(), recommend_information.get(i10))));
            i10++;
        }
        setNullItem();
    }

    private void setInformationItemTitle() {
        DetailResultBeanV3 detailResultBeanV3 = this.detailResultBean;
        if (detailResultBeanV3 == null || detailResultBeanV3.getRecommend_information() == null || this.detailResultBean.getRecommend_information().size() < 1 || this.detailResultBean.getRecommend_information_switch() != 1) {
            return;
        }
        DetialIntentBean detialIntentBean = new DetialIntentBean();
        detialIntentBean.setGameId(this.detailResultBean.getCrc_sign_id());
        detialIntentBean.setIntentType(2);
        this.dataSet.add(new MGGameDetailAdapter.y0(MGGameDetailAdapter.ViewType.GAME_ITEM_TOP, new MGGameDetailAdapter.y0.o(detialIntentBean, "最新资讯")));
    }

    private void setInformationItemTop() {
    }

    private void setMessage() {
        if (this.detailResultBean.getGame_prompt() == null || this.detailResultBean.getGame_prompt().size() == 0) {
            return;
        }
        this.dataSet.add(new MGGameDetailAdapter.y0(MGGameDetailAdapter.ViewType.MESSAGE, new MGGameDetailAdapter.y0.p(this.detailResultBean.getGame_prompt())));
        setNullItem();
    }

    private void setNullItem() {
        this.dataSet.add(new MGGameDetailAdapter.y0(MGGameDetailAdapter.ViewType.NULLITEM, null));
    }

    private void setRecomTitle() {
        DetailResultBeanV3 detailResultBeanV3 = this.detailResultBean;
        if (detailResultBeanV3 == null || detailResultBeanV3.getRecommend_game() == null || this.detailResultBean.getRecommend_game().size() < 1) {
            return;
        }
        this.dataSet.add(new MGGameDetailAdapter.y0(MGGameDetailAdapter.ViewType.GAME_ITEM_TOP, new MGGameDetailAdapter.y0.o(null, "相关推荐")));
    }

    private void setRecommend() {
        if (this.detailResultBean.getRecommend_game_switch() == 0) {
            return;
        }
        this.dataSet.add(new MGGameDetailAdapter.y0(MGGameDetailAdapter.ViewType.RECOMMEND, new MGGameDetailAdapter.y0.q(this.detailResultBean.getRecommend_game_switch(), this.detailResultBean.getRecommend_game())));
        setNullItem();
    }

    private void setServiceItem() {
        DetailResultBeanV3 detailResultBeanV3;
        if (this.detailResultBean.getGame_server_switch() == 0 || (detailResultBeanV3 = this.detailResultBean) == null || detailResultBeanV3.getGame_server_state() == null || this.detailResultBean.getGame_server_state().size() < 1) {
            return;
        }
        List<ServiceState> game_server_state = this.detailResultBean.getGame_server_state();
        for (int i10 = 0; i10 < game_server_state.size(); i10++) {
            ServiceState serviceState = game_server_state.get(i10);
            this.dataSet.add(new MGGameDetailAdapter.y0(MGGameDetailAdapter.ViewType.SERVICEITEM, new MGGameDetailAdapter.y0.l(serviceState.getTitle(), serviceState.getType(), serviceState.getAdd_time())));
        }
        setNullItem();
    }

    private void setServiceItemTitle() {
        DetailResultBeanV3 detailResultBeanV3;
        if (this.detailResultBean.getGame_server_switch() == 0 || (detailResultBeanV3 = this.detailResultBean) == null || detailResultBeanV3.getGame_server_state() == null || this.detailResultBean.getGame_server_state().size() < 1) {
            return;
        }
        DetialIntentBean detialIntentBean = new DetialIntentBean();
        detialIntentBean.setGameId(this.detailResultBean.getCrc_sign_id());
        detialIntentBean.setIntentType(3);
        this.dataSet.add(new MGGameDetailAdapter.y0(MGGameDetailAdapter.ViewType.GAME_ITEM_TOP, new MGGameDetailAdapter.y0.o(detialIntentBean, "开服合服")));
    }

    private void setStrategyItem() {
        List<GameDetialStrategyItem> posts;
        DetailResultBeanV3 detailResultBeanV3 = this.detailResultBean;
        if (detailResultBeanV3 == null || detailResultBeanV3.getGame_strategy() == null || (posts = this.detailResultBean.getGame_strategy().getPosts()) == null || posts.size() < 1) {
            return;
        }
        for (int i10 = 0; i10 < posts.size(); i10++) {
            GameDetialStrategyItem gameDetialStrategyItem = posts.get(i10);
            if (i10 != 0 || gameDetialStrategyItem.getPic_list().length <= 0) {
                this.dataSet.add(new MGGameDetailAdapter.y0(MGGameDetailAdapter.ViewType.STRAYTEGYITEM_NOIMAGE, new MGGameDetailAdapter.y0.m(gameDetialStrategyItem)));
            } else if (gameDetialStrategyItem.getPic_list().length == 1) {
                RecommendInfomationBean recommendInfomationBean = new RecommendInfomationBean();
                recommendInfomationBean.setPic_list(gameDetialStrategyItem.getPic_list());
                recommendInfomationBean.setPost_id(gameDetialStrategyItem.getId());
                recommendInfomationBean.setPraise(gameDetialStrategyItem.getPraise());
                recommendInfomationBean.setCommit(gameDetialStrategyItem.getCommit());
                recommendInfomationBean.setTimes(gameDetialStrategyItem.getAdd_time() / 1000);
                recommendInfomationBean.setTitle(gameDetialStrategyItem.getSubject());
                recommendInfomationBean.setView(gameDetialStrategyItem.getView());
                GameDetialBookTag tag_name = gameDetialStrategyItem.getTag_name();
                recommendInfomationBean.setType(tag_name.getTitle());
                recommendInfomationBean.setType_color(tag_name.getColor());
                this.dataSet.add(new MGGameDetailAdapter.y0(MGGameDetailAdapter.ViewType.INFORMATIONTOP, new MGGameDetailAdapter.y0.k(false, 1, recommendInfomationBean)));
            } else {
                this.dataSet.add(new MGGameDetailAdapter.y0(MGGameDetailAdapter.ViewType.STRAYTEGYITEM_NOIMAGE, new MGGameDetailAdapter.y0.m(gameDetialStrategyItem, true)));
                this.dataSet.add(new MGGameDetailAdapter.y0(MGGameDetailAdapter.ViewType.STRAYTEGYITEM_IMAGE, new MGGameDetailAdapter.y0.m(gameDetialStrategyItem)));
            }
        }
        setNullItem();
    }

    private void setStrategyTab() {
        List<GameDetialStrategyTag> tags;
        DetailResultBeanV3 detailResultBeanV3 = this.detailResultBean;
        if (detailResultBeanV3 == null || detailResultBeanV3.getGame_strategy() == null || (tags = this.detailResultBean.getGame_strategy().getTags()) == null || tags.size() < 1) {
            return;
        }
        this.dataSet.add(new MGGameDetailAdapter.y0(MGGameDetailAdapter.ViewType.STRAYTEGYTABLE, new MGGameDetailAdapter.y0.n(tags)));
    }

    private void setStrategyTitle() {
        DetailResultBeanV3 detailResultBeanV3 = this.detailResultBean;
        if (detailResultBeanV3 == null || detailResultBeanV3.getGame_strategy() == null) {
            return;
        }
        DetialIntentBean detialIntentBean = new DetialIntentBean();
        detialIntentBean.setGameId(this.detailResultBean.getCrc_sign_id());
        detialIntentBean.setIntentType(1);
        if (this.detailResultBean.getGame_strategy() != null) {
            detialIntentBean.setStrategyTags(this.detailResultBean.getGame_strategy().getTags());
        }
        detialIntentBean.setStartegyTab(0);
        this.dataSet.add(new MGGameDetailAdapter.y0(MGGameDetailAdapter.ViewType.GAME_ITEM_TOP, new MGGameDetailAdapter.y0.o(detialIntentBean, GameMainActivity4.TITLE_INTRODUCTION)));
    }

    private void setTitleData() {
        this.dataSet.add(new MGGameDetailAdapter.y0(MGGameDetailAdapter.ViewType.TITLE, new MGGameDetailAdapter.y0.s(this.detailResultBean.getIco_remote(), this.detailResultBean.getGame_name(), this.detailResultBean.getTag_info(), this.detailResultBean.getDown_count(), this.detailResultBean.getDown_count_manual(), this.detailResultBean.getCompany_name(), this.detailResultBean.getSize(), this.detailResultBean.getGame_follow(), this.detailResultBean.getGame_book(), this.detailResultBean.getFollow_background_img(), this.detailResultBean.getGame_book_tag(), this.detailResultBean.getBespeak_switch())));
    }

    private void setUpdateRecord() {
        this.dataSet.add(new MGGameDetailAdapter.y0(MGGameDetailAdapter.ViewType.UPDATE_RECORD, new MGGameDetailAdapter.y0.t(this.detailResultBean.getGame_upgrade_info_switch(), this.detailResultBean.getGame_upgrade_info())));
    }

    private void setViewPager() {
        this.dataSet.add(new MGGameDetailAdapter.y0(MGGameDetailAdapter.ViewType.VIEWPAGE, new MGGameDetailAdapter.y0.u(this.detailResultBean.getVedio_cover_pic(), this.detailResultBean.getPic_info(), this.detailResultBean.getPic_position(), this.detailResultBean.getVedio_url())));
    }

    private void setVoucher() {
        DetailResultBeanV3 detailResultBeanV3 = this.detailResultBean;
        if (detailResultBeanV3 == null || detailResultBeanV3.getGame_coupon_list() == null || this.detailResultBean.getGame_coupon_list().size() < 1) {
            return;
        }
        for (int i10 = 0; i10 < this.detailResultBean.getGame_coupon_list().size(); i10++) {
            this.dataSet.add(new MGGameDetailAdapter.y0(MGGameDetailAdapter.ViewType.VOUCHER, new MGGameDetailAdapter.y0.v(true, this.detailResultBean.getGame_coupon_list().get(i10))));
        }
    }

    private void setWeb() {
        this.dataSet.add(new MGGameDetailAdapter.y0(MGGameDetailAdapter.ViewType.WEB, new MGGameDetailAdapter.y0.w(this.detailResultBean.getEdit_recommend(), this.detailResultBean.getGame_describe_second(), this.detailResultBean.getLineCount())));
    }

    private void showData() {
        showLoding();
        getDetailData();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void AddGameToFrom() {
        try {
            UserInfo accountData = AccountUtil_.getInstance_(this.context).getAccountData();
            LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
            linkedMultiValueMap.add("uid", Integer.valueOf(accountData.getUid()));
            linkedMultiValueMap.add(com.czhj.sdk.common.Constants.TOKEN, accountData.getToken());
            linkedMultiValueMap.add("group_id", gamefromid);
            linkedMultiValueMap.add("game_id", this.gameId);
            linkedMultiValueMap.add("game_title", gameTitle);
            linkedMultiValueMap.add("device_id", this.device_id);
            linkedMultiValueMap.add("version", this.version);
            GameFromBooleanBean gameFromBooleanBeanA = this.rpcAccountClient.A(linkedMultiValueMap);
            if (gameFromBooleanBeanA != null && gameFromBooleanBeanA.getError() == 0 && gameFromBooleanBeanA.getData().isState()) {
                showToast("收藏成功!");
                MApplication.f3167a2 = true;
            } else if (gameFromBooleanBeanA.getData().getCode() == 10002) {
                showToast("游戏重复!");
            } else if (10001 == gameFromBooleanBeanA.getData().getCode()) {
                showToast("游戏不存在!");
            } else {
                showToast("收藏失败!");
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void DelectGame(String id2, String game_id, w holder) {
        try {
            if (com.join.android.app.common.utils.m.j(this.context)) {
                LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
                linkedMultiValueMap.add("uid", Integer.valueOf(this.accountBean.getUid()));
                linkedMultiValueMap.add(com.czhj.sdk.common.Constants.TOKEN, this.accountBean.getToken());
                linkedMultiValueMap.add("group_id", id2);
                linkedMultiValueMap.add("game_id", game_id);
                linkedMultiValueMap.add("device_id", this.device_id);
                linkedMultiValueMap.add("version", this.version);
                GameFromBooleanBean gameFromBooleanBeanT = this.rpcAccountClient.t(linkedMultiValueMap);
                if (gameFromBooleanBeanT != null && gameFromBooleanBeanT.getError() == 0 && gameFromBooleanBeanT.getData().isState()) {
                    showToast("已取消该收藏!");
                    MApplication.f3167a2 = true;
                } else {
                    showToast("取消收藏失败!");
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Refresh() {
        try {
            XListView2 xListView2 = this.list;
            if (xListView2 != null) {
                xListView2.l();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void addData(GameFromPopoWinBean data) {
        for (int i10 = 0; i10 < data.getData().size(); i10++) {
            this.listData.add(data.getData().get(i10));
        }
        if (data.getData().size() < 10 && this.list != null) {
            upNomore();
        }
        v vVar = this.myPopoAdapter;
        if (vVar != null) {
            vVar.notifyDataSetChanged();
        }
    }

    void addFrom(DownloadTask downloadTask) {
        ExtBean extBean = this.extBean;
        if (extBean == null || TextUtils.isEmpty(extBean.getFrom()) || downloadTask == null || !"112".equals(this.extBean.getFrom())) {
            return;
        }
        ExtBean extBean2 = new ExtBean();
        extBean2.setFrom(PointType.ANTI_SPAM);
        extBean2.setPosition("112");
        extBean2.setLocation(this.extBean.getLocation());
        downloadTask.setExt(JsonMapper.toJsonString(extBean2));
    }

    @AfterViews
    void afterViews() {
        String str;
        String str2;
        String str3;
        String keyword;
        String where;
        if (this.extBean == null) {
            this.extBean = new ExtBean();
        }
        this.recommendClient = com.join.mgps.rpc.impl.d.O1();
        this.mRpcPawalletClient = com.join.mgps.rpc.impl.n.i();
        this.rpcAccountClient = com.join.mgps.rpc.impl.a.c0();
        this.rpcCommentClient = com.join.mgps.rpc.impl.e.m();
        this.gameId = this.intentdate.getCrc_link_type_val();
        RequestBeanUtil.getInstance(this.context);
        this.version = RequestBeanUtil.getVersionAndVersionName();
        try {
            this.context = this;
            getDownloadTaskInfo();
            com.join.mgps.Util.j0.a().d(this.context);
            this.title_normal_search_img.setVisibility(8);
            this.share.setVisibility(0);
            this.downloadView.setVisibility(0);
            this.search_detial_image.setOnClickListener(new t());
            this.context = this;
            initData();
            showData();
            this.search_detial_image.setImageResource(R.drawable.search_image);
            this.gameListView.setOnScrollListener(new u());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        ExtBean extBean = this.extBean;
        if (extBean != null) {
            String from = extBean.getFrom();
            String position = this.extBean.getPosition();
            String location = this.extBean.getLocation();
            this.extBean.getDataFlag();
            str2 = position;
            str3 = location;
            keyword = this.extBean.getKeyword();
            where = this.extBean.getWhere();
            str = from;
        } else {
            str = "";
            str2 = str;
            str3 = str2;
            keyword = str3;
            where = keyword;
        }
        if (com.join.mgps.Util.t2.i(str2)) {
            com.papa.sim.statistic.t.l(getApplicationContext()).v2(this.intentDateBean.getCrc_link_type_val(), AccountUtil_.getInstance_(getApplicationContext()).getUid(), str, str2, str3, "normalCustom", keyword, where);
        } else {
            com.papa.sim.statistic.t.l(getApplicationContext()).u2(this.intentDateBean.getCrc_link_type_val(), AccountUtil_.getInstance_(getApplicationContext()).getUid(), this.extBean.get_from_type());
        }
        Window window = getWindow();
        window.addFlags(67108864);
        window.addFlags(Integer.MIN_VALUE);
        com.join.android.app.common.manager.b bVar = new com.join.android.app.common.manager.b(this);
        this.tintManager = bVar;
        bVar.m(true);
        this.tintManager.n(R.color.transparent);
        com.join.mgps.Util.p2.c(this, com.join.mgps.Util.p2.d(this));
        View childAt = ((ViewGroup) findViewById(android.R.id.content)).getChildAt(0);
        if (childAt != null) {
            ViewCompat.setFitsSystemWindows(childAt, false);
        }
        int dimensionPixelSize = getResources().getDimensionPixelSize(getResources().getIdentifier("status_bar_height", "dimen", "android"));
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.setMargins(0, dimensionPixelSize, 0, 0);
        this.backBtn.setLayoutParams(layoutParams);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, (int) getResources().getDimension(R.dimen.wdp100));
        layoutParams2.setMargins(0, dimensionPixelSize, 0, 0);
        this.title_bar_layout.setLayoutParams(layoutParams2);
        updatePay(false);
    }

    @Click
    void backBtn() {
        this.context.finish();
        goMGMain();
    }

    @Click
    void back_image() {
        this.context.finish();
        goMGMain();
    }

    void changeDownloadTaskNumber(DownloadTask task, int from) {
        if (task == null) {
            return;
        }
        String crc_link_type_val = task.getCrc_link_type_val();
        if (from == 2) {
            if (!this.downloadedMap.containsKey(crc_link_type_val)) {
                this.downloadedMap.put(crc_link_type_val, task);
            }
            if (!this.downloadingMap.containsKey(crc_link_type_val)) {
                this.downloadingMap.put(crc_link_type_val, task);
            }
        } else if (from != 3) {
            if (from != 5) {
                if (from != 6) {
                    if (from == 7) {
                        if (this.downloadedMap.containsKey(crc_link_type_val)) {
                            this.downloadedMap.remove(crc_link_type_val);
                        }
                        if (this.downloadingMap.containsKey(crc_link_type_val)) {
                            this.downloadingMap.remove(crc_link_type_val);
                        }
                    } else if (from == 10) {
                        if (!this.downloadedMap.containsKey(crc_link_type_val)) {
                            this.downloadedMap.put(crc_link_type_val, task);
                        }
                        if (!this.downloadingMap.containsKey(crc_link_type_val)) {
                            this.downloadingMap.put(crc_link_type_val, task);
                        }
                    } else if (from == 11) {
                    }
                } else if (this.downloadingMap.containsKey(crc_link_type_val)) {
                    this.downloadingMap.remove(crc_link_type_val);
                }
            } else if (this.downloadedMap.containsKey(crc_link_type_val)) {
                this.downloadedMap.remove(crc_link_type_val);
            }
            if (this.downloadingMap.containsKey(crc_link_type_val)) {
                this.downloadingMap.remove(crc_link_type_val);
            }
        } else if (this.downloadingMap.containsKey(crc_link_type_val)) {
            this.downloadingMap.remove(crc_link_type_val);
        }
        updateDownloadView();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void changeGameFollow(int type) {
        String str;
        ResultMainBean resultMainBeanJ1;
        if (com.join.android.app.common.utils.m.j(this.context)) {
            UserInfo accountData = AccountUtil_.getInstance_(getApplicationContext()).getAccountData();
            this.accountBean = accountData;
            int uid = accountData != null ? accountData.getUid() : 0;
            try {
                PackageInfo packageInfo = this.context.getPackageManager().getPackageInfo(this.context.getPackageName(), 0);
                str = packageInfo.versionCode + "_" + packageInfo.versionName;
            } catch (PackageManager.NameNotFoundException e10) {
                e10.printStackTrace();
                str = "";
            }
            RequestdetialFolowAndBeSpeak requestdetialFolowAndBeSpeak = new RequestdetialFolowAndBeSpeak();
            requestdetialFolowAndBeSpeak.setApp_ver(str);
            requestdetialFolowAndBeSpeak.setGame_id(this.detailResultBean.getCrc_sign_id());
            requestdetialFolowAndBeSpeak.setUid(uid);
            requestdetialFolowAndBeSpeak.setMobile(this.accountBean.getMobile());
            CommonRequestBean<RequestGameIdArgs> detialFollowAnd = RequestBeanUtil.getInstance(this.context).getDetialFollowAnd(requestdetialFolowAndBeSpeak);
            if (type == 1) {
                resultMainBeanJ1 = this.recommendClient.j1(detialFollowAnd);
            } else if (type == 2) {
                resultMainBeanJ1 = this.recommendClient.n(detialFollowAnd);
            } else if (type != 3) {
                resultMainBeanJ1 = type != 4 ? null : this.recommendClient.M0(detialFollowAnd);
            } else {
                resultMainBeanJ1 = this.recommendClient.g(detialFollowAnd);
            }
            if (resultMainBeanJ1 != null) {
                updateTitleButn(resultMainBeanJ1, type);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void checkDownlodingNumber() {
        try {
            this.num = q5.f.M().V();
            int iD0 = q5.f.M().d0();
            this.downloadingNumber = iD0;
            updateLine(iD0);
            int i10 = this.num;
            if (i10 != 0) {
                updateDownloadingPoint(i10);
            } else {
                updateNoOpenPoint();
            }
            updateDownloadView();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    public void checkReset(int position, int i10) {
        if (i10 == 1) {
            this.mgGameDetailAdapter.T(position, 1);
        } else {
            this.mgGameDetailAdapter.U(position, 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void cleanData() {
        if (this.listData.size() > 0) {
            this.listData.clear();
            v vVar = this.myPopoAdapter;
            if (vVar != null) {
                vVar.notifyDataSetChanged();
            }
        }
    }

    @Click
    void detial_search_layout() {
        IntentUtil.getInstance().goSearchHintActivity(this.context);
        com.papa.sim.statistic.t.l(this.context).y2(Where.detial1, AccountUtil_.getInstance_(this.context).getUid());
    }

    @Click
    void downloadLayout() {
        IntentUtil.getInstance().goMyGameManagerActivity(this);
    }

    @Click
    void downloadRLayout() {
        IntentUtil.getInstance().goMyGameManagerActivity(this);
        this.scroll_text_layout.p();
        this.imageLoading.setVisibility(8);
        this.prefDef.isNewFinishedGame().g(Boolean.FALSE);
        this.hasNewFinishedGameImage.setVisibility(8);
    }

    void followGame() {
        if (!com.join.android.app.common.utils.m.j(this) || IntentUtil.getInstance().goLoginInteractive(this.context) || this.detailResultBean.getGame_follow() == 1) {
            return;
        }
        changeGameFollow(2);
    }

    void followGameNotice() {
        boolean zBooleanValue = this.prefDef.noFavoriteTips().d().booleanValue();
        if (IntentUtil.getInstance().goLoginInteractive(this.context)) {
            return;
        }
        if (zBooleanValue) {
            followGame();
            return;
        }
        if (this.mFavoriteDialog == null) {
            com.join.mgps.customview.t tVar = new com.join.mgps.customview.t(this.context, R.style.MyDialog);
            this.mFavoriteDialog = tVar;
            tVar.setContentView(R.layout.favorite_dialog);
            this.mFavoriteDialog.setCanceledOnTouchOutside(true);
        }
        Button button = (Button) this.mFavoriteDialog.findViewById(R.id.ok);
        ((CheckBox) this.mFavoriteDialog.findViewById(R.id.opt)).setOnCheckedChangeListener(new c());
        button.setOnClickListener(new d());
        com.join.mgps.customview.t tVar2 = this.mFavoriteDialog;
        if (tVar2 == null || tVar2.isShowing()) {
            return;
        }
        this.mFavoriteDialog.show();
    }

    public RequestCommentpraiseArgs getCommentPraiseRequestBean(String comment_id, int type, int pn) {
        String token;
        int uid;
        String str = Build.MODEL;
        UserInfo accountData = AccountUtil_.getInstance_(this.context).getAccountData();
        this.accountBean = accountData;
        if (accountData != null) {
            uid = accountData.getUid();
            token = this.accountBean.getToken();
        } else {
            token = "";
            uid = 0;
        }
        return RequestBeanUtil.getInstance(this.context).getPraiseComment(this.gameId, this.prefDef.commentToken().d(), str, comment_id, token, uid, type, pn);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getDetailData() {
        if (!com.join.android.app.common.utils.m.j(this.context)) {
            if (this.isLoadSuccess) {
                return;
            }
            showLodingFailed();
            return;
        }
        try {
            UserInfo accountData = AccountUtil_.getInstance_(getApplicationContext()).getAccountData();
            this.accountBean = accountData;
            ResultMainBean<List<DetailResultBeanV3>> resultMainBeanA = this.recommendClient.A(RequestBeanUtil.getInstance(getApplicationContext()).getAppDetialBean(this.intentDateBean.getCrc_link_type_val(), accountData != null ? accountData.getUid() : 0, this.extBean));
            if (resultMainBeanA == null || resultMainBeanA.getFlag() == 0) {
                if (this.isLoadSuccess) {
                    return;
                }
                showLodingFailed();
                return;
            }
            List<DetailResultBeanV3> data = resultMainBeanA.getMessages().getData();
            if (data == null || data.size() <= 0) {
                if (this.isLoadSuccess) {
                    return;
                }
                showLodingFailed();
                return;
            }
            DetailResultBeanV3 detailResultBeanV3 = data.get(0);
            if (detailResultBeanV3 != null) {
                showMain(detailResultBeanV3);
                setData(detailResultBeanV3);
            } else {
                if (this.isLoadSuccess) {
                    return;
                }
                showLodingFailed();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getDownloadTaskInfo() {
        List<DownloadTask> listR = q5.f.M().r();
        List<DownloadTask> listQ = q5.f.M().q();
        if (listQ != null && listQ.size() > 0) {
            for (DownloadTask downloadTask : listQ) {
                this.downloadedMap.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
        if (listR != null && listR.size() > 0) {
            for (DownloadTask downloadTask2 : listR) {
                this.downloadingMap.put(downloadTask2.getCrc_link_type_val(), downloadTask2);
            }
        }
        updateDownloadView();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getGameCommentList() {
        if (com.join.android.app.common.utils.m.j(this.context)) {
            com.join.mgps.rpc.impl.e eVarM = com.join.mgps.rpc.impl.e.m();
            new CommentAllListBean();
            try {
                CommentResponse<CommentAllListBean> commentResponseI = eVarM.i(RequestBeanUtil.getInstance(this.context).getGamedetialCommentRequest(this.gameId, this.prefDef.commentToken().d(), this.accountBean.getUid() + ""));
                if (commentResponseI == null) {
                    showMain(new ArrayList());
                    return;
                }
                CommentAllListBean data_info = commentResponseI.getData_info();
                if (data_info != null) {
                    this.selfCommit = data_info.getSelf_comment();
                    this.game_comment_count = data_info.getGame_comment_count();
                    this.game_score = data_info.getGame_score();
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
    public void getGameFromList() {
        try {
            if (!com.join.android.app.common.utils.m.j(this.context)) {
                showToast("网络出错，请稍后重试");
                return;
            }
            if (IntentUtil.getInstance().goLoginInteractive(this.context)) {
                return;
            }
            this.device_id = "";
            UserInfo accountData = AccountUtil_.getInstance_(this.context).getAccountData();
            LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
            linkedMultiValueMap.add("uid", Integer.valueOf(accountData.getUid()));
            linkedMultiValueMap.add(com.czhj.sdk.common.Constants.TOKEN, accountData.getToken());
            linkedMultiValueMap.add("current_game_id", this.gameId);
            int i10 = this.page;
            this.page = i10 + 1;
            linkedMultiValueMap.add("page", Integer.valueOf(i10));
            linkedMultiValueMap.add("device_id", this.device_id);
            linkedMultiValueMap.add("version", this.version);
            GameFromPopoWinBean gameFromPopoWinBeanW = this.rpcAccountClient.W(linkedMultiValueMap);
            if (gameFromPopoWinBeanW != null && gameFromPopoWinBeanW.getError() == 0 && gameFromPopoWinBeanW.getData() != null) {
                updateListHeadAndFoot();
                if (this.page == 2) {
                    cleanData();
                }
                addData(gameFromPopoWinBeanW);
                return;
            }
            if (gameFromPopoWinBeanW == null || gameFromPopoWinBeanW.getError() != 701) {
                upNomore();
                return;
            }
            IntentUtil.getInstance().goMyAccountLoginActivity(this.context);
            showToast("Token已失效，请重新登录");
            IntentUtil.getInstance().goLogin(this.context);
            hideI();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getGiftPackageOperation(GiftPackageDataInfoBean bean) {
        if (!com.join.android.app.common.utils.m.j(this.context)) {
            showToast("领取失败");
            return;
        }
        try {
            try {
                GiftPackageOperationBean giftPackageOperationBeanN0 = this.recommendClient.N0(RequestBeanUtil.getInstance(getApplicationContext()).getGiftPackageOperationRequestBean(this.accountBean.getUid(), bean.getGift_package_id(), this.intentDateBean.getCrc_link_type_val()));
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
                    List<GiftPackageDataInfoBean> game_gift_package = this.detailResultBean.getGame_gift_package();
                    for (int i10 = 0; i10 < game_gift_package.size(); i10++) {
                        GiftPackageDataInfoBean giftPackageDataInfoBean = game_gift_package.get(i10);
                        if (bean.getGift_package_id() == giftPackageDataInfoBean.getGift_package_id()) {
                            giftPackageDataInfoBean.setGift_package_status(1);
                            giftPackageDataInfoBean.setGift_package_overdue(giftPackageDataOperationBean.getGift_info().getGift_package_overdue());
                            giftPackageDataInfoBean.setGift_package_code(giftPackageDataOperationBean.getGift_info().getGift_package_code());
                        }
                    }
                    this.detailResultBean.setGame_gift_package(game_gift_package);
                    showDialog(giftPackageDataOperationBean);
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

    public CommonRequestBean getRequestBean() {
        UserInfo accountData = AccountUtil_.getInstance_(getApplicationContext()).getAccountData();
        this.accountBean = accountData;
        if (accountData != null) {
            this.uid = accountData.getUid();
        }
        return RequestBeanUtil.getInstance(getApplicationContext()).getGameCommentListRequestBean(1, 5, this.uid, this.intentDateBean.getCrc_link_type_val(), new int[]{1});
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getToken() {
        if (com.join.android.app.common.utils.m.j(this.context)) {
            try {
                CommentResponse<CommentTokenBean> commentResponseG = this.rpcCommentClient.g(RequestBeanUtil.getInstance(this.context).getTokenRequestBean(AccountUtil_.getInstance_(this.context).getUid(), ""));
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

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getVoucher(GameVoucherBean mBean) {
        if (com.join.android.app.common.utils.m.j(this.context)) {
            try {
                LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
                UserInfo accountData = AccountUtil_.getInstance_(getApplicationContext()).getAccountData();
                linkedMultiValueMap.add("uid", accountData.getUid() + "");
                linkedMultiValueMap.add(com.czhj.sdk.common.Constants.TOKEN, accountData.getToken());
                linkedMultiValueMap.add("coupon_id", mBean.getGame_coupon_id() + "");
                PapayVoucherResultMain<AccountGetVoucherResult> papayVoucherResultMainA = this.mRpcPawalletClient.a(linkedMultiValueMap);
                if (papayVoucherResultMainA == null || papayVoucherResultMainA.getError() != 0 || papayVoucherResultMainA.getData() == null) {
                    showToast(getString(R.string.voucher_get_fail));
                } else {
                    showToast(getString(R.string.voucher_get_success));
                    for (GameVoucherBean gameVoucherBean : this.detailResultBean.getGame_coupon_list()) {
                        if (gameVoucherBean.getGame_coupon_id().equals(papayVoucherResultMainA.getData().getCoupon_code().getCoupon_id() + "")) {
                            gameVoucherBean.setGame_coupon_status(2);
                            refreshVoucherData();
                        }
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                showToast(getString(R.string.voucher_get_fail));
            }
        } else {
            showToast(getString(R.string.voucher_get_fail));
        }
        hideDialog();
    }

    void goMGMain() {
        ExtBean extBean = this.extBean;
        if (extBean == null || TextUtils.isEmpty(extBean.getFrom()) || !this.extBean.getFrom().equals("updateFromMarket")) {
            return;
        }
        IntentUtil.getInstance().goMGMainActivity2Front(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void hideDialog() {
        com.join.mgps.dialog.f1 f1Var = this.loadingDialog;
        if (f1Var == null || !f1Var.isShowing()) {
            return;
        }
        this.loadingDialog.dismiss();
        this.loadingDialog = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void hideI() {
        PopupWindow popupWindow = this.popupWindow;
        if (popupWindow != null) {
            popupWindow.dismiss();
        }
    }

    void initData() {
        this.detailResultBean = new DetailResultBeanV3();
        IntentDateBean intentDateBean = this.intentdate;
        this.intentDateBean = intentDateBean;
        try {
            if (intentDateBean.getObject() != null && (this.intentDateBean.getObject() instanceof IntentToDetialBean)) {
                IntentToDetialBean intentToDetialBean = (IntentToDetialBean) this.intentDateBean.getObject();
                this.detialBean = intentToDetialBean;
                this.title_textview.setText(intentToDetialBean.getAppName());
                this.detailResultBean.setIco_remote(this.detialBean.getIconUrl());
                this.detailResultBean.setDescribe(this.detialBean.getAppName());
                this.detailResultBean.setGame_name("");
            } else if (this.intentDateBean.getObject() != null && (this.intentDateBean.getObject() instanceof Boolean)) {
                this.defaultDown = ((Boolean) this.intentDateBean.getObject()).booleanValue();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        this.gameListView.addFooterView(LayoutInflater.from(this.context).inflate(R.layout.game_detail_header, (ViewGroup) null));
        this.dataSet = new ArrayList();
        MGGameDetailAdapter mGGameDetailAdapter = new MGGameDetailAdapter(this, this.detailResultBean, this.handler2, this.layoutM, this.dataSet);
        this.mgGameDetailAdapter = mGGameDetailAdapter;
        this.gameListView.setAdapter((ListAdapter) mGGameDetailAdapter);
        this.mgGameDetailAdapter.Y(new a());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void initPopowindow() {
        View viewInflate = LayoutInflater.from(this.context).inflate(R.layout.popo_item, (ViewGroup) null);
        setPopWindowBackgroundAlpha(0.4f);
        PopupWindow popupWindow = new PopupWindow(viewInflate, -1, -1, true);
        this.popupWindow = popupWindow;
        popupWindow.setTouchable(true);
        this.popupWindow.setOutsideTouchable(true);
        this.popupWindow.setFocusable(true);
        this.popupWindow.setBackgroundDrawable(new ColorDrawable());
        this.popupWindow.setSoftInputMode(16);
        this.popupWindow.setOnDismissListener(new g());
        XListView2 xListView2 = (XListView2) viewInflate.findViewById(R.id.listview);
        this.list = xListView2;
        xListView2.setPullRefreshEnable(new h());
        this.list.setPullLoadEnable(new i());
        this.tv_show_tips = (TextView) viewInflate.findViewById(R.id.tv_show_tips);
        this.ll_our = (LinearLayout) viewInflate.findViewById(R.id.ll_our);
        this.ll_show_finish = (LinearLayout) viewInflate.findViewById(R.id.ll_show_finish);
        this.ll_dismiss = (LinearLayout) viewInflate.findViewById(R.id.ll_dismiss);
        this.ed_text = (EditText) viewInflate.findViewById(R.id.game_ed);
        this.tv_finish = (TextView) viewInflate.findViewById(R.id.tv_finish);
        this.ll_build = (LinearLayout) viewInflate.findViewById(R.id.ll_build);
        this.ll_dismiss.setOnClickListener(new j());
        this.ll_build.setOnClickListener(new l());
        this.tv_finish.setOnClickListener(new m());
        v vVar = new v();
        this.myPopoAdapter = vVar;
        this.list.setAdapter((ListAdapter) vVar);
        this.popupWindow.showAtLocation(LayoutInflater.from(this.context).inflate(R.layout.gamedetial_modle_three_activity, (ViewGroup) null), 81, 0, 0);
    }

    @Click
    void instalButtomButn() {
        DetailResultBeanV3 detailResultBeanV3;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("method instalButtomButn() called.status=");
        sb2.append(this.downloadTask.getStatus());
        int game_book = this.detailResultBean.getGame_book();
        if (this.detailResultBean.getBespeak_switch() == 1 && game_book != 1 && this.detailResultBean.getDown_status() == 2) {
            if (IntentUtil.getInstance().goLoginInteractive(this.context) || game_book == 1) {
                return;
            }
            changeGameFollow(4);
            return;
        }
        DownloadTask downloadTask = this.downloadTask;
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        if (this.downloadTask != null && (detailResultBeanV3 = this.detailResultBean) != null && UtilsMy.x0(detailResultBeanV3.getPay_tag_info(), this.detailResultBean.getCrc_sign_id()) > 0) {
            status = 43;
        }
        DownloadTask downloadTask2 = this.downloadTask;
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
                com.php25.PDownload.d.l(this.context, downloadTask2);
                return;
            }
            if (status == 5) {
                UtilsMy.p4(this.context, downloadTask2, "2");
            } else if (status == 42) {
                downloadTask2.setVer(this.detailResultBean.getVer());
                this.downloadTask.setVer_name(this.detailResultBean.getVer_name());
                this.downloadTask.setUrl(this.detailResultBean.getDown_url_remote());
                this.downloadTask.setCfg_ver(this.detailResultBean.getCfg_ver());
                this.downloadTask.setCfg_ver_name(this.detailResultBean.getCfg_ver_name());
                this.downloadTask.setCfg_down_url(this.detailResultBean.getCfg_down_url());
                this.downloadTask.setKeyword(Where.detail.name());
                UtilsMy.O4(this.context, this.downloadTask);
            } else if (status == 9) {
                if (!com.join.android.app.common.utils.m.j(this.context)) {
                    com.join.mgps.Util.a3.b(this.context).d("无网络连接");
                    return;
                }
                int downloadType = this.downloadTask.getDownloadType();
                if (downloadType == 0 || downloadType == 1) {
                    if (this.downloadTask.getCrc_link_type_val() == null || this.downloadTask.getCrc_link_type_val().equals("")) {
                        return;
                    }
                    addFrom(this.downloadTask);
                    if (UtilsMy.o1(this.context, this.downloadTask)) {
                        return;
                    }
                    if (this.detailResultBean.getDown_status() == 5) {
                        UtilsMy.l1(this, this.downloadTask);
                        return;
                    }
                    com.php25.PDownload.d.b(this.downloadTask);
                    this.downloadTask.setVer(this.detailResultBean.getVer());
                    this.downloadTask.setVer_name(this.detailResultBean.getVer_name());
                    this.downloadTask.setUrl(this.detailResultBean.getDown_url_remote());
                    this.downloadTask.setCfg_ver(this.detailResultBean.getCfg_ver());
                    this.downloadTask.setCfg_ver_name(this.detailResultBean.getCfg_ver_name());
                    this.downloadTask.setCfg_down_url(this.detailResultBean.getCfg_down_url());
                    this.downloadTask.setKeyword(Where.detail.name());
                    com.php25.PDownload.d.c(this.downloadTask, this.context);
                    onDetailDownload();
                } else if (downloadType == 2) {
                    UtilsMy.R4(this.downloadTask);
                }
            } else if (11 == status) {
                UtilsMy.w4(downloadTask2, this.context);
            } else if (43 == status) {
                downloadTask2.setKeyword(Where.detail.name());
                addFrom(this.downloadTask);
                DetailResultBeanV3 detailResultBeanV4 = this.detailResultBean;
                if (detailResultBeanV4 != null) {
                    if (UtilsMy.z0(detailResultBeanV4.getPay_tag_info(), this.detailResultBean.getCrc_sign_id()) > 0) {
                        UtilsMy.z4(this.context, this.detailResultBean.getCrc_sign_id());
                    } else if (!UtilsMy.o1(this.context, this.downloadTask)) {
                        if (this.detailResultBean.getDown_status() == 5) {
                            UtilsMy.l1(this.context, this.downloadTask);
                        } else {
                            UtilsMy.B1(this.downloadTask, this.detailResultBean);
                            if (!UtilsMy.o1(this.context, this.downloadTask)) {
                                if (this.detailResultBean.getDown_status() == 5) {
                                    UtilsMy.l1(this.context, this.downloadTask);
                                } else {
                                    UtilsMy.U0(this.context, this.downloadTask, this.detailResultBean.getTp_down_url(), this.detailResultBean.getOther_down_switch(), this.detailResultBean.getCdn_down_switch());
                                }
                            }
                            onDetailDownload();
                        }
                    }
                }
                this.scroll_text_layout.setTextArray(new String[]{"", "size", "", "size"});
                this.scroll_text_layout.setIsStop(false);
                this.scroll_text_layout.o();
            } else {
                downloadTask2.setKeyword(Where.detail.name());
                addFrom(this.downloadTask);
                DetailResultBeanV3 detailResultBeanV5 = this.detailResultBean;
                if (detailResultBeanV5 != null) {
                    if (UtilsMy.z0(detailResultBeanV5.getPay_tag_info(), this.detailResultBean.getCrc_sign_id()) > 0) {
                        UtilsMy.z4(this.context, this.detailResultBean.getCrc_sign_id());
                    } else {
                        UtilsMy.B1(this.downloadTask, this.detailResultBean);
                        if (!UtilsMy.o1(this.context, this.downloadTask)) {
                            if (this.detailResultBean.getDown_status() == 5) {
                                UtilsMy.l1(this.context, this.downloadTask);
                            } else {
                                UtilsMy.U0(this.context, this.downloadTask, this.detailResultBean.getTp_down_url(), this.detailResultBean.getOther_down_switch(), this.detailResultBean.getCdn_down_switch());
                            }
                        }
                        onDetailDownload();
                    }
                }
                this.scroll_text_layout.setTextArray(new String[]{"", "size", "", "size"});
                this.scroll_text_layout.setIsStop(false);
                this.scroll_text_layout.o();
            }
        }
        updateButn();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    @UiThread
    public void intentLogin() {
        ((LoginSplashActivity_.IntentBuilder_) LoginSplashActivity_.intent(this.context).flags(C.ENCODING_PCM_MU_LAW)).start();
    }

    boolean needPayGame(DetailResultBeanV3 bean) {
        return (bean == null || bean.getPay_tag_info() == null || bean.getPay_tag_info().getPay_game_amount() <= 0) ? false : true;
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        dismissVipDialog();
        dismissSvipGiftDialog();
        com.join.mgps.Util.j0.a().e(this.context);
        Dialog dialog = this.myDialog;
        if (dialog != null && dialog.isShowing()) {
            this.myDialog.dismiss();
        }
        dialogDismiss();
        super.onDestroy();
    }

    void onDetailDownload() {
        ExtBean extBean = this.extBean;
        if (extBean == null || TextUtils.isEmpty(extBean.getFrom()) || !this.extBean.getFrom().equals("downloadCenter")) {
            return;
        }
        MobclickAgentKt.onEvent(this, "detailDownload4.2.0.6");
    }

    /* JADX WARN: Code duplicated, block: B:41:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:43:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:47:0x00f6  */
    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.r downloadTaskEvent) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("method onEventMainThread() called.status=");
        sb2.append(downloadTaskEvent.c());
        DownloadTask downloadTaskA = downloadTaskEvent.a();
        changeDownloadTaskNumber(this.downloadTask, downloadTaskEvent.c());
        DlTaskManager.INSTANCE.onNotifyDataSet(downloadTaskEvent, new Function0() { // from class: com.join.mgps.activity.i6
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f57338b.lambda$onEventMainThread$0();
            }
        });
        if (downloadTaskEvent.c() == 8) {
            DownloadTask downloadTask = this.downloadTask;
            if (downloadTask == null || downloadTask.getPath() == null) {
                return;
            }
            UtilsMy.U4(this.downloadTask);
            this.butnProgressBar.setProgress((int) this.downloadTask.getProgress());
            this.percent.setText(this.downloadTask.getProgress() + "%");
            return;
        }
        if (downloadTaskA != null && this.downloadTask != null && downloadTaskA.getCrc_link_type_val().equals(this.downloadTask.getCrc_link_type_val())) {
            this.downloadTask = downloadTaskA;
            int iC = downloadTaskEvent.c();
            if (iC == 2) {
                startLineAnimation();
                checkDownlodingNumber();
            } else if (iC == 3) {
                checkDownlodingNumber();
            } else if (iC == 5) {
                if (this.downloadTask != null && downloadTaskA.getCrc_link_type_val().equals(this.downloadTask.getCrc_link_type_val())) {
                    this.downloadTask = downloadTaskA;
                }
                checkDownlodingNumber();
            } else if (iC == 6 || iC == 7) {
                checkDownlodingNumber();
            } else {
                if (iC == 8) {
                    DownloadTask downloadTask2 = this.downloadTask;
                    if (downloadTask2 == null || downloadTask2.getPath() == null) {
                        return;
                    }
                    UtilsMy.U4(this.downloadTask);
                    this.butnProgressBar.setProgress((int) this.downloadTask.getProgress());
                    this.percent.setText(this.downloadTask.getProgress() + "%");
                    return;
                }
                if (iC == 10) {
                    checkDownlodingNumber();
                } else if (iC == 11) {
                    if (this.downloadTask != null) {
                        this.downloadTask = downloadTaskA;
                    }
                    checkDownlodingNumber();
                } else if (iC == 27) {
                    checkDownlodingNumber();
                } else if (iC == 48) {
                    if (this.downloadTask != null) {
                        this.downloadTask = downloadTaskA;
                    }
                    checkDownlodingNumber();
                }
            }
        }
        updateButn();
    }

    @Receiver(actions = {p5.a.G, p5.a.I})
    void onPayGameSuccess(@Receiver.Extra("gameData") CollectionBeanSub sub) {
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
    public void onPraiseFail() {
        updateAdapter();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void onPraiseX(CommentBaseBean bean, int position, int type) {
        if (!com.join.android.app.common.utils.m.j(this.context)) {
            resultShow("网络连接失败，再试试吧~", true, position, 1);
            return;
        }
        try {
            CommentResponse<CommentPraiseBean> commentResponseD = this.rpcCommentClient.d(getCommentPraiseRequestBean(bean.getId(), type, bean.getPn()));
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

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        DetailResultBeanV3 detailResultBeanV3;
        super.onResume();
        if (isShowPo) {
            this.page = 1;
            isShowPo = false;
            getGameFromList();
        }
        if (this.prefDef.isNewFinishedGame().d().booleanValue()) {
            this.hasNewFinishedGameImage.setVisibility(0);
        } else {
            this.hasNewFinishedGameImage.setVisibility(8);
        }
        updateAdapter();
        this.scroll_text_layout.setDrawable(getResources().getDrawable(R.drawable.papa_download_selector));
        checkDownlodingNumber();
        DownloadTask downloadTaskG = this.intentDateBean != null ? q5.f.M().G(this.intentDateBean.getCrc_link_type_val()) : null;
        if (downloadTaskG == null && (detailResultBeanV3 = this.detailResultBean) != null) {
            this.downloadTask = detailResultBeanV3.getDownloadtaskDown();
        }
        if (downloadTaskG == null || this.downloadTask == null) {
            return;
        }
        this.downloadTask = downloadTaskG;
        if (!downloadTaskG.getFileType().equals(Dtype.android.name()) || this.downloadTask.getStatus() != 5) {
            this.downloadTask.setStatus(downloadTaskG.getStatus());
        } else if (Boolean.valueOf(com.join.android.app.common.utils.g.t0(getApplicationContext()).e(getApplicationContext(), this.downloadTask.getPackageName())).booleanValue()) {
            APKUtils.a aVarN = com.join.android.app.common.utils.g.t0(getApplicationContext()).n(this.context, this.downloadTask.getPackageName());
            if (!com.join.mgps.Util.t2.i(this.downloadTask.getVer()) || aVarN.d() >= Integer.parseInt(this.downloadTask.getVer())) {
                this.downloadTask.setStatus(5);
            } else {
                this.downloadTask.setStatus(9);
            }
        } else {
            this.downloadTask.setStatus(11);
        }
        updateButn();
    }

    void onRootViewX(CommentBaseBean bean) {
        CommentDetailActivity_.intent(this.context).d(bean.getGame_id()).b(bean.getId()).f(this.detailResultBean.getPlugin_num()).a(this.detailResultBean.getBespeak_switch()).e(0).c("0").h(0).g(this.detailResultBean.getPackage_name()).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void onUnPraiseX(CommentBaseBean bean, int position, int type) {
        if (!com.join.android.app.common.utils.m.j(this.context)) {
            resultShow("网络连接失败，再试试吧~", true, position, 2);
            return;
        }
        try {
            CommentResponse<CommentPraiseBean> commentResponseE = this.rpcCommentClient.e(getCommentPraiseRequestBean(bean.getId(), type, bean.getPn()));
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

    @Receiver(actions = {"com.join,mgps.sim.sdkgamePayfinish"})
    void onpayFinish(Intent intent) {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void postPraised(InformationCommentBean bean) {
        if (!com.join.android.app.common.utils.m.j(this.context)) {
            showToast("没有网络");
            return;
        }
        try {
            GamePariseRequest gamePariseRequest = new GamePariseRequest();
            gamePariseRequest.setGame_id(this.intentDateBean.getCrc_link_type_val());
            gamePariseRequest.setComment_id(bean.getComment_id() + "");
            gamePariseRequest.setUid(this.accountBean.getUid());
            ResultMainBean<List<PariseBackData>> resultMainBeanB = this.recommendClient.b(RequestBeanUtil.getInstance(getApplicationContext()).getGameDetailParis(gamePariseRequest));
            if (resultMainBeanB == null || resultMainBeanB.getFlag() != 1) {
                onPraiseFail();
                showToast("点赞失败");
                return;
            }
            List<PariseBackData> data = resultMainBeanB.getMessages().getData();
            if (data.size() <= 0) {
                showToast("你已赞过");
                return;
            }
            int i10 = 0;
            if (!data.get(0).isVal()) {
                showToast("你已赞过");
                return;
            }
            try {
                i10 = Integer.parseInt(bean.getPraise_count()) + 1;
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            bean.setPraise_count(i10 + "");
            updateAdapter();
        } catch (Exception e11) {
            e11.printStackTrace();
            onPraiseFail();
            showToast("点赞失败");
        }
    }

    @Click
    void progress_layout() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("method progress_layout() called.status=");
        sb2.append(this.downloadTask.getStatus());
        DownloadTask downloadTask = this.downloadTask;
        if (downloadTask == null) {
            return;
        }
        if (downloadTask.getStatus() == 2) {
            updateButn();
            com.php25.PDownload.d.i(this.downloadTask);
        } else if (this.downloadTask.getStatus() == 3 || this.downloadTask.getStatus() == 6) {
            updateButn();
            com.php25.PDownload.d.c(this.downloadTask, this.context);
            onDetailDownload();
        }
    }

    synchronized void refreshAdapter() {
        try {
            if (this.dataSet == null) {
                this.dataSet = new ArrayList();
            }
            this.dataSet.clear();
            this.detailResultBean.setSp_tpl_two_position(0);
            if (com.join.mgps.Util.t2.h(this.detailResultBean.getBackground_color())) {
                this.detailResultBean.setBackground_color("#230404");
            }
            try {
                this.container.setBackgroundColor(Color.parseColor(this.detailResultBean.getBackground_color()));
                this.gameListView.setBackgroundColor(Color.parseColor(this.detailResultBean.getBackground_color()));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            this.detialDownBottom.setBackgroundColor(1275068416);
            this.linebutn.setVisibility(8);
            setTitleData();
            if (this.detailResultBean.getSp_tpl_two_banner_switch() == 1) {
                setAdGroup();
            }
            setInformationItemTitle();
            setInformationItemTop();
            setInformationItem();
            setGameGiftsAndServiceItem();
            setStrategyTitle();
            setStrategyTab();
            setStrategyItem();
            setDetialTitle();
            setViewPager();
            setWeb();
            setGameGifts();
            setGameAd();
            setMessage();
            setFastEntry();
            setRecomTitle();
            setRecommend();
            setCommitHeader();
            setCommit();
            setCommitFooter();
            this.mgGameDetailAdapter.notifyDataSetChanged();
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void refreshVoucherData() {
        refreshAdapter();
        w6.a.b().c();
    }

    @Click
    void relodingimag() {
        showLoding();
        getDetailData();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void resultShow(String msg, boolean b10, int position, int type) {
        com.join.mgps.Util.a3.b(this.context).d(msg);
        if (b10) {
            if (type == 1) {
                this.mgGameDetailAdapter.U(position, 0);
            } else {
                this.mgGameDetailAdapter.T(position, 0);
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

    @Click
    void search_detial_back() {
        IntentUtil.getInstance().goSearchHintActivity(this.context);
        com.papa.sim.statistic.t.l(this.context).y2(Where.detial2, AccountUtil_.getInstance_(this.context).getUid());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 300)
    public void setData(DetailResultBeanV3 detailResultData) {
        this.isLoadSuccess = true;
        this.detailResultBean.setCdn_down_switch(detailResultData.getCdn_down_switch());
        this.detailResultBean.setCfg_ver(detailResultData.getCfg_ver());
        this.detailResultBean.setCfg_down_url(detailResultData.getCfg_down_url());
        this.detailResultBean.setCfg_lowest_ver(detailResultData.getCfg_lowest_ver());
        this.detailResultBean.setCfg_ver_name(detailResultData.getCfg_ver_name());
        this.detailResultBean.setComment_count(detailResultData.getComment_count());
        this.detailResultBean.setComment_count_manual(detailResultData.getComment_count_manual());
        this.detailResultBean.setComment_people_count(detailResultData.getComment_people_count());
        this.detailResultBean.setComment_people_count_manual(detailResultData.getComment_people_count_manual());
        this.detailResultBean.setCompany_name(detailResultData.getCompany_name());
        this.detailResultBean.setComposite_score(detailResultData.getComposite_score());
        this.detailResultBean.setCrc_sign_id(detailResultData.getCrc_sign_id());
        this.detailResultBean.setDown_count(detailResultData.getDown_count());
        this.detailResultBean.setDownloadType(detailResultData.getDownloadType());
        this.detailResultBean.setDescribe(detailResultData.getDescribe());
        this.detailResultBean.setDown_url_local(detailResultData.getDown_url_local());
        this.detailResultBean.setDown_count_manual(detailResultData.getDown_count_manual());
        this.detailResultBean.setDown_url_remote(detailResultData.getDown_url_remote());
        this.detailResultBean.setEdit_recommend(detailResultData.getEdit_recommend());
        this.detailResultBean.setFight_funv2(detailResultData.getFight_funv2());
        this.detailResultBean.setFight_type(detailResultData.getFight_type());
        this.detailResultBean.setForum_id(detailResultData.getForum_id());
        this.detailResultBean.setForum_switch(detailResultData.getForum_switch());
        this.detailResultBean.setGame_info_tpl_type(detailResultData.getGame_info_tpl_type());
        this.detailResultBean.setGame_info_top_pic(detailResultData.getGame_info_top_pic());
        this.detailResultBean.setGame_name(detailResultData.getGame_name());
        this.detailResultBean.setGame_upgrade_info(detailResultData.getGame_upgrade_info());
        this.detailResultBean.setGame_upgrade_info_switch(detailResultData.getGame_upgrade_info_switch());
        this.detailResultBean.setIco_remote(detailResultData.getIco_remote());
        this.detailResultBean.setIs_world(detailResultData.getIs_world());
        this.detailResultBean.setIs_network(detailResultData.getIs_network());
        this.detailResultBean.setInfo(detailResultData.getInfo());
        this.detailResultBean.setIco_local(detailResultData.getIco_local());
        this.detailResultBean.setIs_fight(detailResultData.getIs_fight());
        this.detailResultBean.setLock_sp(detailResultData.getLock_sp());
        this.detailResultBean.setOther_down_switch(detailResultData.getOther_down_switch());
        this.detailResultBean.setPic_info(detailResultData.getPic_info());
        this.detailResultBean.setPlugin_screenshot(detailResultData.getPlugin_screenshot());
        this.detailResultBean.setPlugin_num(detailResultData.getPlugin_num());
        this.detailResultBean.setPlugin_lowest_ver_name(detailResultData.getPlugin_lowest_ver_name());
        this.detailResultBean.setPlugin_lowest_ver(detailResultData.getPlugin_lowest_ver());
        this.detailResultBean.setPackage_name(detailResultData.getPackage_name());
        this.detailResultBean.setPapa_explain(detailResultData.getPapa_explain());
        this.detailResultBean.setPercen_praise(detailResultData.getPercen_praise());
        this.detailResultBean.setPercen_stars(detailResultData.getPercen_stars());
        this.detailResultBean.setPercen_stars(detailResultData.getPercen_stars());
        this.detailResultBean.setRecommend_game(detailResultData.getRecommend_game());
        this.detailResultBean.setRecommend_game_switch(detailResultData.getRecommend_game_switch());
        this.detailResultBean.setRecommend_information(detailResultData.getRecommend_information());
        this.detailResultBean.setRom_lowest_ver(detailResultData.getRom_lowest_ver());
        this.detailResultBean.setSource_ver_name(detailResultData.getSource_ver_name());
        this.detailResultBean.setSource_ver(detailResultData.getSource_ver());
        this.detailResultBean.setSync_memory(detailResultData.getSync_memory());
        this.detailResultBean.setScore_count(detailResultData.getScore_count());
        this.detailResultBean.setScore_count_manual(detailResultData.getScore_count_manual());
        this.detailResultBean.setScreenshot_pic(detailResultData.getScreenshot_pic());
        this.detailResultBean.setSharer(detailResultData.getSharer());
        this.detailResultBean.setSign_id(detailResultData.getSign_id());
        this.detailResultBean.setSize(detailResultData.getSize());
        this.detailResultBean.setTp_down_url(detailResultData.getTp_down_url());
        this.detailResultBean.setTab_page_info(detailResultData.getTab_page_info());
        this.detailResultBean.setTag_info(detailResultData.getTag_info());
        this.detailResultBean.setUnzip_size(detailResultData.getUnzip_size());
        this.detailResultBean.setVedio_cover_pic(detailResultData.getVedio_cover_pic());
        this.detailResultBean.setVedio_url(detailResultData.getVedio_url());
        this.detailResultBean.setVer(detailResultData.getVer());
        this.detailResultBean.setVer_name(detailResultData.getVer_name());
        this.detailResultBean.setWorld_shop(detailResultData.getWorld_shop());
        this.detailResultBean.setWorld_area(detailResultData.getWorld_area());
        this.detailResultBean.setDown_url_remote(detailResultData.getDown_url_remote());
        this.detailResultBean.setApk_sign(detailResultData.getApk_sign());
        this.detailResultBean.setFight_screenshot_pic(detailResultData.getFight_screenshot_pic());
        this.detailResultBean.setLast_week_down_count(detailResultData.getLast_week_down_count());
        this.detailResultBean.setRecommend_ad_info(detailResultData.getRecommend_ad_info());
        this.detailResultBean.setGame_describe_second(detailResultData.getGame_describe_second());
        this.detailResultBean.setGame_prompt(detailResultData.getGame_prompt());
        this.detailResultBean.setRecommend_information_switch(detailResultData.getRecommend_information_switch());
        this.detailResultBean.setRecommend_adinfo_switch(detailResultData.getRecommend_adinfo_switch());
        this.detailResultBean.setComment_switch(detailResultData.getComment_switch());
        this.detailResultBean.setPic_position(detailResultData.getPic_position());
        this.detailResultBean.setGame_coupon_list(detailResultData.getGame_coupon_list());
        this.detailResultBean.setGame_gift_package(detailResultData.getGame_gift_package());
        this.detailResultBean.setGift_package_switch(detailResultData.getGift_package_switch());
        this.detailResultBean.setDown_status(detailResultData.getDown_status());
        this.detailResultBean.setPanel_switch(detailResultData.getPanel_switch());
        this.detailResultBean.setBanner(detailResultData.getBanner());
        this.detailResultBean.setGame_server_state(detailResultData.getGame_server_state());
        this.detailResultBean.setGame_strategy(detailResultData.getGame_strategy());
        this.detailResultBean.setFast_entry_no4(detailResultData.getFast_entry_no4());
        this.detailResultBean.setGame_book_tag(detailResultData.getGame_book_tag());
        this.detailResultBean.setGame_follow(detailResultData.getGame_follow());
        this.detailResultBean.setGame_book(detailResultData.getGame_book());
        this.detailResultBean.setSp_tpl_two_banner_switch(detailResultData.getSp_tpl_two_banner_switch());
        this.detailResultBean.setSp_tpl_two_position(detailResultData.getSp_tpl_two_position());
        this.detailResultBean.setServer_qq(detailResultData.getServer_qq());
        this.detailResultBean.setPlayer_qq(detailResultData.getPlayer_qq());
        this.detailResultBean.setFollow_background_img(detailResultData.getFollow_background_img());
        this.detailResultBean.setForum_count(detailResultData.getForum_count());
        this.detailResultBean.setBespeak_switch(detailResultData.getBespeak_switch());
        this.detailResultBean.setBackground_color(detailResultData.getBackground_color());
        this.detailResultBean.setGame_server_switch(detailResultData.getGame_server_switch());
        this.detailResultBean.setGame_service_switch(detailResultData.getGame_service_switch());
        this.detailResultBean.setFast_entry_switch(detailResultData.getFast_entry_switch());
        this.detailResultBean.setBespeak_count(detailResultData.getBespeak_count());
        this.detailResultBean.setDown_count(detailResultData.getDown_count());
        this.detailResultBean.setShare_url(detailResultData.getShare_url());
        this.detailResultBean.setSp_tag_info(detailResultData.getSp_tag_info());
        this.detailResultBean.setPay_tag_info(detailResultData.getPay_tag_info());
        this.detailResultBean.set_from_type(this.extBean.get_from_type());
        this.detailResultBean.set_from(101);
        int height = this.gameDescribeInit.getHeight() / this.gameDescribeInit.getLineHeight();
        this.lineCount = height;
        this.detailResultBean.setLineCount(height);
        refreshAdapter();
        if (this.detailResultBean.getComment_switch() == 1) {
            getGameCommentList();
        }
        this.title_textview.setText(this.detailResultBean.getGame_name());
        if (this.intentDateBean != null) {
            this.downloadTask = q5.f.M().G(this.intentDateBean.getCrc_link_type_val());
        }
        DownloadTask downloadTask = this.downloadTask;
        if (downloadTask == null) {
            this.downloadTask = this.detailResultBean.getDownloadtaskDown();
            if (UtilsMy.p0(this.detailResultBean.getTag_info())) {
                this.downloadTask.setFileType(Dtype.android.name());
                if (com.join.android.app.common.utils.g.t0(getApplicationContext()).e(getApplicationContext(), this.detailResultBean.getPackage_name())) {
                    APKUtils.a aVarN = com.join.android.app.common.utils.g.t0(getApplicationContext()).n(getApplicationContext(), this.detailResultBean.getPackage_name());
                    if (!com.join.mgps.Util.t2.i(this.detailResultBean.getVer()) || aVarN.d() >= Integer.parseInt(this.detailResultBean.getVer())) {
                        this.downloadTask.setStatus(5);
                    } else {
                        this.downloadTask.setStatus(9);
                    }
                } else {
                    this.downloadTask.setStatus(0);
                }
            } else {
                this.downloadTask.setStatus(0);
            }
        } else {
            downloadTask.setDownloadType(this.detailResultBean.getDownloadType());
            this.downloadTask.setScreenshot_pic(this.detailResultBean.getScreenshot_pic());
        }
        updateButn();
        if (this.defaultDown) {
            instalButtomButn();
        }
        if (UtilsMy.v0(this.detailResultBean.getTag_info()) || Integer.parseInt(this.detailResultBean.getPlugin_num()) != 46) {
            return;
        }
        Iterator<TipBean> it2 = detailResultData.getTag_info().iterator();
        while (it2.hasNext() && !it2.next().getId().equals("23")) {
        }
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this.context);
    }

    public void setPopWindowBackgroundAlpha(float bgAlpha) {
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.alpha = bgAlpha;
        if (bgAlpha == 1.0f) {
            getWindow().clearFlags(2);
        } else {
            getWindow().addFlags(2);
        }
        getWindow().setAttributes(attributes);
    }

    @Click
    void share() {
        ShareBean shareBean = new ShareBean();
        String share_url = this.detailResultBean.getShare_url();
        shareBean.setqZoneShareUrl(share_url);
        shareBean.setQqUrl(share_url);
        shareBean.setWechatFriendUrl(share_url);
        shareBean.setWechatShareUrl(share_url);
        shareBean.setWeiboShareUrl(share_url);
        shareBean.setTitle(this.detailResultBean.getGame_name());
        shareBean.setText(this.detailResultBean.getInfo());
        shareBean.setImageUrl(this.detailResultBean.getIco_remote());
        shareBean.setFrom(2);
        shareBean.setGameId(this.detailResultBean.getCrc_sign_id());
        com.join.mgps.Util.w.r(this.context, shareBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code duplicated, block: B:22:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:24:0x0102  */
    @UiThread
    public void showDialog(final GiftPackageDataInfoBean bean) {
        DetailResultBeanV3 detailResultBeanV3;
        refreshAdapter();
        Dialog dialog = this.myDialog;
        if (dialog != null && dialog.isShowing()) {
            this.myDialog.dismiss();
            this.myDialog = null;
        }
        com.join.mgps.customview.t tVar = new com.join.mgps.customview.t(this.context, R.style.MyDialog);
        this.myDialog = tVar;
        tVar.setContentView(R.layout.save_code_dialog);
        Button button = (Button) this.myDialog.findViewById(R.id.dialog_button_cancle);
        Button button2 = (Button) this.myDialog.findViewById(R.id.dialog_button_ok);
        ((LinearLayout) this.myDialog.findViewById(R.id.layoutTop)).setVisibility(8);
        ((LinearLayout) this.myDialog.findViewById(R.id.layoutBottom)).setVisibility(0);
        TextView textView = (TextView) this.myDialog.findViewById(R.id.tip_title);
        TextView textView2 = (TextView) this.myDialog.findViewById(R.id.saveCodeTv);
        TextView textView3 = (TextView) this.myDialog.findViewById(R.id.saveCodeContent);
        TextView textView4 = (TextView) this.myDialog.findViewById(R.id.dialog_time);
        TextView textView5 = (TextView) this.myDialog.findViewById(R.id.moneyText);
        textView.setText("领号成功");
        textView3.setText(bean.getGift_package_code());
        button2.setText("关闭");
        button.setText("下载游戏");
        textView4.setText(com.join.mgps.Util.e0.A(bean.getGift_package_times_end()));
        textView2.setOnClickListener(new n(bean));
        button2.setOnClickListener(new o());
        DownloadTask downloadTask = this.downloadTask;
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        if (UtilsMy.x0(this.detailResultBean.getPay_tag_info(), this.detailResultBean.getCrc_sign_id()) > 0) {
            status = 43;
        }
        if (status == 0) {
            button.setText("下载游戏");
            detailResultBeanV3 = this.detailResultBean;
            if (detailResultBeanV3 != null) {
                UtilsMy.x0(detailResultBeanV3.getPay_tag_info(), this.detailResultBean.getCrc_sign_id());
                UtilsMy.I3(button, this.detailResultBean.getDown_status(), this.detailResultBean.getPay_tag_info(), this.detailResultBean.getCrc_sign_id());
                button.setBackgroundColor(-1);
                UtilsMy.B3(this.detailResultBean.getSp_tag_info(), textView5);
            }
        } else if (status == 5) {
            button.setText("启动游戏");
        } else if (status == 9 || status == 43) {
            button.setText("下载游戏");
            detailResultBeanV3 = this.detailResultBean;
            if (detailResultBeanV3 != null) {
                UtilsMy.x0(detailResultBeanV3.getPay_tag_info(), this.detailResultBean.getCrc_sign_id());
                UtilsMy.I3(button, this.detailResultBean.getDown_status(), this.detailResultBean.getPay_tag_info(), this.detailResultBean.getCrc_sign_id());
                button.setBackgroundColor(-1);
                UtilsMy.B3(this.detailResultBean.getSp_tag_info(), textView5);
            }
        } else {
            button.setText("下载中..");
        }
        if (this.detailResultBean.getDown_status() == 2) {
            button.setEnabled(false);
            button.setText("即将开放");
        }
        button.setOnClickListener(new p());
        Dialog dialog2 = this.myDialog;
        if (dialog2 == null || dialog2.isShowing()) {
            return;
        }
        this.myDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showInstallButn() {
        this.instalbutnLayout.setVisibility(0);
        this.instalButtomButn.setVisibility(0);
        this.progressbarLayout.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        this.loading.setVisibility(0);
        this.loding_faile.setVisibility(8);
        this.gameListView.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        this.loading.setVisibility(8);
        this.loding_faile.setVisibility(0);
        this.gameListView.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMain(List<CommentBaseBean> commitDataBeans) {
        this.detailResultBean.setCommitDataBeanList(commitDataBeans);
        refreshAdapter();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showProgress() {
        this.instalbutnLayout.setVisibility(8);
        this.instalButtomButn.setVisibility(8);
        this.progressbarLayout.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showSvipGiftDialog() {
        com.join.mgps.customview.t tVar = this.mGiftDialog;
        if (tVar == null) {
            this.mGiftDialog = com.join.mgps.Util.h0.h0(this.context).e0(this.context);
        } else if (tVar.isShowing()) {
            return;
        }
        this.mGiftDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String message) {
        com.join.mgps.Util.a3.b(this.context).d(message);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showVipDialog() {
        com.join.mgps.customview.t tVar = this.mVipDialog;
        if (tVar == null) {
            this.mVipDialog = com.join.mgps.Util.h0.h0(this.context).g0(this.context);
        } else if (tVar.isShowing()) {
            return;
        }
        this.mVipDialog.show();
    }

    void startLineAnimation() {
        this.downloadLine.setImageResource(R.drawable.line_blue_bg);
        Animation animationLoadAnimation = AnimationUtils.loadAnimation(this.context, R.anim.img_translate);
        this.animation = animationLoadAnimation;
        animationLoadAnimation.setFillAfter(true);
        this.imageLoading.setVisibility(0);
        this.imageLoading.startAnimation(this.animation);
        this.animation.setAnimationListener(new f());
    }

    void stopLineAnimation() {
        this.imageLoading.clearAnimation();
        this.imageLoading.setVisibility(8);
        this.downloadLine.setImageResource(R.drawable.line_grey_bg);
    }

    @Click
    void title_bar_layout() {
    }

    @Click
    void title_normal_download_cdv() {
        IntentUtil.getInstance().goMyGameManagerActivity(this);
    }

    @Click
    void title_normal_search_img() {
        SearchHintActivity_.intent(this).start();
        com.papa.sim.statistic.t.l(this.context).y2(Where.detial2, AccountUtil_.getInstance_(this.context).getUid());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void upNomore() {
        XListView2 xListView2 = this.list;
        if (xListView2 != null) {
            try {
                xListView2.g();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateAdapter() {
        if (this.detailResultBean.getComment_switch() == 1) {
            getGameCommentList();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateButn() {
        DetailResultBeanV3 detailResultBeanV3 = this.detailResultBean;
        if (detailResultBeanV3 == null || this.downloadTask == null) {
            return;
        }
        UtilsMy.A3(detailResultBeanV3.getSp_tag_info(), this.instalbutnLayout, this.downloadTask);
        ((TextView) this.instalbutnLayout.findViewById(R.id.moneyText)).setTextColor(-1);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("method updateButn() called.status=");
        sb2.append(this.downloadTask.getStatus());
        this.instalButtomButn.setBackgroundResource(R.drawable.detial_simple_normal_selecter);
        DownloadTask downloadTask = this.downloadTask;
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        if (UtilsMy.x0(this.detailResultBean.getPay_tag_info(), this.detailResultBean.getCrc_sign_id()) > 0) {
            status = 43;
        }
        if (status == 9) {
            showInstallButn();
            this.instalButtomButn.setText("更新");
            this.butn_showdownload.setImageResource(R.drawable.detail_comment_download_continue);
            this.butn_showdownload.setImageResource(R.drawable.detial_simple_install_selecter);
            return;
        }
        if (status == 12) {
            showInstallButn();
            this.instalButtomButn.setText("解压中..");
            return;
        }
        if (status == 13) {
            showInstallButn();
            this.instalButtomButn.setText("解压");
            this.butn_showdownload.setImageResource(R.drawable.detail_comment_download_continue);
            return;
        }
        if (status == 11) {
            showInstallButn();
            this.instalButtomButn.setText("安装");
            this.instalButtomButn.setBackgroundResource(R.drawable.detial_simple_install_selecter);
            this.butn_showdownload.setImageResource(R.drawable.detial_simple_install_selecter);
            return;
        }
        if (status == 5 || status == 42) {
            showInstallButn();
            updatePay(true);
            this.instalButtomButn.setBackgroundResource(R.drawable.detial_simple_open_selecter);
            this.instalButtomButn.setText(this.context.getResources().getString(R.string.download_status_finished));
            this.butn_showdownload.setImageResource(R.drawable.detail_comment_download_continue);
            return;
        }
        if (status == 2) {
            showProgress();
            this.butn_showdownload.setImageResource(R.drawable.detail_comment_download_pause);
            UtilsMy.U4(this.downloadTask);
            this.butnProgressBar.setProgress((int) this.downloadTask.getProgress());
            this.percent.setText(this.downloadTask.getProgress() + "%");
            return;
        }
        if (status == 3 || status == 6 || status == 27) {
            showProgress();
            this.butn_showdownload.setImageResource(R.drawable.detail_comment_download_continue);
            UtilsMy.U4(this.downloadTask);
            this.butnProgressBar.setProgress((int) this.downloadTask.getProgress());
            this.percent.setText(this.downloadTask.getProgress() + "%");
            return;
        }
        if (status == 10) {
            showInstallButn();
            this.instalButtomButn.setText("等待\u3000" + this.detailResultBean.getSize() + "M");
            this.butn_showdownload.setImageResource(R.drawable.detail_comment_download_continue);
            return;
        }
        if (status == 1) {
            return;
        }
        if (status == 43) {
            showInstallButn();
            if (!needPayGame(this.detailResultBean) || t6.e0.o().p(this.detailResultBean.getCrc_sign_id())) {
                this.instalButtomButn.setText(this.context.getResources().getString(R.string.download_status_download));
            } else {
                this.instalButtomButn.setText(this.context.getResources().getString(R.string.pay_game_amount, this.detailResultBean.getPay_tag_info().getPayGameAmount()));
            }
            this.butn_showdownload.setImageResource(R.drawable.detail_comment_download_continue);
            DetailResultBeanV3 detailResultBeanV4 = this.detailResultBean;
            if (detailResultBeanV4 != null) {
                if (detailResultBeanV4.getBespeak_switch() != 1 || this.detailResultBean.getDown_status() != 2) {
                    UtilsMy.x0(this.detailResultBean.getPay_tag_info(), this.detailResultBean.getCrc_sign_id());
                    UtilsMy.D3(this.instalButtomButn, this.detailResultBean);
                    return;
                } else {
                    if (this.detailResultBean.getGame_book() != 1) {
                        this.instalButtomButn.setText("预约");
                        return;
                    }
                    this.instalButtomButn.setText("已预约");
                    UtilsMy.x0(this.detailResultBean.getPay_tag_info(), this.detailResultBean.getCrc_sign_id());
                    UtilsMy.D3(this.instalButtomButn, this.detailResultBean);
                    return;
                }
            }
            return;
        }
        if (status == 48) {
            showInstallButn();
            this.instalButtomButn.setText(this.context.getResources().getString(R.string.download_status_installing));
            return;
        }
        showInstallButn();
        if (!needPayGame(this.detailResultBean) || t6.e0.o().p(this.detailResultBean.getCrc_sign_id())) {
            this.instalButtomButn.setText(this.context.getResources().getString(R.string.download_status_download));
        } else {
            this.instalButtomButn.setText(this.context.getResources().getString(R.string.pay_game_amount, this.detailResultBean.getPay_tag_info().getPayGameAmount()));
        }
        this.butn_showdownload.setImageResource(R.drawable.detail_comment_download_continue);
        DetailResultBeanV3 detailResultBeanV5 = this.detailResultBean;
        if (detailResultBeanV5 != null) {
            if (detailResultBeanV5.getBespeak_switch() != 1 || this.detailResultBean.getDown_status() != 2) {
                UtilsMy.x0(this.detailResultBean.getPay_tag_info(), this.detailResultBean.getCrc_sign_id());
                UtilsMy.D3(this.instalButtomButn, this.detailResultBean);
            } else {
                if (this.detailResultBean.getGame_book() != 1) {
                    this.instalButtomButn.setText("预约");
                    return;
                }
                this.instalButtomButn.setText("已预约");
                UtilsMy.x0(this.detailResultBean.getPay_tag_info(), this.detailResultBean.getCrc_sign_id());
                UtilsMy.D3(this.instalButtomButn, this.detailResultBean);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateDownloadView() {
        try {
            this.downloadView.setDownloadGameNum();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateDownloadingPoint(int number) {
        if (number < 100) {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.biground.getLayoutParams();
            layoutParams.width = getResources().getDimensionPixelOffset(R.dimen.round_large_size);
            layoutParams.height = getResources().getDimensionPixelOffset(R.dimen.round_large_size);
            this.biground.setLayoutParams(layoutParams);
            this.biground.setCompoundDrawables(null, null, null, null);
            this.biground.setBackgroundResource(R.drawable.mygame_big_round);
            this.biground.setPadding(1, 0, 0, 1);
        } else {
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.biground.getLayoutParams();
            layoutParams2.width = getResources().getDimensionPixelOffset(R.dimen.dp70);
            layoutParams2.height = getResources().getDimensionPixelOffset(R.dimen.round_large_size);
            layoutParams2.setMargins(4, (int) TypedValue.applyDimension(1, 7.0f, getResources().getDisplayMetrics()), 0, 0);
            this.biground.setGravity(17);
            this.biground.setLayoutParams(layoutParams2);
            this.biground.setCompoundDrawables(null, null, null, null);
            this.biground.setBackgroundResource(R.drawable.message_round);
            this.biground.setPadding(1, 0, 2, 1);
        }
        this.biground.setVisibility(0);
        this.biground.setText(number + "");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateLine(int downloadingNumber) {
        if (downloadingNumber == 0) {
            stopLineAnimation();
        } else {
            startLineAnimation();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateListHeadAndFoot() {
        XListView2 xListView2 = this.list;
        if (xListView2 != null) {
            try {
                xListView2.u();
                this.list.v();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateNoOpenPoint() {
        stopLineAnimation();
        this.biground.setVisibility(8);
        this.biground.setText("");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 1000)
    public void updatePay(final boolean needRetry) {
        ExtBean extBean = this.extBean;
        if (extBean == null || !"checkgame".equals(extBean.getFrom())) {
            return;
        }
        com.join.mgps.Util.x1.c().b(this.context, this.extBean.getFrom_id(), new b(needRetry));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateTitleButn(ResultMainBean result, int type) {
        if (result.getFlag() == 1) {
            if (type == 2) {
                this.detailResultBean.setGame_follow(1);
                com.join.mgps.Util.a3.b(this.context).d("收藏成功");
            } else if (type == 3) {
                this.detailResultBean.setGame_book(0);
            } else if (type == 4) {
                this.detailResultBean.setGame_book(1);
                Intent intent = new Intent("com.broadcast.bespeak.sussess");
                intent.putExtra("gameid", this.detailResultBean.getCrc_sign_id());
                sendBroadcast(intent);
                com.join.mgps.Util.h0.h0(this.context).O(this.context, 1, new e()).show();
            }
            refreshAdapter();
            updateButn();
        }
    }

    private void setNullItem(int i10) {
        this.dataSet.add(new MGGameDetailAdapter.y0(MGGameDetailAdapter.ViewType.NULLITEM, i10 + ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMain(DetailResultBeanV3 detailResultData) {
        try {
            this.loading.setVisibility(8);
            this.gameListView.setVisibility(0);
            this.loding_faile.setVisibility(8);
            this.detialDownBottom.setVisibility(0);
            if (detailResultData != null) {
                this.gameDescribeInit.setText(detailResultData.getGame_describe_second());
            }
            this.mgGameDetailAdapter.f0(0);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code duplicated, block: B:26:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:28:0x00ea  */
    @UiThread
    public void showDialog(final GiftPackageDataOperationBean bean) {
        Dialog dialog = this.myDialog;
        if (dialog != null && dialog.isShowing()) {
            this.myDialog.dismiss();
            this.myDialog = null;
        }
        com.join.mgps.customview.t tVar = new com.join.mgps.customview.t(this.context, R.style.MyDialog);
        this.myDialog = tVar;
        tVar.setContentView(R.layout.save_code_dialog);
        Button button = (Button) this.myDialog.findViewById(R.id.dialog_button_cancle);
        Button button2 = (Button) this.myDialog.findViewById(R.id.dialog_button_ok);
        TextView textView = (TextView) this.myDialog.findViewById(R.id.tip_title);
        TextView textView2 = (TextView) this.myDialog.findViewById(R.id.saveCodeTv);
        TextView textView3 = (TextView) this.myDialog.findViewById(R.id.moneyText);
        TextView textView4 = (TextView) this.myDialog.findViewById(R.id.saveCodeContent);
        textView.setText("领号成功");
        textView4.setText(bean.getGift_info().getGift_package_code());
        button2.setText("关闭");
        button.setText("下载游戏");
        textView2.setOnClickListener(new q(bean));
        button2.setOnClickListener(new r());
        if (this.detailResultBean.getDown_status() == 2) {
            button.setEnabled(false);
            button.setText("即将开放");
        }
        DownloadTask downloadTask = this.downloadTask;
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        if (bean.getGame_info() != null && UtilsMy.x0(bean.getGame_info().getPay_tag_info(), bean.getGame_info().getCrc_sign_id()) > 0) {
            status = 43;
        }
        if (status == 0) {
            button.setText("下载游戏");
            if (bean.getGame_info() != null) {
                UtilsMy.x0(bean.getGame_info().getPay_tag_info(), bean.getGame_info().getCrc_sign_id());
                UtilsMy.I3(button, bean.getGame_info().getDown_status(), bean.getGame_info().getPay_tag_info(), bean.getGame_info().getCrc_sign_id());
                UtilsMy.B3(bean.getGame_info().getSp_tag_info(), textView3);
            }
        } else if (status == 5) {
            button.setText("启动游戏");
        } else if (status != 9 && status != 43) {
            button.setText("下载中..");
        } else {
            button.setText("下载游戏");
            if (bean.getGame_info() != null) {
                UtilsMy.x0(bean.getGame_info().getPay_tag_info(), bean.getGame_info().getCrc_sign_id());
                UtilsMy.I3(button, bean.getGame_info().getDown_status(), bean.getGame_info().getPay_tag_info(), bean.getGame_info().getCrc_sign_id());
                UtilsMy.B3(bean.getGame_info().getSp_tag_info(), textView3);
            }
        }
        button.setOnClickListener(new s());
        refreshAdapter();
        Dialog dialog2 = this.myDialog;
        if (dialog2 == null || dialog2.isShowing()) {
            return;
        }
        this.myDialog.show();
    }

    void setData(int p10) {
        this.butnProgressBar.setProgress(p10);
        this.percent.setText(p10 + "%");
    }
}
