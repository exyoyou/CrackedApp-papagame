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
public final class HBResponse extends AndroidMessage<HBResponse, Builder> {
    public static final ProtoAdapter<HBResponse> ADAPTER;
    public static final Parcelable.Creator<HBResponse> CREATOR;
    public static final String DEFAULT_BID_ID = "";
    public static final Integer DEFAULT_ERR_CODE;
    public static final String DEFAULT_ERR_MSG = "";
    public static final String DEFAULT_LOSE_URL = "";
    public static final ByteString DEFAULT_RESPONSE_BYTES;
    public static final String DEFAULT_RESPONSE_STR = "";
    public static final String DEFAULT_WIN_URL = "";
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 3)
    public final String bid_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 6)
    public final Integer err_code;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 7)
    public final String err_msg;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 2)
    public final String lose_url;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BYTES", tag = 5)
    public final ByteString response_bytes;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 4)
    public final String response_str;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 1)
    public final String win_url;

    public static final class Builder extends Message.Builder<HBResponse, Builder> {
        public String win_url = "";
        public String lose_url = "";
        public String bid_id = "";
        public String response_str = "";
        public ByteString response_bytes = HBResponse.DEFAULT_RESPONSE_BYTES;
        public Integer err_code = HBResponse.DEFAULT_ERR_CODE;
        public String err_msg = "";

        public Builder bid_id(String bid_id) {
            this.bid_id = bid_id;
            return this;
        }

        public Builder err_code(Integer err_code) {
            this.err_code = err_code;
            return this;
        }

        public Builder err_msg(String err_msg) {
            this.err_msg = err_msg;
            return this;
        }

        public Builder lose_url(String lose_url) {
            this.lose_url = lose_url;
            return this;
        }

        public Builder response_bytes(ByteString response_bytes) {
            this.response_bytes = response_bytes;
            return this;
        }

        public Builder response_str(String response_str) {
            this.response_str = response_str;
            return this;
        }

        public Builder win_url(String win_url) {
            this.win_url = win_url;
            return this;
        }

        @Override // com.czhj.wire.Message.Builder
        public HBResponse build() {
            return new HBResponse(this.win_url, this.lose_url, this.bid_id, this.response_str, this.response_bytes, this.err_code, this.err_msg, super.buildUnknownFields());
        }
    }

    private static final class ProtoAdapter_HBResponse extends ProtoAdapter<HBResponse> {
        public ProtoAdapter_HBResponse() {
            super(FieldEncoding.LENGTH_DELIMITED, HBResponse.class);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.czhj.wire.ProtoAdapter
        public HBResponse decode(ProtoReader reader) throws IOException {
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
                        builder.win_url(ProtoAdapter.STRING.decode(reader));
                        break;
                    case 2:
                        builder.lose_url(ProtoAdapter.STRING.decode(reader));
                        break;
                    case 3:
                        builder.bid_id(ProtoAdapter.STRING.decode(reader));
                        break;
                    case 4:
                        builder.response_str(ProtoAdapter.STRING.decode(reader));
                        break;
                    case 5:
                        builder.response_bytes(ProtoAdapter.BYTES.decode(reader));
                        break;
                    case 6:
                        builder.err_code(ProtoAdapter.UINT32.decode(reader));
                        break;
                    case 7:
                        builder.err_msg(ProtoAdapter.STRING.decode(reader));
                        break;
                    default:
                        FieldEncoding fieldEncodingPeekFieldEncoding = reader.peekFieldEncoding();
                        builder.addUnknownField(iNextTag, fieldEncodingPeekFieldEncoding, fieldEncodingPeekFieldEncoding.rawProtoAdapter().decode(reader));
                        break;
                }
            }
        }

        @Override // com.czhj.wire.ProtoAdapter
        public void encode(ProtoWriter writer, HBResponse value) throws IOException {
            ProtoAdapter<String> protoAdapter = ProtoAdapter.STRING;
            protoAdapter.encodeWithTag(writer, 1, value.win_url);
            protoAdapter.encodeWithTag(writer, 2, value.lose_url);
            protoAdapter.encodeWithTag(writer, 3, value.bid_id);
            protoAdapter.encodeWithTag(writer, 4, value.response_str);
            ProtoAdapter.BYTES.encodeWithTag(writer, 5, value.response_bytes);
            ProtoAdapter.UINT32.encodeWithTag(writer, 6, value.err_code);
            protoAdapter.encodeWithTag(writer, 7, value.err_msg);
            writer.writeBytes(value.unknownFields());
        }

        @Override // com.czhj.wire.ProtoAdapter
        public int encodedSize(HBResponse value) {
            ProtoAdapter<String> protoAdapter = ProtoAdapter.STRING;
            return protoAdapter.encodedSizeWithTag(1, value.win_url) + protoAdapter.encodedSizeWithTag(2, value.lose_url) + protoAdapter.encodedSizeWithTag(3, value.bid_id) + protoAdapter.encodedSizeWithTag(4, value.response_str) + ProtoAdapter.BYTES.encodedSizeWithTag(5, value.response_bytes) + ProtoAdapter.UINT32.encodedSizeWithTag(6, value.err_code) + protoAdapter.encodedSizeWithTag(7, value.err_msg) + value.unknownFields().size();
        }

        @Override // com.czhj.wire.ProtoAdapter
        public HBResponse redact(HBResponse value) {
            Builder builderNewBuilder = value.newBuilder();
            builderNewBuilder.clearUnknownFields();
            return builderNewBuilder.build();
        }
    }

    static {
        ProtoAdapter_HBResponse protoAdapter_HBResponse = new ProtoAdapter_HBResponse();
        ADAPTER = protoAdapter_HBResponse;
        CREATOR = AndroidMessage.newCreator(protoAdapter_HBResponse);
        DEFAULT_RESPONSE_BYTES = ByteString.EMPTY;
        DEFAULT_ERR_CODE = 0;
    }

    public HBResponse(String win_url, String lose_url, String bid_id, String response_str, ByteString response_bytes, Integer err_code, String err_msg) {
        this(win_url, lose_url, bid_id, response_str, response_bytes, err_code, err_msg, ByteString.EMPTY);
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof HBResponse)) {
            return false;
        }
        HBResponse hBResponse = (HBResponse) other;
        return unknownFields().equals(hBResponse.unknownFields()) && Internal.equals(this.win_url, hBResponse.win_url) && Internal.equals(this.lose_url, hBResponse.lose_url) && Internal.equals(this.bid_id, hBResponse.bid_id) && Internal.equals(this.response_str, hBResponse.response_str) && Internal.equals(this.response_bytes, hBResponse.response_bytes) && Internal.equals(this.err_code, hBResponse.err_code) && Internal.equals(this.err_msg, hBResponse.err_msg);
    }

    public int hashCode() {
        int i10 = this.hashCode;
        if (i10 != 0) {
            return i10;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        String str = this.win_url;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
        String str2 = this.lose_url;
        int iHashCode3 = (iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 37;
        String str3 = this.bid_id;
        int iHashCode4 = (iHashCode3 + (str3 != null ? str3.hashCode() : 0)) * 37;
        String str4 = this.response_str;
        int iHashCode5 = (iHashCode4 + (str4 != null ? str4.hashCode() : 0)) * 37;
        ByteString byteString = this.response_bytes;
        int iHashCode6 = (iHashCode5 + (byteString != null ? byteString.hashCode() : 0)) * 37;
        Integer num = this.err_code;
        int iHashCode7 = (iHashCode6 + (num != null ? num.hashCode() : 0)) * 37;
        String str5 = this.err_msg;
        int iHashCode8 = iHashCode7 + (str5 != null ? str5.hashCode() : 0);
        this.hashCode = iHashCode8;
        return iHashCode8;
    }

    @Override // com.czhj.wire.Message
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        if (this.win_url != null) {
            sb2.append(", win_url=");
            sb2.append(this.win_url);
        }
        if (this.lose_url != null) {
            sb2.append(", lose_url=");
            sb2.append(this.lose_url);
        }
        if (this.bid_id != null) {
            sb2.append(", bid_id=");
            sb2.append(this.bid_id);
        }
        if (this.response_str != null) {
            sb2.append(", response_str=");
            sb2.append(this.response_str);
        }
        if (this.response_bytes != null) {
            sb2.append(", response_bytes=");
            sb2.append(this.response_bytes);
        }
        if (this.err_code != null) {
            sb2.append(", err_code=");
            sb2.append(this.err_code);
        }
        if (this.err_msg != null) {
            sb2.append(", err_msg=");
            sb2.append(this.err_msg);
        }
        StringBuilder sbReplace = sb2.replace(0, 2, "HBResponse{");
        sbReplace.append('}');
        return sbReplace.toString();
    }

    public HBResponse(String win_url, String lose_url, String bid_id, String response_str, ByteString response_bytes, Integer err_code, String err_msg, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        this.win_url = win_url;
        this.lose_url = lose_url;
        this.bid_id = bid_id;
        this.response_str = response_str;
        this.response_bytes = response_bytes;
        this.err_code = err_code;
        this.err_msg = err_msg;
    }

    @Override // com.czhj.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.win_url = this.win_url;
        builder.lose_url = this.lose_url;
        builder.bid_id = this.bid_id;
        builder.response_str = this.response_str;
        builder.response_bytes = this.response_bytes;
        builder.err_code = this.err_code;
        builder.err_msg = this.err_msg;
        builder.addUnknownFields(unknownFields());
        return builder;
    }
}
