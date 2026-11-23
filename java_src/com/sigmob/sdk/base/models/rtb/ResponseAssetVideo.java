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
public final class ResponseAssetVideo extends AndroidMessage<ResponseAssetVideo, Builder> {
    public static final ProtoAdapter<ResponseAssetVideo> ADAPTER;
    public static final Parcelable.Creator<ResponseAssetVideo> CREATOR;
    public static final Integer DEFAULT_DURATION;
    public static final Integer DEFAULT_H;
    public static final String DEFAULT_URL = "";
    public static final Integer DEFAULT_W;
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 4)
    public final Integer duration;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 3)
    public final Integer f79514h;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 1)
    public final String url;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 2)
    public final Integer f79515w;

    public static final class Builder extends Message.Builder<ResponseAssetVideo, Builder> {
        public String url = "";

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        public Integer f79517w = ResponseAssetVideo.DEFAULT_W;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public Integer f79516h = ResponseAssetVideo.DEFAULT_H;
        public Integer duration = ResponseAssetVideo.DEFAULT_DURATION;

        public Builder duration(Integer duration) {
            this.duration = duration;
            return this;
        }

        public Builder h(Integer h10) {
            this.f79516h = h10;
            return this;
        }

        public Builder url(String url) {
            this.url = url;
            return this;
        }

        public Builder w(Integer w10) {
            this.f79517w = w10;
            return this;
        }

        @Override // com.czhj.wire.Message.Builder
        public ResponseAssetVideo build() {
            return new ResponseAssetVideo(this.url, this.f79517w, this.f79516h, this.duration, super.buildUnknownFields());
        }
    }

    private static final class ProtoAdapter_ResponseAssetVideo extends ProtoAdapter<ResponseAssetVideo> {
        public ProtoAdapter_ResponseAssetVideo() {
            super(FieldEncoding.LENGTH_DELIMITED, ResponseAssetVideo.class);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.czhj.wire.ProtoAdapter
        public ResponseAssetVideo decode(ProtoReader reader) throws IOException {
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
                } else if (iNextTag == 3) {
                    builder.h(ProtoAdapter.UINT32.decode(reader));
                } else if (iNextTag != 4) {
                    FieldEncoding fieldEncodingPeekFieldEncoding = reader.peekFieldEncoding();
                    builder.addUnknownField(iNextTag, fieldEncodingPeekFieldEncoding, fieldEncodingPeekFieldEncoding.rawProtoAdapter().decode(reader));
                } else {
                    builder.duration(ProtoAdapter.UINT32.decode(reader));
                }
            }
        }

        @Override // com.czhj.wire.ProtoAdapter
        public void encode(ProtoWriter writer, ResponseAssetVideo value) throws IOException {
            ProtoAdapter.STRING.encodeWithTag(writer, 1, value.url);
            ProtoAdapter<Integer> protoAdapter = ProtoAdapter.UINT32;
            protoAdapter.encodeWithTag(writer, 2, value.f79515w);
            protoAdapter.encodeWithTag(writer, 3, value.f79514h);
            protoAdapter.encodeWithTag(writer, 4, value.duration);
            writer.writeBytes(value.unknownFields());
        }

        @Override // com.czhj.wire.ProtoAdapter
        public int encodedSize(ResponseAssetVideo value) {
            int iEncodedSizeWithTag = ProtoAdapter.STRING.encodedSizeWithTag(1, value.url);
            ProtoAdapter<Integer> protoAdapter = ProtoAdapter.UINT32;
            return iEncodedSizeWithTag + protoAdapter.encodedSizeWithTag(2, value.f79515w) + protoAdapter.encodedSizeWithTag(3, value.f79514h) + protoAdapter.encodedSizeWithTag(4, value.duration) + value.unknownFields().size();
        }

        @Override // com.czhj.wire.ProtoAdapter
        public ResponseAssetVideo redact(ResponseAssetVideo value) {
            Builder builderNewBuilder = value.newBuilder();
            builderNewBuilder.clearUnknownFields();
            return builderNewBuilder.build();
        }
    }

    static {
        ProtoAdapter_ResponseAssetVideo protoAdapter_ResponseAssetVideo = new ProtoAdapter_ResponseAssetVideo();
        ADAPTER = protoAdapter_ResponseAssetVideo;
        CREATOR = AndroidMessage.newCreator(protoAdapter_ResponseAssetVideo);
        DEFAULT_W = 0;
        DEFAULT_H = 0;
        DEFAULT_DURATION = 0;
    }

    public ResponseAssetVideo(String url, Integer w10, Integer h10, Integer duration) {
        this(url, w10, h10, duration, ByteString.EMPTY);
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ResponseAssetVideo)) {
            return false;
        }
        ResponseAssetVideo responseAssetVideo = (ResponseAssetVideo) other;
        return unknownFields().equals(responseAssetVideo.unknownFields()) && Internal.equals(this.url, responseAssetVideo.url) && Internal.equals(this.f79515w, responseAssetVideo.f79515w) && Internal.equals(this.f79514h, responseAssetVideo.f79514h) && Internal.equals(this.duration, responseAssetVideo.duration);
    }

    public int hashCode() {
        int i10 = this.hashCode;
        if (i10 != 0) {
            return i10;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        String str = this.url;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
        Integer num = this.f79515w;
        int iHashCode3 = (iHashCode2 + (num != null ? num.hashCode() : 0)) * 37;
        Integer num2 = this.f79514h;
        int iHashCode4 = (iHashCode3 + (num2 != null ? num2.hashCode() : 0)) * 37;
        Integer num3 = this.duration;
        int iHashCode5 = iHashCode4 + (num3 != null ? num3.hashCode() : 0);
        this.hashCode = iHashCode5;
        return iHashCode5;
    }

    @Override // com.czhj.wire.Message
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        if (this.url != null) {
            sb2.append(", url=");
            sb2.append(this.url);
        }
        if (this.f79515w != null) {
            sb2.append(", w=");
            sb2.append(this.f79515w);
        }
        if (this.f79514h != null) {
            sb2.append(", h=");
            sb2.append(this.f79514h);
        }
        if (this.duration != null) {
            sb2.append(", duration=");
            sb2.append(this.duration);
        }
        StringBuilder sbReplace = sb2.replace(0, 2, "ResponseAssetVideo{");
        sbReplace.append('}');
        return sbReplace.toString();
    }

    public ResponseAssetVideo(String url, Integer w10, Integer h10, Integer duration, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        this.url = url;
        this.f79515w = w10;
        this.f79514h = h10;
        this.duration = duration;
    }

    @Override // com.czhj.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.url = this.url;
        builder.f79517w = this.f79515w;
        builder.f79516h = this.f79514h;
        builder.duration = this.duration;
        builder.addUnknownFields(unknownFields());
        return builder;
    }
}
