package com.sigmob.sdk.base.models.rtb;

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
public final class ResponseAssetText extends AndroidMessage<ResponseAssetText, Builder> {
    public static final ProtoAdapter<ResponseAssetText> ADAPTER;
    public static final Parcelable.Creator<ResponseAssetText> CREATOR;
    public static final String DEFAULT_CONTEXT = "";
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 1)
    public final String context;

    public static final class Builder extends Message.Builder<ResponseAssetText, Builder> {
        public String context = "";

        public Builder context(String context) {
            this.context = context;
            return this;
        }

        @Override // com.czhj.wire.Message.Builder
        public ResponseAssetText build() {
            return new ResponseAssetText(this.context, super.buildUnknownFields());
        }
    }

    private static final class ProtoAdapter_ResponseAssetText extends ProtoAdapter<ResponseAssetText> {
        public ProtoAdapter_ResponseAssetText() {
            super(FieldEncoding.LENGTH_DELIMITED, ResponseAssetText.class);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.czhj.wire.ProtoAdapter
        public ResponseAssetText decode(ProtoReader reader) throws IOException {
            Builder builder = new Builder();
            long jBeginMessage = reader.beginMessage();
            while (true) {
                int iNextTag = reader.nextTag();
                if (iNextTag == -1) {
                    reader.endMessage(jBeginMessage);
                    return builder.build();
                }
                if (iNextTag != 1) {
                    FieldEncoding fieldEncodingPeekFieldEncoding = reader.peekFieldEncoding();
                    builder.addUnknownField(iNextTag, fieldEncodingPeekFieldEncoding, fieldEncodingPeekFieldEncoding.rawProtoAdapter().decode(reader));
                } else {
                    builder.context(ProtoAdapter.STRING.decode(reader));
                }
            }
        }

        @Override // com.czhj.wire.ProtoAdapter
        public void encode(ProtoWriter writer, ResponseAssetText value) throws IOException {
            ProtoAdapter.STRING.encodeWithTag(writer, 1, value.context);
            writer.writeBytes(value.unknownFields());
        }

        @Override // com.czhj.wire.ProtoAdapter
        public int encodedSize(ResponseAssetText value) {
            return ProtoAdapter.STRING.encodedSizeWithTag(1, value.context) + value.unknownFields().size();
        }

        @Override // com.czhj.wire.ProtoAdapter
        public ResponseAssetText redact(ResponseAssetText value) {
            Builder builderNewBuilder = value.newBuilder();
            builderNewBuilder.clearUnknownFields();
            return builderNewBuilder.build();
        }
    }

    static {
        ProtoAdapter_ResponseAssetText protoAdapter_ResponseAssetText = new ProtoAdapter_ResponseAssetText();
        ADAPTER = protoAdapter_ResponseAssetText;
        CREATOR = AndroidMessage.newCreator(protoAdapter_ResponseAssetText);
    }

    public ResponseAssetText(String context) {
        this(context, ByteString.EMPTY);
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ResponseAssetText)) {
            return false;
        }
        ResponseAssetText responseAssetText = (ResponseAssetText) other;
        return unknownFields().equals(responseAssetText.unknownFields()) && Internal.equals(this.context, responseAssetText.context);
    }

    public int hashCode() {
        int i10 = this.hashCode;
        if (i10 != 0) {
            return i10;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        String str = this.context;
        int iHashCode2 = iHashCode + (str != null ? str.hashCode() : 0);
        this.hashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.czhj.wire.Message
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        if (this.context != null) {
            sb2.append(", context=");
            sb2.append(this.context);
        }
        StringBuilder sbReplace = sb2.replace(0, 2, "ResponseAssetText{");
        sbReplace.append('}');
        return sbReplace.toString();
    }

    public ResponseAssetText(String context, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        this.context = context;
    }

    @Override // com.czhj.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.context = this.context;
        builder.addUnknownFields(unknownFields());
        return builder;
    }
}
