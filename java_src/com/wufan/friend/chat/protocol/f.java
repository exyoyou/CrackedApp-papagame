package com.wufan.friend.chat.protocol;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageOrBuilder;

/* JADX INFO: loaded from: classes8.dex */
public interface f extends MessageOrBuilder {
    String getMessage();

    ByteString getMessageBytes();

    boolean getMuted();
}
