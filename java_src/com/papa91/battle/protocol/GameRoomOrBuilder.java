package com.papa91.battle.protocol;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageOrBuilder;

/* JADX INFO: loaded from: classes2.dex */
public interface GameRoomOrBuilder extends MessageOrBuilder {
    boolean getAllowPCJoin();

    boolean getAllowPeripheralJoin();

    boolean getAllowSpectatorJoin();

    BattleArea getBattleArea();

    int getBattleAreaValue();

    BattleServerAddr getBattleServerAddr();

    BattleServerAddrOrBuilder getBattleServerAddrOrBuilder();

    int getChallengeCoins();

    String getChatRoomId();

    ByteString getChatRoomIdBytes();

    int getCollectionId();

    long getCreateAt();

    int getCreateByUser();

    boolean getDisableMobileJoin();

    boolean getElite();

    boolean getFastMode();

    long getFightId();

    long getGameId();

    String getGameName();

    ByteString getGameNameBytes();

    GameRoom.GameType getGameType();

    int getGameTypeValue();

    boolean getHasJoinPassword();

    int getLeader();

    boolean getOpenBattleScore();

    boolean getOpenFastModeBtn();

    RoomPosition getP1();

    RoomPositionOrBuilder getP1OrBuilder();

    RoomPosition getP2();

    RoomPositionOrBuilder getP2OrBuilder();

    RoomPosition getP3();

    RoomPositionOrBuilder getP3OrBuilder();

    RoomPosition getP4();

    RoomPositionOrBuilder getP4OrBuilder();

    String getPassword();

    ByteString getPasswordBytes();

    long getPlayTimestamp();

    int getPlayerNumber();

    int getPlayerSeconds();

    RoomCategory getRoomCategory();

    int getRoomCategoryValue();

    int getRoomId();

    int getSeatsNumber();

    boolean getSilent();

    int getSpectatorNumber();

    RoomState getState();

    int getStateValue();

    boolean hasBattleServerAddr();

    boolean hasP1();

    boolean hasP2();

    boolean hasP3();

    boolean hasP4();
}
