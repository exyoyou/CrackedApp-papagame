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
public final class WaterfallResponse extends AndroidMessage<WaterfallResponse, Builder> {
    public static final ProtoAdapter<WaterfallResponse> ADAPTER;
    public static final Parcelable.Creator<WaterfallResponse> CREATOR;
    public static final Integer DEFAULT_CODE;
    public static final String DEFAULT_ERROR_MESSAGE = "";
    public static final String DEFAULT_SIGN = "";
    public static final String DEFAULT_UID = "";
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 1)
    public final Integer code;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", keyAdapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 7)
    public final Map<String, String> dc_options;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 2)
    public final String error_message;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", keyAdapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 8)
    public final Map<String, String> saas_options;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 5)
    public final String sign;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 3)
    public final String uid;

    @WireField(adapter = "com.windmill.sdk.models.Waterfall#ADAPTER", tag = 6)
    public final Waterfall waterfall;

    public static final class Builder extends Message.Builder<WaterfallResponse, Builder> {
        public Waterfall waterfall;
        public Integer code = WaterfallResponse.DEFAULT_CODE;
        public String error_message = "";
        public String uid = "";
        public String sign = "";
        public Map<String, String> dc_options = Internal.newMutableMap();
        public Map<String, String> saas_options = Internal.newMutableMap();

        public Builder code(Integer code) {
            this.code = code;
            return this;
        }

        public Builder dc_options(Map<String, String> dc_options) {
            Internal.checkElementsNotNull(dc_options);
            this.dc_options = dc_options;
            return this;
        }

        public Builder error_message(String error_message) {
            this.error_message = error_message;
            return this;
        }

        public Builder saas_options(Map<String, String> saas_options) {
            Internal.checkElementsNotNull(saas_options);
            this.saas_options = saas_options;
            return this;
        }

        public Builder sign(String sign) {
            this.sign = sign;
            return this;
        }

        public Builder uid(String uid) {
            this.uid = uid;
            return this;
        }

        public Builder waterfall(Waterfall waterfall) {
            this.waterfall = waterfall;
            return this;
        }

        @Override // com.czhj.wire.Message.Builder
        public WaterfallResponse build() {
            return new WaterfallResponse(this.code, this.error_message, this.uid, this.sign, this.waterfall, this.dc_options, this.saas_options, super.buildUnknownFields());
        }
    }

    private static final class ProtoAdapter_WaterfallResponse extends ProtoAdapter<WaterfallResponse> {
        private final ProtoAdapter<Map<String, String>> dc_options;
        private final ProtoAdapter<Map<String, String>> saas_options;

        public ProtoAdapter_WaterfallResponse() {
            super(FieldEncoding.LENGTH_DELIMITED, WaterfallResponse.class);
            ProtoAdapter<String> protoAdapter = ProtoAdapter.STRING;
            this.dc_options = ProtoAdapter.newMapAdapter(protoAdapter, protoAdapter);
            this.saas_options = ProtoAdapter.newMapAdapter(protoAdapter, protoAdapter);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.czhj.wire.ProtoAdapter
        public WaterfallResponse decode(ProtoReader reader) throws IOException {
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
                        builder.code(ProtoAdapter.UINT32.decode(reader));
                        break;
                    case 2:
                        builder.error_message(ProtoAdapter.STRING.decode(reader));
                        break;
                    case 3:
                        builder.uid(ProtoAdapter.STRING.decode(reader));
                        break;
                    case 4:
                    default:
                        FieldEncoding fieldEncodingPeekFieldEncoding = reader.peekFieldEncoding();
                        builder.addUnknownField(iNextTag, fieldEncodingPeekFieldEncoding, fieldEncodingPeekFieldEncoding.rawProtoAdapter().decode(reader));
                        break;
                    case 5:
                        builder.sign(ProtoAdapter.STRING.decode(reader));
                        break;
                    case 6:
                        builder.waterfall(Waterfall.ADAPTER.decode(reader));
                        break;
                    case 7:
                        builder.dc_options.putAll(this.dc_options.decode(reader));
                        break;
                    case 8:
                        builder.saas_options.putAll(this.saas_options.decode(reader));
                        break;
                }
            }
        }

        @Override // com.czhj.wire.ProtoAdapter
        public void encode(ProtoWriter writer, WaterfallResponse value) throws IOException {
            ProtoAdapter.UINT32.encodeWithTag(writer, 1, value.code);
            ProtoAdapter<String> protoAdapter = ProtoAdapter.STRING;
            protoAdapter.encodeWithTag(writer, 2, value.error_message);
            protoAdapter.encodeWithTag(writer, 3, value.uid);
            protoAdapter.encodeWithTag(writer, 5, value.sign);
            Waterfall.ADAPTER.encodeWithTag(writer, 6, value.waterfall);
            this.dc_options.encodeWithTag(writer, 7, value.dc_options);
            this.saas_options.encodeWithTag(writer, 8, value.saas_options);
            writer.writeBytes(value.unknownFields());
        }

        @Override // com.czhj.wire.ProtoAdapter
        public int encodedSize(WaterfallResponse value) {
            int iEncodedSizeWithTag = ProtoAdapter.UINT32.encodedSizeWithTag(1, value.code);
            ProtoAdapter<String> protoAdapter = ProtoAdapter.STRING;
            return iEncodedSizeWithTag + protoAdapter.encodedSizeWithTag(2, value.error_message) + protoAdapter.encodedSizeWithTag(3, value.uid) + protoAdapter.encodedSizeWithTag(5, value.sign) + Waterfall.ADAPTER.encodedSizeWithTag(6, value.waterfall) + this.dc_options.encodedSizeWithTag(7, value.dc_options) + this.saas_options.encodedSizeWithTag(8, value.saas_options) + value.unknownFields().size();
        }

        @Override // com.czhj.wire.ProtoAdapter
        public WaterfallResponse redact(WaterfallResponse value) {
            Builder builderNewBuilder = value.newBuilder();
            Waterfall waterfall = builderNewBuilder.waterfall;
            if (waterfall != null) {
                builderNewBuilder.waterfall = Waterfall.ADAPTER.redact(waterfall);
            }
            builderNewBuilder.clearUnknownFields();
            return builderNewBuilder.build();
        }
    }

    static {
        ProtoAdapter_WaterfallResponse protoAdapter_WaterfallResponse = new ProtoAdapter_WaterfallResponse();
        ADAPTER = protoAdapter_WaterfallResponse;
        CREATOR = AndroidMessage.newCreator(protoAdapter_WaterfallResponse);
        DEFAULT_CODE = 0;
    }

    public WaterfallResponse(Integer code, String error_message, String uid, String sign, Waterfall waterfall, Map<String, String> dc_options, Map<String, String> saas_options) {
        this(code, error_message, uid, sign, waterfall, dc_options, saas_options, ByteString.EMPTY);
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof WaterfallResponse)) {
            return false;
        }
        WaterfallResponse waterfallResponse = (WaterfallResponse) other;
        return unknownFields().equals(waterfallResponse.unknownFields()) && Internal.equals(this.code, waterfallResponse.code) && Internal.equals(this.error_message, waterfallResponse.error_message) && Internal.equals(this.uid, waterfallResponse.uid) && Internal.equals(this.sign, waterfallResponse.sign) && Internal.equals(this.waterfall, waterfallResponse.waterfall) && this.dc_options.equals(waterfallResponse.dc_options) && this.saas_options.equals(waterfallResponse.saas_options);
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
        String str2 = this.uid;
        int iHashCode4 = (iHashCode3 + (str2 != null ? str2.hashCode() : 0)) * 37;
        String str3 = this.sign;
        int iHashCode5 = (iHashCode4 + (str3 != null ? str3.hashCode() : 0)) * 37;
        Waterfall waterfall = this.waterfall;
        int iHashCode6 = ((((iHashCode5 + (waterfall != null ? waterfall.hashCode() : 0)) * 37) + this.dc_options.hashCode()) * 37) + this.saas_options.hashCode();
        this.hashCode = iHashCode6;
        return iHashCode6;
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
        if (this.uid != null) {
            sb2.append(", uid=");
            sb2.append(this.uid);
        }
        if (this.sign != null) {
            sb2.append(", sign=");
            sb2.append(this.sign);
        }
        if (this.waterfall != null) {
            sb2.append(", waterfall=");
            sb2.append(this.waterfall);
        }
        if (!this.dc_options.isEmpty()) {
            sb2.append(", dc_options=");
            sb2.append(this.dc_options);
        }
        if (!this.saas_options.isEmpty()) {
            sb2.append(", saas_options=");
            sb2.append(this.saas_options);
        }
        StringBuilder sbReplace = sb2.replace(0, 2, "WaterfallResponse{");
        sbReplace.append('}');
        return sbReplace.toString();
    }

    public WaterfallResponse(Integer code, String error_message, String uid, String sign, Waterfall waterfall, Map<String, String> dc_options, Map<String, String> saas_options, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        this.code = code;
        this.error_message = error_message;
        this.uid = uid;
        this.sign = sign;
        this.waterfall = waterfall;
        this.dc_options = Internal.immutableCopyOf("dc_options", dc_options);
        this.saas_options = Internal.immutableCopyOf("saas_options", saas_options);
    }

    @Override // com.czhj.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.code = this.code;
        builder.error_message = this.error_message;
        builder.uid = this.uid;
        builder.sign = this.sign;
        builder.waterfall = this.waterfall;
        builder.dc_options = Internal.copyOf("dc_options", this.dc_options);
        builder.saas_options = Internal.copyOf("saas_options", this.saas_options);
        builder.addUnknownFields(unknownFields());
        return builder;
    }
}
