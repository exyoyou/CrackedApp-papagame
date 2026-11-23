package com.join.mgps.activity;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.pm.PackageInfo;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Handler;
import android.text.Html;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import app.mgsim.arena.ArenaConstants;
import app.mgsim.arena.ArenaRequest;
import app.mgsim.arena.ArenaRequestFactory;
import app.mgsim.arena.ArenaResponse;
import app.mgsim.arena.SocketError;
import app.mgsim.arena.SocketListener;
import com.bykv.vk.component.ttvideo.player.C;
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
import com.join.mgps.activity.arena.GameRoomActivity_;
import com.join.mgps.activity.arena.GameRoomListActivity_;
import com.join.mgps.activity.login.LoginSplashActivity_;
import com.join.mgps.db.tables.EMUApkTable;
import com.join.mgps.db.tables.GameMainTable;
import com.join.mgps.db.tables.PlayGameTimeTable;
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
import com.join.mgps.dto.GameMainV3DataBean;
import com.join.mgps.dto.GameMainachieve;
import com.join.mgps.dto.GameMaingameinfo;
import com.join.mgps.dto.GameWorldResponse;
import com.join.mgps.dto.MulPostData;
import com.join.mgps.dto.NetBattleStartGameDto;
import com.join.mgps.dto.PspBattleServer;
import com.join.mgps.dto.RequestCommentAllListArgs;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.ResultMessageBean;
import com.join.mgps.dto.ResultResMainBean;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.pref.PrefDef_;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa91.battle.protocol.GameRoom;
import com.windmill.sdk.WMConstants;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.ArrayList;
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
@EActivity(R.layout.activity_game_main_new)
@Fullscreen
public class GameMainNewActivity extends Activity implements com.join.mgps.adapter.i2.a {

    @ViewById
    SimpleDraweeView A;

    @ViewById
    RelativeLayout B;

    @ViewById
    LinearLayout C;

    @Extra
    String D;

    @Extra
    String E;
    private Context F;
    List<PlayGameTimeTable> G;
    private DownloadTask H;
    List<PspBattleServer> J;
    g K;
    com.join.mgps.rpc.l L;
    GameMainV3DataBean M;
    private String N;
    UserInfo O;
    com.join.mgps.rpc.e P;
    private com.join.mgps.socket.fight.arena.b T;
    private com.join.mgps.socket.fight.arena.a U;
    private com.join.mgps.adapter.i2 V;
    private com.join.mgps.adapter.l3 X;
    private com.join.mgps.adapter.n2 Y;
    com.join.mgps.rpc.f Z;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @ViewById
    View f53104b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @ViewById
    TextView f53106c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    TextView f53107d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    TextView f53108e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @ViewById
    TextView f53109f;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    private String f53110f1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @ViewById
    TextView f53111g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @ViewById
    TextView f53112h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @ViewById
    RecyclerView f53113i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @ViewById
    RelativeLayout f53115j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @ViewById
    TextView f53116k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @ViewById
    TextView f53117l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @ViewById
    TextView f53119m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @ViewById
    TextView f53120n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @ViewById
    TextView f53121o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @ViewById
    View f53122p;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    private String f53123p0;

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    @Pref
    PrefDef_ f53124p1;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @ViewById
    TextView f53125q;

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    com.join.mgps.rpc.i f53126q1;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @ViewById
    View f53127r;

    /* JADX INFO: renamed from: r1, reason: collision with root package name */
    int f53128r1;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @ViewById
    RecyclerView f53129s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @ViewById
    GridView f53130t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @ViewById
    SimpleDraweeView f53131u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @ViewById
    SimpleDraweeView f53132v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @ViewById
    RelativeLayout f53134w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @ViewById
    LinearLayout f53135x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @ViewById
    RelativeLayout f53136y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @ViewById
    RelativeLayout f53137z;
    private String I = "";
    private String Q = "";
    private int R = 0;
    private String S = "";
    private List<DynamicEntranceBean> W = new ArrayList();

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    private Bitmap f53105b1 = null;

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    private boolean f53114i1 = false;

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    private List<CommentAllListBean.GeneralCommentBean> f53118l1 = new ArrayList();

    /* JADX INFO: renamed from: v1, reason: collision with root package name */
    List<GameMainCommunityBean.PostsBean> f53133v1 = new ArrayList();
    private CountDownTimer L1 = new d(10000, 1000);
    private final com.join.mgps.socket.fight.arena.b.InterfaceC0749b R1 = new e();
    private final SocketListener.NotifyObserver V1 = new f();

    class a extends com.join.mgps.socket.fight.arena.a.b0 {
        a() {
        }

        @Override // com.join.mgps.socket.fight.arena.a.b0, com.join.mgps.socket.fight.arena.a.y
        public void onErrorHint(int operation, int errorType, Object value) {
            super.onErrorHint(operation, errorType, value);
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameMainNewActivity.this.z();
        }
    }

    class c implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GameMainV3DataBean f53140b;

