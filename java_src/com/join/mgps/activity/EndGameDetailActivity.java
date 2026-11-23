package com.join.mgps.activity;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.BaseAppCompatActivity;
import com.facebook.drawee.view.SimpleDraweeView;
import com.flyco.tablayout.SlidingTabLayout;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.component.video.StandardVideoView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.dto.EndGameBean;
import com.join.mgps.dto.EndGameDetailBean;
import com.join.mgps.dto.GameMainV4DataBean;
import com.join.mgps.dto.RequestEndGameDetailArgs;
import com.join.mgps.dto.RequestEndGameListArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.ShareBean;
import com.join.mgps.pref.PrefDef_;
import com.papa.sim.statistic.Data;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.uc.crashsdk.export.LogType;
import java.text.DecimalFormat;
import java.util.ArrayList;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_end_game_detail)
public class EndGameDetailActivity extends BaseAppCompatActivity {

    @ViewById
    AppBarLayout appbar;

    @ViewById
    TextView btnStart;

    @ViewById
    ConstraintLayout clBottom;

    @ViewById
    CollapsingToolbarLayout collapsingToolbarLayout;

    @ViewById
    CoordinatorLayout coordinatorLayout;
    private com.join.mgps.dialog.n0 endGameDetailMenuDialog;

    @Extra
    String endGameId;

    @Extra
    String gameId;
    private boolean isBackToList;

    @Extra
    boolean isFromVideo;

    @ViewById
    SimpleDraweeView ivAuthorAvatar;

    @ViewById
    ImageView ivBack;

    @ViewById
    SimpleDraweeView ivGameIcon;

    @ViewById
    ImageView ivMenu;

    @ViewById
    SimpleDraweeView iv_book_bg;

    @ViewById
    LinearLayout llShare;

    @ViewById
    LinearLayout llTop;

    @ViewById
    LinearLayout loding_faile;

    @ViewById
    LinearLayout loding_layout;
    private EndGameDetailBean mainData;

    @ViewById
    View nullView;

    @Pref
    PrefDef_ prefDef;
    private com.join.mgps.rpc.k rpcGameClient;

    @Extra
    String rules;

    @ViewById
    SlidingTabLayout tablayout;

    @ViewById
    ImageView tagPass;

    @ViewById
    TextView tvAuthorName;

    @ViewById
    TextView tvBestScore;

    @ViewById
    TextView tvIntro;

    @ViewById
    TextView tvPassRate;

    @ViewById
    TextView tvTitle;

    @ViewById
    TextView tvTopTitle;

    @ViewById
    StandardVideoView videoPlayer;

    @ViewById
    ViewPager viewpager;
    String playTag = "EndGameDetailActivity";
    private boolean isVideoCollapse = false;
    private boolean isInit = true;

