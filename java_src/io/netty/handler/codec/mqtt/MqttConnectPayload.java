package io.netty.handler.codec.mqtt;

import io.netty.util.CharsetUtil;
import io.netty.util.internal.StringUtil;
import java.nio.charset.Charset;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class MqttConnectPayload {
    private final String clientIdentifier;
    private final byte[] password;
    private final String userName;
    private final byte[] willMessage;
    private final String willTopic;

    /* JADX WARN: Illegal instructions before constructor call */
    @Deprecated
    public MqttConnectPayload(String str, String str2, String str3, String str4, String str5) {
        Charset charset = CharsetUtil.UTF_8;
        this(str, str2, str3.getBytes(charset), str4, str5.getBytes(charset));
    }

    public String clientIdentifier() {
        return this.clientIdentifier;
    }

    @Deprecated
    public String password() {
        byte[] bArr = this.password;
        if (bArr == null) {
            return null;
        }
        return new String(bArr, CharsetUtil.UTF_8);
    }

    public byte[] passwordInBytes() {
        return this.password;
    }

    public String toString() {
        return StringUtil.simpleClassName(this) + "[clientIdentifier=" + this.clientIdentifier + ", willTopic=" + this.willTopic + ", willMessage=" + Arrays.toString(this.willMessage) + ", userName=" + this.userName + ", password=" + Arrays.toString(this.password) + ']';
    }

    public String userName() {
        return this.userName;
    }

    @Deprecated
    public String willMessage() {
        byte[] bArr = this.willMessage;
        if (bArr == null) {
            return null;
        }
        return new String(bArr, CharsetUtil.UTF_8);
    }

    public byte[] willMessageInBytes() {
        return this.willMessage;
    }

    public String willTopic() {
        return this.willTopic;
    }

    public MqttConnectPayload(String str, String str2, byte[] bArr, String str3, byte[] bArr2) {
        this.clientIdentifier = str;
        this.willTopic = str2;
        this.willMessage = bArr;
        this.userName = str3;
        this.password = bArr2;
    }
}
