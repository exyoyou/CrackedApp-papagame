package app.mgsim.arena;

import android.text.TextUtils;
import com.papa91.battle.protocol.BattleArea;
import com.papa91.battle.protocol.Params;
import com.papa91.battle.protocol.Request;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes7.dex */
public class ByteBufferBuilderFactory {
    private static final int version = 2;

    public static ByteBuffer battleScoreBoardReq(int i10, int i11, long j10, String str) {
        return createByteBufferByBattleRequest(Request.newBuilder().setType(Request.ProtoType.BATTLE_SCORE_BOARD).setParams(Params.newBuilder().setChannelType(Params.ChannelType.ANDROID).setUid(i11).setRoomId(i10).setBattleScoreBoard(str)).setVersion(2).setRequestId(j10).build());
    }

    public static ByteBuffer cancelSubscribeGameRoom(long j10) {
        Request.Builder builderNewBuilder = Request.newBuilder();
        builderNewBuilder.setType(Request.ProtoType.CANCEL_SUBSCRIBE_GAME_COLLECTION);
        builderNewBuilder.setParams(Params.newBuilder().build());
        builderNewBuilder.setVersion(2).setRequestId(j10);
        return createByteBufferByBattleRequest(builderNewBuilder.build());
    }

    public static ByteBuffer closeRoomPosition(int i10, int i11, boolean z10, long j10) {
        Request.Builder builderNewBuilder = Request.newBuilder();
        if (i11 == 1) {
            builderNewBuilder.setType(Request.ProtoType.SET_ROOM_CLOSE_P1_POSITION);
        } else if (i11 == 2) {
            builderNewBuilder.setType(Request.ProtoType.SET_ROOM_CLOSE_P2_POSITION);
        } else if (i11 == 3) {
            builderNewBuilder.setType(Request.ProtoType.SET_ROOM_CLOSE_P3_POSITION);
        } else if (i11 == 4) {
            builderNewBuilder.setType(Request.ProtoType.SET_ROOM_CLOSE_P4_POSITION);
        }
        builderNewBuilder.setParams(Params.newBuilder().setRoomId(i10).setClosePosition(z10).build());
        builderNewBuilder.setVersion(2).setRequestId(j10);
        return createByteBufferByBattleRequest(builderNewBuilder.build());
    }

    private static ByteBuffer createByteBufferByBattleRequest(Request request) {
        byte[] byteArray = request.toByteArray();
        int length = byteArray.length;
        ByteBuffer byteBufferCreateBuffer = SocketUtils.createBuffer(length + 4);
        byteBufferCreateBuffer.putInt(length);
        byteBufferCreateBuffer.put(byteArray);
        return byteBufferCreateBuffer;
    }

    public static ByteBuffer createRejoinRoomReq(int i10, int i11, long j10) {
        return createByteBufferByBattleRequest(Request.newBuilder().setType(Request.ProtoType.RE_CONNECTION_JOIN_ROOM).setParams(Params.newBuilder().setChannelType(Params.ChannelType.ANDROID).setUid(i11).setRoomId(i10)).setVersion(2).setRequestId(j10).build());
    }

    public static ByteBuffer createRomLoadedReq(int i10, int i11, long j10, String str) {
        return createByteBufferByBattleRequest(Request.newBuilder().setType(Request.ProtoType.GET_BATTLE_SCORE_BOARD).setParams(Params.newBuilder().setChannelType(Params.ChannelType.ANDROID).setUid(i11).setRoomId(i10).setBattleScoreBoard(str)).setVersion(2).setRequestId(j10).build());
    }

    public static ByteBuffer createRoom(int i10, long j10, long j11, int i11, int i12, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14) {
        return createByteBufferByBattleRequest(Request.newBuilder().setType(Request.ProtoType.CREATE_GAME_ROOM).setParams(Params.newBuilder().setPingVal(i11).setUsePeripheral(z13).setUid(i10).setChallengeCoins(i12).setAllowPeripheralJoin(z10).setAllowPCJoin(z11).setAllowSpectatorJoin(z12).setGameId(j10).setFromLive(z14).build()).setVersion(2).setRequestId(j11).build());
    }

    public static ByteBuffer fastJoinRoom(long j10, int i10, int i11, boolean z10, long j11) {
        Request.Builder builderNewBuilder = Request.newBuilder();
        builderNewBuilder.setType(Request.ProtoType.QUICK_JOIN_ROOM);
        builderNewBuilder.setParams(Params.newBuilder().setGameId(j10).setUsePeripheral(z10).setPingVal(i11).setCollectionId(i10).build());
        builderNewBuilder.setVersion(2).setRequestId(j11);
        return createByteBufferByBattleRequest(builderNewBuilder.build());
    }

