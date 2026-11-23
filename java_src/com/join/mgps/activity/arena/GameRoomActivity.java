package com.join.mgps.activity.arena;

import android.content.ClipboardManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Handler;
import android.os.Message;
import android.text.Html;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.fragment.app.FragmentManager;
import app.mgsim.arena.ArenaConstants;
import app.mgsim.arena.ArenaLobbyServer;
import app.mgsim.arena.ArenaRequestFactory;
import app.mgsim.arena.ArenaResponse;
import app.mgsim.arena.RoomSeatState;
import app.mgsim.arena.SocketError;
import app.mgsim.arena.SocketListener;
import app.mgsim.arena.UserType;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.ShareSDK;
import cn.sharesdk.tencent.qq.QQ;
import com.bykv.vk.component.ttvideo.player.C;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.haima.hmcp.Constants;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.a3;
import com.join.mgps.Util.e0;
import com.join.mgps.Util.g0;
import com.join.mgps.Util.g1;
import com.join.mgps.Util.h0;
import com.join.mgps.Util.r2;
import com.join.mgps.Util.t2;
import com.join.mgps.activity.FriendActivity;
import com.join.mgps.activity.ShareWebActivity_;
import com.join.mgps.customview.PlayerInfoContainerView;
import com.join.mgps.dialog.f1;
import com.join.mgps.dto.ArchiveBean;
import com.join.mgps.dto.ArenaGameInfo;
import com.join.mgps.dto.BattleChallengeConfig;
import com.join.mgps.dto.FriendBean;
import com.join.mgps.dto.NetBattleStartGameDto;
import com.join.mgps.dto.ResultArenaBean;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.socket.fight.arena.ArenaService_;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa91.arc.bean.ButtonBean;
import com.papa91.battle.protocol.BattleArea;
import com.papa91.battle.protocol.BattleServerAddr;
import com.papa91.battle.protocol.GameRoom;
import com.papa91.battle.protocol.KickInfo;
import com.papa91.battle.protocol.RoomPosition;
import com.papa91.battle.protocol.RoomState;
import java.util.HashMap;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Bean;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_game_room)
public class GameRoomActivity extends FriendActivity implements com.join.mgps.socket.fight.arena.a.y {
    private static final int BTN_COLOR_ENABLE = -1;
    private static final int BTN_COLOR_UNENABLE = Color.parseColor("#47817e");
    private static final int DELAY_COUNT_DOWNTIME = 1000;
    private static final int INTERVAL_BTN_CLICK = 1000;
    private static final int MSG_COUNT_DOWNER = 100;
    private static final int MSG_DELAY_FINISH_ACTIVITY = 102;
    private static final int REFRESH_GAMETIME_DELAY = 1000;
    private static final int TOTAL_COUNT_DOWN_TIME = 9;

    @Bean
    com.join.mgps.Util.b accountUtil;
    private String archivePath;

    @Extra
    BattleChallengeConfig battleChallengeConfig;
    private String battleServerIp;
    private Drawable btnEnableDrawable;

    @ViewById
    View btnEntranceGame;

    @ViewById
    ImageView btnEntranceGameI;

    @ViewById
    TextView btnEntranceGameM;
    private Drawable btnUnEnableDrawable;
    ClipboardManager cmb;
    Context context;

    @Extra
    int copper;
    private FragmentManager fragmentManager;

    @Extra
    String from;

    @Extra
    String gameName;

    @Extra
    boolean isCreateRoom;

    @Extra
    boolean isFastJoinRoom;
    private boolean isShowSpectatorReason;

    @ViewById
    RadioButton ivPlayModeSwitcher;

    @ViewById
    View ivPlayModeSwitcherlayout;

    @ViewById
    ImageView iv_arrow_net_archive;

    @ViewById
    SimpleDraweeView iv_audience;

    @ViewById
    ImageView iv_challenge_gold_arrow;

    @ViewById
    ImageView iv_elite;

    @ViewById
    ImageView iv_switch_outdevice_in;

    @Extra
    String joinSpectatorReason;

    @ViewById
    View linesee;

    @ViewById
    LinearLayout llCopper;

    @ViewById
    LinearLayout llPlayMode;

    @ViewById
    LinearLayout ll_set_challenge_gold;
    private com.join.mgps.socket.fight.arena.a mArenaDialogBuilder;
    private BTN_STATE mBtnState;
    private UserType mCurrentUserType;

    @Extra
    volatile GameRoom mGameRoom;
    private int mGameStartTime;
    private com.join.mgps.customview.input.a mInputPwdDialog;
    private int mKickPosition;
    com.join.mgps.rpc.l mNetClient;
    private PlayerInfoContainerView mPlayerInfoContainerView;
    private int mPointer;
    private ArchiveBean mSelectedArchiveBean;
    private com.join.mgps.socket.fight.arena.b mServiceDelegate;
    private f1 mShowLoadingDialog;
    private String mStrPwd;

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    private int f56482p1;

    /* JADX INFO: renamed from: p2, reason: collision with root package name */
    private int f56483p2;

    /* JADX INFO: renamed from: p3, reason: collision with root package name */
    private int f56484p3;

    /* JADX INFO: renamed from: p4, reason: collision with root package name */
    private int f56485p4;

    @Extra
    String password;

    @ViewById
    RadioGroup radioGroup;

    @ViewById
    View rlRoomType;

    @ViewById
    LinearLayout rl_audience_1;

    @ViewById
    RelativeLayout rl_audience_2;

    @ViewById
    RelativeLayout rl_net_archive;

    @Extra
    int roomLive;
    com.join.mgps.rpc.l rpcAccount1Client;
    com.join.mgps.rpc.l rpcAccountClient;

    @ViewById
    TextView showTitleMessage;

    @ViewById
    TextView tvRoomType;

    @ViewById
    TextView tv_archive_name;

    @ViewById
    TextView tv_audience;

    @ViewById
    TextView tv_audience_name;

    @ViewById
    TextView tv_copper_plate_count;

    @ViewById
    TextView tv_game_name;

    @ViewById
    TextView tv_game_time_state;

    @ViewById
    TextView tv_gold_info;

    @ViewById
    TextView tv_info_audience;

    @ViewById
    TextView tv_invite_fight;

    @ViewById
    TextView tv_roomNum;

    @ViewById
    TextView txtCopper;

    @ViewById
    TextView txtHint;

    @Extra
    int isAllowPcJoin = -1;

    @Extra
    int position = -1;
    private boolean isLetOnLook = true;
    private boolean isLetOutdeviceIn = true;
    private boolean isLetPcIn = false;
    private boolean isKicked = false;
    private final com.join.mgps.socket.fight.arena.b.InterfaceC0749b mCallback = new p();
    private final SocketListener.NotifyObserver mObserver = new r();
    private Handler mHandler = new Handler();
    private Runnable mRefreshGameTimeRunnable = new t();
    private boolean isCountDowner = false;
    private final Handler mDelayFinishActivityHandler = new u();
    private Handler mCountDownerHandler = new v();
    private final Object mLocker = new Object();
    private boolean inspectorDialogLive = false;
    boolean DEBUG_ARCHIVE = false;
    private final PlayerInfoContainerView.a mPlayerInfoCallback = new b();
    private boolean showSrvPlayMode = false;
    com.join.mgps.dialog.n arenaRoomTypeDialog = null;
    long mLastStartGameTime = 0;
    private CountDownTimer mStartGameCountDowner = new m(10000, 1000);
    private int porder = -1;
    private ArenaGameInfo gameInfo = null;
    boolean showPermiss = false;

