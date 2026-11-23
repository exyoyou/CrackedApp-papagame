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
public final class CommonEndpointsConfig extends AndroidMessage<CommonEndpointsConfig, Builder> {
    public static final ProtoAdapter<CommonEndpointsConfig> ADAPTER;
    public static final Parcelable.Creator<CommonEndpointsConfig> CREATOR;
    public static final String DEFAULT_BIDDING_URL = "";
    public static final String DEFAULT_CONFIG = "";
    public static final String DEFAULT_LOG = "";
    public static final String DEFAULT_STRATEGY = "";
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 3)
    public final String bidding_url;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 4)
    public final String config;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 1)
    public final String log;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 2)
    public final String strategy;

    public static final class Builder extends Message.Builder<CommonEndpointsConfig, Builder> {
        public String log = "";
        public String strategy = "";
        public String bidding_url = "";
        public String config = "";

        public Builder bidding_url(String bidding_url) {
            this.bidding_url = bidding_url;
            return this;
        }

        public Builder config(String config) {
            this.config = config;
            return this;
        }

        public Builder log(String log) {
            this.log = log;
            return this;
        }

        public Builder strategy(String strategy) {
            this.strategy = strategy;
            return this;
        }

        @Override // com.czhj.wire.Message.Builder
        public CommonEndpointsConfig build() {
            return new CommonEndpointsConfig(this.log, this.strategy, this.bidding_url, this.config, super.buildUnknownFields());
        }
    }

    private static final class ProtoAdapter_CommonEndpointsConfig extends ProtoAdapter<CommonEndpointsConfig> {
        public ProtoAdapter_CommonEndpointsConfig() {
            super(FieldEncoding.LENGTH_DELIMITED, CommonEndpointsConfig.class);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.czhj.wire.ProtoAdapter
        public CommonEndpointsConfig decode(ProtoReader reader) throws IOException {
            Builder builder = new Builder();
            long jBeginMessage = reader.beginMessage();
            while (true) {
                int iNextTag = reader.nextTag();
                if (iNextTag == -1) {
                    reader.endMessage(jBeginMessage);
                    return builder.build();
                }
                if (iNextTag == 1) {
                    builder.log(ProtoAdapter.STRING.decode(reader));
                } else if (iNextTag == 2) {
                    builder.strategy(ProtoAdapter.STRING.decode(reader));
                } else if (iNextTag == 3) {
                    builder.bidding_url(ProtoAdapter.STRING.decode(reader));
                } else if (iNextTag != 4) {
                    FieldEncoding fieldEncodingPeekFieldEncoding = reader.peekFieldEncoding();
                    builder.addUnknownField(iNextTag, fieldEncodingPeekFieldEncoding, fieldEncodingPeekFieldEncoding.rawProtoAdapter().decode(reader));
                } else {
                    builder.config(ProtoAdapter.STRING.decode(reader));
                }
            }
        }

        @Override // com.czhj.wire.ProtoAdapter
        public void encode(ProtoWriter writer, CommonEndpointsConfig value) throws IOException {
            ProtoAdapter<String> protoAdapter = ProtoAdapter.STRING;
            protoAdapter.encodeWithTag(writer, 1, value.log);
            protoAdapter.encodeWithTag(writer, 2, value.strategy);
            protoAdapter.encodeWithTag(writer, 3, value.bidding_url);
            protoAdapter.encodeWithTag(writer, 4, value.config);
            writer.writeBytes(value.unknownFields());
        }

        @Override // com.czhj.wire.ProtoAdapter
        public int encodedSize(CommonEndpointsConfig value) {
            ProtoAdapter<String> protoAdapter = ProtoAdapter.STRING;
            return protoAdapter.encodedSizeWithTag(1, value.log) + protoAdapter.encodedSizeWithTag(2, value.strategy) + protoAdapter.encodedSizeWithTag(3, value.bidding_url) + protoAdapter.encodedSizeWithTag(4, value.config) + value.unknownFields().size();
        }

        @Override // com.czhj.wire.ProtoAdapter
        public CommonEndpointsConfig redact(CommonEndpointsConfig value) {
            Builder builderNewBuilder = value.newBuilder();
            builderNewBuilder.clearUnknownFields();
            return builderNewBuilder.build();
        }
    }

    static {
        ProtoAdapter_CommonEndpointsConfig protoAdapter_CommonEndpointsConfig = new ProtoAdapter_CommonEndpointsConfig();
        ADAPTER = protoAdapter_CommonEndpointsConfig;
        CREATOR = AndroidMessage.newCreator(protoAdapter_CommonEndpointsConfig);
    }

    public CommonEndpointsConfig(String log, String strategy, String bidding_url, String config) {
        this(log, strategy, bidding_url, config, ByteString.EMPTY);
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof CommonEndpointsConfig)) {
            return false;
        }
        CommonEndpointsConfig commonEndpointsConfig = (CommonEndpointsConfig) other;
        return unknownFields().equals(commonEndpointsConfig.unknownFields()) && Internal.equals(this.log, commonEndpointsConfig.log) && Internal.equals(this.strategy, commonEndpointsConfig.strategy) && Internal.equals(this.bidding_url, commonEndpointsConfig.bidding_url) && Internal.equals(this.config, commonEndpointsConfig.config);
    }

    public int hashCode() {
        int i10 = this.hashCode;
        if (i10 != 0) {
            return i10;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        String str = this.log;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
        String str2 = this.strategy;
        int iHashCode3 = (iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 37;
        String str3 = this.bidding_url;
        int iHashCode4 = (iHashCode3 + (str3 != null ? str3.hashCode() : 0)) * 37;
        String str4 = this.config;
        int iHashCode5 = iHashCode4 + (str4 != null ? str4.hashCode() : 0);
        this.hashCode = iHashCode5;
        return iHashCode5;
    }

    @Override // com.czhj.wire.Message
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        if (this.log != null) {
            sb2.append(", log=");
            sb2.append(this.log);
        }
        if (this.strategy != null) {
            sb2.append(", strategy=");
            sb2.append(this.strategy);
        }
        if (this.bidding_url != null) {
            sb2.append(", bidding_url=");
            sb2.append(this.bidding_url);
        }
        if (this.config != null) {
            sb2.append(", config=");
            sb2.append(this.config);
        }
        StringBuilder sbReplace = sb2.replace(0, 2, "CommonEndpointsConfig{");
        sbReplace.append('}');
        return sbReplace.toString();
    }

    public CommonEndpointsConfig(String log, String strategy, String bidding_url, String config, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        this.log = log;
        this.strategy = strategy;
        this.bidding_url = bidding_url;
        this.config = config;
    }

    @Override // com.czhj.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.log = this.log;
        builder.strategy = this.strategy;
        builder.bidding_url = this.bidding_url;
        builder.config = this.config;
        builder.addUnknownFields(unknownFields());
        return builder;
    }
}
