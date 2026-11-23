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
public final class AdapterConfig extends AndroidMessage<AdapterConfig, Builder> {
    public static final ProtoAdapter<AdapterConfig> ADAPTER;
    public static final Parcelable.Creator<AdapterConfig> CREATOR;
    public static final String DEFAULT_BANNER_ADAPTER = "";
    public static final String DEFAULT_CONFIG_ADAPTER = "";
    public static final String DEFAULT_INTERSTITIAL_ADAPTER = "";
    public static final String DEFAULT_NATIVE_ADAPTER = "";
    public static final String DEFAULT_RV_ADAPTER = "";
    public static final String DEFAULT_SPLASH_ADAPTER = "";
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 6)
    public final String banner_adapter;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 1)
    public final String config_adapter;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 4)
    public final String interstitial_adapter;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 5)
    public final String native_adapter;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 2)
    public final String rv_adapter;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 3)
    public final String splash_adapter;

    public static final class Builder extends Message.Builder<AdapterConfig, Builder> {
        public String banner_adapter;
        public String config_adapter;
        public String interstitial_adapter;
        public String native_adapter;
        public String rv_adapter;
        public String splash_adapter;

        public Builder banner_adapter(String banner_adapter) {
            this.banner_adapter = banner_adapter;
            return this;
        }

        public Builder config_adapter(String config_adapter) {
            this.config_adapter = config_adapter;
            return this;
        }

        public Builder interstitial_adapter(String interstitial_adapter) {
            this.interstitial_adapter = interstitial_adapter;
            return this;
        }

        public Builder native_adapter(String native_adapter) {
            this.native_adapter = native_adapter;
            return this;
        }

        public Builder rv_adapter(String rv_adapter) {
            this.rv_adapter = rv_adapter;
            return this;
        }

        public Builder splash_adapter(String splash_adapter) {
            this.splash_adapter = splash_adapter;
            return this;
        }

        @Override // com.czhj.wire.Message.Builder
        public AdapterConfig build() {
            return new AdapterConfig(this.config_adapter, this.rv_adapter, this.splash_adapter, this.interstitial_adapter, this.native_adapter, this.banner_adapter, super.buildUnknownFields());
        }
    }

    private static final class ProtoAdapter_AdapterConfig extends ProtoAdapter<AdapterConfig> {
        public ProtoAdapter_AdapterConfig() {
            super(FieldEncoding.LENGTH_DELIMITED, AdapterConfig.class);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.czhj.wire.ProtoAdapter
        public AdapterConfig decode(ProtoReader reader) throws IOException {
            Builder builder = new Builder();
            long jBeginMessage = reader.beginMessage();
            while (true) {
                int iNextTag = reader.nextTag();
                if (iNextTag == -1) {
                    reader.endMessage(jBeginMessage);
                    return builder.build();
                }
                switch (iNextTag) {
                    case 1:
                        builder.config_adapter(ProtoAdapter.STRING.decode(reader));
                        break;
                    case 2:
                        builder.rv_adapter(ProtoAdapter.STRING.decode(reader));
                        break;
                    case 3:
                        builder.splash_adapter(ProtoAdapter.STRING.decode(reader));
                        break;
                    case 4:
                        builder.interstitial_adapter(ProtoAdapter.STRING.decode(reader));
                        break;
                    case 5:
                        builder.native_adapter(ProtoAdapter.STRING.decode(reader));
                        break;
                    case 6:
                        builder.banner_adapter(ProtoAdapter.STRING.decode(reader));
                        break;
                    default:
                        FieldEncoding fieldEncodingPeekFieldEncoding = reader.peekFieldEncoding();
                        builder.addUnknownField(iNextTag, fieldEncodingPeekFieldEncoding, fieldEncodingPeekFieldEncoding.rawProtoAdapter().decode(reader));
                        break;
                }
            }
        }

        @Override // com.czhj.wire.ProtoAdapter
        public void encode(ProtoWriter writer, AdapterConfig value) throws IOException {
            ProtoAdapter<String> protoAdapter = ProtoAdapter.STRING;
            protoAdapter.encodeWithTag(writer, 1, value.config_adapter);
            protoAdapter.encodeWithTag(writer, 2, value.rv_adapter);
            protoAdapter.encodeWithTag(writer, 3, value.splash_adapter);
            protoAdapter.encodeWithTag(writer, 4, value.interstitial_adapter);
            protoAdapter.encodeWithTag(writer, 5, value.native_adapter);
            protoAdapter.encodeWithTag(writer, 6, value.banner_adapter);
            writer.writeBytes(value.unknownFields());
        }

        @Override // com.czhj.wire.ProtoAdapter
        public int encodedSize(AdapterConfig value) {
            ProtoAdapter<String> protoAdapter = ProtoAdapter.STRING;
            return protoAdapter.encodedSizeWithTag(1, value.config_adapter) + protoAdapter.encodedSizeWithTag(2, value.rv_adapter) + protoAdapter.encodedSizeWithTag(3, value.splash_adapter) + protoAdapter.encodedSizeWithTag(4, value.interstitial_adapter) + protoAdapter.encodedSizeWithTag(5, value.native_adapter) + protoAdapter.encodedSizeWithTag(6, value.banner_adapter) + value.unknownFields().size();
        }

        @Override // com.czhj.wire.ProtoAdapter
        public AdapterConfig redact(AdapterConfig value) {
            Builder builderNewBuilder = value.newBuilder();
            builderNewBuilder.clearUnknownFields();
            return builderNewBuilder.build();
        }
    }

    static {
        ProtoAdapter_AdapterConfig protoAdapter_AdapterConfig = new ProtoAdapter_AdapterConfig();
        ADAPTER = protoAdapter_AdapterConfig;
        CREATOR = AndroidMessage.newCreator(protoAdapter_AdapterConfig);
    }

    public AdapterConfig(String config_adapter, String rv_adapter, String splash_adapter, String interstitial_adapter, String native_adapter, String banner_adapter) {
        this(config_adapter, rv_adapter, splash_adapter, interstitial_adapter, native_adapter, banner_adapter, ByteString.EMPTY);
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof AdapterConfig)) {
            return false;
        }
        AdapterConfig adapterConfig = (AdapterConfig) other;
        return unknownFields().equals(adapterConfig.unknownFields()) && Internal.equals(this.config_adapter, adapterConfig.config_adapter) && Internal.equals(this.rv_adapter, adapterConfig.rv_adapter) && Internal.equals(this.splash_adapter, adapterConfig.splash_adapter) && Internal.equals(this.interstitial_adapter, adapterConfig.interstitial_adapter) && Internal.equals(this.native_adapter, adapterConfig.native_adapter) && Internal.equals(this.banner_adapter, adapterConfig.banner_adapter);
    }

    public int hashCode() {
        int i10 = this.hashCode;
        if (i10 != 0) {
            return i10;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        String str = this.config_adapter;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
        String str2 = this.rv_adapter;
        int iHashCode3 = (iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 37;
        String str3 = this.splash_adapter;
        int iHashCode4 = (iHashCode3 + (str3 != null ? str3.hashCode() : 0)) * 37;
        String str4 = this.interstitial_adapter;
        int iHashCode5 = (iHashCode4 + (str4 != null ? str4.hashCode() : 0)) * 37;
        String str5 = this.native_adapter;
        int iHashCode6 = (iHashCode5 + (str5 != null ? str5.hashCode() : 0)) * 37;
        String str6 = this.banner_adapter;
        int iHashCode7 = iHashCode6 + (str6 != null ? str6.hashCode() : 0);
        this.hashCode = iHashCode7;
        return iHashCode7;
    }

    @Override // com.czhj.wire.Message
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        if (this.config_adapter != null) {
            sb2.append(", config_adapter=");
            sb2.append(this.config_adapter);
        }
        if (this.rv_adapter != null) {
            sb2.append(", rv_adapter=");
            sb2.append(this.rv_adapter);
        }
        if (this.splash_adapter != null) {
            sb2.append(", splash_adapter=");
            sb2.append(this.splash_adapter);
        }
        if (this.interstitial_adapter != null) {
            sb2.append(", interstitial_adapter=");
            sb2.append(this.interstitial_adapter);
        }
        if (this.native_adapter != null) {
            sb2.append(", native_adapter=");
            sb2.append(this.native_adapter);
        }
        if (this.banner_adapter != null) {
            sb2.append(", banner_adapter=");
            sb2.append(this.banner_adapter);
        }
        StringBuilder sbReplace = sb2.replace(0, 2, "AdapterConfig{");
        sbReplace.append('}');
        return sbReplace.toString();
    }

    public AdapterConfig(String config_adapter, String rv_adapter, String splash_adapter, String interstitial_adapter, String native_adapter, String banner_adapter, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        this.config_adapter = config_adapter;
        this.rv_adapter = rv_adapter;
        this.splash_adapter = splash_adapter;
        this.interstitial_adapter = interstitial_adapter;
        this.native_adapter = native_adapter;
        this.banner_adapter = banner_adapter;
    }

    @Override // com.czhj.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.config_adapter = this.config_adapter;
        builder.rv_adapter = this.rv_adapter;
        builder.splash_adapter = this.splash_adapter;
        builder.interstitial_adapter = this.interstitial_adapter;
        builder.native_adapter = this.native_adapter;
        builder.banner_adapter = this.banner_adapter;
        builder.addUnknownFields(unknownFields());
        return builder;
    }
}
