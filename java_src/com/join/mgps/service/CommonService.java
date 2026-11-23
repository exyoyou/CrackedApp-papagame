package com.join.mgps.service;

import android.app.Activity;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Environment;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.provider.Settings;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.core.app.NotificationCompat;
import androidx.core.content.ContextCompat;
import app.mgsim.arena.ArenaConstants;
import app.mgsim.arena.ArenaRequest;
import app.mgsim.arena.ArenaRequestFactory;
import app.mgsim.arena.ArenaResponse;
import app.mgsim.arena.SocketError;
import app.mgsim.arena.SocketListener;
import com.MApplication;
import com.bykv.vk.component.ttvideo.player.C;
import com.cloudplay.messagesdk.MessageSDK;
import com.cloudplay.messagesdk.listener.SendListener;
import com.cloudplay.messagesdk.socket.websocket.schedulers.MessageSchedulerType;
import com.czhj.sdk.common.Constants;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.cloudarchive.data.ArchiveArgs;
import com.join.mgps.Util.AESUtils;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.WifiUtils;
import com.join.mgps.Util.a3;
import com.join.mgps.Util.d2;
import com.join.mgps.Util.g1;
import com.join.mgps.Util.h1;
import com.join.mgps.Util.i1;
import com.join.mgps.Util.j0;
import com.join.mgps.Util.k2;
import com.join.mgps.Util.o0;
import com.join.mgps.Util.r0;
import com.join.mgps.Util.s0;
import com.join.mgps.Util.t2;
import com.join.mgps.Util.w0;
import com.join.mgps.Util.x1;
import com.join.mgps.Util.z;
import com.join.mgps.activity.EndGameLaunchActivity_;
import com.join.mgps.activity.NoticeTopAnimActivityDialog_;
import com.join.mgps.activity.PayNowActivity_;
import com.join.mgps.activity.QuarkDownGameActivity_;
import com.join.mgps.activity.QuarkPromptActivity_;
import com.join.mgps.activity.WarningDialogActivity;
import com.join.mgps.activity.mygame.data.DataGameListBean;
import com.join.mgps.activity.recomend.DownloadCenterTuijianMain;
import com.join.mgps.activity.recomend.GamedownRecomendItemBean;
import com.join.mgps.activity.recomend.GamedownloadRecomdActivity2_;
import com.join.mgps.activity.recomend.GamedownloadRecomdActivity_;
import com.join.mgps.cloud.bean.HMMessage;
import com.join.mgps.db.tables.EMUApkArenaTable;
import com.join.mgps.db.tables.EMUApkTable;
import com.join.mgps.db.tables.EMUUpdateTable;
import com.join.mgps.db.tables.ForumTable;
import com.join.mgps.db.tables.JoystickTable;
import com.join.mgps.db.tables.PlayGameTimeTable;
import com.join.mgps.db.tables.PurchasedListTable;
import com.join.mgps.db.tables.ShowViewDataBeanTable;
import com.join.mgps.dialog.DownloadMethodMultiDialog_;
import com.join.mgps.dto.APKVersionMainBean;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.AccountTokenSuccess;
import com.join.mgps.dto.ApkVersionbean;
import com.join.mgps.dto.AppBean;
import com.join.mgps.dto.BaseBean;
import com.join.mgps.dto.BattaleSwitchBean;
import com.join.mgps.dto.BluetoothHandleBlackListData;
import com.join.mgps.dto.BluetoothHandleBlackListRequestBean;
import com.join.mgps.dto.CheckGameVersionRequestArgs;
import com.join.mgps.dto.CheckGameVersionResponseData;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CommentResponse;
import com.join.mgps.dto.CommentTokenBean;
import com.join.mgps.dto.DomainInfoBean;
import com.join.mgps.dto.DownDeductCoinResponse;
import com.join.mgps.dto.DownloadArgs;
import com.join.mgps.dto.DownloadGameArgsBean;
import com.join.mgps.dto.DownloadScanEvent;
import com.join.mgps.dto.EmuErrorDto;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.FileInfo;
import com.join.mgps.dto.FirstScreenAdDtoData;
import com.join.mgps.dto.ForumBannerBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.ForumData;
import com.join.mgps.dto.ForumRequestBean;
import com.join.mgps.dto.ForumResponse;
import com.join.mgps.dto.FriendInviteBean;
import com.join.mgps.dto.GameBespeakBean;
import com.join.mgps.dto.GameMainV4DataBean;
import com.join.mgps.dto.HomeViewSwich;
import com.join.mgps.dto.MiniGameSdkDtoAdCfgValue;
import com.join.mgps.dto.MiniGameSdkDtoRequestArgs;
import com.join.mgps.dto.MiniGameSdkDtoResponseResponseData;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.dto.PapayOrder;
import com.join.mgps.dto.PayGameDetialBean;
import com.join.mgps.dto.PayOrderInfo;
import com.join.mgps.dto.QueryDownloadInfoRequestArgs;
import com.join.mgps.dto.QueryDownloadInfoResponseData;
import com.join.mgps.dto.RecomDatabean;
import com.join.mgps.dto.RequestAppDetialArgs;
import com.join.mgps.dto.RequestDomainInfoArgs;
import com.join.mgps.dto.RequestEndGameListArgs;
import com.join.mgps.dto.RequestGameBespeakArgs;
import com.join.mgps.dto.RequestGameIdArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.RequestdetialFolowAndBeSpeak;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.SharePostRequest;
import com.join.mgps.dto.ShowViewDataBean;
import com.join.mgps.dto.SingleGameRunAdTextCfgBean;
import com.join.mgps.dto.SpValue;
import com.join.mgps.dto.SplashIntentBean;
import com.join.mgps.dto.TipBean;
import com.join.mgps.dto.TipNew;
import com.join.mgps.dto.TouristLoginRequestBean;
import com.join.mgps.dto.VersionDto;
import com.join.mgps.dto.VideoAdCfgBean;
import com.join.mgps.dto.VideoAdCfgRequestArgs;
import com.join.mgps.dto.VolcanoOther;
import com.join.mgps.dto.WebDiskCfg;
import com.join.mgps.dto.WebDiskInfo;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.enums.Dtype;
import com.join.mgps.event.w;
import com.join.mgps.pref.PrefDef_;
import com.papa.controller.core.ControllerManager;
import com.papa.sim.statistic.Data;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.EventP;
import com.papa.sim.statistic.Ext;
import com.papa91.activity.EmuBaseActivity;
import com.papa91.arc.common.constants.BAction;
import com.papa91.arc.ext.ToastManager;
import com.papa91.arc.util.StoreUtils;
import com.windmill.sdk.WMConstants;
import com.wufan.friend.chat.protocol.ChatMessageNotification;
import com.wufan.user.service.protobuf.UserInfo;
import com.wufun.union.ad.AdChannel;
import com.wufun.union.ad.AdService;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.RandomAccessFile;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import net.sf.sevenzipjbinding.ArchiveFormat;
import net.sf.sevenzipjbinding.ExtractOperationResult;
import net.sf.sevenzipjbinding.IInArchive;
import net.sf.sevenzipjbinding.ISequentialOutStream;
import net.sf.sevenzipjbinding.SevenZip;
import net.sf.sevenzipjbinding.SevenZipException;
import net.sf.sevenzipjbinding.impl.RandomAccessFileInStream;
import net.sf.sevenzipjbinding.simple.ISimpleInArchive;
import net.sf.sevenzipjbinding.simple.ISimpleInArchiveItem;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Bean;
import org.androidannotations.annotations.EService;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.greenrobot.eventbus.Subscribe;
import org.json.JSONArray;
import org.json.JSONObject;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
import t6.a0;
import t6.d0;
import t6.e0;
import t6.i0;

/* JADX INFO: loaded from: classes3.dex */
@EService
public class CommonService extends Service {
    private static final String T = "CommonService";
    public static boolean U = true;
    public static boolean V = true;
    public static boolean W;
    static boolean X;
    static boolean Y;
    com.papa.controller.core.d A;
    GameReceiver K;
    private boolean L;
    private String M;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Pref
    PrefDef_ f72453c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Bean
    com.join.mgps.Util.b f72454d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private RecomDatabean f72456f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    IntentFilter f72457g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    IntentFilter f72458h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    IntentFilter f72459i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    IntentFilter f72460j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    IntentFilter f72461k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    LoginReceive f72462l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    SendTextMessage f72463m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private Context f72464n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    Thread f72465o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private String f72466p;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    com.github.snowdream.android.app.downloader.b.InterfaceC0591b f72470t;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private com.join.mgps.socket.fight.arena.b f72472v;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    CountDownTimer f72474x;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    com.join.mgps.rpc.k f72476z;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ScheduledExecutorService f72452b = Executors.newScheduledThreadPool(3);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    Intent f72455e = new Intent("com.join.mgps.activity.sendUI");

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f72467q = false;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    Handler f72468r = new Handler();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    com.github.snowdream.android.app.downloader.b f72469s = null;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    Map<String, com.github.snowdream.android.app.downloader.c> f72471u = new ConcurrentHashMap(0);

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f72473w = false;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private DownloadTask f72475y = null;
    boolean B = false;
    private int C = 5;
    ScheduledExecutorService D = null;
    int E = 0;
    int F = 0;
    int G = 20;
    int H = 0;
    int I = 0;
    String J = "11111";
    boolean N = false;
    AtomicBoolean O = new AtomicBoolean(false);
    HashMap<String, Integer> P = new HashMap<>();
    final HashMap<String, DownloadScanEvent> Q = new HashMap<>();
    ScheduledExecutorService R = Executors.newScheduledThreadPool(3);
    private final SocketListener.NotifyObserver S = new i();

    class GameReceiver extends BroadcastReceiver {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final String f72477a = EmuBaseActivity.prefix;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f72478b = "com.join.android.app.mgsim.wufun.broadcast.acceptInvitePlay";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f72479c = "com.join.android.app.mgsim.wufun.broadcast.setOnlineState";

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public String f72480d = "com.join.android.app.mgsim.wufun.broadcast.getOnlineState";

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public String f72481e = "com.join.android.app.mgsim.wufun.broadcast.gamePlay";

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public String f72482f = "com.join.android.app.mgsim.wufun.broadcast.addFriends";

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public String f72483g = "com.join.android.app.mgsim.wufun.broadcast.friendsApplication";

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public String f72484h = "com.join.android.app.mgsim.wufun.broadcast.receiveInvitation";

        GameReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            try {
                String stringExtra = intent.getStringExtra("packageName");
                if (TextUtils.isEmpty(stringExtra) || !stringExtra.equals(CommonService.this.getPackageName())) {
                    return;
                }
                String action = intent.getAction();
                if (action.equals(this.f72480d)) {
                    int iA = com.wufan.friend.chat.c.u().A();
                    Intent intent2 = new Intent("com.join.android.app.mgsim.wufun.broadcast.onOnlineState");
                    intent2.putExtra(NoticeTopAnimActivityDialog_.STATE_EXTRA, iA);
                    CommonService.this.sendBroadcast(intent2);
                    return;
                }
                if (action.equals(this.f72479c)) {
                    com.wufan.friend.chat.c.u().U(intent.getIntExtra(NoticeTopAnimActivityDialog_.STATE_EXTRA, 0));
                    return;
                }
                String str = "0";
                String str2 = "";
                if (action.equals(this.f72478b)) {
                    int intExtra = intent.getIntExtra("accept", 0);
                    FriendInviteBean friendInviteBeanS = com.wufan.friend.chat.c.u().s();
                    if (friendInviteBeanS != null) {
                        try {
                            str2 = com.wufan.friend.chat.c.u().s().getGameId() + "";
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    }
                    if (intExtra == 1) {
                        w wVar = new w(7);
                        wVar.n(str2);
                        org.greenrobot.eventbus.c.f().q(wVar);
                        Ext ext = new Ext();
                        ext.setFrom("1");
                        ext.setGameId(str2);
                        UserInfo accountData = AccountUtil_.getInstance_(context).getAccountData();
                        if (accountData != null) {
                            ext.setUid(accountData.getUid());
                        }
                        if (friendInviteBeanS != null) {
                            if (friendInviteBeanS.getSource() != 1) {
                                str = "1";
                            }
                            ext.setPosition(str);
                        }
                        com.papa.sim.statistic.t.l(context).R1(Event.SuccessInvitation, ext);
                        return;
                    }
                    if (intExtra == 2) {
                        Ext ext2 = new Ext();
                        ext2.setFrom("1");
                        ext2.setGameId(str2);
                        UserInfo accountData2 = AccountUtil_.getInstance_(context).getAccountData();
                        if (accountData2 != null) {
                            ext2.setUid(accountData2.getUid());
                        }
                        if (friendInviteBeanS != null) {
                            if (friendInviteBeanS.getSource() != 1) {
                                str = "1";
                            }
                            ext2.setPosition(str);
                        }
                        com.papa.sim.statistic.t.l(context).R1(Event.OverdueInvitation, ext2);
                        com.wufan.friend.chat.c.u().P();
                        return;
                    }
                    Ext ext3 = new Ext();
                    ext3.setFrom("1");
                    ext3.setGameId(str2);
                    UserInfo accountData3 = AccountUtil_.getInstance_(context).getAccountData();
                    if (accountData3 != null) {
                        ext3.setUid(accountData3.getUid());
                    }
                    if (friendInviteBeanS != null) {
                        if (friendInviteBeanS.getSource() != 1) {
                            str = "1";
                        }
                        ext3.setPosition(str);
                    }
                    com.papa.sim.statistic.t.l(context).R1(Event.RefuseInvitation, ext3);
                    com.wufan.friend.chat.c.u().P();
                    return;
                }
                if (action.equals(this.f72481e)) {
                    int intExtra2 = intent.getIntExtra("action", 2);
                    int intExtra3 = intent.getIntExtra("startMode", 0);
                    long j10 = !TextUtils.isEmpty(intent.getStringExtra("gameId")) ? Long.parseLong(intent.getStringExtra("gameId")) : 0L;
                    int i10 = !TextUtils.isEmpty(intent.getStringExtra(CommonService_.AnonymousClass32.f72720g)) ? Integer.parseInt(intent.getStringExtra(CommonService_.AnonymousClass32.f72720g)) : 0;
                    int i11 = !TextUtils.isEmpty(intent.getStringExtra("uid")) ? Integer.parseInt(intent.getStringExtra("uid")) : 0;
                    h1.e("channel", "actionGamePlay startMode=" + intExtra3);
                    com.wufan.friend.chat.c.u().q(intExtra2, intExtra3, j10, i10, i11);
                    return;
                }
                if (action.equals(this.f72482f)) {
                    int intExtra4 = intent.getIntExtra("from", 0);
                    Ext ext4 = new Ext();
                    ext4.setFrom(intExtra4 + "");
                    com.papa.sim.statistic.t.l(context).R1(Event.addFriends, ext4);
                    return;
                }
                if (action.equals(this.f72483g)) {
                    int intExtra5 = intent.getIntExtra("action", -1);
                    Ext ext5 = new Ext();
                    ext5.setPosition(intExtra5 + "");
                    com.papa.sim.statistic.t.l(context).R1(Event.Friendsapplication, ext5);
                    return;
                }
                if (action.equals(this.f72484h)) {
                    FriendInviteBean friendInviteBeanS2 = com.wufan.friend.chat.c.u().s();
                    if (friendInviteBeanS2 != null) {
                        try {
                            str2 = com.wufan.friend.chat.c.u().s().getGameId() + "";
                        } catch (Exception e11) {
                            e11.printStackTrace();
                        }
                    }
                    Ext ext6 = new Ext();
                    ext6.setFrom("1");
                    ext6.setGameId(str2);
                    UserInfo accountData4 = AccountUtil_.getInstance_(context).getAccountData();
                    if (accountData4 != null) {
                        ext6.setUid(accountData4.getUid());
                    }
                    if (friendInviteBeanS2 != null) {
                        if (friendInviteBeanS2.getSource() != 1) {
                            str = "1";
                        }
                        ext6.setPosition(str);
                    }
                    com.papa.sim.statistic.t.l(context).R1(Event.ReceiveInvitation, ext6);
                    return;
                }
                return;
                e.printStackTrace();
            } catch (Exception e12) {
                e12.printStackTrace();
            }
        }
    }

