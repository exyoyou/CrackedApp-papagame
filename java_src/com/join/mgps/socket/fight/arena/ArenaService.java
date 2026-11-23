package com.join.mgps.socket.fight.arena;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import app.mgsim.arena.AreaInfo;
import app.mgsim.arena.ArenaConstants;
import app.mgsim.arena.ArenaLobbyServer;
import app.mgsim.arena.ArenaRequest;
import app.mgsim.arena.ArenaRequestFactory;
import app.mgsim.arena.ArenaResponse;
import app.mgsim.arena.ArenaSocketThread;
import app.mgsim.arena.ByteBufferBuilderFactory;
import app.mgsim.arena.SocketError;
import app.mgsim.arena.SocketListener;
import app.mgsim.arena.SocketUtils;
import app.mgsim.arena.UDPHelper;
import com.join.android.app.common.utils.m;
import com.join.mgps.Util.a3;
import com.join.mgps.Util.g1;
import com.join.mgps.dto.ResultArenaBean;
import com.join.mgps.rpc.impl.k;
import com.join.mgps.rpc.l;
import com.papa91.battle.protocol.AreaOnlinePeopleCount;
import com.papa91.battle.protocol.BattleArea;
import com.papa91.battle.protocol.Params;
import com.papa91.battle.protocol.Response;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Bean;
import org.androidannotations.annotations.EService;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;

/* JADX INFO: loaded from: classes3.dex */
@EService
public class ArenaService extends Service {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final String f73038s = "ArenaService";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private AreaInfo f73041d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private UDPHelper f73042e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private AtomicLong f73044g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ConcurrentHashMap<Long, ArenaRequest> f73045h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Bean
    com.join.mgps.Util.b f73046i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    l f73047j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    l f73048k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private ArenaSocketThread f73049l;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private BattleArea f73053p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private ArenaRequest f73054q;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f73039b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile boolean f73040c = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile int f73043f = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private HashSet<SocketListener.NotifyObserver> f73050m = new HashSet<>();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final SocketListener f73051n = new a();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private ConcurrentHashMap<Integer, ArenaResponse> f73052o = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f73055r = 0;

    class a implements SocketListener {
        a() {
        }

        @Override // app.mgsim.arena.SocketListener
        public void executeRequest(ArenaRequest request) {
            ArenaService.this.k(request);
        }

        @Override // app.mgsim.arena.SocketListener
        public void onError(SocketError socketError) {
            ArenaService.this.y("-----onError  ----- ");
            ArenaService.this.f73041d = null;
            ArenaService.this.f73040c = false;
            ArenaService.this.f73042e.stop();
            ArenaService.this.f73049l.mHeartBeatThread.stop();
            ArenaService.this.w(socketError);
        }

        @Override // app.mgsim.arena.SocketListener
        public int onServerResponse(Object response) throws Exception {
            ArenaService.this.r(response);
            return 0;
        }

        @Override // app.mgsim.arena.SocketListener
        public void onSocketConnected() {
            ArenaService.this.y("-----mArenaListener onSocketConnected----");
            ArenaService.this.f73049l.mHeartBeatThread.setContinue(true);
            ArenaService.this.f73049l.setLastHeartBeatStartTime(System.currentTimeMillis());
            new Thread(ArenaService.this.f73049l.mHeartBeatThread).start();
            String token = ArenaService.this.f73046i.getAccountData().getToken();
            int uid = ArenaService.this.f73046i.getAccountData().getUid();
            if (ArenaService.this.j(token, uid)) {
                ArenaService.this.f73049l.sendDataToServer(ByteBufferBuilderFactory.login(token, uid, "", ArenaService.this.l(ArenaService.this.f73054q != null ? ArenaService.this.f73054q : ArenaRequestFactory.login(ArenaConstants.REGISTER_TYPE_PUBLIC))));
            }
        }

        @Override // app.mgsim.arena.SocketListener
        public void onSocketDisconnected() {
            ArenaService.this.y("-----mArenaListener onSocketDisconnected----");
            onError(SocketUtils.createSocketErrorForBadNetwork("与大厅服务器连接断开！"));
        }
    }

