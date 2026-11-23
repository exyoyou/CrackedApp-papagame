package com.wufan.user.service.protobuf;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageOrBuilder;

/* JADX INFO: loaded from: classes8.dex */
public interface g extends MessageOrBuilder {
    int getError();

    String getErrorMsg();

    ByteString getErrorMsgBytes();
}
