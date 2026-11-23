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
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public final class StrategyRequest extends AndroidMessage<StrategyRequest, Builder> {
    public static final ProtoAdapter<StrategyRequest> ADAPTER;
    public static final Parcelable.Creator<StrategyRequest> CREATOR;
    public static final Boolean DEFAULT_AUTO_REQUEST;
    public static final Integer DEFAULT_REQUEST_N;
    public static final Integer DEFAULT_REQUEST_TYPE;
    public static final String DEFAULT_SIGN = "";
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", tag = 5)
    public final Boolean auto_request;

    @WireField(adapter = "com.czhj.sdk.common.models.BidRequest#ADAPTER", tag = 1)
    public final BidRequest bidRequest;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", tag = 6)
    public final Integer request_n;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 4)
    public final Integer request_type;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 2)
    public final String sign;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", keyAdapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 3)
    public final Map<String, String> slot_group;

    public static final class Builder extends Message.Builder<StrategyRequest, Builder> {
        public BidRequest bidRequest;
        public String sign = "";
        public Integer request_type = StrategyRequest.DEFAULT_REQUEST_TYPE;
        public Boolean auto_request = StrategyRequest.DEFAULT_AUTO_REQUEST;
        public Integer request_n = StrategyRequest.DEFAULT_REQUEST_N;
        public Map<String, String> slot_group = Internal.newMutableMap();

        public Builder auto_request(Boolean auto_request) {
            this.auto_request = auto_request;
            return this;
        }

        public Builder bidRequest(BidRequest bidRequest) {
            this.bidRequest = bidRequest;
            return this;
        }

        public Builder request_n(Integer request_n) {
            this.request_n = request_n;
            return this;
        }

        public Builder request_type(Integer request_type) {
            this.request_type = request_type;
            return this;
        }

        public Builder sign(String sign) {
            this.sign = sign;
            return this;
        }

        public Builder slot_group(Map<String, String> slot_group) {
            Internal.checkElementsNotNull(slot_group);
            this.slot_group = slot_group;
            return this;
        }

        @Override // com.czhj.wire.Message.Builder
        public StrategyRequest build() {
            return new StrategyRequest(this.bidRequest, this.sign, this.slot_group, this.request_type, this.auto_request, this.request_n, super.buildUnknownFields());
        }
    }

    private static final class ProtoAdapter_StrategyRequest extends ProtoAdapter<StrategyRequest> {
        private final ProtoAdapter<Map<String, String>> slot_group;

        public ProtoAdapter_StrategyRequest() {
            super(FieldEncoding.LENGTH_DELIMITED, StrategyRequest.class);
            ProtoAdapter<String> protoAdapter = ProtoAdapter.STRING;
            this.slot_group = ProtoAdapter.newMapAdapter(protoAdapter, protoAdapter);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.czhj.wire.ProtoAdapter
        public StrategyRequest decode(ProtoReader reader) throws IOException {
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
                        builder.bidRequest(BidRequest.ADAPTER.decode(reader));
                        break;
                    case 2:
                        builder.sign(ProtoAdapter.STRING.decode(reader));
                        break;
                    case 3:
                        builder.slot_group.putAll(this.slot_group.decode(reader));
                        break;
                    case 4:
                        builder.request_type(ProtoAdapter.UINT32.decode(reader));
                        break;
                    case 5:
                        builder.auto_request(ProtoAdapter.BOOL.decode(reader));
                        break;
                    case 6:
                        builder.request_n(ProtoAdapter.INT32.decode(reader));
                        break;
                    default:
                        FieldEncoding fieldEncodingPeekFieldEncoding = reader.peekFieldEncoding();
                        builder.addUnknownField(iNextTag, fieldEncodingPeekFieldEncoding, fieldEncodingPeekFieldEncoding.rawProtoAdapter().decode(reader));
                        break;
                }
            }
        }

        @Override // com.czhj.wire.ProtoAdapter
        public void encode(ProtoWriter writer, StrategyRequest value) throws IOException {
            BidRequest.ADAPTER.encodeWithTag(writer, 1, value.bidRequest);
            ProtoAdapter.STRING.encodeWithTag(writer, 2, value.sign);
            this.slot_group.encodeWithTag(writer, 3, value.slot_group);
            ProtoAdapter.UINT32.encodeWithTag(writer, 4, value.request_type);
            ProtoAdapter.BOOL.encodeWithTag(writer, 5, value.auto_request);
            ProtoAdapter.INT32.encodeWithTag(writer, 6, value.request_n);
            writer.writeBytes(value.unknownFields());
        }

        @Override // com.czhj.wire.ProtoAdapter
        public int encodedSize(StrategyRequest value) {
            return BidRequest.ADAPTER.encodedSizeWithTag(1, value.bidRequest) + ProtoAdapter.STRING.encodedSizeWithTag(2, value.sign) + this.slot_group.encodedSizeWithTag(3, value.slot_group) + ProtoAdapter.UINT32.encodedSizeWithTag(4, value.request_type) + ProtoAdapter.BOOL.encodedSizeWithTag(5, value.auto_request) + ProtoAdapter.INT32.encodedSizeWithTag(6, value.request_n) + value.unknownFields().size();
        }

        @Override // com.czhj.wire.ProtoAdapter
        public StrategyRequest redact(StrategyRequest value) {
            Builder builderNewBuilder = value.newBuilder();
            BidRequest bidRequest = builderNewBuilder.bidRequest;
            if (bidRequest != null) {
                builderNewBuilder.bidRequest = BidRequest.ADAPTER.redact(bidRequest);
            }
            builderNewBuilder.clearUnknownFields();
            return builderNewBuilder.build();
        }
    }

    static {
        ProtoAdapter_StrategyRequest protoAdapter_StrategyRequest = new ProtoAdapter_StrategyRequest();
        ADAPTER = protoAdapter_StrategyRequest;
        CREATOR = AndroidMessage.newCreator(protoAdapter_StrategyRequest);
        DEFAULT_REQUEST_TYPE = 0;
        DEFAULT_AUTO_REQUEST = Boolean.FALSE;
        DEFAULT_REQUEST_N = 0;
    }

    public StrategyRequest(BidRequest bidRequest, String sign, Map<String, String> slot_group, Integer request_type, Boolean auto_request, Integer request_n) {
        this(bidRequest, sign, slot_group, request_type, auto_request, request_n, ByteString.EMPTY);
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof StrategyRequest)) {
            return false;
        }
        StrategyRequest strategyRequest = (StrategyRequest) other;
        return unknownFields().equals(strategyRequest.unknownFields()) && Internal.equals(this.bidRequest, strategyRequest.bidRequest) && Internal.equals(this.sign, strategyRequest.sign) && this.slot_group.equals(strategyRequest.slot_group) && Internal.equals(this.request_type, strategyRequest.request_type) && Internal.equals(this.auto_request, strategyRequest.auto_request) && Internal.equals(this.request_n, strategyRequest.request_n);
    }

    public int hashCode() {
        int i10 = this.hashCode;
        if (i10 != 0) {
            return i10;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        BidRequest bidRequest = this.bidRequest;
        int iHashCode2 = (iHashCode + (bidRequest != null ? bidRequest.hashCode() : 0)) * 37;
        String str = this.sign;
        int iHashCode3 = (((iHashCode2 + (str != null ? str.hashCode() : 0)) * 37) + this.slot_group.hashCode()) * 37;
        Integer num = this.request_type;
        int iHashCode4 = (iHashCode3 + (num != null ? num.hashCode() : 0)) * 37;
        Boolean bool = this.auto_request;
        int iHashCode5 = (iHashCode4 + (bool != null ? bool.hashCode() : 0)) * 37;
        Integer num2 = this.request_n;
        int iHashCode6 = iHashCode5 + (num2 != null ? num2.hashCode() : 0);
        this.hashCode = iHashCode6;
        return iHashCode6;
    }

    @Override // com.czhj.wire.Message
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        if (this.bidRequest != null) {
            sb2.append(", bidRequest=");
            sb2.append(this.bidRequest);
        }
        if (this.sign != null) {
            sb2.append(", sign=");
            sb2.append(this.sign);
        }
        if (!this.slot_group.isEmpty()) {
            sb2.append(", slot_group=");
            sb2.append(this.slot_group);
        }
        if (this.request_type != null) {
            sb2.append(", request_type=");
            sb2.append(this.request_type);
        }
        if (this.auto_request != null) {
            sb2.append(", auto_request=");
            sb2.append(this.auto_request);
        }
        if (this.request_n != null) {
            sb2.append(", request_n=");
            sb2.append(this.request_n);
        }
        StringBuilder sbReplace = sb2.replace(0, 2, "StrategyRequest{");
        sbReplace.append('}');
        return sbReplace.toString();
    }

    public StrategyRequest(BidRequest bidRequest, String sign, Map<String, String> slot_group, Integer request_type, Boolean auto_request, Integer request_n, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        this.bidRequest = bidRequest;
        this.sign = sign;
        this.slot_group = Internal.immutableCopyOf("slot_group", slot_group);
        this.request_type = request_type;
        this.auto_request = auto_request;
        this.request_n = request_n;
    }

    @Override // com.czhj.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.bidRequest = this.bidRequest;
        builder.sign = this.sign;
        builder.slot_group = Internal.copyOf("slot_group", this.slot_group);
        builder.request_type = this.request_type;
        builder.auto_request = this.auto_request;
        builder.request_n = this.request_n;
        builder.addUnknownFields(unknownFields());
        return builder;
    }
}
