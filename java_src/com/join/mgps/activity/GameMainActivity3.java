package com.join.mgps.activity;

import android.app.Activity;
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
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.GridView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import app.mgsim.arena.ArenaConstants;
import app.mgsim.arena.ArenaLobbyServer;
import app.mgsim.arena.ArenaRequest;
import app.mgsim.arena.ArenaRequestFactory;
import app.mgsim.arena.ArenaResponse;
import app.mgsim.arena.SocketError;
import app.mgsim.arena.SocketListener;
import com.MApplication;
import com.bykv.vk.component.ttvideo.player.C;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
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
import com.join.mgps.db.tables.CloudDownRecoderTable;
import com.join.mgps.db.tables.EMUApkTable;
import com.join.mgps.db.tables.GameMainTable;
import com.join.mgps.db.tables.PlayGameTimeTable;
import com.join.mgps.dto.ArchiveColudArgs;
import com.join.mgps.dto.ArchiveNumDataBean;
import com.join.mgps.dto.CloudListDataBean;
import com.join.mgps.dto.CommentAllListBean;
import com.join.mgps.dto.CommentResponse;
import com.join.mgps.dto.CommonMultiItemBean;
import com.join.mgps.dto.DomainInfoBean;
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
import com.join.mgps.dto.PdAdCfgBean;
import com.join.mgps.dto.PlayCfgBean;
import com.join.mgps.dto.PspBattleServer;
import com.join.mgps.dto.RecommendAd;
import com.join.mgps.dto.RequestCommentAllListArgs;
import com.join.mgps.dto.RequestGameIdArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.RequestSimulatorAchievementListArgs;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.ResultArenaBean;
import com.join.mgps.dto.ResultResMainBean;
import com.join.mgps.dto.RomArchived;
import com.join.mgps.dto.SimulatorAdCfgBean;
import com.join.mgps.dto.SimulatorAllAchievementBean;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.service.CommonService_;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa91.arc.bean.ButtonBean;
import com.papa91.arc.common.constants.BAction;
import com.papa91.arc.http.utils.PrefUtil;
import com.papa91.arc.util.StoreUtils;
import com.papa91.battle.protocol.GameRoom;
import com.qq.e.ads.nativ.NativeExpressADView;
import com.windmill.sdk.WMConstants;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.natives.WMNativeAd;
import com.windmill.sdk.natives.WMNativeAdData;
import com.windmill.sdk.natives.WMNativeAdRequest;
import com.wufan.user.service.protobuf.UserInfo;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.Fullscreen;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.WindowFeature;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes4.dex */
@WindowFeature({1})
@EActivity(R.layout.activity_game_main_3)
@Fullscreen
public class GameMainActivity3 extends FriendActivity implements com.join.mgps.adapter.i2.a {
    UserInfo accountBean;
    private EmuOutResultReceiver adResultReceiver;
    private com.join.mgps.adapter.i2 adapter;
    int areaId;

    @ViewById
    View battleHall;
    com.join.mgps.rpc.k client;
    private Context context;
    private com.join.mgps.dialog.n1 domainDialog;
    private DownloadTask downloadTask;
    com.github.snowdream.android.app.downloader.b factory;

    @Extra
    String from;

    @Extra
    String gameId;

    @ViewById
    SimpleDraweeView gameImg;

    @ViewById
    GridView gameMainNewLeftGv;

    @ViewById
    RecyclerView gameMainNewRv;

    @ViewById
    TextView gameName;
    private String gameTagId;
    com.join.mgps.ad.e gdtInfoStreamVideo;
    com.join.mgps.ad.f gdtInteractAdVideo;
    com.join.mgps.ad.j groMFullSVideo;

    @ViewById
    View leftContainer;
    private com.github.snowdream.android.app.downloader.b.InterfaceC0591b listener;

    @ViewById
    View ll_loading;
    private com.join.mgps.socket.fight.arena.a mArenaDialogBuilder;
    private com.join.mgps.socket.fight.arena.b mServiceDelegate;
    GameMainV4DataBean mainDataShow;
    List<WMNativeAdData> nativeAdDataList;
    s netWorkPspDialog;
    View noDiscuss;
    ArchiveNumDataBean numDataBean;
    PlayCfgBean playCfgBean;
    PlayCfgBean playCfgBeanStream;
    List<PlayGameTimeTable> playGameTimeTableList;

    @Pref
    PrefDef_ prefDef;
    com.join.mgps.dialog.x progressDialogForDown;
    List<PspBattleServer> pspBattleServers;
    private com.join.mgps.adapter.t2 recommendAdapter;
    List<RomArchived> recordRoms;

    @ViewById
    TextView roomCount;
    com.join.mgps.rpc.l rpcAccountClient;
    com.join.mgps.rpc.d rpcArchiveClient;
    com.join.mgps.rpc.f rpcClient;
    com.join.mgps.rpc.i rpcForumClient;
    com.join.mgps.ad.w ttInfoStreamVideo;
    com.join.mgps.ad.y ttInteractAdVideo;
    WMNativeAd windNativeAd;
    private String clientIp = "";
    private String battleIp = "";
    private int battlePort = 0;
    private String fastIp = "";
    private List<DynamicEntranceBean> itemBeans = new ArrayList();
    Map<String, CloudListDataBean> listDataBeans = new HashMap();
    int downNumber = 1;
    int downNumberNow = 0;
    List<CommonMultiItemBean> mDataList = new ArrayList();
    private boolean isResume = false;
    private List<CommentAllListBean.GeneralCommentBean> general = new ArrayList();
    List<GameMainCommunityBean.PostsBean> tempList = new ArrayList();
    private CountDownTimer mCreateGameCountDowner = new o(10000, 1000);
    private final com.join.mgps.socket.fight.arena.b.InterfaceC0749b mCallback = new p();
    private final SocketListener.NotifyObserver mObserver = new q();
    public boolean isVBA = false;
    public boolean marcketDownEnable = true;
    public boolean marcketPGNEnable = true;
    boolean isGameExit = false;
    boolean hasDialog = false;
    protected int videoHeight = 315;
    List<TTNativeExpressAd> ttList = null;
    List<NativeExpressADView> gdtList = null;

