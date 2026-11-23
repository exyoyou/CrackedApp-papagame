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
public final class ResponseAssetImage extends AndroidMessage<ResponseAssetImage, Builder> {
    public static final ProtoAdapter<ResponseAssetImage> ADAPTER;
    public static final Parcelable.Creator<ResponseAssetImage> CREATOR;
    public static final Integer DEFAULT_H;
    public static final String DEFAULT_URL = "";
    public static final Integer DEFAULT_W;
    private static final long serialVersionUID = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 3)
    public final Integer f79510h;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 1)
    public final String url;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 2)
    public final Integer f79511w;

    public static final class Builder extends Message.Builder<ResponseAssetImage, Builder> {
        public String url = "";

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        public Integer f79513w = ResponseAssetImage.DEFAULT_W;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public Integer f79512h = ResponseAssetImage.DEFAULT_H;

        public Builder h(Integer h10) {
            this.f79512h = h10;
            return this;
        }

        public Builder url(String url) {
            this.url = url;
            return this;
        }

        public Builder w(Integer w10) {
            this.f79513w = w10;
            return this;
        }

        @Override // com.czhj.wire.Message.Builder
        public ResponseAssetImage build() {
            return new ResponseAssetImage(this.url, this.f79513w, this.f79512h, super.buildUnknownFields());
        }
    }

    private static final class ProtoAdapter_ResponseAssetImage extends ProtoAdapter<ResponseAssetImage> {
        public ProtoAdapter_ResponseAssetImage() {
            super(FieldEncoding.LENGTH_DELIMITED, ResponseAssetImage.class);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.czhj.wire.ProtoAdapter
        public ResponseAssetImage decode(ProtoReader reader) throws IOException {
            Builder builder = new Builder();
            long jBeginMessage = reader.beginMessage();
            while (true) {
                int iNextTag = reader.nextTag();
                if (iNextTag == -1) {
                    reader.endMessage(jBeginMessage);
                    return builder.build();
                }
                if (iNextTag == 1) {
                    builder.url(ProtoAdapter.STRING.decode(reader));
                } else if (iNextTag == 2) {
                    builder.w(ProtoAdapter.UINT32.decode(reader));
                } else if (iNextTag != 3) {
                    FieldEncoding fieldEncodingPeekFieldEncoding = reader.peekFieldEncoding();
                    builder.addUnknownField(iNextTag, fieldEncodingPeekFieldEncoding, fieldEncodingPeekFieldEncoding.rawProtoAdapter().decode(reader));
                } else {
                    builder.h(ProtoAdapter.UINT32.decode(reader));
                }
            }
        }

        @Override // com.czhj.wire.ProtoAdapter
        public void encode(ProtoWriter writer, ResponseAssetImage value) throws IOException {
            ProtoAdapter.STRING.encodeWithTag(writer, 1, value.url);
            ProtoAdapter<Integer> protoAdapter = ProtoAdapter.UINT32;
            protoAdapter.encodeWithTag(writer, 2, value.f79511w);
            protoAdapter.encodeWithTag(writer, 3, value.f79510h);
            writer.writeBytes(value.unknownFields());
        }

        @Override // com.czhj.wire.ProtoAdapter
        public int encodedSize(ResponseAssetImage value) {
            int iEncodedSizeWithTag = ProtoAdapter.STRING.encodedSizeWithTag(1, value.url);
            ProtoAdapter<Integer> protoAdapter = ProtoAdapter.UINT32;
            return iEncodedSizeWithTag + protoAdapter.encodedSizeWithTag(2, value.f79511w) + protoAdapter.encodedSizeWithTag(3, value.f79510h) + value.unknownFields().size();
        }

        @Override // com.czhj.wire.ProtoAdapter
        public ResponseAssetImage redact(ResponseAssetImage value) {
            Builder builderNewBuilder = value.newBuilder();
            builderNewBuilder.clearUnknownFields();
            return builderNewBuilder.build();
        }
    }

    static {
        ProtoAdapter_ResponseAssetImage protoAdapter_ResponseAssetImage = new ProtoAdapter_ResponseAssetImage();
        ADAPTER = protoAdapter_ResponseAssetImage;
        CREATOR = AndroidMessage.newCreator(protoAdapter_ResponseAssetImage);
        DEFAULT_W = 0;
        DEFAULT_H = 0;
    }

    public ResponseAssetImage(String url, Integer w10, Integer h10) {
        this(url, w10, h10, ByteString.EMPTY);
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ResponseAssetImage)) {
            return false;
        }
        ResponseAssetImage responseAssetImage = (ResponseAssetImage) other;
        return unknownFields().equals(responseAssetImage.unknownFields()) && Internal.equals(this.url, responseAssetImage.url) && Internal.equals(this.f79511w, responseAssetImage.f79511w) && Internal.equals(this.f79510h, responseAssetImage.f79510h);
    }

    public int hashCode() {
        int i10 = this.hashCode;
        if (i10 != 0) {
            return i10;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        String str = this.url;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
        Integer num = this.f79511w;
        int iHashCode3 = (iHashCode2 + (num != null ? num.hashCode() : 0)) * 37;
        Integer num2 = this.f79510h;
        int iHashCode4 = iHashCode3 + (num2 != null ? num2.hashCode() : 0);
        this.hashCode = iHashCode4;
        return iHashCode4;
    }

    @Override // com.czhj.wire.Message
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        if (this.url != null) {
            sb2.append(", url=");
            sb2.append(this.url);
        }
        if (this.f79511w != null) {
            sb2.append(", w=");
            sb2.append(this.f79511w);
        }
        if (this.f79510h != null) {
            sb2.append(", h=");
            sb2.append(this.f79510h);
        }
        StringBuilder sbReplace = sb2.replace(0, 2, "ResponseAssetImage{");
        sbReplace.append('}');
        return sbReplace.toString();
    }

    public ResponseAssetImage(String url, Integer w10, Integer h10, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        this.url = url;
        this.f79511w = w10;
        this.f79510h = h10;
    }

    @Override // com.czhj.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.url = this.url;
        builder.f79513w = this.f79511w;
        builder.f79512h = this.f79510h;
        builder.addUnknownFields(unknownFields());
        return builder;
    }
}
