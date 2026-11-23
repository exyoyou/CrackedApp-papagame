package com.join.mgps.fragment;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.view.Display;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.JavascriptInterface;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import androidx.core.content.FileProvider;
import androidx.fragment.app.Fragment;
import app.mgsim.arena.ArenaConstants;
import app.mgsim.arena.ArenaRequest;
import app.mgsim.arena.ArenaRequestFactory;
import app.mgsim.arena.ArenaResponse;
import app.mgsim.arena.SocketError;
import app.mgsim.arena.SocketListener;
import com.MApplication;
import com.alipay.sdk.app.PayTask;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.czhj.sdk.common.Constants;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.haima.hmcp.beans.ClipBoardItemData;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.component.album.MyAlbumActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.StartGameMeta;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.PayNowActivity_;
import com.join.mgps.activity.SearchHintActivity_;
import com.join.mgps.activity.SearchLabelActivity_;
import com.join.mgps.activity.arena.GameRoomActivity;
import com.join.mgps.activity.arena.NewArenaDownloadActivity_;
import com.join.mgps.activity.label.MainLabelActivity_;
import com.join.mgps.adapter.FullScreenActivity;
import com.join.mgps.adapter.FullScreenActivity_;
import com.join.mgps.customview.LJNestScrollWebView;
import com.join.mgps.customview.input.InputNumView;
import com.join.mgps.db.tables.EMUApkTable;
import com.join.mgps.db.tables.H5GameAccountDataTable;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CreateVipData;
import com.join.mgps.dto.DetailResultBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.LiveUploadData;
import com.join.mgps.dto.NetBattleStartGameDto;
import com.join.mgps.dto.PaOpenBean;
import com.join.mgps.dto.PapayOrder;
import com.join.mgps.dto.PapayResult;
import com.join.mgps.dto.PayResult;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.ShareBean;
import com.join.mgps.dto.TipBean;
import com.join.mgps.dto.TipNew;
import com.join.mgps.dto.VipMoneyRequest;
import com.join.mgps.dto.WebAccountDataBean;
import com.join.mgps.enums.Dtype;
import com.join.mgps.pref.PrefDef_;
import com.mgsim.common.fragment.BackHandledFragment;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa91.arc.bean.ButtonBean;
import com.papa91.arc.common.constants.BAction;
import com.papa91.battle.protocol.BattleArea;
import com.papa91.battle.protocol.GameRoom;
import com.papa91.battle.protocol.RoomCategory;
import com.papa91.battle.protocol.RoomPosition;
import com.papa91.wrapper.UserPrefs;
import com.tencent.mm.opensdk.modelbiz.WXLaunchMiniProgram;
import com.tencent.mm.opensdk.openapi.IWXAPI;
import com.tencent.mm.opensdk.openapi.WXAPIFactory;
import com.umeng.commonsdk.UMConfigure;
import com.wufan.user.service.protobuf.MessageCheckTokenRequest;
import com.wufan.user.service.protobuf.MessageCheckTokenResponse;
import com.wufan.user.service.protobuf.MessageUserInfoRequest;
import com.wufan.user.service.protobuf.ResponseResult;
import com.wufan.user.service.protobuf.UserInfo;
import java.io.File;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import okhttp3.HttpUrl;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Bean;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes3.dex */
@EFragment(R.layout.fragment_common_webview)
public class v extends Fragment implements LJNestScrollWebView.b, com.join.mgps.Util.u2.e {
    public static final int L1 = 5001;
    public static final int R1 = 5002;
    public static final int V1 = 5003;

    /* JADX INFO: renamed from: a2, reason: collision with root package name */
    private static final int f71128a2 = 2;

    /* JADX INFO: renamed from: b2, reason: collision with root package name */
    private static final int f71129b2 = 4112;

    /* JADX INFO: renamed from: c2, reason: collision with root package name */
    private static final int f71130c2 = 100;

    /* JADX INFO: renamed from: d2, reason: collision with root package name */
    private static final int f71131d2 = 200;

    /* JADX INFO: renamed from: e2, reason: collision with root package name */
    private static final int f71132e2 = 10;

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    public static final int f71133q1 = 1;

    /* JADX INFO: renamed from: r1, reason: collision with root package name */
    public static final int f71134r1 = 2;

    /* JADX INFO: renamed from: v1, reason: collision with root package name */
    public static final int f71135v1 = 5000;
    private com.join.mgps.socket.fight.arena.b F;
    private String G;

    @Bean
    com.join.mgps.Util.b H;
    private int J;
    private int K;
    private int L;
    private int M;
    private GameRoom O;
    private com.join.mgps.dialog.d1 P;
    private com.join.mgps.dialog.f1 Q;
    private Dialog T;
    private Uri U;
    private Uri V;
    private com.join.mgps.Util.u2 X;
    Iterator<String> Y;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @ViewById
    LinearLayout f71142g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @ViewById
    LinearLayout f71143h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @ViewById
    TextView f71144i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @ViewById
    RelativeLayout f71146j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @ViewById
    LJNestScrollWebView f71147k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    com.join.mgps.rpc.e f71148l;

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    private BackHandledFragment f71149l1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    com.join.mgps.rpc.b f71150m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    com.join.mgps.rpc.c f71151n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    String f71152o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private long f71153p;

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    private boolean f71155p1;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Context f71156q;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private View f71158s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private UserInfo f71159t;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @Pref
    PrefDef_ f71161v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f71162w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private com.join.mgps.dialog.h0 f71163x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private com.join.mgps.dialog.a2 f71164y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private WebChromeClient f71165z;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    String f71137c = "ShareWebActivity";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f71138d = "/wufan91/live";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f71139e = "PAPA_EMU_INTENT_EXTRA_ACTION_FROM";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Handler f71140f = new Handler();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f71157r = false;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f71160u = false;
    private boolean A = false;
    com.join.mgps.dialog.f1 B = null;