    public class EmuOutResultReceiver extends BroadcastReceiver {
        public EmuOutResultReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (BAction.ACTION_EMU_GAME_OUT_AD.equals(intent.getAction())) {
                int intExtra = intent.getIntExtra("eventType", 0);
                int intExtra2 = intent.getIntExtra("eventFlag", 0);
                intent.getStringExtra("packageName");
                if (intExtra != 0) {
                    com.join.mgps.event.a aVar = new com.join.mgps.event.a(intExtra);
                    aVar.e(intExtra2);
                    GameMainActivity3.this.onADEvent(aVar);
                }
            }
        }
    }

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameMainActivity3.this.showAdVideo();
            GameMainActivity3.this.showFeedBackDialog();
        }
    }

    class b implements WMNativeAd.NativeAdLoadListener {
        b() {
        }

        @Override // com.windmill.sdk.natives.WMNativeAd.NativeAdLoadListener
        public void onError(WindMillError error, String placementId) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onError:");
            sb2.append(error.toString());
            sb2.append(":");
            sb2.append(placementId);
        }

        @Override // com.windmill.sdk.natives.WMNativeAd.NativeAdLoadListener
        public void onFeedAdLoad(String placementId) {
            List<WMNativeAdData> nativeADDataList = GameMainActivity3.this.windNativeAd.getNativeADDataList();
            if (nativeADDataList == null || nativeADDataList.size() <= 0) {
                return;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onFeedAdLoad:");
            sb2.append(nativeADDataList.size());
            GameMainActivity3.this.nativeAdDataList = nativeADDataList;
            org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.a(4));
        }
    }

    class c extends com.join.mgps.ad.y {
        c(Context ctx, String appId, String posId) {
            super(ctx, appId, posId);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADClick() {
            super.onWfADClick();
            MApplication.f3182z.O(true);
            k(Event.Emu_ExitAd_Click.name(), this.f58364f);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADClose(String gameId, int howTimes, int times) {
            super.onWfADClose(gameId, howTimes, times);
            k(Event.Emu_ExitAd_Close.name(), gameId);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADLoad(boolean showAd) {
            super.onWfADLoad(showAd);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADShow() {
            super.onWfADShow();
            k(Event.Emu_ExitAd_Pop.name(), this.f58364f);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfInitSuccess() {
            super.onWfInitSuccess();
            d(false);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfVideoCached() {
            super.onWfVideoCached();
        }
    }

    class d extends com.join.mgps.ad.f {
        d(Context ctx, String appId, String posId) {
            super(ctx, appId, posId);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADClick() {
            super.onWfADClick();
            MApplication.f3182z.O(true);
            k(Event.Emu_ExitAd_Click.name(), this.f58364f);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADClose(String gameId, int howTimes, int times) {
            super.onWfADClose(gameId, howTimes, times);
            k(Event.Emu_ExitAd_Close.name(), gameId);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADLoad(boolean showAd) {
            super.onWfADLoad(showAd);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADShow() {
            super.onWfADShow();
            k(Event.Emu_ExitAd_Pop.name(), this.f58364f);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfInitSuccess() {
            super.onWfInitSuccess();
            d(false);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfVideoCached() {
            super.onWfVideoCached();
        }
    }

    class e extends com.join.mgps.ad.w {
        e(Context ctx, String appId, String posId) {
            super(ctx, appId, posId);
        }

        @Override // com.join.mgps.ad.o, com.join.mgps.ad.m
        public void onInitSuccess() {
            super.onInitSuccess();
            b(3, (int) (((double) GameMainActivity3.this.videoHeight) * 0.875d), 0);
        }
    }

    class f implements com.join.mgps.ad.c.a<TTNativeExpressAd> {
        f() {
        }

        @Override // com.join.mgps.ad.c.a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(TTNativeExpressAd adView) {
        }

        @Override // com.join.mgps.ad.c.a
        public void onADLoaded(List<TTNativeExpressAd> ads) {
            GameMainActivity3 gameMainActivity3 = GameMainActivity3.this;
            if (gameMainActivity3.ttList == null) {
                gameMainActivity3.ttList = new ArrayList();
            }
            GameMainActivity3.this.ttList.addAll(ads);
            if (GameMainActivity3.this.ttList.size() < 6) {
                GameMainActivity3.this.loadAdStreamVideoByPage();
            }
        }

        @Override // com.join.mgps.ad.c.a
        public void onAdClick() {
            GameMainActivity3.this.senCommonEvent(Event.Exit_flowad_click.name(), GameMainActivity3.this.gameId);
            MApplication.f3182z.O(true);
        }

        @Override // com.join.mgps.ad.c.a
        public void onAdShow() {
            GameMainActivity3.this.senCommonEvent(Event.Exit_flowad_pop_tt.name(), GameMainActivity3.this.gameId);
        }
    }

    class g extends com.join.mgps.ad.e {
        g(Context ctx, String appId, String posId) {
            super(ctx, appId, posId);
        }

        @Override // com.join.mgps.ad.o, com.join.mgps.ad.m
        public void onInitSuccess() {
            super.onInitSuccess();
            b(3, (int) (((double) GameMainActivity3.this.videoHeight) * 0.8d), -2);
        }
    }

    class h implements com.join.mgps.ad.c.a<NativeExpressADView> {
        h() {
        }

        @Override // com.join.mgps.ad.c.a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(NativeExpressADView adView) {
            org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.b0(6, adView));
        }

        @Override // com.join.mgps.ad.c.a
        public void onADLoaded(List<NativeExpressADView> ads) {
            GameMainActivity3 gameMainActivity3 = GameMainActivity3.this;
            if (gameMainActivity3.gdtList == null) {
                gameMainActivity3.gdtList = new ArrayList();
            }
            GameMainActivity3.this.gdtList.addAll(ads);
            if (GameMainActivity3.this.gdtList.size() < 6) {
                GameMainActivity3.this.loadAdStreamVideoByPage();
            }
            org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.a(4));
        }

        @Override // com.join.mgps.ad.c.a
        public void onAdClick() {
            GameMainActivity3.this.senCommonEvent(Event.Exit_flowad_click.name(), GameMainActivity3.this.gameId);
            MApplication.f3182z.O(true);
        }

        @Override // com.join.mgps.ad.c.a
        public void onAdShow() {
            GameMainActivity3.this.senCommonEvent(Event.Exit_flowad_pop_gdt.name(), GameMainActivity3.this.gameId);
        }
    }

    class i extends com.join.mgps.ad.j {
        i(Context ctx, String appId, String posId) {
            super(ctx, appId, posId);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADClick() {
            super.onWfADClick();
            k(Event.Stopad_GromoreSdk_Click.name(), this.f58364f);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADClose(String gameId, int howTimes, int times) {
            super.onWfADClose(gameId, howTimes, times);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADLoad(boolean showAd) {
            super.onWfADLoad(showAd);
            k(Event.Stopad_GromoreSdk_loading.name(), this.f58364f);
            org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.a(4));
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADShow() {
            super.onWfADShow();
            k(Event.Stopad_GromoreSdk_Show.name(), this.f58364f);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfInitSuccess() {
            super.onWfInitSuccess();
            d(false);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfVideoCached() {
            super.onWfVideoCached();
        }
    }

    class j extends com.join.mgps.socket.fight.arena.a.b0 {
        j() {
        }

        @Override // com.join.mgps.socket.fight.arena.a.b0, com.join.mgps.socket.fight.arena.a.y
        public void onErrorHint(int operation, int errorType, Object value) {
            super.onErrorHint(operation, errorType, value);
        }
    }

    class k implements com.join.mgps.dialog.x.c {
        k() {
        }

        @Override // com.join.mgps.dialog.x.c
        public void a(com.join.mgps.dialog.x dialog) {
            dialog.dismiss();
        }
    }

    class l implements com.join.mgps.dialog.x.c {
        l() {
        }

        @Override // com.join.mgps.dialog.x.c
        public void a(com.join.mgps.dialog.x dialog) {
            GameMainActivity3.this.factory.i();
            dialog.dismiss();
        }
    }

    class m implements com.join.mgps.dialog.n1.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ DomainInfoBean f52931a;

        m(final DomainInfoBean val$pdInfo) {
            this.f52931a = val$pdInfo;
        }

        @Override // com.join.mgps.dialog.n1.a
        public void a() {
            GameMainActivity3.this.domainDialog.dismiss();
        }

        @Override // com.join.mgps.dialog.n1.a
        public void b() {
            UtilsMy.D4(GameMainActivity3.this, this.f52931a.getInfo(), "simulator_start_win");
            com.papa.sim.statistic.t.l(GameMainActivity3.this).R1(Event.pdSimulatorStartWinClick, new Ext().setGameId(GameMainActivity3.this.gameId).setIsJoin(this.f52931a.getIs_join()).setTestAbNumber(this.f52931a.getAb_test_number()));
        }
    }

    class n implements GameRoomActivity.x {
        n() {
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onFail(int type) {
            GameMainActivity3.this.startGameV2();
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onSuccess(int type, int duration, ButtonBean buttonBean) {
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onSuccess(int type, int duration) {
            GameMainActivity3.this.startGameV2();
        }
    }

    class o extends CountDownTimer {
        o(long millisInFuture, long countDownInterval) {
            super(millisInFuture, countDownInterval);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            GameMainActivity3.this.hideLoadingDialog();
        }

        @Override // android.os.CountDownTimer
        public void onTick(long millisUntilFinished) {
        }
    }

    class p extends com.join.mgps.socket.fight.arena.b.c {
        p() {
        }

        @Override // com.join.mgps.socket.fight.arena.b.c, com.join.mgps.socket.fight.arena.b.InterfaceC0749b
        public void b() {
            super.b();
        }

        @Override // com.join.mgps.socket.fight.arena.b.c, com.join.mgps.socket.fight.arena.b.InterfaceC0749b
        public void c() {
            super.c();
            if (GameMainActivity3.this.mServiceDelegate == null || GameMainActivity3.this.mServiceDelegate.d() == null) {
                return;
            }
            GameMainActivity3.this.mServiceDelegate.d().z(GameMainActivity3.this.mObserver);
        }
    }

    class q implements SocketListener.NotifyObserver {
        q() {
        }

        @Override // app.mgsim.arena.SocketListener.NotifyObserver
        public void onError(SocketError socketError) {
            if (GameMainActivity3.this.isActivityFinished()) {
                return;
            }
            int i10 = socketError.errorType;
            if (i10 == 6 || i10 == 2) {
                GameMainActivity3.this.showToastArenaError();
                return;
            }
            if (i10 == 5) {
                GameMainActivity3.this.showToastArenaError();
            } else if (i10 == 3 || i10 == 4) {
                GameMainActivity3.this.showToastArenaError();
            }
        }

        @Override // app.mgsim.arena.SocketListener.NotifyObserver
        public void onServerResponse(ArenaResponse response) {
            if (GameMainActivity3.this.isActivityFinished()) {
                return;
            }
            if (response.responseCode == 0) {
                GameMainActivity3.this.handleFailure(response);
                return;
            }
            if (response.responseType.equals(ArenaConstants.ArenaCommand.CMD_LOGIN)) {
                GameMainActivity3.this.gameMainNewYueZhanRl();
                return;
            }
            if (response.responseType.equals(ArenaConstants.ArenaCommand.CMD_CREATE_GAME_ROOM) || response.responseType.equals(ArenaConstants.ArenaCommand.CMD_JOIN_ROOM)) {
                GameMainActivity3.this.hideLoadingDialog();
                GameRoom gameRoom = (GameRoom) response.data;
                if (GameMainActivity3.this.mServiceDelegate != null && GameMainActivity3.this.mServiceDelegate.d() != null) {
                    GameMainActivity3.this.mServiceDelegate.d().E(null);
                }
                if (response.responseType.equals(ArenaConstants.ArenaCommand.CMD_CREATE_GAME_ROOM)) {
                    GameMainActivity3.this.cancelCreateGameCountDown();
                    GameRoomActivity_.intent(GameMainActivity3.this).d(gameRoom.getGameName()).i(gameRoom).c("game_main").start();
                }
            }
        }
    }

    class r implements com.github.snowdream.android.app.downloader.b.InterfaceC0591b {
        r() {
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
        public void onError(String url) {
            GameMainActivity3 gameMainActivity3 = GameMainActivity3.this;
            int i10 = gameMainActivity3.downNumberNow + 1;
            gameMainActivity3.downNumberNow = i10;
            if (gameMainActivity3.downNumber == i10) {
                gameMainActivity3.progressDialogForDown.dismiss();
            }
            GameMainActivity3.this.factory.l(url);
            CloudListDataBean cloudListDataBean = GameMainActivity3.this.listDataBeans.get(url);
            if (cloudListDataBean == null) {
                return;
            }
            com.join.mgps.event.i iVar = new com.join.mgps.event.i();
            cloudListDataBean.setStatus(6);
            iVar.f(cloudListDataBean);
            iVar.j(6);
            org.greenrobot.eventbus.c.f().q(iVar);
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
        public void onFinish(String url) {
            GameMainActivity3 gameMainActivity3 = GameMainActivity3.this;
            if (gameMainActivity3.downNumber == gameMainActivity3.downNumberNow) {
                gameMainActivity3.progressDialogForDown.dismiss();
            }
            GameMainActivity3 gameMainActivity4 = GameMainActivity3.this;
            gameMainActivity4.downNumberNow++;
            gameMainActivity4.factory.l(url);
            CloudListDataBean cloudListDataBean = GameMainActivity3.this.listDataBeans.get(url);
            if (cloudListDataBean == null) {
                return;
            }
            if (cloudListDataBean.getArchiveFilePath().contains(com.join.mgps.Util.z.f50169h)) {
                GameMainActivity3.this.downFinishToCopy(cloudListDataBean);
                return;
            }
            CloudDownRecoderTable cloudDownRecoderTable = new CloudDownRecoderTable();
            cloudDownRecoderTable.setGameId(GameMainActivity3.this.gameId);
            cloudDownRecoderTable.setFilePath(cloudListDataBean.getArchiveFilePath());
            cloudDownRecoderTable.setFileName(cloudListDataBean.getArchiveFileName());
            cloudDownRecoderTable.setMd5(cloudListDataBean.getFileMd5());
            t6.i.o().k(cloudDownRecoderTable);
            com.join.mgps.event.i iVar = new com.join.mgps.event.i();
            cloudListDataBean.setStatus(0);
            iVar.f(cloudListDataBean);
            iVar.j(0);
            org.greenrobot.eventbus.c.f().q(iVar);
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
        public void onProgress(String url, int progress, String speed) {
            CloudListDataBean cloudListDataBean = GameMainActivity3.this.listDataBeans.get(url);
            if (cloudListDataBean == null) {
                return;
            }
            String str = UtilsMy.f((cloudListDataBean.getFileSize() * ((long) progress)) / 100) + net.lingala.zip4j.util.e.F0 + UtilsMy.f(cloudListDataBean.getFileSize()) + "K";
            com.join.mgps.event.i iVar = new com.join.mgps.event.i();
            cloudListDataBean.setStatus(3);
            iVar.f(cloudListDataBean);
            iVar.j(3);
            iVar.g(speed);
            iVar.i(progress);
            iVar.h(str);
            org.greenrobot.eventbus.c.f().q(iVar);
            GameMainActivity3 gameMainActivity3 = GameMainActivity3.this;
            int i10 = gameMainActivity3.downNumber;
            if (i10 > 1) {
                if (i10 != 0) {
                    gameMainActivity3.progressDialogForDown.c(GameMainActivity3.this.downNumberNow + net.lingala.zip4j.util.e.F0 + GameMainActivity3.this.downNumber, iVar.b(), iVar.d());
                    return;
                }
                return;
            }
            com.join.mgps.dialog.x xVar = gameMainActivity3.progressDialogForDown;
            if (xVar != null) {
                xVar.c(iVar.c(), iVar.b() + "/S", iVar.d());
            }
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
        public void onStart(String url) {
            GameMainActivity3 gameMainActivity3 = GameMainActivity3.this;
            int i10 = gameMainActivity3.downNumber;
            if (i10 == 1 || i10 == 0) {
                return;
            }
            gameMainActivity3.progressDialogForDown.c(GameMainActivity3.this.downNumberNow + net.lingala.zip4j.util.e.F0 + GameMainActivity3.this.downNumber, "0K", 100 / GameMainActivity3.this.downNumber);
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
        public void onStop(String url) {
            GameMainActivity3 gameMainActivity3 = GameMainActivity3.this;
            int i10 = gameMainActivity3.downNumberNow + 1;
            gameMainActivity3.downNumberNow = i10;
            if (gameMainActivity3.downNumber == i10) {
                gameMainActivity3.progressDialogForDown.dismiss();
            }
            GameMainActivity3.this.factory.l(url);
            CloudListDataBean cloudListDataBean = GameMainActivity3.this.listDataBeans.get(url);
            if (cloudListDataBean == null) {
                return;
            }
            com.join.mgps.event.i iVar = new com.join.mgps.event.i();
            cloudListDataBean.setStatus(6);
            iVar.f(cloudListDataBean);
            iVar.j(6);
            org.greenrobot.eventbus.c.f().q(iVar);
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
        public void onWait(String url) {
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
        public void updateSize(String url, long actualSize) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelCreateGameCountDown() {
        CountDownTimer countDownTimer = this.mCreateGameCountDowner;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
    }

    private void clearStreamList() {
        List<TTNativeExpressAd> list = this.ttList;
        if (list != null) {
            list.clear();
        }
        List<NativeExpressADView> list2 = this.gdtList;
        if (list2 != null) {
            list2.clear();
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
            showToast("无网络连接");
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

    private void initListener() {
        if (this.showFriendUI) {
            return;
        }
        this.factory = com.github.snowdream.android.app.downloader.b.e();
        r rVar = new r();
        this.listener = rVar;
        this.factory.m(rVar);
        this.factory.i();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isActivityFinished() {
        return isFinishing() || isDestroyed();
    }

    private boolean isActivityVisible() {
        return getWindow().getDecorView().getVisibility() == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadAdStreamVideoByPage() {
        PlayCfgBean playCfgBean = this.playCfgBeanStream;
        if (playCfgBean != null) {
            if (playCfgBean.getSdk_type() == 1) {
                loadTTAdStreamVideo(this, this.playCfgBeanStream);
            } else if (this.playCfgBeanStream.getSdk_type() == 2) {
                loadGdtAdStreamVideo(this, this.playCfgBeanStream);
            } else if (this.playCfgBeanStream.getSdk_type() == 10) {
                loadTbAdStreamVideo(this, this.playCfgBeanStream);
            }
        }
    }

    private boolean needShowAd() {
        UserInfo accountData = AccountUtil_.getInstance_(this.context).getAccountData();
        return accountData == null || !com.join.mgps.Util.b.piv(accountData);
    }

    private boolean shouldShowDomainDialog() {
        PdAdCfgBean pdAdCfgBeanConvertStr2Bean = PdAdCfgBean.convertStr2Bean(this.prefDef.pd_ad_config().d());
        if (!(pdAdCfgBeanConvertStr2Bean != null && pdAdCfgBeanConvertStr2Bean.canShowSimulatorPopup())) {
            return false;
        }
        if (pdAdCfgBeanConvertStr2Bean != null) {
            pdAdCfgBeanConvertStr2Bean.updateSimulatorPopupShowTimes();
        }
        return true;
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

    /* JADX WARN: Code duplicated, block: B:21:0x006a  */
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
        this.mDataList.clear();
        UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
        boolean z10 = (com.join.mgps.Util.b.piv(accountData) && accountData.getVipExpTime() == 3716553600L) ? false : true;
        if (this.recommendAdapter != null && z10) {
            GameMainV4DataBean.MemberInfoBean memberInfo = this.mainDataShow.getMemberInfo();
            CommonMultiItemBean commonMultiItemBean = new CommonMultiItemBean(0, this.mainDataShow.getMemberFun());
            commonMultiItemBean.setExtData(memberInfo);
            this.mDataList.add(commonMultiItemBean);
        }
        DomainInfoBean pd_info = this.mainDataShow.getPd_info();
        if (pd_info != null) {
            this.mDataList.add(new CommonMultiItemBean(3, pd_info));
            com.papa.sim.statistic.t.l(this).R1(Event.pdSimulatorStartDetails, new Ext().setGameId(this.gameId).setIsJoin(pd_info.getIs_join()).setTestAbNumber(pd_info.getAb_test_number()));
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
        List<RecommendAd> recommendAdList = this.mainDataShow.getRecommendAdList();
        if (recommendAdList != null && recommendAdList.size() > 0) {
            Iterator<RecommendAd> it2 = recommendAdList.iterator();
            while (it2.hasNext()) {
                this.mDataList.add(new CommonMultiItemBean(1, it2.next()));
            }
        }
        if (com.join.mgps.Util.d2.x() && this.mainDataShow.getJp_info() != null) {
            this.mDataList.add(new CommonMultiItemBean(2, this.mainDataShow.getJp_info()));
        }
        if (this.mainDataShow.getPd_info_popup() != null) {
            showDomainDialog(this.mainDataShow.getPd_info_popup());
        }
        this.recommendAdapter.setNewData(this.mDataList);
    }

    @AfterViews
    void afterViews() {
        this.context = this;
        setSystemUiHide(true);
        this.client = com.join.mgps.rpc.impl.i.P0();
        this.rpcAccountClient = com.join.mgps.rpc.impl.l.n0();
        this.rpcForumClient = com.join.mgps.rpc.impl.g.A0();
        this.rpcClient = com.join.mgps.rpc.impl.e.m();
        this.rpcArchiveClient = com.join.mgps.rpc.impl.c.k();
        this.downloadTask = q5.f.M().G(this.gameId);
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
        int dimension2 = (int) getResources().getDimension(R.dimen.wdp667);
        int dimension3 = (int) getResources().getDimension(R.dimen.wdp27);
        getResources().getDimension(R.dimen.wdp343);
        ConstraintLayout.LayoutParams layoutParams = new ConstraintLayout.LayoutParams((dimension * (getResources().getDisplayMetrics().heightPixels - (dimension3 * 2))) / dimension2, -1);
        ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = dimension3;
        ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = dimension3;
        ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = dimension3;
        this.gameImg.setLayoutParams(layoutParams);
        getDataFromDb();
        getData();
        getAllAchievementsData();
        this.mArenaDialogBuilder = new com.join.mgps.socket.fight.arena.a(this, new j());
        if (notchtools.geek.com.notchtools.b.o().e(getWindow())) {
            ((ConstraintLayout.LayoutParams) this.leftContainer.getLayoutParams()).setMarginStart(notchtools.geek.com.notchtools.b.o().g(getWindow()) + getResources().getDimensionPixelOffset(R.dimen.wdp10));
        }
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this);
        linearLayoutManager.setOrientation(1);
        this.gameMainNewRv.setLayoutManager(linearLayoutManager);
        com.join.mgps.adapter.t2 t2Var = new com.join.mgps.adapter.t2(this);
        this.recommendAdapter = t2Var;
        t2Var.setGameId(this.gameId);
        this.gameMainNewRv.setAdapter(this.recommendAdapter);
        if ((com.join.mgps.Util.t2.h(this.from) || "platform".equals(this.from)) && this.downloadTask != null) {
            this.from = this.downloadTask.get_from() + "";
        }
        com.papa.sim.statistic.t tVarL = com.papa.sim.statistic.t.l(this);
        Event event = Event.indexGameStart;
        String uid = AccountUtil_.getInstance_(this).getUid();
        String str = this.gameId;
        String str2 = this.from;
        tVarL.a1(event, uid, str, str2, 0, str2);
        if (this.adResultReceiver == null) {
            this.adResultReceiver = new EmuOutResultReceiver();
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction(p5.a.V);
            intentFilter.addAction(BAction.ACTION_EMU_GAME_OUT_AD);
            registerReceiver(this.adResultReceiver, intentFilter);
        }
        if (!this.showFriendUI) {
            initListener();
            this.progressDialogForDown = new com.join.mgps.dialog.x(this, R.style.HKDialogLoading).f("存档下载中").e("取消下载").b("后台运行").d(new l()).a(new k());
        }
        if (!isShowFriendUI()) {
            getNum();
        }
        checkBackupArchieve();
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
    @Background
    public void checkBackupArchieve() {
        DownloadTask downloadTaskG = q5.f.M().G(this.gameId);
        if (downloadTaskG == null) {
            return;
        }
        String strD2 = UtilsMy.d2(Integer.parseInt(downloadTaskG.getPlugin_num()));
        if (TextUtils.isEmpty(strD2)) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(getExternalFilesDir("backup"));
        String str = File.separator;
        sb2.append(str);
        sb2.append(downloadTaskG.getCrc_link_type_val());
        File file = new File(sb2.toString());
        if (!file.exists() || !file.isDirectory() || file.listFiles() == null || file.listFiles().length <= 0) {
            return;
        }
        File file2 = new File(StoreUtils.getEmuRoot(this) + str + strD2 + str + downloadTaskG.getPackageName());
        for (File file3 : file.listFiles()) {
            com.join.mgps.Util.o0.f(file3.getAbsolutePath(), file2.getAbsolutePath() + File.separator + file3.getName());
        }
        com.join.mgps.Util.o0.l(file.getAbsolutePath(), true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void checkUserInfoFailed() {
        showToast("登录已失效请您重新登录");
        intentLogin();
    }

    void destroyTBidAdVideo() {
        List<WMNativeAdData> list = this.nativeAdDataList;
        if (list != null && list.size() > 0) {
            for (WMNativeAdData wMNativeAdData : this.nativeAdDataList) {
                if (wMNativeAdData != null) {
                    wMNativeAdData.destroy();
                }
            }
        }
        WMNativeAd wMNativeAd = this.windNativeAd;
        if (wMNativeAd != null) {
            wMNativeAd.destroy();
        }
    }

    void discussMore() {
        if (this.noDiscuss.getVisibility() == 0 || this.areaId == 0) {
            toCommentAllList();
        } else {
            IntentUtil.getInstance().goForumGroupActivity(this, this.areaId);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void downFinishToCopy(CloudListDataBean dataBean) {
        DownloadTask downloadTaskG = q5.f.M().G(this.gameId);
        String strM4 = UtilsMy.M4(downloadTaskG.getGameZipPath());
        String strD2 = UtilsMy.d2(Integer.parseInt(downloadTaskG.getPlugin_num()));
        File file = new File(com.join.mgps.Util.z.f50164c);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(file.getAbsolutePath());
        String str = File.separator;
        sb2.append(str);
        sb2.append("papa91");
        sb2.append(str);
        sb2.append(strD2);
        sb2.append(str);
        String string = sb2.toString();
        String strSubstring = strM4.substring(strM4.lastIndexOf(47) + 1, strM4.length());
        File file2 = new File(string + strSubstring);
        if (!file2.exists()) {
            file2.mkdirs();
        }
        String str2 = new String(string + strSubstring + str + dataBean.getArchiveFileName());
        if (new File(dataBean.getArchiveFilePath()).exists()) {
            boolean zF = com.join.mgps.Util.o0.f(dataBean.getArchiveFilePath(), str2);
            downLodingImage(dataBean.getArchiveCover(), file2.getAbsolutePath() + str, dataBean.getArchiveFileName() + ".png");
            if (zF) {
                UtilsMy.delete(new File(dataBean.getArchiveFilePath()));
                dataBean.setArchiveFilePath(str2);
            }
            updateStatu(dataBean);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void downLodingImage(String imageUrl, String filePath, String fileName) {
        File file = null;
        try {
            File file2 = new File(filePath);
            if (!file2.exists()) {
                file2.mkdirs();
            }
            File file3 = new File(filePath + fileName);
            try {
                if (file3.exists()) {
                    UtilsMy.delete(file3);
                }
                file3.createNewFile();
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(imageUrl).openConnection();
                httpURLConnection.setConnectTimeout(5000);
                httpURLConnection.setRequestMethod("GET");
                httpURLConnection.setDoInput(true);
                if (httpURLConnection.getResponseCode() != 200) {
                    if (file3.exists()) {
                        UtilsMy.delete(file3);
                        return;
                    }
                    return;
                }
                InputStream inputStream = httpURLConnection.getInputStream();
                FileOutputStream fileOutputStream = new FileOutputStream(file3);
                byte[] bArr = new byte[1024];
                while (true) {
                    int i10 = inputStream.read(bArr);
                    if (i10 == -1) {
                        inputStream.close();
                        fileOutputStream.close();
                        return;
                    }
                    fileOutputStream.write(bArr, 0, i10);
                }
            } catch (Exception e10) {
                e = e10;
                file = file3;
                try {
                    e.printStackTrace();
                    if (file == null || !file.exists()) {
                        return;
                    }
                    UtilsMy.delete(file);
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            }
        } catch (Exception e12) {
            e = e12;
        }
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
            showToast("无网络连接");
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
            ResponseModel<GameMainV4DataBean> responseModelJ0 = this.client.J0(requestModel);
            this.isResume = true;
            if (responseModelJ0 == null || responseModelJ0.getFlag() != 1) {
                return;
            }
            GameMainV4DataBean data = responseModelJ0.getData();
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

    public int getVideoHeight(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return (int) (displayMetrics.heightPixels / displayMetrics.density);
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

    public void initGDTInfoStreamAd(Context context, String appid, String adid) {
        if (this.gdtInfoStreamVideo != null || !com.join.mgps.Util.t2.i(appid)) {
            this.gdtInfoStreamVideo.b(3, (int) (((double) this.videoHeight) * 0.8d), -2);
            return;
        }
        g gVar = new g(context, appid, adid);
        this.gdtInfoStreamVideo = gVar;
        gVar.e(new h());
        this.gdtInfoStreamVideo.a();
    }

    public void initGDTInteractAd(Context context, String appid, String adid) {
        if (this.gdtInteractAdVideo != null || !com.join.mgps.Util.t2.i(appid)) {
            this.gdtInteractAdVideo.d(false);
            return;
        }
        d dVar = new d(context, appid, adid);
        this.gdtInteractAdVideo = dVar;
        dVar.a();
    }

    public void initGromoreTTAd(Context context, String appid, String adid) {
        if (this.groMFullSVideo != null || !com.join.mgps.Util.t2.i(appid)) {
            this.groMFullSVideo.d(false);
            return;
        }
        i iVar = new i(context, appid, adid);
        this.groMFullSVideo = iVar;
        iVar.a();
    }

    public void initInfoStreamTTAd(Context context, String appid, String adid) {
        if (this.ttInfoStreamVideo != null || !com.join.mgps.Util.t2.i(appid)) {
            this.ttInfoStreamVideo.b(3, (int) (((double) this.videoHeight) * 0.875d), 0);
            return;
        }
        e eVar = new e(context, appid, adid);
        this.ttInfoStreamVideo = eVar;
        eVar.e(new f());
        this.ttInfoStreamVideo.a();
    }

    public void initInteractTTAd(Context context, String appid, String adid) {
        if (this.ttInteractAdVideo != null || !com.join.mgps.Util.t2.i(appid)) {
            this.ttInteractAdVideo.d(false);
            return;
        }
        c cVar = new c(context, appid, adid);
        this.ttInteractAdVideo = cVar;
        cVar.a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    void intentLogin() {
        ((LoginSplashActivity_.IntentBuilder_) LoginSplashActivity_.intent(this.context).flags(C.ENCODING_PCM_MU_LAW)).start();
    }

    @Override // com.join.mgps.activity.FriendActivity
    protected boolean isShowFriendUI() {
        DownloadTask downloadTaskG = q5.f.M().G(this.gameId);
        return downloadTaskG == null || !String.valueOf(ConstantIntEnum.GBA.value()).equals(downloadTaskG.getPlugin_num());
    }

    boolean isSupportNetMatchPaiwei(Context context, DownloadTask downloadTask) {
        int i10;
        if (downloadTask == null) {
            return false;
        }
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

    public void loadAdStreamVideo() {
        int iB;
        this.playCfgBeanStream = null;
        String strD = this.prefDef.simulator_exit_information_cfg().d();
        SimulatorAdCfgBean simulatorAdCfgBean = com.join.mgps.Util.t2.i(strD) ? (SimulatorAdCfgBean) JsonMapper.getInstance().fromJson(strD, SimulatorAdCfgBean.class) : null;
        if (simulatorAdCfgBean == null || simulatorAdCfgBean.getSwitch_state() != 1) {
            return;
        }
        List<PlayCfgBean> play_cfg = simulatorAdCfgBean.getPlay_cfg();
        if (play_cfg == null || play_cfg.size() <= 0) {
            iB = 0;
        } else {
            ArrayList arrayList = new ArrayList();
            Iterator<PlayCfgBean> it2 = play_cfg.iterator();
            while (it2.hasNext()) {
                arrayList.add(Double.valueOf(it2.next().getProbability()));
            }
            iB = com.join.mgps.ad.p.b(arrayList);
        }
        this.playCfgBeanStream = play_cfg.get(iB);
        loadAdStreamVideoByPage();
    }

    public void loadAdVideo() {
        int iB;
        if (needShowAd()) {
            this.playCfgBean = null;
            String strD = this.prefDef.simulator_exit_open_cfg().d();
            SimulatorAdCfgBean simulatorAdCfgBean = com.join.mgps.Util.t2.i(strD) ? (SimulatorAdCfgBean) JsonMapper.getInstance().fromJson(strD, SimulatorAdCfgBean.class) : null;
            if (simulatorAdCfgBean == null || simulatorAdCfgBean.getSwitch_state() != 1) {
                return;
            }
            List<PlayCfgBean> play_cfg = simulatorAdCfgBean.getPlay_cfg();
            if (play_cfg == null || play_cfg.size() <= 0) {
                iB = 0;
            } else {
                ArrayList arrayList = new ArrayList();
                Iterator<PlayCfgBean> it2 = play_cfg.iterator();
                while (it2.hasNext()) {
                    arrayList.add(Double.valueOf(it2.next().getProbability()));
                }
                iB = com.join.mgps.ad.p.b(arrayList);
            }
            PlayCfgBean playCfgBean = play_cfg.get(iB);
            this.playCfgBean = playCfgBean;
            if (playCfgBean != null) {
                if (playCfgBean.getSdk_type() == 1) {
                    loadTTAdVideo(this, this.playCfgBean);
                    return;
                }
                if (this.playCfgBean.getSdk_type() == 2) {
                    loadGdtAdVideo(this, this.playCfgBean);
                    return;
                }
                if (this.playCfgBean.getSdk_type() == 7) {
                    loadGromoreAdVideo(this, this.playCfgBean);
                    System.out.println("AD_LOG_TAG 加载融合广告 退出广告");
                } else if (this.playCfgBean.getSdk_type() == 10) {
                    loadTbAdStreamVideo(this, this.playCfgBean);
                }
            }
        }
    }

    public void loadGdtAdStreamVideo(Context context, PlayCfgBean playCfgBean) {
        initGDTInfoStreamAd(context, playCfgBean.getSdk_key(), playCfgBean.getAd_id());
    }

    public void loadGdtAdVideo(Context context, PlayCfgBean playCfgBean) {
        initGDTInteractAd(context, playCfgBean.getSdk_key(), playCfgBean.getAd_id());
    }

    public void loadGromoreAdVideo(Context context, PlayCfgBean playCfgBean) {
        initGromoreTTAd(context, playCfgBean.getSdk_key(), playCfgBean.getAd_id());
    }

    public void loadTTAdStreamVideo(Context context, PlayCfgBean playCfgBean) {
        initInfoStreamTTAd(context, playCfgBean.getSdk_key(), playCfgBean.getAd_id());
    }

    public void loadTTAdVideo(Context context, PlayCfgBean playCfgBean) {
        initInteractTTAd(context, playCfgBean.getSdk_key(), playCfgBean.getAd_id());
    }

    public void loadTbAdStreamVideo(Context context, PlayCfgBean playCfgBean) {
        com.join.mgps.ad.adapter.e.a(context, playCfgBean.getSdk_key(), null);
        if (this.windNativeAd == null) {
            String ad_id = playCfgBean.getAd_id();
            String uid = AccountUtil_.getInstance_(context).getUid();
            int dimension = (int) (context.getResources().getDimension(R.dimen.wdp794) / context.getResources().getDisplayMetrics().density);
            context.getResources().getDimension(R.dimen.wdp248);
            HashMap map = new HashMap();
            map.put(WMConstants.AD_WIDTH, Integer.valueOf(dimension));
            map.put(WMConstants.AD_HEIGHT, 0);
            this.windNativeAd = new WMNativeAd(this, new WMNativeAdRequest(ad_id, uid, 3, map));
        }
        this.windNativeAd.loadAd(new b());
    }

    void noDiscuss() {
        toCommentAllList();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onADEvent(com.join.mgps.event.a event) {
        if (event == null) {
            return;
        }
        if (event.a() == 1) {
            this.videoHeight = getVideoHeight(this);
            clearStreamList();
            if (event.b() == 0) {
                loadAdStreamVideo();
            }
            loadAdVideo();
            this.isGameExit = false;
            return;
        }
        if (event.a() == 2) {
            clearStreamList();
            this.isGameExit = true;
            return;
        }
        if (event.a() == 3) {
            clearStreamList();
            loadAdStreamVideo();
            return;
        }
        if (event.a() != 4) {
            if (event.a() == 7) {
                GameMainV4DataBean gameMainV4DataBean = this.mainDataShow;
                List<RecommendAd> recommendAdList = gameMainV4DataBean != null ? gameMainV4DataBean.getRecommendAdList() : null;
                if (recommendAdList == null || recommendAdList.size() <= 0) {
                    return;
                }
                RecommendAd recommendAd = recommendAdList.get(0);
                com.join.mgps.event.b0 b0Var = new com.join.mgps.event.b0(8);
                b0Var.e(recommendAd);
                org.greenrobot.eventbus.c.f().q(b0Var);
                return;
            }
            return;
        }
        if (this.playCfgBeanStream != null) {
            com.join.mgps.event.b0 b0Var2 = new com.join.mgps.event.b0(5);
            if (this.playCfgBeanStream.getSdk_type() == 1) {
                b0Var2.d(1);
                b0Var2.e(this.ttList);
            } else if (this.playCfgBeanStream.getSdk_type() == 2) {
                b0Var2.d(2);
                b0Var2.e(this.gdtList);
            } else if (this.playCfgBeanStream.getSdk_type() == 10) {
                b0Var2.d(10);
                b0Var2.e(this.nativeAdDataList);
                if (this.nativeAdDataList == null) {
                    loadTbAdStreamVideo(this, this.playCfgBeanStream);
                }
            }
            org.greenrobot.eventbus.c.f().q(b0Var2);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onAccountChangeEvent(com.join.mgps.event.b event) {
        if (event.b() == 2) {
            updateLocalAndNet(false);
        }
    }

    @Override // com.join.mgps.activity.FriendActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        this.type = "GAME_HOME_PAGE";
        super.gameId = this.gameId;
        super.onCreate(savedInstanceState);
    }

    @Override // com.join.mgps.activity.FriendActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        com.github.snowdream.android.app.downloader.b.InterfaceC0591b interfaceC0591b;
        com.join.mgps.socket.fight.arena.a aVar = this.mArenaDialogBuilder;
        if (aVar != null) {
            aVar.w();
        }
        if (this.downloadTask != null) {
            com.papa.sim.statistic.t.l(this).z0(this.downloadTask.getCrc_link_type_val(), this.accountBean.getUid());
        }
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
        com.join.mgps.ad.y yVar = this.ttInteractAdVideo;
        if (yVar != null) {
            yVar.w();
        }
        com.join.mgps.ad.f fVar = this.gdtInteractAdVideo;
        if (fVar != null) {
            fVar.v();
        }
        com.join.mgps.ad.w wVar = this.ttInfoStreamVideo;
        if (wVar != null) {
            wVar.c();
        }
        com.join.mgps.ad.e eVar = this.gdtInfoStreamVideo;
        if (eVar != null) {
            eVar.c();
        }
        this.ttList = null;
        this.gdtList = null;
        Handler handler = this.handler;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        super.onDestroy();
        com.github.snowdream.android.app.downloader.b bVar3 = this.factory;
        if (bVar3 != null && (interfaceC0591b = this.listener) != null) {
            bVar3.j(interfaceC0591b);
        }
        destroyTBidAdVideo();
    }

    @Override // com.join.mgps.activity.FriendActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onNewIntent(Intent intent) {
        if (TextUtils.isEmpty(intent.getStringExtra("gameId")) || TextUtils.equals(intent.getStringExtra("gameId"), this.gameId)) {
            return;
        }
        this.gameId = intent.getStringExtra("gameId");
        this.from = intent.getStringExtra("from");
        this.type = "GAME_HOME_PAGE";
        super.gameId = this.gameId;
        afterViews();
        super.onNewIntent(intent);
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
        if (this.downloadTask != null) {
            Ext ext = new Ext();
            if (this.downloadTask != null) {
                ext.setFrom(this.downloadTask.get_from() + "");
            }
            com.papa.sim.statistic.t.l(this).d(q5.f.M().N(this.gameId, this), ext);
        }
        if (!this.showFriendUI) {
            initListener();
        }
        com.join.mgps.Util.h0.h0(this).e(this);
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
            case 7:
                toControllerSetting();
                break;
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStart() {
        super.onStart();
        this.handler.postDelayed(new a(), 60L);
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

    @Receiver(actions = {p5.a.f96200i0})
    void recvedDownData(Intent intent) {
        if (!this.showFriendUI && isActivityVisible()) {
            this.downNumber = 1;
            this.downNumberNow = 1;
            CloudListDataBean cloudListDataBean = (CloudListDataBean) intent.getSerializableExtra("downCloud");
            this.listDataBeans.put(cloudListDataBean.getArchiveFile(), cloudListDataBean);
            String archiveFileName = cloudListDataBean.getArchiveFileName();
            String str = new File(cloudListDataBean.getArchiveFilePath()).getParent() + File.separator;
            cloudListDataBean.setStatus(3);
            this.factory.b(new com.github.snowdream.android.app.downloader.c(cloudListDataBean.getArchiveFile(), archiveFileName, str, cloudListDataBean.getFileSize()));
            org.greenrobot.eventbus.c.f().q(cloudListDataBean);
            this.progressDialogForDown.show();
            this.progressDialogForDown.c("1/" + UtilsMy.f(cloudListDataBean.getFileSize()) + "K", "0", 1);
        }
    }

    @Receiver(actions = {"com.cloud.downCloud.all"})
    void recvedDownDatav2(Intent intent) {
        if (!this.showFriendUI && isActivityVisible()) {
            List<CloudListDataBean> list = (List) intent.getSerializableExtra("downClouds");
            this.downNumber = list.size();
            com.join.mgps.dialog.x xVar = this.progressDialogForDown;
            if (xVar != null) {
                xVar.show();
                this.progressDialogForDown.c("1/" + list.size(), "0K", 1);
            }
            this.downNumberNow = 1;
            if (this.downNumber != 0) {
                this.progressDialogForDown.c("1/" + list.size(), "0K", 100 / this.downNumber);
            }
            for (CloudListDataBean cloudListDataBean : list) {
                this.listDataBeans.put(cloudListDataBean.getArchiveFile(), cloudListDataBean);
                String archiveFileName = cloudListDataBean.getArchiveFileName();
                StringBuilder sb2 = new StringBuilder();
                sb2.append(com.join.mgps.Util.z.f50169h);
                String str = File.separator;
                sb2.append(str);
                sb2.append(cloudListDataBean.getArchiveFileName());
                cloudListDataBean.setArchiveFilePath(sb2.toString());
                String str2 = new File(cloudListDataBean.getArchiveFilePath()).getParent() + str;
                cloudListDataBean.setStatus(3);
                this.factory.b(new com.github.snowdream.android.app.downloader.c(cloudListDataBean.getArchiveFile(), archiveFileName, str2, cloudListDataBean.getFileSize()));
                org.greenrobot.eventbus.c.f().q(cloudListDataBean);
            }
        }
    }

    public void senCommonEvent(String eventName, String gameId) {
        Intent intent = new Intent("com.join.android.app.mgsim.wufun.broadcast.emu.commonpoint");
        intent.putExtra(CommonService_.AnonymousClass33.f72723b, eventName);
        intent.putExtra("gameId", gameId);
        sendBroadcast(intent);
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
        Iterator<DynamicEntranceBean> it2 = this.itemBeans.iterator();
        while (it2.hasNext()) {
            DynamicEntranceBean next = it2.next();
            if (next.getTypeId() == 6 || next.getTypeId() == 7) {
                it2.remove();
            }
        }
        if (visible) {
            this.itemBeans.add(new DynamicEntranceBean("社区", "", 6));
        }
        if (String.valueOf(ConstantIntEnum.PS2.value()).equals(this.downloadTask.getPlugin_num())) {
            this.itemBeans.add(new DynamicEntranceBean("手柄设置", "", 7));
        }
        this.adapter.notifyDataSetChanged();
    }

    public void setIsVBA(boolean isVBA) {
        this.isVBA = isVBA;
    }

    public void showAdVideo() {
        if (needShowAd() && this.isGameExit) {
            PlayCfgBean playCfgBean = this.playCfgBean;
            if (playCfgBean != null) {
                if (playCfgBean.getSdk_type() == 1) {
                    com.join.mgps.ad.y yVar = this.ttInteractAdVideo;
                    if (yVar != null) {
                        yVar.q(this, this.gameId);
                        this.hasDialog = true;
                        this.prefDef.lastLaunchModGameId().g("");
                    }
                } else if (this.playCfgBean.getSdk_type() == 2) {
                    com.join.mgps.ad.f fVar = this.gdtInteractAdVideo;
                    if (fVar != null) {
                        fVar.q(this, this.gameId);
                        this.hasDialog = true;
                        this.prefDef.lastLaunchModGameId().g("");
                    }
                } else if (this.playCfgBean.getSdk_type() == 7) {
                    com.join.mgps.ad.j jVar = this.groMFullSVideo;
                    if (jVar != null) {
                        jVar.q(this, this.gameId);
                        this.hasDialog = true;
                        this.prefDef.lastLaunchModGameId().g("");
                    }
                    System.out.println("AD_LOG_TAG 显示融合广告 退出广告");
                }
            }
            this.isGameExit = false;
        }
    }

    @Receiver(actions = {"com.wufun.cloud.game.main.showDownDialog"})
    void showDialogDowning() {
        if (!this.showFriendUI && this.factory.g() > 0) {
            this.progressDialogForDown.show();
        }
    }

    void showDomainDialog(DomainInfoBean pdInfo) {
        com.join.mgps.dialog.n1 n1Var = this.domainDialog;
        if ((n1Var == null || !n1Var.isShowing()) && shouldShowDomainDialog() && pdInfo != null) {
            com.join.mgps.dialog.n1 n1Var2 = new com.join.mgps.dialog.n1(this, pdInfo);
            this.domainDialog = n1Var2;
            n1Var2.t(new m(pdInfo));
            this.domainDialog.show();
            com.papa.sim.statistic.t.l(this).R1(Event.pdSimulatorStartWin, new Ext().setGameId(this.gameId).setIsJoin(pdInfo.getIs_join()).setTestAbNumber(pdInfo.getAb_test_number()));
        }
    }

    public void showFeedBackDialog() {
        if (this.hasDialog) {
            return;
        }
        this.hasDialog = com.join.mgps.Util.h0.h0(this).e(this);
    }

    public void showGromoreAdVideo(Activity activity, String gameId) {
        com.join.mgps.ad.j jVar = this.groMFullSVideo;
        if (jVar != null) {
            jVar.q(activity, gameId);
        }
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
        s sVar = this.netWorkPspDialog;
        if (sVar != null && sVar.isShowing()) {
            this.netWorkPspDialog.dismiss();
        }
        s sVar2 = new s(this.context, R.style.HKDialogLoading);
        this.netWorkPspDialog = sVar2;
        sVar2.show();
    }

    public void showTTAdVideo(Activity activity, String gameId) {
        if (activity == null || this.ttInteractAdVideo == null || activity.isDestroyed()) {
            return;
        }
        this.ttInteractAdVideo.q(activity, gameId);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String msg) {
        if (com.join.mgps.Util.t2.i(msg)) {
            com.join.mgps.Util.a3.b(this).d(msg);
        }
    }

    @Click
    void startGame() {
        if (this.downloadTask == null) {
            this.downloadTask = q5.f.M().G(this.gameId);
        }
        DownloadTask downloadTask = this.downloadTask;
        if (downloadTask == null) {
            showToast("游戏启动失败，请重试");
            return;
        }
        EMUApkTable eMUApkTableF2 = UtilsMy.f2(downloadTask.getRomType());
        if (eMUApkTableF2 == null) {
            showToast("游戏启动失败，请重试");
            return;
        }
        if (eMUApkTableF2.getDown_type() == 2) {
            startGameV2();
        } else if (new PrefDef_(this.context).launch_game_switch().d().booleanValue()) {
            UtilsMy.A0(this.context, 1, this.gameId, "RAW_SIMULATOR", new n());
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
            if (this.downloadTask != null) {
                MApplication.f3182z.p().lastLaunchModGameId().g(this.gameId);
                UtilsMy.Z1(this.context, 8, this.gameId);
            }
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
            CommentAllListActivity_.intent(this.context).f(this.gameId).i(gameInfo.getGame_package()).h(gameInfo.getGame_plugin_num()).a(gameInfo.getGame_bespeak_switch() == null ? 0 : Integer.parseInt(gameInfo.getGame_bespeak_switch())).g(gameInfo.getGame_is_started()).j(0).d(gameInfo.getGame_comment_score_switch()).start();
        }
    }

    void toControllerSetting() {
        IntentUtil.getInstance().goFormDetial(this.context, "8873670");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void upNum(final int localnum) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateStatu(CloudListDataBean dataBean) {
        com.join.mgps.event.i iVar = new com.join.mgps.event.i();
        dataBean.setStatus(0);
        iVar.f(dataBean);
        iVar.j(0);
        org.greenrobot.eventbus.c.f().q(iVar);
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
    }

    class s extends Dialog {

        class a implements AdapterView.OnItemClickListener {
            a() {
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> parent, View view, int position, long id2) {
                PspBattleServer pspBattleServer = GameMainActivity3.this.pspBattleServers.get(position);
                NetBattleStartGameDto netBattleStartGameDto = new NetBattleStartGameDto();
                netBattleStartGameDto.setServerIP(pspBattleServer.getIp());
                netBattleStartGameDto.setServerPort(pspBattleServer.getPort());
                netBattleStartGameDto.setGameID(GameMainActivity3.this.gameId + "");
                netBattleStartGameDto.setUserID(AccountUtil_.getInstance_(GameMainActivity3.this.context).getAccountData().getUid() + "");
                netBattleStartGameDto.setOldGame(0);
                netBattleStartGameDto.setClientIp(GameMainActivity3.this.clientIp);
                netBattleStartGameDto.setUserName(AccountUtil_.getInstance_(GameMainActivity3.this.context).getAccountData().getNickname());
                netBattleStartGameDto.setUserIcon(AccountUtil_.getInstance_(GameMainActivity3.this.context).getAccountData().getAvatarSrc());
                netBattleStartGameDto.setPorder(0);
                UtilsMy.x4(GameMainActivity3.this.context, netBattleStartGameDto, GameMainActivity3.this.downloadTask, 13);
            }
        }

        private class b extends BaseAdapter {
            private b() {
            }

            @Override // android.widget.Adapter
            public int getCount() {
                return GameMainActivity3.this.pspBattleServers.size();
            }

            @Override // android.widget.Adapter
            public Object getItem(int position) {
                return GameMainActivity3.this.pspBattleServers.get(position);
            }

            @Override // android.widget.Adapter
            public long getItemId(int position) {
                return position;
            }

            @Override // android.widget.Adapter
            public View getView(int position, View convertView, ViewGroup parent) {
                if (convertView == null) {
                    convertView = LayoutInflater.from(GameMainActivity3.this.context).inflate(R.layout.dialog_psp_item, (ViewGroup) null);
                }
                ((TextView) convertView.findViewById(R.id.name)).setText(GameMainActivity3.this.pspBattleServers.get(position).getServer_name());
                ((TextView) convertView.findViewById(R.id.count)).setText(GameMainActivity3.this.pspBattleServers.get(position).getPeople() + "人");
                return convertView;
            }

            /* synthetic */ b(s sVar, j jVar) {
                this();
            }
        }

        public s(Context context) {
            super(context);
        }

        @Override // android.app.Dialog
        protected void onCreate(Bundle savedInstanceState) {
            super.onCreate(savedInstanceState);
            requestWindowFeature(1);
            requestWindowFeature(-1);
            View viewInflate = LayoutInflater.from(GameMainActivity3.this.context).inflate(R.layout.network_psp_dialog, (ViewGroup) null);
            ListView listView = (ListView) viewInflate.findViewById(R.id.listview);
            listView.setAdapter((ListAdapter) new b(this, null));
            listView.setOnItemClickListener(new a());
            setContentView(viewInflate);
        }

        protected s(Context context, boolean cancelable, DialogInterface.OnCancelListener cancelListener) {
            super(context, cancelable, cancelListener);
        }

        public s(Context context, int themeResId) {
            super(context, themeResId);
        }
    }
}
