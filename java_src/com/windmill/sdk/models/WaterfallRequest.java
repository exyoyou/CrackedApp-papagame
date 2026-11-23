package com.windmill.sdk.models;

import android.os.Parcelable;
import com.czhj.sdk.common.models.BidRequest;
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
public final class WaterfallRequest extends AndroidMessage<WaterfallRequest, Builder> {
    public static final ProtoAdapter<WaterfallRequest> ADAPTER;
    public static final Parcelable.Creator<WaterfallRequest> CREATOR;
    public static final Integer DEFAULT_REQUEST_N;
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.czhj.sdk.common.models.BidRequest#ADAPTER", tag = 1)
    public final BidRequest bidRequest;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", tag = 3)
    public final Integer request_n;

    @WireField(adapter = "com.windmill.sdk.models.Waterfall#ADAPTER", tag = 2)
    public final Waterfall waterfall;

    public static final class Builder extends Message.Builder<WaterfallRequest, Builder> {
        public BidRequest bidRequest;
        public Integer request_n = WaterfallRequest.DEFAULT_REQUEST_N;
        public Waterfall waterfall;

        public Builder bidRequest(BidRequest bidRequest) {
            this.bidRequest = bidRequest;
            return this;
        }

        public Builder request_n(Integer request_n) {
            this.request_n = request_n;
            return this;
        }

        public Builder waterfall(Waterfall waterfall) {
            this.waterfall = waterfall;
            return this;
        }

        @Override // com.czhj.wire.Message.Builder
        public WaterfallRequest build() {
            return new WaterfallRequest(this.bidRequest, this.waterfall, this.request_n, super.buildUnknownFields());
        }
    }

    private static final class ProtoAdapter_WaterfallRequest extends ProtoAdapter<WaterfallRequest> {
        public ProtoAdapter_WaterfallRequest() {
            super(FieldEncoding.LENGTH_DELIMITED, WaterfallRequest.class);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.czhj.wire.ProtoAdapter
        public WaterfallRequest decode(ProtoReader reader) throws IOException {
            Builder builder = new Builder();
            long jBeginMessage = reader.beginMessage();
            while (true) {
                int iNextTag = reader.nextTag();
                if (iNextTag == -1) {
                    reader.endMessage(jBeginMessage);
                    return builder.build();
                }
                if (iNextTag == 1) {
                    builder.bidRequest(BidRequest.ADAPTER.decode(reader));
                } else if (iNextTag == 2) {
                    builder.waterfall(Waterfall.ADAPTER.decode(reader));
                } else if (iNextTag != 3) {
                    FieldEncoding fieldEncodingPeekFieldEncoding = reader.peekFieldEncoding();
                    builder.addUnknownField(iNextTag, fieldEncodingPeekFieldEncoding, fieldEncodingPeekFieldEncoding.rawProtoAdapter().decode(reader));
                } else {
                    builder.request_n(ProtoAdapter.INT32.decode(reader));
                }
            }
        }

        @Override // com.czhj.wire.ProtoAdapter
        public void encode(ProtoWriter writer, WaterfallRequest value) throws IOException {
            BidRequest.ADAPTER.encodeWithTag(writer, 1, value.bidRequest);
            Waterfall.ADAPTER.encodeWithTag(writer, 2, value.waterfall);
            ProtoAdapter.INT32.encodeWithTag(writer, 3, value.request_n);
            writer.writeBytes(value.unknownFields());
        }

        @Override // com.czhj.wire.ProtoAdapter
        public int encodedSize(WaterfallRequest value) {
            return BidRequest.ADAPTER.encodedSizeWithTag(1, value.bidRequest) + Waterfall.ADAPTER.encodedSizeWithTag(2, value.waterfall) + ProtoAdapter.INT32.encodedSizeWithTag(3, value.request_n) + value.unknownFields().size();
        }

        @Override // com.czhj.wire.ProtoAdapter
        public WaterfallRequest redact(WaterfallRequest value) {
            Builder builderNewBuilder = value.newBuilder();
            BidRequest bidRequest = builderNewBuilder.bidRequest;
            if (bidRequest != null) {
                builderNewBuilder.bidRequest = BidRequest.ADAPTER.redact(bidRequest);
            }
            Waterfall waterfall = builderNewBuilder.waterfall;
            if (waterfall != null) {
                builderNewBuilder.waterfall = Waterfall.ADAPTER.redact(waterfall);
            }
            builderNewBuilder.clearUnknownFields();
            return builderNewBuilder.build();
        }
    }

    static {
        ProtoAdapter_WaterfallRequest protoAdapter_WaterfallRequest = new ProtoAdapter_WaterfallRequest();
        ADAPTER = protoAdapter_WaterfallRequest;
        CREATOR = AndroidMessage.newCreator(protoAdapter_WaterfallRequest);
        DEFAULT_REQUEST_N = 0;
    }

    public WaterfallRequest(BidRequest bidRequest, Waterfall waterfall, Integer request_n) {
        this(bidRequest, waterfall, request_n, ByteString.EMPTY);
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof WaterfallRequest)) {
            return false;
        }
        WaterfallRequest waterfallRequest = (WaterfallRequest) other;
        return unknownFields().equals(waterfallRequest.unknownFields()) && Internal.equals(this.bidRequest, waterfallRequest.bidRequest) && Internal.equals(this.waterfall, waterfallRequest.waterfall) && Internal.equals(this.request_n, waterfallRequest.request_n);
    }

    public int hashCode() {
        int i10 = this.hashCode;
        if (i10 != 0) {
            return i10;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        BidRequest bidRequest = this.bidRequest;
        int iHashCode2 = (iHashCode + (bidRequest != null ? bidRequest.hashCode() : 0)) * 37;
        Waterfall waterfall = this.waterfall;
        int iHashCode3 = (iHashCode2 + (waterfall != null ? waterfall.hashCode() : 0)) * 37;
        Integer num = this.request_n;
        int iHashCode4 = iHashCode3 + (num != null ? num.hashCode() : 0);
        this.hashCode = iHashCode4;
        return iHashCode4;
    }

    @Override // com.czhj.wire.Message
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        if (this.bidRequest != null) {
            sb2.append(", bidRequest=");
            sb2.append(this.bidRequest);
        }
        if (this.waterfall != null) {
            sb2.append(", waterfall=");
            sb2.append(this.waterfall);
        }
        if (this.request_n != null) {
            sb2.append(", request_n=");
            sb2.append(this.request_n);
        }
        StringBuilder sbReplace = sb2.replace(0, 2, "WaterfallRequest{");
        sbReplace.append('}');
        return sbReplace.toString();
    }

    public WaterfallRequest(BidRequest bidRequest, Waterfall waterfall, Integer request_n, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        this.bidRequest = bidRequest;
        this.waterfall = waterfall;
        this.request_n = request_n;
    }

    @Override // com.czhj.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.bidRequest = this.bidRequest;
        builder.waterfall = this.waterfall;
        builder.request_n = this.request_n;
        builder.addUnknownFields(unknownFields());
        return builder;
    }
}
