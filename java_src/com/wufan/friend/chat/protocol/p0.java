package com.wufan.friend.chat.protocol;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageOrBuilder;

/* JADX INFO: loaded from: classes8.dex */
public interface p0 extends MessageOrBuilder {
    ResponseData getData();

    o0 getDataOrBuilder();

    String getIns();

    ByteString getInsBytes();

    String getMessage();

    ByteString getMessageBytes();

    NotificationType getNotificationType();

    int getNotificationTypeValue();

    ServicePath getPath();

    int getPathValue();

    long getRequestId();

    ResponseType getResponseType();

    int getResponseTypeValue();

    ServiceName getService();

    int getServiceValue();

    ResponseStatus getStatus();

    int getStatusValue();

    long getTimestamp();

    boolean hasData();
}
