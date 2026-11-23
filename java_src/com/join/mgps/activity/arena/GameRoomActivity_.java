package com.join.mgps.activity.arena;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import app.mgsim.arena.ArenaResponse;
import com.facebook.drawee.view.SimpleDraweeView;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.dto.BattleChallengeConfig;
import com.papa91.battle.protocol.BattleServerAddr;
import com.papa91.battle.protocol.GameRoom;
import com.papa91.battle.protocol.KickInfo;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class GameRoomActivity_ extends GameRoomActivity implements xc.a, zc.a, zc.b {
    public static final String BATTLE_CHALLENGE_CONFIG_EXTRA = "battleChallengeConfig";
    public static final String COPPER_EXTRA = "copper";
    public static final String FROM_EXTRA = "from";
    public static final String GAME_NAME_EXTRA = "gameName";
    public static final String IS_ALLOW_PC_JOIN_EXTRA = "isAllowPcJoin";
    public static final String IS_CREATE_ROOM_EXTRA = "isCreateRoom";
    public static final String IS_FAST_JOIN_ROOM_EXTRA = "isFastJoinRoom";
    public static final String JOIN_SPECTATOR_REASON_EXTRA = "joinSpectatorReason";
    public static final String M_GAME_ROOM_EXTRA = "mGameRoom";
    public static final String PASSWORD_EXTRA = "password";
    public static final String POSITION_EXTRA = "position";
    public static final String ROOM_LIVE_EXTRA = "roomLive";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomActivity_.super.hideLoadingDialog();
        }
    }

    public static class a0 extends org.androidannotations.api.builder.a<a0> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f56515a;

        public a0(Context context) {
            super(context, (Class<?>) GameRoomActivity_.class);
        }

        public a0 a(BattleChallengeConfig battleChallengeConfig) {
            return (a0) super.extra(GameRoomActivity_.BATTLE_CHALLENGE_CONFIG_EXTRA, battleChallengeConfig);
        }

        public a0 b(int copper) {
            return (a0) super.extra(GameRoomActivity_.COPPER_EXTRA, copper);
        }

        public a0 c(String from) {
            return (a0) super.extra("from", from);
        }

        public a0 d(String gameName) {
            return (a0) super.extra("gameName", gameName);
        }

        public a0 e(int isAllowPcJoin) {
            return (a0) super.extra(GameRoomActivity_.IS_ALLOW_PC_JOIN_EXTRA, isAllowPcJoin);
        }

        public a0 f(boolean isCreateRoom) {
            return (a0) super.extra(GameRoomActivity_.IS_CREATE_ROOM_EXTRA, isCreateRoom);
        }

        public a0 g(boolean isFastJoinRoom) {
            return (a0) super.extra(GameRoomActivity_.IS_FAST_JOIN_ROOM_EXTRA, isFastJoinRoom);
        }

        public a0 h(String joinSpectatorReason) {
            return (a0) super.extra(GameRoomActivity_.JOIN_SPECTATOR_REASON_EXTRA, joinSpectatorReason);
        }

        public a0 i(GameRoom mGameRoom) {
            return (a0) super.extra(GameRoomActivity_.M_GAME_ROOM_EXTRA, mGameRoom);
        }

        public a0 j(String password) {
            return (a0) super.extra(GameRoomActivity_.PASSWORD_EXTRA, password);
        }

        public a0 k(int position) {
            return (a0) super.extra("position", position);
        }

        public a0 l(int roomLive) {
            return (a0) super.extra(GameRoomActivity_.ROOM_LIVE_EXTRA, roomLive);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f56515a;
            if (fragment != null) {
                fragment.startActivityForResult(this.intent, requestCode);
            } else {
                Context context = this.context;
                if (context instanceof Activity) {
                    ActivityCompat.startActivityForResult((Activity) context, this.intent, requestCode, this.lastOptions);
                } else {
                    context.startActivity(this.intent);
                }
            }
            return new org.androidannotations.api.builder.f(this.context);
        }

        public a0(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) GameRoomActivity_.class);
            this.f56515a = fragment;
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomActivity_.super.checkUserInfoFailed();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomActivity_.super.showSetGoldDialog();
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f56518b;

        d(final String val$info) {
            this.f56518b = val$info;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomActivity_.super.showToast(this.f56518b);
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomActivity_.super.startQQ();
        }
    }

    class f implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ BattleServerAddr f56521b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f56522c;

        f(final BattleServerAddr val$battleServerAddr, final String val$battleServerIp) {
            this.f56521b = val$battleServerAddr;
            this.f56522c = val$battleServerIp;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomActivity_.super.statGameByBattleServerIp(this.f56521b, this.f56522c);
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomActivity_.super.updateCopperTxt();
        }
    }

    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomActivity_.super.getIpFailed();
        }
    }

    class i implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f56526b;

        i(final int val$mode) {
            this.f56526b = val$mode;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomActivity_.super.setRoomServerPlayModeUi(this.f56526b);
        }
    }

    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomActivity_.super.reverseRoomServerPlayModeUi();
        }
    }

    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameRoomActivity_.this.iv_back();
        }
    }

    class l extends org.androidannotations.api.a.c {
        l(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameRoomActivity_.super.sendCheckRealname();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class m extends org.androidannotations.api.a.c {
        m(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameRoomActivity_.super.updateGameRoomAsync();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class n extends org.androidannotations.api.a.c {
        n(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameRoomActivity_.super.getChallengeConfig();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class o extends org.androidannotations.api.a.c {
        o(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameRoomActivity_.super.shareQQ();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class p extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f56534b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        p(String id2, long delay, String serial, final String val$gameId) {
            super(id2, delay, serial);
            this.f56534b = val$gameId;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameRoomActivity_.super.getGameData(this.f56534b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class q extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f56536b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        q(String id2, long delay, String serial, final int val$serverType) {
            super(id2, delay, serial);
            this.f56536b = val$serverType;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameRoomActivity_.super.getBattleServerIp(this.f56536b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class r extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GameRoom f56538b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        r(String id2, long delay, String serial, final GameRoom val$gameRoom) {
            super(id2, delay, serial);
            this.f56538b = val$gameRoom;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameRoomActivity_.super.printLog(this.f56538b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class s implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f56540b;

        s(final String val$info) {
            this.f56540b = val$info;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomActivity_.super.showKickInfoDialog(this.f56540b);
        }
    }

    class t implements Runnable {
        t() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomActivity_.super.showSvrPlayMode();
        }
    }

    class u implements Runnable {
        u() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomActivity_.super.showReadyTimeOutDialog();
        }
    }

    class v implements Runnable {
        v() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomActivity_.super.showStartGameTimeOut();
        }
    }

    class w implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ KickInfo f56545b;

        w(final KickInfo val$info) {
            this.f56545b = val$info;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomActivity_.super.handleKickPlayerInfo(this.f56545b);
        }
    }

    class x implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ArenaResponse f56547b;

        x(final ArenaResponse val$response) {
            this.f56547b = val$response;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomActivity_.super.handleError(this.f56547b);
        }
    }

    class y implements Runnable {
        y() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomActivity_.super.finishActivity();
        }
    }

    class z implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GameRoom f56550b;

        z(final GameRoom val$gameRoom) {
            this.f56550b = val$gameRoom;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomActivity_.super.updateRoom(this.f56550b);
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        this.accountUtil = AccountUtil_.getInstance_(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey(BATTLE_CHALLENGE_CONFIG_EXTRA)) {
                this.battleChallengeConfig = (BattleChallengeConfig) extras.getSerializable(BATTLE_CHALLENGE_CONFIG_EXTRA);
            }
            if (extras.containsKey(ROOM_LIVE_EXTRA)) {
                this.roomLive = extras.getInt(ROOM_LIVE_EXTRA);
            }
            if (extras.containsKey(M_GAME_ROOM_EXTRA)) {
                this.mGameRoom = (GameRoom) extras.getSerializable(M_GAME_ROOM_EXTRA);
            }
            if (extras.containsKey(JOIN_SPECTATOR_REASON_EXTRA)) {
                this.joinSpectatorReason = extras.getString(JOIN_SPECTATOR_REASON_EXTRA);
            }
            if (extras.containsKey("gameName")) {
                this.gameName = extras.getString("gameName");
            }
            if (extras.containsKey(IS_FAST_JOIN_ROOM_EXTRA)) {
                this.isFastJoinRoom = extras.getBoolean(IS_FAST_JOIN_ROOM_EXTRA);
            }
            if (extras.containsKey(IS_CREATE_ROOM_EXTRA)) {
                this.isCreateRoom = extras.getBoolean(IS_CREATE_ROOM_EXTRA);
            }
            if (extras.containsKey(IS_ALLOW_PC_JOIN_EXTRA)) {
                this.isAllowPcJoin = extras.getInt(IS_ALLOW_PC_JOIN_EXTRA);
            }
            if (extras.containsKey("from")) {
                this.from = extras.getString("from");
            }
            if (extras.containsKey(PASSWORD_EXTRA)) {
                this.password = extras.getString(PASSWORD_EXTRA);
            }
            if (extras.containsKey("position")) {
                this.position = extras.getInt("position");
            }
            if (extras.containsKey(COPPER_EXTRA)) {
                this.copper = extras.getInt(COPPER_EXTRA);
            }
        }
    }

    public static a0 intent(Context context) {
        return new a0(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomActivity
    public void checkUserInfoFailed() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomActivity
    public void finishActivity() {
        org.androidannotations.api.b.e("", new y(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomActivity
    public void getBattleServerIp(final int serverType) {
        org.androidannotations.api.a.l(new q("", 0L, "", serverType));
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomActivity
    public void getChallengeConfig() {
        org.androidannotations.api.a.l(new n("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomActivity
    public void getGameData(final String gameId) {
        org.androidannotations.api.a.l(new p("", 0L, "", gameId));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomActivity
    public void getIpFailed() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomActivity
    public void handleError(final ArenaResponse response) {
        org.androidannotations.api.b.e("", new x(response), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomActivity
    public void handleKickPlayerInfo(final KickInfo info) {
        org.androidannotations.api.b.e("", new w(info), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomActivity
    public void hideLoadingDialog() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    @Override // com.join.mgps.activity.arena.GameRoomActivity, com.join.mgps.activity.FriendActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.activity_game_room);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.txtHint = (TextView) hasViews.internalFindViewById(R.id.txtHint);
        this.showTitleMessage = (TextView) hasViews.internalFindViewById(R.id.showTitleMessage);
        this.txtCopper = (TextView) hasViews.internalFindViewById(R.id.txtCopper);
        this.llCopper = (LinearLayout) hasViews.internalFindViewById(R.id.llCopper);
        this.tv_gold_info = (TextView) hasViews.internalFindViewById(R.id.tv_gold_info);
        this.tv_game_name = (TextView) hasViews.internalFindViewById(R.id.tv_game_name);
        this.tv_roomNum = (TextView) hasViews.internalFindViewById(R.id.tv_roomNum);
        this.tv_game_time_state = (TextView) hasViews.internalFindViewById(R.id.tv_game_time_state);
        this.ll_set_challenge_gold = (LinearLayout) hasViews.internalFindViewById(R.id.ll_set_challenge_gold);
        this.tv_copper_plate_count = (TextView) hasViews.internalFindViewById(R.id.tv_copper_plate_count);
        this.iv_elite = (ImageView) hasViews.internalFindViewById(R.id.iv_elite);
        this.iv_challenge_gold_arrow = (ImageView) hasViews.internalFindViewById(R.id.iv_challenge_gold_arrow);
        this.iv_switch_outdevice_in = (ImageView) hasViews.internalFindViewById(R.id.iv_switch_outdevice_in);
        this.rlRoomType = hasViews.internalFindViewById(R.id.rlRoomType);
        this.tvRoomType = (TextView) hasViews.internalFindViewById(R.id.tvRoomType);
        this.rl_net_archive = (RelativeLayout) hasViews.internalFindViewById(R.id.rl_net_archive);
        this.tv_archive_name = (TextView) hasViews.internalFindViewById(R.id.tv_archive_name);
        this.iv_arrow_net_archive = (ImageView) hasViews.internalFindViewById(R.id.iv_arrow_net_archive);
        this.rl_audience_1 = (LinearLayout) hasViews.internalFindViewById(R.id.rl_audience_1);
        this.rl_audience_2 = (RelativeLayout) hasViews.internalFindViewById(R.id.rl_audience_2);
        this.linesee = hasViews.internalFindViewById(R.id.linesee);
        this.tv_audience = (TextView) hasViews.internalFindViewById(R.id.tv_audience);
        this.iv_audience = (SimpleDraweeView) hasViews.internalFindViewById(R.id.iv_audience);
        this.llPlayMode = (LinearLayout) hasViews.internalFindViewById(R.id.llPlayMode);
        this.ivPlayModeSwitcher = (RadioButton) hasViews.internalFindViewById(R.id.ivPlayModeSwitcher);
        this.radioGroup = (RadioGroup) hasViews.internalFindViewById(R.id.radioGroup);
        this.ivPlayModeSwitcherlayout = hasViews.internalFindViewById(R.id.ivPlayModeSwitcherlayout);
        this.tv_info_audience = (TextView) hasViews.internalFindViewById(R.id.tv_info_audience);
        this.btnEntranceGame = hasViews.internalFindViewById(R.id.btnEntranceGame);
        this.btnEntranceGameI = (ImageView) hasViews.internalFindViewById(R.id.btnEntranceGameI);
        this.btnEntranceGameM = (TextView) hasViews.internalFindViewById(R.id.btnEntranceGameM);
        this.tv_invite_fight = (TextView) hasViews.internalFindViewById(R.id.tv_invite_fight);
        this.tv_audience_name = (TextView) hasViews.internalFindViewById(R.id.tv_audience_name);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.iv_back);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new k());
        }
        afterViews();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomActivity
    public void printLog(final GameRoom gameRoom) {
        org.androidannotations.api.a.l(new r("", 0L, "", gameRoom));
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomActivity
    public void reverseRoomServerPlayModeUi() {
        org.androidannotations.api.b.e("", new j(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomActivity
    public void sendCheckRealname() {
        org.androidannotations.api.a.l(new l("", BaseCloudFileManager.ACK_TIMEOUT, ""));
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int layoutResID) {
        super.setContentView(layoutResID);
        this.onViewChangedNotifier_.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent newIntent) {
        super.setIntent(newIntent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomActivity
    public void setRoomServerPlayModeUi(final int mode) {
        org.androidannotations.api.b.e("", new i(mode), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomActivity
    public void shareQQ() {
        org.androidannotations.api.a.l(new o("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomActivity
    public void showKickInfoDialog(final String info) {
        org.androidannotations.api.b.e("", new s(info), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomActivity
    public void showReadyTimeOutDialog() {
        org.androidannotations.api.b.e("", new u(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomActivity
    public void showSetGoldDialog() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomActivity
    public void showStartGameTimeOut() {
        org.androidannotations.api.b.e("", new v(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomActivity
    public void showSvrPlayMode() {
        org.androidannotations.api.b.e("", new t(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomActivity
    public void showToast(final String info) {
        org.androidannotations.api.b.e("", new d(info), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomActivity
    public void startQQ() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomActivity
    public void statGameByBattleServerIp(final BattleServerAddr battleServerAddr, final String battleServerIp) {
        org.androidannotations.api.b.e("", new f(battleServerAddr, battleServerIp), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomActivity
    public void updateCopperTxt() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomActivity
    public void updateGameRoomAsync() {
        org.androidannotations.api.a.l(new m("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomActivity
    public void updateRoom(final GameRoom gameRoom) {
        org.androidannotations.api.b.e("", new z(gameRoom), 0L);
    }

    public static a0 intent(Fragment supportFragment) {
        return new a0(supportFragment);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams params) {
        super.setContentView(view, params);
        this.onViewChangedNotifier_.a(this);
    }

    @Override // com.join.mgps.activity.FriendActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.onViewChangedNotifier_.a(this);
    }
}
