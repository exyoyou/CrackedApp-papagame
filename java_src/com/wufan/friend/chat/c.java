package com.wufan.friend.chat;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import android.widget.Toast;
import app.mgsim.arena.ArenaConstants;
import app.mgsim.arena.ArenaRequest;
import app.mgsim.arena.ArenaRequestFactory;
import app.mgsim.arena.ArenaResponse;
import app.mgsim.arena.SocketError;
import app.mgsim.arena.SocketListener;
import com.MApplication;
import com.bykv.vk.component.ttvideo.player.C;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.m;
import com.join.android.app.common.utils.q;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.a3;
import com.join.mgps.Util.o;
import com.join.mgps.activity.FriendInviteActivity;
import com.join.mgps.activity.GameMainActivity3;
import com.join.mgps.activity.arena.GameRoomActivity;
import com.join.mgps.activity.arena.GameRoomActivity_;
import com.join.mgps.activity.arena.GameRoomListActivity;
import com.join.mgps.dto.FriendAccountInfo;
import com.join.mgps.dto.FriendBean;
import com.join.mgps.dto.FriendInviteBean;
import com.join.mgps.event.w;
import com.join.mgps.rpc.h;
import com.papa91.arc.bean.ButtonBean;
import com.papa91.battle.protocol.GameRoom;
import com.papa91.battle.protocol.RoomCategory;
import com.wufan.friend.chat.protocol.ChatRoomArgs;
import com.wufan.friend.chat.protocol.OnlineState;
import com.wufan.friend.chat.protocol.PlayGameArgs;
import com.wufan.friend.chat.protocol.PlayType;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import q5.f;

/* JADX INFO: loaded from: classes8.dex */
public class c {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static volatile c f87840n;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f87841a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    com.wufan.friend.chat.rpc.b f87842b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f87844d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private FriendAccountInfo f87846f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private com.join.mgps.socket.fight.arena.b f87847g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    FriendBean f87848h;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Handler f87843c = new Handler();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f87845e = 1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    LinkedList<FriendInviteBean> f87849i = new LinkedList<>();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    List<FriendBean> f87850j = new ArrayList();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    final int f87851k = com.join.mgps.socket.entity.b.f73001c;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private com.join.mgps.socket.fight.arena.b.InterfaceC0749b f87852l = new b();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final SocketListener.NotifyObserver f87853m = new C1091c();

    class a implements GameRoomActivity.x {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ FriendBean f87854a;

