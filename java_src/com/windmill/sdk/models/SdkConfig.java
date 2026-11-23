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
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public final class SdkConfig extends AndroidMessage<SdkConfig, Builder> {
    public static final ProtoAdapter<SdkConfig> ADAPTER;
    public static final Parcelable.Creator<SdkConfig> CREATOR;
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.windmill.sdk.models.Android#ADAPTER", tag = 3)
    public final Android android_config;

    @WireField(adapter = "com.windmill.sdk.models.ChannelConfig#ADAPTER", keyAdapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 4)
    public final Map<Integer, ChannelConfig> channel_configs;

    @WireField(adapter = "com.windmill.sdk.models.Common#ADAPTER", tag = 1)
    public final Common common_config;

    public static final class Builder extends Message.Builder<SdkConfig, Builder> {
        public Android android_config;
        Map<Integer, ChannelConfig> channel_configs = Internal.newMutableMap();
        public Common common_config;

        public Builder android_config(Android android_config) {
            this.android_config = android_config;
            return this;
        }

        public Builder channel_configs(Map<Integer, ChannelConfig> channel_configs) {
            Internal.checkElementsNotNull(channel_configs);
            this.channel_configs = channel_configs;
            return this;
        }

        public Builder common_config(Common common_config) {
            this.common_config = common_config;
            return this;
        }

        @Override // com.czhj.wire.Message.Builder
        public SdkConfig build() {
            return new SdkConfig(this.common_config, this.android_config, this.channel_configs, super.buildUnknownFields());
        }
    }

    private static final class ProtoAdapter_SdkConfig extends ProtoAdapter<SdkConfig> {
        private final ProtoAdapter<Map<Integer, ChannelConfig>> channel_configs;

        public ProtoAdapter_SdkConfig() {
            super(FieldEncoding.LENGTH_DELIMITED, SdkConfig.class);
            this.channel_configs = ProtoAdapter.newMapAdapter(ProtoAdapter.UINT32, ChannelConfig.ADAPTER);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.czhj.wire.ProtoAdapter
        public SdkConfig decode(ProtoReader reader) throws IOException {
            Builder builder = new Builder();
            long jBeginMessage = reader.beginMessage();
            while (true) {
                int iNextTag = reader.nextTag();
                if (iNextTag == -1) {
                    reader.endMessage(jBeginMessage);
                    return builder.build();
                }
                if (iNextTag == 1) {
                    builder.common_config(Common.ADAPTER.decode(reader));
                } else if (iNextTag == 3) {
                    builder.android_config(Android.ADAPTER.decode(reader));
                } else if (iNextTag != 4) {
                    FieldEncoding fieldEncodingPeekFieldEncoding = reader.peekFieldEncoding();
                    builder.addUnknownField(iNextTag, fieldEncodingPeekFieldEncoding, fieldEncodingPeekFieldEncoding.rawProtoAdapter().decode(reader));
                } else {
                    builder.channel_configs.putAll(this.channel_configs.decode(reader));
                }
            }
        }

        @Override // com.czhj.wire.ProtoAdapter
        public void encode(ProtoWriter writer, SdkConfig value) throws IOException {
            Common.ADAPTER.encodeWithTag(writer, 1, value.common_config);
            Android.ADAPTER.encodeWithTag(writer, 3, value.android_config);
            this.channel_configs.encodeWithTag(writer, 4, value.channel_configs);
            writer.writeBytes(value.unknownFields());
        }

        @Override // com.czhj.wire.ProtoAdapter
        public int encodedSize(SdkConfig value) {
            return Common.ADAPTER.encodedSizeWithTag(1, value.common_config) + Android.ADAPTER.encodedSizeWithTag(3, value.android_config) + this.channel_configs.encodedSizeWithTag(4, value.channel_configs) + value.unknownFields().size();
        }

        @Override // com.czhj.wire.ProtoAdapter
        public SdkConfig redact(SdkConfig value) {
            Builder builderNewBuilder = value.newBuilder();
            Common common = builderNewBuilder.common_config;
            if (common != null) {
                builderNewBuilder.common_config = Common.ADAPTER.redact(common);
            }
            Android android2 = builderNewBuilder.android_config;
            if (android2 != null) {
                builderNewBuilder.android_config = Android.ADAPTER.redact(android2);
            }
            builderNewBuilder.clearUnknownFields();
            return builderNewBuilder.build();
        }
    }

    static {
        ProtoAdapter_SdkConfig protoAdapter_SdkConfig = new ProtoAdapter_SdkConfig();
        ADAPTER = protoAdapter_SdkConfig;
        CREATOR = AndroidMessage.newCreator(protoAdapter_SdkConfig);
    }

    public SdkConfig(Common common_config, Android android_config, Map<Integer, ChannelConfig> channel_configs) {
        this(common_config, android_config, channel_configs, ByteString.EMPTY);
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof SdkConfig)) {
            return false;
        }
        SdkConfig sdkConfig = (SdkConfig) other;
        return unknownFields().equals(sdkConfig.unknownFields()) && Internal.equals(this.common_config, sdkConfig.common_config) && Internal.equals(this.android_config, sdkConfig.android_config) && Internal.equals(this.channel_configs, sdkConfig.channel_configs);
    }

    public int hashCode() {
        int i10 = this.hashCode;
        if (i10 != 0) {
            return i10;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        Common common = this.common_config;
        int iHashCode2 = (iHashCode + (common != null ? common.hashCode() : 0)) * 37;
        Android android2 = this.android_config;
        int iHashCode3 = ((iHashCode2 + (android2 != null ? android2.hashCode() : 0)) * 37) + this.channel_configs.hashCode();
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.czhj.wire.Message
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        if (this.common_config != null) {
            sb2.append(", common_config=");
            sb2.append(this.common_config);
        }
        if (this.android_config != null) {
            sb2.append(", android_config=");
            sb2.append(this.android_config);
        }
        if (!this.channel_configs.isEmpty()) {
            sb2.append(", channel_configs=");
            sb2.append(this.channel_configs);
        }
        StringBuilder sbReplace = sb2.replace(0, 2, "SdkConfig{");
        sbReplace.append('}');
        return sbReplace.toString();
    }

    public SdkConfig(Common common_config, Android android_config, Map<Integer, ChannelConfig> channel_configs, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        this.common_config = common_config;
        this.android_config = android_config;
        this.channel_configs = Internal.immutableCopyOf("channel_configs", channel_configs);
    }

    @Override // com.czhj.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.common_config = this.common_config;
        builder.android_config = this.android_config;
        builder.channel_configs = Internal.copyOf("channel_configs", this.channel_configs);
        builder.addUnknownFields(unknownFields());
        return builder;
    }
}
