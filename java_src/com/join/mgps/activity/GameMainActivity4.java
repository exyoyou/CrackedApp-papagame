package com.join.mgps.activity;

import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Handler;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.SharedElementCallback;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.viewpager.widget.ViewPager;
import app.mgsim.arena.ArenaConstants;
import app.mgsim.arena.ArenaLobbyServer;
import app.mgsim.arena.ArenaRequest;
import app.mgsim.arena.ArenaRequestFactory;
import app.mgsim.arena.ArenaResponse;
import app.mgsim.arena.SocketError;
import app.mgsim.arena.SocketListener;
import com.bykv.vk.component.ttvideo.player.C;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.google.android.material.tabs.TabLayout;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonParser;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.utils.extention.MobclickAgentKt;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.arena.GameRoomActivity;
import com.join.mgps.activity.arena.GameRoomActivity_;
import com.join.mgps.activity.arena.GameRoomListActivity_;
import com.join.mgps.activity.login.LoginSplashActivity_;
import com.join.mgps.customview.WrapContentGridView;
import com.join.mgps.db.tables.EMUApkTable;
import com.join.mgps.db.tables.GameMainTable;
import com.join.mgps.db.tables.PlayGameTimeTable;
import com.join.mgps.dto.ArchiveColudArgs;
import com.join.mgps.dto.ArchiveNumDataBean;
import com.join.mgps.dto.CommentAllListBean;
import com.join.mgps.dto.CommentResponse;
import com.join.mgps.dto.DynamicEntranceBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.ForumData;
import com.join.mgps.dto.ForumResponse;
import com.join.mgps.dto.GameInfoBean;
import com.join.mgps.dto.GameMainCommunityBean;
import com.join.mgps.dto.GameMainDataBean;
import com.join.mgps.dto.GameMainNetBattle;
import com.join.mgps.dto.GameMainV4DataBean;
import com.join.mgps.dto.GameMainachieve;
import com.join.mgps.dto.GameMaingameinfo;
import com.join.mgps.dto.GameMasteryLevel;
import com.join.mgps.dto.GameTimeLevel;
import com.join.mgps.dto.GameWorldResponse;
import com.join.mgps.dto.MulPostData;
import com.join.mgps.dto.NetBattleStartGameDto;
import com.join.mgps.dto.OnlineCouponConfigBean;
import com.join.mgps.dto.PspBattleServer;
import com.join.mgps.dto.RequestCommentAllListArgs;
import com.join.mgps.dto.RequestGameIdArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.RequestSimulatorAchievementListArgs;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.ResultArenaBean;
import com.join.mgps.dto.ResultResMainBean;
import com.join.mgps.dto.RomArchived;
import com.join.mgps.dto.SimulatorAllAchievementBean;
import com.join.mgps.dto.SimulatorMomentBean;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.fragment.CloudListFragmentV2_;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.recycler.ViewPager2SlowScrollHelper;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa91.arc.bean.AchievementBean;
import com.papa91.arc.bean.ButtonBean;
import com.papa91.arc.dialog.AchievmentTipsDialog;
import com.papa91.arc.http.utils.PrefUtil;
import com.papa91.battle.protocol.GameRoom;
import com.windmill.sdk.WMConstants;
import com.wufan.user.service.protobuf.UserInfo;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.Fullscreen;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.WindowFeature;
import org.androidannotations.annotations.sharedpreferences.Pref;

/* JADX INFO: loaded from: classes4.dex */
@WindowFeature({1})
@EActivity(R.layout.activity_game_main4)
@Fullscreen
public class GameMainActivity4 extends FriendActivity implements com.join.mgps.adapter.i2.a {
    public static final String TITLE_ACHIEVEMENT = "成就";
    public static final String TITLE_GOLDFINGER = "金手指";
    public static final String TITLE_INTRODUCTION = "攻略";
    public static final String TITLE_MOMENT = "动态";
    public static final String TITLE_SHOP = "存档商店";
    UserInfo accountBean;
    private AchievmentTipsDialog achievmentTipsDialog;
    private EmuOutResultReceiver adResultReceiver;
    private com.join.mgps.adapter.i2 adapter;
    int areaId;

    @ViewById
    View battleHall;
    com.join.mgps.rpc.k client;
    private Context context;
    private int currentAdsIndex;
    private int currentRvGoldFingerIndex;
    private DownloadTask downloadTask;

    @ViewById
    FrameLayout expandContainer;
    private com.join.mgps.fragment.o5 expandIntroductionFragment;
    private ArrayList<Fragment> fragments;
    com.join.mgps.rpc.j friendClient;

    @ViewById
    FrameLayout friendContainer;

    @Extra
    String from;

    @Extra
    String gameId;

    @ViewById
    SimpleDraweeView gameImg;

    @ViewById
    GridView gameMainNewLeftGv;

    @ViewById
    TextView gameName;
    private String gameTagId;
    private Gson gson;
    private ViewPager2SlowScrollHelper helper;
    private com.join.mgps.fragment.o5 introductionFragment;
    private boolean isGBA;

    @ViewById
    ImageView ivChoose;

    @ViewById
    ImageView ivTips;

    @ViewById
    View leftContainer;

    @ViewById
    View ll_loading;
    private com.join.mgps.socket.fight.arena.a mArenaDialogBuilder;
    private com.join.mgps.adapter.n3 mMemberFunAdapter;
    private com.join.mgps.socket.fight.arena.b mServiceDelegate;
    GameMainV4DataBean mainDataShow;

    @ViewById
    View mask;
    l netWorkPspDialog;
    View noDiscuss;
    ArchiveNumDataBean numDataBean;
    private com.join.mgps.customview.e0 pagerAdapter;
    List<PlayGameTimeTable> playGameTimeTableList;

    @Pref
    PrefDef_ prefDef;
    List<PspBattleServer> pspBattleServers;
    private com.join.mgps.fragment.c6 recommendFragment;
    List<RomArchived> recordRoms;

    @ViewById
    TextView roomCount;
    com.join.mgps.rpc.l rpcAccountClient;
    com.join.mgps.rpc.d rpcArchiveClient;
    com.join.mgps.rpc.f rpcClient;
    com.join.mgps.rpc.i rpcForumClient;
    private com.join.mgps.dialog.e2 simulatorMomentChooseDialog;
    private FragmentManager supportFragmentManager;

    @ViewById
    TabLayout tabLayout;
    private ArrayList<String> titles;

    @ViewById
    ViewPager viewPager;

    @ViewById
    WrapContentGridView vipFunc;

    @ViewById
    TextView vipTitle;
    private String clientIp = "";
    private String battleIp = "";
    private int battlePort = 0;
    private String fastIp = "";
    private List<DynamicEntranceBean> itemBeans = new ArrayList();
    List<m> tabDatas = new ArrayList();
    private boolean isResume = false;
    Runnable goldFingerAutoScrollRunnable = new e();
    private List<CommentAllListBean.GeneralCommentBean> general = new ArrayList();
    List<GameMainCommunityBean.PostsBean> tempList = new ArrayList();
    private CountDownTimer mCreateGameCountDowner = new g(10000, 1000);
    private final com.join.mgps.socket.fight.arena.b.InterfaceC0749b mCallback = new h();
    private final SocketListener.NotifyObserver mObserver = new i();
    public boolean isVBA = false;
    public boolean marcketDownEnable = true;
    public boolean marcketPGNEnable = true;

