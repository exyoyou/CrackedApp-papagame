package io.netty.handler.codec.mqtt;

import io.netty.util.internal.StringUtil;

/* JADX INFO: loaded from: classes.dex */
public final class MqttConnectVariableHeader {
    private final boolean hasPassword;
    private final boolean hasUserName;
    private final boolean isCleanSession;
    private final boolean isWillFlag;
    private final boolean isWillRetain;
    private final int keepAliveTimeSeconds;
    private final String name;
    private final int version;
    private final int willQos;

    public MqttConnectVariableHeader(String str, int i10, boolean z10, boolean z11, boolean z12, int i11, boolean z13, boolean z14, int i12) {
        this.name = str;
        this.version = i10;
        this.hasUserName = z10;
        this.hasPassword = z11;
        this.isWillRetain = z12;
        this.willQos = i11;
        this.isWillFlag = z13;
        this.isCleanSession = z14;
        this.keepAliveTimeSeconds = i12;
    }

    public boolean hasPassword() {
        return this.hasPassword;
    }

    public boolean hasUserName() {
        return this.hasUserName;
    }

    public boolean isCleanSession() {
        return this.isCleanSession;
    }

    public boolean isWillFlag() {
        return this.isWillFlag;
    }

    public boolean isWillRetain() {
        return this.isWillRetain;
    }

    public int keepAliveTimeSeconds() {
        return this.keepAliveTimeSeconds;
    }

    public String name() {
        return this.name;
    }

    public String toString() {
        return StringUtil.simpleClassName(this) + "[name=" + this.name + ", version=" + this.version + ", hasUserName=" + this.hasUserName + ", hasPassword=" + this.hasPassword + ", isWillRetain=" + this.isWillRetain + ", isWillFlag=" + this.isWillFlag + ", isCleanSession=" + this.isCleanSession + ", keepAliveTimeSeconds=" + this.keepAliveTimeSeconds + ']';
    }

    public int version() {
        return this.version;
    }

    public int willQos() {
        return this.willQos;
    }
}
