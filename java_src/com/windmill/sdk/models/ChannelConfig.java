package com.windmill.sdk.models;

import android.os.Parcelable;
import com.czhj.wire.AndroidMessage;
import com.czhj.wire.FieldEncoding;
import com.czhj.wire.Message;
import com.czhj.wire.ProtoAdapter;
import com.czhj.wire.ProtoReader;
import com.czhj.wire.ProtoWriter;
import com.czhj.wire.WireField;
import com.czhj.wire.internal.Internal;
import com.czhj.wire.okio.ByteString;
import java.io.IOException;

/* JADX INFO: loaded from: classes8.dex */
public final class ChannelConfig extends AndroidMessage<ChannelConfig, Builder> {
    public static final ProtoAdapter<ChannelConfig> ADAPTER;
    public static final Parcelable.Creator<ChannelConfig> CREATOR;
    public static final String DEFAULT_CHANNEL_APPID = "";
    public static final String DEFAULT_CHANNEL_APPKEY = "";
    public static final Boolean DEFAULT_IS_SUPPORT_REPEAT_INIT;
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 2)
    public final String channel_appId;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 3)
    public final String channel_appkey;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", tag = 1)
    public final Boolean is_support_repeat_init;

    public static final class Builder extends Message.Builder<ChannelConfig, Builder> {
        public String channel_appId;
        public String channel_appkey;
        public Boolean is_support_repeat_init = ChannelConfig.DEFAULT_IS_SUPPORT_REPEAT_INIT;

        public Builder channel_appId(String channel_appId) {
            this.channel_appId = channel_appId;
            return this;
        }

        public Builder channel_appkey(String channel_appkey) {
            this.channel_appkey = channel_appkey;
            return this;
        }

        public Builder is_support_repeat_init(Boolean is_support_repeat_init) {
            this.is_support_repeat_init = is_support_repeat_init;
            return this;
        }

        @Override // com.czhj.wire.Message.Builder
        public ChannelConfig build() {
            return new ChannelConfig(this.is_support_repeat_init, this.channel_appId, this.channel_appkey, super.buildUnknownFields());
        }
    }

    private static final class ProtoAdapter_ChannelConfig extends ProtoAdapter<ChannelConfig> {
        public ProtoAdapter_ChannelConfig() {
            super(FieldEncoding.LENGTH_DELIMITED, ChannelConfig.class);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.czhj.wire.ProtoAdapter
        public ChannelConfig decode(ProtoReader reader) throws IOException {
            Builder builder = new Builder();
            long jBeginMessage = reader.beginMessage();
            while (true) {
                int iNextTag = reader.nextTag();
                if (iNextTag == -1) {
                    reader.endMessage(jBeginMessage);
                    return builder.build();
                }
                if (iNextTag == 1) {
                    builder.is_support_repeat_init(ProtoAdapter.BOOL.decode(reader));
                } else if (iNextTag == 2) {
                    builder.channel_appId(ProtoAdapter.STRING.decode(reader));
                } else if (iNextTag != 3) {
                    FieldEncoding fieldEncodingPeekFieldEncoding = reader.peekFieldEncoding();
                    builder.addUnknownField(iNextTag, fieldEncodingPeekFieldEncoding, fieldEncodingPeekFieldEncoding.rawProtoAdapter().decode(reader));
                } else {
                    builder.channel_appkey(ProtoAdapter.STRING.decode(reader));
                }
            }
        }

        @Override // com.czhj.wire.ProtoAdapter
        public void encode(ProtoWriter writer, ChannelConfig value) throws IOException {
            ProtoAdapter.BOOL.encodeWithTag(writer, 1, value.is_support_repeat_init);
            ProtoAdapter<String> protoAdapter = ProtoAdapter.STRING;
            protoAdapter.encodeWithTag(writer, 2, value.channel_appId);
            protoAdapter.encodeWithTag(writer, 3, value.channel_appkey);
            writer.writeBytes(value.unknownFields());
        }

        @Override // com.czhj.wire.ProtoAdapter
        public int encodedSize(ChannelConfig value) {
            int iEncodedSizeWithTag = ProtoAdapter.BOOL.encodedSizeWithTag(1, value.is_support_repeat_init);
            ProtoAdapter<String> protoAdapter = ProtoAdapter.STRING;
            return iEncodedSizeWithTag + protoAdapter.encodedSizeWithTag(2, value.channel_appId) + protoAdapter.encodedSizeWithTag(3, value.channel_appkey) + value.unknownFields().size();
        }

        @Override // com.czhj.wire.ProtoAdapter
        public ChannelConfig redact(ChannelConfig value) {
            Builder builderNewBuilder = value.newBuilder();
            builderNewBuilder.clearUnknownFields();
            return builderNewBuilder.build();
        }
    }

    static {
        ProtoAdapter_ChannelConfig protoAdapter_ChannelConfig = new ProtoAdapter_ChannelConfig();
        ADAPTER = protoAdapter_ChannelConfig;
        CREATOR = AndroidMessage.newCreator(protoAdapter_ChannelConfig);
        DEFAULT_IS_SUPPORT_REPEAT_INIT = Boolean.FALSE;
    }

    public ChannelConfig(Boolean is_support_repeat_init, String channel_appId, String channel_appkey) {
        this(is_support_repeat_init, channel_appId, channel_appkey, ByteString.EMPTY);
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ChannelConfig)) {
            return false;
        }
        ChannelConfig channelConfig = (ChannelConfig) other;
        return unknownFields().equals(channelConfig.unknownFields()) && Internal.equals(this.is_support_repeat_init, channelConfig.is_support_repeat_init) && Internal.equals(this.channel_appId, channelConfig.channel_appId) && Internal.equals(this.channel_appkey, channelConfig.channel_appkey);
    }

    public int hashCode() {
        int i10 = this.hashCode;
        if (i10 != 0) {
            return i10;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        Boolean bool = this.is_support_repeat_init;
        int iHashCode2 = (iHashCode + (bool != null ? bool.hashCode() : 0)) * 37;
        String str = this.channel_appId;
        int iHashCode3 = (iHashCode2 + (str != null ? str.hashCode() : 0)) * 37;
        String str2 = this.channel_appkey;
        int iHashCode4 = iHashCode3 + (str2 != null ? str2.hashCode() : 0);
        this.hashCode = iHashCode4;
        return iHashCode4;
    }

    @Override // com.czhj.wire.Message
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        if (this.is_support_repeat_init != null) {
            sb2.append(", is_support_repeat_init=");
            sb2.append(this.is_support_repeat_init);
        }
        if (this.channel_appId != null) {
            sb2.append(", channel_appId=");
            sb2.append(this.channel_appId);
        }
        if (this.channel_appkey != null) {
            sb2.append(", channel_appkey=");
            sb2.append(this.channel_appkey);
        }
        StringBuilder sbReplace = sb2.replace(0, 2, "ChannelConfig{");
        sbReplace.append('}');
        return sbReplace.toString();
    }

    public ChannelConfig(Boolean is_support_repeat_init, String channel_appId, String channel_appkey, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        this.is_support_repeat_init = is_support_repeat_init;
        this.channel_appId = channel_appId;
        this.channel_appkey = channel_appkey;
    }

    @Override // com.czhj.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.is_support_repeat_init = this.is_support_repeat_init;
        builder.channel_appId = this.channel_appId;
        builder.channel_appkey = this.channel_appkey;
        builder.addUnknownFields(unknownFields());
        return builder;
    }
}
