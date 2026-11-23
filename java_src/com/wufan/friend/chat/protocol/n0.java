package com.wufan.friend.chat.protocol;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageOrBuilder;

/* JADX INFO: loaded from: classes8.dex */
public interface n0 extends MessageOrBuilder {
    String getAppVersion();

    ByteString getAppVersionBytes();

    RequestArgs getArgs();

    m0 getArgsOrBuilder();

    ServicePath getPath();

    int getPathValue();

    Platform getPlatform();

    int getPlatformValue();

    long getRequestId();

    ServiceName getService();

    int getServiceValue();

    long getTimestamp();

    boolean hasArgs();
}
