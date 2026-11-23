package com.papa91.battle.protocol;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageOrBuilder;

/* JADX INFO: loaded from: classes2.dex */
public interface BattleServerAddrOrBuilder extends MessageOrBuilder {
    long getBattleRoomId();

    String getHost();

    ByteString getHostBytes();

    BattleServerAddr.NetType getNetType();

    int getNetTypeValue();

    int getPort();
}
