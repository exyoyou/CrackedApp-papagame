package com.wufan.user.service.protobuf;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageOrBuilder;

/* JADX INFO: loaded from: classes8.dex */
public interface f extends MessageOrBuilder {
    UserInfo getData();

    h getDataOrBuilder();

    int getError();

    String getErrorMsg();

    ByteString getErrorMsgBytes();

    boolean hasData();
}
