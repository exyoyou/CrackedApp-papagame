package com.papa91.battle.protocol;

import com.google.protobuf.MessageOrBuilder;

/* JADX INFO: loaded from: classes2.dex */
public interface RequestOrBuilder extends MessageOrBuilder {
    Account getAccount();

    AccountOrBuilder getAccountOrBuilder();

    Params getParams();

    ParamsOrBuilder getParamsOrBuilder();

    long getRequestId();

    Request.ProtoType getType();

    int getTypeValue();

    int getVersion();

    boolean hasAccount();

    boolean hasParams();
}
