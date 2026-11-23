package com.wufan.user.service.protobuf;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageOrBuilder;

/* JADX INFO: loaded from: classes8.dex */
public interface i extends MessageOrBuilder {
    String getAccount();

    ByteString getAccountBytes();

    String getAppVersion();

    ByteString getAppVersionBytes();

    String getPassword();

    ByteString getPasswordBytes();

    String getSign();

    ByteString getSignBytes();
}
