package com.papa91.battle.protocol;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageOrBuilder;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface SimpleRoomOrBuilder extends MessageOrBuilder {
    boolean getAllowPCJoin();

    boolean getAllowPeripheralJoin();

    boolean getAllowSpectatorJoin();

    String getAvatar();

    ByteString getAvatarBytes();

    BattleArea getBattleArea();

    int getBattleAreaValue();

    String getBattleTitle();

    ByteString getBattleTitleBytes();

    String getBattleTitleColor();

    ByteString getBattleTitleColorBytes();

    int getChallengeCoins();

    int getCollectionId();

    int getCopper();

    long getCreateAt();

    boolean getElite();

    long getGameId();

    String getGameName();

    ByteString getGameNameBytes();

    boolean getHasJoinPassword();

    boolean getHasPeripheralPlayer();

    int getLeaderId();

    String getNickname();

    ByteString getNicknameBytes();

    boolean getOpenBattleScore();

    int getPlaySeconds();

    long getPlayTimestamp();

    RoomPosition getPlayerList(int i10);

    int getPlayerListCount();

    List<RoomPosition> getPlayerListList();

    RoomPositionOrBuilder getPlayerListOrBuilder(int i10);

    List<? extends RoomPositionOrBuilder> getPlayerListOrBuilderList();

    RoomCategory getRoomCategory();

    int getRoomCategoryValue();

    int getRoomId();

    int getSeatsNumber();

    int getSitDownloadNumber();

    int getSpectatorNumber();

    RoomState getState();

    int getStateValue();

    BattleTitle getTitle();

    BattleTitleOrBuilder getTitleOrBuilder();

    boolean getVip();

    boolean hasTitle();
}
