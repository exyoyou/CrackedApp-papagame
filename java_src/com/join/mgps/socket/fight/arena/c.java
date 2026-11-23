package com.join.mgps.socket.fight.arena;

import android.content.Context;
import android.text.TextUtils;
import app.mgsim.arena.AreaInfo;
import app.mgsim.arena.ArenaConstants;
import app.mgsim.arena.ArenaRequest;
import app.mgsim.arena.ArenaResponse;
import app.mgsim.arena.UserType;
import com.join.mgps.Util.g1;
import com.join.mgps.Util.y0;
import com.join.mgps.activity.LocalGameActivity;
import com.papa.controller.core.ControllerManager;
import com.papa.controller.core.d;
import com.papa91.battle.protocol.BattleArea;
import com.papa91.battle.protocol.GameRoom;
import com.papa91.battle.protocol.Response;
import com.papa91.battle.protocol.RoomPosition;
import com.papa91.battle.protocol.SimpleRoom;
import java.util.List;
import java.util.Objects;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class c {
    public static boolean a(GameRoom gameRoom, com.join.mgps.Util.b accountUtil) {
        int uid = accountUtil.getAccountData().getUid();
        if (gameRoom.getP1().getUid() != 0 && gameRoom.getP1().getUid() != uid) {
            return true;
        }
        if (gameRoom.getP2().getUid() != 0 && gameRoom.getP2().getUid() != uid) {
            return true;
        }
        if (gameRoom.getP3().getUid() == 0 || gameRoom.getP3().getUid() == uid) {
            return (gameRoom.getP4().getUid() == 0 || gameRoom.getP4().getUid() == uid) ? false : true;
        }
        return true;
    }

    public static AreaInfo b(BattleArea battleArea) {
        AreaInfo areaInfo = new AreaInfo();
        areaInfo.setArea(battleArea.getNumber());
        return areaInfo;
    }

    public static BattleArea c(int area) {
        if (area == 0) {
            return BattleArea.ALL;
        }
        if (area == 1) {
            return BattleArea.BJ;
        }
        if (area != 2) {
            return area != 3 ? BattleArea.ALL : BattleArea.GZ;
        }
        return BattleArea.SH;
    }

    public static String d(BattleArea area) {
        try {
            if (area.getNumber() == BattleArea.BJ.getNumber()) {
                return "北京区";
            }
            if (area.getNumber() == BattleArea.SH.getNumber()) {
                return "上海区";
            }
            return area.getNumber() == BattleArea.GZ.getNumber() ? "广东区" : LocalGameActivity.ALL;
        } catch (Exception unused) {
            return LocalGameActivity.ALL;
        }
    }

    public static String e(String url) {
        JSONObject jSONObject;
        JSONObject jSONObject2;
        try {
            JSONObject jSONObject3 = new JSONObject(y0.a(url, false));
            if ("0".equals(jSONObject3.getString("retCode")) && (jSONObject = jSONObject3.getJSONObject("data")) != null && (jSONObject2 = jSONObject.getJSONObject("fastbattle.5fun.com")) != null) {
                JSONArray jSONArray = jSONObject2.getJSONArray("ips");
                if (jSONArray.length() > 0) {
                    return (String) jSONArray.get(0);
                }
            }
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        return "";
    }

    public static UserType f(GameRoom gameRoom, com.join.mgps.Util.b accountUtil) {
        int uid = accountUtil.getAccountData().getUid();
        if (uid == gameRoom.getLeader()) {
            return UserType.OWNER;
        }
        return (uid == gameRoom.getP1().getUid() || uid == gameRoom.getP2().getUid() || uid == gameRoom.getP3().getUid() || uid == gameRoom.getP4().getUid()) ? UserType.TENANT : UserType.SPECTATOR;
    }

    public static String g(ArenaResponse response) {
        String str;
        int i10 = response.errorType;
        if (i10 == 0) {
            str = "未定义协议！";
        } else if (i10 == 1) {
            str = "系统错误！";
        } else if (i10 == 2) {
            str = "参数错误！";
        } else if (i10 == 3) {
            str = "内部错误！";
        } else if (i10 == 7) {
            str = "密码错误!";
        } else if (i10 == 8) {
            str = "房间已经被解散！";
        } else if (i10 == 9) {
            str = "房间已满，无法加入!";
        } else if (i10 == 10) {
            str = "此房间需要密码!";
        } else if (i10 == 11) {
            str = "铜板不足，无法创建房间!";
        } else if (i10 == 12) {
            str = "铜板不足，无法设置挑战金！";
        } else if (i10 == 13) {
            str = "铜板不足，无法加入加入房间！";
        } else if (i10 == 14) {
            str = "该房间已经解散!";
        } else if (i10 == 16) {
            str = "无法加入，你被禁止加入该房间!";
        } else if (i10 == 17) {
            str = "该房间为比赛专用房间,非参赛选手无法加入!";
        } else {
            str = (i10 == 15 || i10 == 1000) ? response.errorInfo : "";
        }
        return TextUtils.isEmpty(str) ? "网络异常！" : str;
    }

    public static RoomPosition h(GameRoom gameRoom, int uid) {
        if (gameRoom.getP1().getUid() != 0 && gameRoom.getP1().getUid() == uid) {
            return gameRoom.getP1();
        }
        if (gameRoom.getP2().getUid() != 0 && gameRoom.getP2().getUid() == uid) {
            return gameRoom.getP2();
        }
        if (gameRoom.getP3().getUid() != 0 && gameRoom.getP3().getUid() == uid) {
            return gameRoom.getP3();
        }
        if (gameRoom.getP4().getUid() == 0 || gameRoom.getP4().getUid() != uid) {
            return null;
        }
        return gameRoom.getP4();
    }

    public static int i(BattleArea battleArea, boolean isFastJoinRoom) {
        if (battleArea != null) {
            if (battleArea.getNumber() == BattleArea.ALL.getNumber()) {
                return 8;
            }
            if (isFastJoinRoom) {
                return 10;
            }
        }
        return 9;
    }

    public static ArenaResponse j(ArenaResponse arenaResponse, Response serverResponse) {
        Response.ProtoType type = serverResponse.getType();
        if (type == Response.ProtoType.REFRESH_ROOM_LIST_DISSOLVE) {
            arenaResponse.data = serverResponse.getSimpleRoomList();
            arenaResponse.responseType = ArenaConstants.ArenaCommand.PUSH_REFRESH_ROOM_LIST_DISSOLVE;
            return arenaResponse;
        }
        if (type == Response.ProtoType.REFRESH_ROOM_LIST_UPDATE) {
            arenaResponse.data = serverResponse.getSimpleRoomList();
            arenaResponse.responseType = ArenaConstants.ArenaCommand.PUSH_REFRESH_ROOM_LIST_UPDATE;
            return arenaResponse;
        }
        if (type == Response.ProtoType.UPDATE_ROOM_BROADCAST) {
            arenaResponse.data = serverResponse.getRoom();
            arenaResponse.responseType = ArenaConstants.ArenaCommand.PUSH_UPDATE_ROOM;
            return arenaResponse;
        }
        if (type == Response.ProtoType.DISSOLVE_ROOM_BROADCAST) {
            arenaResponse.data = serverResponse.getRoom();
            arenaResponse.responseType = ArenaConstants.ArenaCommand.PUSH_DISSOLVE_ROOM;
            return arenaResponse;
        }
        if (type == Response.ProtoType.KICK_ROOM_BROADCAST) {
            arenaResponse.data = serverResponse.getRoom();
            arenaResponse.responseType = ArenaConstants.ArenaCommand.PUSH_KICK_ROOM_BROADCAST;
            return arenaResponse;
        }
        if (type == Response.ProtoType.ROOM_READY_TIMEOUT_KICKOUT) {
            arenaResponse.data = serverResponse.getRoom();
            arenaResponse.responseType = ArenaConstants.ArenaCommand.PUSH_ROOM_READY_TIMEOUT_KICKOUT;
            return arenaResponse;
        }
        if (type == Response.ProtoType.ROOM_START_TIMEOUT_KICKOUT) {
            arenaResponse.data = serverResponse.getRoom();
            arenaResponse.responseType = ArenaConstants.ArenaCommand.PUSH_ROOM_START_TIMEOUT_KICKOUT;
            return arenaResponse;
        }
        if (type == Response.ProtoType.START_GAME_ROOM_BROADCAST) {
            arenaResponse.responseType = ArenaConstants.ArenaCommand.PUSH_START_GAME_ROOM_BROADCAST;
            if (serverResponse.getStatusCode() != Response.StatusCode.RESULT_SUCCESS) {
                return k(arenaResponse, serverResponse);
            }
            arenaResponse.data = serverResponse.getRoom();
            return arenaResponse;
        }
        if (type == Response.ProtoType.GLOBAL_MESSAGE_BROADCAST) {
            arenaResponse.responseType = ArenaConstants.ArenaCommand.PUSH_GLOBAL_BROADCAST_ALL;
            arenaResponse.data = serverResponse.getNotification();
            return arenaResponse;
        }
        if (type != Response.ProtoType.BATTLE_SCORE_BOARD) {
            return arenaResponse;
        }
        arenaResponse.responseType = ArenaConstants.ArenaCommand.PUSH_SCORE_BOARD;
        arenaResponse.data = serverResponse.getBattleScore();
        try {
            GameRoom room = serverResponse.getRoom();
            ArenaRequest arenaRequest = new ArenaRequest(arenaResponse.responseType);
            arenaRequest.roomId = room.getRoomId();
            arenaResponse.request = arenaRequest;
            return arenaResponse;
        } catch (Exception e10) {
            e10.printStackTrace();
            return arenaResponse;
        }
    }

    public static ArenaResponse k(ArenaResponse arenaResponse, Response response) {
        Response.StatusCode statusCode = response.getStatusCode();
        if (response.getLogicErrorCode() != null && response.getLogicErrorCode().equals(Response.LogicErrorCode.ERROR_MESSAGE)) {
            arenaResponse.responseCode = 0;
            arenaResponse.errorType = 15;
            arenaResponse.errorInfo = response.getError();
            return arenaResponse;
        }
        if (response.getLogicErrorCode() != null && response.getLogicErrorCode().equals(Response.LogicErrorCode.JOIN_GAME_ROOM_ERROR_KICK)) {
            arenaResponse.responseCode = 0;
            arenaResponse.errorType = 16;
            return arenaResponse;
        }
        if (response.getLogicErrorCode() != null && response.getLogicErrorCode().equals(Response.LogicErrorCode.JOIN_GAME_ROOM_ERROR_NO_WHITE)) {
            arenaResponse.responseCode = 0;
            arenaResponse.errorType = 17;
            return arenaResponse;
        }
        if (response.getLogicErrorCode() != null && response.getLogicErrorCode().equals(Response.LogicErrorCode.ROOM_ERROR_DISSOLVE)) {
            arenaResponse.responseCode = 0;
            arenaResponse.errorType = 14;
            return arenaResponse;
        }
        if (response.getLogicErrorCode() != null && response.getLogicErrorCode().equals(Response.LogicErrorCode.JOIN_GAME_ROOM_ERROR_PASSWORD)) {
            arenaResponse.responseCode = 0;
            arenaResponse.errorType = 7;
            return arenaResponse;
        }
        if (response.getLogicErrorCode() != null && response.getLogicErrorCode().equals(Response.LogicErrorCode.NOT_FOUND_ROOM)) {
            arenaResponse.responseCode = 0;
            arenaResponse.errorType = 8;
            return arenaResponse;
        }
        if (response.getLogicErrorCode() != null && response.getLogicErrorCode().equals(Response.LogicErrorCode.JOIN_GAME_ROOM_ERROR_FULL)) {
            arenaResponse.responseCode = 0;
            arenaResponse.errorType = 9;
            return arenaResponse;
        }
        if (response.getLogicErrorCode() != null && response.getLogicErrorCode().equals(Response.LogicErrorCode.JOIN_GAME_ROOM_ERROR_NEED_PASSWORD)) {
            arenaResponse.responseCode = 0;
            arenaResponse.errorType = 10;
            return arenaResponse;
        }
        if (response.getLogicErrorCode() != null && response.getLogicErrorCode().equals(Response.LogicErrorCode.CREATE_ROOM_NO_CHALLENGE_COINS)) {
            arenaResponse.responseCode = 0;
            arenaResponse.errorType = 11;
            return arenaResponse;
        }
        if (response.getLogicErrorCode() != null && response.getLogicErrorCode().equals(Response.LogicErrorCode.ROOM_ERROR_NO_CHALLENGE_COINS)) {
            arenaResponse.responseCode = 0;
            arenaResponse.errorType = 12;
            return arenaResponse;
        }
        if (response.getLogicErrorCode() != null && response.getLogicErrorCode().equals(Response.LogicErrorCode.JOIN_GAME_ROOM_ERROR_NO_CHALLENGE_COINS)) {
            arenaResponse.responseCode = 0;
            arenaResponse.errorType = 13;
            return arenaResponse;
        }
        if (statusCode.equals(Response.StatusCode.SERVICE_FAILURE) || statusCode.equals(Response.StatusCode.PARAMS_FAILURE) || statusCode.equals(Response.StatusCode.INTERNAL_FAILURE) || statusCode.equals(Response.StatusCode.UN_LOGIN_FAILURE)) {
            arenaResponse.responseCode = 0;
            arenaResponse.errorType = s(response.getStatusCode());
            return arenaResponse;
        }
        arenaResponse.responseCode = 0;
        arenaResponse.errorType = 1000;
        arenaResponse.errorInfo = response.getError();
        return arenaResponse;
    }

    public static ArenaResponse l(ArenaResponse arenaResponse, Response response) {
        String str = arenaResponse.responseType;
        if (str == ArenaConstants.ArenaCommand.CMD_SUBSCRIBE_GAME_ROOMLIST) {
            if (response.getType() == Response.ProtoType.FULL_PUSH_ROOM_LIST_ING) {
                arenaResponse.data = response.getSimpleRoomList();
                arenaResponse.responseType = ArenaConstants.ArenaCommand.PUSH_FULL_PUSH_ROOM_LIST_ING;
            } else if (response.getType() == Response.ProtoType.FULL_PUSH_ROOM_LIST_FINISH) {
                arenaResponse.data = new Object[]{response.getRoomCounter(), response.getSimpleRoomList()};
                arenaResponse.responseType = ArenaConstants.ArenaCommand.PUSH_FULL_PUSH_ROOM_LIST_FINISH;
            }
        } else if (str == ArenaConstants.ArenaCommand.CMD_GET_KICK_OUT_ROOM_POSITION_INFO) {
            arenaResponse.data = response.getKickInfo();
        } else if (str == ArenaConstants.ArenaCommand.CMD_GET_FRAMEFORWARD_SERVER) {
            arenaResponse.data = response.getFrameForwardServer();
        } else if (str == ArenaConstants.ArenaCommand.CMD_CREATE_GAME_ROOM || str == ArenaConstants.ArenaCommand.CMD_JOIN_ROOM || str == ArenaConstants.ArenaCommand.CMD_KICK_OUT_ROOM_POSITION || str == ArenaConstants.ArenaCommand.CMD_QUICK_JOIN_ROOM || str == ArenaConstants.ArenaCommand.CMD_SEARCH_ROOM_BY_ID || str == ArenaConstants.ArenaCommand.CMD_LOBBY_START_GAME || str == ArenaConstants.ArenaCommand.CMD_SET_ROOM_CLOSE_P1_POSITION || str == ArenaConstants.ArenaCommand.CMD_SET_ROOM_CLOSE_P2_POSITION || str == ArenaConstants.ArenaCommand.CMD_SET_ROOM_CLOSE_P3_POSITION || str == ArenaConstants.ArenaCommand.CMD_SET_ROOM_CLOSE_P4_POSITION || str == ArenaConstants.ArenaCommand.CMD_SHARE_JOIN_ROOM || str == ArenaConstants.ArenaCommand.CMD_PLAYER_READY_GAME || str == ArenaConstants.ArenaCommand.CMD_SET_ROOM_PASSWORD_ATTR || str == ArenaConstants.ArenaCommand.CMD_SET_ROOM_CHALLENGE_COINS_ATTR || str == ArenaConstants.ArenaCommand.CMD_SET_ROOM_SPECTATOR_JOIN_ATTR || str == ArenaConstants.ArenaCommand.CMD_SET_ROOM_PERIPHERAL_JOIN_ATTR || str == ArenaConstants.ArenaCommand.CMD_SET_ROOM_PC_JOIN_ALTR || str == ArenaConstants.ArenaCommand.CMD_SET_ROOM_SERVER_PLAY_MODE || str == ArenaConstants.ArenaCommand.CMD_SPECTATOR_SIT) {
            if (str == ArenaConstants.ArenaCommand.CMD_JOIN_ROOM || str == ArenaConstants.ArenaCommand.CMD_SHARE_JOIN_ROOM || str == ArenaConstants.ArenaCommand.CMD_QUICK_JOIN_ROOM) {
                arenaResponse.joinSpectatorReason = response.getJoinSpectatorReason();
            }
            arenaResponse.data = response.getRoom();
        } else if (Objects.equals(str, ArenaConstants.ArenaCommand.CMD_SEND_SCORE_BOARD) || Objects.equals(arenaResponse.responseType, ArenaConstants.ArenaCommand.CMD_SEND_ROM_LOADED)) {
            arenaResponse.data = response.getBattleScore();
            try {
                GameRoom room = response.getRoom();
                ArenaRequest arenaRequest = new ArenaRequest(arenaResponse.responseType);
                arenaRequest.roomId = room.getRoomId();
                arenaResponse.request = arenaRequest;
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return arenaResponse;
    }

    public static boolean m(long pingTime) {
        return pingTime >= 120;
    }

    public static boolean n(GameRoom gameRoom) {
        int i10 = gameRoom.getP1().getUid() != 0 ? 1 : 0;
        if (gameRoom.getP2().getUid() != 0) {
            i10++;
        }
        if (gameRoom.getP3().getUid() != 0) {
            i10++;
        }
        if (gameRoom.getP4().getUid() != 0) {
            i10++;
        }
        return i10 == 1;
    }

    public static boolean o(Context context) {
        List<ControllerManager.c> listQ = d.r(context).q();
        return listQ != null && listQ.size() > 0;
    }

    public static String p(RoomPosition position) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("  closed-->" + position.getClosed());
        sb2.append("  vip-->" + position.getVip());
        sb2.append("  uid-->" + position.getUid());
        sb2.append("  title getBackgroudColor -->" + position.getBattleTitleColor());
        sb2.append("  title getTitle -->" + position.getBattleTitle());
        sb2.append("  nickname-->" + position.getNickname());
        sb2.append("  avatar-->" + position.getAvatar());
        sb2.append("  copper-->" + position.getCopper());
        sb2.append("  peripheral-->" + position.getPeripheral());
        sb2.append("  pingVal-->" + position.getPingVal());
        sb2.append("  state-->" + position.getState());
        return sb2.toString();
    }

    public static void q(String tag, GameRoom gameRoom) {
        if (gameRoom == null) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("gameRoom info: ");
        sb2.append(" gameid->" + gameRoom.getGameId());
        sb2.append(" roomId->" + gameRoom.getRoomId());
        sb2.append(" Elite->" + gameRoom.getElite());
        sb2.append(" password->" + gameRoom.getPassword());
        sb2.append(" hasJoinPassword->" + gameRoom.getHasJoinPassword());
        sb2.append(" allowSpectatorJoin->" + gameRoom.getAllowSpectatorJoin());
        sb2.append(" allowPeripheralJoin->" + gameRoom.getAllowPeripheralJoin());
        sb2.append(" spectatorNumber->" + gameRoom.getSpectatorNumber());
        sb2.append(" challengeCoins->" + gameRoom.getChallengeCoins());
        sb2.append(" playerNumber->" + gameRoom.getPlayerNumber());
        sb2.append(" seatsNumber->" + gameRoom.getSeatsNumber());
        sb2.append(" leader->" + gameRoom.getLeader());
        sb2.append(" playerSeconds->" + gameRoom.getPlayerSeconds());
        sb2.append(" RoomState->" + gameRoom.getState());
        if (gameRoom.getP1() != null) {
            sb2.append(" room position 1 info: ->" + p(gameRoom.getP1()));
            sb2.append("-----");
        }
        if (gameRoom.getP2() != null) {
            sb2.append(" room position 2 info: ->" + p(gameRoom.getP2()));
            sb2.append("-----");
        }
        if (gameRoom.getP3() != null) {
            sb2.append(" room position 3 info: ->" + p(gameRoom.getP3()));
            sb2.append("-----");
        }
        if (gameRoom.getP4() != null) {
            sb2.append(" room position 4 info: ->" + p(gameRoom.getP4()));
        }
        g1.f(tag, sb2.toString());
    }

    public static void r(String tag, SimpleRoom simpleRoom) {
        if (simpleRoom == null) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("simpleRoom info: ");
        sb2.append(" roomId->" + simpleRoom.getRoomId());
        sb2.append(" gameId->" + simpleRoom.getGameId());
        sb2.append(" nickname->" + simpleRoom.getNickname());
        sb2.append(" vip->" + simpleRoom.getVip());
        sb2.append(" createAt->" + simpleRoom.getCreateAt());
        sb2.append(" seatsNumber->" + simpleRoom.getSeatsNumber());
        sb2.append(" sitDownloadNumber->" + simpleRoom.getSitDownloadNumber());
        sb2.append(" hasJoinPassword->" + simpleRoom.getHasJoinPassword());
        sb2.append(" allowSpectatorJoin->" + simpleRoom.getAllowSpectatorJoin());
        sb2.append(" allowPeripheralJoin->" + simpleRoom.getAllowPeripheralJoin());
        sb2.append(" challengeCoins->" + simpleRoom.getChallengeCoins());
        sb2.append(" state->" + simpleRoom.getState());
        sb2.append(" playSeconds->" + simpleRoom.getPlaySeconds());
        sb2.append(" Title.getBackgroudColor->" + simpleRoom.getBattleTitleColor());
        sb2.append(" getHasPeripheralPlayer->" + simpleRoom.getHasPeripheralPlayer());
        sb2.append(" Title.Title->" + simpleRoom.getBattleTitle());
        sb2.append(" elite->" + simpleRoom.getElite());
        sb2.append(" copper->" + simpleRoom.getCopper());
        g1.f(tag, sb2.toString());
    }

    private static int s(Response.StatusCode code) {
        if (code == Response.StatusCode.SERVICE_FAILURE) {
            return 1;
        }
        if (code == Response.StatusCode.PARAMS_FAILURE) {
            return 2;
        }
        if (code == Response.StatusCode.INTERNAL_FAILURE) {
            return 3;
        }
        return code == Response.StatusCode.UN_LOGIN_FAILURE ? 0 : -1;
    }
}
