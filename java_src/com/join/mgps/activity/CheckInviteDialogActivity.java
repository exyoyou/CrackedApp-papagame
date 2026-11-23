package com.join.mgps.activity;

import android.content.Context;
import android.content.DialogInterface;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.text.TextUtils;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import app.mgsim.arena.ArenaConstants;
import app.mgsim.arena.ArenaRequestFactory;
import app.mgsim.arena.ArenaResponse;
import app.mgsim.arena.SocketError;
import app.mgsim.arena.SocketListener;
import com.BaseActivity;
import com.bykv.vk.component.ttvideo.player.C;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.arena.GameRoomActivity_;
import com.join.mgps.activity.login.LoginSplashActivity_;
import com.join.mgps.db.tables.EMUApkTable;
import com.join.mgps.dto.ArenaInviteBean;
import com.join.mgps.dto.DetailResultBean;
import com.join.mgps.dto.ResultMainBean;
import com.papa91.battle.protocol.BattleArea;
import com.papa91.battle.protocol.GameRoom;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.net_whole_invite_dialog)
public class CheckInviteDialogActivity extends BaseActivity {
    public static final int NO_PLUG = 2;
    public static final int NO_ROM = 1;
    public static final int NO_ROM_PLUG = 0;
    public static ArenaInviteBean arenaInviteBean;
    public static String copyData;
    public static String fightId;
    public static String no;
    public static String password;

    @Extra
    String data;
    DetailResultBean detialResultBean;

    @ViewById
    Button dialog_button_cancle;

    @ViewById
    Button dialog_button_ok;

    @ViewById
    TextView dialog_content;

    @ViewById
    TextView dialog_content_2;
    private Long gameId;
    private String gameName;

    @ViewById
    LinearLayout game_lay;
    private boolean hasPlug;
    private boolean hasRom;

    @ViewById
    LinearLayout loading_lay;

    @ViewById
    LinearLayout loding_faile;
    private com.join.mgps.socket.fight.arena.a mArenaDialogBuilder;
    private com.join.mgps.dialog.d1 mHintDialog;
    private com.join.mgps.socket.fight.arena.b mServiceDelegate;
    private String plugImg;

    @ViewById
    SimpleDraweeView plugImgIv;
    private String plugName;

    @ViewById
    TextView plugNameTv;

    @ViewById
    TextView plugSizeTv;

    @ViewById
    LinearLayout plug_lay;
    private String plugize;
    com.join.mgps.rpc.e recommendClient;
    private String romImg;

    @ViewById
    SimpleDraweeView romImgIv;
    private String romName;

    @ViewById
    TextView romNameTv;
    private String romSize;

    @ViewById
    TextView romSizeTv;

    @ViewById
    LinearLayout rom_lay;
    private int roomId;
    private String userName;
    Handler handler = new Handler();
    Runnable login = new a();
    Runnable check = new b();
    private final SocketListener.NotifyObserver mObserver = new f();
    com.join.mgps.customview.t mDialog = null;