        a(final FriendBean val$bean) {
            this.f87854a = val$bean;
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onFail(int type) {
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onSuccess(int type, int duration, ButtonBean buttonBean) {
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onSuccess(int type, int duration) {
            c cVar = c.this;
            FriendBean friendBean = this.f87854a;
            cVar.f87848h = friendBean;
            if (friendBean == null) {
                return;
            }
            friendBean.setAction("invite");
            c.this.k(this.f87854a.getGameId());
        }
    }

    class b extends com.join.mgps.socket.fight.arena.b.c {
        b() {
        }

        @Override // com.join.mgps.socket.fight.arena.b.c, com.join.mgps.socket.fight.arena.b.InterfaceC0749b
        public void c() {
            super.c();
            if (c.this.getContext() instanceof GameMainActivity3) {
                return;
            }
            boolean z10 = c.this.getContext() instanceof GameRoomListActivity;
        }
    }

    /* JADX INFO: renamed from: com.wufan.friend.chat.c$c, reason: collision with other inner class name */
    class C1091c implements SocketListener.NotifyObserver {
        C1091c() {
        }

        void a(int roomId, String pwd) {
            if (c.this.f87847g != null) {
                c.this.f87847g.f(ArenaRequestFactory.setRoomPassword(ArenaConstants.REGISTER_TYPE_GAMEROOM, roomId, pwd));
            }
        }

        @Override // app.mgsim.arena.SocketListener.NotifyObserver
        public void onError(SocketError socketError) {
            int i10 = socketError.errorType;
            if (i10 == 6 || i10 == 2) {
                c.this.X();
                return;
            }
            if (i10 == 5) {
                c.this.X();
            } else if (i10 == 3 || i10 == 4) {
                c.this.X();
            }
        }

        /* JADX WARN: Code duplicated, block: B:38:0x00b6  */
        /* JADX WARN: Code duplicated, block: B:54:0x0169  */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // app.mgsim.arena.SocketListener.NotifyObserver
        public void onServerResponse(ArenaResponse response) {
            if (c.this.w() == null) {
                return;
            }
            if (response.responseCode == 0) {
                org.greenrobot.eventbus.c.f().q(response);
                c.this.V(null);
                return;
            }
            if (response.responseType.equals(ArenaConstants.ArenaCommand.CMD_LOGIN)) {
                FriendBean friendBean = c.this.f87848h;
                if (friendBean != null) {
                    if (friendBean.getAction().equals("invite")) {
                        c cVar = c.this;
                        cVar.o(cVar.f87848h);
                        return;
                    } else {
                        if (c.this.f87848h.getAction().equals("join")) {
                            c cVar2 = c.this;
                            cVar2.p(cVar2.f87848h);
                            return;
                        }
                        return;
                    }
                }
                return;
            }
            if (response.responseType.equals(ArenaConstants.ArenaCommand.CMD_CREATE_GAME_ROOM) || response.responseType.equals(ArenaConstants.ArenaCommand.CMD_JOIN_ROOM)) {
                GameRoom gameRoom = (GameRoom) response.data;
                if (c.this.f87847g != null && c.this.f87847g.d() != null) {
                    c.this.f87847g.d().E(null);
                }
                int i10 = 3;
                int i11 = 1;
                if (response.responseType.equals(ArenaConstants.ArenaCommand.CMD_CREATE_GAME_ROOM)) {
                    FriendBean friendBean2 = c.this.f87848h;
                    if (friendBean2 == null) {
                        i10 = -1;
                    } else if (friendBean2.getSource() == 1) {
                        i10 = 2;
                    } else if (c.this.f87848h.getSource() != 2) {
                        i10 = -1;
                    }
                    String str = ((int) (((Math.random() * 9.0d) + 1.0d) * 1000.0d)) + "";
                    ((GameRoomActivity_.a0) GameRoomActivity_.intent(c.this.getContext()).d(gameRoom.getGameName()).i(gameRoom).c("friend_invite").k(i10).j(str).flags(C.ENCODING_PCM_A_LAW)).start();
                    a(gameRoom.getRoomId(), str);
                    if (c.this.f87848h != null) {
                        c.u().n(c.this.f87848h.getUid(), gameRoom.getRoomId(), str, gameRoom.getElite(), gameRoom.getGameId());
                        c cVar3 = c.this;
                        cVar3.e(cVar3.f87848h);
                    }
                    org.greenrobot.eventbus.c.f().q(new w(2));
                } else if (response.responseType.equals(ArenaConstants.ArenaCommand.CMD_JOIN_ROOM) && gameRoom != null) {
                    if (gameRoom.getRoomCategory() == null) {
                        i11 = 0;
                    } else if (gameRoom.getRoomCategory() == RoomCategory.LIVE) {
                        i11 = 2;
                    } else if (gameRoom.getRoomCategory() != RoomCategory.TOURNAMENT) {
                        i11 = 0;
                    }
                    w wVar = new w(3);
                    wVar.r(gameRoom.getRoomId());
                    wVar.s(i11);
                    wVar.q(response.joinSpectatorReason);
                    wVar.o(gameRoom);
                    wVar.t(c.this.f87848h.getSource());
                    org.greenrobot.eventbus.c.f().q(wVar);
                }
                c.this.V(null);
            }
        }
    }

    public c(Context context) {
        this.f87841a = context;
        C();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void I(FriendBean friendBean) {
        this.f87850j.remove(friendBean);
        org.greenrobot.eventbus.c.f().q(new w(10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void J(PlayGameArgs.State state, PlayType playType, long j10, int i10, int i11) {
        List<DownloadTask> listS = f.M().s();
        ArrayList arrayList = new ArrayList();
        Iterator<DownloadTask> it2 = listS.iterator();
        while (it2.hasNext()) {
            arrayList.add(Long.valueOf(it2.next().getCrc_link_type_val()));
        }
        this.f87842b.h(state, playType, j10, i10, i11, Y(j10 + ""), arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void X() {
        try {
            Toast.makeText(getContext(), "网络不稳定，请重试", 0).show();
        } catch (Exception unused) {
        }
    }

    public static c u() {
        if (f87840n == null) {
            f87840n = new c(MApplication.n());
        }
        return f87840n;
    }

    public int A() {
        return this.f87845e;
    }

    public void B() {
        if (this.f87841a == null) {
            return;
        }
        this.f87842b.m();
    }

    public void C() {
        String str = h.K;
        int i10 = h.L;
        try {
            com.wufan.friend.chat.rpc.b bVar = this.f87842b;
            if (bVar == null || bVar.o(str, i10)) {
                this.f87842b = new com.wufan.friend.chat.rpc.b(str, i10);
            } else {
                this.f87842b.d();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public boolean D() {
        FriendAccountInfo friendAccountInfo = this.f87846f;
        return friendAccountInfo != null && friendAccountInfo.isBanned();
    }

    public boolean E(String uid) {
        if (TextUtils.isEmpty(uid)) {
            return false;
        }
        Iterator<FriendBean> it2 = this.f87850j.iterator();
        while (it2.hasNext()) {
            FriendBean next = it2.next();
            if (System.currentTimeMillis() - next.getTimestamp() > 15000) {
                it2.remove();
            } else {
                if (uid.equals(next.getUid() + "")) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean F() {
        return this.f87842b.n() && this.f87844d;
    }

    public boolean G(String str) {
        return Pattern.compile("[0-9]*").matcher(str).matches();
    }

    void H(int roomId, String pwd, boolean elite) {
        com.join.mgps.socket.fight.arena.b bVar = this.f87847g;
        if (bVar != null) {
            if (bVar.d().s()) {
                this.f87847g.f(ArenaRequestFactory.joinRoom(z(), roomId, pwd, elite));
                return;
            }
            ArenaRequest arenaRequestLogin = ArenaRequestFactory.login(z());
            arenaRequestLogin.isRefreshing = true;
            arenaRequestLogin.isElite = false;
            this.f87847g.f(arenaRequestLogin);
        }
    }

    public void K() {
        UserInfo accountData;
        Context context = this.f87841a;
        if (context == null || (accountData = AccountUtil_.getInstance_(context).getAccountData()) == null) {
            return;
        }
        L(accountData.getUid(), accountData.getToken());
    }

    public void L(int uid, String token) {
        if (this.f87841a == null) {
            return;
        }
        this.f87842b.q(String.valueOf(uid), token);
    }

    public void M() {
        com.wufan.friend.chat.rpc.b bVar;
        try {
            this.f87844d = false;
            this.f87845e = 1;
            this.f87846f = null;
            if (this.f87841a == null || (bVar = this.f87842b) == null || !bVar.n()) {
                return;
            }
            this.f87842b.e();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void N() {
        LinkedList<FriendInviteBean> linkedList = this.f87849i;
        if (linkedList == null || linkedList.size() <= 0) {
            return;
        }
        org.greenrobot.eventbus.c.f().q(this.f87849i.getFirst());
    }

    public void O() {
        LinkedList<FriendInviteBean> linkedList = this.f87849i;
        FriendInviteBean friendInviteBeanPop = (linkedList == null || linkedList.size() <= 0) ? null : this.f87849i.pop();
        if (friendInviteBeanPop != null) {
            FriendBean friendBean = new FriendBean();
            friendBean.setRoomPwd(friendInviteBeanPop.getRoomPasswd());
            friendBean.setRoomId(friendInviteBeanPop.getLobbyRoomId());
            friendBean.setElite(friendInviteBeanPop.isEliteField());
            friendBean.setSource(friendInviteBeanPop.getSource());
            p(friendBean);
        }
        LinkedList<FriendInviteBean> linkedList2 = this.f87849i;
        if (linkedList2 == null || linkedList2.size() <= 0) {
            return;
        }
        this.f87849i.clear();
    }

    public void P() {
        FriendInviteBean friendInviteBeanPop;
        LinkedList<FriendInviteBean> linkedList = this.f87849i;
        if (linkedList != null && linkedList.size() > 0 && (friendInviteBeanPop = this.f87849i.pop()) != null) {
            w wVar = new w(5);
            wVar.m(friendInviteBeanPop.getFromAccountId());
            org.greenrobot.eventbus.c.f().q(wVar);
        }
        N();
    }

    public void Q() {
        FriendInviteBean friendInviteBeanPop;
        LinkedList<FriendInviteBean> linkedList = this.f87849i;
        if (linkedList != null && linkedList.size() > 0 && (friendInviteBeanPop = this.f87849i.pop()) != null) {
            new w(5).m(friendInviteBeanPop.getFromAccountId());
        }
        N();
    }

    public void R(FriendInviteBean bean) {
        FriendInviteBean first;
        LinkedList<FriendInviteBean> linkedList = this.f87849i;
        if (linkedList == null || bean == null) {
            return;
        }
        if (linkedList.size() >= 5) {
            first = this.f87849i.size() > 0 ? this.f87849i.getFirst() : null;
            if (!q.J(getContext())) {
                org.greenrobot.eventbus.c.f().q(first);
                return;
            }
            Activity activityX = q.x();
            if (activityX == null || !(activityX instanceof FriendInviteActivity)) {
                org.greenrobot.eventbus.c.f().q(first);
                return;
            }
            return;
        }
        this.f87849i.addLast(bean);
        first = this.f87849i.size() > 0 ? this.f87849i.getFirst() : null;
        if (!q.J(getContext())) {
            org.greenrobot.eventbus.c.f().q(first);
            return;
        }
        Activity activityX2 = q.x();
        if (activityX2 == null || !(activityX2 instanceof FriendInviteActivity)) {
            org.greenrobot.eventbus.c.f().q(first);
        }
    }

    public void S(FriendAccountInfo accountInfo) {
        this.f87846f = accountInfo;
    }

    public void T(boolean logged) {
        this.f87844d = logged;
    }

    public void U(int state) {
        OnlineState onlineState;
        if (this.f87841a == null) {
            return;
        }
        if (state == 0) {
            onlineState = OnlineState.ONLINE;
        } else {
            onlineState = state == 1 ? OnlineState.INVISIBLE : OnlineState.OFFLINE;
        }
        this.f87842b.s(onlineState);
    }

    public void V(FriendBean opponet) {
        this.f87848h = opponet;
    }

    public void W(int state) {
        this.f87845e = state;
    }

    boolean Y(String gameId) {
        try {
            DownloadTask downloadTaskG = f.M().G(gameId);
            return downloadTaskG != null && !TextUtils.isEmpty(downloadTaskG.getFight_fun()) && downloadTaskG.getFight_fun().length() >= 7 && downloadTaskG.getFight_fun().toCharArray()[6] == '1';
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return false;
    }

    public void Z() {
        try {
            com.join.mgps.socket.fight.arena.b bVar = this.f87847g;
            if (bVar != null && bVar.d() != null) {
                this.f87847g.d().A(this.f87853m);
            }
            com.join.mgps.socket.fight.arena.b bVar2 = this.f87847g;
            if (bVar2 != null) {
                bVar2.g();
                this.f87847g.stopService();
                this.f87847g = null;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void e(final FriendBean bean) {
        if (bean == null) {
            return;
        }
        bean.setTimestamp(System.currentTimeMillis());
        this.f87850j.add(bean);
        org.greenrobot.eventbus.c.f().q(new w(10));
        this.f87843c.postDelayed(new Runnable() { // from class: com.wufan.friend.chat.b
            @Override // java.lang.Runnable
            public final void run() {
                this.f87838b.I(bean);
            }
        }, 15000L);
    }

    public void f(Activity context) {
        try {
            if (this.f87847g == null) {
                com.join.mgps.socket.fight.arena.b bVar = new com.join.mgps.socket.fight.arena.b(context, this.f87852l);
                this.f87847g = bVar;
                bVar.bindService();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void g() {
        this.f87844d = false;
        if (this.f87841a == null) {
            return;
        }
        this.f87842b.e();
        this.f87842b.d();
    }

    Context getContext() {
        Activity activity = MApplication.f3182z.getActivity();
        this.f87841a = activity;
        if (activity == null) {
            this.f87841a = q.x();
        }
        if (this.f87841a == null) {
            this.f87841a = MApplication.n();
        }
        return this.f87841a;
    }

    public void h(String msg) {
        com.wufan.friend.chat.rpc.b bVar = this.f87842b;
        if (bVar == null) {
            return;
        }
        bVar.c(msg);
    }

    public void i(int action, long roomId) {
        ChatRoomArgs.State state;
        try {
            com.wufan.friend.chat.rpc.b bVar = this.f87842b;
            if (bVar == null) {
                return;
            }
            if (action == 0) {
                state = ChatRoomArgs.State.JOIN;
            } else {
                state = action == 1 ? ChatRoomArgs.State.LEAVE : null;
            }
            bVar.b(state, roomId, Integer.parseInt(AccountUtil_.getInstance_(this.f87841a).getUid()));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public boolean j(ArenaResponse response) {
        if (w() == null) {
            return false;
        }
        this.f87853m.onServerResponse(response);
        return true;
    }

    void k(String gameId) {
        DownloadTask downloadTaskG;
        Context context = getContext();
        if (TextUtils.isEmpty(gameId) || (downloadTaskG = f.M().G(gameId)) == null) {
            return;
        }
        if (!m.j(context)) {
            a3.b(context).d("无网络连接");
            return;
        }
        if (IntentUtil.getInstance().goLoginBattle(context)) {
            return;
        }
        if (UtilsMy.X(context, downloadTaskG) == null) {
            a3.b(context).d("正在下载插件...");
            return;
        }
        com.join.mgps.socket.fight.arena.b bVar = this.f87847g;
        if (bVar == null || bVar.d() == null) {
            return;
        }
        if (this.f87847g.d().s()) {
            this.f87847g.f(ArenaRequestFactory.createRoom(z(), gameId, 0, AccountUtil_.getInstance_(context).getAccountData().getUid(), true));
            return;
        }
        ArenaRequest arenaRequestLogin = ArenaRequestFactory.login(z());
        arenaRequestLogin.isRefreshing = true;
        arenaRequestLogin.isElite = false;
        this.f87847g.f(arenaRequestLogin);
    }

    public int l(String txt) {
        try {
            Matcher matcher = Pattern.compile("\\$(.*?)\\$").matcher(txt);
            while (matcher.find()) {
                String strGroup = matcher.group(1);
                if (!TextUtils.isEmpty(strGroup)) {
                    String strTrim = new String(o.b().f(strGroup.getBytes())).trim();
                    if (G(strTrim)) {
                        return Integer.parseInt(strTrim);
                    }
                }
            }
            return 0;
        } catch (Exception e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public String m(int uid) {
        try {
            return String.format("复制口令$%s$打开悟饭游戏厅，加我好友【下载地址https://tuis.5fun.com/?aid=7Fp12l】", new String(o.b().g(String.format("%10d", Integer.valueOf(uid)).getBytes())));
        } catch (Exception e10) {
            e10.printStackTrace();
            return "复制口令$%s$打开悟饭游戏厅，加我好友【下载地址https://tuis.5fun.com/?aid=7Fp12l】";
        }
    }

    public void n(int uid, int roomId, String roomPwd, boolean elite, long gameId) {
        com.wufan.friend.chat.rpc.b bVar = this.f87842b;
        if (bVar == null) {
            return;
        }
        bVar.f(uid, roomId, roomPwd, elite, gameId, Y(gameId + ""));
    }

    public void o(FriendBean bean) {
        UtilsMy.A0(getContext(), 1, "", "FIGHT_LOBBY", new a(bean));
    }

    public void p(FriendBean bean) {
        this.f87848h = bean;
        if (bean == null) {
            return;
        }
        bean.setAction("join");
        H(bean.getRoomId(), bean.getRoomPwd(), bean.isElite());
    }

    public void q(int action, int type, final long gameId, final int roomId, final int uid) {
        PlayGameArgs.State state;
        if (this.f87842b == null) {
            return;
        }
        if (action == 0) {
            state = PlayGameArgs.State.START;
        } else {
            state = action == 2 ? PlayGameArgs.State.OVER : null;
        }
        final PlayGameArgs.State state2 = state;
        final PlayType playTypeX = x(type);
        this.f87843c.post(new Runnable() { // from class: com.wufan.friend.chat.a
            @Override // java.lang.Runnable
            public final void run() {
                this.f87832b.J(state2, playTypeX, gameId, roomId, uid);
            }
        });
        if (action != 2 || roomId == 0) {
            return;
        }
        i(1, roomId);
    }

    public FriendAccountInfo r() {
        return this.f87846f;
    }

    public FriendInviteBean s() {
        if (this.f87849i.size() > 0) {
            return this.f87849i.getFirst();
        }
        return null;
    }

    public void t() {
        if (this.f87841a == null) {
            return;
        }
        this.f87842b.i();
    }

    public void v(int uid, long gameId) {
        com.wufan.friend.chat.rpc.b bVar = this.f87842b;
        if (bVar == null) {
            return;
        }
        bVar.j(uid, gameId);
    }

    public FriendBean w() {
        return this.f87848h;
    }

    PlayType x(int type) {
        return (type <= 0 || type >= 14) ? PlayType.STAND : PlayType.NET_BATTLE;
    }

    public void y(long gameId, String gameSeries, List<Long> downloadGameIds, int locationTypeValue) {
        if (this.f87841a == null) {
            return;
        }
        if (gameSeries == null) {
            gameSeries = "";
        }
        this.f87842b.l(gameId, gameSeries, downloadGameIds, locationTypeValue);
    }

    String z() {
        return ArenaConstants.REGISTER_TYPE_PUBLIC;
    }
}