    class LoginReceive extends BroadcastReceiver {
        LoginReceive() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            try {
                CommonService.this.e();
            } catch (Exception unused) {
                CommonService.this.f72455e.putExtra("type", "11");
                CommonService.this.f72455e.putExtra("msg", "登录失败");
                CommonService commonService = CommonService.this;
                commonService.sendBroadcast(commonService.f72455e);
            }
        }
    }

    class SendTextMessage extends BroadcastReceiver {
        SendTextMessage() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (!com.wufan.friend.chat.c.u().F()) {
                com.wufan.friend.chat.c.u().K();
            } else {
                com.wufan.friend.chat.c.u().h(intent.getStringExtra("text"));
            }
        }
    }

    class a extends m6.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ WarningDialogActivity.WarningDialogParam f72488a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DownloadTask f72489b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ CollectionBeanSub f72490c;

        a(final WarningDialogActivity.WarningDialogParam val$params, final DownloadTask val$downloadTask, final CollectionBeanSub val$detialResultBean) {
            this.f72488a = val$params;
            this.f72489b = val$downloadTask;
            this.f72490c = val$detialResultBean;
        }

        @Override // m6.e, com.join.mgps.callbacks.x
        public void a(Activity activity) {
            super.a(activity);
            activity.finish();
            if (this.f72488a.getType() == 0) {
                UtilsMy.l1(CommonService.this.f72464n, this.f72489b);
            }
        }

        @Override // m6.e, com.join.mgps.callbacks.x
        public void b(Activity activity) {
            super.b(activity);
            activity.finish();
            if (this.f72488a.getType() == 2) {
                UtilsMy.l1(CommonService.this.f72464n, this.f72489b);
            }
        }

        @Override // m6.e, com.join.mgps.callbacks.x
        public void d(Activity activity) {
            super.d(activity);
            activity.finish();
            ModInfoBean mod_info = this.f72490c.getMod_info();
            String game_id = this.f72490c.getGame_id();
            if (mod_info != null) {
                game_id = mod_info.getMod_game_id();
            }
            if (q5.f.M().L(game_id) == null) {
                DownloadTask downloadTaskBuildDownloadTask = this.f72490c.buildDownloadTask();
                downloadTaskBuildDownloadTask.setCrc_link_type_val("cld_" + game_id);
                downloadTaskBuildDownloadTask.setRef_crc_sign_id(this.f72490c.getGame_id());
                Dtype dtype = Dtype.CLOUD;
                downloadTaskBuildDownloadTask.setFileType(dtype.name());
                downloadTaskBuildDownloadTask.setRomType(dtype.name());
                downloadTaskBuildDownloadTask.setStatus(5);
                q5.f.M().m(downloadTaskBuildDownloadTask);
                org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.r(downloadTaskBuildDownloadTask, 5));
            }
            ExtBean extBean = new ExtBean();
            extBean.setTypeCode(EventP.TypeCode.cloudGame.name());
            extBean.setChatId(EventP.ChatId.gameDownloadNoCpuTips.name()).setResourceId(this.f72489b.getCrc_link_type_val().replace("cld_", "")).setGameId(this.f72489b.getCrc_link_type_val().replace("cld_", ""));
            extBean.buildScene();
            w0.h().s(CommonService.this.f72464n, game_id, extBean);
            com.papa.sim.statistic.t.l(CommonService.this.f72464n).R1(Event.gameStart, extBean.toExt());
        }

        @Override // m6.e, com.join.kotlin.base.dialog.callback.IDialogActivityCallback
        public void onActivityShow(@NonNull Activity activity) {
            super.onActivityShow(activity);
            ExtBean extBean = new ExtBean();
            extBean.setTypeCode(EventP.TypeCode.page.name());
            extBean.setChatId(EventP.ChatId.gameDownloadNoCpuTips.name()).setResourceId(this.f72489b.getCrc_link_type_val().replace("cld_", "")).setGameId(this.f72489b.getCrc_link_type_val().replace("cld_", ""));
            extBean.buildScene();
            com.papa.sim.statistic.t.l(CommonService.this.f72464n).R1(Event.commonExp, extBean.toExt());
        }
    }

    class b extends Handler {
        b() {
        }

        private void a(String name, String address) {
            JoystickTable joystickTable = new JoystickTable();
            joystickTable.setName(name);
            joystickTable.setMac(address);
            joystickTable.setTime(Long.valueOf(System.currentTimeMillis()));
            a0.o().k(joystickTable);
        }

        private void b(String name, String address, int type) {
            com.papa.sim.statistic.t.l(CommonService.this.f72464n).b0(AccountUtil_.getInstance_(CommonService.this.f72464n).getUid(), AccountUtil_.getInstance_(CommonService.this.f72464n).isTourist(), name, address, type);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            Object obj;
            if (msg.what == 10000 && (obj = msg.obj) != null && (obj instanceof com.papa.controller.core.b)) {
                com.papa.controller.core.b bVar = (com.papa.controller.core.b) obj;
                String strD = bVar.d();
                String strC = bVar.c();
                int i10 = (t2.i(bVar.f()) && t2.i(bVar.e())) ? 1 : 0;
                if (!CommonService.this.m0(strC)) {
                    a(strD, strC);
                    b(strD, strC, i10);
                }
            }
            super.handleMessage(msg);
        }
    }

    class c implements ControllerManager.d {
        c() {
        }

        @Override // com.papa.controller.core.ControllerManager.d
        public void onControllerDeviceAdded(ControllerManager.c device) {
        }

        @Override // com.papa.controller.core.ControllerManager.d
        public void onControllerDeviceRemoved(ControllerManager.c device) {
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f72494b;

        d(final List val$s) {
            this.f72494b = val$s;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommonService commonService = CommonService.this;
            int i10 = commonService.I;
            if (i10 > commonService.H) {
                ScheduledExecutorService scheduledExecutorService = commonService.D;
                if (scheduledExecutorService == null || scheduledExecutorService.isShutdown()) {
                    return;
                }
                CommonService.this.D.shutdown();
                CommonService.this.D = null;
                return;
            }
            int i11 = commonService.G;
            int i12 = i10 * i11;
            commonService.E = i12;
            commonService.F = Math.min(i12 + i11, this.f72494b.size());
            List list = this.f72494b;
            CommonService commonService2 = CommonService.this;
            List<String> listSubList = list.subList(commonService2.E, commonService2.F);
            CommonService.this.I++;
            if (listSubList == null || listSubList.size() <= 0) {
                return;
            }
            CommonService.this.w(listSubList);
        }
    }

    class e implements Callback<ResponseModel<DataGameListBean>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f72496b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f72497c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f72498d;

        e(final String val$gameid, final boolean val$isfromRecom, final String val$gamename) {
            this.f72496b = val$gameid;
            this.f72497c = val$isfromRecom;
            this.f72498d = val$gamename;
        }

        @Override // retrofit2.Callback
        public void onFailure(Call<ResponseModel<DataGameListBean>> call, Throwable t10) {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // retrofit2.Callback
        public void onResponse(Call<ResponseModel<DataGameListBean>> call, Response<ResponseModel<DataGameListBean>> response) {
            ResponseModel<DataGameListBean> responseModelBody;
            DownloadTask downloadTaskG;
            if (response == null || (responseModelBody = response.body()) == null || responseModelBody.getData() == null) {
                return;
            }
            List<GamedownRecomendItemBean> gameList = responseModelBody.getData().getGameList();
            if (gameList == null || gameList.size() <= 0) {
                if (this.f72497c || (downloadTaskG = q5.f.M().G(this.f72496b)) == null || new PrefDef_(CommonService.this.f72464n).downloadSpeedUpGameSize().d().intValue() > downloadTaskG.getActual_size()) {
                    return;
                }
                if ((TextUtils.isEmpty(downloadTaskG.getFileType()) || !downloadTaskG.getFileType().equals(Dtype.chajian.name())) && !downloadTaskG.isDisableShowSpeedUpPrompt() && UtilsMy.d0(CommonService.this.f72464n, downloadTaskG.getCrc_link_type_val())) {
                    ((GamedownloadRecomdActivity2_.IntentBuilder_) GamedownloadRecomdActivity2_.intent(CommonService.this.f72464n).flags(C.ENCODING_PCM_MU_LAW)).gameName(this.f72498d).start();
                    return;
                }
                return;
            }
            DownloadCenterTuijianMain downloadCenterTuijianMain = new DownloadCenterTuijianMain();
            downloadCenterTuijianMain.setGameid(this.f72496b);
            downloadCenterTuijianMain.setCollectionList(gameList);
            downloadCenterTuijianMain.setJumpInfo(responseModelBody.getData().getJumpInfo());
            CommonService.this.f72453c.recomDataJson().g(JsonMapper.getInstance().toJson(downloadCenterTuijianMain));
            CommonService.this.f72464n.sendBroadcast(new Intent("com.hasget.new.recomdwon,data"));
            if (this.f72497c || q5.f.M().G(this.f72496b) == null || !CommonService.V) {
                return;
            }
            DownloadTask downloadTaskG2 = q5.f.M().G(this.f72496b);
            if (com.join.mgps.pref.h.n(CommonService.this.f72464n).x()) {
                ((GamedownloadRecomdActivity_.IntentBuilder_) GamedownloadRecomdActivity_.intent(CommonService.this.f72464n).flags(C.ENCODING_PCM_MU_LAW)).gameName(this.f72498d).start();
                return;
            }
            if (downloadTaskG2 == null || new PrefDef_(CommonService.this.f72464n).downloadSpeedUpGameSize().d().intValue() > downloadTaskG2.getActual_size()) {
                return;
            }
            if ((TextUtils.isEmpty(downloadTaskG2.getFileType()) || !downloadTaskG2.getFileType().equals(Dtype.chajian.name())) && !downloadTaskG2.isDisableShowSpeedUpPrompt() && UtilsMy.d0(CommonService.this.f72464n, downloadTaskG2.getCrc_link_type_val())) {
                ((GamedownloadRecomdActivity2_.IntentBuilder_) GamedownloadRecomdActivity2_.intent(CommonService.this.f72464n).flags(C.ENCODING_PCM_MU_LAW)).gameName(this.f72498d).start();
            }
        }
    }

    class f implements com.join.android.app.common.http.g {
        f() {
        }

        @Override // com.join.android.app.common.http.g
        public void onRequestProgress(long bytesWritten, long contentLength, boolean b10, String url) {
        }

        @Override // com.join.android.app.common.http.g
        public void onUploadFailed(String msg) {
        }
    }

    class g implements ISequentialOutStream {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ File f72501b;

        g(final File val$apkCacheFile) {
            this.f72501b = val$apkCacheFile;
        }

        @Override // net.sf.sevenzipjbinding.ISequentialOutStream
        public int write(byte[] data) throws SevenZipException {
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(this.f72501b, true);
                fileOutputStream.write(data);
                fileOutputStream.close();
            } catch (IOException e10) {
                e10.printStackTrace();
            }
            return data.length;
        }
    }

    class h implements com.join.mgps.socket.fight.arena.b.InterfaceC0749b {
        h() {
        }

        @Override // com.join.mgps.socket.fight.arena.b.InterfaceC0749b
        public void a(boolean isConnected) {
        }

        @Override // com.join.mgps.socket.fight.arena.b.InterfaceC0749b
        public void b() {
            CommonService.this.f72473w = false;
            try {
                CommonService.this.f72472v.d().A(CommonService.this.S);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        @Override // com.join.mgps.socket.fight.arena.b.InterfaceC0749b
        public void c() {
            CommonService.this.f72473w = true;
            try {
                CommonService.this.f72472v.d().z(CommonService.this.S);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    class i implements SocketListener.NotifyObserver {
        i() {
        }

        @Override // app.mgsim.arena.SocketListener.NotifyObserver
        public void onError(SocketError socketError) {
        }

        @Override // app.mgsim.arena.SocketListener.NotifyObserver
        public void onServerResponse(ArenaResponse response) {
            String str;
            ArenaRequest arenaRequest;
            String str2;
            if (response == null || (str = response.responseType) == null) {
                return;
            }
            if (str.equals(ArenaConstants.ArenaCommand.PUSH_SCORE_BOARD) || response.responseType.equals(ArenaConstants.ArenaCommand.CMD_SEND_ROM_LOADED)) {
                if (response.data instanceof String) {
                    CommonService.this.w1(response.request.roomId + "", (String) response.data);
                    return;
                }
                return;
            }
            if (!response.responseType.equals(ArenaConstants.ArenaCommand.CMD_LOGIN) || (arenaRequest = response.request) == null || (str2 = arenaRequest.register_type) == null || !Objects.equals(str2, ArenaConstants.REGISTER_TYPE_EMU)) {
                return;
            }
            CommonService.this.s(arenaRequest.roomId + "", arenaRequest.gameId + "", arenaRequest.uid + "", "");
        }
    }

    class j implements SendListener {
        j() {
        }

        @Override // com.cloudplay.messagesdk.listener.SendListener
        public /* synthetic */ MessageSchedulerType getSchedulerObserveOn() {
            return w2.b.a(this);
        }

        @Override // com.cloudplay.messagesdk.listener.SendListener
        public void onResult(boolean b10, String s10) {
            CommonService.this.w0("send message in main, result: " + b10 + " " + s10);
        }
    }

    class k implements Callback<ResultMainBean> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f72506b;

        k(final String val$gameid) {
            this.f72506b = val$gameid;
        }

        @Override // retrofit2.Callback
        public void onFailure(Call<ResultMainBean> call, Throwable t10) {
            CommonService.this.t0("请求失败！");
        }

        @Override // retrofit2.Callback
        public void onResponse(Call<ResultMainBean> call, Response<ResultMainBean> response) {
            if (response.body().getFlag() == 1) {
                Intent intent = new Intent("com.broadcast.bespeak.sussess");
                intent.putExtra("gameid", this.f72506b);
                CommonService.this.f72464n.sendBroadcast(intent);
                CommonService.this.t0("收到，游戏上架后会通知您");
            }
        }
    }

    class l implements com.join.mgps.callbacks.m<ResponseModel<DataGameListBean>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ DownloadGameArgsBean f72508a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f72509b;

        l(final DownloadGameArgsBean val$argsBean, final int val$downloadType) {
            this.f72508a = val$argsBean;
            this.f72509b = val$downloadType;
        }

        @Override // com.join.mgps.callbacks.m
        public void a(Throwable e10) {
            CommonService.this.y1(this.f72508a.getGameId(), 49);
            CommonService.this.t0("获取游戏信息失败");
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.join.mgps.callbacks.m
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void onSuccess(ResponseModel<DataGameListBean> response) {
            if (response != null) {
                try {
                    if (response.getCode() == 600) {
                        CommonService.this.y1(this.f72508a.getGameId(), 50);
                        DataGameListBean data = response.getData();
                        if (data != null) {
                            List<GamedownRecomendItemBean> gameList = data.getGameList();
                            DomainInfoBean pdInfo = data.getPdInfo();
                            if (pdInfo != null) {
                                pdInfo.setGameId(this.f72508a.getGameId());
                                this.f72508a.setPdInfo(pdInfo);
                            }
                            if (gameList.size() > 0) {
                                GamedownRecomendItemBean gamedownRecomendItemBean = gameList.get(0);
                                gamedownRecomendItemBean.setRecPosition(this.f72508a.getRecPosition());
                                gamedownRecomendItemBean.setReMarks(this.f72508a.getRemarks());
                                gamedownRecomendItemBean.setNodeId(this.f72508a.getNodeId());
                                gamedownRecomendItemBean.set_from(this.f72508a.getFrom());
                                gamedownRecomendItemBean.set_from_type(this.f72508a.getFromType());
                                if (t2.i(this.f72508a.getVolcanoOther())) {
                                    gamedownRecomendItemBean.setPosition_path((VolcanoOther) JsonMapper.getInstance().fromJson(this.f72508a.getVolcanoOther(), VolcanoOther.class));
                                }
                                int i10 = this.f72509b;
                                if (i10 == 1) {
                                    DownloadTask downloadTaskBuildDownloadTask = gamedownRecomendItemBean.buildDownloadTask();
                                    if (this.f72508a != null) {
                                        DownloadTask downloadTaskG = q5.f.M().G(this.f72508a.getGameId());
                                        if (downloadTaskG != null) {
                                            UtilsMy.V4(downloadTaskBuildDownloadTask, downloadTaskG);
                                            downloadTaskBuildDownloadTask.setId(downloadTaskG.getId());
                                        }
                                        downloadTaskBuildDownloadTask.setKeyword(this.f72508a.getKeyWord());
                                        downloadTaskBuildDownloadTask.set_from(this.f72508a.getFrom());
                                        downloadTaskBuildDownloadTask.set_from_type(this.f72508a.getFromType());
                                        downloadTaskBuildDownloadTask.setExt(this.f72508a.getExt());
                                        downloadTaskBuildDownloadTask.setExt1(this.f72508a.getExt1());
                                    }
                                    if (downloadTaskBuildDownloadTask.getDown_status() == 5) {
                                        UtilsMy.l1(CommonService.this.f72464n, downloadTaskBuildDownloadTask);
                                        return;
                                    } else {
                                        com.php25.PDownload.d.c(downloadTaskBuildDownloadTask, CommonService.this.f72464n);
                                        return;
                                    }
                                }
                                if (i10 != 2) {
                                    DownloadTask downloadTaskBuildDownloadTask2 = gamedownRecomendItemBean.buildDownloadTask();
                                    boolean zF = d2.f(gamedownRecomendItemBean.getTag_info());
                                    if (!(d2.r() || d2.t() || d2.n() || d2.o()) || gamedownRecomendItemBean.getWeb_disk_info() == null || gamedownRecomendItemBean.isCpsGame()) {
                                        if (zF) {
                                            Dtype dtype = Dtype.android;
                                            downloadTaskBuildDownloadTask2.setFileType(dtype.name());
                                            downloadTaskBuildDownloadTask2.setRomType(dtype.name());
                                        }
                                        CommonService.this.L1(this.f72508a, gamedownRecomendItemBean, downloadTaskBuildDownloadTask2);
                                        return;
                                    }
                                    if (zF) {
                                        if (gamedownRecomendItemBean.getWeb_disk_info() == null) {
                                            gamedownRecomendItemBean.setWeb_disk_info(new WebDiskInfo());
                                        }
                                        gamedownRecomendItemBean.getWeb_disk_info().setGameId(this.f72508a.getGameId());
                                        ((QuarkDownGameActivity_.a) QuarkDownGameActivity_.intent(CommonService.this.f72464n).flags(C.ENCODING_PCM_MU_LAW)).e(gamedownRecomendItemBean.getWeb_disk_info()).a(gamedownRecomendItemBean.getExt_info()).c(gamedownRecomendItemBean.getGame_id()).d(gamedownRecomendItemBean.getGame_name()).b(gamedownRecomendItemBean.getIco_remote()).start();
                                        return;
                                    }
                                    if (!d2.h() || ((!d2.r() || !UtilsMy.x2(gamedownRecomendItemBean.getTag_info())) && (!d2.o() || !UtilsMy.w2(Integer.parseInt(gamedownRecomendItemBean.getPlugin_num()))))) {
                                        CommonService.this.L1(this.f72508a, gamedownRecomendItemBean, downloadTaskBuildDownloadTask2);
                                        return;
                                    }
                                    DownloadArgs downloadArgs = new DownloadArgs();
                                    gamedownRecomendItemBean.setExt(this.f72508a.getExt());
                                    downloadArgs.setDownloadTask(downloadTaskBuildDownloadTask2);
                                    downloadArgs.setGameInfo(gamedownRecomendItemBean);
                                    ((QuarkPromptActivity_.d) QuarkPromptActivity_.intent(CommonService.this.f72464n).flags(C.ENCODING_PCM_MU_LAW)).b(gamedownRecomendItemBean.getCrc_sign_id()).a(downloadArgs).start();
                                    return;
                                }
                                DownloadTask downloadTaskBuildDownloadTask3 = gamedownRecomendItemBean.buildDownloadTask();
                                DownloadTask downloadTaskG2 = q5.f.M().G(this.f72508a.getGameId());
                                if (this.f72508a != null) {
                                    if (downloadTaskG2 != null) {
                                        UtilsMy.V4(downloadTaskBuildDownloadTask3, downloadTaskG2);
                                        downloadTaskBuildDownloadTask3.setId(downloadTaskG2.getId());
                                    }
                                    downloadTaskBuildDownloadTask3.setKeyword(this.f72508a.getKeyWord());
                                    downloadTaskBuildDownloadTask3.set_from(this.f72508a.getFrom());
                                    downloadTaskBuildDownloadTask3.set_from_type(this.f72508a.getFromType());
                                    downloadTaskBuildDownloadTask3.setExt(this.f72508a.getExt());
                                    downloadTaskBuildDownloadTask3.setExt1(this.f72508a.getExt1());
                                    downloadTaskBuildDownloadTask3.setVer(gamedownRecomendItemBean.getVer());
                                    downloadTaskBuildDownloadTask3.setVer_name(gamedownRecomendItemBean.getVer_name());
                                    downloadTaskBuildDownloadTask3.setUrl(gamedownRecomendItemBean.getDown_url_remote());
                                }
                                if (downloadTaskBuildDownloadTask3.getDown_status() == 5) {
                                    UtilsMy.l1(CommonService.this.f72464n, downloadTaskBuildDownloadTask3);
                                    return;
                                }
                                HashMap map = new HashMap(1);
                                map.put("crc_sign_id", downloadTaskBuildDownloadTask3.getCrc_link_type_val());
                                List<EMUUpdateTable> listH = t6.q.o().h(map);
                                EMUUpdateTable eMUUpdateTable = (listH == null || listH.size() <= 0) ? null : listH.get(0);
                                if (eMUUpdateTable == null) {
                                    com.php25.PDownload.d.c(downloadTaskBuildDownloadTask3, CommonService.this.f72464n);
                                    return;
                                }
                                downloadTaskBuildDownloadTask3.setVer(eMUUpdateTable.getVer());
                                downloadTaskBuildDownloadTask3.setVer_name(eMUUpdateTable.getVer_name());
                                downloadTaskBuildDownloadTask3.setUrl(eMUUpdateTable.getDown_url_remote());
                                q5.f.M().m(downloadTaskBuildDownloadTask3);
                                UtilsMy.N0(downloadTaskBuildDownloadTask3);
                                if (UtilsMy.y0(downloadTaskBuildDownloadTask3.getPay_game_amount(), downloadTaskBuildDownloadTask3.getCrc_link_type_val()) > 0) {
                                    UtilsMy.z4(CommonService.this.f72464n, downloadTaskBuildDownloadTask3.getCrc_link_type_val());
                                    return;
                                } else {
                                    UtilsMy.U0(CommonService.this.f72464n, downloadTaskBuildDownloadTask3, downloadTaskBuildDownloadTask3.getTp_down_url(), downloadTaskBuildDownloadTask3.getOther_down_switch(), downloadTaskBuildDownloadTask3.getCdn_down_switch());
                                    return;
                                }
                            }
                            return;
                        }
                        return;
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                    CommonService.this.y1(this.f72508a.getGameId(), 49);
                    CommonService.this.t0("获取游戏信息失败");
                    return;
                }
            }
            CommonService.this.y1(this.f72508a.getGameId(), 49);
            CommonService.this.t0("获取游戏信息失败");
        }
    }

    class m extends m6.e {
        m() {
        }

        @Override // m6.e, com.join.mgps.callbacks.x
        public void a(Activity activity) {
            super.a(activity);
            activity.finish();
        }
    }

    class n extends m6.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ WarningDialogActivity.WarningDialogParam f72512a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DownloadGameArgsBean f72513b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ CollectionBeanSub f72514c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ DownloadTask f72515d;

        n(final WarningDialogActivity.WarningDialogParam val$params, final DownloadGameArgsBean val$argsBean, final CollectionBeanSub val$collectionBeanSub, final DownloadTask val$downloadTask) {
            this.f72512a = val$params;
            this.f72513b = val$argsBean;
            this.f72514c = val$collectionBeanSub;
            this.f72515d = val$downloadTask;
        }

        @Override // m6.e, com.join.mgps.callbacks.x
        public void a(Activity activity) {
            super.a(activity);
            activity.finish();
            if (this.f72512a.getType() == 0) {
                CommonService.this.j0(this.f72513b, this.f72514c, this.f72515d);
            }
        }

        @Override // m6.e, com.join.mgps.callbacks.x
        public void b(Activity activity) {
            super.b(activity);
            activity.finish();
            if (this.f72512a.getType() == 2) {
                CommonService.this.j0(this.f72513b, this.f72514c, this.f72515d);
            }
        }

        @Override // m6.e, com.join.mgps.callbacks.x
        public void d(Activity activity) {
            super.d(activity);
            activity.finish();
            ModInfoBean mod_info = this.f72514c.getMod_info();
            String game_id = this.f72514c.getGame_id();
            if (mod_info != null) {
                game_id = mod_info.getMod_game_id();
            }
            if (q5.f.M().L(game_id) == null) {
                DownloadTask downloadTaskBuildDownloadTask = this.f72514c.buildDownloadTask();
                downloadTaskBuildDownloadTask.setCrc_link_type_val("cld_" + game_id);
                downloadTaskBuildDownloadTask.setRef_crc_sign_id(this.f72514c.getGame_id());
                Dtype dtype = Dtype.CLOUD;
                downloadTaskBuildDownloadTask.setFileType(dtype.name());
                downloadTaskBuildDownloadTask.setRomType(dtype.name());
                downloadTaskBuildDownloadTask.setStatus(5);
                q5.f.M().m(downloadTaskBuildDownloadTask);
                org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.r(downloadTaskBuildDownloadTask, 5));
            }
            ExtBean extBean = new ExtBean();
            extBean.setTypeCode(EventP.TypeCode.cloudGame.name());
            extBean.setChatId(EventP.ChatId.gameDownloadNoCpuTips.name()).setResourceId(this.f72515d.getCrc_link_type_val().replace("cld_", "")).setGameId(this.f72515d.getCrc_link_type_val().replace("cld_", ""));
            extBean.buildScene();
            w0.h().s(CommonService.this.f72464n, game_id, extBean);
            com.papa.sim.statistic.t.l(CommonService.this.f72464n).R1(Event.gameStart, extBean.toExt());
        }

        @Override // m6.e, com.join.kotlin.base.dialog.callback.IDialogActivityCallback
        public void onActivityShow(@NonNull Activity activity) {
            super.onActivityShow(activity);
            ExtBean extBean = new ExtBean();
            extBean.setTypeCode(EventP.TypeCode.page.name());
            extBean.setChatId(EventP.ChatId.gameDownloadNoCpuTips.name()).setResourceId(this.f72515d.getCrc_link_type_val().replace("cld_", "")).setGameId(this.f72515d.getCrc_link_type_val().replace("cld_", ""));
            extBean.buildScene();
            com.papa.sim.statistic.t.l(CommonService.this.f72464n).R1(Event.commonExp, extBean.toExt());
        }
    }

    class o implements Callback<ResponseModel<DataGameListBean>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f72517b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f72518c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f72519d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ int f72520e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ int f72521f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ DownloadGameArgsBean f72522g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final /* synthetic */ boolean f72523h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        final /* synthetic */ String f72524i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        final /* synthetic */ String f72525j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        final /* synthetic */ QueryDownloadInfoRequestArgs f72526k;

        o(final String val$recPosition, final String val$remarks, final String val$nodeId, final int val$_from, final int val$_from_type, final DownloadGameArgsBean val$argsBean, final boolean val$fromRecom, final String val$keyWord, final String val$extStr, final QueryDownloadInfoRequestArgs val$args) {
            this.f72517b = val$recPosition;
            this.f72518c = val$remarks;
            this.f72519d = val$nodeId;
            this.f72520e = val$_from;
            this.f72521f = val$_from_type;
            this.f72522g = val$argsBean;
            this.f72523h = val$fromRecom;
            this.f72524i = val$keyWord;
            this.f72525j = val$extStr;
            this.f72526k = val$args;
        }

        @Override // retrofit2.Callback
        public void onFailure(Call<ResponseModel<DataGameListBean>> call, Throwable t10) {
            CommonService.this.t0("获取游戏信息失败");
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // retrofit2.Callback
        public void onResponse(Call<ResponseModel<DataGameListBean>> call, Response<ResponseModel<DataGameListBean>> response) {
            ResponseModel<DataGameListBean> responseModelBody;
            DataGameListBean data;
            if (response != null) {
                try {
                    if (response.body() == null || (responseModelBody = response.body()) == null || responseModelBody.getCode() != 600 || (data = responseModelBody.getData()) == null) {
                        return;
                    }
                    List<GamedownRecomendItemBean> gameList = data.getGameList();
                    DomainInfoBean pdInfo = data.getPdInfo();
                    if (gameList.size() > 0) {
                        GamedownRecomendItemBean gamedownRecomendItemBean = gameList.get(0);
                        gamedownRecomendItemBean.setRecPosition(this.f72517b);
                        gamedownRecomendItemBean.setReMarks(this.f72518c);
                        gamedownRecomendItemBean.setNodeId(this.f72519d);
                        gamedownRecomendItemBean.set_from(this.f72520e);
                        gamedownRecomendItemBean.set_from_type(this.f72521f);
                        if (t2.i(this.f72522g.getVolcanoOther())) {
                            gamedownRecomendItemBean.setPosition_path((VolcanoOther) JsonMapper.getInstance().fromJson(this.f72522g.getVolcanoOther(), VolcanoOther.class));
                        }
                        DownloadTask downloadTaskBuildDownloadTask = gamedownRecomendItemBean.buildDownloadTask();
                        downloadTaskBuildDownloadTask.set_from(this.f72520e);
                        downloadTaskBuildDownloadTask.set_from_type(this.f72521f);
                        downloadTaskBuildDownloadTask.setFromRecomDown(this.f72523h);
                        downloadTaskBuildDownloadTask.setKeyword(this.f72524i);
                        downloadTaskBuildDownloadTask.setExt(this.f72525j);
                        String packagePath = this.f72522g.getPackagePath();
                        if (!TextUtils.isEmpty(packagePath) && new File(packagePath).exists()) {
                            downloadTaskBuildDownloadTask.setGameZipPath(this.f72522g.getPackagePath());
                            downloadTaskBuildDownloadTask.setPath(this.f72522g.getPackagePath());
                        }
                        if (pdInfo != null) {
                            pdInfo.setGameId(this.f72522g.getGameId());
                            this.f72522g.setPdInfo(pdInfo);
                        }
                        boolean zF = d2.f(gamedownRecomendItemBean.getTag_info());
                        if (!(d2.r() || d2.t() || d2.n() || d2.o()) || gamedownRecomendItemBean.getWeb_disk_info() == null || gamedownRecomendItemBean.isCpsGame()) {
                            if (zF) {
                                Dtype dtype = Dtype.android;
                                downloadTaskBuildDownloadTask.setFileType(dtype.name());
                                downloadTaskBuildDownloadTask.setRomType(dtype.name());
                            }
                            CommonService.this.L1(this.f72522g, gamedownRecomendItemBean, downloadTaskBuildDownloadTask);
                            return;
                        }
                        if (zF) {
                            if (gamedownRecomendItemBean.getWeb_disk_info() == null) {
                                gamedownRecomendItemBean.setWeb_disk_info(new WebDiskInfo());
                            }
                            gamedownRecomendItemBean.getWeb_disk_info().setGameId(this.f72526k.getGameId());
                            ((QuarkDownGameActivity_.a) QuarkDownGameActivity_.intent(CommonService.this.f72464n).flags(C.ENCODING_PCM_MU_LAW)).e(gamedownRecomendItemBean.getWeb_disk_info()).a(gamedownRecomendItemBean.getExt_info()).c(gamedownRecomendItemBean.getGame_id()).d(gamedownRecomendItemBean.getGame_name()).b(gamedownRecomendItemBean.getIco_remote()).start();
                            return;
                        }
                        if (!d2.h() || ((!d2.r() || !UtilsMy.x2(gamedownRecomendItemBean.getTag_info())) && (!d2.o() || !UtilsMy.w2(Integer.parseInt(gamedownRecomendItemBean.getPlugin_num()))))) {
                            CommonService.this.L1(this.f72522g, gamedownRecomendItemBean, downloadTaskBuildDownloadTask);
                            return;
                        }
                        DownloadArgs downloadArgs = new DownloadArgs();
                        gamedownRecomendItemBean.setExt(this.f72522g.getExt());
                        com.php25.PDownload.d.h(downloadTaskBuildDownloadTask);
                        downloadArgs.setDownloadTask(downloadTaskBuildDownloadTask);
                        downloadArgs.setGameInfo(gamedownRecomendItemBean);
                        downloadArgs.setFrom(this.f72522g.getFrom());
                        ((QuarkPromptActivity_.d) QuarkPromptActivity_.intent(CommonService.this.f72464n).flags(C.ENCODING_PCM_MU_LAW)).b(gamedownRecomendItemBean.getCrc_sign_id()).a(downloadArgs).start();
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                    CommonService.this.t0("获取游戏信息失败");
                }
            }
        }
    }

    class p implements com.join.android.app.common.http.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f72528a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f72529b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f72530c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ UserInfo f72531d;

        p(final boolean val$fromSdk, final String val$appkey, final String val$gameid, final UserInfo val$accountBean) {
            this.f72528a = val$fromSdk;
            this.f72529b = val$appkey;
            this.f72530c = val$gameid;
            this.f72531d = val$accountBean;
        }

        @Override // com.join.android.app.common.http.b
        public void a(Object o10) {
            CommonService.this.t0("获取游戏信息失败");
        }

        @Override // com.join.android.app.common.http.b
        public void onSuccess(Object o10) {
            ResultMainBean resultMainBean = (ResultMainBean) o10;
            if (resultMainBean == null || resultMainBean.getFlag() == 0) {
                if (resultMainBean == null || resultMainBean.getFlag() == 0) {
                    CommonService.this.t0("获取游戏信息失败");
                    return;
                } else {
                    CommonService.this.t0("获取游戏信息失败");
                    return;
                }
            }
            PayGameDetialBean payGameDetialBean = (PayGameDetialBean) resultMainBean.getMessages().getData();
            if (payGameDetialBean != null) {
                if (payGameDetialBean.getGame_info() == null) {
                    CommonService.this.O1(this.f72530c, payGameDetialBean.getOrder_info(), this.f72531d, this.f72528a, this.f72529b);
                    return;
                }
                Intent intent = new Intent(p5.a.G);
                intent.putExtra("gameData", payGameDetialBean.getGame_info());
                CommonService.this.sendBroadcast(intent);
                if (this.f72528a) {
                    CommonService.this.sendBroadcast(new Intent("com.join,mgps.sim.sdkgamePayfinish"));
                    x1.c().e(CommonService.this.f72464n, this.f72529b, this.f72530c);
                }
                CommonService.this.J1(payGameDetialBean.getGame_info(), false);
            }
        }
    }

    class q implements Callback<ResponseModel<DataGameListBean>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f72533b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f72534c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ QueryDownloadInfoResponseData f72535d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ boolean f72536e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f72537f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ boolean f72538g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final /* synthetic */ boolean f72539h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        final /* synthetic */ DownloadGameArgsBean f72540i;

        q(final int val$from, final int val$fromType, final QueryDownloadInfoResponseData val$data, final boolean val$uncheckSelfSupport, final String val$ext, final boolean val$disableShowSpeedUpPrompt, final boolean val$fromRecomDown, final DownloadGameArgsBean val$downArgs) {
            this.f72533b = val$from;
            this.f72534c = val$fromType;
            this.f72535d = val$data;
            this.f72536e = val$uncheckSelfSupport;
            this.f72537f = val$ext;
            this.f72538g = val$disableShowSpeedUpPrompt;
            this.f72539h = val$fromRecomDown;
            this.f72540i = val$downArgs;
        }

        @Override // retrofit2.Callback
        public void onFailure(Call<ResponseModel<DataGameListBean>> call, Throwable t10) {
            CommonService.this.t0("获取游戏信息失败");
        }

        @Override // retrofit2.Callback
        public void onResponse(Call<ResponseModel<DataGameListBean>> call, Response<ResponseModel<DataGameListBean>> response) {
            ResponseModel<DataGameListBean> responseModelBody;
            DataGameListBean data;
            GamedownRecomendItemBean gamedownRecomendItemBean;
            if (response != null) {
                try {
                    if (response.body() == null || (responseModelBody = response.body()) == null || responseModelBody.getCode() != 600 || (data = responseModelBody.getData()) == null) {
                        return;
                    }
                    List<GamedownRecomendItemBean> gameList = data.getGameList();
                    if (gameList.size() <= 0 || (gamedownRecomendItemBean = gameList.get(0)) == null) {
                        return;
                    }
                    gamedownRecomendItemBean.set_from(this.f72533b);
                    gamedownRecomendItemBean.set_from_type(this.f72534c);
                    QueryDownloadInfoResponseData queryDownloadInfoResponseData = this.f72535d;
                    if (queryDownloadInfoResponseData != null) {
                        gamedownRecomendItemBean.setResourceSize(queryDownloadInfoResponseData.getResourceSize());
                        gamedownRecomendItemBean.setActual_size(this.f72535d.getActualSize());
                        gamedownRecomendItemBean.setDown_url_remote(this.f72535d.getDownloadURL());
                        gamedownRecomendItemBean.setResourceUrl(this.f72535d.getResourceURL());
                    }
                    CommonService.this.K1(gamedownRecomendItemBean, true, this.f72536e, this.f72537f, this.f72538g, this.f72539h, this.f72540i);
                } catch (Exception e10) {
                    e10.printStackTrace();
                    CommonService.this.t0("获取游戏信息失败");
                }
            }
        }
    }

    class r extends m6.e {
        r() {
        }

        @Override // m6.e, com.join.mgps.callbacks.x
        public void a(Activity activity) {
            super.a(activity);
            activity.finish();
        }
    }

    private class s implements Runnable {
        private s() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CommonService.this.B();
        }

        /* synthetic */ s(CommonService commonService, j jVar) {
            this();
        }
    }

    public class t implements Runnable {
        public t() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (com.join.android.app.common.utils.m.j(CommonService.this.getApplicationContext())) {
                CommonService.this.g0();
                CommonService.this.h0();
                CommonService.this.i0(1);
            }
        }
    }

    class u implements Runnable {
        u() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CommonService.this.e0();
        }
    }

    static class v extends Handler {
        v() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
        }
    }

    private void A1(ControllerManager.c device) {
        com.papa.sim.statistic.t.l(this.f72464n).b0(AccountUtil_.getInstance_(this.f72464n).getUid(), AccountUtil_.getInstance_(this.f72464n).isTourist(), device.d(), device.a(), 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B() {
        if (U) {
            y0();
            u();
            y();
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x008b A[Catch: Exception -> 0x00dc, TryCatch #1 {Exception -> 0x00dc, blocks: (B:16:0x0085, B:18:0x008b, B:19:0x008e, B:21:0x00b2, B:22:0x00bf, B:24:0x00c6, B:25:0x00cb, B:27:0x00d2, B:29:0x00d8), top: B:43:0x0085 }] */
    /* JADX WARN: Code duplicated, block: B:21:0x00b2 A[Catch: Exception -> 0x00dc, TryCatch #1 {Exception -> 0x00dc, blocks: (B:16:0x0085, B:18:0x008b, B:19:0x008e, B:21:0x00b2, B:22:0x00bf, B:24:0x00c6, B:25:0x00cb, B:27:0x00d2, B:29:0x00d8), top: B:43:0x0085 }] */
    /* JADX WARN: Code duplicated, block: B:24:0x00c6 A[Catch: Exception -> 0x00dc, LOOP:0: B:22:0x00bf->B:24:0x00c6, LOOP_END, TryCatch #1 {Exception -> 0x00dc, blocks: (B:16:0x0085, B:18:0x008b, B:19:0x008e, B:21:0x00b2, B:22:0x00bf, B:24:0x00c6, B:25:0x00cb, B:27:0x00d2, B:29:0x00d8), top: B:43:0x0085 }] */
    /* JADX WARN: Code duplicated, block: B:27:0x00d2 A[Catch: Exception -> 0x00dc, TryCatch #1 {Exception -> 0x00dc, blocks: (B:16:0x0085, B:18:0x008b, B:19:0x008e, B:21:0x00b2, B:22:0x00bf, B:24:0x00c6, B:25:0x00cb, B:27:0x00d2, B:29:0x00d8), top: B:43:0x0085 }] */
    /* JADX WARN: Code duplicated, block: B:29:0x00d8 A[Catch: Exception -> 0x00dc, TRY_LEAVE, TryCatch #1 {Exception -> 0x00dc, blocks: (B:16:0x0085, B:18:0x008b, B:19:0x008e, B:21:0x00b2, B:22:0x00bf, B:24:0x00c6, B:25:0x00cb, B:27:0x00d2, B:29:0x00d8), top: B:43:0x0085 }] */
    /* JADX WARN: Code duplicated, block: B:46:0x00cb A[SYNTHETIC] */
    private String C(String imageUrl) {
        File file;
        String str;
        HttpURLConnection httpURLConnection;
        InputStream inputStream;
        FileOutputStream fileOutputStream;
        byte[] bArr;
        int i10;
        try {
            File file2 = new File(this.f72466p);
            String str2 = System.currentTimeMillis() + ".png";
            if (!file2.exists()) {
                file2.mkdirs();
            }
            try {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(z.f50164c);
                String str3 = File.separator;
                sb2.append(str3);
                sb2.append("MG");
                sb2.append(str3);
                sb2.append(".nomedia");
                File file3 = new File(sb2.toString());
                if (file3.exists()) {
                    str = this.f72466p + File.separator + str2;
                    file = new File(str);
                    try {
                        if (file.exists()) {
                            UtilsMy.delete(file);
                        }
                        file.createNewFile();
                        httpURLConnection = (HttpURLConnection) new URL(imageUrl).openConnection();
                        httpURLConnection.setConnectTimeout(5000);
                        httpURLConnection.setRequestMethod("GET");
                        httpURLConnection.setDoInput(true);
                        if (httpURLConnection.getResponseCode() == 200) {
                            inputStream = httpURLConnection.getInputStream();
                            fileOutputStream = new FileOutputStream(file);
                            bArr = new byte[1024];
                            while (true) {
                                i10 = inputStream.read(bArr);
                                if (i10 != -1) {
                                    inputStream.close();
                                    fileOutputStream.close();
                                    return str;
                                }
                                fileOutputStream.write(bArr, 0, i10);
                            }
                        } else if (file.exists()) {
                            UtilsMy.delete(file);
                        }
                    } catch (Exception e10) {
                        e = e10;
                        e.printStackTrace();
                        if (file != null && file.exists()) {
                            UtilsMy.delete(file);
                        }
                    }
                } else {
                    if (!file3.getParentFile().exists()) {
                        file3.getParentFile().mkdirs();
                    }
                    file3.createNewFile();
                    str = this.f72466p + File.separator + str2;
                    file = new File(str);
                    if (file.exists()) {
                        UtilsMy.delete(file);
                    }
                    file.createNewFile();
                    httpURLConnection = (HttpURLConnection) new URL(imageUrl).openConnection();
                    httpURLConnection.setConnectTimeout(5000);
                    httpURLConnection.setRequestMethod("GET");
                    httpURLConnection.setDoInput(true);
                    if (httpURLConnection.getResponseCode() == 200) {
                        inputStream = httpURLConnection.getInputStream();
                        fileOutputStream = new FileOutputStream(file);
                        bArr = new byte[1024];
                        while (true) {
                            i10 = inputStream.read(bArr);
                            if (i10 != -1) {
                                inputStream.close();
                                fileOutputStream.close();
                                return str;
                            }
                            fileOutputStream.write(bArr, 0, i10);
                        }
                    } else if (file.exists()) {
                        UtilsMy.delete(file);
                    }
                }
            } catch (IOException e11) {
                e11.printStackTrace();
            }
        } catch (Exception e12) {
            e = e12;
            file = null;
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x008b A[Catch: Exception -> 0x00dc, TryCatch #1 {Exception -> 0x00dc, blocks: (B:16:0x0085, B:18:0x008b, B:19:0x008e, B:21:0x00b2, B:22:0x00bf, B:24:0x00c6, B:25:0x00cb, B:27:0x00d2, B:29:0x00d8), top: B:43:0x0085 }] */
    /* JADX WARN: Code duplicated, block: B:21:0x00b2 A[Catch: Exception -> 0x00dc, TryCatch #1 {Exception -> 0x00dc, blocks: (B:16:0x0085, B:18:0x008b, B:19:0x008e, B:21:0x00b2, B:22:0x00bf, B:24:0x00c6, B:25:0x00cb, B:27:0x00d2, B:29:0x00d8), top: B:43:0x0085 }] */
    /* JADX WARN: Code duplicated, block: B:24:0x00c6 A[Catch: Exception -> 0x00dc, LOOP:0: B:22:0x00bf->B:24:0x00c6, LOOP_END, TryCatch #1 {Exception -> 0x00dc, blocks: (B:16:0x0085, B:18:0x008b, B:19:0x008e, B:21:0x00b2, B:22:0x00bf, B:24:0x00c6, B:25:0x00cb, B:27:0x00d2, B:29:0x00d8), top: B:43:0x0085 }] */
    /* JADX WARN: Code duplicated, block: B:27:0x00d2 A[Catch: Exception -> 0x00dc, TryCatch #1 {Exception -> 0x00dc, blocks: (B:16:0x0085, B:18:0x008b, B:19:0x008e, B:21:0x00b2, B:22:0x00bf, B:24:0x00c6, B:25:0x00cb, B:27:0x00d2, B:29:0x00d8), top: B:43:0x0085 }] */
    /* JADX WARN: Code duplicated, block: B:29:0x00d8 A[Catch: Exception -> 0x00dc, TRY_LEAVE, TryCatch #1 {Exception -> 0x00dc, blocks: (B:16:0x0085, B:18:0x008b, B:19:0x008e, B:21:0x00b2, B:22:0x00bf, B:24:0x00c6, B:25:0x00cb, B:27:0x00d2, B:29:0x00d8), top: B:43:0x0085 }] */
    /* JADX WARN: Code duplicated, block: B:46:0x00cb A[SYNTHETIC] */
    private String D(String imageUrl) {
        File file;
        String str;
        HttpURLConnection httpURLConnection;
        InputStream inputStream;
        FileOutputStream fileOutputStream;
        byte[] bArr;
        int i10;
        try {
            File file2 = new File(this.f72466p);
            String str2 = System.currentTimeMillis() + ".mp4";
            if (!file2.exists()) {
                file2.mkdirs();
            }
            try {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(z.f50164c);
                String str3 = File.separator;
                sb2.append(str3);
                sb2.append("MG");
                sb2.append(str3);
                sb2.append(".nomedia");
                File file3 = new File(sb2.toString());
                if (file3.exists()) {
                    str = this.f72466p + File.separator + str2;
                    file = new File(str);
                    try {
                        if (file.exists()) {
                            UtilsMy.delete(file);
                        }
                        file.createNewFile();
                        httpURLConnection = (HttpURLConnection) new URL(imageUrl).openConnection();
                        httpURLConnection.setConnectTimeout(5000);
                        httpURLConnection.setRequestMethod("GET");
                        httpURLConnection.setDoInput(true);
                        if (httpURLConnection.getResponseCode() == 200) {
                            inputStream = httpURLConnection.getInputStream();
                            fileOutputStream = new FileOutputStream(file);
                            bArr = new byte[1024];
                            while (true) {
                                i10 = inputStream.read(bArr);
                                if (i10 != -1) {
                                    inputStream.close();
                                    fileOutputStream.close();
                                    return str;
                                }
                                fileOutputStream.write(bArr, 0, i10);
                            }
                        } else if (file.exists()) {
                            UtilsMy.delete(file);
                        }
                    } catch (Exception e10) {
                        e = e10;
                        e.printStackTrace();
                        if (file != null && file.exists()) {
                            UtilsMy.delete(file);
                        }
                    }
                } else {
                    if (!file3.getParentFile().exists()) {
                        file3.getParentFile().mkdirs();
                    }
                    file3.createNewFile();
                    str = this.f72466p + File.separator + str2;
                    file = new File(str);
                    if (file.exists()) {
                        UtilsMy.delete(file);
                    }
                    file.createNewFile();
                    httpURLConnection = (HttpURLConnection) new URL(imageUrl).openConnection();
                    httpURLConnection.setConnectTimeout(5000);
                    httpURLConnection.setRequestMethod("GET");
                    httpURLConnection.setDoInput(true);
                    if (httpURLConnection.getResponseCode() == 200) {
                        inputStream = httpURLConnection.getInputStream();
                        fileOutputStream = new FileOutputStream(file);
                        bArr = new byte[1024];
                        while (true) {
                            i10 = inputStream.read(bArr);
                            if (i10 != -1) {
                                inputStream.close();
                                fileOutputStream.close();
                                return str;
                            }
                            fileOutputStream.write(bArr, 0, i10);
                        }
                    } else if (file.exists()) {
                        UtilsMy.delete(file);
                    }
                }
            } catch (IOException e11) {
                e11.printStackTrace();
            }
        } catch (Exception e12) {
            e = e12;
            file = null;
        }
        return null;
    }

    public static List<String> I(String path) {
        String[] list;
        ArrayList arrayList = new ArrayList();
        File file = new File(path);
        if (!file.exists() || !file.isDirectory() || (list = file.list()) == null) {
            return arrayList;
        }
        for (String str : list) {
            File file2 = new File(file, str);
            if (!file2.isFile()) {
                List<String> listI = I(file2.getAbsolutePath());
                if (listI.size() != 0) {
                    arrayList.addAll(listI);
                }
            } else if (str.endsWith(".apk") || str.endsWith(".zip")) {
                arrayList.add(file2.getAbsolutePath());
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void L1(DownloadGameArgsBean argsBean, CollectionBeanSub collectionBeanSub, DownloadTask downloadTask) {
        int i10;
        if (argsBean != null) {
            collectionBeanSub.setRecPosition(argsBean.getRecPosition());
            collectionBeanSub.setReMarks(argsBean.getRemarks());
            collectionBeanSub.setNodeId(argsBean.getNodeId());
            collectionBeanSub.set_from(argsBean.getFrom());
            collectionBeanSub.set_from_type(argsBean.getFromType());
            if (t2.i(argsBean.getVolcanoOther())) {
                collectionBeanSub.setPosition_path((VolcanoOther) JsonMapper.getInstance().fromJson(argsBean.getVolcanoOther(), VolcanoOther.class));
            }
            downloadTask.set_from(argsBean.getFrom());
            downloadTask.set_from_type(argsBean.getFromType());
            downloadTask.setFromRecomDown(argsBean.isFromRecommend());
            downloadTask.setKeyword(argsBean.getKeyWord());
            downloadTask.setExt(argsBean.getExt());
            downloadTask.setExt1(argsBean.getExt1());
        }
        if (downloadTask.getPlugin_num().equals(ConstantIntEnum.H5.value() + "")) {
            IntentDateBean intentDateBean = new IntentDateBean();
            intentDateBean.setLink_type(4);
            intentDateBean.setLink_type_val(collectionBeanSub.getDown_url_remote());
            UtilsMy.j3(downloadTask, this.f72464n);
            q5.f.M().m(downloadTask);
            IntentUtil.getInstance().intentActivity(this.f72464n, intentDateBean);
            return;
        }
        if (UtilsMy.z0(collectionBeanSub.getPay_tag_info(), collectionBeanSub.getCrc_sign_id()) > 0) {
            UtilsMy.z4(this.f72464n, downloadTask.getCrc_link_type_val());
            return;
        }
        UtilsMy.z1(downloadTask, collectionBeanSub);
        if (APKUtils.m() == 32 && downloadTask.getCpu_type() == 64) {
            WarningDialogActivity.WarningDialogParam warningDialogParam = new WarningDialogActivity.WarningDialogParam();
            warningDialogParam.setType(1);
            warningDialogParam.setGameId(this.f72475y.getCrc_link_type_val());
            APKUtils.m();
            warningDialogParam.setTitle("请注意");
            warningDialogParam.setContent("此游戏仅支持64位手机，您的设备无法正常运行此游戏");
            warningDialogParam.setConfirm("我知道了");
            Intent intent = new Intent();
            intent.putExtra(WarningDialogActivity.KEY_PARAM, warningDialogParam);
            IntentUtil.getInstance().startActivityWithCallback(this.f72464n, WarningDialogActivity.class, intent, new m());
            com.papa.sim.statistic.t.l(this.f72464n).R1(Event.gameDownloadNoCpuTips, new Ext().setGameId(downloadTask.getCrc_link_type_val()));
            return;
        }
        if (downloadTask.getMax_an_compatible_ver() <= 0 || ((i10 = Build.VERSION.SDK_INT) >= downloadTask.getMin_an_compatible_ver() && i10 <= downloadTask.getMax_an_compatible_ver())) {
            j0(argsBean, collectionBeanSub, downloadTask);
            return;
        }
        this.f72475y = downloadTask;
        WarningDialogActivity.WarningDialogParam warningDialogParam2 = new WarningDialogActivity.WarningDialogParam();
        if (collectionBeanSub.isHmCloud() && w0.j()) {
            warningDialogParam2.setType(2);
            warningDialogParam2.setNegative("仍要下载");
        } else {
            warningDialogParam2.setType(0);
            warningDialogParam2.setPositive("仍要下载");
        }
        warningDialogParam2.setGameId(this.f72475y.getCrc_link_type_val());
        APKUtils.m();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("该游戏与安卓");
        String str = Build.VERSION.RELEASE;
        sb2.append(str);
        sb2.append("系统版本不兼容");
        warningDialogParam2.setTitle(sb2.toString());
        warningDialogParam2.setContent("该游戏在安卓" + str + "版本中可能存在闪退、显示效果不佳、运行不流畅等现象");
        Intent intent2 = new Intent();
        intent2.putExtra(WarningDialogActivity.KEY_PARAM, warningDialogParam2);
        IntentUtil.getInstance().startActivityWithCallback(this.f72464n, WarningDialogActivity.class, intent2, new n(warningDialogParam2, argsBean, collectionBeanSub, downloadTask));
        com.papa.sim.statistic.t.l(this.f72464n).R1(Event.gameDownloadNoCpuTips, new Ext().setGameId(downloadTask.getCrc_link_type_val()));
    }

    private void T() throws Throwable {
        EMUApkArenaTable eMUApkArenaTable;
        if (!com.join.android.app.common.utils.m.j(this)) {
            return;
        }
        ResultMainBean<List<ApkVersionbean>> resultMainBean = null;
        try {
            ResultMainBean<List<ApkVersionbean>> resultMainBeanF1 = com.join.mgps.rpc.impl.d.O1().F1(RequestBeanUtil.getInstance(this).getApkVersion(2, 2, 0));
            if (resultMainBeanF1 != null) {
                try {
                    try {
                        if (resultMainBeanF1.getFlag() == 1) {
                            for (ApkVersionbean apkVersionbean : resultMainBeanF1.getMessages().getData()) {
                                DownloadTask downloadTaskG = q5.f.M().G(apkVersionbean.getTag_id());
                                HashMap map = new HashMap();
                                map.put("tag_id", apkVersionbean.getTag_id());
                                List<EMUApkArenaTable> listH = t6.o.o().h(map);
                                if (listH == null || listH.size() <= 0) {
                                    EMUApkArenaTable eMUApkArenaTable2 = new EMUApkArenaTable();
                                    eMUApkArenaTable2.setApk_name(apkVersionbean.getApk_name());
                                    eMUApkArenaTable2.setDown_url(apkVersionbean.getDown_url());
                                    eMUApkArenaTable2.setLaunch_name(apkVersionbean.getLaunch_name());
                                    eMUApkArenaTable2.setLogo(apkVersionbean.getLogo());
                                    eMUApkArenaTable2.setPackage_name(apkVersionbean.getPackage_name());
                                    eMUApkArenaTable2.setRelease_date(apkVersionbean.getRelease_date());
                                    eMUApkArenaTable2.setSize(apkVersionbean.getSize());
                                    eMUApkArenaTable2.setTag_id(apkVersionbean.getTag_id());
                                    eMUApkArenaTable2.setTeam_info(apkVersionbean.getTeam_info());
                                    eMUApkArenaTable2.setVer(apkVersionbean.getVer());
                                    eMUApkArenaTable2.setVer_compatible(apkVersionbean.getVer_compatible());
                                    eMUApkArenaTable2.setVer_info(apkVersionbean.getVer_info());
                                    eMUApkArenaTable2.setDown_type(apkVersionbean.getDown_type());
                                    eMUApkArenaTable2.setRemark(JsonMapper.toJsonString(apkVersionbean.getPlugin_md5()));
                                    t6.o.o().k(eMUApkArenaTable2);
                                    com.join.android.app.common.utils.o.H(downloadTaskG, eMUApkArenaTable2);
                                    com.join.android.app.common.utils.o.E(eMUApkArenaTable2);
                                } else {
                                    if (listH.size() > 1) {
                                        for (int i10 = 0; i10 < listH.size(); i10++) {
                                            t6.o.o().delete(listH.get(i10));
                                        }
                                    }
                                    try {
                                        eMUApkArenaTable = listH.get(0);
                                        try {
                                            eMUApkArenaTable.setApk_name(apkVersionbean.getApk_name());
                                            eMUApkArenaTable.setDown_url(apkVersionbean.getDown_url());
                                            eMUApkArenaTable.setLaunch_name(apkVersionbean.getLaunch_name());
                                            eMUApkArenaTable.setLogo(apkVersionbean.getLogo());
                                            eMUApkArenaTable.setPackage_name(apkVersionbean.getPackage_name());
                                            eMUApkArenaTable.setRelease_date(apkVersionbean.getRelease_date());
                                            eMUApkArenaTable.setSize(apkVersionbean.getSize());
                                            eMUApkArenaTable.setTag_id(apkVersionbean.getTag_id());
                                            eMUApkArenaTable.setTeam_info(apkVersionbean.getTeam_info());
                                            eMUApkArenaTable.setVer(apkVersionbean.getVer());
                                            eMUApkArenaTable.setVer_compatible(apkVersionbean.getVer_compatible());
                                            eMUApkArenaTable.setVer_info(apkVersionbean.getVer_info());
                                            eMUApkArenaTable.setDown_type(apkVersionbean.getDown_type());
                                            eMUApkArenaTable.setRemark(JsonMapper.toJsonString(apkVersionbean.getPlugin_md5()));
                                            com.join.android.app.common.utils.o.H(downloadTaskG, eMUApkArenaTable);
                                        } catch (Exception e10) {
                                            e = e10;
                                            e.printStackTrace();
                                        }
                                    } catch (Exception e11) {
                                        e = e11;
                                        eMUApkArenaTable = null;
                                    }
                                    t6.o.o().update(eMUApkArenaTable);
                                    com.join.android.app.common.utils.o.E(eMUApkArenaTable);
                                }
                            }
                        }
                    } catch (Exception unused) {
                        resultMainBean = resultMainBeanF1;
                        if (resultMainBean != null || this.C <= 0) {
                            return;
                        }
                        g1.d("getEMUVersionForArena", "failed  " + this.f72456f);
                        this.C = this.C - 1;
                    }
                } catch (Throwable th) {
                    th = th;
                    resultMainBean = resultMainBeanF1;
                    if (resultMainBean == null && this.C > 0) {
                        g1.d("getEMUVersionForArena", "failed  " + this.f72456f);
                        this.C = this.C - 1;
                        try {
                            Thread.sleep(5000L);
                            T();
                        } catch (InterruptedException unused2) {
                        }
                    }
                    throw th;
                }
            }
            if (resultMainBeanF1 != null || this.C <= 0) {
                return;
            }
            g1.d("getEMUVersionForArena", "failed  " + this.f72456f);
            this.C = this.C - 1;
            try {
                Thread.sleep(5000L);
                T();
            } catch (InterruptedException unused3) {
            }
        } catch (Exception unused4) {
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private void Z(DownloadGameArgsBean argsBean) {
        try {
            String gameId = argsBean.getGameId();
            boolean zIsFromRecommend = argsBean.isFromRecommend();
            int from = argsBean.getFrom();
            int fromType = argsBean.getFromType();
            String keyWord = argsBean.getKeyWord();
            String recPosition = argsBean.getRecPosition();
            String remarks = argsBean.getRemarks();
            String nodeId = argsBean.getNodeId();
            String ext = argsBean.getExt();
            RequestModel<QueryDownloadInfoRequestArgs> requestModel = new RequestModel<>();
            requestModel.setDefault(this.f72464n);
            QueryDownloadInfoRequestArgs queryDownloadInfoRequestArgs = new QueryDownloadInfoRequestArgs();
            ArrayList arrayList = new ArrayList();
            arrayList.add(gameId);
            queryDownloadInfoRequestArgs.setGameIdList(arrayList);
            queryDownloadInfoRequestArgs.setLocation(argsBean.getLocation());
            requestModel.setArgs(queryDownloadInfoRequestArgs);
            com.join.mgps.rpc.impl.i.P0().N0().c1(requestModel).enqueue(new o(recPosition, remarks, nodeId, from, fromType, argsBean, zIsFromRecommend, keyWord, ext, queryDownloadInfoRequestArgs));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void a1() {
        try {
            if (!com.join.android.app.common.utils.m.j(this)) {
                new ForumBean.ForumProfilePostUserInfoBean();
                ForumTable forumTableO = t6.t.p().o(ForumBean.ForumEvent.ProfilePosts);
                if (forumTableO == null || t2.h(forumTableO.getArgs1()) || forumTableO.getArgs1().equals("\"\"")) {
                    return;
                }
                s0.I1(this).c1(r0.H(forumTableO.getArgs1()).getUser_info());
                return;
            }
            UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
            if (accountData != null && accountData.getUid() != 0) {
                ForumResponse<ForumData.ForumProfilePostsData> forumResponseH = com.join.mgps.rpc.impl.g.A0().h(accountData.getUid(), accountData.getToken(), 1, 0, "");
                ForumData.ForumProfilePostsData data = forumResponseH != null ? forumResponseH.getData() : null;
                if (data != null) {
                    ForumBean.ForumProfilePostUserInfoBean user_info = data.getUser_info();
                    r0.n1(data);
                    s0.I1(this).c1(user_info);
                }
            }
        } catch (Exception unused) {
        }
    }

    private void b1() {
        int unread = 0;
        if (!com.join.android.app.common.utils.m.j(this)) {
            ForumTable forumTableO = t6.t.p().o(ForumBean.ForumEvent.ProfileGetUnreadMessageCount);
            if (forumTableO != null && !t2.h(forumTableO.getArgs1())) {
                unread = r0.I(forumTableO.getArgs1()).getUnread();
            }
            s0.I1(this).b1(unread);
            return;
        }
        ForumData.ForumProfileUnreadMessageCountData data = null;
        try {
            try {
                UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
                if (accountData != null && accountData.getUid() != 0) {
                    ForumResponse<ForumData.ForumProfileUnreadMessageCountData> forumResponseD0 = com.join.mgps.rpc.impl.g.A0().d0(accountData.getUid(), accountData.getToken(), "");
                    data = forumResponseD0 != null ? forumResponseD0.getData() : null;
                    if (data != null) {
                        unread = data.getUnread();
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        } finally {
            r0.o1(null);
            s0.I1(this).b1(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j0(DownloadGameArgsBean argsBean, CollectionBeanSub collectionBeanSub, DownloadTask downloadTask) {
        if (collectionBeanSub.getDown_status() == 5) {
            UtilsMy.l1(this.f72464n, downloadTask);
        } else {
            UtilsMy.V0(this.f72464n, downloadTask, collectionBeanSub.getTp_down_url(), collectionBeanSub.getOther_down_switch(), collectionBeanSub.getCdn_down_switch(), argsBean);
        }
    }

    private void j1(DownloadGameArgsBean argsBean, int downloadType) {
        try {
            if (this.f72476z == null) {
                this.f72476z = com.join.mgps.rpc.impl.i.P0();
            }
            if (!com.join.android.app.common.utils.m.j(this.f72464n)) {
                y1(argsBean.getGameId(), 49);
            }
            RequestModel<QueryDownloadInfoRequestArgs> requestModel = new RequestModel<>();
            requestModel.setDefault(this.f72464n);
            QueryDownloadInfoRequestArgs queryDownloadInfoRequestArgs = new QueryDownloadInfoRequestArgs();
            ArrayList arrayList = new ArrayList();
            arrayList.add(argsBean.getGameId());
            queryDownloadInfoRequestArgs.setGameIdList(arrayList);
            queryDownloadInfoRequestArgs.setLocation(argsBean.getLocation());
            requestModel.setArgs(queryDownloadInfoRequestArgs);
            y1(argsBean.getGameId(), 47);
            this.f72476z.M0(requestModel, new l(argsBean, downloadType));
        } catch (Exception e10) {
            e10.printStackTrace();
            y1(argsBean.getGameId(), 49);
            t0("获取游戏信息失败");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean m0(String mac) {
        JoystickTable joystickTableN = a0.o().n(mac);
        if (joystickTableN == null) {
            return false;
        }
        return com.join.android.app.common.utils.i.h(joystickTableN.getTime().longValue());
    }

    private void n1(ControllerManager.c device) {
        if (device == null) {
            return;
        }
        JoystickTable joystickTable = new JoystickTable();
        joystickTable.setName(device.d());
        joystickTable.setMac(device.a());
        joystickTable.setTime(Long.valueOf(System.currentTimeMillis()));
        a0.o().k(joystickTable);
    }

    private boolean o0() {
        UserInfo accountData = AccountUtil_.getInstance_(this.f72464n).getAccountData();
        return accountData != null && t2.i(accountData.getToken());
    }

    private boolean p0() {
        try {
            List<ShowViewDataBeanTable> listD = i0.o().d();
            ArrayList arrayList = new ArrayList();
            Iterator<ShowViewDataBeanTable> it2 = listD.iterator();
            while (it2.hasNext()) {
                arrayList.add(it2.next().getShowVieDatabean());
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            ShowViewDataBean showViewDataBean = null;
            ShowViewDataBean showViewDataBean2 = null;
            for (int i10 = 0; i10 < arrayList.size(); i10++) {
                ShowViewDataBean showViewDataBean3 = (ShowViewDataBean) arrayList.get(i10);
                String is_force = showViewDataBean3.getIs_force();
                if (is_force.equals("1") && showViewDataBean3.getTag_show() != 2) {
                    long j10 = Long.parseLong(showViewDataBean3.getBegin_times()) * 1000;
                    long j11 = Long.parseLong(showViewDataBean3.getEnd_times()) * 1000;
                    if (jCurrentTimeMillis > j10 && jCurrentTimeMillis < j11) {
                        showViewDataBean = showViewDataBean3;
                    }
                } else if (!is_force.equals("1") && showViewDataBean3.getTag_show() != 2) {
                    long j12 = Long.parseLong(showViewDataBean3.getBegin_times()) * 1000;
                    long j13 = Long.parseLong(showViewDataBean3.getEnd_times()) * 1000;
                    if (jCurrentTimeMillis > j12 && jCurrentTimeMillis < j13 && showViewDataBean3.getJump_info().size() > 0 && showViewDataBean3.getTag_show() != 2) {
                        showViewDataBean2 = showViewDataBean3;
                    }
                }
            }
            if (showViewDataBean != null) {
                return F1(showViewDataBean);
            }
            if (showViewDataBean2 != null) {
                return F1(showViewDataBean2);
            }
            return false;
        } catch (Exception unused) {
        }
    }

    private void p1(ForumBannerBean.ForumBannerMessagesData data) {
        String strN = r0.n(data);
        ForumTable forumTable = new ForumTable();
        forumTable.setType(ForumBean.ForumEvent.ForumWelcomeBanner.name());
        forumTable.setArgs1(strN);
        forumTable.setTime(String.valueOf(System.currentTimeMillis() / 1000));
        t6.t.p().u(forumTable);
    }

    private void q0() {
        try {
            if (this.f72467q) {
                return;
            }
            N1();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void q1(ForumData.ForumForumWelcomeData forumWelcomeData) {
        String strP = r0.p(forumWelcomeData);
        ForumTable forumTable = new ForumTable();
        forumTable.setType(ForumBean.ForumEvent.ForumWelcome.name());
        forumTable.setArgs1(strP);
        forumTable.setTime(String.valueOf(System.currentTimeMillis() / 1000));
        t6.t.p().u(forumTable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void r0() {
        com.wufan.friend.chat.c.u().C();
    }

    private void r1(ForumData.ForumForumWelcomePostsData forumWelcomePostsData) {
        if (forumWelcomePostsData == null || forumWelcomePostsData.getPosts_list() == null || forumWelcomePostsData.getPosts_list().size() == 0) {
            return;
        }
        String strQ = r0.q(forumWelcomePostsData);
        ForumTable forumTable = new ForumTable();
        forumTable.setType(ForumBean.ForumEvent.ForumWelcomePosts.name());
        forumTable.setArgs1(strQ);
        forumTable.setTime(String.valueOf(System.currentTimeMillis() / 1000));
        t6.t.p().u(forumTable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void s0(LinkedHashMap linkedHashMap, String str) {
        k0((FileInfo) linkedHashMap.get(str), this.Q.get(str));
        this.P.remove(str);
    }

    private void u() {
        List<ForumTable> listR = t6.t.p().r(ForumBean.ForumEvent.PostsPraise);
        if (listR == null || listR.size() == 0) {
            return;
        }
        for (ForumTable forumTable : listR) {
            String args2 = forumTable.getArgs2();
            if (args2 != null && !t2.h(args2)) {
                ForumRequestBean.ForumPostsPraiseRequestBean forumPostsPraiseRequestBeanG = r0.G(forumTable.getArgs1());
                if (!r0.F(args2).isResult()) {
                    K0(forumPostsPraiseRequestBeanG.getPid());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w0(String... msg) {
        h1.e(msg);
    }

    private void y() {
        q5.f.M().v();
    }

    private void y0() {
        try {
            if (this.A == null) {
                q0();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y1(String gameId, int status) {
        org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.r(null, gameId, status));
    }

    private void z0(String gameid) {
        try {
            if (!com.join.android.app.common.utils.m.j(this.f72464n)) {
                t0("请检查网络！");
                return;
            }
            UserInfo accountData = AccountUtil_.getInstance_(this.f72464n).getAccountData();
            int uid = accountData != null ? accountData.getUid() : 0;
            if (IntentUtil.getInstance().goLogin(this.f72464n)) {
                t0("请先登录！");
                return;
            }
            String str = "";
            try {
                PackageInfo packageInfo = this.f72464n.getPackageManager().getPackageInfo(this.f72464n.getPackageName(), 0);
                str = packageInfo.versionCode + "_" + packageInfo.versionName;
            } catch (PackageManager.NameNotFoundException e10) {
                e10.printStackTrace();
            }
            RequestdetialFolowAndBeSpeak requestdetialFolowAndBeSpeak = new RequestdetialFolowAndBeSpeak();
            requestdetialFolowAndBeSpeak.setApp_ver(str);
            requestdetialFolowAndBeSpeak.setGame_id(gameid);
            requestdetialFolowAndBeSpeak.setUid(uid);
            requestdetialFolowAndBeSpeak.setMobile(accountData.getMobile());
            com.join.mgps.rpc.impl.d.O1().N1().M0(RequestBeanUtil.getInstance(this.f72464n).getDetialFollowAnd(requestdetialFolowAndBeSpeak)).enqueue(new k(gameid));
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    private void z1(String url) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onEndGameRecordUpload: broad");
        sb2.append(url);
        Intent intent = new Intent(BAction.ACTION_ENDGAME_RECORD_UPLOAD_RESULT);
        intent.putExtra("url", url);
        sendBroadcast(intent);
    }

    @Receiver(actions = {BAction.ACTION_EMU_SHOW_HIDE})
    void A(@Receiver.Extra String gameId, @Receiver.Extra boolean isOnStart) {
        if (isOnStart) {
            MApplication.f3182z.onActivityStarted(null);
        } else {
            MApplication.f3182z.onActivityStopped(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    @Receiver(actions = {"android.net.wifi.WIFI_STATE_CHANGED", "android.net.wifi.STATE_CHANGE", "android.net.conn.CONNECTIVITY_CHANGE", "android.net.wifi.SCAN_RESULTS"})
    public void A0(Intent intent) {
        String action = intent.getAction();
        if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action) || action.equals("android.net.wifi.STATE_CHANGE") || action.equals("android.net.conn.CONNECTIVITY_CHANGE")) {
            boolean zJ = com.join.android.app.common.utils.m.j(this.f72464n);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("网络状态：");
            sb2.append(zJ);
            if (com.join.android.app.common.utils.m.k(this.f72464n)) {
                if (!this.f72453c.isFightActivity().d().booleanValue()) {
                    this.f72453c.isWifiConnectedBefore().g(Boolean.TRUE);
                }
                this.B = true;
            } else {
                if (!this.f72453c.isFightActivity().d().booleanValue()) {
                    this.f72453c.isWifiConnectedBefore().g(Boolean.FALSE);
                }
                this.B = false;
            }
            StringBuilder sb3 = new StringBuilder();
            sb3.append("wifi状态：");
            sb3.append(com.join.android.app.common.utils.m.k(this.f72464n));
            StringBuilder sb4 = new StringBuilder();
            sb4.append("移动网络状态：");
            sb4.append(com.join.android.app.common.utils.m.i(this.f72464n));
            StringBuilder sb5 = new StringBuilder();
            sb5.append("网络连接类型：");
            sb5.append(com.join.android.app.common.utils.m.c(this.f72464n));
            g1.d("getEMUVersion", "net connect");
            if (zJ && !this.f72453c.plugHasUpdate().d().booleanValue()) {
                W();
            }
            if (zJ) {
                h1.e("onConnectivityChanged");
                com.wufan.friend.chat.c.u().K();
            }
        }
        if (action.equals("android.net.wifi.SCAN_RESULTS")) {
            if (this.f72453c.isFightActivity().d().booleanValue()) {
                return;
            }
            this.f72453c.isWifiConnectedBefore().g(Boolean.TRUE);
            return;
        }
        if (!action.equals("android.net.wifi.WIFI_STATE_CHANGED")) {
            if (!action.equals("android.net.wifi.STATE_CHANGE") || this.f72453c.isFightActivity().d().booleanValue()) {
                return;
            }
            this.f72453c.isWifiConnectedBefore().g(Boolean.TRUE);
            return;
        }
        StringBuilder sb6 = new StringBuilder();
        sb6.append("android.net.wifi.WIFI_STATE_CHANGED | ");
        sb6.append(intent.getIntExtra("wifi_state", -1));
        sb6.append(" | ");
        sb6.append(intent.getIntExtra("previous_wifi_state", -1));
        if (this.f72453c.isFightActivity().d().booleanValue()) {
            return;
        }
        if (intent.getIntExtra("wifi_state", -1) == 0 || intent.getIntExtra("wifi_state", -1) == 1) {
            this.f72453c.isWifiConnectedBefore().g(Boolean.FALSE);
        }
    }

    public void B0(int state, List<ControllerManager.c> controllerDevices) {
        F0(state, controllerDevices);
    }

    void B1() {
        try {
            this.f72455e.putExtra("type", "1");
            this.f72455e.putExtra("msg", "登录成功");
            sendBroadcast(this.f72455e);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void C0(DownloadScanEvent event) {
        if (event == null || TextUtils.isEmpty(event.getPkg())) {
            return;
        }
        synchronized (this.Q) {
            if (event.getStatus() == 1) {
                this.Q.remove(event.getPkg());
                this.f72453c.quarkGameDownload().g(JsonMapper.getInstance().toJson(this.Q));
                t1();
            } else {
                if (this.O.get()) {
                    this.O.set(false);
                }
                this.Q.put(event.getPkg(), event);
                t1();
                u1();
            }
        }
    }

    void C1(String roomId, String gameId, String uid, String msg) {
        h1.e("sendRomLoadedToSvr", msg, "" + roomId);
        if (!this.f72473w) {
            t();
            return;
        }
        try {
            ArenaRequest arenaRequest = new ArenaRequest(ArenaConstants.ArenaCommand.CMD_SEND_ROM_LOADED);
            try {
                if (!TextUtils.isEmpty(gameId)) {
                    arenaRequest.gameId = Long.parseLong(gameId);
                }
                if (!TextUtils.isEmpty(roomId)) {
                    arenaRequest.roomId = Integer.parseInt(roomId);
                }
                if (!TextUtils.isEmpty(uid)) {
                    arenaRequest.uid = Integer.parseInt(uid);
                }
            } catch (Exception unused) {
            }
            arenaRequest.battleScoreBoard = msg;
            this.f72472v.f(arenaRequest);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Receiver(actions = {p5.a.N0})
    void D0(@Receiver.Extra String packageName, @Receiver.Extra String key, @Receiver.Extra String msg, @Receiver.Extra int startMode, @Receiver.Extra String gameId, @Receiver.Extra String roomId, @Receiver.Extra String uid) {
        if (TextUtils.isEmpty(key)) {
            return;
        }
        if (key.equals("battleScoreBoard")) {
            x1(roomId, gameId, uid, msg);
        } else if (key.equals("loadRomCompleted")) {
            C1(roomId, gameId, uid, msg);
        } else if (key.equals("battleReconnect")) {
            s(roomId, gameId, uid, msg);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void D1(SharePostRequest request) {
        try {
            ForumResponse<ForumData.ForumResult> forumResponseE = com.join.mgps.rpc.impl.g.A0().e(request.getParams());
            if (forumResponseE != null) {
                g1.d("shareResult ", forumResponseE.getError() + "  " + forumResponseE.getError_message());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            g1.d("shareResult ", "请求报错");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void E(String gameId, String ext, DownloadTask downloadTask, boolean fromRecomDown, DownloadGameArgsBean downArgs) {
        if (!com.join.android.app.common.utils.m.j(this)) {
            t0(getString(R.string.net_connect_failed));
            return;
        }
        try {
            String uid = AccountUtil_.getInstance_(this).getUid();
            String token = AccountUtil_.getInstance_(this).getToken();
            RequestModel<QueryDownloadInfoRequestArgs> requestModel = new RequestModel<>();
            requestModel.setDefault(this);
            QueryDownloadInfoRequestArgs queryDownloadInfoRequestArgs = new QueryDownloadInfoRequestArgs();
            queryDownloadInfoRequestArgs.setGameId(gameId);
            queryDownloadInfoRequestArgs.setUid(uid);
            queryDownloadInfoRequestArgs.setToken(token);
            requestModel.setArgs(queryDownloadInfoRequestArgs);
            ResponseModel<QueryDownloadInfoResponseData> responseModelF0 = com.join.mgps.rpc.impl.i.P0().f0(requestModel);
            if (responseModelF0 == null || responseModelF0.getCode() != 600) {
                t0("获取资源失败，请重新再试。");
            } else if (responseModelF0.getData() == null) {
                t0("获取资源失败，请重新再试。");
            } else {
                G1(gameId, ext, responseModelF0.getData(), downloadTask, fromRecomDown, downArgs);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            t0("获取资源失败，请重新再试。");
        }
    }

    @Receiver(actions = {BAction.ACTION_ENDGAME_RECORD_UPLOAD})
    void E0(@Receiver.Extra String challengeId, @Receiver.Extra String gameId) {
        try {
            if (TextUtils.equals(this.M, challengeId)) {
                return;
            }
            this.M = challengeId;
            if (this.L) {
                return;
            }
            this.L = true;
            DownloadTask downloadTaskG = q5.f.M().G(gameId);
            String gameZipPath = downloadTaskG.getGameZipPath();
            String strSubstring = gameZipPath.substring(0, gameZipPath.lastIndexOf(net.lingala.zip4j.util.e.F0));
            String strSubstring2 = strSubstring.substring(strSubstring.lastIndexOf(net.lingala.zip4j.util.e.F0), strSubstring.length());
            String str = StoreUtils.getEmuRoot(this) + net.lingala.zip4j.util.e.F0 + ("".equals(downloadTaskG.getRomType()) ? "arc" : UtilsMy.d2(Integer.parseInt(downloadTaskG.getRomType()))) + strSubstring2 + net.lingala.zip4j.util.e.F0;
            String str2 = str + "10000.rec";
            String str3 = str + this.M + ".rec";
            boolean zD = o0.D(str2);
            if (!zD) {
                str2 = str + "10000_v2.rec";
                str3 = str + this.M + "_v2.rec";
                zD = o0.D(str2);
            }
            if (!zD) {
                str2 = str2 + "10000_v3.rec";
                str3 = str + this.M + "_v3.rec";
                o0.D(str2);
            }
            if (new File(str2).renameTo(new File(str3))) {
                Y1(gameId, str3);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void E1() {
        if (this.A != null) {
            this.A.w(null, new b());
            this.A.v(new c());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void F(boolean silent, boolean isOm, String qkPosition) {
        WebDiskCfg webDiskCfg = (WebDiskCfg) JsonMapper.getInstance().fromJson(this.f72453c.web_disk_cfg().d(), WebDiskCfg.class);
        if (webDiskCfg == null || t2.h(webDiskCfg.getDown_url()) || t2.h(webDiskCfg.getDown_url_phone())) {
            return;
        }
        DownloadTask downloadTaskG = (isOm && com.join.mgps.va.overmind.i.q().S()) ? q5.f.M().G(d2.f49545c) : q5.f.M().G(d2.f49546d);
        if (downloadTaskG == null) {
            downloadTaskG = new DownloadTask();
            downloadTaskG.setPackageName(d2.f49544b);
            downloadTaskG.setActual_size(webDiskCfg.getFile_size());
            if (com.join.mgps.va.overmind.i.q().S() && isOm) {
                downloadTaskG.setUrl(webDiskCfg.getDown_url());
                downloadTaskG.setCrc_link_type_val(d2.f49545c);
                Dtype dtype = Dtype.MOD;
                downloadTaskG.setFileType(dtype.name());
                downloadTaskG.setRomType(dtype.name());
                downloadTaskG.setTask_down_type(2);
            } else {
                downloadTaskG.setUrl(webDiskCfg.getDown_url_phone());
                downloadTaskG.setCrc_link_type_val(d2.f49546d);
                Dtype dtype2 = Dtype.android;
                downloadTaskG.setFileType(dtype2.name());
                downloadTaskG.setRomType(dtype2.name());
                downloadTaskG.setTask_down_type(2);
            }
            downloadTaskG.setStatus(0);
            downloadTaskG.setShowName("夸克");
            downloadTaskG.setPlugin_num(ConstantIntEnum.MGAME.value() + "");
            downloadTaskG.setOther_down_switch(1);
            downloadTaskG.setVm_device_switch(0);
            downloadTaskG.setPortraitURL(com.join.mgps.rpc.h.M + "/upload/images/7e/08/7e08da9603ec2dd7c2648418ebc6b766.png");
            String ext = downloadTaskG.getExt();
            ExtBean extBean = t2.i(ext) ? (ExtBean) JsonMapper.getInstance().fromJson(ext, ExtBean.class) : null;
            if (extBean == null) {
                extBean = new ExtBean();
            }
            extBean.setPosition(qkPosition);
            downloadTaskG.setExt(JsonMapper.toJsonString(extBean));
            q5.f.M().m(downloadTaskG);
        }
        com.php25.PDownload.d.c(downloadTaskG, this);
    }

    public void F0(int state, List<ControllerManager.c> gameControllers) {
        if ((gameControllers != null ? gameControllers.size() : 0) <= 0) {
            return;
        }
        for (int i10 = 0; i10 < gameControllers.size(); i10++) {
            ControllerManager.c cVar = gameControllers.get(i10);
            if (!m0(cVar.a())) {
                n1(cVar);
                A1(cVar);
            }
        }
    }

    boolean F1(ShowViewDataBean dataBean) {
        g1.c("setImageback time =" + System.currentTimeMillis());
        try {
            if (!dataBean.getIs_force().equals("1")) {
                Iterator<SplashIntentBean> it2 = dataBean.getJump_info().iterator();
                while (it2.hasNext()) {
                    if (it2.next().getTag_show() != 2) {
                        return true;
                    }
                }
                return false;
            }
            dataBean.getJump_info().get(0).getPic_remote();
            return !this.f72453c.lastClickPageAD().d().equals(dataBean.getId() + "");
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    @Receiver(actions = {"com.join.android.app.mgsim.wufun.broadcast.emu.commonpoint"})
    void G(@Receiver.Extra String eventName, @Receiver.Extra String gameId, @Receiver.Extra String position, @Receiver.Extra String uid, @Receiver.Extra String endId) {
        Ext ext = new Ext();
        Data data = new Data();
        if (t2.i(gameId)) {
            ext.setGameId(gameId);
            try {
                data.setGameId(gameId);
            } catch (Exception unused) {
            }
        }
        if (t2.i(uid)) {
            ext.setUid(Integer.valueOf(uid).intValue());
        }
        if (t2.i(position)) {
            ext.setPosition(position + "");
        }
        if (t2.i(endId)) {
            ext.setEndId(endId);
        }
        Event event = Event.clickKnowGoRealPage;
        if (event.name().equals(eventName)) {
            com.papa.sim.statistic.t.l(getApplicationContext()).R1(event, ext);
            return;
        }
        Event event2 = Event.realNameUpWindows;
        if (event2.name().equals(eventName)) {
            com.papa.sim.statistic.t.l(getApplicationContext()).R1(event2, ext);
            return;
        }
        Event event3 = Event.antiAddtionWindowUp;
        if (event3.name().equals(eventName)) {
            com.papa.sim.statistic.t.l(getApplicationContext()).R1(event3, ext);
            return;
        }
        Event event4 = Event.realNameAuth;
        if (event4.name().equals(eventName)) {
            com.papa.sim.statistic.t.l(getApplicationContext()).R1(event4, ext);
            return;
        }
        Event event5 = Event.nonageAstrictHint;
        if (event5.name().equals(eventName)) {
            com.papa.sim.statistic.t.l(getApplicationContext()).R1(event5, ext);
            return;
        }
        Event event6 = Event.realNameClickSubmit;
        if (event6.name().equals(eventName)) {
            com.papa.sim.statistic.t.l(getApplicationContext()).R1(event6, ext);
            return;
        }
        Event event7 = Event.clickClosedRealNameWindow;
        if (event7.name().equals(eventName)) {
            com.papa.sim.statistic.t.l(getApplicationContext()).R1(event7, ext);
            return;
        }
        Event event8 = Event.realNameDisplayWindow;
        if (event8.name().equals(eventName)) {
            com.papa.sim.statistic.t.l(getApplicationContext()).R1(event8, ext);
            return;
        }
        Event event9 = Event.Emu_PatchAd_Pop;
        if (event9.name().equals(eventName)) {
            com.papa.sim.statistic.t.l(getApplicationContext()).R1(event9, ext);
            return;
        }
        Event event10 = Event.Emu_PatchAd_Close;
        if (event10.name().equals(eventName)) {
            com.papa.sim.statistic.t.l(getApplicationContext()).R1(event10, ext);
            return;
        }
        Event event11 = Event.Emu_PatchAd_Click;
        if (event11.name().equals(eventName)) {
            com.papa.sim.statistic.t.l(getApplicationContext()).R1(event11, ext);
            return;
        }
        Event event12 = Event.Emu_ExitAd_Pop;
        if (event12.name().equals(eventName)) {
            com.papa.sim.statistic.t.l(getApplicationContext()).R1(event12, ext);
            return;
        }
        Event event13 = Event.Emu_ExitAd_Close;
        if (event13.name().equals(eventName)) {
            com.papa.sim.statistic.t.l(getApplicationContext()).R1(event13, ext);
            return;
        }
        Event event14 = Event.Emu_ExitAd_Click;
        if (event14.name().equals(eventName)) {
            com.papa.sim.statistic.t.l(getApplicationContext()).R1(event14, ext);
            return;
        }
        Event event15 = Event.Exit_flowad_pop_tt;
        if (event15.name().equals(eventName)) {
            com.papa.sim.statistic.t.l(getApplicationContext()).R1(event15, ext);
            return;
        }
        Event event16 = Event.Exit_flowad_pop_gdt;
        if (event16.name().equals(eventName)) {
            com.papa.sim.statistic.t.l(getApplicationContext()).R1(event16, ext);
            return;
        }
        Event event17 = Event.Exit_flowad_click;
        if (event17.name().equals(eventName)) {
            com.papa.sim.statistic.t.l(getApplicationContext()).R1(event17, ext);
            return;
        }
        Event event18 = Event.Custom_openGoldfinger;
        if (event18.name().equals(eventName)) {
            com.papa.sim.statistic.t.l(getApplicationContext()).R1(event18, ext);
            return;
        }
        Event event19 = Event.Custom_closeGoldfinger;
        if (event19.name().equals(eventName)) {
            com.papa.sim.statistic.t.l(getApplicationContext()).R1(event19, ext);
            return;
        }
        Event event20 = Event.Customgoldfinger_AdMust_Pop;
        if (event20.name().equals(eventName)) {
            com.papa.sim.statistic.t.l(getApplicationContext()).R1(event20, ext);
            return;
        }
        Event event21 = Event.Customgoldfinger_AdMust_Vedio;
        if (event21.name().equals(eventName)) {
            com.papa.sim.statistic.t.l(getApplicationContext()).R1(event21, ext);
            return;
        }
        Event event22 = Event.Customgoldfinger_AdMust_Buy;
        if (event22.name().equals(eventName)) {
            com.papa.sim.statistic.t.l(getApplicationContext()).R1(event22, ext);
            return;
        }
        Event event23 = Event.Customgoldfinger_AdMust_Close;
        if (event23.name().equals(eventName)) {
            com.papa.sim.statistic.t.l(getApplicationContext()).R1(event23, ext);
            return;
        }
        Event event24 = Event.Customgoldfinger_AdUnnecessary_Pop;
        if (event24.name().equals(eventName)) {
            com.papa.sim.statistic.t.l(getApplicationContext()).R1(event24, ext);
            return;
        }
        Event event25 = Event.Customgoldfinger_AdUnnecessary_Vedio;
        if (event25.name().equals(eventName)) {
            com.papa.sim.statistic.t.l(getApplicationContext()).R1(event25, ext);
            return;
        }
        Event event26 = Event.Customgoldfinger_AdUnnecessary_Buy;
        if (event26.name().equals(eventName)) {
            com.papa.sim.statistic.t.l(getApplicationContext()).R1(event26, ext);
            return;
        }
        Event event27 = Event.Customgoldfinger_AdUnnecessary_Close;
        if (event27.name().equals(eventName)) {
            com.papa.sim.statistic.t.l(getApplicationContext()).R1(event27, ext);
            return;
        }
        Event event28 = Event.showVSTaskList;
        if (event28.name().equals(eventName)) {
            com.papa.sim.statistic.t.l(getApplicationContext()).i0(event28, ext, data);
            return;
        }
        Event event29 = Event.gameInStartVS;
        if (event29.name().equals(eventName)) {
            com.papa.sim.statistic.t.l(getApplicationContext()).i0(event29, ext, data);
            return;
        }
        Event event30 = Event.gameInExitVS;
        if (event30.name().equals(eventName)) {
            com.papa.sim.statistic.t.l(getApplicationContext()).i0(event30, ext, data);
            return;
        }
        Event event31 = Event.gameVSSuccess;
        if (event31.name().equals(eventName)) {
            com.papa.sim.statistic.t.l(getApplicationContext()).i0(event31, ext, data);
            return;
        }
        Event event32 = Event.gameVSFail;
        if (event32.name().equals(eventName)) {
            com.papa.sim.statistic.t.l(getApplicationContext()).i0(event32, ext, data);
            return;
        }
        Event event33 = Event.vsKjPopWindow;
        if (event33.name().equals(eventName)) {
            com.papa.sim.statistic.t.l(getApplicationContext()).i0(event33, ext, data);
            return;
        }
        Event event34 = Event.clickGameVSAdVideo;
        if (event34.name().equals(eventName)) {
            com.papa.sim.statistic.t.l(getApplicationContext()).i0(event34, ext, data);
            return;
        }
        Event event35 = Event.expGameVSAdVideo;
        if (event35.name().equals(eventName)) {
            com.papa.sim.statistic.t.l(getApplicationContext()).i0(event35, ext, data);
            return;
        }
        for (Event event36 : Event.values()) {
            if (event36.name().equals(eventName)) {
                com.papa.sim.statistic.t.l(getApplicationContext()).R1(event36, ext);
                return;
            }
        }
    }

    @Receiver(actions = {p5.a.M0})
    void G0(@Receiver.Extra String sp_key, @Receiver.Extra SpValue sp_value) {
        try {
            SharedPreferences sharedPreferences = getSharedPreferences("PrefDef", 4);
            if (sp_value != null) {
                SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                if (editorEdit != null) {
                    if (sp_value.getValue() instanceof Boolean) {
                        editorEdit.putBoolean(sp_key, ((Boolean) sp_value.getValue()).booleanValue());
                    } else if (sp_value.getValue() instanceof Integer) {
                        editorEdit.putInt(sp_key, ((Integer) sp_value.getValue()).intValue());
                    } else if (sp_value.getValue() instanceof String) {
                        editorEdit.putString(sp_key, (String) sp_value.getValue());
                    } else if (sp_value.getValue() instanceof Float) {
                        editorEdit.putFloat(sp_key, ((Float) sp_value.getValue()).floatValue());
                    } else if (sp_value.getValue() instanceof Long) {
                        editorEdit.putLong(sp_key, ((Long) sp_value.getValue()).longValue());
                    }
                }
                editorEdit.commit();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    @UiThread
    public void G1(String gameId, String ext, QueryDownloadInfoResponseData data, DownloadTask task, boolean isfromRecomed, DownloadGameArgsBean downArgs) {
        boolean zIsUncheckSelfSupport;
        boolean zIsDisableShowSpeedUpPrompt;
        DownloadTask downloadTask = task;
        boolean zBooleanValue = this.f72453c.noPromptDownload().d().booleanValue();
        if (data != null) {
            if (data.isForceShow()) {
                data.setSelectedNextTips(true);
                zBooleanValue = false;
            }
            if (!TextUtils.isEmpty(data.getBtnStatus()) && data.getBtnStatus().equals("open")) {
                zBooleanValue = false;
            }
        }
        if (downloadTask != null) {
            zIsUncheckSelfSupport = task.isUncheckSelfSupport();
            zIsDisableShowSpeedUpPrompt = task.isDisableShowSpeedUpPrompt();
        } else {
            zIsUncheckSelfSupport = false;
            zIsDisableShowSpeedUpPrompt = false;
        }
        if (!zBooleanValue && !zIsUncheckSelfSupport && !(MApplication.f3182z.getActivity() instanceof EndGameLaunchActivity_)) {
            if (downloadTask == null) {
                downloadTask = new DownloadTask();
            }
            ((DownloadMethodMultiDialog_.k) ((DownloadMethodMultiDialog_.k) ((DownloadMethodMultiDialog_.k) ((DownloadMethodMultiDialog_.k) ((DownloadMethodMultiDialog_.k) ((DownloadMethodMultiDialog_.k) DownloadMethodMultiDialog_.intent(this.f72464n).flags(805306368)).i(gameId).extra("data", data)).extra("ext", ext)).extra("disableShowSpeedUpPrompt", zIsDisableShowSpeedUpPrompt)).extra("fromRecomDown", isfromRecomed)).extra(DownloadMethodMultiDialog_.DOWNLOAD_ARGS_EXTRA, downArgs)).a(downloadTask.get_from()).b(downloadTask.get_from_type()).k(data != null && data.isForceShow()).start();
            return;
        }
        DownloadTask downloadTaskG = q5.f.M().G(gameId);
        if (downArgs != null) {
            downArgs.setShowDownRecommend(true ^ UtilsMy.h0(downArgs.getPdInfo(), downArgs.getLocation()));
        }
        if (downArgs == null || downArgs.isShowDownRecommend()) {
            ((CommonService_.n0) ((CommonService_.n0) ((CommonService_.n0) CommonService_.P2(this).extra("getDownloadRecomedData", gameId)).extra("showName", task.getShowName())).extra("fromRecommendDown", isfromRecomed)).a();
        }
        if (data != null && downloadTaskG != null && (downloadTaskG.getStatus() == 9 || downloadTaskG.getStatus() == 9)) {
            if (TextUtils.isEmpty(downloadTaskG.getCrc_link_type_val())) {
                return;
            }
            com.php25.PDownload.d.b(downloadTaskG);
            UtilsMy.V4(downloadTaskG, downloadTaskG);
            downloadTaskG.setVer(data.getVer());
            downloadTaskG.setVer_name(data.getVer_name());
            downloadTaskG.setUrl(data.getDownloadURL());
            downloadTaskG.setResource_url_remote(data.getResourceURL());
            downloadTaskG.setActual_size(data.getActualSize());
            downloadTaskG.setRes_actual_size(data.getResourceSize());
            downloadTaskG.setExt(ext);
            downloadTaskG.setFromRecomDown(isfromRecomed);
            com.php25.PDownload.d.c(downloadTaskG, this);
            return;
        }
        if (downloadTaskG != null || downloadTask == null || data == null) {
            U(gameId, ext, true, data != null ? data.getResourceSize() : 0L, data, zIsDisableShowSpeedUpPrompt, task.get_from(), task.get_from_type(), true, downArgs);
            return;
        }
        downloadTask.setVer(data.getVer());
        downloadTask.setVer_name(data.getVer_name());
        downloadTask.setUrl(data.getDownloadURL());
        downloadTask.setResource_url_remote(data.getResourceURL());
        downloadTask.setActual_size(data.getActualSize());
        downloadTask.setRes_actual_size(data.getResourceSize());
        downloadTask.setExt(ext);
        task.setFromRecomDown(isfromRecomed);
        com.php25.PDownload.d.c(downloadTask, this);
    }

    @Receiver(actions = {p5.a.W})
    void H(@Receiver.Extra String gameId, @Receiver.Extra String uid, @Receiver.Extra String packageName, @Receiver.Extra String version, @Receiver.Extra String errorInfo) {
        EmuErrorDto emuErrorDto = new EmuErrorDto();
        emuErrorDto.setGame_id(gameId);
        emuErrorDto.setUid(uid);
        emuErrorDto.setPlugin_package_name(packageName);
        emuErrorDto.setPlugin_version(version);
        emuErrorDto.setError(errorInfo);
        com.papa.sim.statistic.t.l(getApplicationContext()).h0(JsonMapper.getInstance().toJson(emuErrorDto));
    }

    @Receiver(actions = {p5.a.G})
    void H0(@Receiver.Extra("gameData") CollectionBeanSub sub) {
        if (sub != null) {
            PurchasedListTable purchasedListTableN = e0.o().n(sub.getGame_id());
            if (purchasedListTableN == null) {
                purchasedListTableN = new PurchasedListTable();
            }
            purchasedListTableN.setGame_id(sub.getGame_id());
            e0.o().m(purchasedListTableN);
        }
        h1();
    }

    void H1(final String msg) {
        this.f72468r.post(new Runnable() { // from class: com.join.mgps.service.a
            @Override // java.lang.Runnable
            public final void run() {
                this.f72908b.t0(msg);
            }
        });
    }

    @Receiver(actions = {p5.a.L0})
    void I0(@Receiver.Extra String key_name, @Receiver.Extra boolean show) {
        getSharedPreferences("PrefDef", 4).edit().putBoolean(key_name, show).commit();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    /* JADX INFO: renamed from: I1, reason: merged with bridge method [inline-methods] */
    public void t0(String message) {
        ToastManager.show(message);
    }

    @Receiver(actions = {p5.a.S})
    void J(@Receiver.Extra String packageName, @Receiver.Extra String gameId, @Receiver.Extra String uid, @Receiver.Extra String p2Uid, @Receiver.Extra long time) {
        if (TextUtils.isEmpty(packageName) || !packageName.equals(getPackageName())) {
            return;
        }
        com.papa.sim.statistic.t.l(getApplicationContext()).h(gameId, uid, p2Uid, time);
    }

    @Receiver(actions = {p5.a.O})
    void J0(@Receiver.Extra String packageName, @Receiver.Extra String gameId, @Receiver.Extra String uid, @Receiver.Extra long sec) {
        if (TextUtils.isEmpty(packageName) || !packageName.equals(getPackageName())) {
            return;
        }
        List<PlayGameTimeTable> listO = d0.n().o(uid, gameId);
        if (listO != null && listO.size() > 0) {
            PlayGameTimeTable playGameTimeTable = listO.get(0);
            long gamePlayTotalTime = playGameTimeTable.getGamePlayTotalTime();
            playGameTimeTable.setGamePlayRecentlyTime(System.currentTimeMillis() / 1000);
            playGameTimeTable.setGamePlayTotalTime(gamePlayTotalTime + sec);
            d0.n().m(playGameTimeTable);
        }
        com.papa.sim.statistic.t.l(getApplicationContext()).P1(gameId, sec + "", uid, UUID.randomUUID().toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void J1(CollectionBeanSub detialResultBean, boolean needCheckpay) {
        K1(detialResultBean, needCheckpay, false, "", false, false, null);
    }

    @Receiver(actions = {p5.a.V})
    void K(@Receiver.Extra String packageName, @Receiver.Extra String gameId, @Receiver.Extra int sec, @Receiver.Extra String uid) {
        if (TextUtils.isEmpty(packageName) || !packageName.equals(getPackageName())) {
            return;
        }
        com.papa.sim.statistic.t.l(getApplicationContext()).W0(gameId, sec, uid, q5.f.M().N(gameId, getApplicationContext()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void K0(int curPid) {
        try {
            if (r0.Y0(this)) {
                ForumRequestBean.ForumPostsPraiseRequestBean forumPostsPraiseRequestBeanE0 = r0.e0(this, curPid);
                forumPostsPraiseRequestBeanE0.setDevice_id("");
                ForumResponse<ForumData.ForumPostsPraiseData> forumResponseR = com.join.mgps.rpc.impl.g.A0().R(forumPostsPraiseRequestBeanE0.getParams());
                if (forumResponseR == null) {
                    return;
                }
                ForumData.ForumPostsPraiseData data = forumResponseR.getData();
                data.isResult();
                r0.m1(forumPostsPraiseRequestBeanE0, data);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void K1(CollectionBeanSub detialResultBean, boolean needCheckpay, boolean uncheckSelfSupport, String ext, boolean disableShowSpeedUpPrompt, boolean fromRecomDown, DownloadGameArgsBean downArgs) {
        int i10;
        String str;
        if (detialResultBean == null) {
            return;
        }
        try {
            DownloadTask downloadTaskBuildDownloadTask = detialResultBean.buildDownloadTask();
            if (downloadTaskBuildDownloadTask != null) {
                downloadTaskBuildDownloadTask.setDisableShowSpeedUpPrompt(disableShowSpeedUpPrompt);
                downloadTaskBuildDownloadTask.setUncheckSelfSupport(uncheckSelfSupport);
                downloadTaskBuildDownloadTask.setRes_actual_size(detialResultBean.getResourceSize());
                downloadTaskBuildDownloadTask.setExt(ext);
                downloadTaskBuildDownloadTask.setFromRecomDown(fromRecomDown);
                if (needCheckpay) {
                    if (UtilsMy.z0(detialResultBean.getPay_tag_info(), detialResultBean.getCrc_sign_id()) <= 0) {
                        if (UtilsMy.y0(downloadTaskBuildDownloadTask.getPay_game_amount(), downloadTaskBuildDownloadTask.getCrc_link_type_val()) > 0) {
                            UtilsMy.z4(this.f72464n, downloadTaskBuildDownloadTask.getCrc_link_type_val());
                            return;
                        } else {
                            UtilsMy.z1(downloadTaskBuildDownloadTask, detialResultBean);
                            UtilsMy.X0(this.f72464n, downloadTaskBuildDownloadTask, detialResultBean.getTp_down_url(), detialResultBean.getOther_down_switch(), detialResultBean.getCdn_down_switch(), downArgs);
                            return;
                        }
                    }
                    UserInfo accountData = AccountUtil_.getInstance_(this.f72464n).getAccountData();
                    if (accountData != null && accountData.getAccountType() != 2) {
                        UtilsMy.z4(this.f72464n, downloadTaskBuildDownloadTask.getCrc_link_type_val());
                        return;
                    }
                    IntentUtil.getInstance().goMyAccountLoginActivityNewTask(this.f72464n);
                    return;
                }
                if (UtilsMy.o1(this.f72464n, downloadTaskBuildDownloadTask)) {
                    return;
                }
                if (detialResultBean.getDown_status() != 5) {
                    com.php25.PDownload.d.c(downloadTaskBuildDownloadTask, this.f72464n);
                    return;
                }
                if (APKUtils.m() == 32 && downloadTaskBuildDownloadTask.getCpu_type() == 64) {
                    WarningDialogActivity.WarningDialogParam warningDialogParam = new WarningDialogActivity.WarningDialogParam();
                    warningDialogParam.setType(1);
                    warningDialogParam.setGameId(this.f72475y.getCrc_link_type_val());
                    APKUtils.m();
                    warningDialogParam.setTitle("请注意");
                    warningDialogParam.setContent("此游戏仅支持64位手机，您的设备无法正常运行此游戏");
                    warningDialogParam.setConfirm("我知道了");
                    Intent intent = new Intent();
                    intent.putExtra(WarningDialogActivity.KEY_PARAM, warningDialogParam);
                    IntentUtil.getInstance().startActivityWithCallback(this.f72464n, WarningDialogActivity.class, intent, new r());
                    com.papa.sim.statistic.t.l(this.f72464n).R1(Event.gameDownloadNoCpuTips, new Ext().setGameId(downloadTaskBuildDownloadTask.getCrc_link_type_val()));
                    return;
                }
                if (downloadTaskBuildDownloadTask.getMax_an_compatible_ver() <= 0 || ((i10 = Build.VERSION.SDK_INT) >= downloadTaskBuildDownloadTask.getMin_an_compatible_ver() && i10 <= downloadTaskBuildDownloadTask.getMax_an_compatible_ver())) {
                    UtilsMy.l1(this.f72464n, downloadTaskBuildDownloadTask);
                    return;
                }
                this.f72475y = downloadTaskBuildDownloadTask;
                WarningDialogActivity.WarningDialogParam warningDialogParam2 = new WarningDialogActivity.WarningDialogParam();
                if (detialResultBean.isHmCloud() && w0.j()) {
                    warningDialogParam2.setType(2);
                    warningDialogParam2.setNegative("仍要下载");
                } else {
                    warningDialogParam2.setType(0);
                    warningDialogParam2.setPositive("仍要下载");
                }
                warningDialogParam2.setGameId(this.f72475y.getCrc_link_type_val());
                int iM = APKUtils.m();
                if (iM == 96) {
                    str = "32、64";
                } else {
                    str = iM + "";
                }
                warningDialogParam2.setTitle("此设备运行该游戏稳定性欠佳!");
                warningDialogParam2.setContent("此设备最低兼容ARM " + str + "位游戏，继续下载\n可能出现无法安装、闪退、卡顿、延迟等问题~");
                Intent intent2 = new Intent();
                intent2.putExtra(WarningDialogActivity.KEY_PARAM, warningDialogParam2);
                IntentUtil.getInstance().startActivityWithCallback(this.f72464n, WarningDialogActivity.class, intent2, new a(warningDialogParam2, downloadTaskBuildDownloadTask, detialResultBean));
                com.papa.sim.statistic.t.l(this.f72464n).R1(Event.gameDownloadNoCpuTips, new Ext().setGameId(downloadTaskBuildDownloadTask.getCrc_link_type_val()));
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Receiver(actions = {p5.a.K0})
    void L(@Receiver.Extra String packageName, @Receiver.Extra String gameId, @Receiver.Extra long sec, @Receiver.Extra String uid) {
        if (TextUtils.isEmpty(packageName) || !packageName.equals(getPackageName())) {
            return;
        }
        com.papa.sim.statistic.t.l(getApplicationContext()).W0(gameId, sec, uid, q5.f.M().N(gameId, getApplicationContext()));
    }

    @Receiver(actions = {p5.a.X})
    void L0(@Receiver.Extra String packageName, @Receiver.Extra String gameId, @Receiver.Extra int sec, @Receiver.Extra String uid) {
        if (TextUtils.isEmpty(packageName) || !packageName.equals(getPackageName())) {
            return;
        }
        com.papa.sim.statistic.t.l(getApplicationContext()).R1(Event.OnClickPSPCutDown, new Ext());
    }

    @Receiver(actions = {p5.a.J0})
    void M(@Receiver.Extra String packageName, @Receiver.Extra String gameId, @Receiver.Extra long sec, @Receiver.Extra String uid) {
        if (TextUtils.isEmpty(packageName) || !packageName.equals(getPackageName())) {
            return;
        }
        com.papa.sim.statistic.t.l(getApplicationContext()).W0(gameId, sec, uid, q5.f.M().N(gameId, getApplicationContext()));
    }

    @Receiver(actions = {"com.join.android.app.mgsim.wufun.broadcast.emu.exitVippopup"})
    void M0(@Receiver.Extra String packageName, @Receiver.Extra String gameId, @Receiver.Extra int position, @Receiver.Extra String uid) {
        Ext ext = new Ext();
        ext.setGameId(gameId);
        if (t2.i(uid)) {
            ext.setUid(Integer.valueOf(uid).intValue());
        }
        ext.setPosition(position + "");
        com.papa.sim.statistic.t.l(getApplicationContext()).R1(Event.exitVippopup, ext);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void M1(String imagePath, int from) {
        com.join.mgps.Util.w.j(this.f72464n, imagePath, from);
    }

    @Receiver(actions = {p5.a.P})
    void N(@Receiver.Extra String packageName, @Receiver.Extra String gameId, @Receiver.Extra String uid) {
        if (TextUtils.isEmpty(packageName) || !packageName.equals(getPackageName()) || t2.h(gameId)) {
            return;
        }
        Ext ext = new Ext();
        DownloadTask downloadTaskG = q5.f.M().G(gameId);
        if (downloadTaskG != null) {
            ext.setFrom(downloadTaskG.get_from() + "");
        }
        com.papa.sim.statistic.t.l(getApplicationContext()).j(gameId, uid, q5.f.M().N(gameId, getApplicationContext()), ext);
    }

    @Receiver(actions = {p5.a.f96184a0})
    void N0(@Receiver.Extra String packageName, @Receiver.Extra String gameId, @Receiver.Extra int sec, @Receiver.Extra String uid) {
        if (TextUtils.isEmpty(packageName) || !packageName.equals(getPackageName())) {
            return;
        }
        com.papa.sim.statistic.t.l(getApplicationContext()).R1(Event.PSPLimitMember, new Ext());
    }

    void N1() {
        try {
            if (this.A == null) {
                this.A = com.papa.controller.core.d.r(this);
                E1();
            }
            com.papa.controller.core.d dVar = this.A;
            if (dVar != null) {
                dVar.x(true);
                this.A.B();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Receiver(actions = {p5.a.T})
    void O(@Receiver.Extra String packageName, @Receiver.Extra String gameId, @Receiver.Extra String uid, @Receiver.Extra int startMode) {
        if (TextUtils.isEmpty(packageName) || !packageName.equals(getPackageName())) {
            return;
        }
        com.papa.sim.statistic.t.l(getApplicationContext()).i(gameId, uid, startMode, q5.f.M().N(gameId, getApplicationContext()));
    }

    @Receiver(actions = {p5.a.Z})
    void O0(@Receiver.Extra String packageName, @Receiver.Extra String gameId, @Receiver.Extra int sec, @Receiver.Extra String uid) {
        if (TextUtils.isEmpty(packageName) || !packageName.equals(getPackageName())) {
            return;
        }
        com.papa.sim.statistic.t.l(getApplicationContext()).R1(Event.PSPLimitPlay, new Ext());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    @UiThread
    public void O1(String gameid, PayOrderInfo orderInfo, UserInfo accountBean, boolean fromSdk, String appkey) {
        PapayOrder papayOrder = new PapayOrder();
        papayOrder.PA_OPEN_UID = accountBean.getUid();
        papayOrder.APP_ORDER_ID = "";
        papayOrder.APP_NAME = orderInfo.getGame_name();
        papayOrder.PRODUCT_ID = gameid;
        papayOrder.APPKEY = orderInfo.getGame_app_key();
        try {
            papayOrder.MONEY_AMOUNT = (Float.parseFloat(orderInfo.getPay_game_amount()) / 100.0f) + "";
        } catch (NumberFormatException e10) {
            e10.printStackTrace();
        }
        papayOrder.PAYSHOWTYPE = orderInfo.getPay_show_type();
        papayOrder.PAYTYPE = orderInfo.getPay_type();
        papayOrder.PRODUCT_NAME = orderInfo.getGame_name();
        if (fromSdk) {
            papayOrder.ORDERTYPE = 3;
        } else {
            papayOrder.ORDERTYPE = 2;
        }
        if (!fromSdk) {
            ((PayNowActivity_.j) PayNowActivity_.intent(this.f72464n).c(papayOrder).flags(C.ENCODING_PCM_MU_LAW)).start();
            return;
        }
        ExtBean extBean = new ExtBean();
        extBean.setFrom("1");
        extBean.setFrom_id(appkey);
        extBean.setPosition(gameid);
        ((PayNowActivity_.j) PayNowActivity_.intent(this.f72464n).c(papayOrder).flags(C.ENCODING_PCM_MU_LAW)).a(extBean).start();
    }

    @Receiver(actions = {p5.a.Q})
    void P(@Receiver.Extra String packageName, @Receiver.Extra String gameId, @Receiver.Extra String uid) {
        if (TextUtils.isEmpty(packageName) || !packageName.equals(getPackageName())) {
            return;
        }
        com.papa.sim.statistic.t.l(getApplicationContext()).e2(gameId, uid);
    }

    @Receiver(actions = {p5.a.Y})
    void P0(@Receiver.Extra String packageName, @Receiver.Extra String gameId, @Receiver.Extra int sec, @Receiver.Extra String uid) {
        if (TextUtils.isEmpty(packageName) || !packageName.equals(getPackageName())) {
            return;
        }
        com.papa.sim.statistic.t.l(getApplicationContext()).R1(Event.PSPLimitPopup, new Ext());
    }

    void P1() {
        com.papa.controller.core.d dVar = this.A;
        if (dVar != null) {
            dVar.F();
        }
    }

    @Receiver(actions = {p5.a.R})
    void Q(@Receiver.Extra String packageName, @Receiver.Extra String gameId, @Receiver.Extra String uid, @Receiver.Extra String p2Uid, @Receiver.Extra long time) {
        if (TextUtils.isEmpty(packageName) || !packageName.equals(getPackageName())) {
            return;
        }
        com.papa.sim.statistic.t.l(getApplicationContext()).N2(gameId, uid, p2Uid, time);
    }

    @Receiver(actions = {p5.a.f96186b0})
    void Q0(@Receiver.Extra String packageName, @Receiver.Extra String gameId, @Receiver.Extra int sec, @Receiver.Extra String uid) {
        if (TextUtils.isEmpty(packageName) || !packageName.equals(getPackageName())) {
            return;
        }
        com.papa.sim.statistic.t.l(getApplicationContext()).R1(Event.PSPLimitQuit, new Ext());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Q1(String msg) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void R() {
        com.join.mgps.va.overmind.i.q().n0();
        S();
    }

    @Receiver(actions = {"com.join.android.app.mgsim.wufun.broadcast.emu.NotpromptVippopup"})
    void R0(@Receiver.Extra String packageName, @Receiver.Extra String gameId, @Receiver.Extra int position, @Receiver.Extra String uid) {
        Ext ext = new Ext();
        ext.setGameId(gameId);
        ext.setUid(Integer.valueOf(uid).intValue());
        ext.setPosition(position + "");
        com.papa.sim.statistic.t.l(getApplicationContext()).R1(Event.NotpromptVippopup, ext);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void R1() {
        AccountBean user_info;
        if (!com.join.android.app.common.utils.m.j(this) || o0()) {
            return;
        }
        try {
            TouristLoginRequestBean touristLoginRequestBean = new TouristLoginRequestBean();
            touristLoginRequestBean.setVersion(com.join.android.app.common.utils.q.n(getApplicationContext()).A());
            touristLoginRequestBean.setDevice_id("");
            touristLoginRequestBean.setMac("");
            touristLoginRequestBean.setSource("2");
            touristLoginRequestBean.setTuid(this.f72453c.touriseTUID().d().longValue());
            touristLoginRequestBean.setSign(k2.g(touristLoginRequestBean));
            AccountResultMainBean<AccountTokenSuccess> accountResultMainBeanI = com.join.mgps.rpc.impl.a.c0().I(touristLoginRequestBean.getParams());
            if (accountResultMainBeanI == null || accountResultMainBeanI.getError() != 0 || !accountResultMainBeanI.getData().is_success() || (user_info = accountResultMainBeanI.getData().getUser_info()) == null) {
                return;
            }
            UserInfo accountData = this.f72454d.getAccountData();
            if (accountData == null || accountData.getUid() == 0) {
                AccountUtil_.getInstance_(getApplicationContext()).saveAccountData(g8.a.a(user_info), getApplicationContext());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void S() {
        if (com.join.android.app.common.utils.m.j(this)) {
            try {
                List<DownloadTask> listS = q5.f.M().S(null);
                ArrayList arrayList = new ArrayList();
                for (DownloadTask downloadTask : listS) {
                    if (downloadTask.getCrc_link_type_val() != null) {
                        arrayList.add(downloadTask.getCrc_link_type_val());
                    }
                }
                if (arrayList.size() == 0) {
                    return;
                }
                this.H = arrayList.size() % this.G == 0 ? arrayList.size() / this.G : (arrayList.size() / this.G) + 1;
                if (this.D == null) {
                    this.D = Executors.newSingleThreadScheduledExecutor();
                }
                this.I = 0;
                this.D.scheduleAtFixedRate(new d(arrayList), 1L, 3L, TimeUnit.SECONDS);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @Receiver(actions = {"com.join.android.app.mgsim.wufun.broadcast.emu.onclickFunction"})
    void S0(@Receiver.Extra String packageName, @Receiver.Extra String gameId, @Receiver.Extra int position, @Receiver.Extra String uid) {
        Ext ext = new Ext();
        ext.setGameId(gameId);
        ext.setUid(Integer.valueOf(uid).intValue());
        ext.setPosition(position + "");
        com.papa.sim.statistic.t.l(getApplicationContext()).R1(Event.onclickFunction, ext);
    }

    void S1(String json) {
        try {
            this.f72455e.putExtra("type", "4");
            this.f72455e.putExtra("msg", json);
            sendBroadcast(this.f72455e);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Receiver(actions = {"com.join.android.app.mgsim.wufun.broadcast.emu.onclickVippopup"})
    void T0(@Receiver.Extra String packageName, @Receiver.Extra String gameId, @Receiver.Extra int position, @Receiver.Extra String uid) {
        Ext ext = new Ext();
        ext.setGameId(gameId);
        ext.setUid(Integer.valueOf(uid).intValue());
        ext.setPosition(position + "");
        com.papa.sim.statistic.t.l(getApplicationContext()).R1(Event.onclickVippopup, ext);
    }

    void T1(String msg, String userName, String userId) {
        S1("{\"content\":\"" + msg + "\",\"color\":6,\"titlename\":\"\",\"vipType\":-1,\"name\":\"" + userName + "\",\"userId\":\"" + userId + "\"}");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void U(String gameId, String ext, boolean uncheckSelfSupport, long resourceSize, QueryDownloadInfoResponseData data, boolean disableShowSpeedUpPrompt, int from, int fromType, boolean fromRecomDown, DownloadGameArgsBean downArgs) {
        if (!com.join.android.app.common.utils.m.j(this)) {
            t0("请检查网络连接");
            return;
        }
        try {
            RequestModel<QueryDownloadInfoRequestArgs> requestModel = new RequestModel<>();
            requestModel.setDefault(this.f72464n);
            QueryDownloadInfoRequestArgs queryDownloadInfoRequestArgs = new QueryDownloadInfoRequestArgs();
            ArrayList arrayList = new ArrayList();
            arrayList.add(gameId);
            queryDownloadInfoRequestArgs.setGameIdList(arrayList);
            if (downArgs != null) {
                queryDownloadInfoRequestArgs.setLocation(downArgs.getLocation());
            }
            requestModel.setArgs(queryDownloadInfoRequestArgs);
            com.join.mgps.rpc.impl.i.P0().N0().c1(requestModel).enqueue(new q(from, fromType, data, uncheckSelfSupport, ext, disableShowSpeedUpPrompt, fromRecomDown, downArgs));
        } catch (Exception e10) {
            e10.printStackTrace();
            t0("获取游戏信息失败");
        }
    }

    @Receiver(actions = {"com.join.android.app.mgsim.wufun.broadcast.emu.openGoldfinger"})
    void U0(@Receiver.Extra String packageName, @Receiver.Extra String gameId, @Receiver.Extra int position, @Receiver.Extra String uid) {
        try {
            Ext ext = new Ext();
            ext.setGameId(gameId);
            ext.setUid(Integer.valueOf(uid).intValue());
            ext.setPosition(position + "");
            com.papa.sim.statistic.t.l(getApplicationContext()).R1(Event.openGoldfinger, ext);
        } catch (Exception unused) {
        }
    }

    void U1() {
        try {
            this.f72472v.g();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = me.relex.photodraweeview.d.S1)
    public void V(String gameid, String gamename, boolean isfromRecom) {
        String uid = AccountUtil_.getInstance_(this.f72464n).getUid();
        String token = AccountUtil_.getInstance_(this.f72464n).getToken();
        RequestModel<QueryDownloadInfoRequestArgs> requestModel = new RequestModel<>();
        requestModel.setDefault(this.f72464n);
        QueryDownloadInfoRequestArgs queryDownloadInfoRequestArgs = new QueryDownloadInfoRequestArgs();
        DownloadTask downloadTaskG = q5.f.M().G(gameid);
        if (downloadTaskG == null) {
            return;
        }
        if (APKUtils.K(downloadTaskG)) {
            queryDownloadInfoRequestArgs.setGameId(((ModInfoBean) JsonMapper.getInstance().fromJson(downloadTaskG.getMod_info(), ModInfoBean.class)).getMain_game_id());
        } else {
            queryDownloadInfoRequestArgs.setGameId(gameid);
        }
        queryDownloadInfoRequestArgs.setUid(uid);
        queryDownloadInfoRequestArgs.setToken(token);
        queryDownloadInfoRequestArgs.setIsRecommend(com.join.mgps.pref.h.n(this.f72464n).x() ? "rec" : "");
        requestModel.setArgs(queryDownloadInfoRequestArgs);
        if (isfromRecom) {
            return;
        }
        com.join.mgps.rpc.impl.i.P0().N0().z1(requestModel).enqueue(new e(gameid, isfromRecom, gamename));
    }

    @Receiver(actions = {"com.join.android.app.mgsim.wufun.broadcast.emu.openKeyskill"})
    void V0(@Receiver.Extra String packageName, @Receiver.Extra String gameId, @Receiver.Extra int position, @Receiver.Extra String uid) {
        Ext ext = new Ext();
        ext.setGameId(gameId);
        ext.setUid(Integer.valueOf(uid).intValue());
        ext.setPosition(position + "");
        com.papa.sim.statistic.t.l(getApplicationContext()).R1(Event.openKeyskill, ext);
    }

    void V1() {
        GameReceiver gameReceiver = this.K;
        if (gameReceiver != null) {
            unregisterReceiver(gameReceiver);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void W() {
        Throwable th;
        int i10;
        int i11;
        int uid;
        ApkVersionbean apkVersionbean;
        Exception exc;
        EMUApkTable eMUApkTable;
        HomeViewSwich homeViewSwich;
        int i12;
        if (this.f72453c.plugHasUpdate().d().booleanValue() || W) {
            return;
        }
        int i13 = 1;
        W = true;
        ArrayList<ApkVersionbean> arrayList = (ArrayList) JsonMapper.getInstance().fromJson(getResources().getString(R.string.defalut_app_ver), JsonMapper.getInstance().createCollectionType(ArrayList.class, ApkVersionbean.class));
        g1.d("getEMUVersion", "start");
        HashMap map = new HashMap();
        map.put("tag_id", "31");
        List<EMUApkTable> listH = t6.p.o().h(map);
        List<EMUApkArenaTable> listH2 = t6.o.o().h(map);
        if (listH != null && listH.size() != 0) {
            W1(arrayList, listH, "31");
        } else if (arrayList != null) {
            for (ApkVersionbean apkVersionbean2 : arrayList) {
                if (apkVersionbean2.getTag_id().equals("31")) {
                    t6.p.o().k(new EMUApkTable(apkVersionbean2));
                }
            }
        }
        if (listH2 != null && listH2.size() != 0) {
            X1(arrayList, listH2, "31");
        } else if (arrayList != null) {
            for (ApkVersionbean apkVersionbean3 : arrayList) {
                if (apkVersionbean3.getTag_id().equals("31")) {
                    t6.o.o().k(new EMUApkArenaTable(apkVersionbean3));
                }
            }
        }
        HashMap map2 = new HashMap();
        map2.put("tag_id", "35");
        List<EMUApkTable> listH3 = t6.p.o().h(map2);
        List<EMUApkArenaTable> listH4 = t6.o.o().h(map2);
        if (listH3 != null && listH3.size() != 0) {
            W1(arrayList, listH3, "35");
        } else if (arrayList != null) {
            for (ApkVersionbean apkVersionbean4 : arrayList) {
                if (apkVersionbean4.getTag_id().equals("35")) {
                    t6.p.o().k(new EMUApkTable(apkVersionbean4));
                }
            }
        }
        if (listH4 != null && listH4.size() != 0) {
            X1(arrayList, listH4, "35");
        } else if (arrayList != null) {
            for (ApkVersionbean apkVersionbean5 : arrayList) {
                if (apkVersionbean5.getTag_id().equals("35")) {
                    t6.o.o().k(new EMUApkArenaTable(apkVersionbean5));
                }
            }
        }
        HashMap map3 = new HashMap();
        map3.put("tag_id", "43");
        List<EMUApkTable> listH5 = t6.p.o().h(map3);
        List<EMUApkArenaTable> listH6 = t6.o.o().h(map3);
        if (listH5 != null && listH5.size() != 0) {
            W1(arrayList, listH5, "43");
        } else if (arrayList != null) {
            for (ApkVersionbean apkVersionbean6 : arrayList) {
                if (apkVersionbean6.getTag_id().equals("43")) {
                    t6.p.o().k(new EMUApkTable(apkVersionbean6));
                }
            }
        }
        if (listH6 != null && listH6.size() != 0) {
            X1(arrayList, listH6, "43");
        } else if (arrayList != null) {
            for (ApkVersionbean apkVersionbean7 : arrayList) {
                if (apkVersionbean7.getTag_id().equals("43")) {
                    t6.o.o().k(new EMUApkArenaTable(apkVersionbean7));
                }
            }
        }
        HashMap map4 = new HashMap();
        map4.put("tag_id", "33");
        List<EMUApkTable> listH7 = t6.p.o().h(map4);
        List<EMUApkArenaTable> listH8 = t6.o.o().h(map4);
        if (listH7 != null && listH7.size() != 0) {
            W1(arrayList, listH7, "33");
        } else if (arrayList != null) {
            for (ApkVersionbean apkVersionbean8 : arrayList) {
                if (apkVersionbean8.getTag_id().equals("33")) {
                    t6.p.o().k(new EMUApkTable(apkVersionbean8));
                }
            }
        }
        if (listH8 != null && listH8.size() != 0) {
            X1(arrayList, listH8, "33");
        } else if (arrayList != null) {
            for (ApkVersionbean apkVersionbean9 : arrayList) {
                if (apkVersionbean9.getTag_id().equals("33")) {
                    t6.o.o().k(new EMUApkArenaTable(apkVersionbean9));
                }
            }
        }
        HashMap map5 = new HashMap();
        map5.put("tag_id", "34");
        List<EMUApkTable> listH9 = t6.p.o().h(map5);
        List<EMUApkArenaTable> listH10 = t6.o.o().h(map5);
        if (listH9 != null && listH9.size() != 0) {
            W1(arrayList, listH9, "34");
        } else if (arrayList != null) {
            for (ApkVersionbean apkVersionbean10 : arrayList) {
                if (apkVersionbean10.getTag_id().equals("34")) {
                    t6.p.o().k(new EMUApkTable(apkVersionbean10));
                }
            }
        }
        if (listH10 != null && listH10.size() != 0) {
            X1(arrayList, listH10, "34");
        } else if (arrayList != null) {
            for (ApkVersionbean apkVersionbean11 : arrayList) {
                if (apkVersionbean11.getTag_id().equals("34")) {
                    t6.o.o().k(new EMUApkArenaTable(apkVersionbean11));
                }
            }
        }
        HashMap map6 = new HashMap();
        map6.put("tag_id", "51");
        List<EMUApkTable> listH11 = t6.p.o().h(map6);
        List<EMUApkArenaTable> listH12 = t6.o.o().h(map6);
        if (listH11 != null && listH11.size() != 0) {
            W1(arrayList, listH11, "51");
        } else if (arrayList != null) {
            for (ApkVersionbean apkVersionbean12 : arrayList) {
                if (apkVersionbean12.getTag_id().equals("51")) {
                    t6.p.o().k(new EMUApkTable(apkVersionbean12));
                }
            }
        }
        if (listH12 != null && listH12.size() != 0) {
            X1(arrayList, listH12, "51");
        } else if (arrayList != null) {
            for (ApkVersionbean apkVersionbean13 : arrayList) {
                if (apkVersionbean13.getTag_id().equals("51")) {
                    t6.o.o().k(new EMUApkArenaTable(apkVersionbean13));
                }
            }
        }
        HashMap map7 = new HashMap();
        map7.put("tag_id", "53");
        List<EMUApkTable> listH13 = t6.p.o().h(map7);
        List<EMUApkArenaTable> listH14 = t6.o.o().h(map7);
        if (listH13 != null && listH13.size() != 0) {
            W1(arrayList, listH13, "53");
        } else if (arrayList != null) {
            for (ApkVersionbean apkVersionbean14 : arrayList) {
                if (apkVersionbean14.getTag_id().equals("53")) {
                    t6.p.o().k(new EMUApkTable(apkVersionbean14));
                }
            }
        }
        if (listH14 != null && listH14.size() != 0) {
            X1(arrayList, listH14, "53");
        } else if (arrayList != null) {
            for (ApkVersionbean apkVersionbean15 : arrayList) {
                if (apkVersionbean15.getTag_id().equals("53")) {
                    t6.o.o().k(new EMUApkArenaTable(apkVersionbean15));
                }
            }
        }
        HashMap map8 = new HashMap();
        map8.put("tag_id", "54");
        List<EMUApkTable> listH15 = t6.p.o().h(map8);
        List<EMUApkArenaTable> listH16 = t6.o.o().h(map8);
        if (listH15 != null && listH15.size() != 0) {
            W1(arrayList, listH15, "54");
        } else if (arrayList != null) {
            for (ApkVersionbean apkVersionbean16 : arrayList) {
                if (apkVersionbean16.getTag_id().equals("54")) {
                    t6.p.o().k(new EMUApkTable(apkVersionbean16));
                }
            }
        }
        if (listH16 != null && listH16.size() != 0) {
            X1(arrayList, listH16, "54");
        } else if (arrayList != null) {
            for (ApkVersionbean apkVersionbean17 : arrayList) {
                if (apkVersionbean17.getTag_id().equals("54")) {
                    t6.o.o().k(new EMUApkArenaTable(apkVersionbean17));
                }
            }
        }
        HashMap map9 = new HashMap();
        map9.put("tag_id", "32");
        List<EMUApkTable> listH17 = t6.p.o().h(map9);
        List<EMUApkArenaTable> listH18 = t6.o.o().h(map9);
        if ((listH17 == null || listH17.size() == 0) && arrayList != null) {
            for (ApkVersionbean apkVersionbean18 : arrayList) {
                if (apkVersionbean18.getTag_id().equals("32")) {
                    t6.p.o().k(new EMUApkTable(apkVersionbean18));
                }
            }
        }
        if ((listH18 == null || listH18.size() == 0) && arrayList != null) {
            for (ApkVersionbean apkVersionbean19 : arrayList) {
                if (apkVersionbean19.getTag_id().equals("32")) {
                    t6.o.o().k(new EMUApkArenaTable(apkVersionbean19));
                }
            }
        }
        HashMap map10 = new HashMap();
        map10.put("tag_id", "56");
        List<EMUApkTable> listH19 = t6.p.o().h(map10);
        List<EMUApkArenaTable> listH20 = t6.o.o().h(map10);
        if (listH19 != null && listH19.size() != 0) {
            W1(arrayList, listH19, "56");
        } else if (arrayList != null) {
            for (ApkVersionbean apkVersionbean20 : arrayList) {
                if (apkVersionbean20.getTag_id().equals("56")) {
                    t6.p.o().k(new EMUApkTable(apkVersionbean20));
                }
            }
        }
        if (listH20 != null && listH20.size() != 0) {
            X1(arrayList, listH20, "56");
        } else if (arrayList != null) {
            for (ApkVersionbean apkVersionbean21 : arrayList) {
                if (apkVersionbean21.getTag_id().equals("56")) {
                    t6.o.o().k(new EMUApkArenaTable(apkVersionbean21));
                }
            }
        }
        HashMap map11 = new HashMap();
        map11.put("tag_id", "57");
        List<EMUApkTable> listH21 = t6.p.o().h(map11);
        List<EMUApkArenaTable> listH22 = t6.o.o().h(map11);
        if ((listH21 == null || listH21.size() == 0) && arrayList != null) {
            for (ApkVersionbean apkVersionbean22 : arrayList) {
                if (apkVersionbean22.getTag_id().equals("57")) {
                    t6.p.o().k(new EMUApkTable(apkVersionbean22));
                }
            }
        }
        if ((listH22 == null || listH22.size() == 0) && arrayList != null) {
            for (ApkVersionbean apkVersionbean23 : arrayList) {
                if (apkVersionbean23.getTag_id().equals("57")) {
                    t6.o.o().k(new EMUApkArenaTable(apkVersionbean23));
                }
            }
        }
        HashMap map12 = new HashMap();
        map12.put("tag_id", "58");
        List<EMUApkTable> listH23 = t6.p.o().h(map12);
        List<EMUApkTable> listH24 = t6.p.o().h(map12);
        if ((listH23 == null || listH23.size() == 0) && arrayList != null) {
            for (ApkVersionbean apkVersionbean24 : arrayList) {
                if (apkVersionbean24.getTag_id().equals("58")) {
                    t6.p.o().k(new EMUApkTable(apkVersionbean24));
                }
            }
        }
        if ((listH24 == null || listH24.size() == 0) && arrayList != null) {
            for (ApkVersionbean apkVersionbean25 : arrayList) {
                if (apkVersionbean25.getTag_id().equals("58")) {
                    t6.o.o().k(new EMUApkArenaTable(apkVersionbean25));
                }
            }
        }
        HashMap map13 = new HashMap();
        map13.put("tag_id", "60");
        List<EMUApkTable> listH25 = t6.p.o().h(map13);
        List<EMUApkTable> listH26 = t6.p.o().h(map13);
        if ((listH25 == null || listH25.size() == 0) && arrayList != null) {
            for (ApkVersionbean apkVersionbean26 : arrayList) {
                if (apkVersionbean26.getTag_id().equals("60")) {
                    t6.p.o().k(new EMUApkTable(apkVersionbean26));
                }
            }
        }
        if ((listH26 == null || listH26.size() == 0) && arrayList != null) {
            for (ApkVersionbean apkVersionbean27 : arrayList) {
                if (apkVersionbean27.getTag_id().equals("60")) {
                    t6.o.o().k(new EMUApkArenaTable(apkVersionbean27));
                }
            }
        }
        HashMap map14 = new HashMap();
        map14.put("tag_id", "165");
        List<EMUApkTable> listH27 = t6.p.o().h(map14);
        List<EMUApkTable> listH28 = t6.p.o().h(map14);
        if ((listH27 == null || listH27.size() == 0) && arrayList != null) {
            for (ApkVersionbean apkVersionbean28 : arrayList) {
                if (apkVersionbean28.getTag_id().equals("165")) {
                    t6.p.o().k(new EMUApkTable(apkVersionbean28));
                }
            }
        }
        if ((listH28 == null || listH28.size() == 0) && arrayList != null) {
            for (ApkVersionbean apkVersionbean29 : arrayList) {
                if (apkVersionbean29.getTag_id().equals("165")) {
                    t6.o.o().k(new EMUApkArenaTable(apkVersionbean29));
                }
            }
        }
        HashMap map15 = new HashMap();
        map15.put("tag_id", "166");
        List<EMUApkTable> listH29 = t6.p.o().h(map15);
        List<EMUApkTable> listH30 = t6.p.o().h(map15);
        if ((listH29 == null || listH29.size() == 0) && arrayList != null) {
            for (ApkVersionbean apkVersionbean30 : arrayList) {
                if (apkVersionbean30.getTag_id().equals("166")) {
                    t6.p.o().k(new EMUApkTable(apkVersionbean30));
                }
            }
        }
        if ((listH30 == null || listH30.size() == 0) && arrayList != null) {
            for (ApkVersionbean apkVersionbean31 : arrayList) {
                if (apkVersionbean31.getTag_id().equals("166")) {
                    t6.o.o().k(new EMUApkArenaTable(apkVersionbean31));
                }
            }
        }
        HashMap map16 = new HashMap();
        map16.put("tag_id", "167");
        List<EMUApkTable> listH31 = t6.p.o().h(map16);
        List<EMUApkTable> listH32 = t6.p.o().h(map16);
        if ((listH31 == null || listH31.size() == 0) && arrayList != null) {
            for (ApkVersionbean apkVersionbean32 : arrayList) {
                if (apkVersionbean32.getTag_id().equals("167")) {
                    t6.p.o().k(new EMUApkTable(apkVersionbean32));
                }
            }
        }
        if ((listH32 == null || listH32.size() == 0) && arrayList != null) {
            for (ApkVersionbean apkVersionbean33 : arrayList) {
                if (apkVersionbean33.getTag_id().equals("167")) {
                    t6.o.o().k(new EMUApkArenaTable(apkVersionbean33));
                }
            }
        }
        HashMap map17 = new HashMap();
        map17.put("tag_id", "168");
        List<EMUApkTable> listH33 = t6.p.o().h(map17);
        List<EMUApkTable> listH34 = t6.p.o().h(map17);
        if ((listH33 == null || listH33.size() == 0) && arrayList != null) {
            for (ApkVersionbean apkVersionbean34 : arrayList) {
                if (apkVersionbean34.getTag_id().equals("168")) {
                    t6.p.o().k(new EMUApkTable(apkVersionbean34));
                }
            }
        }
        if ((listH34 == null || listH34.size() == 0) && arrayList != null) {
            for (ApkVersionbean apkVersionbean35 : arrayList) {
                if (apkVersionbean35.getTag_id().equals("168")) {
                    t6.o.o().k(new EMUApkArenaTable(apkVersionbean35));
                }
            }
        }
        if (com.join.android.app.common.utils.m.j(this)) {
            ResultMainBean<List<APKVersionMainBean>> resultMainBean = null;
            try {
                UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
                if (accountData != null) {
                    try {
                        uid = accountData.getUid();
                    } catch (Exception unused) {
                        W = false;
                        if (resultMainBean == null) {
                            this.C = i11 - 1;
                            try {
                                Thread.sleep(5000L);
                                W();
                            } catch (InterruptedException unused2) {
                            }
                        }
                        T();
                        f0();
                    } catch (Throwable th2) {
                        th = th2;
                        W = false;
                        if (resultMainBean != null) {
                            throw th;
                        }
                        throw th;
                    }
                } else {
                    uid = 0;
                }
                ResultMainBean<List<APKVersionMainBean>> resultMainBeanZ1 = com.join.mgps.rpc.impl.d.O1().z1(RequestBeanUtil.getInstance(this).getApkVersion(2, 2, 0, uid));
                if (resultMainBeanZ1 != null) {
                    try {
                        try {
                            if (resultMainBeanZ1.getFlag() == 1) {
                                g1.d("getEMUVersion", "sucess");
                                this.f72453c.plugHasUpdate().g(Boolean.TRUE);
                                if (resultMainBeanZ1.getMessages().getData().size() == 0) {
                                    W = false;
                                    return;
                                }
                                APKVersionMainBean aPKVersionMainBean = resultMainBeanZ1.getMessages().getData().get(0);
                                if (aPKVersionMainBean != null) {
                                    apkVersionbean = aPKVersionMainBean.getApp().get(0);
                                    try {
                                        MApplication.f3175p0 = aPKVersionMainBean.getSimulator_run_ad_text_cfg();
                                        MApplication.f3168b1 = aPKVersionMainBean.getSingle_game_run_ad_text_cfg();
                                        MApplication.f3172f1 = aPKVersionMainBean.getPublic_video_cfg();
                                        SingleGameRunAdTextCfgBean singleGameRunAdTextCfgBean = MApplication.f3168b1;
                                        if (singleGameRunAdTextCfgBean != null) {
                                            MApplication.f3173i1 = singleGameRunAdTextCfgBean.getCounts();
                                        }
                                        List<HomeViewSwich> cfg = aPKVersionMainBean.getCfg();
                                        if (cfg != null && cfg.size() > 0 && (homeViewSwich = cfg.get(0)) != null) {
                                            try {
                                                String strR = r(com.join.mgps.Util.a.a(homeViewSwich.getDown_load_speed_limit().getCfg_values(), null));
                                                if (strR.equals(WMConstants.TIMER_STAGE_NONE)) {
                                                    homeViewSwich.getDown_load_speed_limit().setCfg_values_express("300");
                                                } else {
                                                    homeViewSwich.getDown_load_speed_limit().setCfg_values_express(strR);
                                                }
                                                String strR2 = r(com.join.mgps.Util.a.a(homeViewSwich.getDown_load_size().getCfg_values(), null));
                                                if (strR2.equals("0")) {
                                                    homeViewSwich.getDown_load_size().setCfg_values_express("500");
                                                } else {
                                                    homeViewSwich.getDown_load_size().setCfg_values_express(strR2);
                                                }
                                                String strR3 = r(com.join.mgps.Util.a.a(homeViewSwich.getDown_load_cfg_net_game_speed_limit().getCfg_switch(), null));
                                                if (strR3.equals(WMConstants.TIMER_STAGE_NONE)) {
                                                    homeViewSwich.getDown_load_cfg_net_game_speed_limit().setCfg_switch_express("0");
                                                } else {
                                                    homeViewSwich.getDown_load_cfg_net_game_speed_limit().setCfg_switch_express(strR3);
                                                }
                                                String strR4 = r(com.join.mgps.Util.a.a(homeViewSwich.getDown_load_cfg_simulator_speed_limit().getCfg_switch(), null));
                                                if (strR4.equals(WMConstants.TIMER_STAGE_NONE)) {
                                                    homeViewSwich.getDown_load_cfg_simulator_speed_limit().setCfg_switch_express("0");
                                                } else {
                                                    homeViewSwich.getDown_load_cfg_simulator_speed_limit().setCfg_switch_express(strR4);
                                                }
                                                String strR5 = r(com.join.mgps.Util.a.a(homeViewSwich.getDown_load_cfg_stand_alone_speed_limit().getCfg_switch(), null));
                                                if (strR5.equals(WMConstants.TIMER_STAGE_NONE)) {
                                                    homeViewSwich.getDown_load_cfg_stand_alone_speed_limit().setCfg_switch_express("0");
                                                } else {
                                                    homeViewSwich.getDown_load_cfg_stand_alone_speed_limit().setCfg_switch_express(strR5);
                                                }
                                                homeViewSwich.getDown_load_unrestricted_speed().setCfg_values_express(r(com.join.mgps.Util.a.a(homeViewSwich.getDown_load_unrestricted_speed().getCfg_values(), null)));
                                                com.join.mgps.pref.h.n(this.f72464n).N(homeViewSwich);
                                                MApplication.U = homeViewSwich;
                                            } catch (Exception e10) {
                                                e10.printStackTrace();
                                            }
                                            BattaleSwitchBean seep_up_read_only_number_of_win = homeViewSwich.getSeep_up_read_only_number_of_win();
                                            if (seep_up_read_only_number_of_win == null || seep_up_read_only_number_of_win.getCfg_switch() != 1) {
                                                this.f72453c.downloadSpeedUpCount().g(0);
                                            } else {
                                                this.f72453c.downloadSpeedUpCount().g(Integer.valueOf(seep_up_read_only_number_of_win.getCfg_values()));
                                            }
                                            BattaleSwitchBean seep_up_read_only_game_size = homeViewSwich.getSeep_up_read_only_game_size();
                                            if (seep_up_read_only_game_size == null || seep_up_read_only_game_size.getCfg_switch() != 1) {
                                                this.f72453c.downloadSpeedUpGameSize().g(0);
                                            } else {
                                                this.f72453c.downloadSpeedUpGameSize().g(Integer.valueOf(seep_up_read_only_game_size.getCfg_values()));
                                            }
                                            if (!com.join.mgps.Util.e0.z(this.f72453c.downloadSpeedUpLastTime().d().longValue())) {
                                                this.f72453c.downloadSpeedUpCountCurrent().g(0);
                                                this.f72453c.downloadSpeedUpCountCurrentAD().g(0);
                                                this.f72453c.downloadSpeedUpGames().g("");
                                            }
                                            BattaleSwitchBean an_battle_switch = homeViewSwich.getAn_battle_switch();
                                            if (an_battle_switch == null || an_battle_switch.getCfg_switch() != 1) {
                                                this.f72453c.showAnBattle().g(Boolean.FALSE);
                                            } else {
                                                this.f72453c.showAnBattle().g(Boolean.TRUE);
                                            }
                                            BattaleSwitchBean psp_ad_show_time = homeViewSwich.getPsp_ad_show_time();
                                            if (psp_ad_show_time != null) {
                                                this.f72453c.pspAdShowTimeSwitch().g(Integer.valueOf(psp_ad_show_time.getCfg_switch()));
                                                this.f72453c.pspAdShowTime().g(Integer.valueOf(psp_ad_show_time.getCfg_values()));
                                            }
                                            BattaleSwitchBean ranking_menu = homeViewSwich.getRanking_menu();
                                            if (ranking_menu != null) {
                                                this.f72453c.rankingMenu().g(ranking_menu.getCfg_values());
                                            }
                                            BattaleSwitchBean seep_up_read_only_arc_ad_id = homeViewSwich.getSeep_up_read_only_arc_ad_id();
                                            if (seep_up_read_only_arc_ad_id != null && seep_up_read_only_arc_ad_id.getCfg_switch() == 1 && !TextUtils.isEmpty(seep_up_read_only_arc_ad_id.getCfg_values())) {
                                                this.f72453c.adIdArc().g(seep_up_read_only_arc_ad_id.getCfg_values());
                                            }
                                            BattaleSwitchBean seep_up_read_only_psp_ad_id = homeViewSwich.getSeep_up_read_only_psp_ad_id();
                                            if (seep_up_read_only_psp_ad_id != null && seep_up_read_only_psp_ad_id.getCfg_switch() == 1 && !TextUtils.isEmpty(seep_up_read_only_psp_ad_id.getCfg_values())) {
                                                this.f72453c.adIdPsp().g(seep_up_read_only_psp_ad_id.getCfg_values());
                                            }
                                            BattaleSwitchBean seep_up_read_only_down_ad_id = homeViewSwich.getSeep_up_read_only_down_ad_id();
                                            if (seep_up_read_only_down_ad_id != null && seep_up_read_only_down_ad_id.getCfg_switch() == 1 && !TextUtils.isEmpty(seep_up_read_only_down_ad_id.getCfg_values())) {
                                                this.f72453c.adIdDownloadSpeedUp().g(seep_up_read_only_down_ad_id.getCfg_values());
                                            }
                                            BattaleSwitchBean seep_up_read_only_common_s_ad_id = homeViewSwich.getSeep_up_read_only_common_s_ad_id();
                                            if (seep_up_read_only_common_s_ad_id != null && seep_up_read_only_common_s_ad_id.getCfg_switch() == 1 && !TextUtils.isEmpty(seep_up_read_only_common_s_ad_id.getCfg_values())) {
                                                this.f72453c.adIdCommonV().g(seep_up_read_only_common_s_ad_id.getCfg_values());
                                            }
                                            BattaleSwitchBean seep_up_read_only_common_h_ad_id = homeViewSwich.getSeep_up_read_only_common_h_ad_id();
                                            if (seep_up_read_only_common_h_ad_id != null && seep_up_read_only_common_h_ad_id.getCfg_switch() == 1 && !TextUtils.isEmpty(seep_up_read_only_common_h_ad_id.getCfg_values())) {
                                                this.f72453c.adIdCommonH().g(seep_up_read_only_common_h_ad_id.getCfg_values());
                                            }
                                            BattaleSwitchBean nick_name_modify_title = homeViewSwich.getNick_name_modify_title();
                                            if (nick_name_modify_title != null) {
                                                this.f72453c.changeNickNameNotice().g(nick_name_modify_title.getCfg_values());
                                            }
                                            BattaleSwitchBean game_download_boot = homeViewSwich.getGame_download_boot();
                                            if (game_download_boot != null) {
                                                String cfg_values = game_download_boot.getCfg_values();
                                                if (t2.i(cfg_values)) {
                                                    try {
                                                        int iIntValue = this.f72453c.insatllAppFirst().d().intValue();
                                                        int i14 = Integer.parseInt(cfg_values);
                                                        if (iIntValue == -8) {
                                                            this.f72453c.insatllAppFirst().g(Integer.valueOf(i14));
                                                        }
                                                    } catch (Exception e11) {
                                                        e11.printStackTrace();
                                                    }
                                                }
                                            }
                                            BattaleSwitchBean game_performance_boot = homeViewSwich.getGame_performance_boot();
                                            if (game_performance_boot != null) {
                                                String cfg_values2 = game_performance_boot.getCfg_values();
                                                if (t2.i(cfg_values2)) {
                                                    try {
                                                        int i15 = Integer.parseInt(cfg_values2);
                                                        if (this.f72453c.runRomFirst().d().intValue() == -8) {
                                                            this.f72453c.runRomFirst().g(Integer.valueOf(i15));
                                                        }
                                                    } catch (Exception e12) {
                                                        e12.printStackTrace();
                                                    }
                                                }
                                            }
                                            BattaleSwitchBean app_down_wifi_status = homeViewSwich.getApp_down_wifi_status();
                                            if (app_down_wifi_status != null) {
                                                String cfg_values3 = app_down_wifi_status.getCfg_values();
                                                if (t2.i(cfg_values3)) {
                                                    try {
                                                        int i16 = Integer.parseInt(cfg_values3);
                                                        if (this.f72453c.wifiDownNumber().d().intValue() == -1) {
                                                            this.f72453c.wifiDownNumber().g(Integer.valueOf(i16));
                                                        }
                                                    } catch (Exception e13) {
                                                        e13.printStackTrace();
                                                    }
                                                }
                                            }
                                            BattaleSwitchBean ext_game_upload_type = homeViewSwich.getExt_game_upload_type();
                                            if (ext_game_upload_type != null && t2.i(ext_game_upload_type.getCfg_values())) {
                                                try {
                                                    this.f72453c.uploadType2().g(ext_game_upload_type.getCfg_values());
                                                } catch (Exception e14) {
                                                    e14.printStackTrace();
                                                }
                                            }
                                            BattaleSwitchBean wf_home_page_position = homeViewSwich.getWf_home_page_position();
                                            if (wf_home_page_position == null || wf_home_page_position.getCfg_switch() != 1) {
                                                this.f72453c.showIndex().g("2");
                                            } else {
                                                this.f72453c.showIndex().g(wf_home_page_position.getCfg_values());
                                            }
                                            BattaleSwitchBean md5_file_tag = homeViewSwich.getMd5_file_tag();
                                            if (md5_file_tag == null || md5_file_tag.getCfg_switch() != 1) {
                                                this.f72453c.md5FileTag().g("");
                                            } else {
                                                this.f72453c.md5FileTag().g(md5_file_tag.getCfg_values());
                                                z.f50181t = md5_file_tag.getCfg_values();
                                            }
                                            try {
                                                this.f72453c.emulatorStartAdCount().g(Integer.valueOf(Integer.parseInt(homeViewSwich.getEmulator_start_ad_count().getCfg_values())));
                                            } catch (Exception e15) {
                                                e15.printStackTrace();
                                            }
                                            this.f72453c.emulatorGoldenFingerUrl().g(homeViewSwich.getEmulator_golden_finger_url().getCfg_values());
                                            this.f72453c.emulatorOneSkillUrl().g(homeViewSwich.getEmulator_one_skill_url().getCfg_values());
                                            this.f72453c.emulatorCheckpointUrl().g(homeViewSwich.getEmulator_checkpoint_url().getCfg_values());
                                        }
                                        this.f72453c.gameTimeLvCfg().g(JsonMapper.toJsonString(aPKVersionMainBean.getPlay_game_time_lv_cfg()));
                                    } catch (Exception e16) {
                                        e16.printStackTrace();
                                    }
                                } else {
                                    apkVersionbean = null;
                                }
                                if (resultMainBeanZ1.getFlag() == 1) {
                                    String[] strArrB = com.join.android.app.common.utils.q.n(this).B();
                                    String ver = apkVersionbean.getVer();
                                    int i17 = Integer.parseInt(ver.split("_")[0]);
                                    int i18 = Integer.parseInt(apkVersionbean.getVer_compatible().split("_")[0]);
                                    if (Integer.parseInt(strArrB[0]) <= i17) {
                                        VersionDto versionDto = new VersionDto();
                                        versionDto.setAndroidUrl(apkVersionbean.getDown_url());
                                        versionDto.setVersionNo(Integer.parseInt(ver.split("_")[0]));
                                        versionDto.setInfo(apkVersionbean.getVer_info());
                                        versionDto.setHead_pic(apkVersionbean.getHead_pic());
                                        versionDto.setTow_tpl_back_ground_pic(apkVersionbean.getTow_tpl_back_ground_pic());
                                        versionDto.setTpl_type(apkVersionbean.getTpl_type());
                                        if (Integer.parseInt(strArrB[0]) < i17) {
                                            Intent intent = new Intent(p5.a.K);
                                            if (Float.parseFloat(strArrB[0]) < i18) {
                                                versionDto.setQiangzhi(true);
                                                intent.putExtra("appUpdateBean", versionDto);
                                            } else {
                                                versionDto.setQiangzhi(false);
                                                intent.putExtra("appUpdateBean", versionDto);
                                            }
                                            sendBroadcast(intent);
                                        }
                                    }
                                }
                                List<ApkVersionbean> plugin = aPKVersionMainBean.getPlugin();
                                if (plugin != null) {
                                    for (ApkVersionbean apkVersionbean36 : plugin) {
                                        DownloadTask downloadTaskG = q5.f.M().G(apkVersionbean36.getTag_id());
                                        if (downloadTaskG != null && !TextUtils.isEmpty(apkVersionbean36.getVer())) {
                                            if (apkVersionbean36.equals(downloadTaskG.getVer() + "_" + downloadTaskG.getVer_name()) && downloadTaskG.getDown_type() != apkVersionbean36.getDown_type()) {
                                                q5.f.M().delete(downloadTaskG);
                                                downloadTaskG = null;
                                            }
                                        }
                                        HashMap map18 = new HashMap();
                                        map18.put("tag_id", apkVersionbean36.getTag_id());
                                        List<EMUApkTable> listH35 = t6.p.o().h(map18);
                                        if (listH35 == null || listH35.size() <= 0) {
                                            EMUApkTable eMUApkTable2 = new EMUApkTable();
                                            eMUApkTable2.setApk_name(apkVersionbean36.getApk_name());
                                            eMUApkTable2.setDown_url(apkVersionbean36.getDown_url());
                                            eMUApkTable2.setLaunch_name(apkVersionbean36.getLaunch_name());
                                            eMUApkTable2.setLogo(apkVersionbean36.getLogo());
                                            eMUApkTable2.setPackage_name(apkVersionbean36.getPackage_name());
                                            eMUApkTable2.setRelease_date(apkVersionbean36.getRelease_date());
                                            eMUApkTable2.setSize(apkVersionbean36.getSize());
                                            eMUApkTable2.setTag_id(apkVersionbean36.getTag_id());
                                            eMUApkTable2.setTeam_info(apkVersionbean36.getTeam_info());
                                            eMUApkTable2.setVer(apkVersionbean36.getVer());
                                            eMUApkTable2.setVer_compatible(apkVersionbean36.getVer_compatible());
                                            eMUApkTable2.setVer_info(apkVersionbean36.getVer_info());
                                            eMUApkTable2.setDown_type(apkVersionbean36.getDown_type());
                                            eMUApkTable2.setRemark(JsonMapper.toJsonString(apkVersionbean36.getPlugin_md5()));
                                            t6.p.o().k(eMUApkTable2);
                                            com.join.android.app.common.utils.o.F(eMUApkTable2);
                                            boolean zE0 = UtilsMy.E0(this, eMUApkTable2);
                                            if (downloadTaskG != null) {
                                                if (TextUtils.isEmpty(eMUApkTable2.getApkPath())) {
                                                    com.join.android.app.common.utils.o.I(this.f72464n, downloadTaskG, eMUApkTable2);
                                                }
                                                if (zE0 && downloadTaskG.getStatus() == 5) {
                                                    downloadTaskG.setUrl(apkVersionbean36.getDown_url());
                                                    downloadTaskG.setShowName(apkVersionbean36.getApk_name());
                                                    if (t2.h(downloadTaskG.getMod_info())) {
                                                        downloadTaskG.setStatus(9);
                                                    }
                                                } else if (downloadTaskG.getStatus() == 0) {
                                                    downloadTaskG.setStatus(5);
                                                }
                                                q5.f.M().m(downloadTaskG);
                                                if (downloadTaskG.getStatus() == 9 || (zE0 && downloadTaskG.getStatus() == 5)) {
                                                    com.join.android.app.common.utils.o.G(this.f72464n, eMUApkTable2);
                                                }
                                            } else if (zE0) {
                                                if (eMUApkTable2.getDown_type() != 2) {
                                                    UtilsMy.c3(eMUApkTable2, this.f72464n);
                                                } else if (com.join.android.app.common.utils.o.t(this.f72464n, eMUApkTable2, false, new String[0])) {
                                                    UtilsMy.c3(eMUApkTable2, this.f72464n);
                                                }
                                            } else if (com.join.android.app.common.utils.o.t(this.f72464n, eMUApkTable2, false, new String[0])) {
                                                UtilsMy.b3(eMUApkTable2, this.f72464n);
                                            }
                                        } else {
                                            if (listH35.size() > i13) {
                                                for (int i19 = 0; i19 < listH35.size(); i19++) {
                                                    t6.p.o().delete(listH35.get(i19));
                                                }
                                            }
                                            try {
                                                eMUApkTable = listH35.get(0);
                                                try {
                                                    eMUApkTable.setApk_name(apkVersionbean36.getApk_name());
                                                    eMUApkTable.setDown_url(apkVersionbean36.getDown_url());
                                                    eMUApkTable.setLaunch_name(apkVersionbean36.getLaunch_name());
                                                    eMUApkTable.setLogo(apkVersionbean36.getLogo());
                                                    eMUApkTable.setPackage_name(apkVersionbean36.getPackage_name());
                                                    eMUApkTable.setRelease_date(apkVersionbean36.getRelease_date());
                                                    eMUApkTable.setSize(apkVersionbean36.getSize());
                                                    eMUApkTable.setTag_id(apkVersionbean36.getTag_id());
                                                    eMUApkTable.setTeam_info(apkVersionbean36.getTeam_info());
                                                    eMUApkTable.setVer(apkVersionbean36.getVer());
                                                    eMUApkTable.setVer_compatible(apkVersionbean36.getVer_compatible());
                                                    eMUApkTable.setVer_info(apkVersionbean36.getVer_info());
                                                    eMUApkTable.setDown_type(apkVersionbean36.getDown_type());
                                                    eMUApkTable.setRemark(JsonMapper.toJsonString(apkVersionbean36.getPlugin_md5()));
                                                    boolean zE1 = UtilsMy.E0(this, eMUApkTable);
                                                    if (downloadTaskG != null) {
                                                        if (TextUtils.isEmpty(eMUApkTable.getApkPath())) {
                                                            com.join.android.app.common.utils.o.I(this.f72464n, downloadTaskG, eMUApkTable);
                                                        }
                                                        if (zE1 && downloadTaskG.getStatus() == 5) {
                                                            downloadTaskG.setUrl(apkVersionbean36.getDown_url());
                                                            if (t2.h(downloadTaskG.getMod_info())) {
                                                                downloadTaskG.setStatus(9);
                                                            }
                                                            downloadTaskG.setDescribe(apkVersionbean36.getVer_info());
                                                            downloadTaskG.setPortraitURL(apkVersionbean36.getLogo());
                                                            downloadTaskG.setShowName(apkVersionbean36.getApk_name());
                                                        } else if (downloadTaskG.getStatus() == 0) {
                                                            downloadTaskG.setStatus(5);
                                                        }
                                                        q5.f.M().m(downloadTaskG);
                                                        if (downloadTaskG.getStatus() == 9 || (zE1 && downloadTaskG.getStatus() == 5)) {
                                                            com.join.android.app.common.utils.o.G(this.f72464n, eMUApkTable);
                                                        }
                                                    } else if (zE1) {
                                                        if (eMUApkTable.getDown_type() != 2) {
                                                            UtilsMy.c3(eMUApkTable, this.f72464n);
                                                        } else if (com.join.android.app.common.utils.o.t(this.f72464n, eMUApkTable, false, new String[0])) {
                                                            UtilsMy.c3(eMUApkTable, this.f72464n);
                                                            com.join.android.app.common.utils.o.G(this.f72464n, eMUApkTable);
                                                        }
                                                    } else if (com.join.android.app.common.utils.o.t(this.f72464n, eMUApkTable, false, new String[0])) {
                                                        UtilsMy.b3(eMUApkTable, this.f72464n);
                                                    }
                                                } catch (Exception e17) {
                                                    exc = e17;
                                                    exc.printStackTrace();
                                                }
                                            } catch (Exception e18) {
                                                exc = e18;
                                                eMUApkTable = null;
                                            }
                                            t6.p.o().m(eMUApkTable);
                                            com.join.android.app.common.utils.o.F(eMUApkTable);
                                        }
                                        i13 = 1;
                                    }
                                }
                                com.papa.sim.statistic.t.l(getApplicationContext()).I2(true, JsonMapper.getInstance().toJson(t6.p.o().d()));
                            }
                        } catch (Exception unused3) {
                            resultMainBean = resultMainBeanZ1;
                            W = false;
                            if (resultMainBean == null && (i11 = this.C) > 0) {
                                this.C = i11 - 1;
                            }
                            T();
                            f0();
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        resultMainBean = resultMainBeanZ1;
                        W = false;
                        if (resultMainBean != null || (i10 = this.C) <= 0) {
                            throw th;
                        }
                        this.C = i10 - 1;
                        try {
                            Thread.sleep(5000L);
                            W();
                            throw th;
                        } catch (InterruptedException unused4) {
                            throw th;
                        }
                    }
                }
                W = false;
                if (resultMainBeanZ1 == null && (i12 = this.C) > 0) {
                    this.C = i12 - 1;
                    Thread.sleep(5000L);
                    W();
                }
            } catch (Exception unused5) {
                resultMainBean = null;
            } catch (Throwable th4) {
                th = th4;
                resultMainBean = null;
            }
        } else {
            W = false;
            g1.d("getEMUVersion", "nonet");
        }
        T();
        f0();
    }

    @Receiver(actions = {"com.join.android.app.mgsim.wufun.broadcast.emu.selectLevel"})
    void W0(@Receiver.Extra String packageName, @Receiver.Extra String gameId, @Receiver.Extra int position, @Receiver.Extra String uid) {
        Ext ext = new Ext();
        ext.setGameId(gameId);
        ext.setUid(Integer.valueOf(uid).intValue());
        ext.setPosition(position + "");
        com.papa.sim.statistic.t.l(getApplicationContext()).R1(Event.selectLevel, ext);
    }

    void W1(ArrayList<ApkVersionbean> data, List<EMUApkTable> emuApkTables, String tagId) {
        try {
            if (com.join.android.app.common.utils.q.n(this).z() >= 131 && emuApkTables != null && emuApkTables.size() != 0 && !TextUtils.isEmpty(tagId)) {
                if (emuApkTables.get(0).getDown_type() != 2 && data != null) {
                    for (ApkVersionbean apkVersionbean : data) {
                        if (apkVersionbean.getTag_id().equals(tagId)) {
                            t6.p.o().k(new EMUApkTable(apkVersionbean));
                            break;
                        }
                    }
                }
                DownloadTask downloadTaskC0 = q5.f.M().c0(Integer.parseInt(tagId));
                if (downloadTaskC0 == null || downloadTaskC0.getDown_type() == 2) {
                    return;
                }
                q5.f.M().delete(downloadTaskC0);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void X() {
        if (com.join.android.app.common.utils.m.j(this.f72464n)) {
            RequestEndGameListArgs requestEndGameListArgs = new RequestEndGameListArgs();
            requestEndGameListArgs.setUid(AccountUtil_.getInstance_(this.f72464n).getUid());
            RequestModel requestModel = new RequestModel();
            requestModel.setArgs(requestEndGameListArgs);
            requestModel.setDefault(this.f72464n);
            ResponseModel<GameMainV4DataBean.EndGameConfigBean> responseModelO = com.join.mgps.rpc.impl.i.P0().o(requestModel.makeSign());
            if (responseModelO == null || responseModelO.getCode() != 200 || responseModelO.getData() == null) {
                return;
            }
            this.f72453c.endGameConfig().g(JsonMapper.toJsonString(responseModelO.getData()));
        }
    }

    @Receiver(actions = {"com.join.android.app.mgsim.wufun.broadcast.emu.shareScreenshot"})
    void X0(@Receiver.Extra String packageName, @Receiver.Extra String gameId, @Receiver.Extra int position, @Receiver.Extra String uid) {
        Ext ext = new Ext();
        ext.setGameId(gameId);
        ext.setUid(Integer.valueOf(uid).intValue());
        ext.setPosition(position + "");
        com.papa.sim.statistic.t.l(getApplicationContext()).R1(Event.shareScreenshot, ext);
    }

    void X1(ArrayList<ApkVersionbean> data, List<EMUApkArenaTable> emuApkTables, String tagId) {
        try {
            if (com.join.android.app.common.utils.q.n(this).z() >= 131 && emuApkTables != null && emuApkTables.size() != 0 && !TextUtils.isEmpty(tagId)) {
                if (emuApkTables.get(0).getDown_type() != 2 && data != null) {
                    for (ApkVersionbean apkVersionbean : data) {
                        if (apkVersionbean.getTag_id().equals(tagId)) {
                            t6.o.o().k(new EMUApkArenaTable(apkVersionbean));
                            break;
                        }
                    }
                }
                DownloadTask downloadTaskC0 = q5.f.M().c0(Integer.parseInt(tagId));
                if (downloadTaskC0 == null || downloadTaskC0.getDown_type() == 2) {
                    return;
                }
                q5.f.M().delete(downloadTaskC0);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    FileInfo Y(String apk) {
        try {
            PackageManager packageManager = this.f72464n.getPackageManager();
            PackageInfo packageArchiveInfo = packageManager.getPackageArchiveInfo(apk, 1);
            if (packageArchiveInfo == null) {
                return null;
            }
            FileInfo fileInfo = new FileInfo();
            fileInfo.pkg = packageArchiveInfo.packageName;
            fileInfo.versionName = packageArchiveInfo.versionName;
            fileInfo.versionCode = packageArchiveInfo.versionCode;
            fileInfo.path = apk;
            fileInfo.time = packageArchiveInfo.lastUpdateTime;
            try {
                ApplicationInfo applicationInfo = packageArchiveInfo.applicationInfo;
                applicationInfo.sourceDir = apk;
                applicationInfo.publicSourceDir = apk;
                fileInfo.title = ((Object) applicationInfo.loadLabel(packageManager)) + "";
            } catch (Exception unused) {
                fileInfo.title = packageArchiveInfo.applicationInfo.nonLocalizedLabel.toString();
            }
            fileInfo.size = new File(apk).length();
            h1.e(fileInfo + "");
            return fileInfo;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Receiver(actions = {"com.join.android.app.mgsim.wufun.broadcast.emu.showvippopup"})
    void Y0(@Receiver.Extra String packageName, @Receiver.Extra String gameId, @Receiver.Extra int position, @Receiver.Extra String uid) {
        Ext ext = new Ext();
        ext.setGameId(gameId);
        ext.setUid(Integer.valueOf(uid).intValue());
        ext.setPosition(position + "");
        com.papa.sim.statistic.t.l(getApplicationContext()).R1(Event.showVippopup, ext);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void Y1(String gameId, String upFilePath) {
        if (!com.join.android.app.common.utils.m.j(this)) {
            z1(null);
            this.L = false;
            return;
        }
        RequestModel requestModel = new RequestModel();
        requestModel.setDefault(this);
        ArchiveArgs archiveArgs = new ArchiveArgs();
        UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
        archiveArgs.setGameId(gameId);
        archiveArgs.setUid(accountData.getUid());
        requestModel.setArgs(archiveArgs);
        String strA = com.papa.sim.statistic.m.a(this);
        String strG = com.join.android.app.common.http.h.b().g(upFilePath, accountData.getUid() + "", accountData.getToken(), requestModel, strA, new File(upFilePath).getName(), 1, 0, new f());
        try {
            if (t2.i(strG)) {
                JsonObject asJsonObject = JsonParser.parseString(strG).getAsJsonObject();
                if (asJsonObject != null && asJsonObject.has("code") && asJsonObject.get("code").getAsInt() == 200 && asJsonObject.has("data")) {
                    JsonArray asJsonArray = asJsonObject.get("data").getAsJsonArray();
                    if (asJsonArray.size() > 0) {
                        JsonObject asJsonObject2 = asJsonArray.get(0).getAsJsonObject();
                        if (asJsonObject2.has("remoteUrl")) {
                            z1(asJsonObject2.get("remoteUrl").getAsString());
                            this.L = false;
                        }
                    }
                }
            } else {
                z1(null);
                this.L = false;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            z1(null);
            this.L = false;
        }
    }

    @Receiver(actions = {"com.join.android.app.mgsim.wufun.broadcast.emu.uesVippopup"})
    void Z0(@Receiver.Extra String packageName, @Receiver.Extra String gameId, @Receiver.Extra int position, @Receiver.Extra String uid) {
        Ext ext = new Ext();
        ext.setGameId(gameId);
        ext.setUid(Integer.valueOf(uid).intValue());
        ext.setPosition(position + "");
        com.papa.sim.statistic.t.l(getApplicationContext()).R1(Event.uesVippopup, ext);
    }

    @Receiver(actions = {BAction.ACTION_EMU_GAME_PLAY_TIMES})
    void Z1(@Receiver.Extra String gameId, @Receiver.Extra Long liveTime) {
        if (TextUtils.isEmpty(gameId)) {
            return;
        }
        Ext ext = new Ext();
        ext.setGameId(gameId);
        h1.e("liveTime:" + liveTime + " receive");
        if (liveTime.longValue() == 0) {
            return;
        }
        ext.setLiveTime(liveTime.longValue());
        ext.setClearTime(liveTime.longValue());
        h1.e("liveTime:" + liveTime + " send");
        com.papa.sim.statistic.t.l(this.f72464n).R1(Event.gamePlayTimes, ext);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background(delay = 500)
    public void a0() {
        if (com.join.android.app.common.utils.m.j(this.f72464n)) {
            try {
                String uid = AccountUtil_.getInstance_(this).getUid();
                String token = AccountUtil_.getInstance_(this).getToken();
                HashMap map = new HashMap();
                map.put("uid", uid);
                map.put(Constants.TOKEN, token);
                ResultMainBean<List<AppBean>> resultMainBeanA = com.join.mgps.rpc.impl.f.b().a(map);
                if (resultMainBeanA == null || resultMainBeanA.getFlag() != 1 || resultMainBeanA.getMessages() == null || resultMainBeanA.getMessages().getData() == null) {
                    return;
                }
                s1(resultMainBeanA.getMessages().getData());
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    void a2(List<BluetoothHandleBlackListData.DataInfo> data_info) {
        if (data_info == null || data_info.size() == 0) {
            return;
        }
        HashMap map = new HashMap();
        for (int i10 = 0; i10 < data_info.size(); i10++) {
            BluetoothHandleBlackListData.DataInfo dataInfo = data_info.get(i10);
            map.put(dataInfo.getId() + "", dataInfo.getModel_number());
        }
        com.join.mgps.joystick.map.a.b().l(map);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void b0(String packageName) {
        List<MiniGameSdkDtoAdCfgValue> ad_list;
        if (!com.join.android.app.common.utils.m.j(this)) {
            t0(getString(R.string.net_connect_failed));
            return;
        }
        Bundle bundle = new Bundle();
        try {
            bundle.putString("fromPkg", packageName);
            bundle.putString("action", "getMiniGameAdConfigResult");
            List<DownloadTask> listI = q5.f.M().I(packageName);
            String crc_link_type_val = "";
            String uid = AccountUtil_.getInstance_(this).getUid();
            if (listI != null) {
                for (DownloadTask downloadTask : listI) {
                    if (APKUtils.P(downloadTask)) {
                        crc_link_type_val = downloadTask.getCrc_link_type_val();
                        break;
                    }
                }
            }
            RequestModel<MiniGameSdkDtoRequestArgs> requestModel = new RequestModel<>();
            requestModel.setDefault(this);
            MiniGameSdkDtoRequestArgs miniGameSdkDtoRequestArgs = new MiniGameSdkDtoRequestArgs();
            miniGameSdkDtoRequestArgs.setGameId(crc_link_type_val);
            miniGameSdkDtoRequestArgs.setUid(uid);
            requestModel.setArgs(miniGameSdkDtoRequestArgs);
            ResponseModel<MiniGameSdkDtoResponseResponseData> responseModelS0 = com.join.mgps.rpc.impl.i.P0().s0(requestModel);
            if (responseModelS0 == null) {
                c1(bundle);
                return;
            }
            if (responseModelS0.getData() != null && responseModelS0.getCode() == 200 && (ad_list = responseModelS0.getData().getAd_list()) != null && ad_list.size() > 0) {
                ArrayList arrayList = new ArrayList();
                for (int i10 = 0; i10 < ad_list.size(); i10++) {
                    MiniGameSdkDtoAdCfgValue miniGameSdkDtoAdCfgValue = ad_list.get(i10);
                    i8.b bVar = new i8.b();
                    bVar.b(miniGameSdkDtoAdCfgValue.getSdk_app_id());
                    bVar.c(miniGameSdkDtoAdCfgValue.getSdk_type() == 1 ? AdChannel.Type.TT.val : miniGameSdkDtoAdCfgValue.getSdk_type() == 2 ? AdChannel.Type.GDT.val : -1);
                    arrayList.add(bVar);
                }
                AdService.b(this, arrayList);
            }
            bundle.putString("data", JsonMapper.toJsonString(responseModelS0));
            c1(bundle);
        } catch (Exception e10) {
            e10.printStackTrace();
            c1(bundle);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void c0(String gameId, int location, String typeId) {
        if (!com.join.android.app.common.utils.m.j(this)) {
            this.f72453c.privateDomainFeedbackInfo().g("");
            return;
        }
        try {
            if (this.f72476z == null) {
                this.f72476z = com.join.mgps.rpc.impl.i.P0();
            }
            RequestDomainInfoArgs requestDomainInfoArgs = new RequestDomainInfoArgs();
            requestDomainInfoArgs.setGameId(gameId);
            requestDomainInfoArgs.setLocation(Integer.valueOf(location));
            requestDomainInfoArgs.setTypeId(typeId);
            RequestModel requestModel = new RequestModel(this);
            requestModel.setArgs(requestDomainInfoArgs);
            requestModel.makeSign();
            try {
                ResponseModel<DomainInfoBean> responseModelT0 = this.f72476z.t0(requestModel.makeSign());
                if (responseModelT0 == null || responseModelT0.getData() == null) {
                    this.f72453c.privateDomainFeedbackInfo().g("");
                } else {
                    responseModelT0.getData().setGameId(gameId);
                    responseModelT0.getData().setLaunchTime(System.currentTimeMillis());
                    this.f72453c.privateDomainFeedbackInfo().g(JsonMapper.toJsonString(responseModelT0.getData()));
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                this.f72453c.privateDomainFeedbackInfo().g("");
            }
        } catch (Exception e11) {
            e11.printStackTrace();
            this.f72453c.privateDomainFeedbackInfo().g("");
        }
    }

    void c1(Bundle extras) {
        Intent intent = new Intent("com.wufun.union.ad.action.AdService");
        intent.setPackage(getPackageName());
        if (extras != null) {
            intent.putExtras(extras);
        }
        startService(intent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void d() {
        DownloadTask next;
        ArrayList arrayList = new ArrayList();
        List<DownloadTask> listV = q5.f.M().v();
        List<DownloadTask> listP = q5.f.M().P(false);
        if (listP != null && listP.size() > 0) {
            Iterator<DownloadTask> it2 = listP.iterator();
            while (it2.hasNext()) {
                DownloadTask next2 = it2.next();
                EMUApkTable eMUApkTableG0 = UtilsMy.g0(next2.getPackageName());
                boolean zE0 = (eMUApkTableG0 == null || eMUApkTableG0.getDown_type() != 2) ? UtilsMy.E0(this, eMUApkTableG0) : com.join.android.app.common.utils.o.y(eMUApkTableG0, false);
                if (!com.join.android.app.common.utils.o.t(this, eMUApkTableG0, false, next2.getPackageName())) {
                    next2.setStatus(0);
                } else if (!zE0) {
                    next2.setStatus(0);
                    it2.remove();
                } else if (UtilsMy.G0(eMUApkTableG0.getVer().split("_")[0], next2.getVer())) {
                    if (t2.h(next2.getMod_info())) {
                        next2.setStatus(9);
                        it2.remove();
                    }
                } else if (next2.getGameZipPath() == null || next2.getGameZipPath().equals("")) {
                    if (t2.h(next2.getMod_info())) {
                        next2.setStatus(9);
                        it2.remove();
                    }
                } else if (next2.getStatus() == 5 && new File(next2.getGameZipPath()).exists()) {
                    next2.setStatus(5);
                } else if (t2.h(next2.getMod_info())) {
                    next2.setStatus(9);
                    it2.remove();
                }
            }
        }
        if (listV != null) {
            Iterator<DownloadTask> it3 = listV.iterator();
            do {
                if (!it3.hasNext()) {
                    next = null;
                    break;
                }
                next = it3.next();
            } while (!d2.d(this, next));
            if (next != null) {
                listV.remove(next);
            }
            arrayList.addAll(listV);
        }
        if (listP != null) {
            arrayList.addAll(listP);
        }
        if (arrayList.size() > 0) {
            UtilsMy.Y3(this, ((DownloadTask) arrayList.get(0)).getShowName(), arrayList.size(), 11);
            return;
        }
        List<DownloadTask> listP2 = q5.f.M().P(true);
        ArrayList arrayList2 = new ArrayList();
        if (listP2 != null && listP2.size() > 0) {
            Iterator<DownloadTask> it4 = listP2.iterator();
            while (it4.hasNext()) {
                if (it4.next().getStatus() == 9) {
                    arrayList2.addAll(listP2);
                }
            }
        }
        List<DownloadTask> listP3 = q5.f.M().p();
        if (listP3 == null || listP3.size() <= 0) {
            return;
        }
        Iterator<DownloadTask> it5 = listP3.iterator();
        while (it5.hasNext()) {
            DownloadTask next3 = it5.next();
            if (next3.getFileType().equals(Dtype.chajian.name())) {
                EMUApkTable eMUApkTableN = t6.p.o().n(next3.getCrc_link_type_val());
                if (eMUApkTableN == null) {
                    eMUApkTableN = UtilsMy.g0(next3.getPackageName());
                }
                int status = next3.getStatus();
                boolean zE1 = (eMUApkTableN == null || eMUApkTableN.getDown_type() != 2) ? UtilsMy.E0(this, eMUApkTableN) : com.join.android.app.common.utils.o.y(eMUApkTableN, false);
                if (!com.join.android.app.common.utils.o.t(this, eMUApkTableN, false, next3.getPackageName())) {
                    next3.setStatus(5);
                } else if (!zE1) {
                    next3.setStatus(5);
                    it5.remove();
                } else if (UtilsMy.G0(eMUApkTableN.getVer().split("_")[0], next3.getVer())) {
                    if (t2.h(next3.getMod_info())) {
                        next3.setStatus(9);
                        arrayList2.add(next3);
                        it5.remove();
                    }
                } else if (next3.getGameZipPath() == null || next3.getGameZipPath().equals("")) {
                    if (t2.h(next3.getMod_info())) {
                        next3.setStatus(9);
                        arrayList2.add(next3);
                        it5.remove();
                    }
                } else if (next3.getStatus() == 5 && new File(next3.getGameZipPath()).exists()) {
                    next3.setStatus(5);
                } else if (t2.h(next3.getMod_info())) {
                    next3.setStatus(9);
                    arrayList2.add(next3);
                    it5.remove();
                }
                if (status != next3.getStatus()) {
                    UtilsMy.i3(next3, next3.getStatus());
                }
            } else if (next3.getFileType().equals(Dtype.android.name()) && next3.getStatus() == 9 && t2.h(next3.getMod_info())) {
                arrayList2.add(next3);
            }
        }
        if (arrayList2.size() > 0) {
            UtilsMy.Y3(this, ((DownloadTask) arrayList2.get(0)).getShowName(), arrayList2.size(), 9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background(delay = 5000)
    public void d0() {
        String strD;
        String strC;
        Iterator<ShowViewDataBean> it2;
        String strD2;
        String strC2;
        String strC3;
        String strD3;
        String strD4;
        if (com.join.android.app.common.utils.m.j(this)) {
            try {
                RequestModel<RequestGameIdArgs> requestModel = new RequestModel<>();
                requestModel.setDefault(this.f72464n);
                ResponseModel<FirstScreenAdDtoData> responseModelBody = com.join.mgps.rpc.impl.i.P0().N0().C1(requestModel).execute().body();
                if (responseModelBody == null || responseModelBody.getFlag() != 1) {
                    this.f72453c.isShowSplash().g(Boolean.FALSE);
                    return;
                }
                List<ShowViewDataBean> wf_ad_list = responseModelBody.getData().getWf_ad_list();
                if (responseModelBody.getData().getTh_ad_switch() != null) {
                    if (responseModelBody.getData().getTh_ad_switch().getFx_ad_switch() == 1) {
                        this.f72453c.firstNewSplashV2().g(Boolean.FALSE);
                    }
                    this.f72453c.thAdSwitchCfg().g(JsonMapper.toJsonString(responseModelBody.getData().getTh_ad_switch()));
                } else {
                    this.f72453c.thAdSwitchCfg().g("");
                }
                if (wf_ad_list.size() <= 0) {
                    this.f72453c.isShowSplash().g(Boolean.FALSE);
                    return;
                }
                List<ShowViewDataBeanTable> listD = i0.o().d();
                ArrayList<ShowViewDataBean> arrayList = new ArrayList();
                Iterator<ShowViewDataBeanTable> it3 = listD.iterator();
                while (it3.hasNext()) {
                    arrayList.add(it3.next().getShowVieDatabean());
                }
                File file = new File(this.f72466p);
                Iterator<ShowViewDataBean> it4 = wf_ad_list.iterator();
                while (it4.hasNext()) {
                    ShowViewDataBean next = it4.next();
                    for (ShowViewDataBean showViewDataBean : arrayList) {
                        if (next.getStrategy_id().equals(showViewDataBean.getStrategy_id())) {
                            boolean z10 = false;
                            showViewDataBean.setNeedDelt(false);
                            next.setNeedDelt(false);
                            if (showViewDataBean.getUp_times().equals(next.getUp_times()) && file.exists()) {
                                for (SplashIntentBean splashIntentBean : showViewDataBean.getJump_info()) {
                                    if (t2.h(splashIntentBean.getPic_remote_local()) || !new File(splashIntentBean.getPic_remote_local()).exists()) {
                                        for (SplashIntentBean splashIntentBean2 : next.getJump_info()) {
                                            StringBuilder sb2 = new StringBuilder();
                                            Iterator<ShowViewDataBean> it5 = it4;
                                            sb2.append(splashIntentBean2.getCrc_link_type_val());
                                            sb2.append("");
                                            if (sb2.toString().equals(splashIntentBean.getCrc_link_type_val())) {
                                                if (!t2.h(splashIntentBean2.getVedio_url()) && (strD3 = D(splashIntentBean2.getVedio_url())) != null) {
                                                    splashIntentBean.setVedio_url(strD3);
                                                    z10 = true;
                                                }
                                                if (!t2.h(splashIntentBean2.getPic_remote()) && (strC3 = C(splashIntentBean2.getPic_remote())) != null) {
                                                    splashIntentBean.setPic_remote_local(strC3);
                                                    z10 = true;
                                                }
                                            }
                                            it4 = it5;
                                        }
                                    }
                                    Iterator<ShowViewDataBean> it6 = it4;
                                    if (t2.h(splashIntentBean.getVedio_url_local()) || !new File(splashIntentBean.getVedio_url_local()).exists()) {
                                        for (SplashIntentBean splashIntentBean3 : next.getJump_info()) {
                                            if ((splashIntentBean3.getCrc_link_type_val() + "").equals(splashIntentBean.getCrc_link_type_val()) && !t2.h(splashIntentBean3.getVedio_url()) && (strD4 = D(splashIntentBean3.getVedio_url())) != null) {
                                                splashIntentBean.setVedio_url_local(strD4);
                                                z10 = true;
                                            }
                                        }
                                    }
                                    it4 = it6;
                                }
                                it2 = it4;
                                if (z10) {
                                    i0.o().m(showViewDataBean.getShowVieDatabeanTable());
                                    if (this.f72453c.lastClickPageAD().d().equals(showViewDataBean.getId() + "")) {
                                        this.f72453c.lastClickPageAD().g("0");
                                    }
                                }
                            } else {
                                it2 = it4;
                                next.setId(showViewDataBean.getId());
                                for (SplashIntentBean splashIntentBean4 : next.getJump_info()) {
                                    if (!TextUtils.isEmpty(splashIntentBean4.getPic_remote()) && (strC2 = C(splashIntentBean4.getPic_remote())) != null) {
                                        splashIntentBean4.setPic_remote_local(strC2);
                                    }
                                    if (!TextUtils.isEmpty(splashIntentBean4.getVedio_url()) && (strD2 = D(splashIntentBean4.getVedio_url())) != null) {
                                        splashIntentBean4.setVedio_url_local(strD2);
                                    }
                                }
                                i0.o().m(next.getShowVieDatabeanTable());
                                if (this.f72453c.lastClickPageAD().d().equals(showViewDataBean.getId() + "")) {
                                    this.f72453c.lastClickPageAD().g("0");
                                }
                            }
                        } else {
                            it2 = it4;
                        }
                        it4 = it2;
                    }
                }
                for (ShowViewDataBean showViewDataBean2 : wf_ad_list) {
                    if (showViewDataBean2.isNeedDelt() || !file.exists()) {
                        for (SplashIntentBean splashIntentBean5 : showViewDataBean2.getJump_info()) {
                            if (!TextUtils.isEmpty(splashIntentBean5.getPic_remote()) && (strC = C(splashIntentBean5.getPic_remote())) != null) {
                                splashIntentBean5.setPic_remote_local(strC);
                            }
                            if (!TextUtils.isEmpty(splashIntentBean5.getVedio_url()) && (strD = D(splashIntentBean5.getVedio_url())) != null) {
                                splashIntentBean5.setVedio_url_local(strD);
                            }
                        }
                        i0.o().m(showViewDataBean2.getShowVieDatabeanTable());
                    }
                }
                for (ShowViewDataBean showViewDataBean3 : arrayList) {
                    if (showViewDataBean3.isNeedDelt()) {
                        for (SplashIntentBean splashIntentBean6 : showViewDataBean3.getJump_info()) {
                            if (!TextUtils.isEmpty(splashIntentBean6.getPic_remote())) {
                                UtilsMy.delete(new File(splashIntentBean6.getPic_remote()));
                            }
                            if (!TextUtils.isEmpty(splashIntentBean6.getVedio_url())) {
                                UtilsMy.delete(new File(splashIntentBean6.getVedio_url()));
                            }
                        }
                        i0.o().delete(showViewDataBean3.getShowVieDatabeanTable());
                    }
                }
                this.f72453c.firstNewSplashV2().g(Boolean.FALSE);
                this.f72453c.isShowSplash().g(Boolean.valueOf(p0()));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    void d1(String roomId, String gameId, String uid, String msg) {
        h1.e("reconnectJoinRoom", msg, "" + roomId);
        if (!this.f72473w) {
            t();
            return;
        }
        try {
            ArenaRequest arenaRequest = new ArenaRequest(ArenaConstants.ArenaCommand.CMD_SEND_REJOIN_ROOM);
            try {
                if (!TextUtils.isEmpty(gameId)) {
                    arenaRequest.gameId = Long.parseLong(gameId);
                }
                if (!TextUtils.isEmpty(roomId)) {
                    arenaRequest.roomId = Integer.parseInt(roomId);
                }
                if (!TextUtils.isEmpty(uid)) {
                    arenaRequest.uid = Integer.parseInt(uid);
                }
            } catch (Exception unused) {
            }
            arenaRequest.register_type = ArenaConstants.REGISTER_TYPE_EMU;
            arenaRequest.battleScoreBoard = msg;
            this.f72472v.f(arenaRequest);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void e() {
        try {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("MG=>LOGIN1--");
            sb2.append(MApplication.Y);
            sb2.append("");
            UserInfo accountData = AccountUtil_.getInstance_(this.f72464n).getAccountData();
            int uid = accountData.getUid();
            String token = accountData.getToken();
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(com.join.mgps.rpc.h.f72365n + "/im/account/login?uid=" + uid + "&nickname=" + URLEncoder.encode(accountData.getNickname()) + "&battleRoomId=" + MApplication.Y + "&token=" + token).openConnection();
            httpURLConnection.setRequestMethod("GET");
            httpURLConnection.connect();
            if (200 != httpURLConnection.getResponseCode()) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("MG=>LOGIN200!");
                sb3.append(httpURLConnection.getResponseCode());
                return;
            }
            JSONObject jSONObjectOptJSONObject = new JSONObject(new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream(), "utf-8")).readLine()).optJSONObject("data");
            jSONObjectOptJSONObject.optString("uid");
            jSONObjectOptJSONObject.optString(Constants.TOKEN);
            JSONArray jSONArray = new JSONArray(jSONObjectOptJSONObject.optString("quickMessages"));
            String str = "";
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                str = str + jSONArray.getString(i10) + "|";
            }
            if (!str.equals("")) {
                this.f72455e.putExtra("type", "12");
                this.f72455e.putExtra("msg", str);
                sendBroadcast(this.f72455e);
            }
            StringBuilder sb4 = new StringBuilder();
            sb4.append("弹幕");
            sb4.append(str);
            this.J = jSONObjectOptJSONObject.optString("chatRoomId");
            if (com.wufan.friend.chat.c.u().F()) {
                B1();
            } else {
                com.wufan.friend.chat.c.u().K();
            }
        } catch (Exception e10) {
            StringBuilder sb5 = new StringBuilder();
            sb5.append("-->");
            sb5.append(e10.toString());
            X = false;
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void e0() {
        if (com.join.android.app.common.utils.m.j(this.f72464n)) {
            try {
                CommentResponse<CommentTokenBean> commentResponseG = com.join.mgps.rpc.impl.e.m().g(RequestBeanUtil.getInstance(this).getTokenRequestBean(AccountUtil_.getInstance_(this).getUid(), ""));
                if (commentResponseG == null || commentResponseG.getCode() != 0 || commentResponseG.getData_info() == null || TextUtils.isEmpty(commentResponseG.getData_info().getToken())) {
                    return;
                }
                String strF = AESUtils.f(commentResponseG.getData_info().getToken() + "|" + commentResponseG.getData_info().getTimes());
                StringBuilder sb2 = new StringBuilder();
                sb2.append("token=");
                sb2.append(strF);
                h1.e("getToken", sb2.toString());
                this.f72453c.commentToken().g(strF);
                this.f72453c.lastCheckInTime().g(Long.valueOf(System.currentTimeMillis()));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @Receiver(actions = {p5.a.f96233z})
    void e1() {
        stopSelf();
    }

    public void f(String text) {
        this.f72455e.putExtra("type", "4");
        this.f72455e.putExtra("msg", text + "");
        sendBroadcast(this.f72455e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void f0() {
        Context context;
        Intent intent;
        try {
            if (!com.join.android.app.common.utils.m.j(this.f72464n)) {
                H1(this.f72464n.getResources().getString(R.string.net_connect_failed));
                return;
            }
            try {
                UserInfo accountData = AccountUtil_.getInstance_(this.f72464n).getAccountData();
                if (accountData == null) {
                    accountData = UserInfo.getDefaultInstance();
                }
                RequestModel requestModel = new RequestModel();
                VideoAdCfgRequestArgs videoAdCfgRequestArgs = new VideoAdCfgRequestArgs();
                videoAdCfgRequestArgs.setUid(accountData.getUid());
                videoAdCfgRequestArgs.setToken(accountData.getToken());
                requestModel.setArgs(videoAdCfgRequestArgs);
                requestModel.setDefault(this.f72464n);
                ResponseModel<VideoAdCfgBean> responseModelS = com.join.mgps.rpc.impl.i.P0().s(requestModel.makeSign());
                if (responseModelS != null && responseModelS.getCode() == 200) {
                    VideoAdCfgBean data = responseModelS.getData();
                    this.f72453c.arcadeGameAdCfg().g(BaseBean.toJsonStringOrEmpty(data.getArcade_game_ad_cfg()));
                    this.f72453c.singleGameAdCfg().g(BaseBean.toJsonStringOrEmpty(data.getSingle_game_ad_cfg()));
                    this.f72453c.pspGameAdCfg().g(BaseBean.toJsonStringOrEmpty(data.getPsp_game_ad_cfg()));
                    this.f72453c.pspAdShowTimeSwitch().g(Integer.valueOf(data.getPsp_game_ad_cfg().getSwitch_state()));
                    this.f72453c.pspAdShowTime().g(Integer.valueOf(data.getPsp_game_ad_cfg().getCount_down()));
                    this.f72453c.downloadSpeedupCfg().g(BaseBean.toJsonStringOrEmpty(data.getDownload_speedup_cfg()));
                    this.f72453c.mod_normal_ad_cfg().g(BaseBean.toJsonStringOrEmpty(data.getMod_normal_ad_cfg()));
                    this.f72453c.mod_enhance_ad_cfg().g(BaseBean.toJsonStringOrEmpty(data.getMod_enhance_ad_cfg()));
                    this.f72453c.simulator_path_cfg().g(BaseBean.toJsonStringOrEmpty(data.getSimulator_path_cfg()));
                    this.f72453c.simulator_fc_cfg().g(BaseBean.toJsonStringOrEmpty(data.getSimulator_fc_cfg()));
                    this.f72453c.simulator_gba_cfg().g(BaseBean.toJsonStringOrEmpty(data.getSimulator_gba_cfg()));
                    this.f72453c.simulator_psp_cfg().g(BaseBean.toJsonStringOrEmpty(data.getSimulator_psp_cfg()));
                    this.f72453c.simulator_jj_cfg().g(BaseBean.toJsonStringOrEmpty(data.getSimulator_jj_cfg()));
                    this.f72453c.simulator_gold_finger_cfg().g(BaseBean.toJsonStringOrEmpty(data.getSimulator_gold_finger_cfg()));
                    this.f72453c.simulator_exit_information_cfg().g(BaseBean.toJsonStringOrEmpty(data.getSimulator_exit_information_cfg()));
                    this.f72453c.simulator_exit_lottery_cfg().g(BaseBean.toJsonStringOrEmpty(data.getSimulator_exit_lottery_cfg()));
                    this.f72453c.simulator_exit_double_cfg().g(BaseBean.toJsonStringOrEmpty(data.getSimulator_exit_double_cfg()));
                    this.f72453c.simulator_exit_open_cfg().g(BaseBean.toJsonStringOrEmpty(data.getSimulator_exit_open_cfg()));
                    this.f72453c.ssp_cfg().g(BaseBean.toJsonStringOrEmpty(data.getSsp_cfg()));
                    this.f72453c.video_init_cfg().g(BaseBean.toJsonStringOrEmpty(data.getVideo_init_cfg()));
                    if (data.getDownload_speedup_cfg() == null || data.getDownload_speedup_cfg().getSwitch_state() != 1) {
                        this.f72453c.downloadSpeedUpCountAD().g(0);
                    } else {
                        this.f72453c.downloadSpeedUpCountAD().g(Integer.valueOf(data.getDownload_speedup_cfg().getSpeedup_times()));
                    }
                } else if (responseModelS != null) {
                    H1(responseModelS.getMessage());
                }
                context = this.f72464n;
                intent = new Intent(p5.a.f96226v0);
            } catch (Exception e10) {
                e10.printStackTrace();
                H1(this.f72464n.getResources().getString(R.string.request_failure));
                context = this.f72464n;
                intent = new Intent(p5.a.f96226v0);
            }
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            this.f72464n.sendBroadcast(new Intent(p5.a.f96226v0));
            throw th;
        }
    }

    @Receiver(actions = {p5.a.f96219s})
    void f1() {
        AccountUtil_.getInstance_(this.f72464n).accountLoginOut(this.f72464n);
        R1();
    }

    void g() {
        if (this.f72462l == null) {
            IntentFilter intentFilter = new IntentFilter();
            this.f72457g = intentFilter;
            intentFilter.addAction("com.join.android.app.mgsim.wufun.loginNim");
            LoginReceive loginReceive = new LoginReceive();
            this.f72462l = loginReceive;
            registerReceiver(loginReceive, this.f72457g);
        }
        if (this.f72463m == null) {
            IntentFilter intentFilter2 = new IntentFilter();
            this.f72461k = intentFilter2;
            intentFilter2.addAction("com.join.android.app.mgsim.wufun.SendTextMsg");
            SendTextMessage sendTextMessage = new SendTextMessage();
            this.f72463m = sendTextMessage;
            registerReceiver(sendTextMessage, this.f72461k);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void g0() {
        if (com.join.android.app.common.utils.m.j(this)) {
            try {
                ForumBannerBean.ForumBannerResponseBean forumBannerResponseBeanF = com.join.mgps.rpc.impl.d.O1().F(r0.V(this, 1));
                if (forumBannerResponseBeanF != null && forumBannerResponseBeanF.getFlag().equals("1") && forumBannerResponseBeanF.getMessages() != null && forumBannerResponseBeanF.getMessages().getData() != null) {
                    p1(forumBannerResponseBeanF.getMessages().getData());
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @Receiver(actions = {p5.a.f96208m0})
    void g1(@Receiver.Extra String imagePath, @Receiver.Extra Integer from) {
        M1(imagePath, from.intValue());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void h0() {
        if (com.join.android.app.common.utils.m.j(this)) {
            try {
                ForumResponse<ForumData.ForumForumWelcomeData> forumResponseQ0 = com.join.mgps.rpc.impl.g.A0().q0("");
                ForumData.ForumForumWelcomeData data = forumResponseQ0 != null ? forumResponseQ0.getData() : null;
                if (data != null) {
                    q1(data);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @Receiver(actions = {p5.a.B, p5.a.H})
    void h1() {
        a0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void i0(int page) {
        ForumData.ForumForumWelcomePostsData data;
        if (com.join.android.app.common.utils.m.j(this)) {
            try {
                UserInfo userInfoT = r0.T(this);
                ForumResponse<ForumData.ForumForumWelcomePostsData> forumResponseW = r0.Y0(this) ? com.join.mgps.rpc.impl.g.A0().w(page, r0.f49989d, userInfoT.getUid(), userInfoT.getToken(), "") : com.join.mgps.rpc.impl.g.A0().J(page, r0.f49989d, "");
                if (forumResponseW == null || (data = forumResponseW.getData()) == null) {
                    return;
                }
                r1(data);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    void i1() {
        this.K = new GameReceiver();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(this.K.f72478b);
        intentFilter.addAction(this.K.f72479c);
        intentFilter.addAction(this.K.f72480d);
        intentFilter.addAction(this.K.f72481e);
        intentFilter.addAction(this.K.f72482f);
        intentFilter.addAction(this.K.f72483g);
        intentFilter.addAction(this.K.f72484h);
        registerReceiver(this.K, intentFilter);
    }

    void k0(FileInfo fi, DownloadScanEvent event) {
        boolean z10;
        if (fi == null || event == null) {
            return;
        }
        String str = fi.pkg;
        try {
            DownloadTask task = event.getTask();
            if (task != null) {
                z10 = true;
                if (t2.h(task.getPath()) && t2.i(fi.getPath())) {
                    String path = fi.getPath();
                    task.setPath(path);
                    if (fi.getFileType() == 2 || fi.getFileType() == 1) {
                        task.setGameZipPath(path);
                        task.setStatus(11);
                    } else if (fi.getFileType() == 3) {
                        task.setStatus(31);
                    }
                    com.php25.PDownload.d.h(task);
                    task.setSize(fi.getSize());
                    task.setDuration(10L);
                    task.setShowSize(UtilsMy.f(fi.getSize()));
                }
                String ext = task.getExt();
                ExtBean extBean = t2.i(ext) ? (ExtBean) JsonMapper.getInstance().fromJson(ext, ExtBean.class) : null;
                if (extBean == null) {
                    extBean = new ExtBean();
                }
                extBean.setQkPosition("qk");
                extBean.setDown_from(1);
                task.setExt(JsonMapper.toJsonString(extBean));
                q5.f.M().m(task);
                DownloadScanEvent downloadScanEvent = new DownloadScanEvent();
                downloadScanEvent.setTask(task);
                org.greenrobot.eventbus.c.f().q(downloadScanEvent);
            } else {
                z10 = false;
            }
            if (z10) {
                this.Q.remove(str);
                this.P.remove(str);
                t1();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void k1(String gameid) {
        try {
            if (this.f72476z == null) {
                this.f72476z = com.join.mgps.rpc.impl.i.P0();
            }
            if (!com.join.android.app.common.utils.m.j(this.f72464n)) {
                t0("请检查网络！");
                y1(gameid, 49);
                return;
            }
            UserInfo accountData = AccountUtil_.getInstance_(this.f72464n).getAccountData();
            int uid = accountData != null ? accountData.getUid() : 0;
            if (IntentUtil.getInstance().goLogin(this.f72464n)) {
                t0("请先登录！");
                y1(gameid, 49);
                return;
            }
            RequestGameBespeakArgs requestGameBespeakArgs = new RequestGameBespeakArgs();
            requestGameBespeakArgs.setGameId(gameid);
            requestGameBespeakArgs.setUid(uid);
            requestGameBespeakArgs.setMobile(accountData.getMobile());
            RequestModel<RequestGameBespeakArgs> requestModel = new RequestModel<>(this.f72464n);
            requestModel.setArgs(requestGameBespeakArgs);
            ResponseModel<GameBespeakBean> responseModelP = this.f72476z.P(requestModel);
            if (responseModelP == null) {
                t0("请求失败！");
                y1(gameid, 49);
                return;
            }
            if (responseModelP.getFlag() != 1) {
                y1(gameid, 49);
                return;
            }
            GameBespeakBean data = responseModelP.getData();
            if (data != null) {
                if (data.getPdInfo() != null) {
                    com.papa.sim.statistic.t.l(this.f72464n).R1(Event.pdGameSearchSubscribe, new Ext().setGameId(gameid).setTestAbNumber(data.getPdInfo().getAb_test_number()).setIsJoin(data.getPdInfo().getIs_join()));
                }
                Intent intent = new Intent("com.broadcast.bespeak.sussess");
                intent.putExtra("gameid", gameid);
                intent.putExtra("game_book", data.isBespeak() ? 1 : 0);
                intent.putExtra("message", data.getHint());
                intent.putExtra("pd_info", data.getPdInfo());
                this.f72464n.sendBroadcast(intent);
                t0("收到，游戏上架后会通知您");
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            y1(gameid, 49);
        }
    }

    @Receiver(actions = {p5.a.f96215q})
    void l0() {
        a3.b(getApplicationContext()).d("存储空间不足，请清理空间后再下载");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void l1() {
        BluetoothHandleBlackListData data;
        if (com.join.android.app.common.utils.m.j(this)) {
            try {
                BluetoothHandleBlackListRequestBean bluetoothHandleBlackListRequestBean = new BluetoothHandleBlackListRequestBean();
                bluetoothHandleBlackListRequestBean.setDevice_id("");
                AccountResultMainBean<BluetoothHandleBlackListData> accountResultMainBeanF = com.join.mgps.rpc.impl.a.c0().F(bluetoothHandleBlackListRequestBean.getParams());
                if (accountResultMainBeanF == null || (data = accountResultMainBeanF.getData()) == null || !data.is_success()) {
                    return;
                }
                a2(data.getData_info());
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void m1(String gameid) {
        try {
            if (!com.join.android.app.common.utils.m.j(this.f72464n)) {
                t0("请检查网络！");
                y1(gameid, 49);
                return;
            }
            if (this.f72476z == null) {
                this.f72476z = com.join.mgps.rpc.impl.i.P0();
            }
            UserInfo accountData = AccountUtil_.getInstance_(this.f72464n).getAccountData();
            int i10 = 0;
            int uid = accountData != null ? accountData.getUid() : 0;
            if (IntentUtil.getInstance().goLogin(this.f72464n)) {
                t0("请先登录！");
                y1(gameid, 49);
                return;
            }
            RequestGameBespeakArgs requestGameBespeakArgs = new RequestGameBespeakArgs();
            requestGameBespeakArgs.setGameId(gameid);
            requestGameBespeakArgs.setUid(uid);
            requestGameBespeakArgs.setMobile(accountData.getMobile());
            RequestModel<RequestGameBespeakArgs> requestModel = new RequestModel<>(this.f72464n);
            requestModel.setArgs(requestGameBespeakArgs);
            ResponseModel<GameBespeakBean> responseModelG0 = this.f72476z.G0(requestModel);
            if (responseModelG0 == null) {
                t0("请求失败！");
                y1(gameid, 49);
                return;
            }
            if (responseModelG0.getFlag() != 1) {
                y1(gameid, 49);
                return;
            }
            GameBespeakBean data = responseModelG0.getData();
            if (data != null) {
                if (data.getPdInfo() != null) {
                    com.papa.sim.statistic.t.l(this.f72464n).R1(Event.pdGameSearchSubscribe, new Ext().setGameId(gameid).setTestAbNumber(data.getPdInfo().getAb_test_number()).setIsJoin(data.getPdInfo().getIs_join()));
                }
                Intent intent = new Intent("com.broadcast.bespeak.sussess");
                intent.putExtra("gameid", gameid);
                if (!data.isBespeak()) {
                    i10 = 1;
                }
                intent.putExtra("game_book", i10);
                this.f72464n.sendBroadcast(intent);
            }
            t0("取消预约成功");
        } catch (Exception e10) {
            e10.printStackTrace();
            y1(gameid, 49);
        }
    }

    boolean n0(String pkg) {
        try {
            this.f72464n.getPackageManager().getPackageInfo(pkg, 1);
            return true;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    @Receiver(actions = {"com.join.android.app.mgsim.wufun.broadcast.emu.adInfo"})
    void o1(@Receiver.Extra String md5Str) {
        this.f72453c.hasShowAdInfo().g(md5Str);
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        if (!org.greenrobot.eventbus.c.f().o(this)) {
            org.greenrobot.eventbus.c.f().v(this);
        }
        g();
        com.join.android.app.common.http.h.b().c(this);
        if (w0.n()) {
            return;
        }
        com.wufan.friend.chat.c.u();
        h1.e("FriendPresenter srv login");
        com.wufan.friend.chat.c.u().K();
        i1();
        d0();
        t();
    }

    @Override // android.app.Service
    public void onDestroy() {
        this.f72467q = true;
        try {
            ScheduledExecutorService scheduledExecutorService = this.f72452b;
            if (scheduledExecutorService != null && !scheduledExecutorService.isShutdown()) {
                this.f72452b.shutdown();
            }
            P1();
            LoginReceive loginReceive = this.f72462l;
            if (loginReceive != null) {
                unregisterReceiver(loginReceive);
            }
            SendTextMessage sendTextMessage = this.f72463m;
            if (sendTextMessage != null) {
                unregisterReceiver(sendTextMessage);
            }
            com.github.snowdream.android.app.downloader.b bVar = this.f72469s;
            if (bVar != null) {
                bVar.n();
                this.f72471u.clear();
            }
            if (org.greenrobot.eventbus.c.f().o(this)) {
                org.greenrobot.eventbus.c.f().A(this);
            }
            V1();
            U1();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        super.onDestroy();
    }

    @Subscribe
    public void onFriendEvent(com.wufan.friend.chat.protocol.Response response) {
        ChatMessageNotification chatMsgNotification;
        if (response == null) {
            return;
        }
        try {
            if (response.getServiceValue() == 1 && response.getPathValue() == 1) {
                if (response.getData() == null || response.getData().getLoginData() == null || !response.getData().getLoginData().getSucceed()) {
                    h1.e("channel", response.getData().getLoginData().getMessage());
                    this.f72468r.postDelayed(new Runnable() { // from class: com.join.mgps.service.b
                        @Override // java.lang.Runnable
                        public final void run() {
                            CommonService.r0();
                        }
                    }, 5000L);
                } else {
                    h1.e("channel", "登录成功！");
                    com.wufan.friend.chat.c.u().T(true);
                    B1();
                }
            }
            if (response.getNotificationTypeValue() != 6 || response.getData() == null || response.getData().getNotification() == null || (chatMsgNotification = response.getData().getNotification().getChatMsgNotification()) == null) {
                return;
            }
            S1(chatMsgNotification.getMessage());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int flags, int startId) {
        String str;
        DownloadTask downloadTask;
        boolean zIsFromRecomDown;
        this.f72464n = this;
        if (intent != null) {
            String stringExtra = intent.getStringExtra("action");
            if (!TextUtils.isEmpty(stringExtra)) {
                if (stringExtra.equals("launchVGame")) {
                    com.join.mgps.va.overmind.i.q().a0(this, 0, intent.getStringExtra("packageName"));
                    return super.onStartCommand(intent, flags, startId);
                }
                if (stringExtra.equals("getMiniGameConfig")) {
                    b0(intent.getStringExtra("fromPkg"));
                } else if (stringExtra.equals("adStatisticEvent")) {
                    v1(intent.getStringExtra("fromPkg"), intent.getStringExtra(NotificationCompat.CATEGORY_EVENT), intent.getStringExtra("adId"));
                } else if (stringExtra.equals("downloadQuark")) {
                    F(intent.getBooleanExtra("silent", true), intent.getBooleanExtra("isOm", true), intent.getStringExtra("qkPosition"));
                } else if (stringExtra.equals("retrieveQuarkScanEvent")) {
                    u0();
                } else if (stringExtra.equals("quarkScan")) {
                    u1();
                } else {
                    if (stringExtra.equals("sendHMMessage")) {
                        String stringExtra2 = intent.getStringExtra("message");
                        if (!TextUtils.isEmpty(stringExtra2)) {
                            w0("send message in main, call send");
                            MessageSDK.getInstance().sendMessage(stringExtra2, new j());
                        }
                        return super.onStartCommand(intent, flags, startId);
                    }
                    if (stringExtra.equals("postHMMessageReceive")) {
                        String stringExtra3 = intent.getStringExtra("message");
                        if (!TextUtils.isEmpty(stringExtra3)) {
                            HMMessage hMMessageA = com.join.mgps.cloud.c.f64188e.a(stringExtra3);
                            if (hMMessageA != null) {
                                j0.a().c(hMMessageA);
                            }
                            return super.onStartCommand(intent, flags, startId);
                        }
                    }
                }
            }
        }
        if (intent != null && t2.i(intent.getStringExtra("paygameid"))) {
            v(intent.getStringExtra("paygameid"), intent.getBooleanExtra("fromSdk", false), intent.getStringExtra("appkey"));
        } else if (intent != null && t2.i(intent.getStringExtra("downGameId"))) {
            boolean booleanExtra = intent.getBooleanExtra("uncheckSelfSupport", false);
            boolean booleanExtra2 = intent.getBooleanExtra("disableShowSpeedUpPrompt", false);
            long longExtra = intent.getLongExtra("resourceSize", 0L);
            String stringExtra4 = intent.getStringExtra("ext");
            boolean booleanExtra3 = intent.getBooleanExtra("fromRecomDown", false);
            intent.getBooleanExtra("showRecommend", true);
            U(intent.getStringExtra("downGameId"), stringExtra4, booleanExtra, longExtra, (intent.getSerializableExtra("data") == null || !(intent.getSerializableExtra("data") instanceof QueryDownloadInfoResponseData)) ? null : (QueryDownloadInfoResponseData) intent.getSerializableExtra("data"), booleanExtra2, intent.getIntExtra("_from", 0), intent.getIntExtra("_from_type", 0), booleanExtra3, (DownloadGameArgsBean) intent.getSerializableExtra("_downloadArgs"));
        } else if (intent != null && t2.i(intent.getStringExtra("requestAndDownloadGameById"))) {
            DownloadGameArgsBean downloadGameArgsBean = (DownloadGameArgsBean) intent.getSerializableExtra("_downloadArgs");
            if (downloadGameArgsBean == null) {
                downloadGameArgsBean = new DownloadGameArgsBean();
                downloadGameArgsBean.setGameId(intent.getStringExtra("requestAndDownloadGameById"));
            }
            j1(downloadGameArgsBean, 0);
        } else if (intent != null && t2.i(intent.getStringExtra("requestAndUpdateGameById"))) {
            DownloadGameArgsBean downloadGameArgsBean2 = (DownloadGameArgsBean) intent.getSerializableExtra("_downloadArgs");
            if (downloadGameArgsBean2 == null) {
                downloadGameArgsBean2 = new DownloadGameArgsBean();
                downloadGameArgsBean2.setGameId(intent.getStringExtra("requestAndUpdateGameById"));
            }
            j1(downloadGameArgsBean2, 1);
        } else if (intent != null && t2.i(intent.getStringExtra("requestAndChoiceUpdateGameById"))) {
            DownloadGameArgsBean downloadGameArgsBean3 = (DownloadGameArgsBean) intent.getSerializableExtra("_downloadArgs");
            if (downloadGameArgsBean3 == null) {
                downloadGameArgsBean3 = new DownloadGameArgsBean();
                downloadGameArgsBean3.setGameId(intent.getStringExtra("requestAndChoiceUpdateGameById"));
            }
            j1(downloadGameArgsBean3, 2);
        } else if (intent != null && t2.i(intent.getStringExtra("getPrivateDomainById"))) {
            HashMap map = (HashMap) intent.getSerializableExtra("_ArgMaps");
            if (map != null) {
                try {
                    String stringExtra5 = intent.getStringExtra("getPrivateDomainById");
                    int iIntValue = map.get("location") instanceof Integer ? ((Integer) map.get("location")).intValue() : 0;
                    String str2 = map.get("typeId") instanceof String ? (String) map.get("typeId") : "0";
                    if (t2.i(stringExtra5) && iIntValue != 0) {
                        c0(stringExtra5, iIntValue, str2);
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        } else if (intent != null && t2.i(intent.getStringExtra("gameDownloadDetail"))) {
            DownloadGameArgsBean downloadGameArgsBean4 = new DownloadGameArgsBean();
            downloadGameArgsBean4.setGameId(intent.getStringExtra("gameDownloadDetail"));
            downloadGameArgsBean4.setFromRecommend(intent.getBooleanExtra("fromRecomDown", false));
            downloadGameArgsBean4.setFrom(intent.getIntExtra("_from", 0));
            downloadGameArgsBean4.setFromType(intent.getIntExtra("_from_type", 0));
            downloadGameArgsBean4.setKeyWord(intent.getStringExtra("keyWord"));
            downloadGameArgsBean4.setRecPosition(intent.getStringExtra("recPosition"));
            downloadGameArgsBean4.setRemarks(intent.getStringExtra("remarks"));
            downloadGameArgsBean4.setNodeId(intent.getStringExtra("nodeId"));
            downloadGameArgsBean4.setVolcanoOther(intent.getStringExtra("volcanoOther"));
            downloadGameArgsBean4.setLocation(intent.getIntExtra("location", 0));
            downloadGameArgsBean4.setDownType(intent.getIntExtra("downType", 0));
            downloadGameArgsBean4.setExt(intent.getStringExtra("ext"));
            downloadGameArgsBean4.setPackagePath(intent.getStringExtra("packagePath"));
            Z(downloadGameArgsBean4);
        } else if (intent != null && t2.i(intent.getStringExtra("gameDownloadDetail2"))) {
            DownloadTask downloadTask2 = this.f72475y;
            if (downloadTask2 != null && downloadTask2.getCrc_link_type_val().equals(intent.getStringExtra("gameDownloadDetail2"))) {
                if (this.f72475y.getDown_status() == 5) {
                    UtilsMy.n1(this.f72464n, this.f72475y);
                } else {
                    Context context = this.f72464n;
                    DownloadTask downloadTask3 = this.f72475y;
                    UtilsMy.W0(context, downloadTask3, downloadTask3.getTp_down_url(), this.f72475y.getOther_down_switch(), this.f72475y.getCdn_down_switch());
                }
            }
        } else if (intent != null && t2.i(intent.getStringExtra("downGameIdNotSelfSupport"))) {
            String stringExtra6 = intent.getStringExtra("downGameIdNotSelfSupport");
            if (intent.getSerializableExtra("downloadTask") == null || !(intent.getSerializableExtra("downloadTask") instanceof DownloadTask)) {
                str = "";
                downloadTask = null;
                zIsFromRecomDown = false;
            } else {
                DownloadTask downloadTask4 = (DownloadTask) intent.getSerializableExtra("downloadTask");
                String ext = downloadTask4.getExt();
                downloadTask = downloadTask4;
                zIsFromRecomDown = downloadTask4.isFromRecomDown();
                str = ext;
            }
            E(stringExtra6, str, downloadTask, zIsFromRecomDown, (DownloadGameArgsBean) intent.getSerializableExtra("_downloadArgs"));
        } else if (intent != null && t2.i(intent.getStringExtra("accountloginSuccess"))) {
            R();
            X();
        } else if (intent != null && intent.getSerializableExtra("checkcoin") != null) {
            x((DownloadTask) intent.getSerializableExtra("checkcoin"));
        } else if (intent != null && intent.getSerializableExtra("sharePostData") != null) {
            D1((SharePostRequest) intent.getSerializableExtra("sharePostData"));
        } else if (intent != null && intent.getSerializableExtra("getDownloadRecomedData") != null) {
            V((String) intent.getSerializableExtra("getDownloadRecomedData"), intent.getStringExtra("showName"), Boolean.valueOf(intent.getBooleanExtra("fromRecommendDown", false)).booleanValue());
        } else if (intent != null && intent.getSerializableExtra("onClickGamebeSpeakGameId") != null) {
            k1((String) intent.getSerializableExtra("onClickGamebeSpeakGameId"));
        } else if (intent != null && intent.getSerializableExtra("onClickUnGamebeSpeakGameId") != null) {
            m1((String) intent.getSerializableExtra("onClickUnGamebeSpeakGameId"));
        } else if (intent == null || intent.getSerializableExtra("downloadByQuark") == null) {
            try {
                if (com.join.mgps.wrapper.a.C0756a.a()) {
                    q0();
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
            this.f72466p = z.d(this.f72464n).getAbsolutePath();
            this.f72452b.scheduleWithFixedDelay(new u(), 0L, 50L, TimeUnit.MINUTES);
            this.f72452b.scheduleWithFixedDelay(new s(this, null), 10L, 30L, TimeUnit.SECONDS);
            R();
        } else {
            C0((DownloadScanEvent) intent.getSerializableExtra("downloadByQuark"));
        }
        h1();
        return super.onStartCommand(intent, flags, startId);
    }

    String r(String s10) {
        try {
            String[] strArrSplit = s10.split("_");
            return strArrSplit[0].equals(com.join.android.app.common.utils.q.n(this.f72464n).e(this.f72464n)) ? strArrSplit[1] : WMConstants.TIMER_STAGE_NONE;
        } catch (Exception e10) {
            e10.printStackTrace();
            return WMConstants.TIMER_STAGE_NONE;
        }
    }

    void s(String roomId, String gameId, String uid, String msg) {
        if (!this.f72472v.e()) {
            this.f72472v.bindService();
            return;
        }
        com.join.mgps.socket.fight.arena.b bVar = this.f72472v;
        if (bVar != null && bVar.d() != null && this.f72472v.d().s()) {
            d1(roomId, gameId, uid, msg);
            return;
        }
        ArenaRequest arenaRequestLogin = ArenaRequestFactory.login(ArenaConstants.REGISTER_TYPE_EMU);
        arenaRequestLogin.isRefreshing = false;
        try {
            if (!TextUtils.isEmpty(gameId)) {
                arenaRequestLogin.gameId = Long.parseLong(gameId);
            }
            if (!TextUtils.isEmpty(roomId)) {
                arenaRequestLogin.roomId = Integer.parseInt(roomId);
            }
            if (!TextUtils.isEmpty(uid)) {
                arenaRequestLogin.uid = Integer.parseInt(uid);
            }
        } catch (Exception unused) {
        }
        this.f72472v.f(arenaRequestLogin);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void s1(List<AppBean> beans) {
        e0.o().a();
        if (beans != null) {
            q5.e.d(getApplicationContext());
            Iterator<AppBean> it2 = beans.iterator();
            while (it2.hasNext()) {
                e0.o().m(new PurchasedListTable(it2.next()));
            }
        }
        UtilsMy.g3(this);
        z();
    }

    void t() {
        try {
            com.join.mgps.socket.fight.arena.b bVar = new com.join.mgps.socket.fight.arena.b(this, new h());
            this.f72472v = bVar;
            bVar.bindService();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    synchronized void t1() {
        this.f72453c.quarkGameDownload().g(JsonMapper.getInstance().toJson(this.Q));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void u0() {
        String strD = this.f72453c.quarkGameDownload().d();
        if (TextUtils.isEmpty(strD)) {
            return;
        }
        try {
            HashMap map = (HashMap) JsonMapper.getInstance().fromJson(strD, JsonMapper.getInstance().createCollectionType(HashMap.class, String.class, DownloadScanEvent.class));
            if (map != null) {
                this.Q.clear();
                this.Q.putAll(map);
            }
            this.O.set(true);
            u1();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void u1() {
        FileInfo fileInfoY;
        boolean z10;
        String path;
        FileInfo fileInfoY2;
        char c10 = 0;
        try {
            try {
                try {
                    if (this.N) {
                        this.N = false;
                        h1.e("quark scan..end");
                        if (this.O.get()) {
                            this.O.set(false);
                            return;
                        }
                        try {
                            Thread.sleep(10000L);
                            if (MApplication.l() <= 0 || this.Q.size() <= 0) {
                                return;
                            }
                            u1();
                            return;
                        } catch (Exception e10) {
                            e10.printStackTrace();
                            return;
                        }
                    }
                    if (ContextCompat.checkSelfPermission(this, "android.permission-group.STORAGE") != 0) {
                        this.N = false;
                        h1.e("quark scan..end");
                        if (this.O.get()) {
                            this.O.set(false);
                            return;
                        }
                        try {
                            Thread.sleep(10000L);
                            if (MApplication.l() <= 0 || this.Q.size() <= 0) {
                                return;
                            }
                            u1();
                            return;
                        } catch (Exception e11) {
                            e11.printStackTrace();
                            return;
                        }
                    }
                    int i10 = 1;
                    this.N = true;
                    String str = Environment.getExternalStorageDirectory() + "/Quark/Download";
                    h1.e("quark scan..start");
                    final LinkedHashMap linkedHashMap = new LinkedHashMap();
                    List<String> listI = I(str);
                    if (listI != null && listI.size() > 0) {
                        int i11 = 0;
                        while (i11 < listI.size()) {
                            String str2 = listI.get(i11);
                            h1.e(str2);
                            try {
                                if (str2.endsWith(".zip")) {
                                    IInArchive iInArchiveOpenInArchive = SevenZip.openInArchive(ArchiveFormat.ZIP, new RandomAccessFileInStream(new RandomAccessFile(str2, "r")));
                                    ISimpleInArchive simpleInterface = iInArchiveOpenInArchive.getSimpleInterface();
                                    ISimpleInArchiveItem[] archiveItems = simpleInterface.getArchiveItems();
                                    int length = archiveItems.length;
                                    int i12 = 0;
                                    while (true) {
                                        if (i12 >= length) {
                                            z10 = false;
                                            break;
                                        } else {
                                            if (archiveItems[i12].getPath().toLowerCase().endsWith(".apk")) {
                                                z10 = true;
                                                break;
                                            }
                                            i12++;
                                        }
                                    }
                                    if (z10) {
                                        ISimpleInArchiveItem[] archiveItems2 = simpleInterface.getArchiveItems();
                                        int length2 = archiveItems2.length;
                                        int i13 = 0;
                                        while (i13 < length2) {
                                            ISimpleInArchiveItem iSimpleInArchiveItem = archiveItems2[i13];
                                            if (!iSimpleInArchiveItem.isFolder() && iSimpleInArchiveItem.getPath().toLowerCase().endsWith(".apk")) {
                                                String[] strArr = new String[i10];
                                                strArr[c10] = "extract start: ";
                                                h1.e(strArr);
                                                File externalFilesDir = this.f72464n.getExternalFilesDir(".extract");
                                                if (!externalFilesDir.exists()) {
                                                    externalFilesDir.mkdirs();
                                                }
                                                File file = new File(externalFilesDir, i1.d(str2) + ".apk");
                                                if (file.exists()) {
                                                    file.delete();
                                                }
                                                ExtractOperationResult extractOperationResultExtractSlow = iSimpleInArchiveItem.extractSlow(new g(file));
                                                if (extractOperationResultExtractSlow == ExtractOperationResult.OK && (fileInfoY2 = Y(file.getAbsolutePath())) != null) {
                                                    fileInfoY2.path = str2;
                                                    fileInfoY2.setFileType(1);
                                                    linkedHashMap.put(fileInfoY2.pkg, fileInfoY2);
                                                }
                                                h1.e("extract end: " + extractOperationResultExtractSlow);
                                                iInArchiveOpenInArchive.close();
                                                file.delete();
                                            }
                                            i13++;
                                            c10 = 0;
                                            i10 = 1;
                                        }
                                    } else {
                                        ISimpleInArchiveItem[] archiveItems3 = simpleInterface.getArchiveItems();
                                        int length3 = archiveItems3.length;
                                        int i14 = 0;
                                        while (true) {
                                            if (i14 >= length3) {
                                                path = "";
                                                break;
                                            }
                                            ISimpleInArchiveItem iSimpleInArchiveItem2 = archiveItems3[i14];
                                            if (iSimpleInArchiveItem2.isFolder()) {
                                                path = iSimpleInArchiveItem2.getPath();
                                                break;
                                            }
                                            i14++;
                                        }
                                        if (t2.i(path)) {
                                            String strSubstring = path.substring(Math.max(path.lastIndexOf(net.lingala.zip4j.util.e.F0), 0));
                                            FileInfo fileInfo = new FileInfo();
                                            fileInfo.pkg = strSubstring;
                                            fileInfo.path = str2;
                                            fileInfo.size = new File(str2).length();
                                            fileInfo.setFileType(3);
                                            linkedHashMap.put(fileInfo.pkg, fileInfo);
                                            try {
                                                h1.e(fileInfo + "");
                                            } catch (IOException e12) {
                                                e = e12;
                                                e.printStackTrace();
                                            }
                                        }
                                    }
                                } else if (str2.endsWith(".apk") && (fileInfoY = Y(str2)) != null) {
                                    fileInfoY.setFileType(2);
                                    linkedHashMap.put(fileInfoY.pkg, fileInfoY);
                                }
                            } catch (IOException e13) {
                                e = e13;
                            }
                            i11++;
                            c10 = 0;
                            i10 = 1;
                        }
                    }
                    boolean z11 = false;
                    for (final String str3 : linkedHashMap.keySet()) {
                        if (this.Q.containsKey(str3)) {
                            List<DownloadTask> listI2 = q5.f.M().I(str3);
                            if (listI2 != null && listI2.size() > 0) {
                                this.Q.remove(str3);
                                this.P.remove(str3);
                                z11 |= true;
                            } else if (!this.P.containsKey(str3)) {
                                if (this.f72453c.isQuarkEnable().d().booleanValue()) {
                                    this.f72453c.isQuarkEnable().g(Boolean.FALSE);
                                }
                                this.R.schedule(new Runnable() { // from class: com.join.mgps.service.c
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        this.f72910b.s0(linkedHashMap, str3);
                                    }
                                }, 0L, TimeUnit.SECONDS);
                            }
                        }
                    }
                    if (z11) {
                        t1();
                    }
                    this.N = false;
                    h1.e("quark scan..end");
                    if (this.O.get()) {
                        this.O.set(false);
                        return;
                    }
                    Thread.sleep(10000L);
                    if (MApplication.l() <= 0 || this.Q.size() <= 0) {
                        return;
                    }
                    u1();
                } catch (Exception e14) {
                    e14.printStackTrace();
                }
            } catch (Exception e15) {
                e15.printStackTrace();
                this.N = false;
                h1.e("quark scan..end");
                if (this.O.get()) {
                    this.O.set(false);
                    return;
                }
                Thread.sleep(10000L);
                if (MApplication.l() <= 0 || this.Q.size() <= 0) {
                    return;
                }
                u1();
            }
        } catch (Throwable th) {
            this.N = false;
            h1.e("quark scan..end");
            if (this.O.get()) {
                this.O.set(false);
                return;
            }
            try {
                Thread.sleep(10000L);
                if (MApplication.l() <= 0 || this.Q.size() <= 0) {
                    throw th;
                }
                u1();
                throw th;
            } catch (Exception e16) {
                e16.printStackTrace();
                throw th;
            }
        }
    }

    void v(final String gameid, final boolean fromSdk, final String appkey) {
        if (!com.join.android.app.common.utils.m.j(this)) {
            t0("请检查网络连接");
            return;
        }
        try {
            UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
            int uid = accountData != null ? accountData.getUid() : 0;
            String string = !TextUtils.isEmpty(MApplication.K) ? MApplication.K : Settings.System.getString(this.f72464n.getContentResolver(), "android_id");
            RequestAppDetialArgs requestAppDetialArgs = new RequestAppDetialArgs();
            requestAppDetialArgs.setDeviceid(string);
            requestAppDetialArgs.setVersion(com.join.android.app.common.utils.q.n(this.f72464n).z() + "_" + com.join.android.app.common.utils.q.n(this.f72464n).A());
            requestAppDetialArgs.setGame_id(gameid);
            requestAppDetialArgs.setUid(uid);
            requestAppDetialArgs.setToken(accountData.getToken());
            com.join.mgps.rpc.n.c(requestAppDetialArgs, new p(fromSdk, appkey, gameid, accountData));
        } catch (Exception e10) {
            e10.printStackTrace();
            t0("获取游戏信息失败");
        }
    }

    @Receiver(actions = {p5.a.f96207m})
    void v0() {
        this.f72453c.apName().d().intValue();
        String apSSID = WifiUtils.getInstance(this).getApSSID();
        if (t2.i(apSSID) && apSSID.startsWith(r6.c.f96776p)) {
            WifiUtils.getInstance(this).createWiFiAP(WifiUtils.getInstance(this).createAPInfo(apSSID, r6.c.f96777q), false);
        }
        try {
            if (this.f72453c.isWifiConnectedBefore().d().booleanValue()) {
                WifiUtils.getInstance(this).OpenWifi();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void v1(String pkg, String action, String adId) {
        try {
            if (!TextUtils.isEmpty(pkg) && !TextUtils.isEmpty(action) && !TextUtils.isEmpty(adId)) {
                String crc_link_type_val = "";
                for (DownloadTask downloadTask : q5.f.M().I(pkg)) {
                    if (downloadTask.getPackageName().equals(pkg)) {
                        crc_link_type_val = downloadTask.getCrc_link_type_val();
                        break;
                    }
                }
                if (TextUtils.isEmpty(crc_link_type_val)) {
                    return;
                }
                Event event = Event.smallGameStartSDK;
                if (!action.equals(event.name())) {
                    event = Event.smallRequestAdSDK;
                    if (!action.equals(event.name())) {
                        event = Event.smallExpAdSDK;
                        if (!action.equals(event.name())) {
                            event = Event.smallVideoDoneAdSDK;
                            if (!action.equals(event.name())) {
                                event = null;
                            }
                        }
                    }
                }
                if (event == null) {
                    return;
                }
                com.papa.sim.statistic.t.l(this.f72464n).q(event, crc_link_type_val, adId, AccountUtil_.getInstance_(this.f72464n).getUid());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code duplicated, block: B:204:0x0641  */
    /* JADX WARN: Code duplicated, block: B:206:0x064b  */
    /* JADX WARN: Code duplicated, block: B:208:0x065a  */
    /* JADX WARN: Code duplicated, block: B:211:0x0667  */
    /* JADX WARN: Code duplicated, block: B:213:0x0676  */
    /* JADX WARN: Code duplicated, block: B:229:0x068c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:243:0x0081 A[SYNTHETIC] */
    @Background
    public void w(List<String> gameIds) {
        File file;
        File file2;
        ModInfoBean modInfoBean;
        TipBean single_game_vm;
        UserInfo accountData = AccountUtil_.getInstance_(this.f72464n).getAccountData();
        RequestModel<CheckGameVersionRequestArgs> requestModel = new RequestModel<>();
        CheckGameVersionRequestArgs checkGameVersionRequestArgs = new CheckGameVersionRequestArgs();
        checkGameVersionRequestArgs.setGameList(gameIds);
        requestModel.setDefault(this).setArgs(checkGameVersionRequestArgs);
        requestModel.getArgs().setUid(accountData.getUid() + "");
        requestModel.getArgs().setToken(accountData.getToken());
        ResponseModel<CheckGameVersionResponseData> responseModelP = com.join.mgps.rpc.impl.i.P0().p(requestModel);
        if (responseModelP == null || responseModelP.getData() == null || responseModelP.getData().getGameList() == null || responseModelP.getFlag() != 1) {
            return;
        }
        t6.q.o().a();
        for (CheckGameVersionResponseData.VersionInfo versionInfo : responseModelP.getData().getGameList()) {
            t6.q.o().k(new EMUUpdateTable(versionInfo));
            DownloadTask downloadTaskG = q5.f.M().G(versionInfo.getCrc_sign_id());
            if (downloadTaskG != null) {
                int status = downloadTaskG.getStatus();
                boolean zO = APKUtils.O(downloadTaskG);
                downloadTaskG.setIs_network(versionInfo.getIs_network());
                downloadTaskG.setPlugin_screenshot(versionInfo.getPlugin_screenshot());
                downloadTaskG.setIs_fight(versionInfo.getIs_fight());
                downloadTaskG.setFight_type(versionInfo.getFight_type());
                downloadTaskG.setFight_fun(versionInfo.getFight_funv2());
                downloadTaskG.setDown_count(versionInfo.getDown_count());
                downloadTaskG.setSp_tpl_two_position(versionInfo.getSp_tpl_two_position());
                downloadTaskG.setGift_package_switch(versionInfo.getGift_package_switch());
                boolean zEquals = false;
                if (versionInfo.getAd_info() != null) {
                    if ((t2.i(downloadTaskG.getAd_info_str()) && !i1.d(JsonMapper.toJsonString(versionInfo.getAd_info())).equals(i1.d(downloadTaskG.getAd_info_str()))) || t2.h(downloadTaskG.getAd_info_str())) {
                        downloadTaskG.setAd_info_switch(1);
                    }
                    downloadTaskG.setAd_info(versionInfo.getAd_info());
                    downloadTaskG.setAd_info_str(JsonMapper.toJsonString(versionInfo.getAd_info()));
                } else {
                    downloadTaskG.setAd_info_switch(0);
                    downloadTaskG.setAd_info(null);
                    downloadTaskG.setAd_info_str("");
                }
                if (zO) {
                    TipNew sp_tag_info = downloadTaskG.getSp_tag_info();
                    if (sp_tag_info != null && (single_game_vm = sp_tag_info.getSingle_game_vm()) != null && versionInfo.getSp_tag_info() != null) {
                        versionInfo.getSp_tag_info().setSingle_game_vm(single_game_vm);
                    }
                    downloadTaskG.setSp_tag_info(versionInfo.getSp_tag_info());
                } else {
                    downloadTaskG.setSp_tag_info(versionInfo.getSp_tag_info());
                    if (t2.h(downloadTaskG.getSingle_game_mod_info())) {
                        UtilsMy.Q2(downloadTaskG);
                    }
                }
                downloadTaskG.setAllow_start_up_ad(versionInfo.getAllow_start_up_ad());
                downloadTaskG.setDown_status(versionInfo.getDown_status());
                if (versionInfo.getMax_an_compatible_ver() != 0) {
                    downloadTaskG.setMax_an_compatible_ver(versionInfo.getMax_an_compatible_ver());
                }
                if (versionInfo.getMin_an_compatible_ver() != 0) {
                    downloadTaskG.setMin_an_compatible_ver(versionInfo.getMin_an_compatible_ver());
                }
                try {
                    if (Integer.parseInt(downloadTaskG.getPlugin_num()) == ConstantIntEnum.MGAME.value()) {
                        if ((versionInfo.getMod_info() != null) && (modInfoBean = (ModInfoBean) JsonMapper.getInstance().fromJson(downloadTaskG.getMod_info(), ModInfoBean.class)) != null) {
                            zEquals = downloadTaskG.getCrc_link_type_val().equals(modInfoBean.getMod_game_id());
                            if (zEquals) {
                                downloadTaskG.setResource_url_remote(modInfoBean.getDown_url());
                                Dtype dtype = Dtype.MOD;
                                downloadTaskG.setFileType(dtype.name());
                                downloadTaskG.setRomType(dtype.name());
                                for (TipBean tipBean : downloadTaskG.getTipBeans()) {
                                    if (tipBean.getId().equals(ConstantIntEnum.DATA.value() + "")) {
                                        downloadTaskG.setRomType(Dtype.androiddata.name());
                                    } else {
                                        if (tipBean.getId().equals(ConstantIntEnum.OBB.value() + "")) {
                                            downloadTaskG.setRomType(Dtype.androidobb.name());
                                        }
                                    }
                                    if (tipBean.getId().equals(ConstantIntEnum.OBBDATA.value() + "")) {
                                        downloadTaskG.setRomType(Dtype.androidobbdata.name());
                                        break;
                                    }
                                }
                            }
                            if (versionInfo.getTag_info() != null) {
                                downloadTaskG.setTipBeans(versionInfo.getTag_info());
                            }
                        }
                        if (APKUtils.P(downloadTaskG)) {
                            for (TipBean tipBean2 : downloadTaskG.getTipBeans()) {
                                if (tipBean2.getId().equals(ConstantIntEnum.DATA.value() + "")) {
                                    downloadTaskG.setRomType(Dtype.androiddata.name());
                                } else {
                                    if (tipBean2.getId().equals(ConstantIntEnum.OBB.value() + "")) {
                                        downloadTaskG.setRomType(Dtype.androidobb.name());
                                    }
                                }
                                if (tipBean2.getId().equals(ConstantIntEnum.OBBDATA.value() + "")) {
                                    downloadTaskG.setRomType(Dtype.androidobbdata.name());
                                    break;
                                }
                            }
                        }
                        if (!zEquals) {
                            Dtype dtype2 = Dtype.android;
                            downloadTaskG.setFileType(dtype2.name());
                            downloadTaskG.setRomType(dtype2.name());
                            for (TipBean tipBean3 : downloadTaskG.getTipBeans()) {
                                if (tipBean3.getId().equals(ConstantIntEnum.DATA.value() + "")) {
                                    downloadTaskG.setRomType(Dtype.androiddata.name());
                                } else {
                                    if (tipBean3.getId().equals(ConstantIntEnum.OBB.value() + "")) {
                                        downloadTaskG.setRomType(Dtype.androidobb.name());
                                    }
                                }
                                if (tipBean3.getId().equals(ConstantIntEnum.OBBDATA.value() + "")) {
                                    downloadTaskG.setRomType(Dtype.androidobbdata.name());
                                    break;
                                }
                            }
                            if (versionInfo.getTag_info() != null) {
                                downloadTaskG.setTipBeans(versionInfo.getTag_info());
                            }
                        }
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                if (versionInfo.getLock_sp() != 1) {
                    downloadTaskG.setLock_sp(versionInfo.getLock_sp());
                } else if (downloadTaskG.getLock_sp() != 1 && downloadTaskG.getLock_sp() != 2) {
                    downloadTaskG.setLock_sp(versionInfo.getLock_sp());
                }
                downloadTaskG.setSync_memory(versionInfo.getSync_memory());
                if (!downloadTaskG.getFileType().equals(Dtype.chajian.name())) {
                    String fileType = downloadTaskG.getFileType();
                    Dtype dtype3 = Dtype.android;
                    if (fileType.equals(dtype3.name()) && (downloadTaskG.getStatus() == 5 || downloadTaskG.getStatus() == 9 || downloadTaskG.getStatus() == 42)) {
                        downloadTaskG.setUrl(versionInfo.getDown_url_remote());
                        downloadTaskG.setResource_url_remote(versionInfo.getResource_url_remote());
                        downloadTaskG.setRes_actual_size(versionInfo.getResource_size());
                        com.join.android.app.common.utils.g gVarT0 = com.join.android.app.common.utils.g.t0(this);
                        String packageName = downloadTaskG.getPackageName();
                        APKUtils.DEVICE_TYPE device_type = APKUtils.DEVICE_TYPE.ALL;
                        if (Boolean.valueOf(gVarT0.f(this, packageName, device_type)).booleanValue()) {
                            APKUtils.a aVarO = com.join.android.app.common.utils.g.t0(this).o(this, downloadTaskG.getPackageName(), device_type);
                            if (!t2.i(versionInfo.getVer()) || aVarO.d() >= Integer.parseInt(versionInfo.getVer())) {
                                downloadTaskG.setStatus(5);
                            } else if (t2.h(downloadTaskG.getMod_info())) {
                                if (versionInfo.getGame_upgrade_state() == 1) {
                                    downloadTaskG.setStatus(9);
                                } else {
                                    downloadTaskG.setStatus(42);
                                }
                            }
                        } else if (t2.i(downloadTaskG.getGameZipPath()) && new File(downloadTaskG.getGameZipPath()).exists()) {
                            downloadTaskG.setStatus(11);
                        } else {
                            q5.f.M().n(downloadTaskG.getCrc_link_type_val());
                        }
                        if (versionInfo.getMod_info() != null) {
                            if (downloadTaskG.getModInfoBean() != null && versionInfo.getMod_info().getVer() > downloadTaskG.getModInfoBean().getVer()) {
                                if (TextUtils.isEmpty(versionInfo.getMod_info().getDown_url())) {
                                    StringBuilder sb2 = new StringBuilder();
                                    sb2.append("");
                                    sb2.append(versionInfo.getPackageName());
                                    sb2.append(", mod url is null");
                                } else {
                                    versionInfo.getMod_info().setStatus(9);
                                }
                            }
                            downloadTaskG.setMod_info(JsonMapper.toJsonString(versionInfo.getMod_info()));
                            q5.f.M().m(downloadTaskG);
                        } else if (APKUtils.K(downloadTaskG)) {
                            UtilsMy.P3(downloadTaskG);
                        } else {
                            downloadTaskG.setMod_info("");
                            q5.f.M().m(downloadTaskG);
                        }
                        if (versionInfo.getSingle_game_mod_info() != null) {
                            if (downloadTaskG.getSingleGameModInfoBean() != null && versionInfo.getSingle_game_mod_info().getVersion().intValue() > downloadTaskG.getSingleGameModInfoBean().getVersion().intValue()) {
                                if (TextUtils.isEmpty(versionInfo.getSingle_game_mod_info().getDownUrl())) {
                                    StringBuilder sb3 = new StringBuilder();
                                    sb3.append("");
                                    sb3.append(versionInfo.getPackageName());
                                    sb3.append(", single mod url is null");
                                } else {
                                    versionInfo.getSingle_game_mod_info().setStatus(9);
                                }
                            }
                            if (!APKUtils.O(downloadTaskG)) {
                                downloadTaskG.setSingle_game_mod_info("");
                            } else if (versionInfo.getSingle_game_mod_info() != null) {
                                downloadTaskG.setSingle_game_mod_info(JsonMapper.toJsonString(versionInfo.getSingle_game_mod_info()));
                            }
                            q5.f.M().m(downloadTaskG);
                        } else {
                            if (zO) {
                                UtilsMy.P3(downloadTaskG);
                            } else {
                                downloadTaskG.setSingle_game_mod_info("");
                            }
                            q5.f.M().m(downloadTaskG);
                        }
                        DownloadTask downloadTaskG2 = com.join.android.app.common.servcie.j.f().g(downloadTaskG.getCrc_link_type_val());
                        if (downloadTaskG2 != null) {
                            downloadTaskG2.setStatus(downloadTaskG.getStatus());
                        }
                        if (downloadTaskG.getFileType().equals(dtype3.name())) {
                            APKUtils.k(downloadTaskG);
                        } else {
                            APKUtils.k(downloadTaskG);
                        }
                        if (downloadTaskG.getStatus() == 9) {
                            if (t2.i(downloadTaskG.getPath())) {
                                file2 = new File(downloadTaskG.getPath());
                                if (file2.exists()) {
                                    UtilsMy.delete(file2);
                                }
                            }
                            if (t2.i(downloadTaskG.getGameZipPath())) {
                                file = new File(downloadTaskG.getGameZipPath());
                                if (file.exists()) {
                                    UtilsMy.delete(file);
                                }
                            }
                            downloadTaskG.setGameZipPath("");
                            downloadTaskG.setPath("");
                            q5.f.M().m(downloadTaskG);
                        }
                        if (status != downloadTaskG.getStatus()) {
                            UtilsMy.i3(downloadTaskG, downloadTaskG.getStatus());
                        }
                    } else {
                        q5.f.M().m(downloadTaskG);
                        if (downloadTaskG.getStatus() != 11 || (t2.i(downloadTaskG.getGameZipPath()) && new File(downloadTaskG.getGameZipPath()).exists())) {
                            DownloadTask downloadTaskG3 = com.join.android.app.common.servcie.j.f().g(downloadTaskG.getCrc_link_type_val());
                            if (downloadTaskG3 != null) {
                                downloadTaskG3.setStatus(downloadTaskG.getStatus());
                            }
                            if ((downloadTaskG.getFileType().equals(dtype3.name()) || APKUtils.P(downloadTaskG) || APKUtils.K(downloadTaskG)) && downloadTaskG.getStatus() == 5) {
                                APKUtils.k(downloadTaskG);
                            }
                            if (downloadTaskG.getStatus() == 9) {
                                if (t2.i(downloadTaskG.getPath())) {
                                    file2 = new File(downloadTaskG.getPath());
                                    if (file2.exists()) {
                                        UtilsMy.delete(file2);
                                    }
                                }
                                if (t2.i(downloadTaskG.getGameZipPath())) {
                                    file = new File(downloadTaskG.getGameZipPath());
                                    if (file.exists()) {
                                        UtilsMy.delete(file);
                                    }
                                }
                                downloadTaskG.setGameZipPath("");
                                downloadTaskG.setPath("");
                                q5.f.M().m(downloadTaskG);
                            }
                            if (status != downloadTaskG.getStatus()) {
                                UtilsMy.i3(downloadTaskG, downloadTaskG.getStatus());
                            }
                        } else {
                            q5.f.M().n(downloadTaskG.getCrc_link_type_val());
                        }
                    }
                }
            }
        }
        d();
    }

    void w1(String roomId, String msg) {
        h1.e("sendBattleScoreToEmu", msg, "" + roomId);
        Intent intent = new Intent("com.emu.battle.score");
        intent.putExtra(CommonService_.AnonymousClass32.f72720g, roomId);
        intent.putExtra("battleScore", msg);
        sendBroadcast(intent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    @Background
    public void x(DownloadTask downloadTask) {
        String key;
        if (!com.join.android.app.common.utils.m.j(this)) {
            t0("请检查网络连接");
            return;
        }
        try {
            UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
            int uid = accountData != null ? accountData.getUid() : 0;
            ResultMainBean<DownDeductCoinResponse> resultMainBeanA1 = com.join.mgps.rpc.impl.d.O1().A1(RequestBeanUtil.getInstance(this).getDownDeductCoin(downloadTask.getCrc_link_type_val(), accountData.getToken(), uid, null));
            if (resultMainBeanA1 == null || resultMainBeanA1.getFlag() == 0) {
                ((NoticeTopAnimActivityDialog_.f) NoticeTopAnimActivityDialog_.intent(this.f72464n).b("铜板支付失败，请重试").flags(C.ENCODING_PCM_MU_LAW)).c(0).start();
                return;
            }
            DownDeductCoinResponse data = resultMainBeanA1.getMessages().getData();
            if (data == null || (key = data.getKey()) == null) {
                return;
            }
            String[] strArrSplit = AESUtils.c(key).split(com.haima.hmcp.Constants.TIPS_SPECIAL_TAG);
            String str = strArrSplit.length > 0 ? strArrSplit[0] : "";
            String str2 = strArrSplit.length > 1 ? strArrSplit[1] : "";
            String str3 = strArrSplit.length > 2 ? strArrSplit[2] : "";
            int i10 = strArrSplit.length > 3 ? Integer.parseInt(strArrSplit[3]) : 0;
            if (t2.i(str2) && data.getNum().equals(str2) && t2.i(str)) {
                if ((uid + "").equals(str) && str3.equals(downloadTask.getCrc_link_type_val())) {
                    if (i10 == 0) {
                        ((NoticeTopAnimActivityDialog_.f) NoticeTopAnimActivityDialog_.intent(this.f72464n).flags(C.ENCODING_PCM_MU_LAW)).b("铜板支付失败，请重试").c(i10).start();
                        return;
                    }
                    if (i10 == 1) {
                        ((NoticeTopAnimActivityDialog_.f) NoticeTopAnimActivityDialog_.intent(this.f72464n).flags(C.ENCODING_PCM_MU_LAW)).b("正在下载<strong>【" + downloadTask.getShowName() + "】</strong>花费<font color=#FFDD1C>" + downloadTask.getSp_tag_info().getCoin().getName() + "</font>").c(i10).start();
                        com.php25.PDownload.d.e(downloadTask, this.f72464n);
                        return;
                    }
                    if (i10 == 2) {
                        com.php25.PDownload.d.e(downloadTask, this.f72464n);
                        return;
                    }
                    if (i10 == 3) {
                        ((NoticeTopAnimActivityDialog_.f) NoticeTopAnimActivityDialog_.intent(this.f72464n).flags(C.ENCODING_PCM_MU_LAW)).b("需要<font color=#F47500>" + downloadTask.getSp_tag_info().getCoin().getName() + "</font>").c(i10).a(data.getBalance()).start();
                        return;
                    }
                    if (i10 != 6) {
                        return;
                    }
                    ((NoticeTopAnimActivityDialog_.f) NoticeTopAnimActivityDialog_.intent(this.f72464n).flags(C.ENCODING_PCM_MU_LAW)).b("正在下载<strong>【" + downloadTask.getShowName() + "】</strong>花费<font color=#FFDD1C>" + downloadTask.getSp_tag_info().getCoin().getName() + "</font>").c(i10).start();
                    com.php25.PDownload.d.e(downloadTask, this.f72464n);
                    return;
                }
            }
            ((NoticeTopAnimActivityDialog_.f) NoticeTopAnimActivityDialog_.intent(this.f72464n).b("铜板支付失败，请重试").flags(C.ENCODING_PCM_MU_LAW)).c(0).start();
        } catch (Exception e10) {
            e10.printStackTrace();
            ((NoticeTopAnimActivityDialog_.f) NoticeTopAnimActivityDialog_.intent(this.f72464n).b("铜板支付失败，请重试").flags(C.ENCODING_PCM_MU_LAW)).c(0).start();
        }
    }

    @Receiver(actions = {p5.a.U})
    void x0(@Receiver.Extra String packageName, @Receiver.Extra String gameId, @Receiver.Extra String jsonData, @Receiver.Extra String uid) {
        if (TextUtils.isEmpty(packageName) || !packageName.equals(getPackageName())) {
            return;
        }
        com.papa.sim.statistic.t.l(getApplicationContext()).C1(gameId, jsonData, uid);
    }

    void x1(String roomId, String gameId, String uid, String msg) {
        h1.e("sendBattleScoreToSvr", msg, "" + roomId);
        if (!this.f72473w) {
            t();
            return;
        }
        try {
            ArenaRequest arenaRequest = new ArenaRequest(ArenaConstants.ArenaCommand.CMD_SEND_SCORE_BOARD);
            try {
                if (!TextUtils.isEmpty(gameId)) {
                    arenaRequest.gameId = Long.parseLong(gameId);
                }
                if (!TextUtils.isEmpty(roomId)) {
                    arenaRequest.roomId = Integer.parseInt(roomId);
                }
                if (!TextUtils.isEmpty(uid)) {
                    arenaRequest.uid = Integer.parseInt(uid);
                }
            } catch (Exception unused) {
            }
            arenaRequest.battleScoreBoard = msg;
            this.f72472v.f(arenaRequest);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void z() {
    }
}
