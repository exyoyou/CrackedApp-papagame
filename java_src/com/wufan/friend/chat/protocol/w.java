package com.wufan.friend.chat.protocol;

import com.google.protobuf.MessageOrBuilder;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public interface w extends MessageOrBuilder {
    LocalBattleGameInfo getLocalBattleGameInfo(int index);

    int getLocalBattleGameInfoCount();

    List<LocalBattleGameInfo> getLocalBattleGameInfoList();

    x getLocalBattleGameInfoOrBuilder(int index);

    List<? extends x> getLocalBattleGameInfoOrBuilderList();
}