    @SuppressLint({"HandlerLeak"})
    private Handler C = new e();
    boolean D = false;
    long E = 0;
    private final SocketListener.NotifyObserver I = new h();
    private int N = -1;
    boolean R = false;
    boolean S = false;
    private boolean W = false;
    private boolean Z = false;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    private List<String> f71154p0 = new ArrayList();

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    List<String> f71136b1 = new ArrayList();

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    private net.bither.util.b.e f71141f1 = new b();

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    private List<String> f71145i1 = new ArrayList();

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            v.this.T.dismiss();
        }
    }

    class b implements net.bither.util.b.e {
        b() {
        }

        private void b(List<String> list) {
            if (list == null || list.size() <= 0) {
                return;
            }
            com.join.mgps.Util.g1.d("uploadData", "  togglePostSubmit " + list.size());
            v.this.f71145i1.clear();
            v.this.f71145i1.addAll(list);
            v.this.v0();
            v.this.b1();
            v.this.Z = true;
        }

        @Override // net.bither.util.b.e
        public void a(Boolean allFinished, Map<String, String> compressMap, Map<String, Integer> compressState) {
            List<String> list;
            int iIntValue;
            com.join.mgps.Util.g1.d("uploadData", allFinished + "   " + compressMap.size() + "  " + compressState.size());
            if (!allFinished.booleanValue() || (list = v.this.f71136b1) == null || list.size() == 0) {
                b(null);
                return;
            }
            ArrayList arrayList = new ArrayList();
            for (int i10 = 0; i10 < v.this.f71136b1.size(); i10++) {
                String str = v.this.f71136b1.get(i10);
                try {
                    iIntValue = 0;
                    for (String str2 : compressState.keySet()) {
                        try {
                            if (str.contains(new File(str2).getName())) {
                                str = str2;
                                iIntValue = 1;
                            }
                        } catch (Exception e10) {
                            e = e10;
                            e.printStackTrace();
                        }
                    }
                } catch (Exception e11) {
                    e = e11;
                    iIntValue = 0;
                }
                if (iIntValue == 0) {
                    try {
                        iIntValue = compressState.get(str).intValue();
                    } catch (Exception e12) {
                        e12.printStackTrace();
                    }
                }
                String str3 = compressMap.get(str);
                if (iIntValue == 1) {
                    arrayList.add(str3);
                }
            }
            b(arrayList);
        }
    }

    class c implements View.OnKeyListener {
        c() {
        }

        @Override // android.view.View.OnKeyListener
        public boolean onKey(View v10, int keyCode, KeyEvent event) {
            com.join.mgps.Util.g1.b(v.this.f71137c, "onKeyDown() called.");
            if (keyCode == 4 && event.getRepeatCount() == 0) {
                if (v.this.inCustomView()) {
                    v.this.f71165z.onHideCustomView();
                    return true;
                }
                if (v.this.f71152o.contains("?")) {
                    v vVar = v.this;
                    String str = vVar.f71152o;
                    vVar.f71152o = str.substring(0, str.lastIndexOf("?"));
                }
                WebView webView = v.this.f71147k.getWebView();
                if (webView != null && com.join.android.app.common.utils.m.j(v.this.getContext())) {
                    webView.loadUrl("javascript:papaBackPageUp()");
                    return true;
                }
            }
            return false;
        }
    }

    class d implements LJNestScrollWebView.c {
        d() {
        }

        @Override // com.join.mgps.customview.LJNestScrollWebView.c
        public void a() {
            v.this.P0();
        }
    }

    class e extends Handler {
        e() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            if (msg.what != 2) {
                return;
            }
            PayResult payResult = new PayResult((String) msg.obj);
            payResult.getResult();
            String resultStatus = payResult.getResultStatus();
            if (TextUtils.equals(resultStatus, "9000")) {
                Toast.makeText(v.this.f71156q, "支付成功", 1);
            } else if (TextUtils.equals(resultStatus, "8000")) {
                Toast.makeText(v.this.f71156q, "支付结果确认中", 0).show();
            }
        }
    }

    class f extends Thread {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f71171b;

        f(final String val$alipay_sign) {
            this.f71171b = val$alipay_sign;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                String strPay = new PayTask(v.this.getActivity()).pay(com.join.mgps.Util.c0.a(this.f71171b), true);
                Message message = new Message();
                message.what = 2;
                message.obj = strPay;
                v.this.C.sendMessage(message);
            } catch (Exception e10) {
                e10.printStackTrace();
                Message message2 = new Message();
                message2.what = 3;
                v.this.C.sendMessage(message2);
            }
        }
    }

    class g extends com.join.mgps.socket.fight.arena.b.c {
        g() {
        }

        @Override // com.join.mgps.socket.fight.arena.b.c, com.join.mgps.socket.fight.arena.b.InterfaceC0749b
        public void c() {
            super.c();
        }
    }

    class h implements SocketListener.NotifyObserver {
        h() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(NetBattleStartGameDto netBattleStartGameDto, DownloadTask downloadTask) {
            UtilsMy.g4(v.this.f71156q, netBattleStartGameDto, downloadTask, null, com.join.mgps.socket.fight.arena.c.i(v.this.O.getBattleArea(), false));
        }

        @Override // app.mgsim.arena.SocketListener.NotifyObserver
        public void onError(SocketError error) {
            v.this.O0(error);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r3v7, types: [com.join.mgps.dto.NetBattleStartGameDto] */
        /* JADX WARN: Type inference failed for: r8v25 */
        /* JADX WARN: Type inference failed for: r8v32 */
        /* JADX WARN: Type inference failed for: r8v7 */
        /* JADX WARN: Type inference failed for: r8v8, types: [int] */
        @Override // app.mgsim.arena.SocketListener.NotifyObserver
        public void onServerResponse(ArenaResponse arenaResponse) {
            ?? elite;
            ArenaRequest arenaRequest = arenaResponse.request;
            if (arenaRequest != null) {
                String str = arenaRequest.register_type;
                if (str == ArenaConstants.REGISTER_TYPE_ARENAMAIN || str == ArenaConstants.REGISTER_TYPE_PUBLIC) {
                    if (arenaResponse.responseCode == 0) {
                        v.this.H0(arenaResponse);
                        return;
                    }
                    if (arenaResponse.responseType.equals(ArenaConstants.ArenaCommand.CMD_LOGIN)) {
                        if (TextUtils.isEmpty(v.this.G)) {
                            return;
                        }
                        v vVar = v.this;
                        vVar.y0(vVar.G);
                        return;
                    }
                    if (arenaResponse.responseType.equals(ArenaConstants.ArenaCommand.CMD_SEARCH_ROOM_BY_ID)) {
                        v.this.I0((GameRoom) arenaResponse.data);
                        return;
                    }
                    if (arenaResponse.responseType.equals(ArenaConstants.ArenaCommand.CMD_JOIN_ROOM)) {
                        v.this.p0();
                        GameRoom gameRoom = (GameRoom) arenaResponse.data;
                        v.this.F.d().E(null);
                        final DownloadTask downloadTaskG = q5.f.M().G("" + gameRoom.getGameId());
                        v.this.w0();
                        v.this.L0();
                        int i10 = v.this.J + v.this.K + v.this.L + v.this.M;
                        final ?? netBattleStartGameDto = new NetBattleStartGameDto();
                        netBattleStartGameDto.setGameID(v.this.O.getGameId() + "");
                        netBattleStartGameDto.setRoomID(gameRoom.getBattleServerAddr().getBattleRoomId() + "");
                        netBattleStartGameDto.setUserID(v.this.f71159t.getUid() + "");
                        netBattleStartGameDto.setServerIP(gameRoom.getBattleServerAddr().getHost());
                        netBattleStartGameDto.setServerPort(gameRoom.getBattleServerAddr().getPort());
                        if (gameRoom.getRoomCategory() == RoomCategory.LIVE) {
                            elite = 3;
                        } else {
                            elite = gameRoom.getRoomCategory() == RoomCategory.TOURNAMENT ? 2 : v.this.O.getElite();
                        }
                        netBattleStartGameDto.setRoomMode(elite);
                        netBattleStartGameDto.setAllowPeripheralJoin(v.this.O.getAllowPeripheralJoin());
                        netBattleStartGameDto.setAllowPCJoin(v.this.O.getAllowPCJoin());
                        netBattleStartGameDto.setGameype(v.this.O.getGameType().getNumber());
                        netBattleStartGameDto.setGroupId(v.this.O.getRoomId());
                        netBattleStartGameDto.setP1Name("");
                        netBattleStartGameDto.setP2Name("");
                        netBattleStartGameDto.setOldGame(0);
                        netBattleStartGameDto.setUserName(v.this.f71159t.getNickname());
                        netBattleStartGameDto.setUserIcon(v.this.f71159t.getAvatarSrc());
                        netBattleStartGameDto.setGamePlayers(v.this.O.getSeatsNumber());
                        netBattleStartGameDto.setTcptype(1);
                        netBattleStartGameDto.setPorder(v.this.N);
                        netBattleStartGameDto.setNetPlayers(i10);
                        if (!v.this.O.getElite()) {
                            netBattleStartGameDto.setOpenBattleScore(v.this.O.getOpenBattleScore());
                        }
                        v.this.F.f(ArenaRequestFactory.startLobbyGame(ArenaConstants.REGISTER_TYPE_GAMEROOM, v.this.O.getRoomId()));
                        if (v.this.O != null && v.this.O.getRoomId() != 0) {
                            com.wufan.friend.chat.c.u().i(0, v.this.O.getRoomId());
                        }
                        v.this.getActivity().runOnUiThread(new Runnable() { // from class: com.join.mgps.fragment.w
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f71408b.b(netBattleStartGameDto, downloadTaskG);
                            }
                        });
                    }
                }
            }
        }
    }

    class i implements InputNumView.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.input.a f71175a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GameRoom f71176b;

        i(final com.join.mgps.customview.input.a val$mInputGameRoomPwdDialog, final GameRoom val$gameRoom) {
            this.f71175a = val$mInputGameRoomPwdDialog;
            this.f71176b = val$gameRoom;
        }

        @Override // com.join.mgps.customview.input.InputNumView.d
        public void a() {
            this.f71175a.c();
        }

        @Override // com.join.mgps.customview.input.InputNumView.d
        public void b(String num) {
            this.f71175a.c();
            if (TextUtils.isEmpty(num)) {
                return;
            }
            v.this.S0("正在获取房间...");
            v.this.x0(this.f71176b, num);
        }
    }

    class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            v.this.C0(100);
            v.this.T.dismiss();
        }
    }

    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            v.this.C0(200);
            v.this.T.dismiss();
        }
    }

    public class l {

        class a implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ boolean f71181b;

            a(final boolean val$success) {
                this.f71181b = val$success;
            }

            @Override // java.lang.Runnable
            public void run() {
                boolean zH = com.join.android.app.common.utils.i.h(v.this.f71161v.lastCheckInTime().d().longValue());
                if (this.f71181b) {
                    if (zH) {
                        return;
                    }
                    v.this.f71161v.lastCheckInTime().g(Long.valueOf(System.currentTimeMillis()));
                } else if (zH) {
                    v.this.f71161v.lastCheckInTime().g(0L);
                }
            }
        }

        class a0 implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f71183b;

            a0(final String val$qqNumber) {
                this.f71183b = val$qqNumber;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    IntentUtil.getInstance().goQQGroup(v.this.f71156q, this.f71183b);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }

        class b implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f71185b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ String f71186c;

            b(final String val$videoUrl, final String val$imageUrl) {
                this.f71185b = val$videoUrl;
                this.f71186c = val$imageUrl;
            }

            @Override // java.lang.Runnable
            public void run() {
                FullScreenActivity.VideoInfo videoInfo = new FullScreenActivity.VideoInfo();
                videoInfo.H(this.f71185b);
                videoInfo.C(this.f71186c);
                FullScreenActivity_.intent(v.this.f71156q).a(videoInfo).start();
            }
        }

        class b0 implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f71188b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ String f71189c;

            b0(final String val$action, final String val$id) {
                this.f71188b = val$action;
                this.f71189c = val$id;
            }

            @Override // java.lang.Runnable
            public void run() {
                com.papa.sim.statistic.t.l(v.this.f71156q).p(this.f71188b, this.f71189c, AccountUtil_.getInstance_(v.this.f71156q).getUid());
            }
        }

        class c implements Runnable {
            c() {
            }

            @Override // java.lang.Runnable
            public void run() {
                v.this.f71160u = true;
                IntentUtil.getInstance().goAccountUpgradeActivity(v.this.f71156q);
            }
        }

        class c0 implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f71192b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ String f71193c;

            c0(final String val$gid, final String val$cheatID) {
                this.f71192b = val$gid;
                this.f71193c = val$cheatID;
            }

            @Override // java.lang.Runnable
            public void run() {
                DownloadTask downloadTaskG;
                boolean z10;
                try {
                    List<DownloadTask> listJ = q5.f.M().J(this.f71192b);
                    if (listJ == null || listJ.size() <= 0) {
                        downloadTaskG = null;
                    } else {
                        String crc_link_type_val = "";
                        String crc_link_type_val2 = "";
                        boolean z11 = false;
                        loop0: while (true) {
                            z10 = false;
                            for (DownloadTask downloadTask : listJ) {
                                if (Dtype.MOD.name().equals(downloadTask.getFileType())) {
                                    crc_link_type_val = downloadTask.getCrc_link_type_val();
                                    z11 = com.join.mgps.va.overmind.i.q().K(downloadTask.getPackageName()) && downloadTask.getStatus() == 5;
                                } else {
                                    crc_link_type_val2 = downloadTask.getCrc_link_type_val();
                                    if (com.join.android.app.common.utils.g.t0(v.this.getContext()).e(v.this.getContext(), downloadTask.getPackageName()) && downloadTask.getStatus() == 5) {
                                        z10 = true;
                                    }
                                }
                            }
                            break loop0;
                        }
                        if ((z11 && z10) || z11) {
                            downloadTaskG = q5.f.M().G(crc_link_type_val);
                        } else if (z10 || (downloadTaskG = q5.f.M().G(crc_link_type_val)) == null) {
                            downloadTaskG = q5.f.M().G(crc_link_type_val2);
                        }
                    }
                    if (downloadTaskG == null) {
                        return;
                    }
                    if ("login".equals(this.f71193c)) {
                        UtilsMy.p4(v.this.getContext(), downloadTaskG, this.f71193c);
                    } else {
                        UtilsMy.k4(v.this.getContext(), downloadTaskG);
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }

        class d implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f71195b;

            d(final String val$qqNumber) {
                this.f71195b = val$qqNumber;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    v.this.f71156q.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("mqqwpa://im/chat?chat_type=wpa&uin=" + this.f71195b + "&version=1")));
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }

        class d0 implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f71197b;

            d0(final String val$json) {
                this.f71197b = val$json;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    IntentDateBean intentDateBean = (IntentDateBean) JsonMapper.getInstance().fromJson(this.f71197b, IntentDateBean.class);
                    intentDateBean.setExtBean(new ExtBean(120));
                    if (intentDateBean.getObject() != null && (intentDateBean.getObject() instanceof Map)) {
                        HashMap map = (HashMap) intentDateBean.getObject();
                        if (map.containsKey("from") && map.get("from") != null && (map.get("from") instanceof Integer)) {
                            intentDateBean.setExtBean(new ExtBean(((Integer) map.get("from")).intValue()));
                        }
                    }
                    IntentUtil.getInstance().intentActivity(v.this.getContext(), intentDateBean);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }

        class e implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ int f71199b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ String f71200c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ int f71201d;

            e(final int val$shareTo, final String val$message, final int val$shareType) {
                this.f71199b = val$shareTo;
                this.f71200c = val$message;
                this.f71201d = val$shareType;
            }

            @Override // java.lang.Runnable
            public void run() {
                com.join.mgps.Util.w.q(v.this.f71156q, this.f71199b, this.f71200c, this.f71201d, 5);
            }
        }

        class e0 implements Runnable {
            e0() {
            }

            @Override // java.lang.Runnable
            public void run() {
                WebAccountDataBean webAccountDataBean = new WebAccountDataBean();
                v vVar = v.this;
                vVar.f71159t = AccountUtil_.getInstance_(vVar.f71156q).getAccountData();
                webAccountDataBean.setAccountBean(AccountBean.convert(v.this.f71159t));
                if (v.this.f71159t == null) {
                    v.this.f71160u = true;
                    IntentUtil.getInstance().goMyAccountLoginActivity(v.this.f71156q, 0, 2);
                    return;
                }
                webAccountDataBean.setHasLogin(true);
                v.this.f71147k.v("javascript:papaPutAccountData(" + JsonMapper.getInstance().toJson(webAccountDataBean) + ")");
            }
        }

        class f implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f71204b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ int f71205c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ String f71206d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            final /* synthetic */ String f71207e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            final /* synthetic */ String f71208f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            final /* synthetic */ int f71209g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            final /* synthetic */ String f71210h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            final /* synthetic */ String f71211i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            final /* synthetic */ String f71212j;

            /* JADX INFO: renamed from: k, reason: collision with root package name */
            final /* synthetic */ String f71213k;

            /* JADX INFO: renamed from: l, reason: collision with root package name */
            final /* synthetic */ String f71214l;

            /* JADX INFO: renamed from: m, reason: collision with root package name */
            final /* synthetic */ String f71215m;

            f(final String val$app_key, final int val$payType, final String val$callback_url, final String val$app_name, final String val$app_order_id, final int val$paOpenuid, final String val$uid, final String val$product_id, final String val$product_name, final String val$pay_rmb, final String val$extra1, final String val$extra2) {
                this.f71204b = val$app_key;
                this.f71205c = val$payType;
                this.f71206d = val$callback_url;
                this.f71207e = val$app_name;
                this.f71208f = val$app_order_id;
                this.f71209g = val$paOpenuid;
                this.f71210h = val$uid;
                this.f71211i = val$product_id;
                this.f71212j = val$product_name;
                this.f71213k = val$pay_rmb;
                this.f71214l = val$extra1;
                this.f71215m = val$extra2;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    PapayOrder papayOrder = new PapayOrder();
                    papayOrder.APPKEY = this.f71204b;
                    papayOrder.PAYTYPE = this.f71205c;
                    papayOrder.NOTIFY_URI = this.f71206d;
                    papayOrder.APP_NAME = this.f71207e;
                    papayOrder.APP_ORDER_ID = this.f71208f;
                    papayOrder.PA_OPEN_UID = this.f71209g;
                    papayOrder.APP_USER_ID = this.f71210h;
                    papayOrder.APP_USER_NAME = "";
                    papayOrder.PRODUCT_ID = this.f71211i;
                    papayOrder.PRODUCT_NAME = this.f71212j;
                    papayOrder.MONEY_AMOUNT = this.f71213k;
                    papayOrder.APP_DISTRICT = 1;
                    papayOrder.APP_SERVER = 1;
                    papayOrder.APP_EXT1 = this.f71214l;
                    papayOrder.APP_EXT2 = this.f71215m;
                    papayOrder.PAYORRECHARGE = 1;
                    v.this.X0(papayOrder);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }

        class f0 implements Runnable {
            f0() {
            }

            @Override // java.lang.Runnable
            public void run() {
                WebAccountDataBean webAccountDataBean = new WebAccountDataBean();
                v vVar = v.this;
                vVar.f71159t = AccountUtil_.getInstance_(vVar.f71156q).getAccountData();
                webAccountDataBean.setAccountBean(AccountBean.convert(v.this.f71159t));
                AccountUtil_.getInstance_(v.this.f71156q).accountLoginOut(v.this.f71156q);
                v.this.f71160u = true;
                IntentUtil.getInstance().goMyAccountLoginActivity(v.this.f71156q, 0, 2);
            }
        }

        class g implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f71218b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ int f71219c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ String f71220d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            final /* synthetic */ String f71221e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            final /* synthetic */ String f71222f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            final /* synthetic */ String f71223g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            final /* synthetic */ String f71224h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            final /* synthetic */ String f71225i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            final /* synthetic */ String f71226j;

            /* JADX INFO: renamed from: k, reason: collision with root package name */
            final /* synthetic */ String f71227k;

            /* JADX INFO: renamed from: l, reason: collision with root package name */
            final /* synthetic */ String f71228l;

            /* JADX INFO: renamed from: m, reason: collision with root package name */
            final /* synthetic */ String f71229m;

            /* JADX INFO: renamed from: n, reason: collision with root package name */
            final /* synthetic */ String f71230n;

            /* JADX INFO: renamed from: o, reason: collision with root package name */
            final /* synthetic */ String f71231o;

            /* JADX INFO: renamed from: p, reason: collision with root package name */
            final /* synthetic */ String f71232p;

            g(final String val$app_key, final int val$payType, final String val$callback_url, final String val$app_name, final String val$app_order_id, final String val$paOpenuid, final String val$uid, final String val$product_id, final String val$product_name, final String val$pay_rmb, final String val$extra1, final String val$extra2, final String val$appPrivateKey, final String val$token, final String val$payShowType) {
                this.f71218b = val$app_key;
                this.f71219c = val$payType;
                this.f71220d = val$callback_url;
                this.f71221e = val$app_name;
                this.f71222f = val$app_order_id;
                this.f71223g = val$paOpenuid;
                this.f71224h = val$uid;
                this.f71225i = val$product_id;
                this.f71226j = val$product_name;
                this.f71227k = val$pay_rmb;
                this.f71228l = val$extra1;
                this.f71229m = val$extra2;
                this.f71230n = val$appPrivateKey;
                this.f71231o = val$token;
                this.f71232p = val$payShowType;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    PapayOrder papayOrder = new PapayOrder();
                    papayOrder.APPKEY = this.f71218b;
                    papayOrder.PAYTYPE = this.f71219c;
                    papayOrder.NOTIFY_URI = this.f71220d;
                    papayOrder.APP_NAME = this.f71221e;
                    papayOrder.APP_ORDER_ID = this.f71222f;
                    if (com.join.mgps.Util.t2.i(this.f71223g)) {
                        papayOrder.PA_OPEN_UID = Integer.parseInt(this.f71223g);
                    }
                    papayOrder.APP_USER_ID = this.f71224h;
                    papayOrder.APP_USER_NAME = this.f71221e;
                    papayOrder.PRODUCT_ID = this.f71225i;
                    papayOrder.PRODUCT_NAME = this.f71226j;
                    papayOrder.MONEY_AMOUNT = this.f71227k;
                    papayOrder.APP_DISTRICT = 1;
                    papayOrder.APP_SERVER = 1;
                    papayOrder.APP_EXT1 = this.f71228l;
                    papayOrder.APP_EXT2 = this.f71229m;
                    papayOrder.PAYORRECHARGE = 1;
                    papayOrder.PRIVATEKEY = this.f71230n;
                    papayOrder.TOKEN = this.f71231o;
                    if (com.join.mgps.Util.t2.i(this.f71232p)) {
                        papayOrder.PAYSHOWTYPE = Integer.parseInt(this.f71232p);
                    }
                    v.this.X0(papayOrder);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }

        class g0 implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f71234b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ int f71235c;

            g0(final String val$json, final int val$shareTo) {
                this.f71234b = val$json;
                this.f71235c = val$shareTo;
            }

            @Override // java.lang.Runnable
            public void run() {
                ShareBean shareBean = (ShareBean) JsonMapper.getInstance().fromJson(this.f71234b, ShareBean.class);
                shareBean.setFrom(5);
                com.join.mgps.Util.w.p(v.this.f71156q, this.f71235c, shareBean);
            }
        }

        class h implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ int f71237b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ String f71238c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ String f71239d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            final /* synthetic */ String f71240e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            final /* synthetic */ String f71241f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            final /* synthetic */ String f71242g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            final /* synthetic */ String f71243h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            final /* synthetic */ String f71244i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            final /* synthetic */ String f71245j;

            /* JADX INFO: renamed from: k, reason: collision with root package name */
            final /* synthetic */ String f71246k;

            /* JADX INFO: renamed from: l, reason: collision with root package name */
            final /* synthetic */ String f71247l;

            h(final int val$payType, final String val$callback_url, final String val$app_name, final String val$app_order_id, final String val$paOpenuid, final String val$uid, final String val$product_id, final String val$product_name, final String val$pay_rmb, final String val$extra1, final String val$extra2) {
                this.f71237b = val$payType;
                this.f71238c = val$callback_url;
                this.f71239d = val$app_name;
                this.f71240e = val$app_order_id;
                this.f71241f = val$paOpenuid;
                this.f71242g = val$uid;
                this.f71243h = val$product_id;
                this.f71244i = val$product_name;
                this.f71245j = val$pay_rmb;
                this.f71246k = val$extra1;
                this.f71247l = val$extra2;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    PapayOrder papayOrder = new PapayOrder();
                    papayOrder.APPKEY = "qh97";
                    papayOrder.PAYTYPE = this.f71237b;
                    papayOrder.NOTIFY_URI = this.f71238c;
                    papayOrder.APP_NAME = this.f71239d;
                    papayOrder.APP_ORDER_ID = this.f71240e;
                    if (com.join.mgps.Util.t2.i(this.f71241f)) {
                        papayOrder.PA_OPEN_UID = Integer.parseInt(this.f71241f);
                    }
                    papayOrder.APP_USER_ID = this.f71242g;
                    papayOrder.APP_USER_NAME = this.f71239d;
                    papayOrder.PRODUCT_ID = this.f71243h;
                    papayOrder.PRODUCT_NAME = this.f71244i;
                    papayOrder.MONEY_AMOUNT = this.f71245j;
                    papayOrder.APP_DISTRICT = 1;
                    papayOrder.APP_SERVER = 1;
                    papayOrder.APP_EXT1 = this.f71246k;
                    papayOrder.APP_EXT2 = this.f71247l;
                    papayOrder.PAYORRECHARGE = 2;
                    v.this.X0(papayOrder);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }

        class h0 implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f71249b;

            h0(final String val$url) {
                this.f71249b = val$url;
            }

            @Override // java.lang.Runnable
            public void run() {
                if ("".equals(this.f71249b)) {
                    return;
                }
                v.this.f71147k.v(this.f71249b);
            }
        }

        class i implements Runnable {
            i() {
            }

            @Override // java.lang.Runnable
            public void run() {
                IntentUtil.getInstance().goAccountCenterActivity(v.this.f71156q);
            }
        }

        class j implements Runnable {
            j() {
            }

            @Override // java.lang.Runnable
            public void run() {
                IntentUtil.getInstance().goJoystickManager(v.this.f71156q);
            }
        }

        class k implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f71253b;

            k(final String val$json) {
                this.f71253b = val$json;
            }

            @Override // java.lang.Runnable
            public void run() {
                com.join.mgps.Util.w.s(v.this.getContext(), this.f71253b, 5);
            }
        }

        /* JADX INFO: renamed from: com.join.mgps.fragment.v$l$l, reason: collision with other inner class name */
        class RunnableC0731l implements Runnable {
            RunnableC0731l() {
            }

            @Override // java.lang.Runnable
            public void run() {
                IntentUtil.getInstance().goCodesBoxActivity(v.this.f71156q);
            }
        }

        class m implements Runnable {
            m() {
            }

            @Override // java.lang.Runnable
            public void run() {
                IntentUtil.getInstance().goDownloadCenterActivity(v.this.f71156q);
            }
        }

        class n implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f71257b;

            n(final String val$message) {
                this.f71257b = val$message;
            }

            @Override // java.lang.Runnable
            public void run() {
                com.join.mgps.Util.a3.b(v.this.f71156q).d(this.f71257b);
            }
        }

        class o implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ int f71259b;

            o(final int val$orderType) {
                this.f71259b = val$orderType;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    v.this.B.b();
                    v.this.u0(this.f71259b);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }

        class p implements Runnable {
            p() {
            }

            @Override // java.lang.Runnable
            public void run() {
                v.this.J0();
            }
        }

        class q implements Runnable {
            q() {
            }

            @Override // java.lang.Runnable
            public void run() {
                IntentUtil.getInstance().goMYAccountDetialActivity(v.this.f71156q);
            }
        }

        class r implements Runnable {
            r() {
            }

            @Override // java.lang.Runnable
            public void run() {
                IntentUtil.getInstance().goForumProfileMessageActivity(v.this.f71156q);
            }
        }

        class s implements Runnable {
            s() {
            }

            @Override // java.lang.Runnable
            public void run() {
                v.this.D0();
            }
        }

        class t implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f71265b;

            t(final String val$tag_id) {
                this.f71265b = val$tag_id;
            }

            @Override // java.lang.Runnable
            public void run() {
                v.this.E0(this.f71265b);
            }
        }

        class u implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f71267b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ String f71268c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ String f71269d;

            u(final String val$tag_id, final String val$fid, final String val$fname) {
                this.f71267b = val$tag_id;
                this.f71268c = val$fid;
                this.f71269d = val$fname;
            }

            @Override // java.lang.Runnable
            public void run() {
                v.this.F0(this.f71267b, this.f71268c, this.f71269d);
            }
        }

        /* JADX INFO: renamed from: com.join.mgps.fragment.v$l$v, reason: collision with other inner class name */
        class RunnableC0732v implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f71271b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ String f71272c;

            RunnableC0732v(final String val$action, final String val$id) {
                this.f71271b = val$action;
                this.f71272c = val$id;
            }

            @Override // java.lang.Runnable
            public void run() {
                com.papa.sim.statistic.t.l(v.this.f71156q).p(this.f71271b, this.f71272c, AccountUtil_.getInstance_(v.this.f71156q).getUid());
            }
        }

        class w implements Runnable {
            w() {
            }

            @Override // java.lang.Runnable
            public void run() {
                v.this.G0();
            }
        }

        class x implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f71275b;

            x(final String val$json) {
                this.f71275b = val$json;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (com.join.mgps.Util.t2.h(this.f71275b)) {
                        return;
                    }
                    StartGameMeta startGameMeta = (StartGameMeta) JsonMapper.getInstance().fromJson(this.f71275b, StartGameMeta.class);
                    Intent intent = new Intent();
                    intent.addFlags(8388608);
                    intent.setComponent(new ComponentName(startGameMeta.getPackageName(), startGameMeta.getActivityName()));
                    String uid = AccountUtil_.getInstance_(v.this.f71156q).getUid();
                    intent.putExtra("uid", uid);
                    startGameMeta.setUserID(uid);
                    startGameMeta.setPa_package_name(v.this.f71156q.getPackageName());
                    intent.putExtra("jsonData", JsonMapper.getInstance().toJson(startGameMeta));
                    intent.setAction("android.intent.action.VIEW");
                    try {
                        v.this.f71156q.startActivity(intent);
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            }
        }

        class y implements Runnable {
            y() {
            }

            @Override // java.lang.Runnable
            public void run() {
                v.this.setFullScreen();
            }
        }

        class z implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f71278b;

            class a implements GameRoomActivity.x {
                a() {
                }

                @Override // com.join.mgps.activity.arena.GameRoomActivity.x
                public void onFail(int type) {
                }

                @Override // com.join.mgps.activity.arena.GameRoomActivity.x
                public void onSuccess(int type, int duration, ButtonBean buttonBean) {
                }

                @Override // com.join.mgps.activity.arena.GameRoomActivity.x
                public void onSuccess(int type, int duration) {
                    z zVar = z.this;
                    v.this.N0(zVar.f71278b);
                }
            }

            z(final String val$roomId) {
                this.f71278b = val$roomId;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    UtilsMy.A0(v.this.f71156q, 4, "", "FIGHT_LOBBY", new a());
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }

        public l() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Unit d(String str) {
            com.join.android.app.common.utils.g.t0(v.this.f71156q).z(v.this.f71156q, new File(str));
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Unit e(String str) {
            com.join.android.app.common.utils.g.t0(v.this.f71156q).z(v.this.f71156q, new File(str));
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void f() {
            Intent intent = new Intent(BAction.ACTION_REAL_NAME_RESULT);
            intent.putExtra("result", 1);
            v.this.getActivity().sendBroadcast(intent);
            com.join.mgps.va.overmind.i.u0(intent, Integer.parseInt("0"));
        }

        @JavascriptInterface
        public void changeAccount(String accountJson) {
            try {
                AccountUtil_.getInstance_(v.this.f71156q).saveAccountData(g8.a.a((AccountBean) JsonMapper.getInstance().fromJson(accountJson, AccountBean.class)), v.this.f71156q);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        @JavascriptInterface
        public boolean checkAppHasInstall(String packageName) {
            try {
                return com.join.android.app.common.utils.g.t0(v.this.f71156q).e(v.this.f71156q, packageName);
            } catch (Exception e10) {
                e10.printStackTrace();
                return false;
            }
        }

        @JavascriptInterface
        public String checkAppInfo(String packageName) {
            APKUtils.a aVarN;
            try {
                aVarN = com.join.android.app.common.utils.g.t0(v.this.f71156q).n(v.this.f71156q, packageName);
            } catch (Exception e10) {
                e10.printStackTrace();
                aVarN = null;
            }
            return JsonMapper.getInstance().toJson(aVarN);
        }

        @JavascriptInterface
        public int checkLiveRes() {
            return 0;
        }

        @JavascriptInterface
        public int checkNetWork() {
            return com.join.android.app.common.utils.m.j(v.this.f71156q) ? 1 : 0;
        }

        @JavascriptInterface
        public String checkWufunPapaPlatform() {
            return "wufun";
        }

        @JavascriptInterface
        public void checkin(final boolean success) {
            v.this.f71140f.post(new a(success));
        }

        @JavascriptInterface
        public void copyToClipboard(final String text) {
            if (com.join.mgps.Util.t2.i(text)) {
                com.join.mgps.Util.r0.M(v.this.f71156q, text);
                com.join.mgps.Util.a3.b(v.this.f71156q).d("复制成功！");
            }
        }

        @JavascriptInterface
        public void creatVipOrder(final int orderType) {
            v.this.f71140f.post(new o(orderType));
        }

        @JavascriptInterface
        public void downloadApkGameByUrl(String appUrl, String appName, String appIconUrl, String packageName) {
            if (System.currentTimeMillis() - v.this.E < 1000) {
                return;
            }
            List<DownloadTask> listI = q5.f.M().I(packageName);
            if (listI == null || listI.size() <= 0) {
                DownloadTask downloadTask = new DownloadTask();
                downloadTask.setUrl(appUrl);
                downloadTask.setShowName(appName);
                downloadTask.setPackageName(packageName);
                downloadTask.setPlugin_num("46");
                downloadTask.setDtype(Dtype.android.name());
                downloadTask.setPortraitURL(appIconUrl);
                ArrayList arrayList = new ArrayList();
                TipBean tipBean = new TipBean();
                tipBean.setId("7");
                tipBean.setName("网游");
                tipBean.setColor("#8dbbec");
                arrayList.add(tipBean);
                downloadTask.setTips(JsonMapper.toJsonString(arrayList));
                TipNew tipNew = new TipNew();
                TipBean tipBean2 = new TipBean();
                tipBean2.setName("安卓");
                tipBean2.setColor("#f47500");
                tipBean2.setId("7");
                tipNew.setModel(tipBean2);
                TipBean tipBean3 = new TipBean();
                tipBean3.setName("外部");
                tipBean3.setColor("#f47500");
                tipBean3.setId("1024");
                tipNew.setModel(tipBean2);
                tipNew.setOut_game(tipBean3);
                downloadTask.setSp_tag_info(tipNew);
                downloadTask.setCrc_link_type_val(System.currentTimeMillis() + "");
                com.php25.PDownload.d.c(downloadTask, v.this.f71156q);
                com.papa.sim.statistic.t.l(v.this.f71156q).R1(Event.tencentArena, new Ext().setReMarks(appName));
            }
        }

        @JavascriptInterface
        public void downloadFile(String url, String fileName) {
            UtilsMy.S0(v.this.f71156q, url, fileName);
        }

        @JavascriptInterface
        public void downloadGame(String downloadTaskJson) {
            com.php25.PDownload.d.c((DownloadTask) JsonMapper.getInstance().fromJson(downloadTaskJson, DownloadTask.class), v.this.f71156q);
        }

        @JavascriptInterface
        public void downloadGameByGameId(String gameId) {
            v.this.A0(gameId, null, 0);
        }

        @JavascriptInterface
        public void downloadGameByGameIdAndFrom(String gameId, int from) {
            v.this.A0(gameId, null, from);
        }

        @JavascriptInterface
        public void downloadGameByGameIdAndUrl(String gameId, String gameurl) {
            v.this.A0(gameId, gameurl, 0);
        }

        @JavascriptInterface
        public void downloadGameByGameIdIfNoGame(String gameId) {
            if (q5.f.M().G(gameId) == null) {
                v.this.A0(gameId, null, 0);
            }
        }

        @JavascriptInterface
        public String findAllGames() {
            List<DownloadTask> listD = q5.f.M().d();
            if (listD == null || listD.size() <= 0) {
                return "";
            }
            StringBuffer stringBuffer = new StringBuffer();
            Iterator<DownloadTask> it2 = listD.iterator();
            while (it2.hasNext()) {
                stringBuffer.append("," + it2.next().getCrc_link_type_val());
            }
            return stringBuffer.toString().replaceFirst(",", "");
        }

        @JavascriptInterface
        public int gameProgress(String gameId) {
            try {
                return (int) q5.f.M().G(gameId).getProgress();
            } catch (Exception unused) {
                return 0;
            }
        }

        @JavascriptInterface
        public void getAccount() {
            v.this.f71140f.post(new e0());
        }

        @JavascriptInterface
        public String getAccountVer2() {
            WebAccountDataBean webAccountDataBean = new WebAccountDataBean();
            v vVar = v.this;
            vVar.f71159t = AccountUtil_.getInstance_(vVar.f71156q).getAccountData();
            if (v.this.f71159t != null) {
                webAccountDataBean.setAccountBean(AccountBean.convert(v.this.f71159t));
                webAccountDataBean.setHasLogin(true);
            } else {
                webAccountDataBean.setHasLogin(false);
            }
            JsonMapper.getInstance().toJson(webAccountDataBean);
            return JsonMapper.getInstance().toJson(webAccountDataBean);
        }

        @JavascriptInterface
        public String getAllH5game() {
            List<DownloadTask> listT = q5.f.M().t();
            if (listT == null) {
                return JsonMapper.getInstance().toJson(new ArrayList());
            }
            ArrayList arrayList = new ArrayList();
            Iterator<DownloadTask> it2 = listT.iterator();
            while (it2.hasNext()) {
                arrayList.add(it2.next().getCrc_link_type_val());
            }
            return JsonMapper.getInstance().toJson(arrayList);
        }

        @JavascriptInterface
        public String getAndroidId() {
            return com.join.android.app.common.utils.q.n(v.this.f71156q).e(v.this.f71156q);
        }

        @JavascriptInterface
        public String getAndroidVersion() {
            return com.join.android.app.common.utils.q.n(v.this.f71156q).s();
        }

        @JavascriptInterface
        public String getAppversionName() {
            return com.join.android.app.common.utils.q.n(v.this.f71156q).A();
        }

        @JavascriptInterface
        public String getDeviceId() {
            return com.papa.sim.statistic.u.f(v.this.f71156q).b();
        }

        @JavascriptInterface
        public String getIMEI() {
            return com.papa.sim.statistic.u.f(v.this.f71156q).b();
        }

        @JavascriptInterface
        public int getNowVersion() {
            return com.join.android.app.common.utils.q.n(v.this.f71156q).z();
        }

        @JavascriptInterface
        public String getPackageName() {
            return v.this.getContext().getPackageName();
        }

        @JavascriptInterface
        public String getPapaUIDAndToken() {
            v vVar = v.this;
            vVar.f71159t = AccountUtil_.getInstance_(vVar.f71156q).getAccountData();
            if (v.this.f71159t != null && v.this.f71159t.getAccountType() == 1) {
                return JsonMapper.toJsonString(new PaOpenBean(v.this.f71159t.getUid(), v.this.f71159t.getToken()));
            }
            IntentUtil.getInstance().goMyAccountLoginActivity(v.this.f71156q, 0, 2);
            return "";
        }

        @JavascriptInterface
        public String getPhoneModle() {
            return com.join.android.app.common.utils.q.n(v.this.f71156q).q();
        }

        @JavascriptInterface
        public String getSdkIntentData() {
            return "";
        }

        @JavascriptInterface
        public int getSingleGameADCount() {
            return new UserPrefs(v.this.f71156q).getAdGamesHasSeeCount();
        }

        @JavascriptInterface
        public String getStringByKey(String saveKey) {
            return v.this.f71156q.getSharedPreferences("Papa_Stat_SharedPreferences", 0).getString("papaH5_" + saveKey, "");
        }

        @JavascriptInterface
        public String getUMIDString() {
            try {
                return UMConfigure.getUMIDString(v.this.f71156q);
            } catch (Exception unused) {
                return "";
            }
        }

        @JavascriptInterface
        public String getVendor() {
            return com.join.android.app.common.utils.q.n(v.this.f71156q).y();
        }

        @JavascriptInterface
        public void goAccountCenter() {
            v.this.f71140f.post(new i());
        }

        @JavascriptInterface
        public void goAccountDetial() {
            v.this.f71140f.post(new q());
        }

        @JavascriptInterface
        public void goBackUrl(final String url) {
            v.this.f71140f.post(new h0(url));
        }

        @JavascriptInterface
        public void goChoiceUploadImage() {
            v.this.f71140f.post(new s());
        }

        @JavascriptInterface
        public void goCodesBoxActivity() {
            v.this.f71140f.post(new RunnableC0731l());
        }

        @JavascriptInterface
        public void goDownloadCenter() {
            v.this.f71140f.post(new m());
        }

        @JavascriptInterface
        public void goGameDetail(String gid) {
            IntentDateBean intentDateBean = new IntentDateBean();
            intentDateBean.setLink_type(1);
            intentDateBean.setCrc_link_type_val(gid);
            intentDateBean.setExtBean(new ExtBean(120));
            IntentUtil.getInstance().intentActivity(v.this.getContext(), intentDateBean);
        }

        @JavascriptInterface
        public void goHandShark() {
            v.this.f71140f.post(new j());
        }

        @JavascriptInterface
        public void goMainLabel(final String tag_id) {
            v.this.f71140f.post(new t(tag_id));
        }

        @JavascriptInterface
        public void goProfileMessage() {
            v.this.f71140f.post(new r());
        }

        @JavascriptInterface
        public void goQQGroup(final String qqNumber) {
            v.this.f71140f.post(new a0(qqNumber));
        }

        @JavascriptInterface
        public void goSearchLabel() {
            v.this.f71140f.post(new w());
        }

        @JavascriptInterface
        public void goStartLive() {
        }

        @JavascriptInterface
        public int inquiryGameStatus(String gid) {
            DownloadTask downloadTaskG;
            boolean z10;
            List<DownloadTask> listJ = q5.f.M().J(gid);
            if (listJ == null || listJ.size() <= 0) {
                downloadTaskG = null;
            } else {
                String crc_link_type_val = "";
                String crc_link_type_val2 = "";
                boolean z11 = false;
                loop0: while (true) {
                    z10 = false;
                    for (DownloadTask downloadTask : listJ) {
                        if (Dtype.MOD.name().equals(downloadTask.getFileType())) {
                            crc_link_type_val = downloadTask.getCrc_link_type_val();
                            z11 = com.join.mgps.va.overmind.i.q().K(downloadTask.getPackageName()) && downloadTask.getStatus() == 5;
                        } else {
                            crc_link_type_val2 = downloadTask.getCrc_link_type_val();
                            if (com.join.android.app.common.utils.g.t0(v.this.getContext()).e(v.this.getContext(), downloadTask.getPackageName()) && downloadTask.getStatus() == 5) {
                                z10 = true;
                            }
                        }
                    }
                    break loop0;
                }
                if ((z11 && z10) || z11) {
                    downloadTaskG = q5.f.M().G(crc_link_type_val);
                } else if (z10 || (downloadTaskG = q5.f.M().G(crc_link_type_val)) == null) {
                    downloadTaskG = q5.f.M().G(crc_link_type_val2);
                }
            }
            if (downloadTaskG == null) {
                return -1;
            }
            return downloadTaskG.getStatus();
        }

        @JavascriptInterface
        public int inquiryGameStatusByPackage(String packageName) {
            List<DownloadTask> listI = q5.f.M().I(packageName);
            if (listI == null || listI.size() <= 0) {
                return -1;
            }
            return listI.get(0).getStatus();
        }

        @JavascriptInterface
        public int instalApk(String gameId) {
            DownloadTask downloadTaskG = q5.f.M().G(gameId);
            if (downloadTaskG == null || !Dtype.android.name().equals(downloadTaskG.getFileType())) {
                return -1;
            }
            APKUtils.s0(downloadTaskG.getGameZipPath(), downloadTaskG, new Function1() { // from class: com.join.mgps.fragment.z
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return this.f71539b.d((String) obj);
                }
            });
            return 1;
        }

        @JavascriptInterface
        public int instalApkByPackageName(String packagename) {
            List<DownloadTask> listI = q5.f.M().I(packagename);
            if (listI == null || listI.size() <= 0) {
                return 1;
            }
            DownloadTask downloadTask = listI.get(0);
            APKUtils.s0(downloadTask.getGameZipPath(), downloadTask, new Function1() { // from class: com.join.mgps.fragment.x
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return this.f71442b.e((String) obj);
                }
            });
            return 1;
        }

        @JavascriptInterface
        public void intentQQ(final String qqNumber) {
            v.this.f71140f.post(new d(qqNumber));
        }

        @JavascriptInterface
        public void intentToCompletAccount() {
            v.this.f71140f.post(new c());
        }

        @JavascriptInterface
        public void joinAction(final String action, final String id2) {
            v.this.f71140f.post(new b0(action, id2));
        }

        @JavascriptInterface
        public void jumpGameMatch(String roomId) {
            v.this.f71140f.post(new z(roomId));
        }

        @JavascriptInterface
        public void liveIntentTo(int type) {
        }

        @JavascriptInterface
        public void login() {
            v.this.f71140f.post(new f0());
        }

        @JavascriptInterface
        public void openAction(final String action, final String id2) {
            v.this.f71140f.post(new RunnableC0732v(action, id2));
        }

        @JavascriptInterface
        public void papaLiveCropImage() {
            v.this.f71140f.post(new p());
        }

        @JavascriptInterface
        public void payByPapa(final String app_key, final int payType, final String callback_url, final String app_name, final String app_order_id, final int paOpenuid, final String uid, final String product_id, final String product_name, final String pay_rmb, final String extra1, final String extra2) {
            v.this.f71140f.post(new f(app_key, payType, callback_url, app_name, app_order_id, paOpenuid, uid, product_id, product_name, pay_rmb, extra1, extra2));
        }

        @JavascriptInterface
        public void payGameFinish(int resultCode) {
        }

        @JavascriptInterface
        public void playVideo(final String videoUrl, final String imageUrl) {
            v.this.f71140f.post(new b(videoUrl, imageUrl));
        }

        @JavascriptInterface
        public void rechargePabiFrom(final String app_key, final int payType, final String callback_url, final String app_name, final String app_order_id, final String paOpenuid, final String uid, final String product_id, final String product_name, final String pay_rmb, final String extra1, final String extra2) {
            v.this.f71140f.post(new h(payType, callback_url, app_name, app_order_id, paOpenuid, uid, product_id, product_name, pay_rmb, extra1, extra2));
        }

        @JavascriptInterface
        public void saveStringByKey(String saveKey, String message) {
            SharedPreferences.Editor editorEdit = v.this.f71156q.getSharedPreferences("Papa_Stat_SharedPreferences", 0).edit();
            editorEdit.putString("papaH5_" + saveKey, message);
            editorEdit.commit();
        }

        @JavascriptInterface
        public void setFullScreenJs(final String json) {
            v.this.f71140f.post(new y());
        }

        @JavascriptInterface
        public void setQuitFullScreenJs(final String json) {
        }

        @JavascriptInterface
        public void setScreenLandOrPort(final int screenLandOrPort) {
        }

        @JavascriptInterface
        public void setTitle(final String title) {
        }

        @JavascriptInterface
        public void shareFromJson(final String json) {
            v.this.f71140f.post(new k(json));
        }

        @JavascriptInterface
        public void shareToOne(final int shareTo, final String json) {
            v.this.f71140f.post(new g0(json, shareTo));
        }

        @JavascriptInterface
        public void shareToOneImageOrText(final int shareTo, final String message, final int shareType) {
            v.this.f71140f.post(new e(shareTo, message, shareType));
        }

        @JavascriptInterface
        public void showBackNew(final boolean show) {
        }

        @JavascriptInterface
        public void showDownLiveDialog() {
        }

        @JavascriptInterface
        public void showDownload(final boolean show) {
        }

        @JavascriptInterface
        public void showFinish(final boolean show) {
        }

        @JavascriptInterface
        public void showRefresh(final boolean show) {
        }

        @JavascriptInterface
        public void showSearch(final boolean show) {
        }

        @JavascriptInterface
        public void showShareButn(final String json) {
        }

        @JavascriptInterface
        public void showTitle(final boolean showOrHide) {
        }

        @JavascriptInterface
        public void startGame(String gid, String cheatID) {
            v.this.f71140f.post(new c0(gid, cheatID));
        }

        @JavascriptInterface
        public void startGameFromJson(final String json) {
            v.this.f71140f.post(new x(json));
        }

        @JavascriptInterface
        public void startH5Game(final String downloadTask) {
            CollectionBeanSub collectionBeanSub;
            DownloadTask downloadTaskBuildDownloadTask;
            try {
                if (!com.join.mgps.Util.t2.i(downloadTask) || (collectionBeanSub = (CollectionBeanSub) JsonMapper.getInstance().fromJson(downloadTask, CollectionBeanSub.class)) == null || (downloadTaskBuildDownloadTask = collectionBeanSub.buildDownloadTask()) == null) {
                    return;
                }
                UtilsMy.j3(downloadTaskBuildDownloadTask, v.this.f71156q);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        @JavascriptInterface
        public void startIntent(final String json) {
            v.this.f71140f.post(new d0(json));
        }

        @JavascriptInterface
        public void startWechatApp(String appId, String wechatAppId, String path) {
            IWXAPI iwxapiCreateWXAPI = WXAPIFactory.createWXAPI(v.this.f71156q, appId);
            iwxapiCreateWXAPI.registerApp(appId);
            WXLaunchMiniProgram.Req req = new WXLaunchMiniProgram.Req();
            req.userName = wechatAppId;
            req.path = path;
            req.miniprogramType = 0;
            iwxapiCreateWXAPI.sendReq(req);
        }

        @JavascriptInterface
        public int stopDown(String gameId) {
            DownloadTask downloadTaskG = q5.f.M().G(gameId);
            if (downloadTaskG == null) {
                return -1;
            }
            com.php25.PDownload.d.i(downloadTaskG);
            return 1;
        }

        @JavascriptInterface
        public int stopDownByPackageName(String packageName) {
            List<DownloadTask> listI = q5.f.M().I(packageName);
            if (listI == null || listI.size() == 0) {
                return -1;
            }
            Iterator<DownloadTask> it2 = listI.iterator();
            while (it2.hasNext()) {
                com.php25.PDownload.d.i(it2.next());
            }
            return 1;
        }

        @JavascriptInterface
        public void toastText(final String message) {
            v.this.f71140f.post(new n(message));
        }

        @JavascriptInterface
        public void updateAccount() {
            v.this.getUserInfo();
        }

        @JavascriptInterface
        public void updateRealNameState() {
            try {
                v.this.f71140f.post(new Runnable() { // from class: com.join.mgps.fragment.y
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f71472b.f();
                    }
                });
            } catch (Exception unused) {
            }
        }

        @JavascriptInterface
        public void updateVip() {
            v.this.s0();
        }

        @JavascriptInterface
        public String getSdkIntentData(String appKey) {
            return v.this.f71156q.getSharedPreferences("Papa_Stat_SharedPreferences", 0).getString("papasdk_" + appKey, "");
        }

        @JavascriptInterface
        public void goMainLabel(final String tag_id, final String fid, final String fname) {
            v.this.f71140f.post(new u(tag_id, fid, fname));
        }

        @JavascriptInterface
        public void payByPapa(final String app_key, final String appPrivateKey, final int payType, final String callback_url, final String app_name, final String app_order_id, final String paOpenuid, final String uid, final String product_id, final String product_name, final String pay_rmb, final String extra1, final String extra2, final String token, final String payShowType) {
            v.this.f71140f.post(new g(app_key, payType, callback_url, app_name, app_order_id, paOpenuid, uid, product_id, product_name, pay_rmb, extra1, extra2, appPrivateKey, token, payShowType));
        }
    }

    public class m {
        public m() {
        }

        @JavascriptInterface
        public void alipay(String data) {
            if (com.join.mgps.Util.t2.i(data)) {
                v.this.Y0(data);
            }
        }

        @JavascriptInterface
        public boolean checkAppHasInstall(String packageName) {
            try {
                return com.join.android.app.common.utils.g.t0(v.this.f71156q).e(v.this.f71156q, packageName);
            } catch (Exception e10) {
                e10.printStackTrace();
                return false;
            }
        }

        @JavascriptInterface
        public int gameProgress(String gameId) {
            try {
                return (int) q5.f.M().G(gameId).getProgress();
            } catch (Exception unused) {
                return 0;
            }
        }

        @JavascriptInterface
        public String getAndroidVersion() {
            return com.join.android.app.common.utils.q.n(v.this.f71156q).s();
        }

        @JavascriptInterface
        public String getAppversionName() {
            return com.join.android.app.common.utils.q.n(v.this.f71156q).A();
        }

        @JavascriptInterface
        public String getData(final String appkey) {
            List<H5GameAccountDataTable> listN = t6.w.o().n(appkey);
            if (listN == null) {
                return HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
            }
            ArrayList arrayList = new ArrayList();
            Iterator<H5GameAccountDataTable> it2 = listN.iterator();
            while (it2.hasNext()) {
                arrayList.add((AccountBean) JsonMapper.getInstance().fromJson(it2.next().getAccount_data(), AccountBean.class));
            }
            return JsonMapper.getInstance().toJson(arrayList);
        }

        @JavascriptInterface
        public String getDeviceId() {
            return com.join.android.app.common.utils.q.n(v.this.f71156q).i();
        }

        @JavascriptInterface
        public String getGameName() {
            try {
                return v.this.getResources().getString(R.string.app_name);
            } catch (Exception unused) {
                return "";
            }
        }

        @JavascriptInterface
        public String getIMEI() {
            return com.join.android.app.common.utils.q.n(v.this.f71156q).i();
        }

        @JavascriptInterface
        public int getNowVersion() {
            return com.join.android.app.common.utils.q.n(v.this.f71156q).z();
        }

        @JavascriptInterface
        public String getPhoneModle() {
            return com.join.android.app.common.utils.q.n(v.this.f71156q).q();
        }

        @JavascriptInterface
        public String getQdId() {
            return com.papa.sim.statistic.m.a(v.this.f71156q);
        }

        @JavascriptInterface
        public String getUMIDString() {
            try {
                return UMConfigure.getUMIDString(v.this.f71156q);
            } catch (Exception unused) {
                return "";
            }
        }

        @JavascriptInterface
        public String getVendor() {
            return com.join.android.app.common.utils.q.n(v.this.f71156q).y();
        }

        @JavascriptInterface
        public void openWeb(String url) {
            IntentUtil.getInstance().goShareWebActivity(v.this.f71156q, url);
        }

        @JavascriptInterface
        public void setData(final String appkey, final String accountdata) {
            List<H5GameAccountDataTable> listN = t6.w.o().n(appkey);
            if (listN == null || listN.size() <= 0) {
                H5GameAccountDataTable h5GameAccountDataTable = new H5GameAccountDataTable();
                h5GameAccountDataTable.setAppkey(appkey);
                h5GameAccountDataTable.setAccount_data(accountdata);
                t6.w.o().k(h5GameAccountDataTable);
                return;
            }
            boolean z10 = false;
            for (H5GameAccountDataTable h5GameAccountDataTable2 : listN) {
                if (((AccountBean) JsonMapper.getInstance().fromJson(h5GameAccountDataTable2.getAccount_data(), AccountBean.class)).getUid() == ((AccountBean) JsonMapper.getInstance().fromJson(accountdata, AccountBean.class)).getUid()) {
                    h5GameAccountDataTable2.setAppkey(appkey);
                    h5GameAccountDataTable2.setAccount_data(accountdata);
                    t6.w.o().update(h5GameAccountDataTable2);
                    z10 = true;
                }
            }
            if (z10) {
                return;
            }
            H5GameAccountDataTable h5GameAccountDataTable3 = new H5GameAccountDataTable();
            h5GameAccountDataTable3.setAppkey(appkey);
            h5GameAccountDataTable3.setAccount_data(accountdata);
            t6.w.o().k(h5GameAccountDataTable3);
        }

        @JavascriptInterface
        public void setScreenLandOrPort(final int screenLandOrPort) {
        }
    }

    private class n extends WebViewClient {
        public n(Context context) {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView view, String url2) {
            super.onPageFinished(view, url2);
            if (url2.endsWith(".zip")) {
                return;
            }
            com.join.mgps.Util.g1.b(v.this.f71137c, "onPageFinished() called." + url2);
            if (url2.startsWith("http") || url2.startsWith("https") || url2.startsWith("file://")) {
                v.this.f71152o = url2;
            }
            if (v.this.f71152o.equals("data:text/html,chromewebdata") || v.this.f71157r) {
                v.this.showLodingFailed();
            } else {
                view.getSettings().setBlockNetworkImage(false);
                view.getLayoutParams().height = -2;
            }
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView view, String url2, Bitmap favicon) {
            super.onPageStarted(view, url2, favicon);
            com.join.mgps.Util.g1.b(v.this.f71137c, "onPageStarted() called." + url2);
            if (url2.endsWith(".zip")) {
                return;
            }
            if (url2.startsWith("http") || url2.startsWith("https") || url2.startsWith("file://")) {
                v.this.f71152o = url2;
            }
            v.this.showLoding();
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView view, int errorCode, String description, String failingUrl) {
            super.onReceivedError(view, errorCode, description, failingUrl);
            com.join.mgps.Util.g1.b(v.this.f71137c, "onReceivedError() called." + failingUrl);
            if (failingUrl.endsWith(".zip")) {
                return;
            }
            v.this.f71157r = true;
            view.loadDataWithBaseURL(null, "", ClipBoardItemData.TYPE_TEXT_HTML, "utf-8", null);
            v.this.showLodingFailed();
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
            com.join.mgps.Util.g1.b(v.this.f71137c, "shouldOverrideUrlLoading() called.");
            if (!com.join.android.app.common.utils.m.j(v.this.f71156q)) {
                com.join.mgps.Util.a3.b(v.this.f71156q).d(v.this.getString(R.string.net_connect_failed));
            } else {
                if (!url2.startsWith("weixin:")) {
                    if (url2.startsWith("http") || url2.startsWith("https") || url2.startsWith("file://")) {
                        v.this.f71152o = url2;
                        return super.shouldOverrideUrlLoading(view, url2);
                    }
                    try {
                        v.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(url2)));
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                    return true;
                }
                try {
                    v.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(url2)));
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            }
            return true;
        }
    }

    private List<String> B0(Intent intent) {
        return (intent == null || intent.getExtras() == null) ? new ArrayList() : (List) intent.getExtras().get(MyAlbumActivity.KEY_SELECTED_IMAGES);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C0(int type) {
        File[] fileArrListFiles;
        if (!this.f71162w) {
            Toast.makeText(getContext(), getString(R.string.tip_no_permission), 0).show();
            return;
        }
        if (Build.VERSION.SDK_INT >= 23 && ContextCompat.checkSelfPermission(this.f71156q, "android.permission-group.STORAGE") == 0) {
            File file = new File(Environment.getExternalStorageDirectory() + this.f71138d);
            if (file.exists() && (fileArrListFiles = file.listFiles()) != null) {
                for (File file2 : fileArrListFiles) {
                    if (file2.exists() && file2.isFile() && file2.getName().endsWith(".jpg")) {
                        UtilsMy.delete(file2);
                    }
                }
            }
        }
        File[] fileArrListFiles2 = new File((this.f71156q.getExternalFilesDir("") != null ? this.f71156q.getExternalFilesDir("") + this.f71138d : this.f71156q.getFilesDir() + this.f71138d) + this.f71138d).listFiles();
        if (fileArrListFiles2 != null) {
            for (File file3 : fileArrListFiles2) {
                if (file3.exists() && file3.isFile() && file3.getName().endsWith(".jpg")) {
                    UtilsMy.delete(file3);
                }
            }
        }
        if (type == 100) {
            this.U = t0("");
            Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
            intent.putExtra("output", this.U);
            startActivityForResult(intent, 100);
            return;
        }
        if (type != 200) {
            return;
        }
        this.U = t0("_select");
        Intent intent2 = new Intent("android.intent.action.GET_CONTENT");
        intent2.setType("image/*");
        startActivityForResult(intent2, 200);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J0() {
        Dialog dialog = new Dialog(getActivity(), R.style.floate_dialog);
        this.T = dialog;
        dialog.setContentView(R.layout.dialog_pic_choose);
        Display defaultDisplay = getActivity().getWindowManager().getDefaultDisplay();
        Window window = this.T.getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        window.setGravity(80);
        attributes.width = defaultDisplay.getWidth();
        this.T.getWindow().setAttributes(attributes);
        TextView textView = (TextView) this.T.findViewById(R.id.chos_camera);
        TextView textView2 = (TextView) this.T.findViewById(R.id.pic_lib);
        TextView textView3 = (TextView) this.T.findViewById(R.id.btn_cancel);
        textView.setOnClickListener(new j());
        textView2.setOnClickListener(new k());
        textView3.setOnClickListener(new a());
        this.T.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void L0() {
        RoomPosition p10 = this.O.getP1();
        if (p10.getUid() == 0) {
            this.J = 0;
        } else {
            if (p10.getUid() == this.H.getAccountData().getUid()) {
                this.N = 0;
            }
            this.J = 1;
        }
        RoomPosition p11 = this.O.getP2();
        if (p11.getUid() == 0) {
            this.K = 0;
        } else {
            if (p11.getUid() == this.H.getAccountData().getUid()) {
                this.N = 1;
            }
            this.K = 1;
        }
        RoomPosition p12 = this.O.getP3();
        if (p12.getUid() == 0) {
            this.L = 0;
        } else {
            if (p12.getUid() == this.H.getAccountData().getUid()) {
                this.N = 2;
            }
            this.L = 1;
        }
        RoomPosition p13 = this.O.getP4();
        if (p13.getUid() == 0) {
            this.M = 0;
            return;
        }
        if (p13.getUid() == this.H.getAccountData().getUid()) {
            this.N = 3;
        }
        this.M = 1;
    }

    private boolean M0(String uri) {
        try {
            this.f71156q.getPackageManager().getPackageInfo(uri, 1);
            return true;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void P0() {
        Intent intent = new Intent("android.intent.action.GET_CONTENT");
        intent.addCategory("android.intent.category.OPENABLE");
        intent.setType("*/*");
        getActivity().startActivityForResult(Intent.createChooser(intent, "Image Chooser"), 43234);
    }

    private void Q0(GameRoom gameRoom) {
        com.join.mgps.dialog.d1 d1Var = this.P;
        if (d1Var != null) {
            d1Var.a();
        }
        com.join.mgps.dialog.d1 d1Var2 = new com.join.mgps.dialog.d1(getActivity());
        this.P = d1Var2;
        d1Var2.d("加入失败，您与" + gameRoom.getRoomId() + "房间不在同一战区\n请进入该游戏房间列表，并切换至【" + com.join.mgps.socket.fight.arena.c.d(gameRoom.getBattleArea()) + "】后再查找房间号进入");
        this.P.e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S0(String title) {
        com.join.mgps.dialog.f1 f1Var = this.Q;
        if (f1Var != null && f1Var.isShowing()) {
            this.Q.dismiss();
        }
        com.join.mgps.dialog.f1 f1VarZ = com.join.mgps.Util.h0.h0(this.f71156q).z(this.f71156q, title, false);
        this.Q = f1VarZ;
        f1VarZ.b();
    }

    private void V0(int requestCode) {
        Intent intent = new Intent(this.f71156q, (Class<?>) NewArenaDownloadActivity_.class);
        intent.putExtra("gameId", "" + this.O.getGameId());
        intent.putExtra(NewArenaDownloadActivity_.P, this.S);
        intent.putExtra(NewArenaDownloadActivity_.Q, this.R);
        startActivityForResult(intent, requestCode);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y0(final String alipay_sign) {
        new f(alipay_sign).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b1() {
        Iterator<String> it2 = this.f71145i1.iterator();
        this.Y = it2;
        if (it2 != null && it2.hasNext()) {
            String next = this.Y.next();
            this.X.f(next, this.f71159t.getUid() + "", this.f71159t.getToken());
            this.Y.remove();
            return;
        }
        LiveUploadData liveUploadData = new LiveUploadData();
        liveUploadData.setCode(1);
        if (this.f71154p0.size() == 0) {
            liveUploadData.setCode(0);
        } else {
            try {
                List<String> list = this.f71154p0;
                liveUploadData.setData((String[]) list.toArray(new String[list.size()]));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        String json = JsonMapper.getInstance().toJson(liveUploadData);
        this.f71147k.v("javascript:papaChoiceAndUploadImg('" + json + "')");
    }

    private void lodeWebView(String url) {
        com.join.mgps.Util.g1.b(this.f71137c, "lodeWebView() called." + url);
        try {
            if (com.join.android.app.common.utils.m.j(getContext())) {
                LJNestScrollWebView lJNestScrollWebView = this.f71147k;
                if (lJNestScrollWebView == null) {
                    return;
                }
                lJNestScrollWebView.setVisibility(0);
                this.f71147k.setBarHeight(getResources().getDimensionPixelOffset(R.dimen.web_loding_progress_h));
                this.f71147k.setClickable(true);
                this.f71147k.setUseWideViewPort(true);
                this.f71147k.setSupportZoom(false);
                this.f71147k.setBuiltInZoomControls(false);
                this.f71147k.setJavaScriptEnabled(true);
                this.f71147k.setCacheMode(-1);
                this.f71147k.setWebViewClient(new n(getContext()));
                this.f71147k.q(new l());
                this.f71147k.r(new m());
                this.f71147k.v(url);
                this.f71147k.setonShowFileChooser(new d());
                this.f71147k.setActivity(getActivity());
            } else {
                showLodingFailed();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private UserInfo o0(Context ctx) {
        return AccountUtil_.getInstance_(ctx).getAccountData();
    }

    private boolean q0(String gameId) {
        this.R = false;
        this.S = false;
        DownloadTask downloadTaskG = q5.f.M().G(gameId);
        if (downloadTaskG == null || downloadTaskG.getStatus() != 5) {
            this.R = false;
        } else {
            this.R = true;
            EMUApkTable eMUApkTableN = t6.p.o().n(downloadTaskG.getPlugin_num());
            if (eMUApkTableN == null) {
                this.S = true;
            } else if (!com.join.android.app.common.utils.o.t(this.f71156q, eMUApkTableN, false, new String[0]) || UtilsMy.D0(this.f71156q, eMUApkTableN)) {
                this.S = false;
            } else {
                this.S = true;
            }
        }
        return this.S && this.R;
    }

    private boolean r0() {
        if (Build.VERSION.SDK_INT < 23) {
            return true;
        }
        ArrayList arrayList = new ArrayList();
        if (ContextCompat.checkSelfPermission(getContext(), com.kuaishou.weapon.p0.g.f74786j) != 0) {
            arrayList.add(com.kuaishou.weapon.p0.g.f74786j);
        }
        if (ContextCompat.checkSelfPermission(getContext(), "android.permission.CAMERA") != 0) {
            arrayList.add("android.permission.CAMERA");
        }
        if (ContextCompat.checkSelfPermission(getContext(), com.kuaishou.weapon.p0.g.f74779c) != 0) {
            arrayList.add(com.kuaishou.weapon.p0.g.f74779c);
        }
        if (arrayList.size() == 0) {
            return true;
        }
        ActivityCompat.requestPermissions(getActivity(), (String[]) arrayList.toArray(new String[0]), 2);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setFullScreen() {
        getActivity().getWindow().setFlags(1024, 1024);
    }

    private Uri t0(String type) {
        String str;
        String str2 = this.f71159t.getUid() + type + System.currentTimeMillis() + ".jpg";
        if (this.f71156q.getExternalFilesDir("") != null) {
            str = this.f71156q.getExternalFilesDir("") + this.f71138d;
        } else {
            str = this.f71156q.getFilesDir() + this.f71138d;
        }
        File file = new File(str, str2);
        try {
            File file2 = new File(str);
            if (!file2.exists()) {
                file2.mkdirs();
            }
            if (file.exists()) {
                file.delete();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            Toast.makeText(getContext(), "生成封面失败", 0).show();
        }
        return FileProvider.getUriForFile(getContext(), getContext().getPackageName() + ".fileprovider", file);
    }

    @Background
    void A0(String gameId, String url, int from) {
        if (!com.join.android.app.common.utils.m.j(getContext())) {
            showTost("获取游戏信息失败");
            return;
        }
        try {
            UserInfo accountData = AccountUtil_.getInstance_(getContext()).getAccountData();
            ResultMainBean<List<DetailResultBean>> resultMainBeanI0 = this.f71148l.I0(RequestBeanUtil.getInstance(getContext()).getAppDetialBean(gameId, accountData != null ? accountData.getUid() : 0, null));
            if (resultMainBeanI0 == null || resultMainBeanI0.getFlag() == 0) {
                if (resultMainBeanI0 == null || resultMainBeanI0.getFlag() == 0) {
                    showTost("获取游戏信息失败");
                    return;
                } else {
                    showTost("获取游戏信息失败");
                    return;
                }
            }
            List<DetailResultBean> data = resultMainBeanI0.getMessages().getData();
            if (data.size() != 0) {
                DetailResultBean detailResultBean = data.get(0);
                detailResultBean.set_from(110);
                if (from > 0) {
                    detailResultBean.set_from(from);
                }
                if (url != null) {
                    detailResultBean.setDown_url_remote(url);
                }
                U0(detailResultBean);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            showTost("获取游戏信息失败");
        }
    }

    public void D0() {
        boolean z10 = false;
        if (ContextCompat.checkSelfPermission(this.f71156q, com.kuaishou.weapon.p0.g.f74786j) != 0) {
            UtilsMy.e3(this.f71156q, com.kuaishou.weapon.p0.g.f74786j);
        } else if (ContextCompat.checkSelfPermission(this.f71156q, com.kuaishou.weapon.p0.g.f74785i) != 0) {
            UtilsMy.e3(this.f71156q, com.kuaishou.weapon.p0.g.f74785i);
        } else {
            z10 = true;
        }
        if (z10) {
            Intent intent = new Intent(getContext(), (Class<?>) MyAlbumActivity.class);
            Bundle bundle = new Bundle();
            this.f71154p0.clear();
            this.f71136b1.clear();
            bundle.putSerializable(MyAlbumActivity.KEY_SELECTED_IMAGES, (Serializable) this.f71136b1);
            intent.putExtras(bundle);
            startActivityForResult(intent, 256);
        }
    }

    public void E0(String tag_id) {
        try {
            if (TextUtils.isEmpty(tag_id)) {
                com.join.mgps.Util.g1.d("uploadData", "  goMyMainLabel tag_id is null ");
            } else {
                MainLabelActivity_.intent(this).d(Integer.parseInt(tag_id)).start();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void F0(String tag_id, String fid, String fname) {
        try {
            if (TextUtils.isEmpty(tag_id)) {
                com.join.mgps.Util.g1.d("uploadData", "  goMyMainLabel tag_id is null ");
                return;
            }
            int i10 = !TextUtils.isEmpty(fid) ? Integer.parseInt(fid) : 0;
            if (TextUtils.isEmpty(fname)) {
                fname = "";
            }
            IntentUtil.getInstance().goMainLabelActivity(getContext(), Integer.parseInt(tag_id), i10, fname);
        } catch (NumberFormatException e10) {
            e10.printStackTrace();
        }
    }

    public void G0() {
        SearchLabelActivity_.v(this).a(1).start();
    }

    @UiThread
    void H0(ArenaResponse response) {
        String str;
        int i10 = response.errorType;
        if (i10 == 7) {
            str = "密码输入错误，请重试";
        } else if (i10 == 8) {
            str = "房间不存在";
        } else if (i10 == 9) {
            str = "房间已满，无法加入!";
        } else if (i10 == 13) {
            str = "铜板不足，无法加入房间";
        } else if (i10 == 1001) {
            str = response.errorInfo;
        } else if (i10 == 16) {
            str = "无法加入，你被禁止加入该房间";
        } else if (i10 != 17) {
            com.join.mgps.Util.a3.b(this.f71156q).d(com.join.mgps.socket.fight.arena.c.g(response));
            str = "";
        } else {
            str = "该房间为比赛专用房间,非参赛选手无法加入";
        }
        com.join.mgps.Util.a3.b(this.f71156q).d(str);
        w0();
    }

    @UiThread
    void I0(GameRoom gameRoom) {
        w0();
        this.O = gameRoom;
        if (!gameRoom.getAllowPeripheralJoin() && com.join.mgps.socket.fight.arena.c.o(this.f71156q)) {
            com.join.mgps.Util.a3.b(this.f71156q).d("禁止外设用户加入!");
            return;
        }
        if (this.O.getBattleArea().getNumber() != BattleArea.ALL.getNumber() && this.O.getBattleArea().getNumber() != this.F.d().n().getNumber()) {
            Q0(gameRoom);
            return;
        }
        if (!q0("" + gameRoom.getGameId())) {
            V0(f71129b2);
        } else if (gameRoom.getHasJoinPassword()) {
            R0(gameRoom);
        } else {
            x0(gameRoom, "");
        }
    }

    @UiThread
    void K0(boolean isShow) {
        if (isShow) {
            com.join.mgps.Util.a3.b(this.f71156q).d("正在连接服务器，请稍候...");
        }
        com.join.mgps.socket.fight.arena.b bVar = new com.join.mgps.socket.fight.arena.b(getActivity(), new g());
        this.F = bVar;
        bVar.bindService();
    }

    @UiThread
    void N0(String romid) {
        this.G = romid;
        if (!com.join.android.app.common.utils.m.j(this.f71156q)) {
            Toast.makeText(this.f71156q, "当前网络不可用，请检查网络", 0).show();
            return;
        }
        if (!c1()) {
            T0();
            return;
        }
        com.join.mgps.socket.fight.arena.b bVar = this.F;
        if (bVar != null && bVar.d() == null) {
            K0(true);
            return;
        }
        this.F.d().z(this.I);
        this.B.b();
        this.B.setCancelable(true);
        if (this.F.d().s()) {
            y0(romid);
        } else {
            this.F.f(ArenaRequestFactory.login(ArenaConstants.REGISTER_TYPE_ARENAMAIN));
        }
    }

    @UiThread
    void O0(SocketError error) {
        int i10 = error.errorType;
        if (i10 != 6 && i10 != 3 && i10 != 4) {
            com.join.mgps.Util.a3.b(this.f71156q).d("网络异常，请稍后重试!");
        } else {
            com.join.mgps.Util.a3.b(this.f71156q).d(error.errorInfo);
            T0();
        }
    }

    @UiThread
    void R0(final GameRoom gameRoom) {
        com.join.mgps.customview.input.a aVar = new com.join.mgps.customview.input.a(this.f71156q, "请输入房间密码", 4, false);
        aVar.g(new i(aVar, gameRoom));
        aVar.h();
    }

    @UiThread
    void T0() {
        com.join.mgps.Util.h0.h0(this.f71156q).j(this.f71156q);
    }

    @UiThread
    void U0(DetailResultBean collectionBeanSub) {
        if (collectionBeanSub.getMod_info() != null) {
            collectionBeanSub.getMod_info().getMod_game_id();
            collectionBeanSub.get_from();
            collectionBeanSub.get_from_type();
        } else {
            collectionBeanSub.getCrc_sign_id();
            collectionBeanSub.get_from();
            collectionBeanSub.get_from_type();
        }
        collectionBeanSub.getTag_info();
        collectionBeanSub.getMod_info();
        boolean zW2 = !"7".equals(collectionBeanSub.getSp_tag_info().getModel().getId());
        if (!zW2) {
            zW2 = com.join.mgps.Util.t2.h(collectionBeanSub.getPlugin_num()) ? false : UtilsMy.w2(Integer.parseInt(collectionBeanSub.getPlugin_num()));
            if (zW2) {
                UtilsMy.f2(collectionBeanSub.getPlugin_num()).getDown_type();
            }
        }
        try {
            String strD = new PrefDef_(this.f71156q).androidIdNullsKey().d();
            if (com.join.mgps.Util.t2.i(strD)) {
                List list = (List) JsonMapper.getInstance().fromJson(strD, List.class);
                if (com.join.mgps.Util.t2.i(MApplication.K) && list.contains(MApplication.K) && zW2 && IntentUtil.getInstance().goLogin(this.f71156q)) {
                    return;
                }
            }
        } catch (Exception unused) {
        }
        W0(collectionBeanSub);
    }

    @UiThread
    void W0(DetailResultBean detialResultBean) {
        boolean z10;
        if (detialResultBean == null) {
            return;
        }
        try {
            List<DownloadTask> listH = detialResultBean.getMod_info() != null ? q5.f.M().H(detialResultBean.getMod_info().getMod_game_id(), detialResultBean.getMod_info().getMain_game_id()) : q5.f.M().I(detialResultBean.getPackage_name());
            DownloadTask downloadtaskDown = null;
            if (listH != null && listH.size() > 0) {
                boolean z11 = false;
                loop0: while (true) {
                    z10 = false;
                    for (DownloadTask downloadTask : listH) {
                        if (Dtype.MOD.name().equals(downloadTask.getFileType())) {
                            z11 = com.join.mgps.va.overmind.i.q().K(downloadTask.getPackageName()) && downloadTask.getStatus() == 5;
                        } else if (com.join.android.app.common.utils.g.t0(getContext()).e(getContext(), downloadTask.getPackageName()) && downloadTask.getStatus() == 5) {
                            z10 = true;
                        }
                    }
                    break loop0;
                }
                if (z11 && z10) {
                    downloadtaskDown = q5.f.M().G(detialResultBean.getMod_info().getMain_game_id());
                } else if (z11) {
                    if (detialResultBean.getMod_info() != null) {
                        downloadtaskDown = q5.f.M().G(detialResultBean.getMod_info().getMod_game_id());
                    }
                } else if (z10) {
                    downloadtaskDown = q5.f.M().G(detialResultBean.getMod_info().getMain_game_id());
                } else {
                    downloadtaskDown = detialResultBean.getMod_info() != null ? q5.f.M().G(detialResultBean.getMod_info().getMod_game_id()) : null;
                    if (downloadtaskDown == null) {
                        downloadtaskDown = q5.f.M().G(detialResultBean.getMod_info().getMain_game_id());
                    }
                }
            }
            if (downloadtaskDown == null) {
                if (detialResultBean.getMod_info() != null) {
                    UtilsMy.c1(this.f71156q, detialResultBean);
                    return;
                }
                downloadtaskDown = detialResultBean.getDownloadtaskDown();
            }
            if (downloadtaskDown != null) {
                if (UtilsMy.y0(downloadtaskDown.getPay_game_amount(), downloadtaskDown.getCrc_link_type_val()) > 0) {
                    UtilsMy.z4(this.f71156q, downloadtaskDown.getCrc_link_type_val());
                    return;
                }
                UtilsMy.A1(downloadtaskDown, detialResultBean);
                if (UtilsMy.o1(this.f71156q, downloadtaskDown)) {
                    return;
                }
                if (detialResultBean.getDown_status() == 5) {
                    UtilsMy.l1(this.f71156q, downloadtaskDown);
                } else {
                    UtilsMy.U0(this.f71156q, downloadtaskDown, downloadtaskDown.getTp_down_url(), downloadtaskDown.getOther_down_switch(), downloadtaskDown.getCdn_down_switch());
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void X0(final PapayOrder order) {
        PayNowActivity_.intent(this.f71156q).c(order).start();
    }

    @UiThread
    void Z0(CreateVipData vipData) {
        try {
            this.f71159t = AccountUtil_.getInstance_(this.f71156q).getAccountData();
            PapayOrder papayOrder = new PapayOrder();
            papayOrder.APPKEY = "16000431";
            papayOrder.PAYTYPE = 0;
            papayOrder.NOTIFY_URI = com.join.mgps.rpc.h.f72349j + "/member/buy_vip/callback";
            papayOrder.APP_NAME = "悟饭充值";
            papayOrder.APP_ORDER_ID = "papavip" + System.currentTimeMillis() + "";
            papayOrder.PA_OPEN_UID = this.f71159t.getUid();
            papayOrder.APP_USER_ID = this.f71159t.getUid() + "";
            papayOrder.APP_USER_NAME = this.f71159t.getNickname();
            papayOrder.PRODUCT_ID = com.windmill.sdk.strategy.m.a.f87212d + vipData.getMonth();
            papayOrder.PRODUCT_NAME = "会员充值";
            papayOrder.MONEY_AMOUNT = vipData.getAmount() + "";
            papayOrder.APP_DISTRICT = 1;
            papayOrder.APP_SERVER = 1;
            papayOrder.APP_EXT1 = vipData.getExtra();
            papayOrder.APP_EXT2 = "";
            papayOrder.PAYORRECHARGE = 1;
            papayOrder.ORDERTYPE = 1;
            papayOrder.PAYSHOWTYPE = 3;
            papayOrder.TOKEN = this.f71159t.getToken();
            X0(papayOrder);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void a1(Uri uri) {
        this.V = t0("_crop");
        Intent intent = new Intent("com.android.camera.action.CROP");
        intent.setDataAndType(uri, "image/*");
        intent.putExtra("crop", "true");
        intent.putExtra("aspectX", MediaPlayer.MEDIA_PLAYER_OPTION_NEED_CHECK_DROP_AUDIO);
        intent.putExtra("aspectY", 290);
        intent.putExtra("outputX", MediaPlayer.MEDIA_PLAYER_OPTION_NEED_CHECK_DROP_AUDIO);
        intent.putExtra("outputY", 290);
        intent.putExtra("scale", true);
        intent.putExtra("scaleUpIfNeeded", true);
        intent.putExtra("return-data", false);
        intent.putExtra("output", this.V);
        intent.putExtra("outputFormat", Bitmap.CompressFormat.JPEG.toString());
        startActivityForResult(intent, 10);
    }

    @AfterViews
    void afterview() {
        this.f71148l = com.join.mgps.rpc.impl.d.O1();
        this.f71150m = com.join.mgps.rpc.impl.a.c0();
        this.f71151n = com.join.mgps.rpc.impl.b.C();
        com.join.mgps.Util.g1.b(this.f71137c, "afterView() called.");
        try {
            this.f71156q = getContext();
            String string = getArguments().getString("url");
            this.f71152o = string;
            if (string == null) {
                this.f71152o = "";
            }
            if (!this.f71152o.contains("http://") && !this.f71152o.contains("file://") && !this.f71152o.contains("https://")) {
                this.f71152o = "http://" + this.f71152o;
            }
            if (this.f71152o.contains("?")) {
                lodeWebView(this.f71152o + "&ver=" + Build.VERSION.RELEASE);
            } else {
                lodeWebView(this.f71152o + "?ver=" + Build.VERSION.RELEASE);
            }
            TextView textView = this.f71144i;
            if (textView != null) {
                textView.setText("网页加载失败，再试试吧~");
            }
            LJNestScrollWebView lJNestScrollWebView = this.f71147k;
            if (lJNestScrollWebView != null) {
                lJNestScrollWebView.setMethodListenter(this);
            }
            this.B = com.join.mgps.Util.h0.h0(this.f71156q).x(this.f71156q);
            com.join.mgps.Util.j0.a().d(this);
            this.X = new com.join.mgps.Util.u2(getContext(), this);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    boolean c1() {
        UserInfo userInfoO0 = o0(this.f71156q);
        this.f71159t = userInfoO0;
        return (userInfoO0 == null || AccountUtil_.getInstance_(this.f71156q).isTourist()) ? false : true;
    }

    @Background
    void getUserInfo() {
        if (this.D) {
            return;
        }
        this.D = true;
        this.f71159t = AccountUtil_.getInstance_(getContext()).getAccountData();
        if (com.join.android.app.common.utils.m.j(getContext())) {
            UserInfo userInfo = this.f71159t;
            if (userInfo == null || TextUtils.isEmpty(userInfo.getToken())) {
                Intent intent = new Intent();
                intent.setAction(p5.a.f96219s);
                getContext().sendBroadcast(intent);
                return;
            }
            try {
                MessageUserInfoRequest.RequestParameters.b bVarNewBuilder = MessageUserInfoRequest.RequestParameters.newBuilder();
                bVarNewBuilder.setUid(this.f71159t.getUid());
                bVarNewBuilder.setToken(this.f71159t.getToken());
                bVarNewBuilder.setAppVersion(g8.b.a(getContext()));
                HashMap map = new HashMap();
                map.put("uid", bVarNewBuilder.getUid() + "");
                map.put(Constants.TOKEN, bVarNewBuilder.getToken());
                map.put("appVersion", bVarNewBuilder.getAppVersion());
                bVarNewBuilder.setSign(com.join.mgps.Util.k2.d(map));
                ResponseResult responseResultA = this.f71151n.A(bVarNewBuilder.build());
                if (responseResultA != null) {
                    if (responseResultA.getError() == 200) {
                        UserInfo data = responseResultA.getData();
                        if (data != null && data.getUid() != 0) {
                            UserInfo.b builder = this.f71159t.toBuilder();
                            builder.setSVIPLevel(data.getSVIPLevel()).setVipLevel(data.getVipLevel()).setLiveTotalCharm(data.getLiveTotalCharm()).setIsAnchor(data.getIsAnchor()).setPapaMoney(data.getPapaMoney()).setMemberTitle(data.getMemberTitle()).setGameTime(data.getGameTime()).setExp(data.getExp()).setSecretKey(data.getSecretKey()).build();
                            if (com.join.mgps.Util.t2.i(data.getNickname())) {
                                builder.setNickname(data.getNickname());
                            }
                            this.f71159t = builder.build();
                            AccountUtil_.getInstance_(getContext()).saveAccountData(this.f71159t, getContext());
                        }
                    } else {
                        responseResultA.getError();
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        this.D = false;
    }

    public boolean inCustomView() {
        return this.f71158s != null;
    }

    @Click
    void loding_faile() {
        com.join.mgps.Util.g1.b(this.f71137c, "loding_faile() called.");
        if (this.f71147k != null) {
            this.f71157r = false;
            lodeWebView(this.f71152o);
        }
    }

    @Override // com.join.mgps.customview.LJNestScrollWebView.b
    public void noMethod() {
        WebView webView = this.f71147k.getWebView();
        if (webView == null || !webView.canGoBack()) {
            return;
        }
        webView.goBack();
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        String strX;
        if (resultCode == -1) {
            if (requestCode == 10) {
                this.W = true;
                com.facebook.imagepipeline.core.h imagePipeline = Fresco.getImagePipeline();
                imagePipeline.h(this.V);
                imagePipeline.f(this.V);
                imagePipeline.e(this.V);
                this.X.f(this.V.getPath(), this.f71159t.getUid() + "", this.f71159t.getToken());
                this.B.b();
                this.B.a("正在上传直播封面");
                this.B.setCancelable(false);
            } else if (requestCode == 100) {
                a1(this.U);
            } else if (requestCode == 200 && (strX = com.join.mgps.Util.o0.x(getContext(), data.getData())) != null) {
                a1(Uri.fromFile(new File(strX)));
            }
        }
        if (requestCode == 256) {
            if (this.f71136b1 == null) {
                this.f71136b1 = new ArrayList();
            }
            this.f71136b1.clear();
            this.f71136b1.addAll(B0(data));
            net.bither.util.b.p().x();
        } else if (requestCode == f71129b2 && resultCode == -1) {
            if (this.O.getHasJoinPassword() || this.O.getHasJoinPassword()) {
                R0(this.O);
            } else {
                S0("正在获取房间...");
                x0(this.O, "");
            }
        }
        this.f71147k.p(requestCode, resultCode, data);
    }

    @Override // androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        if (savedInstanceState != null) {
            try {
                LJNestScrollWebView lJNestScrollWebView = this.f71147k;
                if (lJNestScrollWebView != null) {
                    lJNestScrollWebView.getWebView().restoreState(savedInstanceState);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        this.f71147k.setOnKeyListener(new c());
        return super.onCreateView(inflater, container, savedInstanceState);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        p0();
        this.A = true;
        com.join.mgps.Util.j0.a().e(this);
        if (this.f71141f1 != null) {
            net.bither.util.b.p().y(this.f71141f1);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.r downloadTaskEvent) {
        DownloadTask downloadTaskA = downloadTaskEvent.a();
        if (downloadTaskA == null) {
            return;
        }
        if (APKUtils.K(downloadTaskA)) {
            this.f71147k.v("javascript:papaGameStatusNotify(" + downloadTaskA.getRef_crc_sign_id() + "," + downloadTaskA.getStatus() + ")");
            return;
        }
        this.f71147k.v("javascript:papaGameStatusNotify(" + downloadTaskA.getCrc_link_type_val() + "," + downloadTaskA.getStatus() + ")");
    }

    @Override // com.join.mgps.customview.LJNestScrollWebView.b
    public void onHideCustomView() {
        this.f71158s = null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        LJNestScrollWebView lJNestScrollWebView = this.f71147k;
        if (lJNestScrollWebView != null) {
            try {
                lJNestScrollWebView.getWebView().getClass().getMethod("onPause", new Class[0]).invoke(this.f71147k.getWebView(), null);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
            } catch (NoSuchMethodException e11) {
                e11.printStackTrace();
            } catch (InvocationTargetException e12) {
                e12.printStackTrace();
            }
        }
        super.onPause();
    }

    @Override // com.join.mgps.customview.LJNestScrollWebView.b
    public void onReceivedTitle(String title) {
    }

    @Override // androidx.fragment.app.Fragment
    public void onRequestPermissionsResult(int requestCode, @NonNull String[] permissions, @NonNull int[] grantResults) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        if (requestCode != 2) {
            return;
        }
        for (int i10 : grantResults) {
            if (i10 != 0) {
                return;
            }
        }
        this.f71162w = true;
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.f71147k.v("javascript:papaActivityOnResume()");
        LJNestScrollWebView lJNestScrollWebView = this.f71147k;
        if (lJNestScrollWebView != null) {
            try {
                lJNestScrollWebView.getWebView().getClass().getMethod("onResume", new Class[0]).invoke(this.f71147k.getWebView(), null);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
            } catch (NoSuchMethodException e11) {
                e11.printStackTrace();
            } catch (InvocationTargetException e12) {
                e12.printStackTrace();
            }
        }
        this.f71159t = AccountUtil_.getInstance_(this.f71156q).getAccountData();
        if (this.f71160u) {
            if (this.f71147k != null) {
                WebAccountDataBean webAccountDataBean = new WebAccountDataBean();
                if (this.f71159t != null) {
                    webAccountDataBean.setHasLogin(true);
                } else {
                    webAccountDataBean.setHasLogin(false);
                }
                webAccountDataBean.setAccountBean(AccountBean.convert(this.f71159t));
                this.f71147k.v("javascript:papaPutAccountData(" + JsonMapper.getInstance().toJson(webAccountDataBean) + ")");
            }
            this.f71160u = false;
        }
        net.bither.util.b.p().e(this.f71141f1);
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
        this.f71147k.getWebView().saveState(outState);
    }

    @Override // com.join.mgps.customview.LJNestScrollWebView.b
    public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback, WebChromeClient chromeClient) {
        this.f71158s = view;
        if (view == null) {
            return;
        }
        this.f71146j.setVisibility(8);
        getActivity().setRequestedOrientation(0);
        setFullScreen();
    }

    @Override // com.join.mgps.Util.u2.e
    public void onUploadResult(int code, String url) {
        com.join.mgps.Util.g1.d("uploadData", "  onUploadResult " + url);
        if (!this.Z) {
            this.B.dismiss();
            this.B.a("请稍候...");
            if (code == 0) {
                this.f71147k.v("javascript:papaLiveCropImage2('" + url + "')");
                Toast.makeText(getContext(), "上传成功", 0).show();
            } else {
                Toast.makeText(getContext(), "上传失败，错误码 " + code, 0).show();
            }
            this.W = false;
            return;
        }
        if (code == 0) {
            this.f71154p0.add(url);
        }
        Iterator<String> it2 = this.Y;
        if (it2 != null && it2.hasNext()) {
            b1();
            return;
        }
        LiveUploadData liveUploadData = new LiveUploadData();
        liveUploadData.setCode(0);
        try {
            List<String> list = this.f71154p0;
            liveUploadData.setData((String[]) list.toArray(new String[list.size()]));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        String json = JsonMapper.getInstance().toJson(liveUploadData);
        this.f71147k.v("javascript:papaChoiceAndUploadImg('" + json + "')");
        this.B.dismiss();
        this.B.a("请稍候...");
        this.Z = false;
    }

    void p0() {
        com.join.mgps.socket.fight.arena.b bVar = this.F;
        if (bVar == null || bVar.d() == null) {
            return;
        }
        com.join.mgps.Util.g1.b(this.f71137c, "--- removeObserver---");
        this.F.d().A(this.I);
        this.F.g();
        this.F.stopService();
    }

    @Background
    void s0() {
        try {
            UserInfo accountData = AccountUtil_.getInstance_(getContext()).getAccountData();
            if (accountData == null || accountData.getAccountType() == 2) {
                return;
            }
            MessageCheckTokenRequest.MessageCheckTokenRequestParameters.b bVarNewBuilder = MessageCheckTokenRequest.MessageCheckTokenRequestParameters.newBuilder();
            bVarNewBuilder.setUid(this.f71159t.getUid());
            bVarNewBuilder.setToken(this.f71159t.getToken());
            bVarNewBuilder.setAppVersion(g8.b.a(getContext()));
            HashMap map = new HashMap();
            map.put("uid", bVarNewBuilder.getUid() + "");
            map.put(Constants.TOKEN, bVarNewBuilder.getToken());
            map.put("appVersion", bVarNewBuilder.getAppVersion());
            bVarNewBuilder.setSign(com.join.mgps.Util.k2.d(map));
            MessageCheckTokenResponse.MessageCheckTokenResponseResult messageCheckTokenResponseResultB = this.f71151n.b(bVarNewBuilder.build());
            if (messageCheckTokenResponseResultB == null || messageCheckTokenResponseResultB.getData() == null) {
                return;
            }
            MessageCheckTokenResponse.MemberInfo data = messageCheckTokenResponseResultB.getData();
            this.f71159t = this.f71159t.toBuilder().setVipLevel(data.getVipLevel()).setSVIPLevel(data.getSvipLevel()).setVipExpTime(data.getVipExpTime()).setSecretKey(data.getSecretKey()).build();
            AccountUtil_.getInstance_(getContext()).saveAccountData(this.f71159t, getContext());
            UtilsMy.S(getContext());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Click
    void search() {
        SearchHintActivity_.intent(this.f71156q).start();
    }

    @Click
    void setNetwork() {
        com.join.mgps.Util.g1.b(this.f71137c, "setNetwork() called.");
        UtilsMy.N3(getContext());
    }

    @UiThread
    void showLoding() {
        try {
            com.join.mgps.Util.g1.b(this.f71137c, "showLoding() called.");
            this.f71142g.setVisibility(8);
            this.f71143h.setVisibility(8);
            LJNestScrollWebView lJNestScrollWebView = this.f71147k;
            if (lJNestScrollWebView != null) {
                lJNestScrollWebView.setVisibility(0);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void showLodingFailed() {
        try {
            com.join.mgps.Util.g1.b(this.f71137c, "showLodingFailed() called.");
            this.f71143h.setVisibility(0);
            this.f71142g.setVisibility(8);
            LJNestScrollWebView lJNestScrollWebView = this.f71147k;
            if (lJNestScrollWebView != null) {
                lJNestScrollWebView.setVisibility(8);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void showMain() {
        try {
            com.join.mgps.Util.g1.b(this.f71137c, "showMain() called.");
            this.f71143h.setVisibility(8);
            this.f71142g.setVisibility(8);
            LJNestScrollWebView lJNestScrollWebView = this.f71147k;
            if (lJNestScrollWebView != null) {
                lJNestScrollWebView.setVisibility(0);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.join.mgps.customview.LJNestScrollWebView.b
    public void showMainWebview() {
        LJNestScrollWebView lJNestScrollWebView = this.f71147k;
        if (lJNestScrollWebView == null || lJNestScrollWebView.getVisibility() == 0) {
            return;
        }
        showMain();
    }

    @UiThread
    void showTost(String message) {
        com.join.mgps.Util.a3.b(this.f71156q).d(message);
    }

    @Background
    void u0(int ordertype) {
        this.f71159t = AccountUtil_.getInstance_(this.f71156q).getAccountData();
        try {
            VipMoneyRequest vipMoneyRequest = new VipMoneyRequest();
            vipMoneyRequest.setMonth(ordertype);
            vipMoneyRequest.setToken(this.f71159t.getToken());
            vipMoneyRequest.setUid(this.f71159t.getUid());
            AccountResultMainBean<CreateVipData> accountResultMainBeanL = this.f71150m.L(vipMoneyRequest.getParams());
            w0();
            if (accountResultMainBeanL != null) {
                if (accountResultMainBeanL.getError() == 0) {
                    CreateVipData data = accountResultMainBeanL.getData();
                    data.setMonth(ordertype);
                    Z0(data);
                } else if (accountResultMainBeanL.getError() == 701) {
                    this.f71160u = true;
                    IntentUtil.getInstance().goMyAccountLoginActivity(this.f71156q, 0, 2);
                }
            }
        } catch (Exception unused) {
            w0();
        }
    }

    @UiThread
    void v0() {
        this.B.b();
        this.B.a("正在上传图片请稍候");
        this.B.setCancelable(false);
    }

    @UiThread
    void w0() {
        com.join.mgps.dialog.f1 f1Var = this.B;
        if (f1Var != null) {
            f1Var.dismiss();
        }
        com.join.mgps.dialog.f1 f1Var2 = this.Q;
        if (f1Var2 != null) {
            f1Var2.dismiss();
        }
    }

    @UiThread
    void x0(GameRoom gameRoom, String pwd) {
        this.F.f(ArenaRequestFactory.joinRoom(ArenaConstants.REGISTER_TYPE_ARENAMAIN, gameRoom.getRoomId(), pwd, gameRoom.getElite()));
    }

    @UiThread
    void y0(String roomNum) {
        this.F.f(ArenaRequestFactory.searchRoomById(ArenaConstants.REGISTER_TYPE_ARENAMAIN, Integer.parseInt(roomNum)));
    }

    @Click
    void z0() {
        IntentUtil.getInstance().goMyGameManagerActivity(getActivity());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(PapayResult papayResult) {
        if (papayResult != null) {
            int status = papayResult.getStatus();
            if (status == 1) {
                this.f71147k.v("javascript:papaPayResult(5000)");
                return;
            }
            if (status == 2) {
                this.f71147k.v("javascript:papaPayResult(5001)");
            } else if (status == 3) {
                this.f71147k.v("javascript:papaPayResult(5002)");
            } else {
                if (status != 4) {
                    return;
                }
                this.f71147k.v("javascript:papaPayResult(5003)");
            }
        }
    }
}
