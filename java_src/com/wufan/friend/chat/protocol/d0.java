package com.wufan.friend.chat.protocol;

import com.google.protobuf.MessageOrBuilder;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public interface d0 extends MessageOrBuilder {
    int getAccountId();

    long getGameId();

    long getLobbyRoomId();

    long getLocalBattleGameIds(int index);

    int getLocalBattleGameIdsCount();

    List<Long> getLocalBattleGameIdsList();

    PlayGameArgs.State getState();

    int getStateValue();

    PlayType getType();

    int getTypeValue();

    boolean getVersus();
}