    class a implements ViewPager.OnPageChangeListener {
        a() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int state) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int position) {
            EndGameDetailActivity.this.resetTabTextSize(position);
        }
    }

    class b implements v7.e {
        b() {
        }

        @Override // v7.e
        public void a(Bitmap bitmap) {
            com.join.android.app.component.video.i.e(bitmap);
        }
    }

    class c implements com.join.mgps.dialog.n0.a {
        c() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.join.mgps.dialog.n0.a
        public void report() {
            ((EndGameReportActivity_.h) EndGameReportActivity_.intent(EndGameDetailActivity.this).a(EndGameDetailActivity.this.endGameId).flags(805306368)).start();
        }
    }

    private String formatMills(int mills) {
        float f10 = mills / 1000.0f;
        if (f10 < 60.0f) {
            return new DecimalFormat("0.00").format(f10) + "秒";
        }
        int i10 = (int) f10;
        return (i10 / 60) + "分" + (i10 % 60) + "秒";
    }

    private int getStatusBarHeight(Context context) {
        int identifier = context.getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    private void initAppbarListener() {
        final int dimension = (int) (getResources().getDimension(R.dimen.wdp342) - getStatusBarHeight(this));
        this.appbar.addOnOffsetChangedListener(new AppBarLayout.OnOffsetChangedListener() { // from class: com.join.mgps.activity.w0
            @Override // com.google.android.material.appbar.AppBarLayout.OnOffsetChangedListener, com.google.android.material.appbar.AppBarLayout.BaseOnOffsetChangedListener
            public final void onOffsetChanged(AppBarLayout appBarLayout, int i10) {
                this.f58188a.lambda$initAppbarListener$0(dimension, appBarLayout, i10);
            }
        });
    }

    private void initVideoPlayer(EndGameBean endgameInfo) {
        try {
            if (this.videoPlayer != null) {
                if (com.join.mgps.Util.t2.i(endgameInfo.getVideo()) || com.join.mgps.Util.t2.i(endgameInfo.getCover())) {
                    String video = endgameInfo.getVideo();
                    if (com.join.mgps.Util.t2.i(video)) {
                        this.videoPlayer.setMuteWhenPlay(false);
                        this.videoPlayer.setCover(endgameInfo.getCover());
                        this.videoPlayer.setPlayTag(this.playTag);
                        this.videoPlayer.setShowCoverWhenPause(false);
                        if (this.isFromVideo) {
                            com.join.android.app.component.video.j.c(this.videoPlayer, video, false, "");
                            com.join.android.app.component.video.j.a(this.videoPlayer);
                            this.videoPlayer.setSurfaceToPlay();
                        } else {
                            this.videoPlayer.setUp(video, StandardVideoView.D, endgameInfo.getTitle(), endgameInfo.getCover());
                            if (this.videoPlayer.i()) {
                                this.videoPlayer.startPlayLogic();
                            }
                        }
                    }
                } else {
                    this.nullView.setVisibility(0);
                    this.iv_book_bg.setVisibility(8);
                    this.videoPlayer.setVisibility(8);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void initViewpger(EndGameDetailBean endgameInfo) {
        String[] strArr = {"排行榜"};
        ArrayList arrayList = new ArrayList();
        com.join.mgps.fragment.a1.d0().b(endgameInfo).build();
        arrayList.add(new com.join.mgps.adapter.h0.a(strArr[0], com.join.mgps.fragment.a1.d0().b(endgameInfo).build()));
        this.viewpager.setAdapter(new com.join.mgps.adapter.h0(getSupportFragmentManager(), arrayList));
        this.tablayout.setViewPager(this.viewpager, strArr);
        this.viewpager.addOnPageChangeListener(new a());
        resetTabTextSize(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initAppbarListener$0(int i10, AppBarLayout appBarLayout, int i11) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("initAppbarListener: ");
        sb2.append(i11);
        sb2.append("   ");
        sb2.append(i10);
        int i12 = i10 + i11;
        if (i12 < 0 && !this.isVideoCollapse) {
            this.llTop.setBackgroundResource(R.color.white);
            this.ivBack.setImageResource(R.drawable.arrow_right_black);
            this.ivMenu.setImageResource(R.drawable.ic_dd);
            this.tvTopTitle.setVisibility(0);
            setStatusBarLight(true);
            StandardVideoView standardVideoView = this.videoPlayer;
            if (standardVideoView != null && standardVideoView.getCurrentState() == 2) {
                this.videoPlayer.onVideoPause();
            }
            this.isVideoCollapse = true;
            return;
        }
        if (i12 <= 0 || !this.isVideoCollapse) {
            return;
        }
        this.llTop.setBackgroundResource(R.color.transparent);
        this.ivBack.setImageResource(R.drawable.ic_arrow_right_white);
        this.ivMenu.setImageResource(R.drawable.ic_introduction_report_white_v);
        this.tvTopTitle.setVisibility(4);
        setStatusBarLight(false);
        StandardVideoView standardVideoView2 = this.videoPlayer;
        if (standardVideoView2 != null && standardVideoView2.getCurrentState() == 5) {
            this.videoPlayer.onVideoResume(false);
        }
        this.isVideoCollapse = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetTabTextSize(int position) {
        int tabCount = this.tablayout.getTabCount();
        int i10 = 0;
        while (i10 < tabCount) {
            this.tablayout.j(i10).setTypeface(null, i10 == position ? 1 : 0);
            i10++;
        }
    }

    private void setStatusBarLight(boolean isLight) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("setStatusBarLight: ");
        sb2.append(isLight);
        View decorView = getWindow().getDecorView();
        if (decorView != null) {
            int systemUiVisibility = decorView.getSystemUiVisibility();
            decorView.setSystemUiVisibility(isLight ? systemUiVisibility | 8192 : systemUiVisibility & (-8193));
        }
    }

    @AfterViews
    void afterviews() {
        Window window = getWindow();
        window.clearFlags(67108864);
        window.getDecorView().setSystemUiVisibility(LogType.UNEXP_ANR);
        window.addFlags(Integer.MIN_VALUE);
        window.setStatusBarColor(0);
        this.llTop.setPadding(0, getStatusBarHeight(this), 0, 0);
        this.rpcGameClient = com.join.mgps.rpc.impl.i.P0();
        if (com.join.mgps.Util.t2.h(this.prefDef.endGameConfig().d())) {
            getEndGameConfig();
        }
        showLoding();
    }

    @Click
    void btnStart() {
        if (AccountUtil_.getInstance_(this).isTourist()) {
            IntentUtil.getInstance().goLogin(this);
            return;
        }
        EndGameDetailBean endGameDetailBean = this.mainData;
        if (endGameDetailBean == null || endGameDetailBean.getEndgameInfo() == null) {
            return;
        }
        EndGameLaunchActivity_.intent(this).b(this.gameId).a(this.mainData.getEndgameInfo()).start();
        try {
            Ext ext = new Ext();
            ext.setPosition("2");
            ext.setEndId(this.mainData.getEndgameInfo().getEndgameId());
            Data data = new Data();
            data.setGameId(this.gameId);
            com.papa.sim.statistic.t.l(this).i0(Event.gameStartVS, ext, data);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Click
    void clAuthor() {
        GameMainV4DataBean.EndGameConfigBean endGameConfigBean;
        EndGameDetailBean endGameDetailBean;
        String strD = new PrefDef_(this).endGameConfig().d();
        if (!com.join.mgps.Util.t2.i(strD) || (endGameConfigBean = (GameMainV4DataBean.EndGameConfigBean) JsonMapper.getInstance().fromJson(strD, GameMainV4DataBean.EndGameConfigBean.class)) == null || !endGameConfigBean.isEndgame_asset_switch() || (endGameDetailBean = this.mainData) == null || endGameDetailBean.getEndgameInfo() == null || !TextUtils.equals(this.mainData.getEndgameInfo().getPublisher(), AccountUtil_.getInstance_(this).getUid())) {
            return;
        }
        IntentUtil.getInstance().goShareWebActivity(this, this.mainData.getEndgameInfo().getAssetUrl());
    }

    @Click
    void clShare() {
        EndGameDetailBean endGameDetailBean = this.mainData;
        if (endGameDetailBean == null || endGameDetailBean.getEndgameInfo() == null || TextUtils.isEmpty(this.mainData.getShareUrl())) {
            return;
        }
        ShareBean shareBean = new ShareBean();
        String shareUrl = this.mainData.getShareUrl();
        shareBean.setqZoneShareUrl(shareUrl);
        shareBean.setQqUrl(shareUrl);
        shareBean.setWechatFriendUrl(shareUrl);
        shareBean.setWechatShareUrl(shareUrl);
        shareBean.setWeiboShareUrl(shareUrl);
        shareBean.setImageUrl(this.mainData.getEndgameInfo().getGameIcon());
        shareBean.setTitle(this.mainData.getEndgameInfo().getGameName());
        shareBean.setText("残局挑战");
        shareBean.setFrom(7);
        shareBean.setGameId(this.mainData.getEndgameInfo().getGameId());
        com.join.mgps.Util.w.r(this, shareBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getData(boolean isRefreshAllData) {
        if (!com.join.android.app.common.utils.m.j(this)) {
            showLodingFailed();
            showTost(getResources().getString(R.string.net_connect_failed));
            return;
        }
        RequestEndGameDetailArgs requestEndGameDetailArgs = new RequestEndGameDetailArgs();
        requestEndGameDetailArgs.setGameId(this.gameId);
        requestEndGameDetailArgs.setEndgameId(this.endGameId);
        requestEndGameDetailArgs.setUid(AccountUtil_.getInstance_(this).getUid());
        RequestModel requestModel = new RequestModel();
        requestModel.setArgs(requestEndGameDetailArgs);
        requestModel.setDefault(this);
        ResponseModel<EndGameDetailBean> responseModelF = this.rpcGameClient.F(requestModel.makeSign());
        if (responseModelF == null || responseModelF.getCode() != 200) {
            showLodingFailed();
        } else {
            updateUi(responseModelF.getData(), isRefreshAllData);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getEndGameConfig() {
        if (com.join.android.app.common.utils.m.j(this)) {
            RequestEndGameListArgs requestEndGameListArgs = new RequestEndGameListArgs();
            requestEndGameListArgs.setUid(AccountUtil_.getInstance_(this).getUid());
            RequestModel requestModel = new RequestModel();
            requestModel.setArgs(requestEndGameListArgs);
            requestModel.setDefault(this);
            ResponseModel<GameMainV4DataBean.EndGameConfigBean> responseModelO = com.join.mgps.rpc.impl.i.P0().o(requestModel.makeSign());
            if (responseModelO == null || responseModelO.getCode() != 200 || responseModelO.getData() == null) {
                return;
            }
            this.prefDef.endGameConfig().g(JsonMapper.toJsonString(responseModelO.getData()));
        }
    }

    @Click
    void ivBack() {
        finish();
    }

    @Click
    void ivMenu() {
        if (this.endGameDetailMenuDialog == null) {
            com.join.mgps.dialog.n0 n0Var = new com.join.mgps.dialog.n0(this);
            this.endGameDetailMenuDialog = n0Var;
            n0Var.c(new c());
        }
        this.endGameDetailMenuDialog.setFocusable(true);
        com.join.mgps.dialog.n0 n0Var2 = this.endGameDetailMenuDialog;
        ImageView imageView = this.ivMenu;
        n0Var2.showAsDropDown(imageView, (int) ((((double) imageView.getMeasuredWidth()) * 0.5d) - ((double) getResources().getDimension(R.dimen.wdp136))), (int) (-getResources().getDimension(R.dimen.wdp10)));
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (com.join.android.app.component.video.a.c0(this, this.playTag)) {
            return;
        }
        this.videoPlayer.taskShotPic(new b());
        if (this.videoPlayer.getTimeHas() < 2000) {
            this.videoPlayer.onAutoCompletion();
        }
        com.join.android.app.component.video.i.f(this.videoPlayer);
        this.videoPlayer.getGSYVideoManager().z(this.videoPlayer);
        this.isBackToList = true;
        super.onBackPressed();
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        if (this.isFromVideo) {
            return;
        }
        StandardVideoView standardVideoView = this.videoPlayer;
        if (standardVideoView != null) {
            standardVideoView.release();
        }
        com.join.android.app.component.video.a.n0(this.playTag);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        StandardVideoView standardVideoView;
        StandardVideoView standardVideoView2;
        super.onPause();
        boolean z10 = this.isFromVideo;
        if (!z10 && (standardVideoView2 = this.videoPlayer) != null) {
            standardVideoView2.onVideoPause();
        } else {
            if (!z10 || (standardVideoView = this.videoPlayer) == null || this.isBackToList) {
                return;
            }
            standardVideoView.onVideoPause();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        getData(this.isInit);
        this.isInit = false;
        StandardVideoView standardVideoView = this.videoPlayer;
        if (standardVideoView != null) {
            standardVideoView.onVideoResume();
        }
    }

    @Click
    void relodingimag() {
        showLoding();
        getData(true);
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        com.join.mgps.Util.g1.c("显示加载中");
        LinearLayout linearLayout = this.loding_layout;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.loding_faile;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        CoordinatorLayout coordinatorLayout = this.coordinatorLayout;
        if (coordinatorLayout != null) {
            coordinatorLayout.setVisibility(8);
        }
        ConstraintLayout constraintLayout = this.clBottom;
        if (constraintLayout != null) {
            constraintLayout.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        LinearLayout linearLayout = this.loding_faile;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.loding_layout;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        CoordinatorLayout coordinatorLayout = this.coordinatorLayout;
        if (coordinatorLayout != null) {
            coordinatorLayout.setVisibility(8);
        }
        ConstraintLayout constraintLayout = this.clBottom;
        if (constraintLayout != null) {
            constraintLayout.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMain() {
        com.join.mgps.Util.g1.c("显示主界面main");
        LinearLayout linearLayout = this.loding_faile;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        LinearLayout linearLayout2 = this.loding_layout;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        CoordinatorLayout coordinatorLayout = this.coordinatorLayout;
        if (coordinatorLayout != null) {
            coordinatorLayout.setVisibility(0);
        }
        ConstraintLayout constraintLayout = this.clBottom;
        if (constraintLayout != null) {
            constraintLayout.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showTost(String message) {
        com.join.mgps.Util.a3.b(this).d(message);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateUi(EndGameDetailBean data, boolean isRefreshAllData) {
        showMain();
        if (data == null) {
            return;
        }
        this.mainData = data;
        if (data.getEndgameInfo() != null) {
            EndGameBean endgameInfo = data.getEndgameInfo();
            this.tvTopTitle.setText(endgameInfo.getTitle());
            this.tvTitle.setText(endgameInfo.getTitle());
            this.tvIntro.setText(endgameInfo.getSubTitle());
            com.join.android.app.common.utils.l.h(this.ivAuthorAvatar, endgameInfo.getAvatar());
            com.join.android.app.common.utils.l.h(this.ivGameIcon, endgameInfo.getGameIcon());
            this.tvAuthorName.setText(endgameInfo.getNickname());
            this.tvPassRate.setText(endgameInfo.getChallengeSucRate());
            this.tagPass.setVisibility(endgameInfo.getWin() == 1 ? 0 : 8);
            this.tvBestScore.setText(endgameInfo.getBestTimes() <= 0 ? "暂无成绩" : formatMills(endgameInfo.getBestTimes()));
            if (isRefreshAllData) {
                initVideoPlayer(endgameInfo);
                initViewpger(data);
                return;
            }
            ViewPager viewPager = this.viewpager;
            if (viewPager == null || viewPager.getAdapter() == null) {
                return;
            }
            PagerAdapter adapter = this.viewpager.getAdapter();
            ViewPager viewPager2 = this.viewpager;
            Object objInstantiateItem = adapter.instantiateItem((ViewGroup) viewPager2, viewPager2.getCurrentItem());
            if (objInstantiateItem == null || !(objInstantiateItem instanceof com.join.mgps.fragment.y0)) {
                return;
            }
            ((com.join.mgps.fragment.y0) objInstantiateItem).W(data);
        }
    }
}
