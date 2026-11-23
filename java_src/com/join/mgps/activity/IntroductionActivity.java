package com.join.mgps.activity;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.JavascriptInterface;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.BaseFragmentActivity;
import com.google.android.material.appbar.AppBarLayout;
import com.haima.hmcp.beans.ClipBoardItemData;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.introduction.IntroductionCommentListFragment;
import com.join.kotlin.ui.introduction.IntroductionCommentListFragment_;
import com.join.kotlin.ui.introduction.IntroductionProgressFragment;
import com.join.kotlin.ui.introduction.IntroductionProgressFragment_;
import com.join.kotlin.ui.introduction.MoreIntroductionFragment;
import com.join.kotlin.ui.introduction.MoreIntroductionFragment_;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.customview.NestedScrollWebView;
import com.join.mgps.dto.BbsDetailBean;
import com.join.mgps.dto.IntentDataMain;
import com.join.mgps.dto.IntroductionCommentDetailParamsBean;
import com.join.mgps.dto.RequestBbsDetailArgs;
import com.join.mgps.dto.RequestBbsDispraiseArgs;
import com.join.mgps.dto.RequestBbsPraiseArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.TimingBean;
import com.join.mgps.dto.VideoChaptersBean;
import com.join.mgps.pref.PrefDef_;
import com.mgsim.common.fragment.BackHandledFragment;
import com.papa.sim.statistic.Data;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.wufan.user.service.protobuf.UserInfo;
import java.lang.reflect.InvocationTargetException;
import java.util.LinkedHashMap;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.introduction_activity_layout)
public class IntroductionActivity extends BaseFragmentActivity implements com.mgsim.common.fragment.a, com.join.mgps.callbacks.i {
    private String appCaceDir;
    AppBarLayout app_bar;
    private WebChromeClient chromeClient;
    int contentType;
    BbsDetailBean detailBean;

    @ViewById
    TextView failedMessage;

    @ViewById
    FrameLayout fl_content;

    @ViewById
    FrameLayout fl_front_view;
    FragmentManager fragmentManager;

    @Extra
    String gameId;

    @Extra
    IntentDataMain intentDataMain;
    IntroductionCommentListFragment introductionCommentListFragment;
    IntroductionProgressFragment introductionProgressFragment;
    Boolean isCollection;

    @ViewById
    ImageView iv_praise;

    @ViewById
    LinearLayout layout_share;

    @ViewById
    LinearLayout ll_progress;

    @ViewById
    LinearLayout loding_faile;

    @ViewById
    LinearLayout loding_layout;
    private BackHandledFragment mBackHandedFragment;
    MoreIntroductionFragment moreIntroductionFragment;
    NestedScrollWebView ns_web_view;

    @Extra
    IntroductionCommentDetailParamsBean params;

    @ViewById
    ProgressBar pb_progress;

    @Extra
    int postId;

    @Pref
    PrefDef_ prefDef;
    com.join.mgps.rpc.k rpcGameClient;

    @Extra
    int tagId;
    private String time_key;
    TextView title_textview;

    @ViewById
    TextView tv_comment_num;

    @ViewById
    TextView tv_praise_num;

    @ViewById
    TextView tv_type;

    @ViewById
    FrameLayout video_view;
    String webData;