    enum BTN_STATE {
        BTN_GOTO_GAME_NOW,
        BTN_STATE_START_GAME,
        BTN_STATE_WAITING_GAME,
        BTN_STATE_READY
    }

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (GameRoomActivity.this.inspectorDialogLive) {
                GameRoomActivity.this.mArenaDialogBuilder.w();
            }
        }
    }

    class b implements PlayerInfoContainerView.a {
        b() {
        }

        @Override // com.join.mgps.customview.PlayerInfoContainerView.a
        public boolean a() {
            return GameRoomActivity.this.mCurrentUserType == UserType.SPECTATOR;
        }

        @Override // com.join.mgps.customview.PlayerInfoContainerView.a
        public void b(RoomPosition roomPosition, final boolean close, final int position) {
            RoomState state = GameRoomActivity.this.mGameRoom.getState();
            RoomState roomState = RoomState.START;
            if (state == roomState) {
                GameRoomActivity.this.mArenaDialogBuilder.D(com.join.mgps.socket.fight.arena.a.f73077j, 257, 0, "当前房间已开始，请先进入游戏后再坐下", "确定");
                return;
            }
            if (GameRoomActivity.this.mCurrentUserType != UserType.OWNER || GameRoomActivity.this.mGameRoom.getState() == roomState) {
                return;
            }
            com.join.mgps.socket.fight.arena.a aVar = GameRoomActivity.this.mArenaDialogBuilder;
            Object[] objArr = new Object[3];
            objArr[0] = "位置：" + position + "P";
            objArr[1] = close ? RoomSeatState.CLOSE : RoomSeatState.OPEN;
            objArr[2] = Integer.valueOf(position);
            aVar.D(com.join.mgps.socket.fight.arena.a.f73084q, objArr);
        }

        @Override // com.join.mgps.customview.PlayerInfoContainerView.a
        public void c(RoomPosition roomPosition, final int position) {
            if (GameRoomActivity.this.mGameRoom.getState() == RoomState.START || roomPosition.getUid() == Integer.parseInt(GameRoomActivity.this.accountUtil.getUid())) {
                return;
            }
            if (GameRoomActivity.this.mCurrentUserType == UserType.OWNER) {
                GameRoomActivity.this.mArenaDialogBuilder.D(com.join.mgps.socket.fight.arena.a.f73084q, "位置：" + position + "P", RoomSeatState.REMOVE_AND_REPORT, Integer.valueOf(position), roomPosition);
                return;
            }
            GameRoomActivity.this.mArenaDialogBuilder.D(com.join.mgps.socket.fight.arena.a.f73084q, "位置：" + position + "P", RoomSeatState.REPORT, Integer.valueOf(position), roomPosition);
        }

        @Override // com.join.mgps.customview.PlayerInfoContainerView.a
        public void d(int position) {
            if (GameRoomActivity.this.mGameRoom.getState() == RoomState.START) {
                GameRoomActivity.this.mArenaDialogBuilder.D(com.join.mgps.socket.fight.arena.a.f73077j, 257, 0, "当前房间已开始，请先进入游戏后再坐下", "确定");
                return;
            }
            GameRoomActivity.this.mArenaDialogBuilder.D(com.join.mgps.socket.fight.arena.a.f73084q, "位置：" + position + "P", RoomSeatState.SEAT, Integer.valueOf(position));
        }

        @Override // com.join.mgps.customview.PlayerInfoContainerView.a
        public void e() {
            if (!GameRoomActivity.this.mGameRoom.getHasJoinPassword()) {
                GameRoomActivity.this.mServiceDelegate.f(ArenaRequestFactory.setRoomPassword(ArenaConstants.REGISTER_TYPE_GAMEROOM, GameRoomActivity.this.mGameRoom.getRoomId(), ((int) (((Math.random() * 9.0d) + 1.0d) * 1000.0d)) + ""));
            }
            if (GameRoomActivity.this.mCurrentUserType == UserType.OWNER) {
                Object[] objArr = {"", ""};
                try {
                    objArr = new String[]{GameRoomActivity.this.mGameRoom.getGameId() + "", GameRoomActivity.this.mGameRoom.getFightId() + ""};
                } catch (Exception unused) {
                }
                GameRoomActivity.this.mArenaDialogBuilder.D(com.join.mgps.socket.fight.arena.a.f73086s, objArr);
            }
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            GameRoomActivity gameRoomActivity = GameRoomActivity.this;
            if (gameRoomActivity.showPermiss) {
                return;
            }
            if (!gameRoomActivity.mGameRoom.getHasJoinPassword()) {
                GameRoomActivity.this.mServiceDelegate.f(ArenaRequestFactory.setRoomPassword(ArenaConstants.REGISTER_TYPE_GAMEROOM, GameRoomActivity.this.mGameRoom.getRoomId(), ((int) (((Math.random() * 9.0d) + 1.0d) * 1000.0d)) + ""));
            }
            if (GameRoomActivity.this.mCurrentUserType == UserType.OWNER) {
                Object[] objArr = {"", ""};
                try {
                    objArr = new String[]{GameRoomActivity.this.mGameRoom.getGameId() + "", GameRoomActivity.this.mGameRoom.getFightId() + ""};
                } catch (Exception unused) {
                }
                GameRoomActivity.this.mArenaDialogBuilder.D(com.join.mgps.socket.fight.arena.a.f73086s, objArr);
            }
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        boolean a() {
            return GameRoomActivity.this.mGameRoom != null && (GameRoomActivity.this.mGameRoom.getP3().getUid() > 0 || GameRoomActivity.this.mGameRoom.getP4().getUid() > 0);
        }

        public int b() {
            int i10 = (GameRoomActivity.this.mGameRoom.getP1().getClosed() || GameRoomActivity.this.mGameRoom.getP1().getUid() <= 0) ? 0 : 1;
            if (!GameRoomActivity.this.mGameRoom.getP2().getClosed() && GameRoomActivity.this.mGameRoom.getP2().getUid() > 0) {
                i10++;
            }
            if (!GameRoomActivity.this.mGameRoom.getP3().getClosed() && GameRoomActivity.this.mGameRoom.getP3().getUid() > 0) {
                i10++;
            }
            return (GameRoomActivity.this.mGameRoom.getP4().getClosed() || GameRoomActivity.this.mGameRoom.getP4().getUid() <= 0) ? i10 : i10 + 1;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (GameRoomActivity.this.mCurrentUserType != UserType.OWNER) {
                return;
            }
            if (GameRoomActivity.this.mGameRoom.getState() == RoomState.START && GameRoomActivity.this.isCountDowner) {
                GameRoomActivity.this.showToast("房间已经进入倒计时状态，不能再设置！");
                return;
            }
            if (com.join.mgps.socket.fight.arena.c.a(GameRoomActivity.this.mGameRoom, GameRoomActivity.this.accountUtil)) {
                GameRoomActivity.this.showToast("已有玩家进入，无法再设置!");
            } else if (b() > 2 || a()) {
                GameRoomActivity.this.showToast("仅限2人对战时开启");
            } else {
                GameRoomActivity.this.showSvrPlayMode();
            }
        }
    }

    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (GameRoomActivity.this.mCurrentUserType != UserType.OWNER) {
                return;
            }
            if (!GameRoomActivity.this.mGameRoom.getElite()) {
                GameRoomActivity.this.showToast("普通场不可以设置挑战金，如需要设置，请进入精英场!");
                return;
            }
            if (com.join.mgps.socket.fight.arena.c.a(GameRoomActivity.this.mGameRoom, GameRoomActivity.this.accountUtil)) {
                GameRoomActivity.this.showToast("已有玩家进入，无法再设置挑战金!");
                return;
            }
            if (GameRoomActivity.this.mGameRoom.getState() == RoomState.START) {
                GameRoomActivity.this.showToast("游戏已经开始，无法设置挑战金!");
                return;
            }
            if (GameRoomActivity.this.isCountDowner) {
                GameRoomActivity.this.showToast("房间已经进入倒计时状态，不能再设置挑战金！");
                return;
            }
            GameRoomActivity gameRoomActivity = GameRoomActivity.this;
            if (gameRoomActivity.battleChallengeConfig != null) {
                gameRoomActivity.showSetGoldDialog();
            } else {
                gameRoomActivity.showLoadingDialog("正在获取配置信息...");
                GameRoomActivity.this.getChallengeConfig();
            }
        }
    }

    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (GameRoomActivity.this.mCurrentUserType != UserType.OWNER) {
                return;
            }
            if (GameRoomActivity.this.mGameRoom.getState() == RoomState.START) {
                GameRoomActivity.this.showToast("游戏已经开始，无法设置存档!");
                return;
            }
            if (GameRoomActivity.this.isCountDowner) {
                GameRoomActivity.this.showToast("房间已经进入倒计时状态，不能再设置网络存档！");
                return;
            }
            GameRoomActivity.this.mArenaDialogBuilder.D(com.join.mgps.socket.fight.arena.a.f73081n, Long.valueOf(GameRoomActivity.this.mGameRoom.getGameId()), GameRoomActivity.this.mSelectedArchiveBean);
            if (GameRoomActivity.this.mArenaDialogBuilder.z()) {
                GameRoomActivity.this.mArenaDialogBuilder.C();
            } else {
                GameRoomActivity.this.showToast("当前游戏暂无网络存档!");
            }
        }
    }

    class g implements View.OnClickListener {

        class a implements x {
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
                if (type == 3) {
                    GameRoomActivity.this.onRealNameSuccess(duration);
                }
            }
        }

        class b implements x {
            b() {
            }

            @Override // com.join.mgps.activity.arena.GameRoomActivity.x
            public void onFail(int type) {
            }

            @Override // com.join.mgps.activity.arena.GameRoomActivity.x
            public void onSuccess(int type, int duration, ButtonBean buttonBean) {
            }

            @Override // com.join.mgps.activity.arena.GameRoomActivity.x
            public void onSuccess(int type, int duration) {
                if (type == 3) {
                    GameRoomActivity.this.onRealNameSuccess(duration);
                }
            }
        }

        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (GameRoomActivity.this.mGameRoom.getState().equals(RoomState.START)) {
                if (GameRoomActivity.this.mLastStartGameTime > 0 && System.currentTimeMillis() - GameRoomActivity.this.mLastStartGameTime < 1000) {
                    g1.b("GameRoomActivity", "start game so fast ,waiting a moment!");
                    return;
                }
                GameRoomActivity.this.mLastStartGameTime = System.currentTimeMillis();
                GameRoomActivity.this.startLobbyGame();
                return;
            }
            if (GameRoomActivity.this.mCurrentUserType != UserType.OWNER) {
                if (GameRoomActivity.this.mCurrentUserType == UserType.TENANT) {
                    GameRoomActivity gameRoomActivity = GameRoomActivity.this;
                    UtilsMy.A0(gameRoomActivity.context, 3, ((FriendActivity) gameRoomActivity).gameId, "FIGHT_LOBBY", new b());
                    return;
                } else {
                    if (GameRoomActivity.this.mCurrentUserType == UserType.SPECTATOR) {
                        GameRoomActivity.this.showToast("等待游戏开始!");
                        return;
                    }
                    return;
                }
            }
            if (GameRoomActivity.this.mBtnState != BTN_STATE.BTN_GOTO_GAME_NOW && GameRoomActivity.this.mBtnState != BTN_STATE.BTN_STATE_START_GAME) {
                if (GameRoomActivity.this.mBtnState == BTN_STATE.BTN_STATE_WAITING_GAME) {
                    GameRoomActivity.this.showToast("等待其他玩家准备!");
                }
            } else if (GameRoomActivity.this.mLastStartGameTime > 0 && System.currentTimeMillis() - GameRoomActivity.this.mLastStartGameTime < 1000) {
                g1.b("GameRoomActivity", "start game so fast ,waiting a moment!");
            } else {
                GameRoomActivity gameRoomActivity2 = GameRoomActivity.this;
                UtilsMy.A0(gameRoomActivity2.context, 3, ((FriendActivity) gameRoomActivity2).gameId, "FIGHT_LOBBY", new a());
            }
        }
    }

    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (GameRoomActivity.this.mCurrentUserType != UserType.OWNER) {
                return;
            }
            if (GameRoomActivity.this.mGameRoom.getState() == RoomState.START) {
                GameRoomActivity.this.showToast("游戏已经开始，无法设置外设!");
                return;
            }
            if (GameRoomActivity.this.isCountDowner) {
                GameRoomActivity.this.showToast("房间已经进入倒计时状态，不能再设置！");
            } else if (com.join.mgps.socket.fight.arena.c.a(GameRoomActivity.this.mGameRoom, GameRoomActivity.this.accountUtil)) {
                GameRoomActivity.this.showToast("已有玩家进入，无法再设置!");
            } else {
                GameRoomActivity.this.mServiceDelegate.f(ArenaRequestFactory.setRoomPeripheralJoin(ArenaConstants.REGISTER_TYPE_GAMEROOM, GameRoomActivity.this.mGameRoom.getRoomId(), GameRoomActivity.this.isLetOutdeviceIn));
            }
        }
    }

    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameRoomActivity.this.showRoomTypeDialog();
        }
    }

    class j implements com.join.mgps.dialog.n.d {
        j() {
        }

        @Override // com.join.mgps.dialog.n.d
        public void a() {
            if (GameRoomActivity.this.mCurrentUserType != UserType.OWNER) {
                return;
            }
            if (GameRoomActivity.this.mGameRoom.getState() == RoomState.START) {
                GameRoomActivity.this.showToast("游戏已经开始，无法设置存档!");
                return;
            }
            if (GameRoomActivity.this.isCountDowner) {
                GameRoomActivity.this.showToast("房间已经进入倒计时状态，不能再设置网络存档！");
                return;
            }
            GameRoomActivity.this.mArenaDialogBuilder.D(com.join.mgps.socket.fight.arena.a.f73081n, Long.valueOf(GameRoomActivity.this.mGameRoom.getGameId()), GameRoomActivity.this.mSelectedArchiveBean);
            if (GameRoomActivity.this.mArenaDialogBuilder.z()) {
                GameRoomActivity.this.mArenaDialogBuilder.C();
            } else {
                GameRoomActivity.this.showToast("当前游戏暂无网络存档!");
            }
        }

        @Override // com.join.mgps.dialog.n.d
        public void b(int roomType, boolean roomxingzhi, boolean allowSee, String roomPass) {
            UserType userType = GameRoomActivity.this.mCurrentUserType;
            UserType userType2 = UserType.OWNER;
            if (userType != userType2) {
                return;
            }
            if (roomType != (GameRoomActivity.this.mGameRoom.getAllowPCJoin() ? 2 : 1)) {
                if (GameRoomActivity.this.mGameRoom.getState() == RoomState.START) {
                    GameRoomActivity.this.showToast("游戏已经开始，无法设置PC!");
                } else if (GameRoomActivity.this.isCountDowner) {
                    GameRoomActivity.this.showToast("房间已经进入倒计时状态，不能再设置！");
                } else if (com.join.mgps.socket.fight.arena.c.a(GameRoomActivity.this.mGameRoom, GameRoomActivity.this.accountUtil)) {
                    GameRoomActivity.this.showToast("已有玩家进入，无法再设置!");
                } else {
                    GameRoomActivity.this.mServiceDelegate.f(ArenaRequestFactory.setRoomPcJoin(ArenaConstants.REGISTER_TYPE_GAMEROOM, GameRoomActivity.this.mGameRoom.getRoomId(), roomType != 2));
                }
            }
            if (GameRoomActivity.this.mCurrentUserType == userType2) {
                if (GameRoomActivity.this.mGameRoom.getState() == RoomState.START) {
                    GameRoomActivity.this.showToast("游戏已经开始，无法设置旁观!");
                } else if (GameRoomActivity.this.isCountDowner) {
                    GameRoomActivity.this.showToast("房间已经进入倒计时状态，不能再设置！");
                } else {
                    if (GameRoomActivity.this.mGameRoom.getAllowSpectatorJoin()) {
                        GameRoomActivity.this.isLetOnLook = true;
                    } else {
                        GameRoomActivity.this.isLetOnLook = false;
                    }
                    if (GameRoomActivity.this.isLetOnLook != allowSee) {
                        GameRoomActivity.this.mServiceDelegate.f(ArenaRequestFactory.setRoomSpectatorJoin(ArenaConstants.REGISTER_TYPE_GAMEROOM, GameRoomActivity.this.mGameRoom.getRoomId(), GameRoomActivity.this.isLetOnLook));
                    }
                }
            }
            if (roomxingzhi) {
                if (GameRoomActivity.this.mGameRoom.getHasJoinPassword()) {
                    GameRoomActivity.this.mServiceDelegate.f(ArenaRequestFactory.setRoomPassword(ArenaConstants.REGISTER_TYPE_GAMEROOM, GameRoomActivity.this.mGameRoom.getRoomId(), ""));
                }
            } else {
                if (GameRoomActivity.this.mGameRoom.getHasJoinPassword()) {
                    return;
                }
                GameRoomActivity.this.mServiceDelegate.f(ArenaRequestFactory.setRoomPassword(ArenaConstants.REGISTER_TYPE_GAMEROOM, GameRoomActivity.this.mGameRoom.getRoomId(), "" + roomPass));
            }
        }
    }

    class k implements x {
        k() {
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onFail(int type) {
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onSuccess(int type, int duration) {
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onSuccess(int type, int duration, ButtonBean buttonBean) {
            GameRoomActivity.this.finish();
        }
    }

    class l implements PlatformActionListener {
        l() {
        }

        @Override // cn.sharesdk.framework.PlatformActionListener
        public void onCancel(Platform platform, int i10) {
        }

        @Override // cn.sharesdk.framework.PlatformActionListener
        public void onComplete(Platform platform, int i10, HashMap<String, Object> hashMap) {
        }

        @Override // cn.sharesdk.framework.PlatformActionListener
        public void onError(Platform platform, int i10, Throwable throwable) {
            if (GameRoomActivity.this.isActivityFinished()) {
                return;
            }
            GameRoomActivity.this.showToast("请先安装QQ");
        }
    }

    class m extends CountDownTimer {
        m(long millisInFuture, long countDownInterval) {
            super(millisInFuture, countDownInterval);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            g1.b("GameRoomActivity", "mStartGameCountDowner onFinish---");
            GameRoomActivity.this.showToast("启动游戏超时！");
            GameRoomActivity.this.onLeaveRoom();
            GameRoomActivity.this.finishActivity();
        }

        @Override // android.os.CountDownTimer
        public void onTick(long millisUntilFinished) {
            g1.b("GameRoomActivity", "mStartGameCountDowner millisUntilFinished:" + millisUntilFinished);
        }
    }

    class n implements x {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ FriendBean f56501a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GameRoom f56502b;

        n(final FriendBean val$bean, final GameRoom val$gameRoom) {
            this.f56501a = val$bean;
            this.f56502b = val$gameRoom;
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onFail(int type) {
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onSuccess(int type, int duration, ButtonBean buttonBean) {
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onSuccess(int type, int duration) {
            com.wufan.friend.chat.c.u().n(this.f56501a.getUid(), this.f56502b.getRoomId(), this.f56502b.getPassword(), this.f56502b.getElite(), this.f56502b.getGameId());
            GameRoomActivity.this.showToast("已发送对战邀请！");
            com.wufan.friend.chat.c.u().e(this.f56501a);
        }
    }

    class o implements g0.n0 {
        o() {
        }

        @Override // com.join.mgps.Util.g0.n0
        public boolean a(DialogInterface dialog, int keyCode, KeyEvent event) {
            return false;
        }

        @Override // com.join.mgps.Util.g0.n0
        public void onCancel() {
            GameRoomActivity.this.onDialogDismiss(com.join.mgps.socket.fight.arena.a.f73082o);
        }

        @Override // com.join.mgps.Util.g0.n0
        public void onDismiss() {
            GameRoomActivity.this.onDialogDismiss(com.join.mgps.socket.fight.arena.a.f73082o);
        }
    }

    class p extends com.join.mgps.socket.fight.arena.b.c {
        p() {
        }

        @Override // com.join.mgps.socket.fight.arena.b.c, com.join.mgps.socket.fight.arena.b.InterfaceC0749b
        public void c() {
            super.c();
            if (!GameRoomActivity.this.mServiceDelegate.d().s()) {
                GameRoomActivity.this.showToast("网络异常！");
                GameRoomActivity.this.finishActivity();
                return;
            }
            GameRoomActivity.this.mServiceDelegate.d().z(GameRoomActivity.this.mObserver);
            GameRoomActivity.this.updateGameRoomAsync();
            GameRoomActivity gameRoomActivity = GameRoomActivity.this;
            if (gameRoomActivity.isCreateRoom && gameRoomActivity.mGameRoom.getElite()) {
                GameRoomActivity gameRoomActivity2 = GameRoomActivity.this;
                if (gameRoomActivity2.battleChallengeConfig != null) {
                    gameRoomActivity2.showSetGoldDialog();
                } else {
                    gameRoomActivity2.showToast("获取配置信息失败！");
                    GameRoomActivity.this.finishActivity();
                }
            } else {
                String str = GameRoomActivity.this.from;
                if (str != null && str.equals("game_main")) {
                    GameRoomActivity.this.tv_invite_fight.performClick();
                }
            }
            try {
                GameRoomActivity gameRoomActivity3 = GameRoomActivity.this;
                int i10 = gameRoomActivity3.isAllowPcJoin;
                if (i10 == 0) {
                    gameRoomActivity3.mServiceDelegate.f(ArenaRequestFactory.setRoomPcJoin(ArenaConstants.REGISTER_TYPE_GAMEROOM, GameRoomActivity.this.mGameRoom.getRoomId(), true));
                } else if (i10 == 1) {
                    gameRoomActivity3.mServiceDelegate.f(ArenaRequestFactory.setRoomPcJoin(ArenaConstants.REGISTER_TYPE_GAMEROOM, GameRoomActivity.this.mGameRoom.getRoomId(), false));
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            if (!t2.i(GameRoomActivity.this.password) || GameRoomActivity.this.mGameRoom.getHasJoinPassword()) {
                return;
            }
            GameRoomActivity.this.mServiceDelegate.f(ArenaRequestFactory.setRoomPassword(ArenaConstants.REGISTER_TYPE_GAMEROOM, GameRoomActivity.this.mGameRoom.getRoomId(), "" + GameRoomActivity.this.password));
            GameRoomActivity.this.password = "";
        }
    }

    class q implements DialogInterface.OnDismissListener {
        q() {
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialog) {
            GameRoomActivity.this.finishActivity();
        }
    }

    class r implements SocketListener.NotifyObserver {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        volatile boolean f56507a = false;

        r() {
        }

        @Override // app.mgsim.arena.SocketListener.NotifyObserver
        public void onError(SocketError error) {
            if (error.errorType == 2) {
                GameRoomActivity.this.showToast(error.errorInfo);
            } else {
                GameRoomActivity.this.showToast("网络异常!");
            }
            GameRoomActivity.this.finishActivity();
        }

        @Override // app.mgsim.arena.SocketListener.NotifyObserver
        public void onServerResponse(ArenaResponse response) {
            if (GameRoomActivity.this.isActivityFinished()) {
                return;
            }
            if (response.responseCode == 0) {
                GameRoomActivity.this.handleError(response);
                return;
            }
            if (response.responseType.equals(ArenaConstants.ArenaCommand.PUSH_ROOM_READY_TIMEOUT_KICKOUT)) {
                if (GameRoomActivity.this.mGameRoom.getRoomId() == ((GameRoom) response.data).getRoomId()) {
                    GameRoomActivity.this.showReadyTimeOutDialog();
                    return;
                }
                return;
            }
            if (response.responseType.equals(ArenaConstants.ArenaCommand.PUSH_ROOM_START_TIMEOUT_KICKOUT)) {
                if (GameRoomActivity.this.mGameRoom.getRoomId() == ((GameRoom) response.data).getRoomId()) {
                    GameRoomActivity.this.showStartGameTimeOut();
                    return;
                }
                return;
            }
            if (response.responseType.equals(ArenaConstants.ArenaCommand.CMD_SET_ROOM_PASSWORD_ATTR)) {
                GameRoomActivity.this.updateRoom((GameRoom) response.data);
                return;
            }
            if (response.responseType.equals(ArenaConstants.ArenaCommand.CMD_SET_ROOM_CHALLENGE_COINS_ATTR)) {
                GameRoomActivity.this.showToast("挑战金设置成功");
                GameRoomActivity.this.updateRoom((GameRoom) response.data);
                return;
            }
            if (response.responseType.equals(ArenaConstants.ArenaCommand.CMD_SET_ROOM_SPECTATOR_JOIN_ATTR)) {
                GameRoomActivity.this.showToast("旁观设置成功");
                GameRoomActivity.this.updateRoom((GameRoom) response.data);
                return;
            }
            if (response.responseType.equals(ArenaConstants.ArenaCommand.CMD_SET_ROOM_PERIPHERAL_JOIN_ATTR)) {
                GameRoomActivity.this.showToast("设置成功");
                GameRoomActivity.this.updateRoom((GameRoom) response.data);
                return;
            }
            if (response.responseType.equals(ArenaConstants.ArenaCommand.CMD_SET_ROOM_PC_JOIN_ALTR)) {
                GameRoomActivity.this.updateRoom((GameRoom) response.data);
                return;
            }
            if (response.responseType.equals(ArenaConstants.ArenaCommand.CMD_SET_ROOM_SERVER_PLAY_MODE)) {
                GameRoomActivity.this.showToast("流畅模式设置成功");
                GameRoomActivity.this.updateRoom((GameRoom) response.data);
                return;
            }
            if (response.responseType.equals(ArenaConstants.ArenaCommand.CMD_GET_KICK_OUT_ROOM_POSITION_INFO)) {
                GameRoomActivity.this.handleKickPlayerInfo((KickInfo) response.data);
                return;
            }
            if (response.responseType.equals(ArenaConstants.ArenaCommand.CMD_SET_ROOM_CLOSE_P1_POSITION) || response.responseType.equals(ArenaConstants.ArenaCommand.CMD_SET_ROOM_CLOSE_P2_POSITION) || response.responseType.equals(ArenaConstants.ArenaCommand.CMD_SET_ROOM_CLOSE_P3_POSITION) || response.responseType.equals(ArenaConstants.ArenaCommand.CMD_SET_ROOM_CLOSE_P4_POSITION) || response.responseType.equals(ArenaConstants.ArenaCommand.CMD_KICK_OUT_ROOM_POSITION) || response.responseType.equals(ArenaConstants.ArenaCommand.PUSH_UPDATE_ROOM) || response.responseType.equals(ArenaConstants.ArenaCommand.CMD_PLAYER_READY_GAME) || response.responseType.equals(ArenaConstants.ArenaCommand.CMD_SPECTATOR_SIT)) {
                GameRoomActivity.this.updateRoom((GameRoom) response.data);
                return;
            }
            if (response.responseType.equals(ArenaConstants.ArenaCommand.PUSH_DISSOLVE_ROOM)) {
                GameRoomActivity.this.showToast("房间已经被解散");
                GameRoomActivity.this.cancelCountDowner();
                GameRoomActivity.this.finishActivity();
                return;
            }
            if (response.responseType.equals(ArenaConstants.ArenaCommand.PUSH_KICK_ROOM_BROADCAST)) {
                GameRoomActivity.this.cancelCountDowner();
                GameRoomActivity.this.showKickInfoDialog("你已被踢出房间");
                return;
            }
            if (response.responseType.equals(ArenaConstants.ArenaCommand.PUSH_START_GAME_ROOM_BROADCAST) || response.responseType.equals(ArenaConstants.ArenaCommand.CMD_LOBBY_START_GAME)) {
                GameRoomActivity.this.cancelCountDowner();
                if (this.f56507a) {
                    g1.b("GameRoomActivity", "the game have been started ,do not start again!");
                    return;
                }
                this.f56507a = true;
                GameRoom gameRoom = (GameRoom) response.data;
                if (GameRoomActivity.this.mCurrentUserType == UserType.OWNER) {
                    GameRoomActivity.this.position = 0;
                } else {
                    GameRoomActivity gameRoomActivity = GameRoomActivity.this;
                    if (gameRoomActivity.position == -1) {
                        gameRoomActivity.position = 1;
                    }
                }
                com.papa.sim.statistic.t.l(GameRoomActivity.this).R1(Event.PlayLobbyroom, new Ext().setGameId(GameRoomActivity.this.mGameRoom.getGameId() + "").setUid(AccountUtil_.getInstance_(GameRoomActivity.this).getAccountData().getUid()).setPosition(GameRoomActivity.this.position + ""));
                GameRoomActivity.this.startGame(gameRoom.getBattleServerAddr());
                GameRoomActivity.this.hideLoadingDialog();
            }
        }
    }

    class s implements DialogInterface.OnDismissListener {
        s() {
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialog) {
            GameRoomActivity.this.finishActivity();
        }
    }

    class t implements Runnable {
        t() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomActivity.access$508(GameRoomActivity.this);
            GameRoomActivity gameRoomActivity = GameRoomActivity.this;
            gameRoomActivity.tv_game_time_state.setText(e0.f(gameRoomActivity.mGameStartTime));
            GameRoomActivity.this.mHandler.postDelayed(GameRoomActivity.this.mRefreshGameTimeRunnable, 1000L);
        }
    }

    class u extends Handler {
        u() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            GameRoomActivity.this.leaveRoom();
        }
    }

    class v extends Handler {
        v() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            if (GameRoomActivity.this.isActivityFinished()) {
                return;
            }
            GameRoomActivity.access$910(GameRoomActivity.this);
            if (GameRoomActivity.this.mPointer <= 0) {
                GameRoomActivity.this.mArenaDialogBuilder.D(com.join.mgps.socket.fight.arena.a.f73080m, "对不起，您长时间未开始游戏，您已被踢出房间!");
                GameRoomActivity.this.mDelayFinishActivityHandler.sendEmptyMessageDelayed(102, 1000L);
                return;
            }
            if (GameRoomActivity.this.mCurrentUserType != UserType.OWNER) {
                GameRoomActivity.this.btnEntranceGameM.setText("(" + GameRoomActivity.this.mPointer + "s)");
                GameRoomActivity.this.btnEntranceGameM.setVisibility(0);
                GameRoomActivity.this.btnEntranceGameI.setImageResource(R.drawable.newarena_reday);
                GameRoomActivity.this.mCountDownerHandler.sendEmptyMessageDelayed(100, 1000L);
                return;
            }
            GameRoomActivity.this.showTitleMessage.setText("对方已准备，请开始游戏(" + GameRoomActivity.this.mPointer + ")");
            GameRoomActivity.this.btnEntranceGameM.setText("(" + GameRoomActivity.this.mPointer + "s)");
            GameRoomActivity.this.btnEntranceGameM.setVisibility(0);
            GameRoomActivity.this.btnEntranceGameI.setImageResource(R.drawable.newarena_start);
            GameRoomActivity.this.mCountDownerHandler.sendEmptyMessageDelayed(100, 1000L);
        }
    }

    class w implements x {
        w() {
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onFail(int type) {
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onSuccess(int type, int duration, ButtonBean buttonBean) {
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onSuccess(int type, int duration) {
            if (type == 2) {
                GameRoomActivity.this.onRealNameSuccess(duration);
            }
        }
    }

    public interface x {
        void onFail(int type);

        void onSuccess(int type, int duration);

        void onSuccess(int type, int duration, ButtonBean buttonBean);
    }

    static /* synthetic */ int access$508(GameRoomActivity gameRoomActivity) {
        int i10 = gameRoomActivity.mGameStartTime;
        gameRoomActivity.mGameStartTime = i10 + 1;
        return i10;
    }

    static /* synthetic */ int access$910(GameRoomActivity gameRoomActivity) {
        int i10 = gameRoomActivity.mPointer;
        gameRoomActivity.mPointer = i10 - 1;
        return i10;
    }

    private void cancelStartGameCountDown() {
        CountDownTimer countDownTimer = this.mStartGameCountDowner;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
    }

    private void clearClipboard() {
        ((ClipboardManager) getSystemService(Constants.WS_MESSAGE_TYPE_CLIPBOARD)).setText("");
    }

    private void copy(String content) {
        ClipboardManager clipboardManager = (ClipboardManager) getSystemService(Constants.WS_MESSAGE_TYPE_CLIPBOARD);
        this.cmb = clipboardManager;
        clipboardManager.setText(content.trim());
    }

    private String createShareContent() {
        DownloadTask downloadTaskG = q5.f.M().G("" + this.mGameRoom.getGameId());
        if (TextUtils.isEmpty(this.mStrPwd)) {
            return "复制这条信息，打开" + emoji(128073) + com.join.android.app.mgsim.wufun.b.f35536i + emoji(128072) + "即可在游戏【" + downloadTaskG.getShowName() + "】中【大厅对战】好友" + emoji(9786) + this.accountUtil.getAccountData().getNickname() + emoji(9786) + "￥" + this.mGameRoom.getGameId() + "￥" + emoji(128273) + "$房间" + this.mGameRoom.getRoomId() + "$" + emoji(128273) + "#对战" + this.mGameRoom.getFightId() + "#" + emoji(128273);
        }
        return "复制这条信息，打开" + emoji(128073) + com.join.android.app.mgsim.wufun.b.f35536i + emoji(128072) + "即可在游戏【" + downloadTaskG.getShowName() + "】中【大厅对战】好友" + emoji(9786) + this.accountUtil.getAccountData().getNickname() + emoji(9786) + "￥" + this.mGameRoom.getGameId() + "￥" + emoji(128273) + "$房间" + this.mGameRoom.getRoomId() + "$" + emoji(128273) + "#对战" + this.mGameRoom.getFightId() + "#&密码:" + this.mStrPwd + x.a.f97576d;
    }

    private void doStartApplicationWithPackageName(String packagename) throws Exception {
        PackageInfo packageInfo = getPackageManager().getPackageInfo(packagename, 0);
        Intent intent = new Intent("android.intent.action.MAIN", (Uri) null);
        intent.addCategory("android.intent.category.LAUNCHER");
        intent.setPackage(packageInfo.packageName);
        ResolveInfo next = getPackageManager().queryIntentActivities(intent, 0).iterator().next();
        if (next != null) {
            ActivityInfo activityInfo = next.activityInfo;
            String str = activityInfo.packageName;
            String str2 = activityInfo.name;
            Intent intent2 = new Intent("android.intent.action.MAIN");
            intent2.addFlags(C.ENCODING_PCM_MU_LAW);
            intent2.addCategory("android.intent.category.LAUNCHER");
            intent2.setComponent(new ComponentName(str, str2));
            startActivity(intent2);
        }
    }

    private String emoji(int hexEmoji) {
        return String.valueOf(Character.toChars(hexEmoji));
    }

    private void initOnClickListener() {
        this.tv_invite_fight.setOnClickListener(new c());
        this.ivPlayModeSwitcherlayout.setOnClickListener(new d());
        this.ll_set_challenge_gold.setOnClickListener(new e());
        RelativeLayout relativeLayout = this.rl_net_archive;
        if (relativeLayout != null) {
            relativeLayout.setOnClickListener(new f());
        }
        this.btnEntranceGame.setOnClickListener(new g());
        this.iv_switch_outdevice_in.setOnClickListener(new h());
        this.rlRoomType.setOnClickListener(new i());
    }

    private void initStartGameParams() {
        RoomPosition p10 = this.mGameRoom.getP1();
        if (p10.getUid() == 0) {
            this.f56482p1 = 0;
        } else {
            if (p10.getUid() == this.accountUtil.getAccountData().getUid()) {
                this.porder = 0;
            }
            this.f56482p1 = 1;
        }
        RoomPosition p11 = this.mGameRoom.getP2();
        if (p11.getUid() == 0) {
            this.f56483p2 = 0;
        } else {
            if (p11.getUid() == this.accountUtil.getAccountData().getUid()) {
                this.porder = 1;
            }
            this.f56483p2 = 1;
        }
        RoomPosition p12 = this.mGameRoom.getP3();
        if (p12.getUid() == 0) {
            this.f56484p3 = 0;
        } else {
            if (p12.getUid() == this.accountUtil.getAccountData().getUid()) {
                this.porder = 2;
            }
            this.f56484p3 = 1;
        }
        RoomPosition p13 = this.mGameRoom.getP4();
        if (p13.getUid() == 0) {
            this.f56485p4 = 0;
            return;
        }
        if (p13.getUid() == this.accountUtil.getAccountData().getUid()) {
            this.porder = 3;
        }
        this.f56485p4 = 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isActivityFinished() {
        return isFinishing() || isDestroyed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void leaveRoom() {
        Intent intent = new Intent(this, (Class<?>) ArenaService_.class);
        intent.setAction(ArenaConstants.ACTION_LEAVE_ROOM);
        intent.putExtra("gameId", this.mGameRoom.getRoomId());
        startService(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onRealNameSuccess(int duration) {
        UserType userType = this.mCurrentUserType;
        if (userType == UserType.OWNER) {
            this.mLastStartGameTime = System.currentTimeMillis();
            startLobbyGame();
            if (duration > 0) {
                sendCheckRealname();
                return;
            }
            return;
        }
        if (userType == UserType.TENANT) {
            BTN_STATE btn_state = this.mBtnState;
            if (btn_state == BTN_STATE.BTN_STATE_READY) {
                playerReadyGame();
            } else if (btn_state == BTN_STATE.BTN_STATE_WAITING_GAME) {
                showToast("等待游戏开始!");
            }
        }
    }

    private void playerReadyGame() {
        this.mServiceDelegate.f(ArenaRequestFactory.playerReadyGame(ArenaConstants.REGISTER_TYPE_GAMEROOM, this.mGameRoom.getRoomId()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showLoadingDialog(String title) {
        if (isActivityFinished()) {
            return;
        }
        this.mArenaDialogBuilder.w();
        f1 f1Var = this.mShowLoadingDialog;
        if (f1Var != null && f1Var.isShowing()) {
            try {
                this.mShowLoadingDialog.dismiss();
            } catch (Exception unused) {
            }
        }
        f1 f1VarZ = h0.h0(this).z(this, title, false);
        this.mShowLoadingDialog = f1VarZ;
        f1VarZ.show();
    }

    private void startCountDowner() {
        this.isCountDowner = true;
        this.mPointer = 9;
        this.mCountDownerHandler.removeMessages(100);
        this.mCountDownerHandler.sendEmptyMessageDelayed(100, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startGame(BattleServerAddr battleServerAddr) {
        cancelStartGameCountDown();
        if (!this.mGameRoom.getFastMode()) {
            statGameByBattleServerIp(battleServerAddr, battleServerAddr.getHost());
        } else if (TextUtils.isEmpty(this.battleServerIp)) {
            statGameByBattleServerIp(battleServerAddr, battleServerAddr.getHost());
        } else {
            statGameByBattleServerIp(battleServerAddr, this.battleServerIp);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startLobbyGame() {
        cancelStartGameCountDown();
        this.mStartGameCountDowner.start();
        showLoadingDialog("正在启动游戏...");
        this.mServiceDelegate.f(ArenaRequestFactory.startLobbyGame(ArenaConstants.REGISTER_TYPE_GAMEROOM, this.mGameRoom.getRoomId()));
    }

    private void updateButtonState() {
        this.txtCopper.setVisibility(0);
        this.btnEntranceGameM.setVisibility(8);
        if ((this.mGameRoom == null || !this.mGameRoom.getElite()) && !com.join.mgps.Util.b.piv(AccountUtil_.getInstance_(this).getAccountData())) {
            this.showTitleMessage.setText("等待开始，开始后将扣除你" + this.copper + "铜板");
        } else {
            this.showTitleMessage.setText("等待开始");
        }
        if (this.mGameRoom.getState().equals(RoomState.START)) {
            this.mBtnState = BTN_STATE.BTN_GOTO_GAME_NOW;
            cancelCountDowner();
            this.btnEntranceGameM.setText("(免铜板)");
            this.showTitleMessage.setText("游戏已开始，请点击观战加入游戏。");
            this.btnEntranceGameM.setVisibility(0);
            this.btnEntranceGameI.setImageResource(R.drawable.newarena_see);
            this.txtHint.setText("进入游戏并坐下,即可和其他玩家一起联机对战");
            this.txtCopper.setVisibility(8);
            return;
        }
        if (com.join.mgps.socket.fight.arena.c.n(this.mGameRoom)) {
            cancelCountDowner();
            if (this.mCurrentUserType == UserType.SPECTATOR) {
                this.mBtnState = BTN_STATE.BTN_STATE_WAITING_GAME;
                this.btnEntranceGameI.setImageResource(R.drawable.newarena_whait);
            } else {
                this.mBtnState = BTN_STATE.BTN_STATE_START_GAME;
                this.btnEntranceGameI.setImageResource(R.drawable.newarena_start);
            }
            this.txtHint.setText("开始游戏后,将扣除您");
        } else if (this.mGameRoom.getState().equals(RoomState.WAIT)) {
            UserType userType = this.mCurrentUserType;
            if (userType == UserType.OWNER) {
                cancelCountDowner();
                this.mBtnState = BTN_STATE.BTN_STATE_WAITING_GAME;
                this.showTitleMessage.setText("等待玩家准备后开始游戏");
                this.btnEntranceGameI.setImageResource(R.drawable.newarena_waitreday);
                this.txtHint.setText("开始游戏后,将扣除您");
            } else if (userType == UserType.TENANT && com.join.mgps.socket.fight.arena.c.h(this.mGameRoom, this.accountUtil.getAccountData().getUid()).getState() == RoomPosition.State.WAIT) {
                this.mBtnState = BTN_STATE.BTN_STATE_READY;
                if (this.isCountDowner) {
                    if (this.mGameRoom.getHasJoinPassword()) {
                        cancelCountDowner();
                    }
                } else if (this.mGameRoom.getHasJoinPassword()) {
                    cancelCountDowner();
                    this.showTitleMessage.setText("请准备后，等房主开始游戏");
                    this.btnEntranceGameI.setImageResource(R.drawable.newarena_reday);
                    this.txtHint.setText("开始游戏后,将扣除您");
                } else {
                    this.showTitleMessage.setText("请准备后，等房主开始游戏");
                    this.btnEntranceGameM.setText("(倒计时9s)");
                    this.btnEntranceGameM.setVisibility(0);
                    this.btnEntranceGameI.setImageResource(R.drawable.newarena_reday);
                    startCountDowner();
                }
            } else {
                cancelCountDowner();
                this.mBtnState = BTN_STATE.BTN_STATE_WAITING_GAME;
                this.btnEntranceGameI.setImageResource(R.drawable.newarena_whait);
                this.txtHint.setText("开始游戏后,将扣除您");
            }
        } else if (this.mGameRoom.getState().equals(RoomState.READY)) {
            if (this.mCurrentUserType == UserType.OWNER) {
                this.mBtnState = BTN_STATE.BTN_STATE_START_GAME;
                if (this.isCountDowner) {
                    if (this.mGameRoom.getHasJoinPassword()) {
                        cancelCountDowner();
                    }
                } else if (this.mGameRoom.getHasJoinPassword()) {
                    cancelCountDowner();
                    this.btnEntranceGameI.setImageResource(R.drawable.newarena_start);
                } else {
                    this.showTitleMessage.setText("对方已准备，请开始游戏(9s)");
                    this.btnEntranceGameM.setText("(9s)");
                    this.btnEntranceGameM.setVisibility(0);
                    this.btnEntranceGameI.setImageResource(R.drawable.newarena_start);
                    startCountDowner();
                }
            } else {
                cancelCountDowner();
                this.mBtnState = BTN_STATE.BTN_STATE_WAITING_GAME;
                this.btnEntranceGameI.setImageResource(R.drawable.newarena_whait);
            }
        }
        g1.b("GameRoomActivity", "mBtnState-->" + this.mBtnState);
    }

    private void updateGameTime() {
        this.mHandler.removeCallbacks(this.mRefreshGameTimeRunnable);
        if (this.mGameRoom.getState() != RoomState.START) {
            this.tv_game_time_state.setText("等待开始");
            return;
        }
        int playerSeconds = this.mGameRoom.getPlayerSeconds();
        this.mGameStartTime = playerSeconds;
        this.tv_game_time_state.setText(e0.f(playerSeconds));
        this.mHandler.postDelayed(this.mRefreshGameTimeRunnable, 1000L);
    }

    @AfterViews
    void afterViews() {
        setSystemUiHide(true);
        this.rpcAccountClient = com.join.mgps.rpc.impl.l.n0();
        this.rpcAccount1Client = com.join.mgps.rpc.impl.k.n0();
        this.showTitleMessage.setText("等待开始，开始后将扣除你10铜板");
        if (!com.join.android.app.common.utils.m.j(this)) {
            showToast("当前网络不可用!");
            finishActivity();
        }
        if (Build.VERSION.SDK_INT >= 28) {
            WindowManager.LayoutParams attributes = getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            getWindow().setAttributes(attributes);
        }
        this.mNetClient = com.join.mgps.rpc.impl.l.n0();
        if (this.mGameRoom.getFastMode()) {
            getBattleServerIp(1);
        }
        if (this.mGameRoom.getElite()) {
            this.llCopper.setVisibility(4);
        }
        if (com.join.mgps.Util.b.piv(AccountUtil_.getInstance_(this).getAccountData())) {
            this.llCopper.setVisibility(4);
        }
        boolean openFastModeBtn = this.mGameRoom.getOpenFastModeBtn();
        this.showSrvPlayMode = openFastModeBtn;
        if (openFastModeBtn) {
            this.llPlayMode.setVisibility(0);
        }
        if (this.mGameRoom.getBattleArea() == BattleArea.ALL) {
            setRoomServerPlayModeUi(1);
        } else {
            setRoomServerPlayModeUi(0);
        }
        GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{Color.parseColor("#f47500"), Color.parseColor("#f47500"), Color.parseColor("#f47500"), Color.parseColor("#f47500")});
        gradientDrawable.setCornerRadius(8.0f);
        GradientDrawable gradientDrawable2 = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{Color.parseColor("#FF8C00"), Color.parseColor("#FF8C00"), Color.parseColor("#FF8C00"), Color.parseColor("#FF8C00")});
        gradientDrawable2.setCornerRadius(8.0f);
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{android.R.attr.state_pressed}, gradientDrawable2);
        stateListDrawable.addState(new int[0], gradientDrawable);
        this.btnEnableDrawable = stateListDrawable;
        GradientDrawable gradientDrawable3 = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{Color.parseColor("#F47500"), Color.parseColor("#F47500"), Color.parseColor("#F47500")});
        gradientDrawable.setCornerRadius(8.0f);
        this.btnUnEnableDrawable = gradientDrawable3;
        this.tv_game_name.setText(this.gameName);
        PlayerInfoContainerView playerInfoContainerView = (PlayerInfoContainerView) findViewById(R.id.mPlayerInfoContainerView);
        this.mPlayerInfoContainerView = playerInfoContainerView;
        playerInfoContainerView.setPlayerInfoCallback(this.mPlayerInfoCallback);
        this.mArenaDialogBuilder = new com.join.mgps.socket.fight.arena.a(this, this);
        initOnClickListener();
        getGameData("" + this.mGameRoom.getGameId());
        updateRoom(this.mGameRoom);
        if (this.mGameRoom != null && this.mGameRoom.getRoomId() != 0) {
            com.wufan.friend.chat.c.u().i(0, this.mGameRoom.getRoomId());
        }
        com.join.mgps.socket.fight.arena.b bVar = new com.join.mgps.socket.fight.arena.b(this, this.mCallback);
        this.mServiceDelegate = bVar;
        bVar.bindService();
        printLog(this.mGameRoom);
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        this.fragmentManager = supportFragmentManager;
        try {
            supportFragmentManager.beginTransaction().commit();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        float fJ = com.join.android.app.common.utils.q.n(this).j(this);
        if (fJ > 1.9d) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.mPlayerInfoContainerView.getLayoutParams();
            layoutParams.rightMargin = getResources().getDimensionPixelOffset(R.dimen.wdp69);
            layoutParams.leftMargin = getResources().getDimensionPixelOffset(R.dimen.wdp65);
            this.mPlayerInfoContainerView.setLayoutParams(layoutParams);
            return;
        }
        float f10 = (fJ * 9.0f) / 16.0f;
        LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.mPlayerInfoContainerView.getLayoutParams();
        layoutParams2.rightMargin = (int) (getResources().getDimensionPixelOffset(R.dimen.wdp43) * f10);
        layoutParams2.leftMargin = (int) (getResources().getDimensionPixelOffset(R.dimen.wdp43) * f10);
        this.mPlayerInfoContainerView.setLayoutParams(layoutParams2);
    }

    void cancelCountDowner() {
        g1.b("GameRoomActivity", "---cancelCountDowner---");
        this.mPointer = 0;
        this.isCountDowner = false;
        this.mCountDownerHandler.removeMessages(100);
    }

    public boolean checkApkExist(Context context, String packageName) {
        if (packageName != null && !"".equals(packageName)) {
            try {
                context.getPackageManager().getApplicationInfo(packageName, 8192);
                return true;
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void checkUserInfoFailed() {
        IntentUtil.getInstance().goLoginBattle(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void finishActivity() {
        ClipboardManager clipboardManager = this.cmb;
        if (clipboardManager != null) {
            clipboardManager.setText("");
        }
        cancelStartGameCountDown();
        cancelCountDowner();
        hideLoadingDialog();
        com.join.mgps.socket.fight.arena.a aVar = this.mArenaDialogBuilder;
        if (aVar != null) {
            aVar.w();
        }
        this.mHandler.removeCallbacks(this.mRefreshGameTimeRunnable);
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getBattleServerIp(int serverType) {
        String strE = com.join.mgps.socket.fight.arena.c.e(serverType == 1 ? ArenaConstants.NDS_SERVER_1 : ArenaConstants.NDS_SERVER_2);
        if (TextUtils.isEmpty(strE)) {
            if (serverType == 1) {
                getBattleServerIp(2);
            }
        } else {
            g1.b("GameRoomActivity", "get battle server id for http nds :" + strE);
            this.battleServerIp = strE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getChallengeConfig() {
        try {
            ResultArenaBean<BattleChallengeConfig> resultArenaBeanR = this.mNetClient.R(this.accountUtil.getAccountData().getUid(), this.accountUtil.getAccountData().getToken(), this.mGameRoom.getGameId());
            hideLoadingDialog();
            if (resultArenaBeanR != null && resultArenaBeanR.getData() != null) {
                this.battleChallengeConfig = resultArenaBeanR.getData();
                showSetGoldDialog();
            } else if (resultArenaBeanR == null || resultArenaBeanR.getError() != 701) {
                showToast("获取配置信息失败，请重试！");
            } else {
                checkUserInfoFailed();
            }
        } catch (Exception unused) {
            hideLoadingDialog();
            if (com.join.android.app.common.utils.m.j(this)) {
                showToast("获取配置信息失败，请重试！");
            } else {
                showToast("当前网络不可用，请检查网络!");
                finishActivity();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getGameData(String gameId) {
        try {
            ResultArenaBean<ArenaLobbyServer> resultArenaBeanA0 = this.rpcAccount1Client.a0(this.accountUtil.getAccountData().getUid(), this.accountUtil.getAccountData().getToken());
            if (resultArenaBeanA0 != null) {
                if (resultArenaBeanA0.getError() == 0) {
                    if (resultArenaBeanA0.getData() != null) {
                        int startGameCopper = resultArenaBeanA0.getData().getStartGameCopper();
                        this.copper = startGameCopper;
                        if (startGameCopper == 0) {
                            this.copper = 20;
                        }
                        updateCopperTxt();
                    }
                } else if (resultArenaBeanA0.getError() == 701) {
                    showToast("你的手机登陆已经失效，请重新登陆!");
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        try {
            List<ArenaGameInfo> data = this.rpcAccount1Client.J(gameId).getData();
            for (int i10 = 0; i10 < data.size(); i10++) {
                ArenaGameInfo arenaGameInfo = data.get(i10);
                r2.l(this, arenaGameInfo.getId(), arenaGameInfo);
            }
            this.gameInfo = (ArenaGameInfo) r2.b(this, this.mGameRoom.getGameId() + "");
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void getIpFailed() {
        if (isActivityFinished()) {
            return;
        }
        hideLoadingDialog();
        showToast("获取服务器ip失败");
        finishActivity();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void handleError(ArenaResponse response) {
        f1 f1Var = this.mShowLoadingDialog;
        if (f1Var != null && f1Var.isShowing()) {
            try {
                this.mShowLoadingDialog.dismiss();
            } catch (Exception unused) {
            }
        }
        if (response.responseType.equals(ArenaConstants.ArenaCommand.CMD_LOBBY_START_GAME) || response.responseType.equals(ArenaConstants.ArenaCommand.PUSH_START_GAME_ROOM_BROADCAST)) {
            cancelStartGameCountDown();
        }
        if (response.responseType.equals(ArenaConstants.ArenaCommand.CMD_SET_ROOM_SERVER_PLAY_MODE)) {
            showToast("流畅模式设置失败");
            reverseRoomServerPlayModeUi();
        }
        int i10 = response.errorType;
        if (i10 == 12) {
            this.mArenaDialogBuilder.D(com.join.mgps.socket.fight.arena.a.f73077j, 257, Integer.valueOf(response.errorType), "铜板不足，无法设置挑战金", "确定");
        } else if (i10 != 14) {
            showToast(com.join.mgps.socket.fight.arena.c.g(response));
        } else {
            this.mArenaDialogBuilder.D(com.join.mgps.socket.fight.arena.a.f73077j, 257, Integer.valueOf(response.errorType), "该房间已经解散", "确定");
            this.mArenaDialogBuilder.x().setOnDismissListener(new s());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void handleKickPlayerInfo(KickInfo info) {
        this.mArenaDialogBuilder.D(com.join.mgps.socket.fight.arena.a.f73083p, info, Integer.valueOf(this.mKickPosition));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void hideLoadingDialog() {
        f1 f1Var = this.mShowLoadingDialog;
        if (f1Var == null || !f1Var.isShowing()) {
            return;
        }
        try {
            this.mShowLoadingDialog.dismiss();
        } catch (Exception unused) {
        }
    }

    boolean isUserPos(RoomPosition position, int uid) {
        return position != null && position.getUid() == uid;
    }

    @Click
    void iv_back() {
        if (!this.isKicked || com.join.android.app.common.utils.m.j(this)) {
            onLeaveRoom();
        } else {
            finishActivity();
        }
    }

    @Override // com.join.mgps.socket.fight.arena.a.y
    public void onChallengeGoldSet(int value) {
        if (com.join.mgps.socket.fight.arena.c.a(this.mGameRoom, this.accountUtil)) {
            showToast("已有玩家进入，无法再设置挑战金!");
            return;
        }
        if (this.isCountDowner) {
            showToast("房间已经进入倒计时状态，无法再设置挑战金！");
        } else if (this.mGameRoom.getState() == RoomState.START) {
            showToast("游戏已经开始，无法设置挑战金！");
        } else {
            if (this.mGameRoom.getChallengeCoins() == value) {
                return;
            }
            this.mServiceDelegate.f(ArenaRequestFactory.setChallengeGolden(ArenaConstants.REGISTER_TYPE_GAMEROOM, this.mGameRoom.getRoomId(), value));
        }
    }

    @Override // com.join.mgps.activity.FriendActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        this.type = "BATTLE_ROOM";
        if (this.mGameRoom != null) {
            this.gameId = this.mGameRoom.getGameId() + "";
        }
        this.context = this;
        UtilsMy.A0(this, 4, this.gameId, "FIGHT_LOBBY", new k());
        super.onCreate(savedInstanceState);
    }

    @Override // com.join.mgps.activity.FriendActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        com.join.mgps.socket.fight.arena.b bVar = this.mServiceDelegate;
        if (bVar != null) {
            if (bVar.d() != null) {
                g1.b("GameRoomActivity", "--onStop---removeObserver---");
                this.mServiceDelegate.d().A(this.mObserver);
            }
            this.mServiceDelegate.g();
        }
        this.inspectorDialogLive = false;
        super.onDestroy();
        clearClipboard();
        g1.b("GameRoomActivity", "--onDestroy---");
    }

    @Override // com.join.mgps.socket.fight.arena.a.y
    public void onDialogDismiss(String dialogType) {
        if (dialogType.equals(com.join.mgps.socket.fight.arena.a.f73082o) || dialogType.equals(com.join.mgps.socket.fight.arena.a.f73080m)) {
            finishActivity();
        } else if (dialogType.equals(com.join.mgps.socket.fight.arena.a.f73079l)) {
            this.inspectorDialogLive = false;
        }
    }

    @Override // com.join.mgps.socket.fight.arena.a.y
    public void onDisable() {
        finish();
    }

    @Override // com.join.mgps.socket.fight.arena.a.y
    public void onErrorHint(int operation, int errorType, Object value) {
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onFriendEvent(com.join.mgps.event.w event) {
        if (event == null || event.a() != 3 || this.mGameRoom == null || event.g() == this.mGameRoom.getRoomId()) {
            return;
        }
        finish();
    }

    @Override // com.join.mgps.socket.fight.arena.a.y
    public void onGetKickOutRoomPositionInfo(RoomPosition roomPosition, int position) {
        if (roomPosition.getVip()) {
            showToast("由于对方是悟饭VIP您无法将其踢出房间");
        } else {
            if (roomPosition.getUid() == Integer.parseInt(this.accountUtil.getUid()) || this.mCurrentUserType != UserType.OWNER || this.mGameRoom.getState() == RoomState.START) {
                return;
            }
            this.mKickPosition = position;
            this.mServiceDelegate.f(ArenaRequestFactory.getKickOutRoomPositionInfo(ArenaConstants.REGISTER_TYPE_GAMEROOM, this.mGameRoom.getRoomId(), position));
        }
    }

    @Override // com.join.mgps.activity.FriendActivity, com.join.mgps.adapter.v0.e
    public void onInvite(FriendBean bean) {
        GameRoom gameRoom = this.mGameRoom;
        if (gameRoom == null) {
            return;
        }
        if (isUserPos(gameRoom.getP1(), bean.getUid()) || isUserPos(gameRoom.getP2(), bean.getUid()) || isUserPos(gameRoom.getP3(), bean.getUid()) || isUserPos(gameRoom.getP4(), bean.getUid())) {
            a3.b(this).d("用户已加入房间");
        } else {
            UtilsMy.A0(this, 3, this.gameId, "FIGHT_LOBBY", new n(bean, gameRoom));
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode != 4 || event.getAction() != 0) {
            return super.onKeyDown(keyCode, event);
        }
        if (!this.isKicked || com.join.android.app.common.utils.m.j(this)) {
            onLeaveRoom();
            return true;
        }
        finishActivity();
        return true;
    }

    @Override // com.join.mgps.socket.fight.arena.a.y
    public void onLeaveRoom() {
        leaveRoom();
        finishActivity();
    }

    @Override // com.join.mgps.socket.fight.arena.a.y
    public void onNetArchiveSelected(ArchiveBean archiveBean, String path) {
        if (this.mGameRoom.getState() == RoomState.START) {
            showToast("游戏已经开始，无法设置存档！");
            return;
        }
        if (this.isCountDowner) {
            showToast("房间已经进入倒计时状态，无法再设置网络存档！");
            return;
        }
        this.mSelectedArchiveBean = archiveBean;
        this.archivePath = path;
        if (archiveBean == null || TextUtils.isEmpty(path)) {
            com.join.mgps.dialog.n nVar = this.arenaRoomTypeDialog;
            if (nVar != null) {
                nVar.e("选择");
            }
            this.tv_archive_name.setText("");
            return;
        }
        com.join.mgps.dialog.n nVar2 = this.arenaRoomTypeDialog;
        if (nVar2 != null) {
            nVar2.e(archiveBean.getShowName());
        }
        this.tv_archive_name.setText(archiveBean.getShowName());
    }

    @Override // com.join.mgps.socket.fight.arena.a.y
    public void onReport(RoomPosition roomPosition) {
        if (roomPosition.getUid() != Integer.parseInt(this.accountUtil.getUid())) {
            IntentDateBean intentDateBean = new IntentDateBean();
            intentDateBean.setLink_type(4);
            intentDateBean.setLink_type_val(com.join.mgps.rpc.h.f72388u + "report_uid=" + this.accountUtil.getUid() + "&reported_uid=" + roomPosition.getUid());
            ShareWebActivity_.intent(this).b(intentDateBean).start();
        }
    }

    @Override // com.join.mgps.activity.FriendActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        com.join.mgps.socket.fight.arena.b bVar = this.mServiceDelegate;
        if (bVar == null || bVar.d() == null) {
            return;
        }
        g1.b("GameRoomActivity", "--onResume---registerObserver---");
        this.mServiceDelegate.d().z(this.mObserver);
    }

    @Override // com.join.mgps.socket.fight.arena.a.y
    public void onSeatSet(RoomSeatState state, int position) {
        if (state == RoomSeatState.OPEN) {
            if (this.mGameRoom.getState() == RoomState.START) {
                showToast("游戏已经开始，无法开启座位!");
                return;
            } else {
                this.mServiceDelegate.f(ArenaRequestFactory.openSit(ArenaConstants.REGISTER_TYPE_GAMEROOM, this.mGameRoom.getRoomId(), position));
                return;
            }
        }
        if (state == RoomSeatState.CLOSE) {
            if (this.mGameRoom.getState() == RoomState.START) {
                showToast("游戏已经开始，无法关闭座位!");
                return;
            } else {
                this.mServiceDelegate.f(ArenaRequestFactory.closeSit(ArenaConstants.REGISTER_TYPE_GAMEROOM, this.mGameRoom.getRoomId(), position));
                return;
            }
        }
        if (state == RoomSeatState.REMOVE) {
            if (this.mGameRoom.getState() == RoomState.START) {
                showToast("游戏已经开始，无法踢人!");
                return;
            } else {
                this.mServiceDelegate.f(ArenaRequestFactory.kickOutRoomPosition(ArenaConstants.REGISTER_TYPE_GAMEROOM, this.mGameRoom.getRoomId(), position));
                return;
            }
        }
        if (state == RoomSeatState.SEAT) {
            if (this.mGameRoom.getState() == RoomState.START) {
                showToast("游戏已经开始，你无法坐下！");
            } else {
                this.mServiceDelegate.f(ArenaRequestFactory.spectatorSit(ArenaConstants.REGISTER_TYPE_GAMEROOM, this.mGameRoom.getRoomId(), position));
            }
        }
    }

    @Override // com.join.mgps.socket.fight.arena.a.y
    public void onShare(int shareType, String shareContent) {
        if (shareType == 1) {
            startQQ();
        } else {
            if (shareType != 2) {
                return;
            }
            copy(shareContent);
            shareWeiXin();
        }
    }

    @Override // com.join.mgps.socket.fight.arena.a.y
    public void onShareTypeChoice(int shareType) {
        this.mArenaDialogBuilder.D(com.join.mgps.socket.fight.arena.a.f73087t, createShareContent(), Integer.valueOf(shareType), Long.valueOf(this.mGameRoom.getGameId()), Long.valueOf(this.mGameRoom.getFightId()));
    }

    @Override // com.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
    }

    @Override // com.join.mgps.socket.fight.arena.a.y
    public void onSvrPlayMode(int mode) {
        this.mServiceDelegate.f(ArenaRequestFactory.setRoomServerPlayMode(mode, this.mGameRoom.getRoomId()));
        setRoomServerPlayModeUi(mode);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void printLog(GameRoom gameRoom) {
        com.join.mgps.socket.fight.arena.c.q("GameRoomActivity", gameRoom);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void reverseRoomServerPlayModeUi() {
        if (this.ivPlayModeSwitcher.isChecked()) {
            setRoomServerPlayModeUi(0);
        } else {
            setRoomServerPlayModeUi(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background(delay = BaseCloudFileManager.ACK_TIMEOUT)
    public void sendCheckRealname() {
        sendBroadcast(new Intent("com.show.realname.check"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void setRoomServerPlayModeUi(int mode) {
        this.radioGroup.clearCheck();
        if (mode == 1) {
            this.ivPlayModeSwitcher.setChecked(true);
        } else {
            this.ivPlayModeSwitcher.setChecked(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void shareQQ() {
        Platform.ShareParams shareParams = new Platform.ShareParams();
        shareParams.setShareType(1);
        shareParams.setText(createShareContent());
        Platform platform = ShareSDK.getPlatform(QQ.NAME);
        platform.setPlatformActionListener(new l());
        platform.share(shareParams);
    }

    void shareWeiXin() {
        try {
            doStartApplicationWithPackageName("com.tencent.mm");
        } catch (Exception unused) {
            showToast("请先安装微信");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showKickInfoDialog(String info) {
        this.isKicked = true;
        h0.h0(this).o(this, new o());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showReadyTimeOutDialog() {
        com.join.mgps.socket.fight.arena.a aVar = this.mArenaDialogBuilder;
        if (aVar != null) {
            aVar.w();
        }
        this.mArenaDialogBuilder.D(com.join.mgps.socket.fight.arena.a.f73080m, "对不起，您长时间未开始游戏，您已被踢出房间!");
    }

    void showRoomTypeDialog() {
        if (this.arenaRoomTypeDialog == null) {
            this.arenaRoomTypeDialog = new com.join.mgps.dialog.n(this);
        }
        this.arenaRoomTypeDialog.f(this.mGameRoom, new j());
        if (this.arenaRoomTypeDialog.isShowing()) {
            return;
        }
        this.arenaRoomTypeDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showSetGoldDialog() {
        if (this.battleChallengeConfig.getIsBattle()) {
            this.mArenaDialogBuilder.D(com.join.mgps.socket.fight.arena.a.f73085r, this.battleChallengeConfig, Integer.valueOf(this.mGameRoom.getChallengeCoins()));
        } else {
            this.mArenaDialogBuilder.D(com.join.mgps.socket.fight.arena.a.f73085r, this.battleChallengeConfig, this.gameName);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showStartGameTimeOut() {
        this.mArenaDialogBuilder.D(com.join.mgps.socket.fight.arena.a.f73077j, 257, 8, "你在2分钟内无开始，房间已被解散！", "确定");
        this.mArenaDialogBuilder.x().setOnDismissListener(new q());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showSvrPlayMode() {
        boolean zIsChecked = this.ivPlayModeSwitcher.isChecked();
        com.join.mgps.socket.fight.arena.a aVar = this.mArenaDialogBuilder;
        if (aVar != null) {
            aVar.w();
        }
        this.mArenaDialogBuilder.D(com.join.mgps.socket.fight.arena.a.f73088u, Integer.valueOf(zIsChecked ? 1 : 0));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String info) {
        if (isActivityFinished()) {
            return;
        }
        a3.b(this).d(info);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void startQQ() {
        if (checkApkExist(this, "com.tencent.mobileqq")) {
            sysShareQQ(this);
        } else {
            Toast.makeText(this, "本机未安装QQ应用", 0).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void statGameByBattleServerIp(BattleServerAddr battleServerAddr, String str) {
        initStartGameParams();
        int i10 = this.f56482p1 + this.f56483p2 + this.f56484p3 + this.f56485p4;
        NetBattleStartGameDto netBattleStartGameDto = new NetBattleStartGameDto();
        netBattleStartGameDto.setGameID(this.mGameRoom.getGameId() + "");
        netBattleStartGameDto.setRoomID(battleServerAddr.getBattleRoomId() + "");
        netBattleStartGameDto.setUserID(this.accountUtil.getAccountData().getUid() + "");
        netBattleStartGameDto.setServerIP(str);
        netBattleStartGameDto.setServerPort(battleServerAddr.getPort());
        int i11 = this.roomLive;
        if (i11 == 2) {
            netBattleStartGameDto.setRoomMode(3);
        } else if (i11 == 1) {
            netBattleStartGameDto.setRoomMode(2);
        } else {
            netBattleStartGameDto.setRoomMode(this.mGameRoom.getElite() ? 1 : 0);
        }
        netBattleStartGameDto.setAllowPeripheralJoin(this.isLetOutdeviceIn);
        netBattleStartGameDto.setAllowPCJoin(this.isLetPcIn);
        netBattleStartGameDto.setGameype(this.mGameRoom.getGameType().getNumber());
        netBattleStartGameDto.setGroupId(this.mGameRoom.getRoomId());
        netBattleStartGameDto.setP1Name("");
        netBattleStartGameDto.setP2Name("");
        netBattleStartGameDto.setOldGame(0);
        netBattleStartGameDto.setUserName(this.accountUtil.getAccountData().getNickname());
        netBattleStartGameDto.setUserIcon(this.accountUtil.getAccountData().getAvatarSrc());
        netBattleStartGameDto.setGamePlayers(this.mGameRoom.getSeatsNumber());
        netBattleStartGameDto.setTcptype(1);
        netBattleStartGameDto.setPorder(this.porder);
        netBattleStartGameDto.setNetPlayers(i10);
        if (!this.mGameRoom.getElite()) {
            netBattleStartGameDto.setOpenBattleScore(this.mGameRoom.getOpenBattleScore());
        }
        ArenaGameInfo arenaGameInfo = this.gameInfo;
        if (arenaGameInfo != null) {
            netBattleStartGameDto.setResult_show_type(arenaGameInfo.getResult_show_type());
        }
        g1.b("GameRoomActivity", "start game params :" + netBattleStartGameDto.toString());
        UtilsMy.g4(this, netBattleStartGameDto, q5.f.M().G(this.mGameRoom.getGameId() + ""), this.archivePath, com.join.mgps.socket.fight.arena.c.i(this.mGameRoom.getBattleArea(), this.isFastJoinRoom));
        finishActivity();
    }

    void sysShareQQ(Context mContext) {
        Intent intent = new Intent();
        intent.setAction("android.intent.action.SEND");
        intent.putExtra("android.intent.extra.TEXT", createShareContent());
        intent.setType("text/plain");
        try {
            intent.setClassName("com.tencent.mobileqq", "com.tencent.mobileqq.activity.JumpActivity");
            Intent intentCreateChooser = Intent.createChooser(intent, "选择分享途径");
            if (intentCreateChooser == null) {
                return;
            }
            mContext.startActivity(intentCreateChooser);
        } catch (Exception unused) {
            mContext.startActivity(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateCopperTxt() {
        this.txtCopper.setText(this.copper + "铜板");
        if (this.mGameRoom != null && this.mGameRoom.getElite()) {
            this.showTitleMessage.setText("等待开始");
            return;
        }
        if (com.join.mgps.Util.b.piv(AccountUtil_.getInstance_(this).getAccountData())) {
            this.showTitleMessage.setText("等待开始");
            return;
        }
        this.showTitleMessage.setText("等待开始，开始后将扣除你" + this.copper + "铜板");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void updateGameRoomAsync() {
        ArenaResponse arenaResponseO = this.mServiceDelegate.d().o(this.mGameRoom.getRoomId());
        if (arenaResponseO == null) {
            g1.b("GameRoomActivity", "updateGameRoomAsync--- response is null...");
            return;
        }
        Object obj = arenaResponseO.data;
        if (obj instanceof GameRoom) {
            GameRoom gameRoom = (GameRoom) obj;
            g1.b("GameRoomActivity", "gameRoom:aaa game id  --...:" + gameRoom.getRoomId() + "----gameRoom  game room id : bbb:" + this.mGameRoom.getRoomId());
            if (gameRoom.getRoomId() == this.mGameRoom.getRoomId()) {
                g1.b("GameRoomActivity", "updateGameRoomAsync---...");
                this.mObserver.onServerResponse(arenaResponseO);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code duplicated, block: B:74:0x02c9 A[Catch: all -> 0x030a, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x000f, B:8:0x0011, B:10:0x0017, B:11:0x001f, B:13:0x0021, B:15:0x0053, B:17:0x0094, B:19:0x00a6, B:21:0x00b5, B:23:0x00c1, B:25:0x0109, B:27:0x0112, B:29:0x0137, B:31:0x013f, B:33:0x0152, B:35:0x0158, B:37:0x0163, B:39:0x016a, B:42:0x0170, B:44:0x019f, B:45:0x01bf, B:47:0x01c7, B:52:0x01f0, B:54:0x023a, B:56:0x023e, B:58:0x024d, B:59:0x0252, B:61:0x025a, B:63:0x0261, B:65:0x026f, B:67:0x0292, B:68:0x0298, B:71:0x02a2, B:73:0x02c3, B:74:0x02c9, B:85:0x0302, B:86:0x0308, B:62:0x025e, B:75:0x02cf, B:77:0x02d3, B:79:0x02d7, B:80:0x02db, B:82:0x02e3, B:83:0x02e9, B:84:0x02ee, B:48:0x01d3, B:50:0x01e1, B:51:0x01e9, B:53:0x0200, B:36:0x015e, B:32:0x0149, B:28:0x0125, B:24:0x00f8, B:20:0x00ae, B:16:0x0074), top: B:91:0x0003 }] */
    @UiThread
    public void updateRoom(GameRoom gameRoom) {
        synchronized (this.mLocker) {
            if (this.mGameRoom.getRoomId() != gameRoom.getRoomId()) {
                return;
            }
            this.mGameRoom = gameRoom;
            if (this.mGameRoom == null) {
                showToast("服务器返回游戏房间信息为空，异常，退出界面");
                finishActivity();
                return;
            }
            com.join.mgps.socket.fight.arena.c.q("GameActivity", gameRoom);
            this.mCurrentUserType = com.join.mgps.socket.fight.arena.c.f(this.mGameRoom, this.accountUtil);
            this.mPlayerInfoContainerView.c(this.mGameRoom, this.accountUtil.getAccountData().getUid(), this);
            int number = this.mGameRoom.getBattleArea().getNumber();
            BattleArea battleArea = BattleArea.ALL;
            if (number != battleArea.getNumber()) {
                this.tv_roomNum.setText(Html.fromHtml("房间号：" + this.mGameRoom.getRoomId()));
            } else {
                this.tv_roomNum.setText(Html.fromHtml("房间号：" + this.mGameRoom.getRoomId()));
            }
            this.mStrPwd = this.mGameRoom.getPassword();
            if (this.mGameRoom.getGameType() == GameRoom.GameType.FIGHT) {
                this.tv_gold_info.setText("获胜一方获得该挑战金");
            } else {
                this.tv_gold_info.setText("完成游戏任务可获取挑战金");
            }
            if (this.mGameRoom.getElite()) {
                this.tv_copper_plate_count.setText(this.mGameRoom.getChallengeCoins() + "铜板");
                this.iv_elite.setImageDrawable(getResources().getDrawable(R.drawable.icon_elite));
                this.ll_set_challenge_gold.setVisibility(0);
                this.iv_elite.setVisibility(0);
            } else {
                this.tv_copper_plate_count.setText("0铜板");
                this.ll_set_challenge_gold.setVisibility(4);
                this.iv_elite.setVisibility(8);
            }
            if (this.mGameRoom.getAllowPeripheralJoin()) {
                this.isLetOutdeviceIn = true;
                this.iv_switch_outdevice_in.setImageDrawable(getResources().getDrawable(R.drawable.ic_switch_open_yellow));
            } else {
                this.isLetOutdeviceIn = false;
                this.iv_switch_outdevice_in.setImageDrawable(getResources().getDrawable(R.drawable.ic_switch_close_gray));
            }
            if (this.mGameRoom.getAllowPCJoin()) {
                this.isLetPcIn = true;
                this.tvRoomType.setText("综合房");
            } else {
                this.isLetPcIn = false;
                this.tvRoomType.setText("手机房");
            }
            UserType userType = this.mCurrentUserType;
            UserType userType2 = UserType.OWNER;
            if (userType == userType2) {
                this.rlRoomType.setVisibility(0);
            } else {
                this.rlRoomType.setVisibility(4);
            }
            UserType userType3 = this.mCurrentUserType;
            if (userType3 == userType2 || userType3 == UserType.TENANT) {
                this.tv_audience.setText(this.mGameRoom.getSpectatorNumber() + "人");
                this.rl_audience_1.setVisibility(0);
                this.rl_audience_2.setVisibility(8);
                this.linesee.setVisibility(8);
                com.join.android.app.common.utils.l.d(this.iv_audience, R.drawable.unloginstatus, this.accountUtil.getAccountData().getAvatarSrc());
            } else {
                this.tv_audience.setText(this.mGameRoom.getSpectatorNumber() + "人");
                com.join.android.app.common.utils.l.d(this.iv_audience, R.drawable.unloginstatus, this.accountUtil.getAccountData().getAvatarSrc());
                if (!this.isShowSpectatorReason) {
                    this.isShowSpectatorReason = true;
                    this.inspectorDialogLive = true;
                    this.mArenaDialogBuilder.D(com.join.mgps.socket.fight.arena.a.f73079l, this.joinSpectatorReason);
                    new Handler().postDelayed(new a(), 2000L);
                }
                if (!TextUtils.isEmpty(this.joinSpectatorReason)) {
                    this.tv_info_audience.setText(this.joinSpectatorReason);
                    this.joinSpectatorReason = "";
                } else if (this.mGameRoom.getState().equals(RoomState.START)) {
                    this.tv_info_audience.setText("你被移到观战席");
                } else {
                    this.tv_info_audience.setText("房间已满，被自动移到观战席");
                }
                com.join.android.app.common.utils.l.d(this.iv_audience, R.drawable.unloginstatus, this.accountUtil.getAccountData().getAvatarSrc());
            }
            if (this.mCurrentUserType == userType2) {
                this.tv_invite_fight.setVisibility(8);
                boolean openFastModeBtn = this.mGameRoom.getOpenFastModeBtn();
                this.showSrvPlayMode = openFastModeBtn;
                if (openFastModeBtn) {
                    this.llPlayMode.setVisibility(0);
                }
                if (this.mGameRoom.getBattleArea() == battleArea) {
                    setRoomServerPlayModeUi(1);
                } else {
                    setRoomServerPlayModeUi(0);
                }
                this.iv_challenge_gold_arrow.setVisibility(0);
                this.iv_arrow_net_archive.setVisibility(0);
                if (this.rl_net_archive != null) {
                    DownloadTask downloadTaskG = q5.f.M().G("" + this.mGameRoom.getGameId());
                    if (this.DEBUG_ARCHIVE || this.mGameRoom.getElite() || downloadTaskG == null) {
                        this.rl_net_archive.setVisibility(8);
                    } else {
                        if (downloadTaskG.getPlugin_num().equals(ConstantIntEnum.FC.value() + "")) {
                            this.rl_net_archive.setVisibility(8);
                        } else {
                            this.rl_net_archive.setVisibility(8);
                        }
                    }
                }
            } else {
                RelativeLayout relativeLayout = this.rl_net_archive;
                if (relativeLayout != null) {
                    if (this.DEBUG_ARCHIVE) {
                        relativeLayout.setVisibility(8);
                    } else if (this.mGameRoom.getElite()) {
                        this.rl_net_archive.setVisibility(8);
                    } else {
                        this.rl_net_archive.setVisibility(8);
                    }
                }
                this.tv_invite_fight.setVisibility(8);
                this.llPlayMode.setVisibility(8);
                this.iv_challenge_gold_arrow.setVisibility(8);
                this.iv_arrow_net_archive.setVisibility(8);
            }
            updateGameTime();
            updateButtonState();
        }
    }
}