    public class b extends Binder {
        public b() {
        }

        public ArenaService getService() {
            return ArenaService.this;
        }
    }

    private void B(ArenaResponse arenaResponse, ArenaRequest request, Response response) {
        arenaResponse.request = request;
        arenaResponse.responseType = request.request_type;
        if (response.getStatusCode() == Response.StatusCode.RESULT_SUCCESS) {
            y("----responseByType ---- type:" + arenaResponse.responseType + "---success");
            arenaResponse.responseCode = 1;
            if (arenaResponse.responseType == ArenaConstants.ArenaCommand.CMD_LOGIN) {
                this.f73040c = true;
            }
            v(c.l(arenaResponse, response));
            return;
        }
        y("----responseByType ---- type:" + arenaResponse.responseType + "---failure");
        ArenaResponse arenaResponseK = c.k(arenaResponse, response);
        if (arenaResponseK.responseType != ArenaConstants.ArenaCommand.CMD_LOGIN) {
            v(arenaResponseK);
        } else {
            this.f73049l.handleExit(SocketUtils.createSocketError(6, c.g(arenaResponseK)));
        }
    }

    private void F(AreaOnlinePeopleCount count) {
        y("updateAreaOnlinePeopleCounts bj:" + count.getBj() + "---sh:" + count.getSh() + "---gz:" + count.getGz());
        this.f73042e.updateMaps(count);
    }