    public static ByteBuffer getFrameForwardServer(int i10, long j10) {
        Request.Builder builderNewBuilder = Request.newBuilder();
        builderNewBuilder.setType(Request.ProtoType.GET_UDP_FRAME_SERVER);
        builderNewBuilder.setParams(Params.newBuilder().setRoomId(i10).build());
        builderNewBuilder.setVersion(2).setRequestId(j10);
        return createByteBufferByBattleRequest(builderNewBuilder.build());
    }

    public static ByteBuffer getKickPlayerInfo(int i10, int i11, int i12, long j10) {
        Request.Builder builderNewBuilder = Request.newBuilder();
        builderNewBuilder.setType(Request.ProtoType.GET_KICK_OUT_ROOM_POSITION_INFO);
        builderNewBuilder.setParams(Params.newBuilder().setRoomPositionIndex(i11).setRoomId(i10).setPingVal(i12).build());
        builderNewBuilder.setVersion(2).setRequestId(j10);
        return createByteBufferByBattleRequest(builderNewBuilder.build());
    }

    public static ByteBuffer joinBattleArea(BattleArea battleArea, long j10) {
        Request.Builder builderNewBuilder = Request.newBuilder();
        builderNewBuilder.setType(Request.ProtoType.JOIN_BATTLE_AREA);
        builderNewBuilder.setParams(Params.newBuilder().setBattleArea(battleArea).build());
        builderNewBuilder.setVersion(2).setRequestId(j10);
        return createByteBufferByBattleRequest(builderNewBuilder.build());
    }

    public static ByteBuffer joinRoom(int i10, String str, boolean z10, int i11, long j10) {
        return createByteBufferByBattleRequest(Request.newBuilder().setType(Request.ProtoType.JOIN_ROOM).setParams(TextUtils.isEmpty(str) ? Params.newBuilder().setPingVal(i11).setUsePeripheral(z10).setRoomId(i10).build() : Params.newBuilder().setPingVal(i11).setUsePeripheral(z10).setPassword(str).setRoomId(i10).build()).setVersion(2).setRequestId(j10).build());
    }

    public static ByteBuffer kickOutRoomPosition(int i10, int i11, long j10) {
        Request.Builder builderNewBuilder = Request.newBuilder();
        builderNewBuilder.setType(Request.ProtoType.KICK_OUT_ROOM_POSITION);
        builderNewBuilder.setParams(Params.newBuilder().setRoomId(i10).setRoomPositionIndex(i11).build());
        builderNewBuilder.setVersion(2).setRequestId(j10);
        return createByteBufferByBattleRequest(builderNewBuilder.build());
    }

    public static ByteBuffer leaveRoom(int i10, long j10) {
        return createByteBufferByBattleRequest(Request.newBuilder().setType(Request.ProtoType.LEAVE_ROOM).setParams(Params.newBuilder().setRoomId(i10).build()).setVersion(2).setRequestId(j10).build());
    }

    public static ByteBuffer lobbyStartGame(int i10, long j10) {
        Request.Builder builderNewBuilder = Request.newBuilder();
        builderNewBuilder.setType(Request.ProtoType.LOBBY_START_GAME);
        builderNewBuilder.setParams(Params.newBuilder().setRoomId(i10).build());
        builderNewBuilder.setVersion(2).setRequestId(j10);
        return createByteBufferByBattleRequest(builderNewBuilder.build());
    }

    public static ByteBuffer login(String str, int i10, String str2, long j10) {
        return createByteBufferByBattleRequest(Request.newBuilder().setType(Request.ProtoType.LOGIN).setParams(Params.newBuilder().setChannelType(Params.ChannelType.ANDROID).setDeviceId(str2).setUid(i10).setToken(str).build()).setRequestId(j10).setVersion(2).build());
    }

    public static ByteBuffer ping(long j10) {
        return createByteBufferByBattleRequest(Request.newBuilder().setType(Request.ProtoType.PING).setParams(Params.newBuilder().setTimestamp(System.currentTimeMillis())).setVersion(2).setRequestId(j10).build());
    }

    public static ByteBuffer playerReadyGame(int i10, long j10) {
        Request.Builder builderNewBuilder = Request.newBuilder();
        builderNewBuilder.setType(Request.ProtoType.PLAYER_READY_GAME);
        builderNewBuilder.setParams(Params.newBuilder().setRoomId(i10).build());
        builderNewBuilder.setVersion(2).setRequestId(j10);
        return createByteBufferByBattleRequest(builderNewBuilder.build());
    }

