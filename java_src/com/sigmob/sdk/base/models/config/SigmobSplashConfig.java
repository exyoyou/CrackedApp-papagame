package com.sigmob.sdk.base.models.config;

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

/* JADX INFO: loaded from: classes5.dex */
public final class SigmobSplashConfig extends AndroidMessage<SigmobSplashConfig, Builder> {
    public static final ProtoAdapter<SigmobSplashConfig> ADAPTER;
    public static final Parcelable.Creator<SigmobSplashConfig> CREATOR;
    public static final Integer DEFAULT_CACHETOP;
    public static final Integer DEFAULT_MATERIAL_EXPIRED_TIME;
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", tag = 1)
    public final Integer cacheTop;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", tag = 2)
    public final Integer material_expired_time;

    public static final class Builder extends Message.Builder<SigmobSplashConfig, Builder> {
        public Integer cacheTop;
        public Integer material_expired_time;

        public Builder cacheTop(Integer cacheTop) {
            this.cacheTop = cacheTop;
            return this;
        }

        public Builder material_expired_time(Integer material_expired_time) {
            this.material_expired_time = material_expired_time;
            return this;
        }

        @Override // com.czhj.wire.Message.Builder
        public SigmobSplashConfig build() {
            return new SigmobSplashConfig(this.cacheTop, this.material_expired_time, super.buildUnknownFields());
        }
    }

    private static final class ProtoAdapter_SigmobSplashConfig extends ProtoAdapter<SigmobSplashConfig> {
        public ProtoAdapter_SigmobSplashConfig() {
            super(FieldEncoding.LENGTH_DELIMITED, SigmobSplashConfig.class);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.czhj.wire.ProtoAdapter
        public SigmobSplashConfig decode(ProtoReader reader) throws IOException {
            Builder builder = new Builder();
            long jBeginMessage = reader.beginMessage();
            while (true) {
                int iNextTag = reader.nextTag();
                if (iNextTag == -1) {
                    reader.endMessage(jBeginMessage);
                    return builder.build();
                }
                if (iNextTag == 1) {
                    builder.cacheTop(ProtoAdapter.INT32.decode(reader));
                } else if (iNextTag != 2) {
                    FieldEncoding fieldEncodingPeekFieldEncoding = reader.peekFieldEncoding();
                    builder.addUnknownField(iNextTag, fieldEncodingPeekFieldEncoding, fieldEncodingPeekFieldEncoding.rawProtoAdapter().decode(reader));
                } else {
                    builder.material_expired_time(ProtoAdapter.INT32.decode(reader));
                }
            }
        }

        @Override // com.czhj.wire.ProtoAdapter
        public void encode(ProtoWriter writer, SigmobSplashConfig value) throws IOException {
            ProtoAdapter<Integer> protoAdapter = ProtoAdapter.INT32;
            protoAdapter.encodeWithTag(writer, 1, value.cacheTop);
            protoAdapter.encodeWithTag(writer, 2, value.material_expired_time);
            writer.writeBytes(value.unknownFields());
        }

        @Override // com.czhj.wire.ProtoAdapter
        public int encodedSize(SigmobSplashConfig value) {
            ProtoAdapter<Integer> protoAdapter = ProtoAdapter.INT32;
            return protoAdapter.encodedSizeWithTag(1, value.cacheTop) + protoAdapter.encodedSizeWithTag(2, value.material_expired_time) + value.unknownFields().size();
        }

        @Override // com.czhj.wire.ProtoAdapter
        public SigmobSplashConfig redact(SigmobSplashConfig value) {
            Builder builderNewBuilder = value.newBuilder();
            builderNewBuilder.clearUnknownFields();
            return builderNewBuilder.build();
        }
    }

    static {
        ProtoAdapter_SigmobSplashConfig protoAdapter_SigmobSplashConfig = new ProtoAdapter_SigmobSplashConfig();
        ADAPTER = protoAdapter_SigmobSplashConfig;
        CREATOR = AndroidMessage.newCreator(protoAdapter_SigmobSplashConfig);
        DEFAULT_CACHETOP = 0;
        DEFAULT_MATERIAL_EXPIRED_TIME = 0;
    }

    public SigmobSplashConfig(Integer cacheTop, Integer material_expired_time) {
        this(cacheTop, material_expired_time, ByteString.EMPTY);
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof SigmobSplashConfig)) {
            return false;
        }
        SigmobSplashConfig sigmobSplashConfig = (SigmobSplashConfig) other;
        return unknownFields().equals(sigmobSplashConfig.unknownFields()) && Internal.equals(this.cacheTop, sigmobSplashConfig.cacheTop) && Internal.equals(this.material_expired_time, sigmobSplashConfig.material_expired_time);
    }

    public int hashCode() {
        int i10 = this.hashCode;
        if (i10 != 0) {
            return i10;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        Integer num = this.cacheTop;
        int iHashCode2 = (iHashCode + (num != null ? num.hashCode() : 0)) * 37;
        Integer num2 = this.material_expired_time;
        int iHashCode3 = iHashCode2 + (num2 != null ? num2.hashCode() : 0);
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.czhj.wire.Message
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        if (this.cacheTop != null) {
            sb2.append(", cacheTop=");
            sb2.append(this.cacheTop);
        }
        if (this.material_expired_time != null) {
            sb2.append(", material_expired_time=");
            sb2.append(this.material_expired_time);
        }
        StringBuilder sbReplace = sb2.replace(0, 2, "SigmobSplashConfig{");
        sbReplace.append('}');
        return sbReplace.toString();
    }

    public SigmobSplashConfig(Integer cacheTop, Integer material_expired_time, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        this.cacheTop = cacheTop;
        this.material_expired_time = material_expired_time;
    }

    @Override // com.czhj.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.cacheTop = this.cacheTop;
        builder.material_expired_time = this.material_expired_time;
        builder.addUnknownFields(unknownFields());
        return builder;
    }
}