    private void G(int pingValue) {
        this.f73043f = pingValue;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean j(String token, int uid) {
        synchronized (this.f73039b) {
            if (!TextUtils.isEmpty(token) && uid > 0) {
                return true;
            }
            this.f73049l.handleExit(SocketUtils.createSocketError(4, "检测到你还没有登陆，请登陆！"));
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long l(ArenaRequest request) {
        if (this.f73044g == null) {
            this.f73044g = new AtomicLong(2L);
        }
        request.requestId = this.f73044g.getAndIncrement();
        y("generateRequestId--request info " + request.toString());
        this.f73045h.put(Long.valueOf(request.requestId), request);
        return request.requestId;
    }

    private int p() {
        AreaInfo areaInfo;
        try {
            BattleArea battleAreaN = n();
            if (battleAreaN == null || (areaInfo = m().get(Integer.valueOf(battleAreaN.getNumber()))) == null) {
                return this.f73043f;
            }
            y("getPingValue pingTime by area:" + battleAreaN.getNumber() + "--- ping time :" + ((int) areaInfo.getPingTime()));
            return (int) areaInfo.getPingTime();
        } catch (Exception e10) {
            y("getPingValue Exception:" + e10.getMessage());
            return this.f73043f;
        }
    }

    private void u(ArenaRequest request) {
        try {
            this.f73054q = request;
            String token = this.f73046i.getAccountData().getToken();
            int uid = this.f73046i.getAccountData().getUid();
            if (j(token, uid)) {
                ResultArenaBean<ArenaLobbyServer> resultArenaBeanA0 = this.f73048k.a0(uid, token);
                if (resultArenaBeanA0 == null) {
                    int i10 = this.f73055r;
                    if (i10 <= 3) {
                        this.f73055r = i10 + 1;
                        u(request);
                    } else {
                        this.f73049l.handleExit(SocketUtils.createSocketErrorForBadNetwork("获取对战大厅服务器地址失败！"));
                    }
                } else if (resultArenaBeanA0.getError() == 0) {
                    AreaInfo lobbyServer = resultArenaBeanA0.getData().getLobbyServer();
                    this.f73041d = lobbyServer;
                    this.f73042e.initUDPAndStart(resultArenaBeanA0.getData().getPing());
                    this.f73053p = c.c(this.f73041d.getArea());
                    this.f73049l.setLobbyServer(lobbyServer.getHost(), lobbyServer.getPort());
                    new Thread(this.f73049l).start();
                } else if (resultArenaBeanA0.getError() == 701) {
                    y("handleLogin user need retry login");
                    this.f73049l.handleExit(SocketUtils.createSocketError(3, "你的手机登陆已经失效，请重新登陆!"));
                    a("你的手机登陆已经失效，请重新登陆!");
                } else {
                    int i11 = this.f73055r;
                    if (i11 <= 3) {
                        this.f73055r = i11 + 1;
                        u(request);
                    } else {
                        this.f73049l.handleExit(SocketUtils.createSocketErrorForBadNetwork("获取对战大厅服务器地址失败！"));
                    }
                }
            }
        } catch (Exception e10) {
            y("handleLogin exception: " + e10.getMessage());
            y("handleLogin retryCount: " + this.f73055r);
            int i12 = this.f73055r;
            if (i12 > 3) {
                this.f73049l.handleExit(SocketUtils.createSocketErrorForBadNetwork("获取对战大厅服务器地址失败！"));
            } else {
                this.f73055r = i12 + 1;
                u(request);
            }
        }
    }

    public void A(Object object) {
        synchronized (this.f73050m) {
            if (this.f73050m.contains(object)) {
                this.f73050m.remove(object);
            }
        }
    }

    @Background
    public void C(ArenaRequest request) {
        this.f73051n.executeRequest(request);
    }

    public void D(BattleArea battleArea) {
        this.f73053p = battleArea;
    }

    public void E(ArenaResponse response) {
        this.f73052o.clear();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void a(String msg) {
        a3.b(this).d(msg);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void i() {
        y("---cancelSubscribe----");
        if (m.j(this) && s()) {
            C(ArenaRequestFactory.cancelSubscribeGameRoom());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void k(ArenaRequest request) {
        String str = request.request_type;
        y("dispatchRequest-->type :" + str);
        synchronized (this.f73039b) {
            if (str.equals(ArenaConstants.ArenaCommand.CMD_LOGIN)) {
                q(request);
            } else {
                if (!s()) {
                    this.f73049l.handleExit(SocketUtils.createSocketErrorForBadNetwork("未登陆，需要重新登陆！"));
                    return;
                }
                if (str.equals(ArenaConstants.ArenaCommand.CMD_CREATE_GAME_ROOM)) {
                    this.f73049l.sendDataToServer(ByteBufferBuilderFactory.createRoom(this.f73046i.getAccountData().getUid(), request.gameId, l(request), p(), request.coins, request.allowPeripheralJoin, request.allowPCJoin, request.allowSpectatorJoin, c.o(getApplicationContext()), request.isFromLive));
                    return;
                }
                if (str.equals(ArenaConstants.ArenaCommand.CMD_SUBSCRIBE_GAME_ROOMLIST)) {
                    this.f73049l.sendDataToServer(ByteBufferBuilderFactory.subscribeGameRoom(request.collectionId, request.roomType == 2 ? Params.RoomType.ELITE : Params.RoomType.NORMAL, l(request)));
                    return;
                }
                if (str.equals(ArenaConstants.ArenaCommand.CMD_SET_ROOM_CHALLENGE_COINS_ATTR)) {
                    this.f73049l.sendDataToServer(ByteBufferBuilderFactory.setChallengeCoins(request.roomId, request.coins, l(request)));
                    return;
                }
                if (str.equals(ArenaConstants.ArenaCommand.CMD_SET_ROOM_PASSWORD_ATTR)) {
                    this.f73049l.sendDataToServer(ByteBufferBuilderFactory.setRoomPassword(request.roomId, request.password, l(request)));
                    return;
                }
                if (str.equals(ArenaConstants.ArenaCommand.CMD_SET_ROOM_SERVER_PLAY_MODE)) {
                    this.f73049l.sendDataToServer(ByteBufferBuilderFactory.setRoomServerPlayMode(request.playMode, request.roomId, l(request)));
                } else {
                    if (str.equals(ArenaConstants.ArenaCommand.CMD_SET_ROOM_PERIPHERAL_JOIN_ATTR)) {
                        this.f73049l.sendDataToServer(ByteBufferBuilderFactory.setAllowPeripheralJoin(request.roomId, request.allowPeripheralJoin, l(request)));
                        return;
                    }
                    if (str.equals(ArenaConstants.ArenaCommand.CMD_SET_ROOM_PC_JOIN_ALTR)) {
                        this.f73049l.sendDataToServer(ByteBufferBuilderFactory.setAllowPcJoin(request.roomId, request.allowPCJoin, l(request)));
                        return;
                    }
                    if (str.equals(ArenaConstants.ArenaCommand.CMD_SET_ROOM_SPECTATOR_JOIN_ATTR)) {
                        this.f73049l.sendDataToServer(ByteBufferBuilderFactory.setAllowSpectatorJoin(request.roomId, request.allowSpectatorJoin, l(request)));
                        return;
                    }
                    if (str.equals(ArenaConstants.ArenaCommand.CMD_JOIN_ROOM)) {
                        this.f73049l.sendDataToServer(ByteBufferBuilderFactory.joinRoom(request.roomId, request.password, c.o(getApplicationContext()), p(), l(request)));
                        return;
                    }
                    if (str.equals(ArenaConstants.ArenaCommand.CMD_SET_ROOM_CLOSE_P1_POSITION)) {
                        this.f73049l.sendDataToServer(ByteBufferBuilderFactory.closeRoomPosition(request.roomId, request.position, request.isClosePosition, l(request)));
                        return;
                    }
                    if (str.equals(ArenaConstants.ArenaCommand.CMD_SET_ROOM_CLOSE_P2_POSITION)) {
                        this.f73049l.sendDataToServer(ByteBufferBuilderFactory.closeRoomPosition(request.roomId, request.position, request.isClosePosition, l(request)));
                        return;
                    }
                    if (str.equals(ArenaConstants.ArenaCommand.CMD_SET_ROOM_CLOSE_P3_POSITION)) {
                        this.f73049l.sendDataToServer(ByteBufferBuilderFactory.closeRoomPosition(request.roomId, request.position, request.isClosePosition, l(request)));
                        return;
                    }
                    if (str.equals(ArenaConstants.ArenaCommand.CMD_SET_ROOM_CLOSE_P4_POSITION)) {
                        this.f73049l.sendDataToServer(ByteBufferBuilderFactory.closeRoomPosition(request.roomId, request.position, request.isClosePosition, l(request)));
                        return;
                    }
                    if (str.equals(ArenaConstants.ArenaCommand.CMD_LEAVE_ROOM)) {
                        this.f73049l.sendDataToServer(ByteBufferBuilderFactory.leaveRoom(request.roomId, l(request)));
                        return;
                    }
                    if (str.equals(ArenaConstants.ArenaCommand.CMD_KICK_OUT_ROOM_POSITION)) {
                        this.f73049l.sendDataToServer(ByteBufferBuilderFactory.kickOutRoomPosition(request.roomId, request.position, l(request)));
                        return;
                    }
                    if (str.equals(ArenaConstants.ArenaCommand.CMD_QUICK_JOIN_ROOM)) {
                        this.f73049l.sendDataToServer(ByteBufferBuilderFactory.fastJoinRoom(request.gameId, request.collectionId, p(), c.o(getApplicationContext()), l(request)));
                        return;
                    }
                    if (str.equals(ArenaConstants.ArenaCommand.CMD_SEARCH_ROOM_BY_ID)) {
                        this.f73049l.sendDataToServer(ByteBufferBuilderFactory.searchRoomByID(request.roomId, l(request)));
                        return;
                    }
                    if (str.equals(ArenaConstants.ArenaCommand.CMD_LOBBY_START_GAME)) {
                        this.f73049l.sendDataToServer(ByteBufferBuilderFactory.lobbyStartGame(request.roomId, l(request)));
                        return;
                    }
                    if (str.equals(ArenaConstants.ArenaCommand.CMD_PLAYER_READY_GAME)) {
                        this.f73049l.sendDataToServer(ByteBufferBuilderFactory.playerReadyGame(request.roomId, l(request)));
                        return;
                    }
                    if (str.equals(ArenaConstants.ArenaCommand.CMD_CANCEL_SUBSCRIBE_GAME_ROOM)) {
                        this.f73049l.sendDataToServer(ByteBufferBuilderFactory.cancelSubscribeGameRoom(l(request)));
                        return;
                    }
                    if (str.equals(ArenaConstants.ArenaCommand.CMD_SHARE_JOIN_ROOM)) {
                        this.f73049l.sendDataToServer(ByteBufferBuilderFactory.shareJoinRoom(request.gameId, request.roomId, request.fightId, request.password, p(), c.o(getApplicationContext()), l(request)));
                        return;
                    }
                    if (str.equals(ArenaConstants.ArenaCommand.CMD_SPECTATOR_SIT)) {
                        this.f73049l.sendDataToServer(ByteBufferBuilderFactory.spectatorSit(request.roomId, request.position, p(), l(request)));
                        return;
                    }
                    if (str.equals(ArenaConstants.ArenaCommand.CMD_GET_KICK_OUT_ROOM_POSITION_INFO)) {
                        this.f73049l.sendDataToServer(ByteBufferBuilderFactory.getKickPlayerInfo(request.roomId, request.position, p(), l(request)));
                        return;
                    }
                    if (str.equals(ArenaConstants.ArenaCommand.CMD_GET_FRAMEFORWARD_SERVER)) {
                        this.f73049l.sendDataToServer(ByteBufferBuilderFactory.getFrameForwardServer(request.roomId, l(request)));
                        return;
                    }
                    if (str.equals(ArenaConstants.ArenaCommand.CMD_JOIN_BATTLE_AREA)) {
                        this.f73049l.sendDataToServer(ByteBufferBuilderFactory.joinBattleArea(request.battleArea, l(request)));
                    } else if (str.equals(ArenaConstants.ArenaCommand.CMD_SEND_SCORE_BOARD)) {
                        this.f73049l.sendDataToServer(ByteBufferBuilderFactory.battleScoreBoardReq(request.roomId, request.uid, l(request), request.battleScoreBoard));
                    } else if (str.equals(ArenaConstants.ArenaCommand.CMD_SEND_ROM_LOADED)) {
                        this.f73049l.sendDataToServer(ByteBufferBuilderFactory.createRomLoadedReq(request.roomId, request.uid, l(request), request.battleScoreBoard));
                    } else if (str.equals(ArenaConstants.ArenaCommand.CMD_SEND_REJOIN_ROOM)) {
                        this.f73049l.sendDataToServer(ByteBufferBuilderFactory.createRejoinRoomReq(request.roomId, request.uid, l(request)));
                    }
                }
            }
        }
    }

    public ConcurrentHashMap<Integer, AreaInfo> m() {
        return this.f73042e.getAreaMaps();
    }

    public BattleArea n() {
        return this.f73053p;
    }

    public ArenaResponse o(int roomId) {
        return this.f73052o.get(Integer.valueOf(roomId));
    }

    @Override // android.app.Service
    @Nullable
    public IBinder onBind(Intent intent) {
        y("---service onBind----");
        return new b();
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.f73047j = com.join.mgps.rpc.impl.l.n0();
        this.f73048k = k.n0();
        y("---service onCreate----");
        this.f73049l = new ArenaSocketThread(this.f73051n);
        AtomicLong atomicLong = new AtomicLong(2L);
        this.f73044g = atomicLong;
        atomicLong.getAndDecrement();
        this.f73045h = new ConcurrentHashMap<>();
        this.f73042e = new UDPHelper(this);
    }

    @Override // android.app.Service
    public void onDestroy() {
        y("---service onDestroy----");
        this.f73049l.mHeartBeatThread.stop();
        this.f73045h.clear();
        this.f73044g = null;
        super.onDestroy();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int flags, int startId) {
        y("---service onStartCommand----");
        if (intent != null && intent.getAction() != null && !TextUtils.isEmpty(intent.getAction())) {
            String action = intent.getAction();
            y("---service onStartCommand----action-->" + action);
            if (ArenaConstants.ACTION_LEAVE_ROOM.equals(action)) {
                t(intent.getIntExtra("gameId", 0));
            } else if (ArenaConstants.ACTION_CANCEL_SUBSCRIBE.equals(action)) {
                i();
            }
        }
        return super.onStartCommand(intent, 1, startId);
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        y("---service onUnbind----");
        return super.onUnbind(intent);
    }

    void q(ArenaRequest request) {
        this.f73055r = 0;
        u(request);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void r(Object res) {
        int iCurrentTimeMillis;
        synchronized (this.f73039b) {
            Response response = (Response) res;
            long requestId = response.getRequestId();
            y("handleServerResponse  requestId :" + requestId);
            ArenaResponse arenaResponse = new ArenaResponse();
            if (requestId == 0) {
                arenaResponse.messageType = 2;
                arenaResponse.responseCode = 1;
                Response.ProtoType type = response.getType();
                y("handleServerResponse server push message type : " + type);
                if (type == Response.ProtoType.PONG) {
                    if (response.getPong() != null && (iCurrentTimeMillis = (int) (System.currentTimeMillis() - response.getPong().getTimestamp())) >= 0) {
                        y("ping value :" + iCurrentTimeMillis);
                        this.f73043f = iCurrentTimeMillis;
                    }
                    return;
                }
                if (type == Response.ProtoType.ACCOUNT_KICK_BROADCAST) {
                    this.f73049l.handleExit(SocketUtils.createSocketError(2, "检测到你的账户在另外一台手机登陆!"));
                    return;
                }
                if (type == Response.ProtoType.UPDATE_AREA_ONLINE_PEOPLE_BROADCAST) {
                    arenaResponse.data = response.getAreaOnlinePeopleCount();
                    arenaResponse.responseType = ArenaConstants.ArenaCommand.PUSH_UPDATE_AREA_ONLINE_PEOPLE_BROADCAST;
                    F(response.getAreaOnlinePeopleCount());
                } else {
                    arenaResponse = c.j(arenaResponse, response);
                }
                String str = arenaResponse.responseType;
                if (str == ArenaConstants.ArenaCommand.PUSH_DISSOLVE_ROOM || str == ArenaConstants.ArenaCommand.PUSH_UPDATE_ROOM || str == ArenaConstants.ArenaCommand.PUSH_KICK_ROOM_BROADCAST) {
                    this.f73052o.put(Integer.valueOf(response.getRoom().getRoomId()), arenaResponse);
                }
                v(arenaResponse);
            } else {
                ArenaRequest arenaRequest = this.f73045h.get(Long.valueOf(requestId));
                if (arenaRequest == null) {
                    y("handleServerResponse get request is null by request id :" + requestId);
                    return;
                }
                arenaResponse.messageType = 1;
                B(arenaResponse, arenaRequest, response);
            }
        }
    }

    public boolean s() {
        return this.f73041d != null && this.f73040c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void t(int roomId) {
        if (m.j(this) && s()) {
            y("leaved room");
            C(ArenaRequestFactory.leaveRoom(roomId));
            com.wufan.friend.chat.c.u().i(1, roomId);
        }
    }

    void v(ArenaResponse response) {
        try {
            synchronized (this.f73050m) {
                if (com.wufan.friend.chat.c.u().j(response)) {
                    return;
                }
                Iterator<SocketListener.NotifyObserver> it2 = this.f73050m.iterator();
                while (it2.hasNext()) {
                    it2.next().onServerResponse(response);
                }
            }
        } catch (Exception e10) {
            y("notifyObservers exception:" + e10.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void w(SocketError socketError) {
        synchronized (this.f73050m) {
            Iterator<SocketListener.NotifyObserver> it2 = this.f73050m.iterator();
            while (it2.hasNext()) {
                it2.next().onError(socketError);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    @Receiver(actions = {p5.a.B})
    public void x() {
        y("----receiver on onUID Changed---");
        this.f73049l.handleExit(SocketUtils.createSocketError(5, "切换账户，需要重新登陆"));
    }

    void y(String msg) {
        g1.b("ArenaService", msg);
    }

    public void z(SocketListener.NotifyObserver observer) {
        synchronized (this.f73050m) {
            if (!this.f73050m.contains(observer)) {
                this.f73050m.add(observer);
            }
        }
    }
}