    public class EmuOutResultReceiver extends BroadcastReceiver {
        public EmuOutResultReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context arg0, Intent arg1) {
            GameMainActivity4.this.getOnlineCouponData();
        }
    }

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameMainActivity4.this.mask.setVisibility(8);
            GameMainActivity4.this.friendContainer.setVisibility(8);
            GameMainActivity4.this.expandContainer.setVisibility(8);
        }
    }

    class b extends SharedElementCallback {
        b() {
        }

        @Override // androidx.core.app.SharedElementCallback
        public void onSharedElementEnd(List<String> sharedElementNames, List<View> sharedElements, List<View> sharedElementSnapshots) {
            super.onSharedElementEnd(sharedElementNames, sharedElements, sharedElementSnapshots);
            for (View view : sharedElements) {
                if (view instanceof SimpleDraweeView) {
                    view.setVisibility(0);
                }
            }
        }
    }

    class c extends com.join.mgps.socket.fight.arena.a.b0 {
        c() {
        }

        @Override // com.join.mgps.socket.fight.arena.a.b0, com.join.mgps.socket.fight.arena.a.y
        public void onErrorHint(int operation, int errorType, Object value) {
            super.onErrorHint(operation, errorType, value);
        }
    }

    class d implements ViewPager.OnPageChangeListener {
        d() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int state) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int position) {
            GameMainActivity4.this.ivChoose.setVisibility(8);
            GameMainActivity4.this.ivTips.setVisibility(8);
            if (GameMainActivity4.TITLE_MOMENT.equals(GameMainActivity4.this.titles.get(position))) {
                GameMainActivity4.this.ivChoose.setVisibility(0);
            } else if (GameMainActivity4.TITLE_ACHIEVEMENT.equals(GameMainActivity4.this.titles.get(position))) {
                GameMainActivity4.this.ivTips.setVisibility(0);
            }
        }
    }

    class e implements Runnable {

        class a extends LinearSmoothScroller {
            a(Context context) {
                super(context);
            }

            @Override // androidx.recyclerview.widget.LinearSmoothScroller
            protected float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
                return super.calculateSpeedPerPixel(displayMetrics) * 30.0f;
            }

            @Override // androidx.recyclerview.widget.LinearSmoothScroller
            protected int getVerticalSnapPreference() {
                return -1;
            }
        }

        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a aVar = new a(GameMainActivity4.this.context);
            GameMainActivity4.access$208(GameMainActivity4.this);
            aVar.setTargetPosition(GameMainActivity4.this.currentRvGoldFingerIndex);
            GameMainActivity4 gameMainActivity4 = GameMainActivity4.this;
            if (gameMainActivity4.handler == null) {
                gameMainActivity4.handler = new Handler();
            }
            GameMainActivity4.this.handler.postDelayed(this, BaseCloudFileManager.ACK_TIMEOUT);
        }
    }

    class f implements GameRoomActivity.x {
        f() {
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onFail(int type) {
            GameMainActivity4.this.startGameV2();
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onSuccess(int type, int duration, ButtonBean buttonBean) {
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onSuccess(int type, int duration) {
            GameMainActivity4.this.startGameV2();
        }
    }

    class g extends CountDownTimer {
        g(long millisInFuture, long countDownInterval) {
            super(millisInFuture, countDownInterval);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            GameMainActivity4.this.hideLoadingDialog();
        }

        @Override // android.os.CountDownTimer
        public void onTick(long millisUntilFinished) {
        }
    }

    class h extends com.join.mgps.socket.fight.arena.b.c {
        h() {
        }

        @Override // com.join.mgps.socket.fight.arena.b.c, com.join.mgps.socket.fight.arena.b.InterfaceC0749b
        public void b() {
            super.b();
        }

        @Override // com.join.mgps.socket.fight.arena.b.c, com.join.mgps.socket.fight.arena.b.InterfaceC0749b
        public void c() {
            super.c();
            if (GameMainActivity4.this.mServiceDelegate == null || GameMainActivity4.this.mServiceDelegate.d() == null) {
                return;
            }
            GameMainActivity4.this.mServiceDelegate.d().z(GameMainActivity4.this.mObserver);
        }
    }

    class i implements SocketListener.NotifyObserver {
        i() {
        }

        @Override // app.mgsim.arena.SocketListener.NotifyObserver
        public void onError(SocketError socketError) {
            if (GameMainActivity4.this.isActivityFinished()) {
                return;
            }
            int i10 = socketError.errorType;
            if (i10 == 6 || i10 == 2) {
                GameMainActivity4.this.showToastArenaError();
                return;
            }
            if (i10 == 5) {
                GameMainActivity4.this.showToastArenaError();
            } else if (i10 == 3 || i10 == 4) {
                GameMainActivity4.this.showToastArenaError();
            }
        }

        @Override // app.mgsim.arena.SocketListener.NotifyObserver
        public void onServerResponse(ArenaResponse response) {
            if (GameMainActivity4.this.isActivityFinished()) {
                return;
            }
            if (response.responseCode == 0) {
                GameMainActivity4.this.handleFailure(response);
                return;
            }
            if (response.responseType.equals(ArenaConstants.ArenaCommand.CMD_LOGIN)) {
                GameMainActivity4.this.gameMainNewYueZhanRl();
                return;
            }
            if (response.responseType.equals(ArenaConstants.ArenaCommand.CMD_CREATE_GAME_ROOM) || response.responseType.equals(ArenaConstants.ArenaCommand.CMD_JOIN_ROOM)) {
                GameMainActivity4.this.hideLoadingDialog();
                GameRoom gameRoom = (GameRoom) response.data;
                if (GameMainActivity4.this.mServiceDelegate != null && GameMainActivity4.this.mServiceDelegate.d() != null) {
                    GameMainActivity4.this.mServiceDelegate.d().E(null);
                }
                if (response.responseType.equals(ArenaConstants.ArenaCommand.CMD_CREATE_GAME_ROOM)) {
                    GameMainActivity4.this.cancelCreateGameCountDown();
                    GameRoomActivity_.intent(GameMainActivity4.this).d(gameRoom.getGameName()).i(gameRoom).c("game_main").start();
                }
            }
        }
    }

    class j implements com.join.mgps.dialog.e2.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Fragment f53002a;

        j(final Fragment val$fragment) {
            this.f53002a = val$fragment;
        }

        @Override // com.join.mgps.dialog.e2.a
        public void a(int type) {
            ((com.join.mgps.fragment.z5) this.f53002a).U(type);
        }
    }

    class k extends Dialog {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private ArrayList<AchievementBean.AchievementInfo> f53004b;

        public k(Context context, ArrayList<AchievementBean.AchievementInfo> infos) {
            super(context);
            this.f53004b = infos;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c(View view) {
            dismiss();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d(View view) {
            GameMainActivity4.this.viewPager.setCurrentItem(1);
            dismiss();
        }

        @Override // android.app.Dialog
        protected void onCreate(Bundle savedInstanceState) {
            super.onCreate(savedInstanceState);
            setContentView(R.layout.dialog_achievement_done);
            Window window = getWindow();
            window.setBackgroundDrawableResource(17170445);
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.width = (int) GameMainActivity4.this.context.getResources().getDimension(R.dimen.wdp610);
            attributes.height = (int) GameMainActivity4.this.context.getResources().getDimension(R.dimen.wdp636);
            attributes.gravity = 17;
            window.setAttributes(attributes);
            window.getDecorView().setPadding(0, 0, 0, 0);
            TextView textView = (TextView) findViewById(R.id.tvTitle);
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) findViewById(R.id.ivAchievement);
            TextView textView2 = (TextView) findViewById(R.id.tvAchievement);
            TextView textView3 = (TextView) findViewById(R.id.tvRate);
            TextView textView4 = (TextView) findViewById(R.id.tvToAll);
            ((ImageView) findViewById(R.id.ivClose)).setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.i2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f57332b.c(view);
                }
            });
            textView4.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.j2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f57346b.d(view);
                }
            });
            textView.setText("恭喜解锁" + this.f53004b.size() + "个新成就");
            ArrayList<AchievementBean.AchievementInfo> arrayList = this.f53004b;
            AchievementBean.AchievementInfo achievementInfo = arrayList.get(arrayList.size() + (-1));
            com.join.android.app.common.utils.l.h(simpleDraweeView, achievementInfo.getIcon());
            textView2.setText(achievementInfo.getName());
            textView3.setText(achievementInfo.getUnlock_rate() + "%玩家已解锁");
        }
    }

    class m {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f53009a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f53011c;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public String f53013e;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f53010b = "#82888E";

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public String f53012d = "#FFFFFF";

        m() {
        }
    }

    static /* synthetic */ int access$208(GameMainActivity4 gameMainActivity4) {
        int i10 = gameMainActivity4.currentRvGoldFingerIndex;
        gameMainActivity4.currentRvGoldFingerIndex = i10 + 1;
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelCreateGameCountDown() {
        CountDownTimer countDownTimer = this.mCreateGameCountDowner;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
    }

    public static long date2TimeStamp(String date_str, String format) {
        try {
            return new SimpleDateFormat(format).parse(date_str).getTime();
        } catch (Exception e10) {
            e10.printStackTrace();
            return 0L;
        }
    }

    private void gameMainNewCunDangRl() {
        com.papa.sim.statistic.t.l(this).X0(Event.startArchiveManagement, AccountUtil_.getInstance_(this).getUid(), this.gameId, "1");
        DocumentManageActivity_.intent(this.context).a(1).b(this.gameId).start();
    }

    private void gameMainNewLocalFightRl() {
        ApFightActivity_.intent(this.context).a(this.gameId).start();
        com.papa.sim.statistic.t.l(this).y0(this.downloadTask.getCrc_link_type_val(), this.accountBean.getUid());
    }

    private void gameMainNewPaiWeiRl(int type) {
        MobclickAgentKt.onEvent(this.context, "onEnterQualifying");
        if (!com.join.android.app.common.utils.m.j(this)) {
            com.join.mgps.Util.a3.b(this).d("无网络连接");
            return;
        }
        if (UtilsMy.X(this.context, this.downloadTask) == null) {
            Toast.makeText(this, "正在下载插件...", 1).show();
            hideLoadingDialog();
        } else {
            if (this.mainDataShow == null) {
                return;
            }
            GamePaiWeiActivty_.o0(this.context).a(this.gameId).b(this.mainDataShow.getGameInfo().getMax_battle_count()).c(type).start();
        }
    }

    private void gameTest() {
        UtilsMy.l(null, this.downloadTask, this, 3);
        com.papa.sim.statistic.t.l(this).T0(this.downloadTask.getCrc_link_type_val(), this.accountBean.getUid());
        com.papa.sim.statistic.t.l(this).A0(this.downloadTask.getCrc_link_type_val(), this.accountBean.getUid());
    }

    private ArchiveColudArgs getArchiveCouldArgs() {
        if (this.accountBean == null) {
            return RequestBeanUtil.getInstance(this.context).getArchiveNum("", "", this.gameId);
        }
        return RequestBeanUtil.getInstance(this.context).getArchiveNum(this.accountBean.getUid() + "", this.accountBean.getToken(), this.gameId);
    }

    private void hideExpandIntroduction() {
        FragmentTransaction fragmentTransactionBeginTransaction = this.supportFragmentManager.beginTransaction();
        if (this.expandIntroductionFragment != null) {
            fragmentTransactionBeginTransaction.setCustomAnimations(R.anim.from_right, R.anim.out_right);
            fragmentTransactionBeginTransaction.hide(this.expandIntroductionFragment);
        }
        fragmentTransactionBeginTransaction.commit();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isActivityFinished() {
        return isFinishing() || isDestroyed();
    }

    private void showAchievementDoneDialog() {
        if (this.gson == null) {
            this.gson = new Gson();
        }
        String string = getSharedPreferences("Papa_Stat_SharedPreferences", 4).getString("achievement_done", "");
        ArrayList arrayList = new ArrayList();
        if (!TextUtils.isEmpty(string)) {
            Iterator<JsonElement> it2 = JsonParser.parseString(string).getAsJsonArray().iterator();
            while (it2.hasNext()) {
                arrayList.add((AchievementBean.AchievementInfo) this.gson.fromJson(it2.next(), AchievementBean.AchievementInfo.class));
            }
        }
        if (arrayList.size() > 0) {
            new k(this.context, arrayList).show();
            PrefUtil.getInstance(this.context).save("achievement_done", "");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showToastArenaError() {
        try {
            Toast.makeText(this, "网络不稳定，请重试", 0).show();
        } catch (Exception unused) {
        }
    }

    private void toComment(int index) {
        GameMaingameinfo gameInfo;
        if (this.general.size() < index || (gameInfo = this.mainDataShow.getGameInfo()) == null) {
            return;
        }
        CommentDetailActivity_.intent(this.context).d(this.gameId).b(this.general.get(index - 1).getId()).f(gameInfo.getGame_plugin_num()).a(Integer.valueOf(gameInfo.getGame_bespeak_switch()).intValue()).e(gameInfo.getGame_is_started()).h(0).g(gameInfo.getGame_package()).c(gameInfo.getGame_comment_score_switch()).start();
    }

    private void toCommunity(int index) {
        if (this.tempList.size() >= index) {
            int pid = this.tempList.get(index - 1).getPid();
            ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
            forumPostsBean.setPid(pid);
            com.join.mgps.Util.r0.w0(this.context, forumPostsBean, new ExtBean("0", pid + "", WMConstants.TIMER_STAGE_NONE));
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0067  */
    private void updateLocalAndNet(boolean isGetData) {
        char cCharAt;
        String fight_fun = this.downloadTask.getFight_fun();
        if (com.join.mgps.Util.t2.i(fight_fun)) {
            this.itemBeans.clear();
            this.adapter.b();
            if (fight_fun.length() >= 2) {
                char cCharAt2 = fight_fun.charAt(1);
                if (fight_fun.length() >= 7) {
                    cCharAt = fight_fun.charAt(6);
                    char c10 = fight_fun.charAt(5) == '1' ? '1' : '0';
                    if ('1' != cCharAt2 || '1' == cCharAt) {
                        this.battleHall.setVisibility(0);
                        this.roomCount.setVisibility(0);
                    } else if ('0' == cCharAt2 && '0' == cCharAt && c10 == '1') {
                        this.battleHall.setVisibility(0);
                        this.roomCount.setVisibility(0);
                    } else {
                        this.battleHall.setVisibility(0);
                        this.roomCount.setVisibility(8);
                    }
                } else {
                    cCharAt = '0';
                }
                if ('1' != cCharAt2) {
                    this.battleHall.setVisibility(0);
                    this.roomCount.setVisibility(0);
                } else {
                    this.battleHall.setVisibility(0);
                    this.roomCount.setVisibility(0);
                }
            }
            if (fight_fun.length() > 12 && isSupportNetMatchPaiwei(this, this.downloadTask) && fight_fun.charAt(12) == '1') {
                this.itemBeans.add(new DynamicEntranceBean("排位赛", "NEW", 1));
            }
            if (fight_fun.length() > 14 && isSupportNetMatchPaiwei(this, this.downloadTask) && fight_fun.charAt(14) == '1') {
                this.itemBeans.add(new DynamicEntranceBean("排位赛", "NEW", 14));
            }
            if (fight_fun.length() > 4 && fight_fun.charAt(4) == '1') {
                this.itemBeans.add(new DynamicEntranceBean("练习模式", "", 5));
            }
            if (fight_fun.length() >= 4 && fight_fun.charAt(3) == '1') {
                this.itemBeans.add(new DynamicEntranceBean("约战", "", 2));
            }
            if (fight_fun.length() >= 1 && '1' == fight_fun.charAt(0)) {
                this.itemBeans.add(new DynamicEntranceBean("本地对战", "", 3));
            }
        }
        if (this.mainDataShow == null) {
            this.noDiscuss.setVisibility(0);
            setForumVisibility(false);
            return;
        }
        if (isGetData) {
            FragmentTransaction fragmentTransactionBeginTransaction = this.supportFragmentManager.beginTransaction();
            com.join.mgps.fragment.c6 c6Var = this.recommendFragment;
            if (c6Var == null) {
                this.recommendFragment = new com.join.mgps.fragment.c6();
                Bundle bundle = new Bundle();
                bundle.putString("gameId", this.gameId);
                this.recommendFragment.setArguments(bundle);
                fragmentTransactionBeginTransaction.add(R.id.frameLayout, this.recommendFragment);
            } else {
                fragmentTransactionBeginTransaction.show(c6Var);
            }
            fragmentTransactionBeginTransaction.commit();
        }
        if (this.mainDataShow.getMemberInfo() != null) {
            this.vipTitle.setText(this.mainDataShow.getMemberInfo().getTitle());
        }
        if (this.mainDataShow.getMemberFun() != null) {
            List<GameMainV4DataBean.MemberFunBean> memberFun = this.mainDataShow.getMemberFun();
            if (this.mMemberFunAdapter == null) {
                this.mMemberFunAdapter = new com.join.mgps.adapter.n3(this, this.gameId);
            }
            this.vipFunc.setAdapter((ListAdapter) this.mMemberFunAdapter);
            if (memberFun != null && memberFun.size() > 0) {
                this.mMemberFunAdapter.d(memberFun);
                this.mMemberFunAdapter.notifyDataSetChanged();
            }
        }
        this.noDiscuss.setVisibility(8);
        setForumVisibility(true);
        GameMaingameinfo gameInfo = this.mainDataShow.getGameInfo();
        if (gameInfo != null) {
            String game_back_ground_img = gameInfo.getGame_back_ground_img();
            if (!com.join.mgps.Util.t2.h(game_back_ground_img)) {
                this.gameImg.setImageURI(game_back_ground_img);
            }
            this.areaId = gameInfo.getCommunity_area_id();
            if (isGetData) {
                if (!com.join.mgps.Util.t2.h(this.gameTagId)) {
                    getMulPostData(this.gameTagId);
                } else if (this.areaId != 0) {
                    getForumGroupIndex();
                } else {
                    getCommentList();
                }
            }
        }
        GameMainNetBattle netBattle = this.mainDataShow.getNetBattle();
        if (netBattle != null) {
            TextView textView = this.roomCount;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(netBattle.getNumber() < 0 ? 0 : netBattle.getNumber());
            sb2.append("房");
            textView.setText(sb2.toString());
            DownloadTask downloadTask = this.downloadTask;
            if (downloadTask == null || downloadTask.isFightFun()) {
                this.roomCount.setVisibility(0);
            } else {
                this.roomCount.setVisibility(8);
            }
        } else {
            this.roomCount.setVisibility(8);
        }
        GameMainV4DataBean.PlayGameInfoBean playGameInfo = this.mainDataShow.getPlayGameInfo();
        if (playGameInfo != null) {
            int file_save_count = playGameInfo.getFile_save_count();
            if (playGameInfo.getFile_save_switch() == 1) {
                this.itemBeans.add(new DynamicEntranceBean("云存档", file_save_count + "", 4));
            }
        }
    }

    private void updateViewPager() {
        this.fragments = new ArrayList<>();
        this.titles = new ArrayList<>();
        if (this.isGBA) {
            CloudListFragmentV2_ cloudListFragmentV2_ = new CloudListFragmentV2_();
            Bundle bundle = new Bundle();
            bundle.putInt("type", 1);
            bundle.putString("gameid", this.gameId);
            bundle.putInt("typeIndex", 3);
            cloudListFragmentV2_.setArguments(bundle);
            this.fragments.add(cloudListFragmentV2_);
            this.titles.add(TITLE_SHOP);
        }
        com.join.mgps.fragment.z5 z5Var = new com.join.mgps.fragment.z5();
        Bundle bundle2 = new Bundle();
        bundle2.putString("gameId", this.gameId);
        z5Var.setArguments(bundle2);
        this.fragments.add(z5Var);
        this.titles.add(TITLE_MOMENT);
        com.join.mgps.fragment.u5 u5Var = new com.join.mgps.fragment.u5();
        Bundle bundle3 = new Bundle();
        bundle3.putString("gameId", this.gameId);
        u5Var.setArguments(bundle3);
        this.fragments.add(u5Var);
        this.titles.add(TITLE_ACHIEVEMENT);
        GameMainV4DataBean gameMainV4DataBean = this.mainDataShow;
        if (gameMainV4DataBean != null && gameMainV4DataBean.isBbs_switch()) {
            com.join.mgps.fragment.o5 o5Var = new com.join.mgps.fragment.o5();
            Bundle bundle4 = new Bundle();
            bundle4.putString("gameId", this.gameId);
            bundle4.putString("draftUrl", this.mainDataShow.getBbs_strategy_contribute_url());
            bundle4.putBoolean("isExpand", true);
            o5Var.setArguments(bundle4);
            this.fragments.add(o5Var);
            this.titles.add(TITLE_INTRODUCTION);
        }
        if (this.mainDataShow.getMemberFun() != null) {
            List<GameMainV4DataBean.MemberFunBean> memberFun = this.mainDataShow.getMemberFun();
            List<String> arrayList = new ArrayList<>();
            for (GameMainV4DataBean.MemberFunBean memberFunBean : memberFun) {
                if (memberFunBean.getType() == 1) {
                    arrayList = memberFunBean.getContents();
                }
            }
            if (this.mMemberFunAdapter == null) {
                this.mMemberFunAdapter = new com.join.mgps.adapter.n3(this, this.gameId);
            }
            if (arrayList != null && arrayList.size() > 0) {
                com.join.mgps.fragment.l5 l5Var = new com.join.mgps.fragment.l5();
                Bundle bundle5 = new Bundle();
                bundle5.putSerializable("contents", new ArrayList(arrayList));
                l5Var.setArguments(bundle5);
                this.fragments.add(l5Var);
                this.titles.add(TITLE_GOLDFINGER);
            }
        }
        this.pagerAdapter = new com.join.mgps.customview.e0(this.supportFragmentManager, this.fragments, this.titles);
        this.viewPager.setOffscreenPageLimit(2);
        this.viewPager.setAdapter(this.pagerAdapter);
        this.viewPager.addOnPageChangeListener(new d());
        this.tabLayout.setupWithViewPager(this.viewPager);
        this.ivTips.setVisibility(8);
        if (TITLE_MOMENT.equals(this.titles.get(0))) {
            this.ivChoose.setVisibility(0);
        } else {
            this.ivChoose.setVisibility(8);
        }
    }

    @AfterViews
    void afterViews() {
        this.context = this;
        setSystemUiHide(true);
        PrefUtil.getInstance(this.context).save("achievement_done", "");
        PrefUtil.getInstance(this.context).save("isHasAchievement", Boolean.TRUE);
        this.supportFragmentManager = getSupportFragmentManager();
        this.client = com.join.mgps.rpc.impl.i.P0();
        this.rpcAccountClient = com.join.mgps.rpc.impl.l.n0();
        this.rpcForumClient = com.join.mgps.rpc.impl.g.A0();
        this.friendClient = com.join.mgps.rpc.impl.h.p();
        this.rpcArchiveClient = com.join.mgps.rpc.impl.c.k();
        this.rpcClient = com.join.mgps.rpc.impl.e.m();
        DownloadTask downloadTaskG = q5.f.M().G(this.gameId);
        this.downloadTask = downloadTaskG;
        if (downloadTaskG != null && TextUtils.equals(downloadTaskG.getPlugin_num(), String.valueOf(ConstantIntEnum.GBA.value()))) {
            this.isGBA = true;
        }
        this.accountBean = AccountUtil_.getInstance_(this.context).getAccountData();
        DownloadTask downloadTask = this.downloadTask;
        if (downloadTask != null) {
            this.gameName.setText(downloadTask.getShowName());
        }
        this.noDiscuss = new View(this);
        com.join.mgps.adapter.i2 i2Var = new com.join.mgps.adapter.i2(this, this.itemBeans, this);
        this.adapter = i2Var;
        this.gameMainNewLeftGv.setAdapter((ListAdapter) i2Var);
        this.gameMainNewLeftGv.setOverScrollMode(2);
        int dimension = (int) getResources().getDimension(R.dimen.wdp916);
        this.gameImg.setLayoutParams(new ConstraintLayout.LayoutParams((dimension * getResources().getDisplayMetrics().heightPixels) / ((int) getResources().getDimension(R.dimen.wdp667)), -1));
        getDataFromDb();
        getData();
        getAllAchievementsData();
        if (this.isGBA) {
            getNum();
        }
        this.mArenaDialogBuilder = new com.join.mgps.socket.fight.arena.a(this, new c());
        if (notchtools.geek.com.notchtools.b.o().e(getWindow())) {
            ((ConstraintLayout.LayoutParams) this.leftContainer.getLayoutParams()).setMarginStart(notchtools.geek.com.notchtools.b.o().g(getWindow()) + getResources().getDimensionPixelOffset(R.dimen.wdp10));
        }
        new LinearLayoutManager(this).setOrientation(1);
        com.papa.sim.statistic.t.l(this).Z0(Event.indexGameStart, AccountUtil_.getInstance_(this).getUid(), this.gameId, this.from, 0);
        if (this.adResultReceiver == null) {
            this.adResultReceiver = new EmuOutResultReceiver();
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction(p5.a.V);
            registerReceiver(this.adResultReceiver, intentFilter);
        }
        this.tabLayout.t();
        this.tabLayout.L();
    }

    @Click
    void back() {
        finish();
    }

    @Click
    void battleHall() {
        char c10;
        char cCharAt;
        com.papa.sim.statistic.t.l(this).R(AccountUtil_.getInstance_(this).getUid());
        com.papa.sim.statistic.t.l(this).y(AccountUtil_.getInstance_(this).getUid(), this.gameId, "game_main");
        try {
            com.papa.sim.statistic.t.l(this).L0(this.gameId, Integer.parseInt(AccountUtil_.getInstance_(this).getUid()));
        } catch (Exception unused) {
        }
        GameInfoBean gameInfoBean = new GameInfoBean();
        gameInfoBean.setGame_id(this.gameId);
        GameMainV4DataBean gameMainV4DataBean = this.mainDataShow;
        if (gameMainV4DataBean != null && gameMainV4DataBean.getGameInfo() != null) {
            gameInfoBean.setGame_name(this.mainDataShow.getGameInfo().getGame_name());
        }
        DownloadTask downloadTask = this.downloadTask;
        if (downloadTask != null && com.join.mgps.Util.t2.i(downloadTask.getFight_fun())) {
            String fight_fun = this.downloadTask.getFight_fun();
            char cCharAt2 = fight_fun.charAt(1);
            if (fight_fun.length() >= 7) {
                cCharAt = fight_fun.charAt(6);
                c10 = fight_fun.charAt(5) == '1' ? '1' : '0';
            } else {
                c10 = '0';
                cCharAt = '0';
            }
            if ('0' == cCharAt2 && '0' == cCharAt && c10 == '1') {
                getPspData();
                return;
            }
        }
        DownloadTask downloadTask2 = this.downloadTask;
        if (downloadTask2 == null || !downloadTask2.isFightFun()) {
            NewArenaMainActivty_.intent(this).start();
        } else {
            cancelRegisterObserver();
            GameRoomListActivity_.intent(this.context).b(true).c(gameInfoBean).start();
        }
    }

    @Click
    void buyVip() {
        String str;
        GameMainV4DataBean gameMainV4DataBean = this.mainDataShow;
        if (gameMainV4DataBean == null || gameMainV4DataBean.getMemberInfo() == null) {
            return;
        }
        GameMainV4DataBean.MemberInfoBean memberInfo = this.mainDataShow.getMemberInfo();
        if (Integer.parseInt(memberInfo.getLink_type()) == 4 && memberInfo.getLink_type_val() != null && memberInfo.getLink_type_val().startsWith("http")) {
            String link_type_val = memberInfo.getLink_type_val();
            if (link_type_val.contains("?")) {
                str = link_type_val + "&game_id=" + this.gameId;
            } else {
                str = link_type_val + "?game_id=" + this.gameId;
            }
            memberInfo.setLink_type_val(str);
        }
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(Integer.valueOf(memberInfo.getLink_type()).intValue());
        intentDateBean.setJump_type(Integer.valueOf(memberInfo.getJump_type()).intValue());
        intentDateBean.setLink_type_val(memberInfo.getLink_type_val());
        IntentUtil.getInstance().intentActivity(this.context, intentDateBean);
    }

    void calcLevel() {
        GameMainV4DataBean gameMainV4DataBean = this.mainDataShow;
        if (gameMainV4DataBean == null || gameMainV4DataBean.getGameMasteryLevel() == null) {
            return;
        }
        try {
            GameMasteryLevel gameMasteryLevel = this.mainDataShow.getGameMasteryLevel();
            int i10 = 0;
            int[] iArr = new int[0];
            int current_lv_times = gameMasteryLevel.getCurrent_lv_times();
            int next_lv_times = gameMasteryLevel.getNext_lv_times();
            if (!TextUtils.isEmpty(gameMasteryLevel.getLevel()) && !gameMasteryLevel.getLevel().equals("传说") && !gameMasteryLevel.getLevel().equals("宗师") && !gameMasteryLevel.getLevel().equals("精英")) {
                gameMasteryLevel.getLevel().equals("资深");
            }
            try {
                ArrayList arrayList = (ArrayList) JsonMapper.getInstance().fromJson(this.prefDef.gameTimeLvCfg().d(), JsonMapper.getInstance().createCollectionType(ArrayList.class, GameTimeLevel.class));
                if (arrayList != null) {
                    iArr = new int[arrayList.size()];
                    for (int i11 = 0; i11 < arrayList.size(); i11++) {
                        iArr[i11] = ((GameTimeLevel) arrayList.get(i11)).getVal();
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            int i12 = current_lv_times + 0;
            int i13 = 0;
            while (i10 < iArr.length) {
                int i14 = i10 + 1;
                int i15 = iArr[i10];
                int i16 = i15 - i13;
                if (i12 > i16 && i10 != iArr.length - 1) {
                    i12 -= i16;
                    i10 = i14;
                    next_lv_times = i16;
                    i13 = i15;
                }
                next_lv_times = i16;
            }
            Math.min(i12, next_lv_times);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    void cancelRegisterObserver() {
        if (this.mServiceDelegate.d() != null) {
            this.mServiceDelegate.d().A(this.mObserver);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void checkUserInfoFailed() {
        com.join.mgps.Util.a3.b(this).d("登录已失效请您重新登录");
        intentLogin();
    }

    void discussMore() {
        if (this.noDiscuss.getVisibility() == 0 || this.areaId == 0) {
            toCommentAllList();
        } else {
            IntentUtil.getInstance().goForumGroupActivity(this, this.areaId);
        }
    }

    @Click
    void endGameEntrance() {
        EndGameActivity_.intent(this).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void gameMainNewYueZhanRl() {
        try {
            UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
            if (accountData == null) {
                hideLoadingDialog();
                return;
            }
            String token = accountData.getToken();
            ResultArenaBean<ArenaLobbyServer> resultArenaBeanA0 = com.join.mgps.rpc.impl.l.n0().a0(accountData.getUid(), token);
            if (resultArenaBeanA0 == null || resultArenaBeanA0.getError() != 0 || resultArenaBeanA0.getData() == null) {
                return;
            }
            if (resultArenaBeanA0.getData().getDisabled() == 0) {
                gameMainNewYueZhanRlDo();
                return;
            }
            ArenaResponse arenaResponse = new ArenaResponse();
            arenaResponse.errorType = 1001;
            arenaResponse.errorInfo = "邀请失败：该玩家已被封禁！";
            handleFailure(arenaResponse);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void gameMainNewYueZhanRlDo() {
        if (!com.join.android.app.common.utils.m.j(this)) {
            com.join.mgps.Util.a3.b(this).d("无网络连接");
            return;
        }
        if (!IntentUtil.getInstance().goLoginBattle(this)) {
            cancelCreateGameCountDown();
            this.ll_loading.setVisibility(0);
            this.mCreateGameCountDowner.start();
            if (UtilsMy.X(this.context, this.downloadTask) == null) {
                Toast.makeText(this, "正在下载插件...", 1).show();
                hideLoadingDialog();
                return;
            }
            com.join.mgps.socket.fight.arena.b bVar = this.mServiceDelegate;
            if (bVar != null && bVar.d() != null) {
                if (this.mServiceDelegate.d().s()) {
                    com.wufan.friend.chat.c.u().V(null);
                    this.mServiceDelegate.f(ArenaRequestFactory.createRoom(ArenaConstants.REGISTER_TYPE_GAMEMAIN, this.gameId, 0, AccountUtil_.getInstance_(this).getAccountData().getUid(), true));
                } else {
                    ArenaRequest arenaRequestLogin = ArenaRequestFactory.login(ArenaConstants.REGISTER_TYPE_GAMEMAIN);
                    arenaRequestLogin.isRefreshing = true;
                    arenaRequestLogin.isElite = false;
                    this.mServiceDelegate.f(arenaRequestLogin);
                }
            }
        }
        com.papa.sim.statistic.t.l(this).N0(this.downloadTask.getCrc_link_type_val(), this.accountBean.getUid());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getAllAchievementsData() {
        if (com.join.android.app.common.utils.m.j(this)) {
            try {
                RequestModel requestModel = new RequestModel();
                requestModel.setDefault(this);
                RequestSimulatorAchievementListArgs requestSimulatorAchievementListArgs = new RequestSimulatorAchievementListArgs();
                requestSimulatorAchievementListArgs.setGameId(this.gameId);
                requestSimulatorAchievementListArgs.setUid(AccountUtil_.getInstance_(this).getUid());
                requestSimulatorAchievementListArgs.setToken(AccountUtil_.getInstance_(this).getToken());
                requestModel.setArgs(requestSimulatorAchievementListArgs);
                ResponseModel<SimulatorAllAchievementBean> responseModelY0 = this.client.y0(requestModel.makeSign());
                if (responseModelY0 == null || responseModelY0.getData() == null) {
                    return;
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append("getAllAchievementsData: ");
                sb2.append(JsonMapper.getInstance().toJson(responseModelY0.getData().getAchievement_list()));
                PrefUtil.getInstance(this.context).save("all_achievements", JsonMapper.getInstance().toJson(responseModelY0.getData().getAchievement_list()));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getCommentList() {
        if (com.join.android.app.common.utils.m.j(this.context)) {
            CommentResponse<CommentAllListBean> commentResponseA = this.rpcClient.a(getGameCommentRequestBean());
            if (commentResponseA != null) {
                this.general = commentResponseA.getData_info().getGeneral_comment();
                setCommunityCommentDataUi();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getData() {
        try {
            RequestModel<RequestGameIdArgs> requestModel = new RequestModel<>();
            requestModel.setDefault(this);
            String str = this.gameId;
            UserInfo userInfo = this.accountBean;
            RequestGameIdArgs requestGameIdArgs = new RequestGameIdArgs(str, 1, 1, userInfo != null ? userInfo.getUid() : 1);
            requestGameIdArgs.setGameId(this.gameId);
            requestGameIdArgs.setToken(AccountUtil_.getInstance_(this).getToken());
            requestModel.setArgs(requestGameIdArgs);
            ResponseModel<GameMainV4DataBean> responseModelF = this.client.f(requestModel);
            this.isResume = true;
            if (responseModelF == null || responseModelF.getFlag() != 1) {
                return;
            }
            GameMainV4DataBean data = responseModelF.getData();
            showImg(data);
            if (data != null && data.getGameInfo() != null) {
                this.gameTagId = data.getGameInfo().getCommunity_multi_posts_id();
            }
            GameMainTable gameMainTableO = t6.u.n().o(this.gameId);
            if (gameMainTableO != null) {
                GameMainachieve achieve = data.getAchieve();
                GameMainDataBean gameMainDataBean = (GameMainDataBean) JsonMapper.getInstance().fromJson(gameMainTableO.getGame_main_data(), GameMainDataBean.class);
                if (gameMainDataBean != null) {
                    GameMainachieve achieve2 = gameMainDataBean.getAchieve();
                    if (achieve != null && achieve2 != null) {
                        achieve.setLastShowVerTime(achieve2.getLastShowVerTime());
                    }
                }
                String json = JsonMapper.getInstance().toJson(data);
                gameMainTableO.setGameid(this.gameId);
                gameMainTableO.setGame_main_data(json);
                t6.u.n().update(gameMainTableO);
            } else {
                GameMainTable gameMainTable = new GameMainTable();
                String json2 = JsonMapper.getInstance().toJson(data);
                gameMainTable.setGameid(this.gameId);
                gameMainTable.setGame_main_data(json2);
                t6.u.n().k(gameMainTable);
            }
            updateUI(data, true);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getDataFromDb() {
        GameMainTable gameMainTableO = t6.u.n().o(this.gameId);
        if (gameMainTableO != null) {
            GameMainV4DataBean gameMainV4DataBean = (GameMainV4DataBean) JsonMapper.getInstance().fromJson(gameMainTableO.getGame_main_data(), GameMainV4DataBean.class);
            if (gameMainV4DataBean != null && gameMainV4DataBean.getGameInfo() != null) {
                this.gameTagId = gameMainV4DataBean.getGameInfo().getCommunity_multi_posts_id();
            }
            if (gameMainV4DataBean != null) {
                updateUI(gameMainV4DataBean, false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getForumGroupIndex() {
        if (com.join.android.app.common.utils.m.j(this)) {
            try {
                ResultResMainBean<GameMainCommunityBean> resultResMainBeanQ = this.rpcForumClient.Q(this.areaId);
                if (resultResMainBeanQ == null || resultResMainBeanQ.getError() != 0 || resultResMainBeanQ.getData() == null) {
                    return;
                }
                List<GameMainCommunityBean.PostsBean> posts = resultResMainBeanQ.getData().getPosts();
                this.tempList.clear();
                if (posts != null && posts.size() > 0) {
                    String subject = posts.get(0).getSubject();
                    if (com.join.mgps.Util.t2.h(subject)) {
                        subject = posts.get(0).getMessage();
                    }
                    this.tempList.add(new GameMainCommunityBean.PostsBean(subject, posts.get(0).getPid()));
                    if (posts.size() > 1) {
                        String subject2 = posts.get(1).getSubject();
                        if (com.join.mgps.Util.t2.h(subject2)) {
                            subject2 = posts.get(1).getMessage();
                        }
                        this.tempList.add(new GameMainCommunityBean.PostsBean(subject2, posts.get(1).getPid()));
                    }
                }
                setCommunityDataUi();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public RequestCommentAllListArgs getGameCommentRequestBean() {
        this.accountBean = AccountUtil_.getInstance_(this.context).getAccountData();
        String strD = this.prefDef.commentToken().d();
        UserInfo userInfo = this.accountBean;
        return RequestBeanUtil.getInstance(this.context).getRequestCommentAllList(1, 10, this.gameId, userInfo != null ? userInfo.getUid() : 0, strD);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getHomepageRecommendLabel() {
        if (com.join.android.app.common.utils.m.j(this.context)) {
            try {
                ForumResponse<ForumData.HomepageRecommendLabel> forumResponseG0 = this.rpcForumClient.g0(0, 1, AccountUtil_.getInstance_(this.context).getUid(), AccountUtil_.getInstance_(this.context).getToken());
                if (forumResponseG0 == null || forumResponseG0.getError() != 0 || forumResponseG0.getData() == null) {
                    return;
                }
                List<ForumBean.ForumPostsBean> post_list = forumResponseG0.getData().getPost_list();
                this.tempList.clear();
                if (post_list != null && post_list.size() > 0) {
                    this.tempList.add(new GameMainCommunityBean.PostsBean(post_list.get(0).getSubject(), post_list.get(0).getPid()));
                    if (post_list.size() > 0) {
                        this.tempList.add(new GameMainCommunityBean.PostsBean(post_list.get(1).getSubject(), post_list.get(1).getPid()));
                    }
                }
                setCommunityDataUi();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getMulPostData(String pids) {
        if (com.join.android.app.common.utils.m.j(this)) {
            try {
                ForumResponse<MulPostData> forumResponseT = this.rpcForumClient.t(pids);
                if (forumResponseT == null || forumResponseT.getError() != 0 || forumResponseT.getData() == null) {
                    return;
                }
                List<ForumBean.ForumPostsBean> posts_list = forumResponseT.getData().getPosts_list();
                this.tempList.clear();
                if (posts_list != null && posts_list.size() > 0) {
                    this.tempList.add(new GameMainCommunityBean.PostsBean(posts_list.get(0).getSubject(), posts_list.get(0).getPid()));
                    if (posts_list.size() > 1) {
                        this.tempList.add(new GameMainCommunityBean.PostsBean(posts_list.get(1).getSubject(), posts_list.get(1).getPid()));
                    }
                }
                setCommunityDataUi();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getNum() {
        try {
            ArchiveNumDataBean archiveNumDataBeanI = this.rpcArchiveClient.i(getArchiveCouldArgs().getArgs());
            this.numDataBean = archiveNumDataBeanI;
            if (archiveNumDataBeanI == null || archiveNumDataBeanI.getCode() != 600) {
                return;
            }
            this.prefDef.getArchiveCoinPref().g(Integer.valueOf(this.numDataBean.getData_info().getArchiveCoin()));
            this.prefDef.cloudVipLink().g(this.numDataBean.getData_info().getVipLink());
            DownloadTask downloadTaskG = q5.f.M().G(this.gameId);
            if (downloadTaskG == null) {
                upNum(0);
                return;
            }
            this.recordRoms = com.join.mgps.Util.o3.n(downloadTaskG.getPlugin_num(), downloadTaskG.getGameZipPath());
            if (downloadTaskG.getPlugin_num().equals("31")) {
                Iterator<RomArchived> it2 = this.recordRoms.iterator();
                boolean z10 = false;
                boolean z11 = false;
                while (it2.hasNext()) {
                    if (it2.next().getFileName().contains("_v2")) {
                        z10 = true;
                    } else {
                        z11 = true;
                    }
                }
                Iterator<RomArchived> it3 = this.recordRoms.iterator();
                while (it3.hasNext()) {
                    RomArchived next = it3.next();
                    if (z11 && !z10) {
                        this.marcketDownEnable = false;
                        if (!com.join.mgps.Util.w1.a(downloadTaskG.getPackageName())) {
                            it3.remove();
                        }
                    } else if (z11 && z10) {
                        if (com.join.mgps.Util.w1.a(downloadTaskG.getPackageName())) {
                            this.marcketPGNEnable = false;
                            if (next.getFileName().contains("_v2")) {
                                it3.remove();
                            }
                        } else if (!next.getFileName().contains("_v2")) {
                            it3.remove();
                        }
                    }
                }
            }
            if (downloadTaskG.getPlugin_num().equals("33")) {
                RomArchived romArchived = null;
                long j10 = 0;
                for (RomArchived romArchived2 : this.recordRoms) {
                    long jDate2TimeStamp = date2TimeStamp(romArchived2.getArchivedTime(), "MM月dd日 HH:mm");
                    if (j10 == 0) {
                        romArchived = romArchived2;
                        j10 = jDate2TimeStamp;
                    }
                    if (j10 > jDate2TimeStamp) {
                        romArchived = romArchived2;
                        j10 = jDate2TimeStamp;
                    }
                }
                if (romArchived != null && romArchived.getFileName().contains("vba")) {
                    setIsVBA(true);
                }
            }
            List<RomArchived> list = this.recordRoms;
            if (list != null) {
                upNum(list.size());
            } else {
                upNum(0);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getOnlineCouponData() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getPspData() {
        try {
            GameWorldResponse<List<PspBattleServer>> gameWorldResponseN = this.rpcAccountClient.n();
            if (gameWorldResponseN.getError() == 701) {
                checkUserInfoFailed();
            } else if (gameWorldResponseN.getError() == 0) {
                this.pspBattleServers = gameWorldResponseN.getData();
                showPspDialog();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background(delay = 1500)
    public void getSimulator() {
    }

    void gotoTargetActivity(String tpl_type, int link_type, int jump_type, String crc_lint_val, String link_type_val) {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setTpl_type(tpl_type);
        intentDateBean.setLink_type(link_type);
        intentDateBean.setJump_type(jump_type);
        intentDateBean.setCrc_link_type_val(crc_lint_val);
        intentDateBean.setLink_type_val(link_type_val);
        IntentUtil.getInstance().intentActivity(this.context, intentDateBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void handleFailure(ArenaResponse response) {
        hideLoadingDialog();
        int i10 = response.errorType;
        if (i10 == 16) {
            this.mArenaDialogBuilder.D(com.join.mgps.socket.fight.arena.a.f73077j, 257, Integer.valueOf(response.errorType), "无法加入，你被禁止加入该房间", "确定");
            return;
        }
        if (i10 == 17) {
            this.mArenaDialogBuilder.D(com.join.mgps.socket.fight.arena.a.f73077j, 257, Integer.valueOf(response.errorType), "该房间为比赛专用房间,非参赛选手无法加入", "我知道了");
            return;
        }
        if (i10 == 9) {
            this.mArenaDialogBuilder.D(com.join.mgps.socket.fight.arena.a.f73077j, 257, Integer.valueOf(response.errorType), "房间人数已满你无法加入房间!", "确定");
            return;
        }
        if (i10 == 7) {
            this.mArenaDialogBuilder.D(com.join.mgps.socket.fight.arena.a.f73077j, 256, Integer.valueOf(response.errorType), "密码输入错误，请重试!", "取消", "确定", response);
            return;
        }
        if (i10 == 8) {
            this.mArenaDialogBuilder.D(com.join.mgps.socket.fight.arena.a.f73077j, 257, Integer.valueOf(response.errorType), "房间已经被解散!", "确定");
            return;
        }
        if (i10 == 11) {
            this.mArenaDialogBuilder.D(com.join.mgps.socket.fight.arena.a.f73077j, 257, Integer.valueOf(response.errorType), "铜板不足，无法创建房间!", "确定");
        } else if (i10 == 13) {
            this.mArenaDialogBuilder.D(com.join.mgps.socket.fight.arena.a.f73077j, 257, Integer.valueOf(response.errorType), "铜板不足，无法加入房间", "确定");
        } else if (i10 == 1001) {
            this.mArenaDialogBuilder.D(com.join.mgps.socket.fight.arena.a.f73077j, 258, Integer.valueOf(response.errorType), response.errorInfo, "确定");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void hideLoadingDialog() {
        this.ll_loading.setVisibility(8);
    }

    /* JADX WARN: Multi-variable type inference failed */
    void intentLogin() {
        ((LoginSplashActivity_.IntentBuilder_) LoginSplashActivity_.intent(this.context).flags(C.ENCODING_PCM_MU_LAW)).start();
    }

    public boolean isLogined(Context context) {
        UserInfo accountData = AccountUtil_.getInstance_(context).getAccountData();
        return (accountData == null || !com.join.mgps.Util.t2.i(accountData.getToken()) || AccountUtil_.getInstance_(context).isTourist()) ? false : true;
    }

    boolean isSupportNetMatchPaiwei(Context context, DownloadTask downloadTask) {
        int i10;
        try {
            i10 = Integer.parseInt(downloadTask.getPlugin_num());
        } catch (Exception unused) {
            i10 = 0;
        }
        try {
            if (i10 != ConstantIntEnum.FBA.value() && i10 != ConstantIntEnum.FC.value()) {
                return true;
            }
            EMUApkTable eMUApkTableN = t6.o.o().n(downloadTask.getRomType());
            if (!new APKUtils().e(context, eMUApkTableN.getPackage_name())) {
                if (eMUApkTableN.getDown_type() == 2 && eMUApkTableN.getDown_type() == 2) {
                    return com.join.android.app.common.utils.o.t(context, eMUApkTableN, false, new String[0]);
                }
                return false;
            }
            try {
                try {
                    PackageInfo packageInfo = context.getPackageManager().getPackageInfo(eMUApkTableN.getPackage_name(), 0);
                    if (packageInfo == null) {
                        return false;
                    }
                    try {
                        return packageInfo.versionCode > 330;
                    } catch (Exception unused2) {
                        return true;
                    }
                } catch (Exception e10) {
                    e10.getLocalizedMessage();
                    return false;
                }
            } catch (Exception e11) {
                e11.printStackTrace();
                return false;
            }
        } catch (Exception e12) {
            e12.printStackTrace();
            return true;
        }
    }

    @Click
    void ivChoose() {
        Fragment item = ((com.join.mgps.customview.e0) this.viewPager.getAdapter()).getItem(this.titles.indexOf(TITLE_MOMENT));
        if (item instanceof com.join.mgps.fragment.z5) {
            int iQ = ((com.join.mgps.fragment.z5) item).Q();
            if (this.simulatorMomentChooseDialog == null) {
                com.join.mgps.dialog.e2 e2Var = new com.join.mgps.dialog.e2(this, iQ);
                this.simulatorMomentChooseDialog = e2Var;
                e2Var.e(new j(item));
            }
            this.simulatorMomentChooseDialog.setFocusable(true);
            com.join.mgps.dialog.e2 e2Var2 = this.simulatorMomentChooseDialog;
            ImageView imageView = this.ivChoose;
            e2Var2.showAsDropDown(imageView, (int) ((((double) imageView.getMeasuredWidth()) * 0.8d) - ((double) getResources().getDimension(R.dimen.wdp136))), (int) (-getResources().getDimension(R.dimen.wdp10)));
        }
    }

    @Click
    void ivTips() {
        if (this.achievmentTipsDialog == null) {
            this.achievmentTipsDialog = new AchievmentTipsDialog(this.context);
        }
        this.achievmentTipsDialog.setFocusable(true);
        AchievmentTipsDialog achievmentTipsDialog = this.achievmentTipsDialog;
        ImageView imageView = this.ivTips;
        achievmentTipsDialog.showAsDropDown(imageView, (int) ((((double) imageView.getMeasuredWidth()) * 0.8d) - ((double) this.context.getResources().getDimension(R.dimen.wdp336))), (int) (-getResources().getDimension(R.dimen.wdp10)));
    }

    @Click
    void mask() {
        hide();
        hideExpandIntroduction();
        if (this.handler == null) {
            this.handler = new Handler();
        }
        this.handler.postDelayed(new a(), 200L);
    }

    void noDiscuss() {
        toCommentAllList();
    }

    @Override // com.join.mgps.activity.FriendActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        this.type = "GAME_HOME_PAGE";
        super.gameId = this.gameId;
        super.onCreate(savedInstanceState);
        setExitSharedElementCallback(new b());
    }

    @Override // com.join.mgps.activity.FriendActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        com.join.mgps.socket.fight.arena.a aVar = this.mArenaDialogBuilder;
        if (aVar != null) {
            aVar.w();
        }
        com.papa.sim.statistic.t.l(this).z0(this.downloadTask.getCrc_link_type_val(), this.accountBean.getUid());
        com.join.mgps.socket.fight.arena.b bVar = this.mServiceDelegate;
        if (bVar != null && bVar.d() != null) {
            this.mServiceDelegate.d().A(this.mObserver);
        }
        com.join.mgps.socket.fight.arena.b bVar2 = this.mServiceDelegate;
        if (bVar2 != null) {
            bVar2.g();
            this.mServiceDelegate.stopService();
            this.mServiceDelegate = null;
        }
        EmuOutResultReceiver emuOutResultReceiver = this.adResultReceiver;
        if (emuOutResultReceiver != null) {
            unregisterReceiver(emuOutResultReceiver);
        }
        super.onDestroy();
    }

    @Override // com.join.mgps.activity.FriendActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        hideLoadingDialog();
        this.accountBean = AccountUtil_.getInstance_(this).getAccountData();
        if (this.mServiceDelegate == null) {
            com.join.mgps.socket.fight.arena.b bVar = new com.join.mgps.socket.fight.arena.b(this, this.mCallback);
            this.mServiceDelegate = bVar;
            bVar.bindService();
        }
        getSimulator();
        if (this.downloadTask != null) {
            Ext ext = new Ext();
            if (this.downloadTask != null) {
                ext.setFrom(this.downloadTask.get_from() + "");
            }
            com.papa.sim.statistic.t.l(this).d(q5.f.M().N(this.gameId, this), ext);
        }
        if (AccountUtil_.getInstance_(this).isTourist()) {
            return;
        }
        showAchievementDoneDialog();
    }

    @Override // com.join.mgps.adapter.i2.a
    public void onRootView(DynamicEntranceBean bean) {
        int typeId = bean.getTypeId();
        if (typeId == 14) {
            gameMainNewPaiWeiRl(14);
        }
        switch (typeId) {
            case 1:
                gameMainNewPaiWeiRl(1);
                break;
            case 2:
                gameMainNewYueZhanRl();
                break;
            case 3:
                gameMainNewLocalFightRl();
                break;
            case 4:
                gameMainNewCunDangRl();
                break;
            case 5:
                gameTest();
                break;
            case 6:
                discussMore();
                break;
        }
    }

    @Override // com.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
        com.join.mgps.socket.fight.arena.b bVar = this.mServiceDelegate;
        if (bVar != null && bVar.d() != null) {
            this.mServiceDelegate.d().A(this.mObserver);
        }
        com.join.mgps.socket.fight.arena.b bVar2 = this.mServiceDelegate;
        if (bVar2 != null) {
            bVar2.g();
            this.mServiceDelegate.stopService();
            this.mServiceDelegate = null;
        }
    }

    public void removeAchievementFragment() {
        PrefUtil.getInstance(this.context).save("isHasAchievement", Boolean.FALSE);
        this.ivChoose.setVisibility(8);
        ArrayList<Fragment> arrayList = this.fragments;
        if (arrayList == null || arrayList.size() <= 0 || this.pagerAdapter == null) {
            return;
        }
        Iterator<Fragment> it2 = this.fragments.iterator();
        while (it2.hasNext()) {
            if (it2.next() instanceof com.join.mgps.fragment.u5) {
                it2.remove();
                this.titles.remove(TITLE_ACHIEVEMENT);
            }
        }
        this.pagerAdapter.d(this.fragments, this.titles);
        this.pagerAdapter.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void setCommunityCommentDataUi() {
        if (this.general == null) {
            this.noDiscuss.setVisibility(0);
            setForumVisibility(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void setCommunityDataUi() {
        if (this.tempList != null) {
            this.noDiscuss.setVisibility(8);
            setForumVisibility(true);
        } else {
            this.noDiscuss.setVisibility(0);
            setForumVisibility(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void setForumVisibility(boolean visible) {
        for (int i10 = 0; i10 < this.itemBeans.size(); i10++) {
            DynamicEntranceBean dynamicEntranceBean = this.itemBeans.get(i10);
            if (dynamicEntranceBean.getTypeId() == 6) {
                this.itemBeans.remove(dynamicEntranceBean);
                break;
            }
        }
        if (visible) {
            this.itemBeans.add(new DynamicEntranceBean("社区", "", 6));
        }
        this.adapter.notifyDataSetChanged();
    }

    public void setHeaderData(List<SimulatorMomentBean.BasicInfo> basicInfos) {
    }

    public void setIsVBA(boolean isVBA) {
        this.isVBA = isVBA;
    }

    public void setOnlinePlayersCount(int count) {
    }

    public void showBattle() {
        this.friendContainer.setVisibility(0);
        go(0);
        this.mask.setVisibility(0);
    }

    public void showExpandIntroduction() {
        FragmentTransaction fragmentTransactionBeginTransaction = this.supportFragmentManager.beginTransaction();
        fragmentTransactionBeginTransaction.setCustomAnimations(R.anim.from_right, R.anim.out_right);
        com.join.mgps.fragment.o5 o5Var = this.expandIntroductionFragment;
        if (o5Var == null) {
            this.expandIntroductionFragment = new com.join.mgps.fragment.o5();
            Bundle bundle = new Bundle();
            bundle.putString("gameId", this.gameId);
            bundle.putString("draftUrl", this.mainDataShow.getBbs_strategy_contribute_url());
            bundle.putBoolean("isExpand", true);
            this.expandIntroductionFragment.setArguments(bundle);
            fragmentTransactionBeginTransaction.add(R.id.expandContainer, this.expandIntroductionFragment);
        } else {
            fragmentTransactionBeginTransaction.show(o5Var);
        }
        fragmentTransactionBeginTransaction.commit();
        this.expandContainer.setVisibility(0);
        this.mask.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showImg(final GameMainV4DataBean gameMaindataImg) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showOnlineCoupinDialog(OnlineCouponConfigBean data) {
        com.join.mgps.Util.h0.h0(this).X(this, data, 3);
        com.papa.sim.statistic.t.l(this).T1(Event.quitSingleSuccessUpRedBag, AccountUtil_.getInstance_(this).getAccountData().getUid());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showPspDialog() {
        l lVar = this.netWorkPspDialog;
        if (lVar != null && lVar.isShowing()) {
            this.netWorkPspDialog.dismiss();
        }
        l lVar2 = new l(this.context, R.style.HKDialogLoading);
        this.netWorkPspDialog = lVar2;
        lVar2.show();
    }

    @Click
    void startGame() {
        if (UtilsMy.f2(this.downloadTask.getRomType()).getDown_type() == 2) {
            startGameV2();
        } else if (new PrefDef_(this.context).launch_game_switch().d().booleanValue()) {
            UtilsMy.A0(this.context, 1, this.gameId, "RAW_SIMULATOR", new f());
        } else {
            startGameV2();
        }
    }

    void startGameV2() {
        int i10;
        int i11;
        String core = "";
        HashMap map = new HashMap();
        try {
            HashMap map2 = (HashMap) JsonMapper.getInstance().fromJson(this.prefDef.lastStartSimulatorCore().d(), JsonMapper.getInstance().createCollectionType(HashMap.class, String.class, String.class));
            if (map2 == null) {
                try {
                    map = new HashMap();
                } catch (Exception e10) {
                    e = e10;
                    map = map2;
                    e.printStackTrace();
                }
            } else {
                map = map2;
            }
            if (map.containsKey(this.gameId)) {
                core = (String) map.get(this.gameId);
            }
        } catch (Exception e11) {
            e = e11;
        }
        GameMainV4DataBean gameMainV4DataBean = this.mainDataShow;
        if (gameMainV4DataBean != null) {
            GameMainNetBattle netBattle = gameMainV4DataBean.getNetBattle();
            if (this.mainDataShow.getSimulator_core() != null && this.mainDataShow.getSimulator_core().getCore() != null) {
                core = this.mainDataShow.getSimulator_core().getCore();
            }
            String str = core;
            map.put(this.gameId, str);
            this.prefDef.lastStartSimulatorCore().g(JsonMapper.toJsonString(map));
            int silence_room_switch = netBattle != null ? netBattle.getSilence_room_switch() : 0;
            if (silence_room_switch == 0) {
                UtilsMy.m(null, this.downloadTask, this.context, 0, str);
            } else {
                String fight_fun = this.downloadTask.getFight_fun();
                boolean z10 = com.join.mgps.Util.t2.i(fight_fun) && fight_fun.length() >= 7 && '1' == fight_fun.charAt(6);
                int max_battle_count = this.mainDataShow.getGameInfo() != null ? this.mainDataShow.getGameInfo().getMax_battle_count() : 0;
                if (silence_room_switch == 1) {
                    if (!com.join.mgps.Util.t2.i(this.battleIp) || (i11 = this.battlePort) == 0) {
                        UtilsMy.m(null, this.downloadTask, this.context, 0, str);
                    } else {
                        UtilsMy.p(this.downloadTask, this.context, 1, this.battleIp, i11, this.fastIp, max_battle_count, str);
                    }
                } else if (silence_room_switch == 2 && z10 && com.join.mgps.Util.t2.i(this.battleIp) && (i10 = this.battlePort) != 0) {
                    UtilsMy.p(this.downloadTask, this.context, 1, this.battleIp, i10, this.fastIp, max_battle_count, str);
                } else {
                    UtilsMy.m(null, this.downloadTask, this.context, 0, str);
                }
            }
        } else {
            UtilsMy.m(null, this.downloadTask, this.context, 0, core);
        }
        com.papa.sim.statistic.t.l(this).I0(this.downloadTask.getCrc_link_type_val(), this.accountBean.getUid());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void toCommentAllList() {
        GameMainV4DataBean gameMainV4DataBean = this.mainDataShow;
        if (gameMainV4DataBean == null || gameMainV4DataBean.getGameInfo() == null) {
            return;
        }
        GameMaingameinfo gameInfo = this.mainDataShow.getGameInfo();
        if (TextUtils.isEmpty(gameInfo.getGame_comment_score_switch()) || gameInfo.getGame_comment_score_switch().equals("0")) {
            ForumIndexActivity_.intent(this).start();
        } else {
            CommentAllListActivity_.intent(this.context).f(this.gameId).i(gameInfo.getGame_package()).h(gameInfo.getGame_plugin_num()).a(Integer.valueOf(gameInfo.getGame_bespeak_switch()).intValue()).g(gameInfo.getGame_is_started()).j(0).d(gameInfo.getGame_comment_score_switch()).start();
        }
    }

    @Click
    void tvBattle() {
        showBattle();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void upNum(final int localnum) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateUI(GameMainV4DataBean dataBean, boolean isGetData) {
        this.mainDataShow = dataBean;
        GameMaingameinfo gameInfo = dataBean.getGameInfo();
        if (gameInfo != null) {
            this.gameName.setText(gameInfo.getGame_name());
        }
        updateLocalAndNet(isGetData);
        if (isGetData) {
            updateViewPager();
        }
    }

    class l extends Dialog {

        class a implements AdapterView.OnItemClickListener {
            a() {
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> parent, View view, int position, long id2) {
                PspBattleServer pspBattleServer = GameMainActivity4.this.pspBattleServers.get(position);
                NetBattleStartGameDto netBattleStartGameDto = new NetBattleStartGameDto();
                netBattleStartGameDto.setServerIP(pspBattleServer.getIp());
                netBattleStartGameDto.setServerPort(pspBattleServer.getPort());
                netBattleStartGameDto.setGameID(GameMainActivity4.this.gameId + "");
                netBattleStartGameDto.setUserID(AccountUtil_.getInstance_(GameMainActivity4.this.context).getAccountData().getUid() + "");
                netBattleStartGameDto.setOldGame(0);
                netBattleStartGameDto.setClientIp(GameMainActivity4.this.clientIp);
                netBattleStartGameDto.setUserName(AccountUtil_.getInstance_(GameMainActivity4.this.context).getAccountData().getNickname());
                netBattleStartGameDto.setUserIcon(AccountUtil_.getInstance_(GameMainActivity4.this.context).getAccountData().getAvatarSrc());
                netBattleStartGameDto.setPorder(0);
                UtilsMy.x4(GameMainActivity4.this.context, netBattleStartGameDto, GameMainActivity4.this.downloadTask, 13);
            }
        }

        private class b extends BaseAdapter {
            private b() {
            }

            @Override // android.widget.Adapter
            public int getCount() {
                return GameMainActivity4.this.pspBattleServers.size();
            }

            @Override // android.widget.Adapter
            public Object getItem(int position) {
                return GameMainActivity4.this.pspBattleServers.get(position);
            }

            @Override // android.widget.Adapter
            public long getItemId(int position) {
                return position;
            }

            @Override // android.widget.Adapter
            public View getView(int position, View convertView, ViewGroup parent) {
                if (convertView == null) {
                    convertView = LayoutInflater.from(GameMainActivity4.this.context).inflate(R.layout.dialog_psp_item, (ViewGroup) null);
                }
                ((TextView) convertView.findViewById(R.id.name)).setText(GameMainActivity4.this.pspBattleServers.get(position).getServer_name());
                ((TextView) convertView.findViewById(R.id.count)).setText(GameMainActivity4.this.pspBattleServers.get(position).getPeople() + "人");
                return convertView;
            }

            /* synthetic */ b(l lVar, b bVar) {
                this();
            }
        }

        public l(Context context) {
            super(context);
        }

        @Override // android.app.Dialog
        protected void onCreate(Bundle savedInstanceState) {
            super.onCreate(savedInstanceState);
            requestWindowFeature(1);
            requestWindowFeature(-1);
            View viewInflate = LayoutInflater.from(GameMainActivity4.this.context).inflate(R.layout.network_psp_dialog, (ViewGroup) null);
            ListView listView = (ListView) viewInflate.findViewById(R.id.listview);
            listView.setAdapter((ListAdapter) new b(this, null));
            listView.setOnItemClickListener(new a());
            setContentView(viewInflate);
        }

        protected l(Context context, boolean cancelable, DialogInterface.OnCancelListener cancelListener) {
            super(context, cancelable, cancelListener);
        }

        public l(Context context, int themeResId) {
            super(context, themeResId);
        }
    }
}