    @ViewById
    RelativeLayout weblayout;
    PopupWindow window;
    private View xCustomView;
    String TAG = "IntroductionActivity";
    private Handler mHandler = new a();
    private View xprogressvideo = null;
    Fragment currentFragment = null;
    private boolean firstLoad = true;
    com.join.mgps.dialog.f1 dialog = null;
    boolean isRequestPraise = false;
    boolean isRequestDisPraise = false;
    long liveTime = 0;
    LinkedHashMap<String, Long> activityQueue = new LinkedHashMap<>();

    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(@NonNull Message msg) {
            super.handleMessage(msg);
            int i10 = msg.what;
            if (i10 == 1) {
                return;
            }
            if (i10 == 2) {
                IntroductionActivity introductionActivity = IntroductionActivity.this;
                introductionActivity.onHide(introductionActivity.introductionProgressFragment);
            } else if (i10 == 3) {
                IntroductionActivity introductionActivity2 = IntroductionActivity.this;
                NestedScrollWebView nestedScrollWebView = introductionActivity2.ns_web_view;
                introductionActivity2.simulateTouchEvent(nestedScrollWebView, nestedScrollWebView.getMeasuredWidth() / 2, IntroductionActivity.this.ns_web_view.getMeasuredHeight() / 2);
            } else if (i10 == 4) {
                IntroductionActivity.this.onOpenComment();
                IntroductionActivity.this.firstLoad = false;
            }
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            IntroductionActivity.this.window.dismiss();
            IntroductionActivity introductionActivity = IntroductionActivity.this;
            if (introductionActivity.detailBean != null) {
                com.papa.sim.statistic.t.l(introductionActivity).s1(Event.singleStartGamePageDetail, Event.ClickBrowser, "", new Ext().setFrom("1").setArticleId(String.valueOf(IntroductionActivity.this.detailBean.getId())).setFromTabId(String.valueOf(IntroductionActivity.this.tagId)), new Data().setGameId(IntroductionActivity.this.gameId));
                IntroductionActivity introductionActivity2 = IntroductionActivity.this;
                introductionActivity2.openSystemWeb(introductionActivity2.detailBean.getSourceUrl());
            }
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            IntroductionActivity.this.window.dismiss();
            IntroductionActivity introductionActivity = IntroductionActivity.this;
            if (introductionActivity.detailBean != null) {
                com.papa.sim.statistic.t.l(introductionActivity).s1(Event.singleStartGamePageDetail, Event.ClickReport, "", new Ext().setFrom("1").setArticleId(String.valueOf(IntroductionActivity.this.detailBean.getId())).setFromTabId(String.valueOf(IntroductionActivity.this.tagId)), new Data().setGameId(IntroductionActivity.this.gameId));
                IntentUtil intentUtil = IntentUtil.getInstance();
                IntroductionActivity introductionActivity2 = IntroductionActivity.this;
                intentUtil.goShareWebActivity(introductionActivity2, introductionActivity2.getReportUrl());
            }
        }
    }

    public class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Context f54056a;

        public e(Context context) {
            this.f54056a = context;
        }

        @JavascriptInterface
        public void openImage(String[] imgs, int p10) {
            Intent intent = new Intent(IntroductionActivity.this, (Class<?>) ImagePagerActivity.class);
            intent.putExtra("image_urls", imgs);
            intent.putExtra("image_index", p10);
            IntroductionActivity.this.startActivity(intent);
        }
    }

    private class f extends WebViewClient {
        public f(Context context) {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView view, String url2) {
            super.onPageFinished(view, url2);
            com.join.mgps.Util.g1.b(IntroductionActivity.this.TAG, "onPageFinished() called." + url2);
            view.getSettings().setBlockNetworkImage(false);
            IntroductionActivity.this.hideLoading();
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView view, String url2, Bitmap favicon) {
            super.onPageStarted(view, url2, favicon);
            com.join.mgps.Util.g1.b(IntroductionActivity.this.TAG, "onPageStarted() called." + url2);
            IntroductionActivity.this.showLoding();
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView view, int errorCode, String description, String failingUrl) {
            super.onReceivedError(view, errorCode, description, failingUrl);
            com.join.mgps.Util.g1.b(IntroductionActivity.this.TAG, "onReceivedError() called." + failingUrl);
            if (failingUrl.endsWith(".zip")) {
                return;
            }
            view.loadDataWithBaseURL(null, "", ClipBoardItemData.TYPE_TEXT_HTML, "utf-8", null);
            IntroductionActivity.this.showLodingFailed();
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(WebView view, SslErrorHandler handler, SslError error) {
            int primaryError = error.getPrimaryError();
            if (primaryError == 3 || primaryError == 5) {
                handler.proceed();
            }
            handler.cancel();
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView view, String url2) {
            com.join.mgps.Util.g1.b(IntroductionActivity.this.TAG, "shouldOverrideUrlLoading() called.");
            if (!com.join.android.app.common.utils.m.j(IntroductionActivity.this)) {
                com.join.mgps.Util.a3.b(IntroductionActivity.this).d(IntroductionActivity.this.getString(R.string.net_connect_failed));
            } else {
                if (!url2.startsWith("weixin:")) {
                    if (url2.startsWith("http") || url2.startsWith("https") || url2.startsWith("file://")) {
                        return super.shouldOverrideUrlLoading(view, url2);
                    }
                    try {
                        IntroductionActivity.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(url2)));
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                    return true;
                }
                try {
                    IntroductionActivity.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(url2)));
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            }
            return true;
        }
    }

    private int getUid() {
        UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
        if (accountData != null) {
            return accountData.getUid();
        }
        return 0;
    }

    private void init() {
        initWebSet();
        this.ns_web_view.setWebChromeClient(new b());
    }

    private void lodeWebView(String data) {
        try {
            if (!com.join.android.app.common.utils.m.j(this)) {
                showLodingFailed();
            } else if (this.ns_web_view == null) {
            } else {
                loadData(data);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void quitFullScreen() {
        this.video_view.setVisibility(8);
        this.weblayout.setVisibility(0);
    }

    private void setFullScreen() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void simulateTouchEvent(View view, int x10, int y10) {
        long jUptimeMillis = SystemClock.uptimeMillis();
        long jUptimeMillis2 = SystemClock.uptimeMillis() + 100;
        float f10 = x10;
        float f11 = y10;
        view.dispatchTouchEvent(MotionEvent.obtain(jUptimeMillis, jUptimeMillis2, 0, f10, f11, 0));
        view.dispatchTouchEvent(MotionEvent.obtain(jUptimeMillis + 1000, jUptimeMillis2 + 1000, 1, f10, f11, 0));
    }

    private String wrapVideoUrl(String url, int time) {
        if (com.join.mgps.Util.t2.h(url)) {
            return "";
        }
        if (url.contains("?")) {
            return url + "&t=" + time;
        }
        return url + "?t=" + time;
    }

    @AfterViews
    void afterview() {
        com.join.mgps.Util.g1.b(this.TAG, "afterView() called.");
        try {
            TextView textView = this.failedMessage;
            if (textView != null) {
                textView.setText("网页加载失败，再试试吧~");
            }
            this.dialog = com.join.mgps.Util.h0.h0(this).x(this);
            this.time_key = "TIME_" + this.postId;
            loadData();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void attachSwitchStyle(FragmentTransaction transaction) {
        transaction.setCustomAnimations(R.anim.from_right, R.anim.out_right);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void dialogZ() {
        this.dialog.b();
        this.dialog.a("正在上传图片请稍候");
        this.dialog.setCancelable(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void dismissLoadingDialog() {
        com.join.mgps.dialog.f1 f1Var = this.dialog;
        if (f1Var != null) {
            f1Var.dismiss();
        }
    }

    @Receiver(actions = {p5.a.f96196g0})
    void finishView(Intent intent) {
        finish();
    }

    void gameDestroy() {
        BbsDetailBean bbsDetailBean = this.detailBean;
        if (bbsDetailBean == null || bbsDetailBean.getType().intValue() != 1) {
            return;
        }
        synchronized (this) {
            if (this.activityQueue.containsKey(this.time_key)) {
                Long l10 = this.activityQueue.get(this.time_key);
                if (l10 == null) {
                    l10 = 0L;
                }
                if (l10.longValue() > 0) {
                    long jCurrentTimeMillis = System.currentTimeMillis() - l10.longValue();
                    this.activityQueue.remove(this.time_key);
                    this.liveTime += jCurrentTimeMillis;
                }
            }
            if (this.activityQueue.isEmpty() && this.liveTime > 0) {
                com.papa.sim.statistic.t.l(this).s1(Event.singleStartGamePageDetail, Event.videoLookTimes, "", new Ext().setArticleId(String.valueOf(this.postId)).setLiveTime(this.liveTime / 1000).setFrom("1"), new Data().setGameId(this.gameId));
            }
            this.liveTime = 0L;
        }
    }

    void gamePause() {
        BbsDetailBean bbsDetailBean = this.detailBean;
        if (bbsDetailBean == null || bbsDetailBean.getType().intValue() != 1) {
            return;
        }
        synchronized (this) {
            if (this.activityQueue.containsKey(this.time_key)) {
                Long l10 = this.activityQueue.get(this.time_key);
                if (l10 == null) {
                    l10 = 0L;
                }
                long jCurrentTimeMillis = System.currentTimeMillis() - l10.longValue();
                this.activityQueue.remove(this.time_key);
                if (this.activityQueue.isEmpty()) {
                    this.liveTime += jCurrentTimeMillis;
                }
            }
        }
    }

    void gameResume() {
        BbsDetailBean bbsDetailBean = this.detailBean;
        if (bbsDetailBean == null || bbsDetailBean.getType().intValue() != 1) {
            return;
        }
        this.activityQueue.put(this.time_key, Long.valueOf(System.currentTimeMillis()));
    }

    String getReportUrl() {
        BbsDetailBean bbsDetailBean = this.detailBean;
        if (bbsDetailBean == null || !com.join.mgps.Util.t2.i(bbsDetailBean.getReportUrl())) {
            return "";
        }
        if (this.detailBean.getReportUrl().contains("?")) {
            return this.detailBean.getReportUrl() + "&resourceType=POST&ruid=" + this.detailBean.getPosterId() + "&resourceId=" + this.postId;
        }
        return this.detailBean.getReportUrl() + "?resourceType=POST&ruid=" + this.detailBean.getPosterId() + "&resourceId=" + this.postId;
    }

    public void hideCustomView() {
        this.xCustomView = null;
        quitFullScreen();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void hideLoading() {
        this.loding_faile.setVisibility(8);
        this.loding_layout.setVisibility(8);
    }

    public boolean inCustomView() {
        return this.xCustomView != null;
    }

    public void initWebSet() {
        this.ns_web_view.getSettings().setDomStorageEnabled(true);
        this.ns_web_view.getSettings().setRenderPriority(WebSettings.RenderPriority.HIGH);
        this.appCaceDir = getApplicationContext().getDir("cacheH5", 0).getPath();
        this.ns_web_view.getSettings().setAllowFileAccess(true);
        this.ns_web_view.getSettings().setCacheMode(-1);
        this.ns_web_view.getSettings().setPluginState(WebSettings.PluginState.ON);
        this.ns_web_view.getSettings().setLoadWithOverviewMode(true);
        this.ns_web_view.getSettings().setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NARROW_COLUMNS);
        this.ns_web_view.getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
        this.ns_web_view.getSettings().setTextZoom(100);
        this.ns_web_view.getSettings().setMediaPlaybackRequiresUserGesture(false);
        this.ns_web_view.getSettings().setUseWideViewPort(true);
        this.ns_web_view.getSettings().setSupportZoom(false);
        this.ns_web_view.getSettings().setBuiltInZoomControls(false);
        this.ns_web_view.getSettings().setJavaScriptEnabled(true);
        this.ns_web_view.getSettings().setDefaultTextEncodingName("UTF-8");
        this.ns_web_view.getSettings().setCacheMode(-1);
        this.ns_web_view.setWebViewClient(new f(this));
        this.ns_web_view.addJavascriptInterface(new e(this), "papa");
        try {
            if (Build.VERSION.SDK_INT > 27) {
                this.ns_web_view.getSettings().setSafeBrowsingEnabled(false);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void loadData(String data) {
        this.ns_web_view.loadData(data, ClipBoardItemData.TYPE_TEXT_HTML, "utf-8");
        this.mHandler.removeMessages(3);
        BbsDetailBean bbsDetailBean = this.detailBean;
        if (bbsDetailBean == null || bbsDetailBean.getType().intValue() != 1) {
            return;
        }
        this.mHandler.sendEmptyMessageDelayed(3, 1300L);
    }

    public void loadUrl(String url) {
        this.ns_web_view.loadUrl(url);
    }

    @Click
    void loding_faile() {
        com.join.mgps.Util.g1.b(this.TAG, "loding_faile() called.");
        if (this.ns_web_view != null) {
            lodeWebView(this.webData);
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        BackHandledFragment backHandledFragment = this.mBackHandedFragment;
        if (backHandledFragment == null || !backHandledFragment.a()) {
            if (getSupportFragmentManager().getBackStackEntryCount() == 0) {
                super.onBackPressed();
            } else {
                getSupportFragmentManager().popBackStack();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void onBbsDisPraise(Integer resourceId) {
        try {
            if (this.isRequestDisPraise) {
                return;
            }
            if (!com.join.android.app.common.utils.m.j(this)) {
                this.isRequestDisPraise = false;
                showTost(getResources().getString(R.string.net_connect_failed));
                return;
            }
            if (IntentUtil.getInstance().goLogin(this)) {
                showTost("您还未登录请先登录帐号！");
                this.isRequestDisPraise = false;
                return;
            }
            try {
                this.isRequestDisPraise = true;
                RequestBbsDispraiseArgs requestBbsDispraiseArgs = new RequestBbsDispraiseArgs();
                requestBbsDispraiseArgs.setResourceType("POST");
                requestBbsDispraiseArgs.setResourceId(resourceId);
                requestBbsDispraiseArgs.setUid(Integer.valueOf(getUid()));
                RequestModel requestModel = new RequestModel(this);
                requestModel.setArgs(requestBbsDispraiseArgs);
                ResponseModel<Boolean> responseModelI0 = this.rpcGameClient.i0(requestModel.makeSign());
                this.isRequestDisPraise = false;
                if (responseModelI0 == null || !responseModelI0.getData().booleanValue()) {
                    return;
                }
                updatePraise(false);
            } catch (Exception e10) {
                e10.printStackTrace();
                this.isRequestDisPraise = false;
            }
        } catch (Exception e11) {
            this.isRequestDisPraise = false;
            e11.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void onBbsPraise(String ruid, Integer resourceId) {
        try {
            if (this.isRequestPraise) {
                return;
            }
            if (!com.join.android.app.common.utils.m.j(this)) {
                this.isRequestPraise = false;
                showTost(getResources().getString(R.string.net_connect_failed));
                return;
            }
            if (IntentUtil.getInstance().goLogin(this)) {
                showTost("您还未登录请先登录帐号！");
                this.isRequestPraise = false;
                return;
            }
            try {
                this.isRequestPraise = true;
                RequestBbsPraiseArgs requestBbsPraiseArgs = new RequestBbsPraiseArgs();
                requestBbsPraiseArgs.setResourceType("POST");
                requestBbsPraiseArgs.setResourceId(resourceId);
                requestBbsPraiseArgs.setRuid(ruid);
                requestBbsPraiseArgs.setUid(Integer.valueOf(getUid()));
                RequestModel requestModel = new RequestModel(this);
                requestModel.setArgs(requestBbsPraiseArgs);
                ResponseModel<Boolean> responseModelK = this.rpcGameClient.K(requestModel.makeSign());
                this.isRequestPraise = false;
                if (responseModelK == null || !responseModelK.getData().booleanValue()) {
                    return;
                }
                updatePraise(true);
                com.papa.sim.statistic.t.l(this).s1(Event.singleStartGamePageDetail, Event.ClickLike, "", new Ext().setFrom("1").setArticleId(String.valueOf(this.detailBean.getId())).setFromTabId(String.valueOf(this.tagId)), new Data().setGameId(this.gameId));
            } catch (Exception e10) {
                this.isRequestPraise = false;
                e10.printStackTrace();
            }
        } catch (Exception e11) {
            this.isRequestPraise = false;
            e11.printStackTrace();
        }
    }

    @Click({R.id.ll_more})
    void onClickMore() {
        View viewInflate = getLayoutInflater().inflate(R.layout.introduction_comment_bottom_popwin, (ViewGroup) null);
        TextView textView = (TextView) viewInflate.findViewById(R.id.tv_pop_open_web);
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.tv_pop_report);
        PopupWindow popupWindow = new PopupWindow(viewInflate, -2, -2);
        this.window = popupWindow;
        popupWindow.setBackgroundDrawable(new ColorDrawable(Color.parseColor("#00000000")));
        this.window.setFocusable(true);
        this.window.setOutsideTouchable(true);
        this.window.update();
        Rect rect = new Rect();
        View viewFindViewById = findViewById(R.id.ll_more);
        viewFindViewById.getGlobalVisibleRect(rect);
        this.window.showAtLocation(findViewById(R.id.ll_more), 0, (int) (rect.left - getResources().getDimension(R.dimen.wdp187)), (int) ((rect.bottom - getResources().getDimension(R.dimen.wdp145)) - (viewFindViewById.getHeight() / 2)));
        textView.setOnClickListener(new c());
        textView2.setOnClickListener(new d());
        if (this.detailBean != null) {
            com.papa.sim.statistic.t.l(this).s1(Event.singleStartGamePageDetail, Event.ClickMoreButton, "", new Ext().setFrom("1").setArticleId(String.valueOf(this.detailBean.getId())).setFromTabId(String.valueOf(this.tagId)), new Data().setGameId(this.gameId));
        }
    }

    @Click({R.id.ll_close_drawer})
    void onClose() {
        PopupWindow popupWindow = this.window;
        if (popupWindow != null) {
            popupWindow.dismiss();
        }
        finish();
    }

    @Override // com.join.mgps.callbacks.i
    public void onCommentCommitSuccess() {
        com.papa.sim.statistic.t.l(this).s1(Event.singleStartGamePageDetail, Event.PostComment, String.valueOf(getUid()), new Ext().setFrom("1").setArticleId(String.valueOf(this.detailBean.getId())).setFromTabId(String.valueOf(this.tagId)), new Data().setGameId(this.gameId));
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.fragmentManager = getSupportFragmentManager();
        this.rpcGameClient = com.join.mgps.rpc.impl.i.P0();
        if (savedInstanceState != null) {
            try {
                NestedScrollWebView nestedScrollWebView = this.ns_web_view;
                if (nestedScrollWebView != null) {
                    nestedScrollWebView.restoreState(savedInstanceState);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        try {
            if (this.intentDataMain != null) {
                moveTaskToBack(true);
            }
            NestedScrollWebView nestedScrollWebView = this.ns_web_view;
            if (nestedScrollWebView != null) {
                nestedScrollWebView.destroy();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        super.onDestroy();
        gameDestroy();
    }

    @Override // com.join.mgps.callbacks.i
    public void onHide(Fragment fragment) {
        if (fragment != null) {
            try {
                this.fragmentManager.beginTransaction().hide(fragment).commitNowAllowingStateLoss();
                this.currentFragment = null;
            } catch (Exception e10) {
                e10.printStackTrace();
                return;
            }
        }
        if (fragment == this.introductionProgressFragment) {
            this.mHandler.removeMessages(2);
        }
    }

    @Override // com.join.mgps.callbacks.i
    public void onItemClick(int postId, int contentType, boolean isCollection) {
        if (this.postId == postId) {
            return;
        }
        gameDestroy();
        this.postId = postId;
        this.isCollection = Boolean.valueOf(isCollection);
        this.contentType = contentType;
        this.detailBean = null;
        this.time_key = "TIME_" + postId;
        loadData();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        com.join.mgps.Util.g1.b(this.TAG, "onKeyDown() called.");
        if (keyCode != 4 || event.getRepeatCount() != 0 || !inCustomView()) {
            return super.onKeyDown(keyCode, event);
        }
        this.chromeClient.onHideCustomView();
        return true;
    }

    @Click({R.id.ll_comment})
    void onOpenComment() {
        boolean z10;
        if (this.detailBean != null) {
            if (this.introductionCommentListFragment == null) {
                IntroductionCommentListFragment_ introductionCommentListFragment_ = new IntroductionCommentListFragment_();
                this.introductionCommentListFragment = introductionCommentListFragment_;
                introductionCommentListFragment_.setFragmentCallback(this);
                z10 = true;
            } else {
                z10 = false;
            }
            this.introductionCommentListFragment.setVideo(this.detailBean.getType().intValue() == 1);
            this.introductionCommentListFragment.setDuration(this.detailBean.getDuration().intValue());
            this.introductionCommentListFragment.setParams(this.detailBean.getId().intValue(), this.detailBean.getPosterId().intValue(), this.detailBean.getReportUrl(), this.gameId);
            IntroductionCommentDetailParamsBean introductionCommentDetailParamsBean = this.params;
            if (introductionCommentDetailParamsBean != null) {
                this.introductionCommentListFragment.setCommentId(introductionCommentDetailParamsBean.getParent_comment_id());
                this.introductionCommentListFragment.setFromNotice(this.firstLoad);
            }
            IntroductionCommentListFragment introductionCommentListFragment = this.introductionCommentListFragment;
            if (introductionCommentListFragment != null) {
                introductionCommentListFragment.notifyDataChanged(this.detailBean.getId().intValue());
            }
            showFragment(this.currentFragment, this.introductionCommentListFragment, z10);
            com.papa.sim.statistic.t.l(this).s1(Event.singleStartGamePageDetail, Event.ClickComment, "", new Ext().setFrom("1").setArticleId(String.valueOf(this.detailBean.getId())).setFromTabId(String.valueOf(this.tagId)), new Data().setGameId(this.gameId));
        }
    }

    @Click({R.id.ll_progress})
    void onOpenProgress() {
        boolean z10;
        if (this.detailBean != null) {
            if (this.introductionProgressFragment == null) {
                IntroductionProgressFragment_ introductionProgressFragment_ = new IntroductionProgressFragment_();
                this.introductionProgressFragment = introductionProgressFragment_;
                introductionProgressFragment_.setData(this.detailBean);
                z10 = true;
            } else {
                z10 = false;
            }
            IntroductionProgressFragment introductionProgressFragment = this.introductionProgressFragment;
            if (introductionProgressFragment != null) {
                introductionProgressFragment.notifyDataChanged(this.detailBean);
            }
            showFragment(this.currentFragment, this.introductionProgressFragment, z10);
            if (this.detailBean.getIsCollection().intValue() == 1) {
                com.papa.sim.statistic.t.l(this).s1(Event.singleStartGamePageDetail, Event.ClickSeriesButton, "", new Ext().setFrom("1").setArticleId(String.valueOf(this.detailBean.getId())).setFromTabId(String.valueOf(this.tagId)), new Data().setGameId(this.gameId));
            } else {
                com.papa.sim.statistic.t.l(this).s1(Event.singleStartGamePageDetail, Event.ClickSpeedButton, "", new Ext().setFrom("1").setArticleId(String.valueOf(this.detailBean.getId())).setFromTabId(String.valueOf(this.tagId)), new Data().setGameId(this.gameId));
            }
        }
    }

    @Click({R.id.ll_recommend})
    void onOpenRecommend() {
        boolean z10;
        if (this.detailBean != null) {
            if (this.moreIntroductionFragment == null) {
                this.moreIntroductionFragment = new MoreIntroductionFragment_();
                Bundle bundle = new Bundle();
                bundle.putInt("tagId", this.detailBean.getId().intValue());
                bundle.putString("gameId", this.gameId);
                this.moreIntroductionFragment.setArguments(bundle);
                z10 = true;
            } else {
                z10 = false;
            }
            MoreIntroductionFragment moreIntroductionFragment = this.moreIntroductionFragment;
            if (moreIntroductionFragment != null) {
                moreIntroductionFragment.notifyDataChanged(this.detailBean.getId().intValue());
            }
            showFragment(this.currentFragment, this.moreIntroductionFragment, z10);
            com.papa.sim.statistic.t.l(this).s1(Event.singleStartGamePageDetail, Event.ClickRecommandButton, "", new Ext().setFrom("1").setArticleId(String.valueOf(this.detailBean.getId())).setFromTabId(String.valueOf(this.tagId)), new Data().setGameId(this.gameId));
        }
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        NestedScrollWebView nestedScrollWebView = this.ns_web_view;
        if (nestedScrollWebView != null) {
            try {
                nestedScrollWebView.getClass().getMethod("onPause", new Class[0]).invoke(this.ns_web_view, null);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
            } catch (NoSuchMethodException e11) {
                e11.printStackTrace();
            } catch (InvocationTargetException e12) {
                e12.printStackTrace();
            }
        }
        super.onPause();
        gamePause();
    }

    @Click({R.id.ll_praise})
    void onPraiseClick() {
        BbsDetailBean bbsDetailBean = this.detailBean;
        if (bbsDetailBean != null) {
            if (bbsDetailBean.getPraise().booleanValue()) {
                onBbsDisPraise(this.detailBean.getId());
            } else {
                onBbsPraise("", this.detailBean.getId());
            }
        }
    }

    @Override // com.join.mgps.callbacks.i
    public void onProgressItemClick(Object item) {
        if (item instanceof TimingBean) {
            String strReplace = this.detailBean.getVideoH5Tpl().replace("_s_", wrapVideoUrl(this.detailBean.getContent(), ((TimingBean) item).getTime().intValue()));
            this.webData = strReplace;
            lodeWebView(strReplace);
            com.papa.sim.statistic.t.l(this).s1(Event.singleStartGamePageDetail, Event.AjustSpeed, "", new Ext().setFrom("1").setArticleId(String.valueOf(this.detailBean.getId())).setFromTabId(String.valueOf(this.tagId)), new Data().setGameId(this.gameId));
            return;
        }
        if (item instanceof VideoChaptersBean) {
            String strReplace2 = this.detailBean.getVideoH5Tpl().replace("_s_", ((VideoChaptersBean) item).getContent());
            this.webData = strReplace2;
            lodeWebView(strReplace2);
            com.papa.sim.statistic.t.l(this).s1(Event.singleStartGamePageDetail, Event.AjustSeries, "", new Ext().setFrom("1").setArticleId(String.valueOf(this.detailBean.getId())).setFromTabId(String.valueOf(this.tagId)), new Data().setGameId(this.gameId));
        }
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        NestedScrollWebView nestedScrollWebView = this.ns_web_view;
        if (nestedScrollWebView != null) {
            try {
                nestedScrollWebView.getClass().getMethod("onResume", new Class[0]).invoke(this.ns_web_view, null);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
            } catch (NoSuchMethodException e11) {
                e11.printStackTrace();
            } catch (InvocationTargetException e12) {
                e12.printStackTrace();
            }
        }
        gameResume();
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
        NestedScrollWebView nestedScrollWebView = this.ns_web_view;
        if (nestedScrollWebView != null) {
            nestedScrollWebView.saveState(outState);
        }
    }

    @Override // com.join.mgps.callbacks.i
    public void onTimeClick(int t10) {
        String strReplace = this.detailBean.getVideoH5Tpl().replace("_s_", this.detailBean.getContent() + "&t=" + t10);
        this.webData = strReplace;
        lodeWebView(strReplace);
    }

    void openSystemWeb(String url) {
        try {
            startActivity(new Intent("android.intent.action.VIEW", Uri.parse(url)));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Click
    void refresh() {
        lodeWebView(this.webData);
    }

    @Click
    void relodingimag() {
        loadData();
    }

    @Click
    void setNetwork() {
        com.join.mgps.Util.g1.b(this.TAG, "setNetwork() called.");
        UtilsMy.N3(this);
    }

    @Override // com.mgsim.common.fragment.a
    public void setSelectedFragment(BackHandledFragment selectedFragment) {
        this.mBackHandedFragment = selectedFragment;
    }

    public void showCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback, WebChromeClient chromeClient) {
        this.xCustomView = view;
        if (view == null) {
            return;
        }
        this.chromeClient = chromeClient;
        this.weblayout.setVisibility(8);
        this.video_view.removeAllViews();
        this.video_view.setVisibility(0);
        this.video_view.addView(view, new RelativeLayout.LayoutParams(-1, -1));
        setFullScreen();
    }

    void showFragment(Fragment oldFragment, Fragment newFragment, boolean isAdd) {
        if (oldFragment == newFragment) {
            return;
        }
        if (oldFragment != null) {
            FragmentTransaction fragmentTransactionBeginTransaction = this.fragmentManager.beginTransaction();
            attachSwitchStyle(fragmentTransactionBeginTransaction);
            fragmentTransactionBeginTransaction.hide(oldFragment);
            try {
                fragmentTransactionBeginTransaction.commit();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        if (newFragment != null) {
            FragmentTransaction fragmentTransactionBeginTransaction2 = this.fragmentManager.beginTransaction();
            attachSwitchStyle(fragmentTransactionBeginTransaction2);
            if (isAdd) {
                fragmentTransactionBeginTransaction2.add(R.id.fl_front_view, newFragment);
            }
            fragmentTransactionBeginTransaction2.show(newFragment);
            try {
                fragmentTransactionBeginTransaction2.commit();
            } catch (Exception e11) {
                e11.printStackTrace();
            }
            this.currentFragment = newFragment;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        try {
            com.join.mgps.Util.g1.b(this.TAG, "showLoding() called.");
            this.loding_layout.setVisibility(0);
            this.loding_faile.setVisibility(8);
            NestedScrollWebView nestedScrollWebView = this.ns_web_view;
            if (nestedScrollWebView != null) {
                nestedScrollWebView.setVisibility(0);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        try {
            com.join.mgps.Util.g1.b(this.TAG, "showLodingFailed() called.");
            this.loding_faile.setVisibility(0);
            this.loding_layout.setVisibility(8);
            NestedScrollWebView nestedScrollWebView = this.ns_web_view;
            if (nestedScrollWebView != null) {
                nestedScrollWebView.setVisibility(8);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMain(BbsDetailBean detailBean) {
        try {
            if (this.params != null && this.firstLoad) {
                this.mHandler.sendEmptyMessage(4);
            }
            this.fl_content.removeAllViews();
            this.ns_web_view = (NestedScrollWebView) View.inflate(this, R.layout.layout_introduction_video, this.fl_content).findViewById(R.id.ns_web_view);
            int iIntValue = detailBean.getType().intValue();
            this.contentType = iIntValue;
            if (iIntValue == 1) {
                this.webData = detailBean.getVideoH5Tpl().replace("_s_", detailBean.getContent());
                gameResume();
            } else {
                this.webData = detailBean.getContent();
            }
            if ((detailBean.getTiming() == null || detailBean.getTiming().size() <= 0) && (detailBean.getVideoChapters() == null || detailBean.getVideoChapters().size() <= 0)) {
                this.ll_progress.setVisibility(8);
            } else {
                this.ll_progress.setVisibility(0);
                if (detailBean.getIsCollection().intValue() == 1) {
                    this.tv_type.setText("合集");
                    com.papa.sim.statistic.t.l(this).s1(Event.singleStartGamePageDetail, Event.ShowSeriesButton, "", new Ext().setFrom("1").setArticleId(String.valueOf(detailBean.getId())).setFromTabId(String.valueOf(this.tagId)), new Data().setGameId(this.gameId));
                } else {
                    onOpenProgress();
                    this.mHandler.sendEmptyMessageDelayed(2, BaseCloudFileManager.ACK_TIMEOUT);
                    this.tv_type.setText("进度");
                    com.papa.sim.statistic.t.l(this).s1(Event.singleStartGamePageDetail, Event.ShowSpeedButton, "", new Ext().setFrom("1").setArticleId(String.valueOf(detailBean.getId())).setFromTabId(String.valueOf(this.tagId)), new Data().setGameId(this.gameId));
                }
            }
            init();
            lodeWebView(this.webData);
            com.join.mgps.Util.g1.b(this.TAG, "showMain() called.");
            NestedScrollWebView nestedScrollWebView = this.ns_web_view;
            if (nestedScrollWebView != null) {
                nestedScrollWebView.setVisibility(0);
            }
            this.tv_praise_num.setText(String.valueOf(detailBean.getLike()));
            this.tv_comment_num.setText(String.valueOf(detailBean.getComment()));
            if (detailBean.getPraise().booleanValue()) {
                this.iv_praise.setImageResource(R.drawable.ic_introduction_star_blue);
                this.tv_praise_num.setTextColor(Color.parseColor("#34ACFF"));
            } else {
                this.iv_praise.setImageResource(R.drawable.ic_introduction_star_white);
                this.tv_praise_num.setTextColor(Color.parseColor("#FFFFFF"));
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showTost(String message) {
        com.join.mgps.Util.a3.b(this).d(message);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updatePraise(boolean praise) {
        if (praise) {
            this.iv_praise.setImageResource(R.drawable.ic_introduction_star_blue);
            BbsDetailBean bbsDetailBean = this.detailBean;
            bbsDetailBean.setLike(Integer.valueOf(bbsDetailBean.getLike().intValue() + 1));
            this.tv_praise_num.setText(String.valueOf(this.detailBean.getLike()));
            this.tv_praise_num.setTextColor(Color.parseColor("#34ACFF"));
        } else {
            this.iv_praise.setImageResource(R.drawable.ic_introduction_star_white);
            BbsDetailBean bbsDetailBean2 = this.detailBean;
            bbsDetailBean2.setLike(Integer.valueOf(bbsDetailBean2.getLike().intValue() - 1));
            this.tv_praise_num.setText(String.valueOf(this.detailBean.getLike()));
            this.tv_praise_num.setTextColor(Color.parseColor("#FFFFFF"));
        }
        this.detailBean.setPraise(Boolean.valueOf(praise));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: Removed unreachable split cross block B:21:0x0065 */
    /* JADX WARN: Code duplicated, block: B:9:0x004e A[Catch: Exception -> 0x0052, TRY_LEAVE, TryCatch #1 {Exception -> 0x0052, blocks: (B:6:0x0039, B:8:0x003f, B:9:0x004e), top: B:22:0x0039, outer: #0 }] */
    @Background
    public void loadData() {
        showLoding();
        if (com.join.android.app.common.utils.m.j(this)) {
            try {
                showLoding();
                RequestBbsDetailArgs requestBbsDetailArgs = new RequestBbsDetailArgs();
                requestBbsDetailArgs.setPostId(Integer.valueOf(this.postId));
                requestBbsDetailArgs.setUid(Integer.valueOf(getUid()));
                RequestModel requestModel = new RequestModel(this);
                requestModel.setArgs(requestBbsDetailArgs);
                ResponseModel<BbsDetailBean> responseModelB0 = this.rpcGameClient.B0(requestModel.makeSign());
                if (responseModelB0 != null) {
                    try {
                        if (responseModelB0.getData() != null) {
                            BbsDetailBean data = responseModelB0.getData();
                            this.detailBean = data;
                            showMain(data);
                            gameResume();
                        } else {
                            showLodingFailed();
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                        showLodingFailed();
                    }
                } else {
                    showLodingFailed();
                }
                return;
            } catch (Exception e11) {
                e11.printStackTrace();
                showLodingFailed();
                return;
            }
        }
        showLodingFailed();
    }

    class b extends WebChromeClient {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        WebChromeClient.CustomViewCallback f54052a;

        b() {
        }

        @Override // android.webkit.WebChromeClient
        public View getVideoLoadingProgressView() {
            if (IntroductionActivity.this.xprogressvideo == null) {
                LayoutInflater layoutInflaterFrom = LayoutInflater.from(IntroductionActivity.this);
                IntroductionActivity.this.xprogressvideo = layoutInflaterFrom.inflate(R.layout.video_loading_progress, (ViewGroup) null);
            }
            return IntroductionActivity.this.xprogressvideo;
        }

        @Override // android.webkit.WebChromeClient
        public void onHideCustomView() {
            if (IntroductionActivity.this.xCustomView == null) {
                return;
            }
            IntroductionActivity.this.xCustomView = null;
            try {
                WebChromeClient.CustomViewCallback customViewCallback = this.f54052a;
                if (customViewCallback != null) {
                    customViewCallback.onCustomViewHidden();
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            IntroductionActivity.this.hideCustomView();
        }

        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(WebView view, int newProgress) {
            ProgressBar progressBar;
            ProgressBar progressBar2;
            ProgressBar progressBar3;
            super.onProgressChanged(view, newProgress);
            if (newProgress > 10 && (progressBar3 = IntroductionActivity.this.pb_progress) != null) {
                progressBar3.setVisibility(0);
            }
            if (newProgress > 80 && (progressBar2 = IntroductionActivity.this.pb_progress) != null) {
                progressBar2.setVisibility(8);
            }
            if (newProgress != 100 || (progressBar = IntroductionActivity.this.pb_progress) == null) {
                return;
            }
            progressBar.setVisibility(8);
        }

        @Override // android.webkit.WebChromeClient
        public void onShowCustomView(View view, WebChromeClient.CustomViewCallback callback) {
            try {
                if (IntroductionActivity.this.xCustomView != null) {
                    callback.onCustomViewHidden();
                    return;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            IntroductionActivity.this.xCustomView = view;
            this.f54052a = callback;
            IntroductionActivity.this.showCustomView(view, callback, this);
        }

        @Override // android.webkit.WebChromeClient
        public void onShowCustomView(View view, int requestedOrientation, WebChromeClient.CustomViewCallback callback) {
            onShowCustomView(view, callback);
        }
    }
}