    public static ByteBuffer searchRoomByID(int i10, long j10) {
        Request.Builder builderNewBuilder = Request.newBuilder();
        builderNewBuilder.setType(Request.ProtoType.SEARCH_ROOM_BY_ID);
        builderNewBuilder.setParams(Params.newBuilder().setRoomId(i10).build());
        builderNewBuilder.setVersion(2).setRequestId(j10);
        return createByteBufferByBattleRequest(builderNewBuilder.build());
    }

    public static ByteBuffer setAllowPcJoin(int i10, boolean z10, long j10) {
        return createByteBufferByBattleRequest(Request.newBuilder().setType(Request.ProtoType.SET_ROOM_ALLOW_PC_JOIN).setParams(Params.newBuilder().setAllowPCJoin(z10).setRoomId(i10).build()).setVersion(2).setRequestId(j10).build());
    }

    public static ByteBuffer setAllowPeripheralJoin(int i10, boolean z10, long j10) {
        return createByteBufferByBattleRequest(Request.newBuilder().setType(Request.ProtoType.SET_ROOM_PERIPHERAL_JOIN_ATTR).setParams(Params.newBuilder().setAllowPeripheralJoin(z10).setRoomId(i10).build()).setVersion(2).setRequestId(j10).build());
    }

    public static ByteBuffer setAllowSpectatorJoin(int i10, boolean z10, long j10) {
        return createByteBufferByBattleRequest(Request.newBuilder().setType(Request.ProtoType.SET_ROOM_SPECTATOR_JOIN_ATTR).setParams(Params.newBuilder().setAllowSpectatorJoin(z10).setRoomId(i10).build()).setVersion(2).setRequestId(j10).build());
    }

    public static ByteBuffer setChallengeCoins(int i10, int i11, long j10) {
        return createByteBufferByBattleRequest(Request.newBuilder().setType(Request.ProtoType.SET_ROOM_CHALLENGE_COINS_ATTR).setParams(Params.newBuilder().setChallengeCoins(i11).setRoomId(i10).build()).setVersion(2).setRequestId(j10).build());
    }

    public static ByteBuffer setRoomPassword(int i10, String str, long j10) {
        return createByteBufferByBattleRequest(Request.newBuilder().setType(Request.ProtoType.SET_ROOM_PASSWORD_ATTR).setParams(Params.newBuilder().setPassword(str).setRoomId(i10).build()).setVersion(2).setRequestId(j10).build());
    }

    public static ByteBuffer setRoomServerPlayMode(int i10, int i11, long j10) {
        return createByteBufferByBattleRequest(Request.newBuilder().setType(Request.ProtoType.SET_ROOM_SERVER_PLAY_MODE).setParams(Params.newBuilder().setPlayMode(i10 == 1 ? Params.ServerPlayMode.FAST : Params.ServerPlayMode.ZONE).setRoomId(i11).build()).setVersion(2).setRequestId(j10).build());
    }

    public static ByteBuffer shareJoinRoom(long j10, int i10, long j11, String str, int i11, boolean z10, long j12) {
        Params paramsBuild = TextUtils.isEmpty(str) ? Params.newBuilder().setGameId(j10).setPingVal(i11).setFightId(j11).setUsePeripheral(z10).setRoomId(i10).build() : Params.newBuilder().setPassword(str).setPingVal(i11).setGameId(j10).setFightId(j11).setUsePeripheral(z10).setRoomId(i10).build();
        Request.Builder builderNewBuilder = Request.newBuilder();
        builderNewBuilder.setType(Request.ProtoType.SHARE_JOIN_ROOM);
        builderNewBuilder.setParams(paramsBuild);
        builderNewBuilder.setVersion(2).setRequestId(j12);
        return createByteBufferByBattleRequest(builderNewBuilder.build());
    }

    public static ByteBuffer spectatorSit(int i10, int i11, int i12, long j10) {
        Request.Builder builderNewBuilder = Request.newBuilder();
        builderNewBuilder.setType(Request.ProtoType.ROOM_SPECTATOR_SIT);
        builderNewBuilder.setParams(Params.newBuilder().setRoomPositionIndex(i11).setRoomId(i10).setPingVal(i12).build());
        builderNewBuilder.setVersion(2).setRequestId(j10);
        return createByteBufferByBattleRequest(builderNewBuilder.build());
    }

    public static ByteBuffer subscribeGameRoom(int i10, Params.RoomType roomType, long j10) {
        return createByteBufferByBattleRequest(Request.newBuilder().setType(Request.ProtoType.SUBSCRIBE_GAME_COLLECTION).setParams(Params.newBuilder().setRoomType(roomType).setCollectionId(i10).build()).setVersion(2).setRequestId(j10).build());
    }
}
