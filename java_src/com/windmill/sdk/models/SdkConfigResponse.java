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
public final class SdkConfigResponse extends AndroidMessage<SdkConfigResponse, Builder> {
    public static final ProtoAdapter<SdkConfigResponse> ADAPTER;
    public static final Parcelable.Creator<SdkConfigResponse> CREATOR;
    public static final Integer DEFAULT_CODE;
    public static final String DEFAULT_ERROR_MESSAGE = "";
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 1)
    public final Integer code;

    @WireField(adapter = "com.windmill.sdk.models.SdkConfig#ADAPTER", tag = 3)
    public final SdkConfig config;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 2)
    public final String error_message;

    public static final class Builder extends Message.Builder<SdkConfigResponse, Builder> {
        public SdkConfig config;
        public Integer code = SdkConfigResponse.DEFAULT_CODE;
        public String error_message = "";

        public Builder code(Integer code) {
            this.code = code;
            return this;
        }

        public Builder config(SdkConfig config) {
            this.config = config;
            return this;
        }

        public Builder error_message(String error_message) {
            this.error_message = error_message;
            return this;
        }

        @Override // com.czhj.wire.Message.Builder
        public SdkConfigResponse build() {
            return new SdkConfigResponse(this.code, this.error_message, this.config, super.buildUnknownFields());
        }
    }

    private static final class ProtoAdapter_SdkConfigResponse extends ProtoAdapter<SdkConfigResponse> {
        public ProtoAdapter_SdkConfigResponse() {
            super(FieldEncoding.LENGTH_DELIMITED, SdkConfigResponse.class);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.czhj.wire.ProtoAdapter
        public SdkConfigResponse decode(ProtoReader reader) throws IOException {
            Builder builder = new Builder();
            long jBeginMessage = reader.beginMessage();
            while (true) {
                int iNextTag = reader.nextTag();
                if (iNextTag == -1) {
                    reader.endMessage(jBeginMessage);
                    return builder.build();
                }
                if (iNextTag == 1) {
                    builder.code(ProtoAdapter.UINT32.decode(reader));
                } else if (iNextTag == 2) {
                    builder.error_message(ProtoAdapter.STRING.decode(reader));
                } else if (iNextTag != 3) {
                    FieldEncoding fieldEncodingPeekFieldEncoding = reader.peekFieldEncoding();
                    builder.addUnknownField(iNextTag, fieldEncodingPeekFieldEncoding, fieldEncodingPeekFieldEncoding.rawProtoAdapter().decode(reader));
                } else {
                    builder.config(SdkConfig.ADAPTER.decode(reader));
                }
            }
        }

        @Override // com.czhj.wire.ProtoAdapter
        public void encode(ProtoWriter writer, SdkConfigResponse value) throws IOException {
            ProtoAdapter.UINT32.encodeWithTag(writer, 1, value.code);
            ProtoAdapter.STRING.encodeWithTag(writer, 2, value.error_message);
            SdkConfig.ADAPTER.encodeWithTag(writer, 3, value.config);
            writer.writeBytes(value.unknownFields());
        }

        @Override // com.czhj.wire.ProtoAdapter
        public int encodedSize(SdkConfigResponse value) {
            return ProtoAdapter.UINT32.encodedSizeWithTag(1, value.code) + ProtoAdapter.STRING.encodedSizeWithTag(2, value.error_message) + SdkConfig.ADAPTER.encodedSizeWithTag(3, value.config) + value.unknownFields().size();
        }

        @Override // com.czhj.wire.ProtoAdapter
        public SdkConfigResponse redact(SdkConfigResponse value) {
            Builder builderNewBuilder = value.newBuilder();
            SdkConfig sdkConfig = builderNewBuilder.config;
            if (sdkConfig != null) {
                builderNewBuilder.config = SdkConfig.ADAPTER.redact(sdkConfig);
            }
            builderNewBuilder.clearUnknownFields();
            return builderNewBuilder.build();
        }
    }

    static {
        ProtoAdapter_SdkConfigResponse protoAdapter_SdkConfigResponse = new ProtoAdapter_SdkConfigResponse();
        ADAPTER = protoAdapter_SdkConfigResponse;
        CREATOR = AndroidMessage.newCreator(protoAdapter_SdkConfigResponse);
        DEFAULT_CODE = 0;
    }

    public SdkConfigResponse(Integer code, String error_message, SdkConfig config) {
        this(code, error_message, config, ByteString.EMPTY);
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof SdkConfigResponse)) {
            return false;
        }
        SdkConfigResponse sdkConfigResponse = (SdkConfigResponse) other;
        return unknownFields().equals(sdkConfigResponse.unknownFields()) && Internal.equals(this.code, sdkConfigResponse.code) && Internal.equals(this.error_message, sdkConfigResponse.error_message) && Internal.equals(this.config, sdkConfigResponse.config);
    }

    public int hashCode() {
        int i10 = this.hashCode;
        if (i10 != 0) {
            return i10;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        Integer num = this.code;
        int iHashCode2 = (iHashCode + (num != null ? num.hashCode() : 0)) * 37;
        String str = this.error_message;
        int iHashCode3 = (iHashCode2 + (str != null ? str.hashCode() : 0)) * 37;
        SdkConfig sdkConfig = this.config;
        int iHashCode4 = iHashCode3 + (sdkConfig != null ? sdkConfig.hashCode() : 0);
        this.hashCode = iHashCode4;
        return iHashCode4;
    }

    @Override // com.czhj.wire.Message
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        if (this.code != null) {
            sb2.append(", code=");
            sb2.append(this.code);
        }
        if (this.error_message != null) {
            sb2.append(", error_message=");
            sb2.append(this.error_message);
        }
        if (this.config != null) {
            sb2.append(", config=");
            sb2.append(this.config);
        }
        StringBuilder sbReplace = sb2.replace(0, 2, "SdkConfigResponse{");
        sbReplace.append('}');
        return sbReplace.toString();
    }

    public SdkConfigResponse(Integer code, String error_message, SdkConfig config, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        this.code = code;
        this.error_message = error_message;
        this.config = config;
    }

    @Override // com.czhj.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.code = this.code;
        builder.error_message = this.error_message;
        builder.config = this.config;
        builder.addUnknownFields(unknownFields());
        return builder;
    }
}
