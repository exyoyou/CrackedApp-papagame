package com.papa91.battle.protocol;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageOrBuilder;

/* JADX INFO: loaded from: classes2.dex */
public interface KickInfoOrBuilder extends MessageOrBuilder {
    int getCopper();

    int getCount();

    boolean getIsVIP();

    String getNickname();

    ByteString getNicknameBytes();

    int getVipCopper();
}