        c(final GameMainV3DataBean val$gameMaindataImg) {
            this.f53140b = val$gameMaindataImg;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameMainNewActivity.this.H(this.f53140b.getSurface_bottom_ad().getTpl_type(), Integer.valueOf(this.f53140b.getSurface_bottom_ad().getLink_type()).intValue(), Integer.valueOf(this.f53140b.getSurface_bottom_ad().getJump_type()).intValue(), this.f53140b.getSurface_bottom_ad().getCrc_link_type_val(), this.f53140b.getSurface_bottom_ad().getLink_type_val());
        }
    }

    class d extends CountDownTimer {
        d(long millisInFuture, long countDownInterval) {
            super(millisInFuture, countDownInterval);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            GameMainNewActivity.this.J();
        }

        @Override // android.os.CountDownTimer
        public void onTick(long millisUntilFinished) {
        }
    }

    class e extends com.join.mgps.socket.fight.arena.b.c {
        e() {
        }

        @Override // com.join.mgps.socket.fight.arena.b.c, com.join.mgps.socket.fight.arena.b.InterfaceC0749b
        public void b() {
            super.b();
        }

        @Override // com.join.mgps.socket.fight.arena.b.c, com.join.mgps.socket.fight.arena.b.InterfaceC0749b
        public void c() {
            super.c();
            if (GameMainNewActivity.this.T == null || GameMainNewActivity.this.T.d() == null) {
                return;
            }
            GameMainNewActivity.this.T.d().z(GameMainNewActivity.this.V1);
        }
    }

    class f implements SocketListener.NotifyObserver {
        f() {
        }

        @Override // app.mgsim.arena.SocketListener.NotifyObserver
        public void onError(SocketError socketError) {
            if (GameMainNewActivity.this.L()) {
                return;
            }
            int i10 = socketError.errorType;
            if (i10 == 6 || i10 == 2) {
                GameMainNewActivity.this.S();
                return;
            }
            if (i10 == 5) {
                GameMainNewActivity.this.S();
            } else if (i10 == 3 || i10 == 4) {
                GameMainNewActivity.this.S();
            }
        }

        @Override // app.mgsim.arena.SocketListener.NotifyObserver
        public void onServerResponse(ArenaResponse response) {
            if (GameMainNewActivity.this.L()) {
                return;
            }
            if (response.responseCode == 0) {
                GameMainNewActivity.this.I(response);
                return;
            }
            if (response.responseType.equals(ArenaConstants.ArenaCommand.CMD_LOGIN)) {
                GameMainNewActivity.this.w();
                return;
            }
            if (response.responseType.equals(ArenaConstants.ArenaCommand.CMD_CREATE_GAME_ROOM) || response.responseType.equals(ArenaConstants.ArenaCommand.CMD_JOIN_ROOM)) {
                GameMainNewActivity.this.J();
                GameRoom gameRoom = (GameRoom) response.data;
                if (GameMainNewActivity.this.T != null && GameMainNewActivity.this.T.d() != null) {
                    GameMainNewActivity.this.T.d().E(null);
                }
                if (response.responseType.equals(ArenaConstants.ArenaCommand.CMD_CREATE_GAME_ROOM)) {
                    GameMainNewActivity.this.k();
                    GameRoomActivity_.intent(GameMainNewActivity.this).d(gameRoom.getGameName()).i(gameRoom).c("game_main").start();
                }
            }
        }
    }

    private SimpleDraweeView G() {
        SimpleDraweeView simpleDraweeView = new SimpleDraweeView(this);
        simpleDraweeView.setScaleType(ImageView.ScaleType.FIT_XY);
        return simpleDraweeView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean L() {
        return isFinishing() || isDestroyed();
    }

    private void Q() {
        t6.d0 d0VarN = t6.d0.n();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.O.getUid());
        String str = "";
        sb2.append("");
        List<PlayGameTimeTable> listO = d0VarN.o(sb2.toString(), this.D);
        this.G = listO;
        if (listO == null || listO.size() <= 0) {
            this.f53111g.setVisibility(4);
            this.f53112h.setVisibility(4);
            this.f53108e.setVisibility(4);
            this.f53109f.setVisibility(4);
            this.f53109f.setText("0分钟");
            this.f53112h.setText("未玩过");
            return;
        }
        this.f53111g.setVisibility(0);
        this.f53112h.setVisibility(0);
        this.f53108e.setVisibility(0);
        this.f53109f.setVisibility(0);
        long gamePlayTotalTime = this.G.get(0).getGamePlayTotalTime();
        int i10 = (int) (gamePlayTotalTime / 3600);
        long j10 = gamePlayTotalTime % 3600;
        int i11 = (int) (j10 / 60);
        long j11 = j10 % 60;
        if (i10 != 0) {
            str = "" + i10 + "小时";
        }
        if (i11 != 0) {
            str = str + i11 + "分钟";
        }
        this.f53109f.setText(com.join.mgps.Util.t2.h(str) ? "0分钟" : str);
        if (this.G.get(0).getGamePlayRecentlyTime() > 0) {
            this.f53112h.setText(com.join.android.app.common.utils.i.a(this.G.get(0).getGamePlayRecentlyTime() * 1000));
        } else {
            this.f53112h.setText("无");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S() {
        try {
            Toast.makeText(this, "网络不稳定，请重试", 0).show();
        } catch (Exception unused) {
        }
    }

    private void U(int index) {
        if (this.f53118l1.size() >= index) {
            GameMaingameinfo game_info = this.M.getGame_info();
            CommentDetailActivity_.intent(this.F).d(this.D).b(this.f53118l1.get(index - 1).getId()).f(game_info.getGame_plugin_num()).a(Integer.valueOf(game_info.getGame_bespeak_switch()).intValue()).e(game_info.getGame_is_started()).h(0).g(game_info.getGame_package()).c(game_info.getGame_comment_score_switch()).start();
        }
    }

    private void W(int index) {
        if (this.f53133v1.size() >= index) {
            int pid = this.f53133v1.get(index - 1).getPid();
            ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
            forumPostsBean.setPid(pid);
            com.join.mgps.Util.r0.w0(this.F, forumPostsBean, new ExtBean("0", pid + "", WMConstants.TIMER_STAGE_NONE));
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x005d  */
    private void X(boolean isGetData) {
        String str;
        char cCharAt;
        String fight_fun = this.H.getFight_fun();
        if (com.join.mgps.Util.t2.i(fight_fun)) {
            this.W.clear();
            this.V.b();
            if (fight_fun.length() >= 2) {
                char cCharAt2 = fight_fun.charAt(1);
                if (fight_fun.length() >= 7) {
                    cCharAt = fight_fun.charAt(6);
                    char c10 = fight_fun.charAt(5) == '1' ? '1' : '0';
                    if ('1' != cCharAt2 || '1' == cCharAt) {
                        this.f53115j.setVisibility(0);
                    } else if ('0' == cCharAt2 && '0' == cCharAt && c10 == '1') {
                        this.f53115j.setVisibility(0);
                    } else {
                        this.f53115j.setVisibility(8);
                    }
                } else {
                    cCharAt = '0';
                }
                if ('1' != cCharAt2) {
                    this.f53115j.setVisibility(0);
                } else {
                    this.f53115j.setVisibility(0);
                }
            }
            if (fight_fun.length() > 12 && M(this, this.H) && fight_fun.charAt(12) == '1') {
                this.W.add(new DynamicEntranceBean("排位赛", "NEW", 1));
            }
            if (fight_fun.length() > 4 && fight_fun.charAt(4) == '1') {
                this.W.add(new DynamicEntranceBean("练习模式", "", 5));
            }
            if (fight_fun.length() >= 4 && fight_fun.charAt(3) == '1') {
                this.W.add(new DynamicEntranceBean("约战", "", 2));
            }
            if (fight_fun.length() >= 1 && '1' == fight_fun.charAt(0)) {
                this.W.add(new DynamicEntranceBean("本地对战", "", 3));
            }
        }
        if (this.M == null) {
            this.f53136y.setVisibility(0);
            this.f53137z.setVisibility(8);
            return;
        }
        this.f53136y.setVisibility(8);
        this.f53137z.setVisibility(0);
        GameMaingameinfo game_info = this.M.getGame_info();
        if (game_info != null) {
            String game_back_ground_img = game_info.getGame_back_ground_img();
            if (!com.join.mgps.Util.t2.h(game_back_ground_img)) {
                this.f53131u.setImageURI(game_back_ground_img);
            }
            this.f53128r1 = game_info.getCommunity_area_id();
            if (isGetData) {
                if (!com.join.mgps.Util.t2.h(this.N)) {
                    E(this.N);
                } else if (this.f53128r1 != 0) {
                    B();
                } else {
                    y();
                }
            }
        }
        GameMainV3DataBean.MemberInfoBean member_info = this.M.getMember_info();
        if (member_info != null) {
            if (!com.join.mgps.Util.t2.h(member_info.getPic_remote())) {
                this.f53132v.setImageURI(member_info.getPic_remote());
            }
            this.f53117l.setText(member_info.getTitle());
            this.f53119m.setText(Html.fromHtml(member_info.getSub_title()));
        }
        List<GameMainV3DataBean.MemberFunBean> member_fun = this.M.getMember_fun();
        if (member_fun != null && member_fun.size() > 0) {
            this.X.c(member_fun);
        }
        List<GameMainV3DataBean.GameRecommendInfoBean> game_recommend_info = this.M.getGame_recommend_info();
        if (game_recommend_info != null && game_recommend_info.size() > 0) {
            this.Y.b(game_recommend_info);
        }
        GameMainNetBattle net_battle = this.M.getNet_battle();
        if (net_battle != null) {
            this.f53107d.setText(net_battle.getNumber() + "房");
        }
        GameMainV3DataBean.PlayGameInfoBean play_game_info = this.M.getPlay_game_info();
        this.f53111g.setVisibility(4);
        this.f53112h.setVisibility(4);
        this.f53108e.setVisibility(4);
        this.f53109f.setVisibility(4);
        if (play_game_info == null) {
            this.f53111g.setVisibility(4);
            this.f53112h.setVisibility(4);
            this.f53108e.setVisibility(4);
            this.f53109f.setVisibility(4);
            this.V.notifyDataSetChanged();
            return;
        }
        int file_save_count = play_game_info.getFile_save_count();
        if (play_game_info.getFile_save_switch() == 1) {
            this.W.add(new DynamicEntranceBean("云存档", file_save_count + "", 4));
        }
        this.V.notifyDataSetChanged();
        long current_play_time = play_game_info.getCurrent_play_time();
        int i10 = (int) (current_play_time / 3600);
        long j10 = current_play_time % 3600;
        int i11 = (int) (j10 / 60);
        long j11 = j10 % 60;
        if (i10 != 0) {
            str = "" + i10 + "小时";
        } else {
            str = "";
        }
        if (i11 != 0) {
            str = str + i11 + "分钟";
        }
        if (com.join.mgps.Util.t2.h(str)) {
            str = "0分钟";
        }
        this.f53109f.setText(str);
        if (play_game_info.getCurrent_play_time() <= 0) {
            t6.d0.n().m(new PlayGameTimeTable(this.O.getUid() + "", this.D, current_play_time, 0L));
            this.f53111g.setVisibility(4);
            this.f53112h.setVisibility(4);
            this.f53108e.setVisibility(4);
            this.f53109f.setVisibility(4);
            return;
        }
        String strA = com.join.android.app.common.utils.i.a(play_game_info.getLast_play_time() * 1000);
        t6.d0.n().m(new PlayGameTimeTable(this.O.getUid() + "", this.D, current_play_time, play_game_info.getLast_play_time()));
        this.f53112h.setText(strA);
        this.f53111g.setVisibility(0);
        this.f53112h.setVisibility(0);
        this.f53108e.setVisibility(0);
        this.f53109f.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        CountDownTimer countDownTimer = this.L1;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
    }

    private void q() {
        com.papa.sim.statistic.t.l(this).X0(Event.startArchiveManagement, AccountUtil_.getInstance_(this).getUid(), this.D, "1");
        DocumentManageActivity_.intent(this.F).a(1).b(this.D).start();
    }

    private void s() {
        ApFightActivity_.intent(this.F).a(this.D).start();
        com.papa.sim.statistic.t.l(this).y0(this.H.getCrc_link_type_val(), this.O.getUid());
    }

    private void u() {
        MobclickAgentKt.onEvent(this.F, "onEnterQualifying");
        if (!com.join.android.app.common.utils.m.j(this)) {
            com.join.mgps.Util.a3.b(this).d("无网络连接");
            return;
        }
        if (UtilsMy.X(this.F, this.H) == null) {
            Toast.makeText(this, "正在下载插件...", 1).show();
            J();
        } else {
            if (this.M == null) {
                return;
            }
            GamePaiWeiActivty_.o0(this.F).a(this.D).b(this.M.getGame_info().getMax_battle_count()).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w() {
        if (!com.join.android.app.common.utils.m.j(this)) {
            com.join.mgps.Util.a3.b(this).d("无网络连接");
            return;
        }
        if (!IntentUtil.getInstance().goLoginBattle(this)) {
            k();
            this.f53104b.setVisibility(0);
            this.L1.start();
            if (UtilsMy.X(this.F, this.H) == null) {
                Toast.makeText(this, "正在下载插件...", 1).show();
                J();
                return;
            }
            com.join.mgps.socket.fight.arena.b bVar = this.T;
            if (bVar != null && bVar.d() != null) {
                if (this.T.d().s()) {
                    this.T.f(ArenaRequestFactory.createRoom(ArenaConstants.REGISTER_TYPE_GAMEMAIN, this.D, 0, AccountUtil_.getInstance_(this).getAccountData().getUid(), true));
                } else {
                    ArenaRequest arenaRequestLogin = ArenaRequestFactory.login(ArenaConstants.REGISTER_TYPE_GAMEMAIN);
                    arenaRequestLogin.isRefreshing = true;
                    arenaRequestLogin.isElite = false;
                    this.T.f(arenaRequestLogin);
                }
            }
        }
        com.papa.sim.statistic.t.l(this).N0(this.H.getCrc_link_type_val(), this.O.getUid());
    }

    private void x() {
        UtilsMy.l(null, this.H, this, 3);
        com.papa.sim.statistic.t.l(this).T0(this.H.getCrc_link_type_val(), this.O.getUid());
        com.papa.sim.statistic.t.l(this).A0(this.H.getCrc_link_type_val(), this.O.getUid());
    }

    @Background
    void A() {
        try {
            GameMainTable gameMainTableO = t6.u.n().o(this.D);
            if (gameMainTableO != null) {
                GameMainV3DataBean gameMainV3DataBean = (GameMainV3DataBean) JsonMapper.getInstance().fromJson(gameMainTableO.getGame_main_data(), GameMainV3DataBean.class);
                if (gameMainV3DataBean != null && gameMainV3DataBean.getGame_info() != null) {
                    this.N = gameMainV3DataBean.getGame_info().getCommunity_multi_posts_id();
                }
                if (gameMainV3DataBean != null) {
                    Y(gameMainV3DataBean, false);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Background
    void B() {
        if (com.join.android.app.common.utils.m.j(this)) {
            try {
                ResultResMainBean<GameMainCommunityBean> resultResMainBeanQ = this.f53126q1.Q(this.f53128r1);
                if (resultResMainBeanQ == null || resultResMainBeanQ.getError() != 0 || resultResMainBeanQ.getData() == null) {
                    return;
                }
                List<GameMainCommunityBean.PostsBean> posts = resultResMainBeanQ.getData().getPosts();
                this.f53133v1.clear();
                if (posts != null && posts.size() > 0) {
                    String subject = posts.get(0).getSubject();
                    if (com.join.mgps.Util.t2.h(subject)) {
                        subject = posts.get(0).getMessage();
                    }
                    this.f53133v1.add(new GameMainCommunityBean.PostsBean(subject, posts.get(0).getPid()));
                    if (posts.size() > 1) {
                        String subject2 = posts.get(1).getSubject();
                        if (com.join.mgps.Util.t2.h(subject2)) {
                            subject2 = posts.get(1).getMessage();
                        }
                        this.f53133v1.add(new GameMainCommunityBean.PostsBean(subject2, posts.get(1).getPid()));
                    }
                }
                O();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public RequestCommentAllListArgs C() {
        this.O = AccountUtil_.getInstance_(this.F).getAccountData();
        String strD = this.f53124p1.commentToken().d();
        UserInfo userInfo = this.O;
        return RequestBeanUtil.getInstance(this.F).getRequestCommentAllList(1, 10, this.D, userInfo != null ? userInfo.getUid() : 0, strD);
    }

    @Background
    void D() {
        if (com.join.android.app.common.utils.m.j(this.F)) {
            try {
                ForumResponse<ForumData.HomepageRecommendLabel> forumResponseG0 = this.f53126q1.g0(0, 1, AccountUtil_.getInstance_(this.F).getUid(), AccountUtil_.getInstance_(this.F).getToken());
                if (forumResponseG0 == null || forumResponseG0.getError() != 0 || forumResponseG0.getData() == null) {
                    return;
                }
                List<ForumBean.ForumPostsBean> post_list = forumResponseG0.getData().getPost_list();
                this.f53133v1.clear();
                if (post_list != null && post_list.size() > 0) {
                    this.f53133v1.add(new GameMainCommunityBean.PostsBean(post_list.get(0).getSubject(), post_list.get(0).getPid()));
                    if (post_list.size() > 0) {
                        this.f53133v1.add(new GameMainCommunityBean.PostsBean(post_list.get(1).getSubject(), post_list.get(1).getPid()));
                    }
                }
                O();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @Background
    void E(String pids) {
        if (com.join.android.app.common.utils.m.j(this)) {
            try {
                ForumResponse<MulPostData> forumResponseT = this.f53126q1.t(pids);
                if (forumResponseT == null || forumResponseT.getError() != 0 || forumResponseT.getData() == null) {
                    return;
                }
                List<ForumBean.ForumPostsBean> posts_list = forumResponseT.getData().getPosts_list();
                this.f53133v1.clear();
                if (posts_list != null && posts_list.size() > 0) {
                    this.f53133v1.add(new GameMainCommunityBean.PostsBean(posts_list.get(0).getSubject(), posts_list.get(0).getPid()));
                    if (posts_list.size() > 1) {
                        this.f53133v1.add(new GameMainCommunityBean.PostsBean(posts_list.get(1).getSubject(), posts_list.get(1).getPid()));
                    }
                }
                O();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @Background
    void F() {
        try {
            GameWorldResponse<List<PspBattleServer>> gameWorldResponseN = this.L.n();
            if (gameWorldResponseN.getError() == 701) {
                l();
            } else if (gameWorldResponseN.getError() == 0) {
                this.J = gameWorldResponseN.getData();
                R();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void H(String tpl_type, int link_type, int jump_type, String crc_lint_val, String link_type_val) {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setTpl_type(tpl_type);
        intentDateBean.setLink_type(link_type);
        intentDateBean.setJump_type(jump_type);
        intentDateBean.setCrc_link_type_val(crc_lint_val);
        intentDateBean.setLink_type_val(link_type_val);
        IntentUtil.getInstance().intentActivity(this.F, intentDateBean);
    }

    @UiThread
    void I(ArenaResponse response) {
        J();
        int i10 = response.errorType;
        if (i10 == 16) {
            this.U.D(com.join.mgps.socket.fight.arena.a.f73077j, 257, Integer.valueOf(response.errorType), "无法加入，你被禁止加入该房间", "确定");
            return;
        }
        if (i10 == 17) {
            this.U.D(com.join.mgps.socket.fight.arena.a.f73077j, 257, Integer.valueOf(response.errorType), "该房间为比赛专用房间,非参赛选手无法加入", "我知道了");
            return;
        }
        if (i10 == 9) {
            this.U.D(com.join.mgps.socket.fight.arena.a.f73077j, 257, Integer.valueOf(response.errorType), "房间人数已满你无法加入房间!", "确定");
            return;
        }
        if (i10 == 7) {
            this.U.D(com.join.mgps.socket.fight.arena.a.f73077j, 256, Integer.valueOf(response.errorType), "密码输入错误，请重试!", "取消", "确定", response);
            return;
        }
        if (i10 == 8) {
            this.U.D(com.join.mgps.socket.fight.arena.a.f73077j, 257, Integer.valueOf(response.errorType), "房间已经被解散!", "确定");
        } else if (i10 == 11) {
            this.U.D(com.join.mgps.socket.fight.arena.a.f73077j, 257, Integer.valueOf(response.errorType), "铜板不足，无法创建房间!", "确定");
        } else if (i10 == 13) {
            this.U.D(com.join.mgps.socket.fight.arena.a.f73077j, 257, Integer.valueOf(response.errorType), "铜板不足，无法加入房间", "确定");
        }
    }

    @UiThread
    void J() {
        this.f53104b.setVisibility(8);
    }

    /* JADX WARN: Multi-variable type inference failed */
    void K() {
        ((LoginSplashActivity_.IntentBuilder_) LoginSplashActivity_.intent(this.F).flags(C.ENCODING_PCM_MU_LAW)).start();
    }

    boolean M(Context context, DownloadTask downloadTask) {
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

    @UiThread
    void N() {
        List<CommentAllListBean.GeneralCommentBean> list = this.f53118l1;
        if (list == null) {
            this.f53136y.setVisibility(0);
            this.f53137z.setVisibility(8);
            return;
        }
        if (list.size() > 0) {
            this.f53121o.setText(this.f53118l1.get(0).getContent());
            this.f53121o.setVisibility(0);
            this.f53122p.setVisibility(0);
        } else {
            this.f53121o.setVisibility(4);
            this.f53122p.setVisibility(4);
        }
        if (this.f53118l1.size() <= 1) {
            this.f53125q.setVisibility(4);
            this.f53127r.setVisibility(4);
        } else {
            this.f53125q.setText(this.f53118l1.get(1).getContent());
            this.f53125q.setVisibility(0);
            this.f53127r.setVisibility(0);
        }
    }

    @UiThread
    void O() {
        if (this.f53133v1 == null) {
            this.f53136y.setVisibility(0);
            this.f53137z.setVisibility(8);
            return;
        }
        this.f53136y.setVisibility(8);
        this.f53137z.setVisibility(0);
        if (this.f53133v1.size() > 0) {
            this.f53121o.setText(this.f53133v1.get(0).getSubject());
            this.f53121o.setVisibility(0);
            this.f53122p.setVisibility(0);
        } else {
            this.f53121o.setVisibility(4);
            this.f53122p.setVisibility(4);
        }
        if (this.f53133v1.size() <= 1) {
            this.f53125q.setVisibility(4);
            this.f53127r.setVisibility(4);
        } else {
            this.f53125q.setText(this.f53133v1.get(1).getSubject());
            this.f53125q.setVisibility(0);
            this.f53127r.setVisibility(0);
        }
    }

    @UiThread
    void P(final GameMainV3DataBean gameMaindataImg) {
        try {
            if (gameMaindataImg.getSurface_bottom_ad() == null || gameMaindataImg.getSurface_bottom_ad().getAd_switch() != 1) {
                return;
            }
            this.B.setVisibility(8);
            this.A.setVisibility(0);
            this.A.setImageURI(gameMaindataImg.getSurface_bottom_ad().getPic_remote());
            this.A.getHierarchy().y(com.facebook.drawee.drawable.s.c.f27287d);
            this.A.setOnClickListener(new c(gameMaindataImg));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void R() {
        g gVar = this.K;
        if (gVar != null && gVar.isShowing()) {
            this.K.dismiss();
        }
        g gVar2 = new g(this.F, R.style.HKDialogLoading);
        this.K = gVar2;
        gVar2.show();
    }

    @Click
    void T() {
        String str;
        GameMainV3DataBean gameMainV3DataBean = this.M;
        if (gameMainV3DataBean == null || gameMainV3DataBean.getMember_info() == null) {
            return;
        }
        GameMainV3DataBean.MemberInfoBean member_info = this.M.getMember_info();
        if (Integer.parseInt(member_info.getLink_type()) == 4 && member_info.getLink_type_val() != null && member_info.getLink_type_val().startsWith("http")) {
            String link_type_val = member_info.getLink_type_val();
            if (link_type_val.contains("?")) {
                str = link_type_val + "&game_id=" + this.D;
            } else {
                str = link_type_val + "?game_id=" + this.D;
            }
            member_info.setLink_type_val(str);
        }
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(Integer.valueOf(member_info.getLink_type()).intValue());
        intentDateBean.setJump_type(Integer.valueOf(member_info.getJump_type()).intValue());
        intentDateBean.setLink_type_val(member_info.getLink_type_val());
        IntentUtil.getInstance().intentActivity(this.F, intentDateBean);
    }

    @UiThread
    void V() {
        GameMainV3DataBean gameMainV3DataBean = this.M;
        if (gameMainV3DataBean == null) {
            return;
        }
        GameMaingameinfo game_info = gameMainV3DataBean.getGame_info();
        if (game_info.getGame_comment_score_switch().equals("0")) {
            ForumIndexActivity_.intent(this).start();
        } else {
            CommentAllListActivity_.intent(this.F).f(this.D).i(game_info.getGame_package()).h(game_info.getGame_plugin_num()).a(Integer.valueOf(game_info.getGame_bespeak_switch()).intValue()).g(game_info.getGame_is_started()).j(0).d(game_info.getGame_comment_score_switch()).start();
        }
    }

    @UiThread
    void Y(GameMainV3DataBean dataBean, boolean isGetData) {
        this.M = dataBean;
        GameMaingameinfo game_info = dataBean.getGame_info();
        if (game_info != null) {
            this.f53106c.setText(game_info.getGame_name());
        }
        X(isGetData);
    }

    @AfterViews
    void j() {
        this.F = this;
        this.P = com.join.mgps.rpc.impl.d.O1();
        this.L = com.join.mgps.rpc.impl.l.n0();
        this.f53126q1 = com.join.mgps.rpc.impl.g.A0();
        this.Z = com.join.mgps.rpc.impl.e.m();
        this.A.setVisibility(8);
        this.H = q5.f.M().G(this.D);
        this.O = AccountUtil_.getInstance_(this.F).getAccountData();
        DownloadTask downloadTask = this.H;
        if (downloadTask != null) {
            this.f53106c.setText(downloadTask.getShowName());
        }
        com.join.mgps.adapter.i2 i2Var = new com.join.mgps.adapter.i2(this, this.W, this);
        this.V = i2Var;
        this.f53130t.setAdapter((ListAdapter) i2Var);
        this.f53130t.setOverScrollMode(2);
        int dimension = (int) getResources().getDimension(R.dimen.wdp916);
        int dimension2 = (int) getResources().getDimension(R.dimen.wdp667);
        int dimension3 = (int) getResources().getDimension(R.dimen.wdp27);
        int dimension4 = (int) getResources().getDimension(R.dimen.wdp343);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        int i10 = displayMetrics.heightPixels;
        if (Float.valueOf(displayMetrics.widthPixels).floatValue() / i10 > 1.7777778f) {
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(dimension4, -1);
            layoutParams.gravity = 1;
            this.f53135x.setLayoutParams(layoutParams);
        }
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams((dimension * (i10 - (dimension3 * 2))) / dimension2, -1);
        layoutParams2.leftMargin = dimension3;
        layoutParams2.topMargin = dimension3;
        layoutParams2.bottomMargin = dimension3;
        this.f53131u.setLayoutParams(layoutParams2);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this);
        linearLayoutManager.setOrientation(1);
        this.f53129s.setLayoutManager(linearLayoutManager);
        com.join.mgps.adapter.n2 n2Var = new com.join.mgps.adapter.n2(this);
        this.Y = n2Var;
        this.f53129s.setAdapter(n2Var);
        this.X = new com.join.mgps.adapter.l3(this, this.D);
        this.f53113i.setLayoutManager(new GridLayoutManager(this.F, 4));
        this.f53113i.setAdapter(this.X);
        A();
        z();
        this.U = new com.join.mgps.socket.fight.arena.a(this, new a());
        com.papa.sim.statistic.t.l(this).Z0(Event.indexGameStart, AccountUtil_.getInstance_(this).getUid(), this.D, this.E, 0);
    }

    @UiThread
    void l() {
        com.join.mgps.Util.a3.b(this).d("登录已失效请您重新登录");
        K();
    }

    @Click
    void m() {
        V();
    }

    @Click
    void n() {
        finish();
    }

    @Click
    void o() {
        List<CommentAllListBean.GeneralCommentBean> list = this.f53118l1;
        if (list == null || list.size() <= 0) {
            W(1);
        } else {
            U(1);
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        com.join.mgps.socket.fight.arena.a aVar = this.U;
        if (aVar != null) {
            aVar.w();
        }
        com.papa.sim.statistic.t.l(this).z0(this.H.getCrc_link_type_val(), this.O.getUid());
        com.join.mgps.socket.fight.arena.b bVar = this.T;
        if (bVar != null && bVar.d() != null) {
            this.T.d().A(this.V1);
        }
        com.join.mgps.socket.fight.arena.b bVar2 = this.T;
        if (bVar2 != null) {
            bVar2.g();
            this.T.stopService();
            this.T = null;
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        J();
        this.O = AccountUtil_.getInstance_(this).getAccountData();
        if (this.T == null) {
            com.join.mgps.socket.fight.arena.b bVar = new com.join.mgps.socket.fight.arena.b(this, this.R1);
            this.T = bVar;
            bVar.bindService();
        }
        if (this.H != null) {
            Ext ext = new Ext();
            if (this.H != null) {
                ext.setFrom(this.H.get_from() + "");
            }
            com.papa.sim.statistic.t.l(this).d(q5.f.M().N(this.D, this), ext);
        }
        if (this.f53114i1) {
            new Handler().postDelayed(new b(), 1500L);
        }
        com.join.mgps.adapter.n2 n2Var = this.Y;
        if (n2Var != null) {
            n2Var.c();
        }
    }

    @Override // com.join.mgps.adapter.i2.a
    public void onRootView(DynamicEntranceBean bean) {
        int typeId = bean.getTypeId();
        if (typeId == 1) {
            u();
            return;
        }
        if (typeId == 2) {
            w();
            return;
        }
        if (typeId == 3) {
            s();
        } else if (typeId == 4) {
            q();
        } else {
            if (typeId != 5) {
                return;
            }
            x();
        }
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        com.join.mgps.socket.fight.arena.b bVar = this.T;
        if (bVar != null && bVar.d() != null) {
            this.T.d().A(this.V1);
        }
        com.join.mgps.socket.fight.arena.b bVar2 = this.T;
        if (bVar2 != null) {
            bVar2.g();
            this.T.stopService();
            this.T = null;
        }
    }

    @Click
    void p() {
        List<CommentAllListBean.GeneralCommentBean> list = this.f53118l1;
        if (list == null || list.size() <= 0) {
            W(2);
        } else {
            U(2);
        }
    }

    @Click
    void r() {
        char c10;
        char cCharAt;
        com.papa.sim.statistic.t.l(this).R(AccountUtil_.getInstance_(this).getUid());
        com.papa.sim.statistic.t.l(this).y(AccountUtil_.getInstance_(this).getUid(), this.D, "game_main");
        try {
            com.papa.sim.statistic.t.l(this).L0(this.D, Integer.parseInt(AccountUtil_.getInstance_(this).getUid()));
        } catch (Exception unused) {
        }
        GameInfoBean gameInfoBean = new GameInfoBean();
        gameInfoBean.setGame_id(this.D);
        GameMainV3DataBean gameMainV3DataBean = this.M;
        if (gameMainV3DataBean != null) {
            gameInfoBean.setGame_name(gameMainV3DataBean.getGame_info().getGame_name());
        }
        DownloadTask downloadTask = this.H;
        if (downloadTask != null && com.join.mgps.Util.t2.i(downloadTask.getFight_fun())) {
            String fight_fun = this.H.getFight_fun();
            char cCharAt2 = fight_fun.charAt(1);
            if (fight_fun.length() >= 7) {
                cCharAt = fight_fun.charAt(6);
                c10 = fight_fun.charAt(5) == '1' ? '1' : '0';
            } else {
                c10 = '0';
                cCharAt = '0';
            }
            if ('0' == cCharAt2 && '0' == cCharAt && c10 == '1') {
                F();
                return;
            }
        }
        GameRoomListActivity_.intent(this.F).b(true).c(gameInfoBean).start();
    }

    @Click
    void t() {
        if (this.f53136y.getVisibility() == 0 || this.f53128r1 == 0) {
            V();
        } else {
            IntentUtil.getInstance().goForumGroupActivity(this, this.f53128r1);
        }
    }

    @Click
    void v() {
        int silence_room_switch;
        int i10;
        int i11;
        GameMainV3DataBean gameMainV3DataBean = this.M;
        if (gameMainV3DataBean == null || (silence_room_switch = gameMainV3DataBean.getNet_battle().getSilence_room_switch()) == 0) {
            UtilsMy.l(null, this.H, this.F, 0);
        } else {
            String fight_fun = this.H.getFight_fun();
            boolean z10 = com.join.mgps.Util.t2.i(fight_fun) && fight_fun.length() >= 7 && '1' == fight_fun.charAt(6);
            int max_battle_count = this.M.getGame_info() != null ? this.M.getGame_info().getMax_battle_count() : 0;
            if (silence_room_switch == 1) {
                if (!com.join.mgps.Util.t2.i(this.Q) || (i11 = this.R) == 0) {
                    UtilsMy.l(null, this.H, this.F, 0);
                } else {
                    UtilsMy.o(this.H, this.F, 1, this.Q, i11, this.S, max_battle_count);
                }
            } else if (silence_room_switch == 2 && z10 && com.join.mgps.Util.t2.i(this.Q) && (i10 = this.R) != 0) {
                UtilsMy.o(this.H, this.F, 1, this.Q, i10, this.S, max_battle_count);
            } else {
                UtilsMy.l(null, this.H, this.F, 0);
            }
        }
        com.papa.sim.statistic.t.l(this).I0(this.H.getCrc_link_type_val(), this.O.getUid());
    }

    @Background
    void y() {
        if (com.join.android.app.common.utils.m.j(this.F)) {
            CommentResponse<CommentAllListBean> commentResponseA = this.Z.a(C());
            if (commentResponseA != null) {
                this.f53118l1 = commentResponseA.getData_info().getGeneral_comment();
                N();
            }
        }
    }

    @Background
    void z() {
        ResultMessageBean<GameMainV3DataBean> messages;
        try {
            RequestBeanUtil requestBeanUtil = RequestBeanUtil.getInstance(this);
            String str = this.D;
            UserInfo userInfo = this.O;
            ResultMainBean<GameMainV3DataBean> resultMainBeanP = this.P.p(requestBeanUtil.getGameMainData(str, userInfo != null ? userInfo.getUid() : 1));
            this.f53114i1 = true;
            if (resultMainBeanP == null || resultMainBeanP.getFlag() != 1 || (messages = resultMainBeanP.getMessages()) == null) {
                return;
            }
            GameMainV3DataBean data = messages.getData();
            P(data);
            if (data.getGame_info() != null) {
                this.N = data.getGame_info().getCommunity_multi_posts_id();
            }
            GameMainTable gameMainTableO = t6.u.n().o(this.D);
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
                gameMainTableO.setGameid(this.D);
                gameMainTableO.setGame_main_data(json);
                t6.u.n().update(gameMainTableO);
            } else {
                GameMainTable gameMainTable = new GameMainTable();
                String json2 = JsonMapper.getInstance().toJson(data);
                gameMainTable.setGameid(this.D);
                gameMainTable.setGame_main_data(json2);
                t6.u.n().k(gameMainTable);
            }
            Y(data, true);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    class g extends Dialog {

        class a implements AdapterView.OnItemClickListener {
            a() {
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> parent, View view, int position, long id2) {
                PspBattleServer pspBattleServer = GameMainNewActivity.this.J.get(position);
                NetBattleStartGameDto netBattleStartGameDto = new NetBattleStartGameDto();
                netBattleStartGameDto.setServerIP(pspBattleServer.getIp());
                netBattleStartGameDto.setServerPort(pspBattleServer.getPort());
                netBattleStartGameDto.setGameID(GameMainNewActivity.this.D + "");
                netBattleStartGameDto.setUserID(AccountUtil_.getInstance_(GameMainNewActivity.this.F).getAccountData().getUid() + "");
                netBattleStartGameDto.setOldGame(0);
                netBattleStartGameDto.setClientIp(GameMainNewActivity.this.I);
                netBattleStartGameDto.setUserName(AccountUtil_.getInstance_(GameMainNewActivity.this.F).getAccountData().getNickname());
                netBattleStartGameDto.setUserIcon(AccountUtil_.getInstance_(GameMainNewActivity.this.F).getAccountData().getAvatarSrc());
                netBattleStartGameDto.setPorder(0);
                UtilsMy.x4(GameMainNewActivity.this.F, netBattleStartGameDto, GameMainNewActivity.this.H, 13);
            }
        }

        private class b extends BaseAdapter {
            private b() {
            }

            @Override // android.widget.Adapter
            public int getCount() {
                return GameMainNewActivity.this.J.size();
            }

            @Override // android.widget.Adapter
            public Object getItem(int position) {
                return GameMainNewActivity.this.J.get(position);
            }

            @Override // android.widget.Adapter
            public long getItemId(int position) {
                return position;
            }

            @Override // android.widget.Adapter
            public View getView(int position, View convertView, ViewGroup parent) {
                if (convertView == null) {
                    convertView = LayoutInflater.from(GameMainNewActivity.this.F).inflate(R.layout.dialog_psp_item, (ViewGroup) null);
                }
                ((TextView) convertView.findViewById(R.id.name)).setText(GameMainNewActivity.this.J.get(position).getServer_name());
                ((TextView) convertView.findViewById(R.id.count)).setText(GameMainNewActivity.this.J.get(position).getPeople() + "人");
                return convertView;
            }

            /* synthetic */ b(g gVar, a aVar) {
                this();
            }
        }

        public g(Context context) {
            super(context);
        }

        @Override // android.app.Dialog
        protected void onCreate(Bundle savedInstanceState) {
            super.onCreate(savedInstanceState);
            requestWindowFeature(1);
            requestWindowFeature(-1);
            View viewInflate = LayoutInflater.from(GameMainNewActivity.this.F).inflate(R.layout.network_psp_dialog, (ViewGroup) null);
            ListView listView = (ListView) viewInflate.findViewById(R.id.listview);
            listView.setAdapter((ListAdapter) new b(this, null));
            listView.setOnItemClickListener(new a());
            setContentView(viewInflate);
        }

        protected g(Context context, boolean cancelable, DialogInterface.OnCancelListener cancelListener) {
            super(context, cancelable, cancelListener);
        }

        public g(Context context, int themeResId) {
            super(context, themeResId);
        }
    }
}
