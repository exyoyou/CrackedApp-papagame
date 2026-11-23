package com.wufan.user.service.protobuf;

import com.google.protobuf.MessageOrBuilder;

/* JADX INFO: loaded from: classes8.dex */
public interface a extends MessageOrBuilder {
    long getCheatExpireTime();

    long getGameId();

    boolean getIsOpenCheat();

    boolean getIsOpenSp();

    long getSpExpireTime();
}