    class a implements Runnable {
        a() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            ((LoginSplashActivity_.IntentBuilder_) LoginSplashActivity_.intent(CheckInviteDialogActivity.this).flags(C.ENCODING_PCM_MU_LAW)).start();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CheckInviteDialogActivity.this.checkRomAndPlug(null);
        }
    }

    class c extends com.join.mgps.socket.fight.arena.b.c {
        c() {
        }

        @Override // com.join.mgps.socket.fight.arena.b.c, com.join.mgps.socket.fight.arena.b.InterfaceC0749b
        public void c() {
            super.c();
            CheckInviteDialogActivity.this.mServiceDelegate.d().z(CheckInviteDialogActivity.this.mObserver);
        }
    }

    class d extends com.join.mgps.socket.fight.arena.a.b0 {
        d() {
        }

        @Override // com.join.mgps.socket.fight.arena.a.b0, com.join.mgps.socket.fight.arena.a.y
        public void onErrorHint(int operation, int errorType, Object value) {
            super.onErrorHint(operation, errorType, value);
        }
    }

    class e implements DialogInterface.OnDismissListener {
        e() {
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialog) {
            CheckInviteDialogActivity.this.finish();
        }
    }

    class f implements SocketListener.NotifyObserver {
        f() {
        }

        @Override // app.mgsim.arena.SocketListener.NotifyObserver
        public void onError(SocketError error) {
            CheckInviteDialogActivity.this.showToast("网络异常！");
            CheckInviteDialogActivity.this.finish();
        }

        @Override // app.mgsim.arena.SocketListener.NotifyObserver
        public void onServerResponse(ArenaResponse response) {
            if (CheckInviteDialogActivity.this.isActivityFinished()) {
                return;
            }
            if (response.responseCode == 0) {
                CheckInviteDialogActivity.this.handleError(response);
                return;
            }
            if (response.responseType.equals(ArenaConstants.ArenaCommand.CMD_LOGIN)) {
                CheckInviteDialogActivity.this.handleShare();
                return;
            }
            if (response.responseType.equals(ArenaConstants.ArenaCommand.CMD_SHARE_JOIN_ROOM)) {
                GameRoom gameRoom = (GameRoom) response.data;
                if (gameRoom.getBattleArea().getNumber() != BattleArea.ALL.getNumber() && gameRoom.getBattleArea().getNumber() != CheckInviteDialogActivity.this.mServiceDelegate.d().n().getNumber()) {
                    CheckInviteDialogActivity.this.showHintDialog(gameRoom);
                    return;
                }
                CheckInviteDialogActivity.this.mServiceDelegate.d().E(null);
                GameRoomActivity_.intent(CheckInviteDialogActivity.this).h(response.joinSpectatorReason).d(q5.f.M().G("" + gameRoom.getGameId()).getShowName()).i(gameRoom).start();
                com.papa.sim.statistic.t.l(CheckInviteDialogActivity.this).x(AccountUtil_.getInstance_(CheckInviteDialogActivity.this).getUid(), gameRoom.getRoomId(), CheckInviteDialogActivity.fightId);
                CheckInviteDialogActivity.this.finish();
            }
        }
    }

    class g implements DialogInterface.OnDismissListener {
        g() {
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialog) {
            CheckInviteDialogActivity.this.finish();
        }
    }

    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CheckInviteDialogActivity.this.finish();
        }
    }

    private UserInfo accountBean(Context ctx) {
        return AccountUtil_.getInstance_(ctx).getAccountData();
    }

    private void dialogDismiss() {
        com.join.mgps.customview.t tVar = this.mDialog;
        if (tVar == null || !tVar.isShowing()) {
            return;
        }
        this.mDialog.dismiss();
    }

    private void handleServiceConnected() {
        if (this.mServiceDelegate.d().s()) {
            handleShare();
        } else {
            this.mServiceDelegate.f(ArenaRequestFactory.login(ArenaConstants.REGISTER_TYPE_SHARE_JOIN_ROOM));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isActivityFinished() {
        return isFinishing() || isDestroyed();
    }

    private boolean isAppInstalled(String uri) {
        try {
            getPackageManager().getPackageInfo(uri, 1);
            return true;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    @AfterViews
    void afterViews() {
        this.recommendClient = com.join.mgps.rpc.impl.d.O1();
        setFinishOnTouchOutside(false);
        String str = this.data;
        copyData = str;
        try {
            this.gameName = str.substring(str.indexOf("【") + 1, this.data.indexOf("】"));
            int iIndexOf = this.data.indexOf(emoji(9786));
            this.userName = this.data.substring(iIndexOf + 1, this.data.lastIndexOf(emoji(9786)));
            int iIndexOf2 = this.data.indexOf("$");
            int iLastIndexOf = this.data.lastIndexOf("$");
            if (iLastIndexOf < 0) {
                finish();
                return;
            }
            this.roomId = Integer.valueOf(this.data.substring(iIndexOf2 + 3, iLastIndexOf)).intValue();
            int iIndexOf3 = this.data.indexOf(x.a.f97576d);
            int iLastIndexOf2 = this.data.lastIndexOf(x.a.f97576d);
            if (iIndexOf3 > 0) {
                password = this.data.substring(iIndexOf3 + 4, iLastIndexOf2);
            }
            int iIndexOf4 = this.data.indexOf("#");
            int iLastIndexOf3 = this.data.lastIndexOf("#");
            if (iLastIndexOf3 < 0) {
                finish();
            }
            fightId = this.data.substring(iIndexOf4 + 3, iLastIndexOf3);
            String str2 = this.data;
            this.gameId = Long.valueOf(str2.substring(str2.indexOf("￥") + 1, this.data.lastIndexOf("￥")));
            ArenaInviteBean arenaInviteBean2 = new ArenaInviteBean();
            arenaInviteBean = arenaInviteBean2;
            arenaInviteBean2.setGameId(this.gameId);
            arenaInviteBean.setGroupId(fightId);
            arenaInviteBean.setNo(no);
            arenaInviteBean.setPassword(password);
            if (this.roomId <= 0 || TextUtils.isEmpty(fightId) || this.gameId.longValue() <= 0) {
                finish();
                return;
            }
            com.join.mgps.socket.fight.arena.b bVar = new com.join.mgps.socket.fight.arena.b(this, new c());
            this.mServiceDelegate = bVar;
            bVar.bindService();
            this.mArenaDialogBuilder = new com.join.mgps.socket.fight.arena.a(this, new d());
            initUI(3000);
        } catch (Exception unused) {
            finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void checkRomAndPlug(DetailResultBean detialResultBean) {
        if (detialResultBean != null) {
            this.romName = detialResultBean.getGame_name();
            this.romImg = detialResultBean.getIco_remote();
            this.romSize = detialResultBean.getSize();
            this.hasRom = false;
            EMUApkTable eMUApkTableN = t6.p.o().n(detialResultBean.getPlugin_num());
            if (eMUApkTableN != null) {
                if (!com.join.android.app.common.utils.o.t(this, eMUApkTableN, false, new String[0]) || UtilsMy.D0(this, eMUApkTableN)) {
                    this.hasPlug = false;
                    this.plugImg = eMUApkTableN.getLogo();
                    this.plugName = eMUApkTableN.getApk_name();
                    this.plugize = eMUApkTableN.getSize();
                } else {
                    this.hasPlug = true;
                }
            }
            upDateUI();
            return;
        }
        DownloadTask downloadTaskG = q5.f.M().G(this.gameId + "");
        if (downloadTaskG == null || downloadTaskG.getStatus() != 5) {
            this.hasRom = false;
            getData();
            return;
        }
        this.hasRom = true;
        EMUApkTable eMUApkTableN2 = t6.o.o().n(downloadTaskG.getPlugin_num());
        if (eMUApkTableN2 == null) {
            this.hasPlug = true;
        } else if (!com.join.android.app.common.utils.o.t(this, eMUApkTableN2, false, new String[0]) || UtilsMy.D0(this, eMUApkTableN2)) {
            this.hasPlug = false;
            this.plugImg = eMUApkTableN2.getLogo();
            this.plugName = eMUApkTableN2.getApk_name();
            this.plugize = eMUApkTableN2.getSize();
        } else {
            this.hasPlug = true;
        }
        upDateUI();
    }

    void dealDialogDismissCallback() {
        this.mArenaDialogBuilder.x().setOnDismissListener(new g());
    }

    @Click
    void dialog_button_cancle() {
        this.handler.removeCallbacks(this.login);
        this.handler.removeCallbacks(this.check);
        copyData = "";
        fightId = "";
        finish();
    }

    @Click
    void dialog_button_ok() {
        fightId = "";
        this.dialog_button_cancle.setText("我知道了");
        this.dialog_button_ok.setVisibility(8);
        this.game_lay.setVisibility(8);
        boolean z10 = this.hasRom;
        if (!z10 && !this.hasPlug) {
            this.dialog_content.setText("正在下载" + this.romName + "、" + this.plugName);
        } else if (!z10) {
            this.dialog_content.setText("正在下载" + this.romName + "...");
        } else if (!this.hasPlug) {
            this.dialog_content.setText("正在下载" + this.plugName);
        }
        this.dialog_content_2.setVisibility(0);
        this.dialog_content_2.setText("下载完成后，请再次复制\"约战口令\"即可快速加入约战~");
        if (this.hasPlug || !this.hasRom) {
            if (UtilsMy.o1(this, this.detialResultBean.getDownloadtaskDown())) {
                return;
            }
            if (this.detialResultBean.getDown_status() == 5) {
                UtilsMy.l1(this, this.detialResultBean.getDownloadtaskDown());
                return;
            } else {
                com.php25.PDownload.d.c(this.detialResultBean.getDownloadtaskDown(), this);
                return;
            }
        }
        DownloadTask downloadTaskG = q5.f.M().G(this.gameId + "");
        if (downloadTaskG != null) {
            UtilsMy.q1(t6.o.o().n(downloadTaskG.getPlugin_num()), this);
        }
    }

    public String emoji(int hexEmoji) {
        return String.valueOf(Character.toChars(hexEmoji));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getData() {
        if (!com.join.android.app.common.utils.m.j(this)) {
            showLodingFailed();
            return;
        }
        try {
            UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
            int uid = accountData != null ? accountData.getUid() : 0;
            ResultMainBean<List<DetailResultBean>> resultMainBeanI0 = this.recommendClient.I0(RequestBeanUtil.getInstance(this).getAppDetialBean(this.gameId + "", uid, null));
            if (resultMainBeanI0 == null || resultMainBeanI0.getFlag() == 0) {
                if (resultMainBeanI0 == null || resultMainBeanI0.getFlag() == 0) {
                    showLodingFailed();
                    return;
                } else {
                    showLodingFailed();
                    return;
                }
            }
            List<DetailResultBean> data = resultMainBeanI0.getMessages().getData();
            if (data.size() != 0) {
                DetailResultBean detailResultBean = data.get(0);
                this.detialResultBean = detailResultBean;
                checkRomAndPlug(detailResultBean);
            }
        } catch (Exception unused) {
            showLodingFailed();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void go() {
        if (this.data.contains("大厅对战")) {
            IntentDateBean intentDateBean = new IntentDateBean();
            intentDateBean.setLink_type(3);
            intentDateBean.setJump_type(3);
            intentDateBean.setObject(arenaInviteBean);
            IntentUtil.getInstance().intentActivity(this, intentDateBean);
        }
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void goToGame() {
        copyData = "";
        if (!com.join.android.app.common.utils.m.j(this)) {
            showLodingFailed();
        } else if (this.mServiceDelegate.e()) {
            handleServiceConnected();
        } else {
            this.mServiceDelegate.bindService();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void handleError(ArenaResponse response) {
        showToast(com.join.mgps.socket.fight.arena.c.g(response));
        int i10 = response.errorType;
        if (i10 == 8) {
            this.mArenaDialogBuilder.D(com.join.mgps.socket.fight.arena.a.f73077j, 257, Integer.valueOf(response.errorType), "房间已经被解散!", "确定");
            dealDialogDismissCallback();
            return;
        }
        if (i10 == 9) {
            this.mArenaDialogBuilder.D(com.join.mgps.socket.fight.arena.a.f73077j, 257, Integer.valueOf(response.errorType), "房间已满，无法加入!", "确定");
            dealDialogDismissCallback();
            return;
        }
        if (i10 == 13) {
            this.mArenaDialogBuilder.D(com.join.mgps.socket.fight.arena.a.f73077j, 257, Integer.valueOf(response.errorType), "铜板不足，无法加入房间", "确定");
            dealDialogDismissCallback();
        } else if (i10 == 16) {
            this.mArenaDialogBuilder.D(com.join.mgps.socket.fight.arena.a.f73077j, 257, Integer.valueOf(response.errorType), "无法加入，你被禁止加入该房间", "确定");
            dealDialogDismissCallback();
        } else if (i10 != 17) {
            showToast(com.join.mgps.socket.fight.arena.c.g(response));
            new Handler().postDelayed(new h(), 2000L);
        } else {
            this.mArenaDialogBuilder.D(com.join.mgps.socket.fight.arena.a.f73077j, 257, Integer.valueOf(response.errorType), "该房间为比赛专用房间,非参赛选手无法加入", "确定");
            dealDialogDismissCallback();
        }
    }

    void handleShare() {
        this.mServiceDelegate.d().C(ArenaRequestFactory.shareJoinRoom(ArenaConstants.REGISTER_TYPE_SHARE_JOIN_ROOM, Long.valueOf(fightId).longValue(), this.roomId, this.gameId.longValue(), password));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void initUI(int time) {
        this.dialog_content.setText("正在进入【" + this.gameName + "】挑战好友" + emoji(9786) + this.userName + emoji(9786));
        this.dialog_content.setVisibility(0);
        this.game_lay.setVisibility(8);
        this.dialog_content_2.setVisibility(8);
        this.loding_faile.setVisibility(8);
        this.dialog_button_ok.setVisibility(8);
        this.loading_lay.setVisibility(0);
        if (AccountUtil_.getInstance_(this).getAccountData() == null) {
            this.handler.postDelayed(this.login, time);
        } else {
            this.handler.postDelayed(this.check, time);
        }
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        com.join.mgps.socket.fight.arena.b bVar = this.mServiceDelegate;
        if (bVar != null) {
            if (bVar.d() != null) {
                this.mServiceDelegate.d().z(this.mObserver);
            }
            this.mServiceDelegate.g();
        }
    }

    @Click
    void relodingimag() {
        initUI(500);
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showHintDialog(GameRoom gameRoom) {
        com.join.mgps.dialog.d1 d1Var = this.mHintDialog;
        if (d1Var != null) {
            d1Var.a();
        }
        com.join.mgps.dialog.d1 d1Var2 = new com.join.mgps.dialog.d1(this);
        this.mHintDialog = d1Var2;
        d1Var2.d("加入失败，您与" + gameRoom.getRoomId() + "房间不在同一战区\n请进入该游戏房间列表，并切换至【" + com.join.mgps.socket.fight.arena.c.d(gameRoom.getBattleArea()) + "】后再查找房间号进入");
        this.mHintDialog.e();
        this.mHintDialog.b().setOnDismissListener(new e());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        this.dialog_button_cancle.setText("我知道了");
        this.dialog_button_ok.setVisibility(8);
        this.dialog_content.setVisibility(8);
        this.game_lay.setVisibility(8);
        this.dialog_content_2.setVisibility(8);
        this.loading_lay.setVisibility(8);
        this.loding_faile.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String info) {
        if (isActivityFinished()) {
            return;
        }
        com.join.mgps.Util.a3.b(this).d(info);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void upDateUI() {
        if (this.hasPlug && this.hasRom) {
            goToGame();
            return;
        }
        this.loding_faile.setVisibility(8);
        if (!this.hasRom) {
            this.dialog_button_ok.setVisibility(0);
            this.game_lay.setVisibility(0);
            this.loading_lay.setVisibility(8);
            this.rom_lay.setVisibility(0);
            UtilsMy.L3(this, this.romImg, this.romImgIv);
            this.romNameTv.setText(this.romName);
            this.romSizeTv.setText(this.romSize + "M");
        }
        if (!this.hasPlug) {
            this.dialog_button_ok.setVisibility(0);
            this.game_lay.setVisibility(0);
            this.loading_lay.setVisibility(8);
            this.plug_lay.setVisibility(0);
            UtilsMy.L3(this, this.plugImg, this.plugImgIv);
            this.plugNameTv.setText(this.plugName);
            this.plugSizeTv.setText(this.plugize + "M");
        }
        boolean z10 = this.hasRom;
        if (!z10 && !this.hasPlug) {
            this.dialog_content.setText("你需要先下载游戏<" + this.romName + ">和" + this.plugName);
            this.dialog_content.setGravity(3);
            return;
        }
        if (!z10) {
            this.dialog_content.setText("你需要先下载游戏<" + this.romName + SimpleComparison.GREATER_THAN_OPERATION);
            this.dialog_content.setGravity(17);
            return;
        }
        if (this.hasPlug) {
            return;
        }
        this.dialog_content.setText("你需要先下载" + this.plugName);
        this.dialog_content.setGravity(17);
    }

    boolean validAccount() {
        return (accountBean(this) == null || AccountUtil_.getInstance_(this).isTourist()) ? false : true;
    }
}
