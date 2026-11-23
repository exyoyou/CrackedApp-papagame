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
public final class MtElementInfo extends AndroidMessage<MtElementInfo, Builder> {
    public static final ProtoAdapter<MtElementInfo> ADAPTER;
    public static final Parcelable.Creator<MtElementInfo> CREATOR;
    public static final Integer DEFAULT_CHANNEL_ID;
    public static final Integer DEFAULT_ELEMENT_ID;
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 1)
    public final Integer channel_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 2)
    public final Integer element_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", keyAdapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 3)
    public final Map<String, String> mt_element_options;

    public static final class Builder extends Message.Builder<MtElementInfo, Builder> {
        public Integer channel_id;
        public Integer element_id;
        public Map<String, String> mt_element_options = Internal.newMutableMap();

        public Builder channel_id(Integer channel_id) {
            this.channel_id = channel_id;
            return this;
        }

        public Builder element_id(Integer element_id) {
            this.element_id = element_id;
            return this;
        }

        public Builder mt_element_options(Map<String, String> mt_element_options) {
            Internal.checkElementsNotNull(mt_element_options);
            this.mt_element_options = mt_element_options;
            return this;
        }

        @Override // com.czhj.wire.Message.Builder
        public MtElementInfo build() {
            return new MtElementInfo(this.channel_id, this.element_id, this.mt_element_options, super.buildUnknownFields());
        }
    }

    private static final class ProtoAdapter_MtElementInfo extends ProtoAdapter<MtElementInfo> {
        private final ProtoAdapter<Map<String, String>> mt_element_options;

        public ProtoAdapter_MtElementInfo() {
            super(FieldEncoding.LENGTH_DELIMITED, MtElementInfo.class);
            ProtoAdapter<String> protoAdapter = ProtoAdapter.STRING;
            this.mt_element_options = ProtoAdapter.newMapAdapter(protoAdapter, protoAdapter);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.czhj.wire.ProtoAdapter
        public MtElementInfo decode(ProtoReader reader) throws IOException {
            Builder builder = new Builder();
            long jBeginMessage = reader.beginMessage();
            while (true) {
                int iNextTag = reader.nextTag();
                if (iNextTag == -1) {
                    reader.endMessage(jBeginMessage);
                    return builder.build();
                }
                if (iNextTag == 1) {
                    builder.channel_id(ProtoAdapter.UINT32.decode(reader));
                } else if (iNextTag == 2) {
                    builder.element_id(ProtoAdapter.UINT32.decode(reader));
                } else if (iNextTag != 3) {
                    FieldEncoding fieldEncodingPeekFieldEncoding = reader.peekFieldEncoding();
                    builder.addUnknownField(iNextTag, fieldEncodingPeekFieldEncoding, fieldEncodingPeekFieldEncoding.rawProtoAdapter().decode(reader));
                } else {
                    builder.mt_element_options.putAll(this.mt_element_options.decode(reader));
                }
            }
        }

        @Override // com.czhj.wire.ProtoAdapter
        public void encode(ProtoWriter writer, MtElementInfo value) throws IOException {
            ProtoAdapter<Integer> protoAdapter = ProtoAdapter.UINT32;
            protoAdapter.encodeWithTag(writer, 1, value.channel_id);
            protoAdapter.encodeWithTag(writer, 2, value.element_id);
            this.mt_element_options.encodeWithTag(writer, 3, value.mt_element_options);
            writer.writeBytes(value.unknownFields());
        }

        @Override // com.czhj.wire.ProtoAdapter
        public int encodedSize(MtElementInfo value) {
            ProtoAdapter<Integer> protoAdapter = ProtoAdapter.UINT32;
            return protoAdapter.encodedSizeWithTag(1, value.channel_id) + protoAdapter.encodedSizeWithTag(2, value.element_id) + this.mt_element_options.encodedSizeWithTag(3, value.mt_element_options) + value.unknownFields().size();
        }

        @Override // com.czhj.wire.ProtoAdapter
        public MtElementInfo redact(MtElementInfo value) {
            Builder builderNewBuilder = value.newBuilder();
            builderNewBuilder.clearUnknownFields();
            return builderNewBuilder.build();
        }
    }

    static {
        ProtoAdapter_MtElementInfo protoAdapter_MtElementInfo = new ProtoAdapter_MtElementInfo();
        ADAPTER = protoAdapter_MtElementInfo;
        CREATOR = AndroidMessage.newCreator(protoAdapter_MtElementInfo);
        DEFAULT_CHANNEL_ID = 0;
        DEFAULT_ELEMENT_ID = 0;
    }

    public MtElementInfo(Integer channel_id, Integer element_id, Map<String, String> mt_element_options) {
        this(channel_id, element_id, mt_element_options, ByteString.EMPTY);
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof MtElementInfo)) {
            return false;
        }
        MtElementInfo mtElementInfo = (MtElementInfo) other;
        return unknownFields().equals(mtElementInfo.unknownFields()) && Internal.equals(this.channel_id, mtElementInfo.channel_id) && Internal.equals(this.element_id, mtElementInfo.element_id) && this.mt_element_options.equals(mtElementInfo.mt_element_options);
    }

    public int hashCode() {
        int i10 = this.hashCode;
        if (i10 != 0) {
            return i10;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        Integer num = this.channel_id;
        int iHashCode2 = (iHashCode + (num != null ? num.hashCode() : 0)) * 37;
        Integer num2 = this.element_id;
        int iHashCode3 = ((iHashCode2 + (num2 != null ? num2.hashCode() : 0)) * 37) + this.mt_element_options.hashCode();
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.czhj.wire.Message
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        if (this.channel_id != null) {
            sb2.append(", channel_id=");
            sb2.append(this.channel_id);
        }
        if (this.element_id != null) {
            sb2.append(", element_id=");
            sb2.append(this.element_id);
        }
        if (!this.mt_element_options.isEmpty()) {
            sb2.append(", mt_element_options=");
            sb2.append(this.mt_element_options);
        }
        StringBuilder sbReplace = sb2.replace(0, 2, "MtElementInfo{");
        sbReplace.append('}');
        return sbReplace.toString();
    }

    public MtElementInfo(Integer channel_id, Integer element_id, Map<String, String> mt_element_options, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        this.channel_id = channel_id;
        this.element_id = element_id;
        this.mt_element_options = Internal.immutableCopyOf("mt_element_options", mt_element_options);
    }

    @Override // com.czhj.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.channel_id = this.channel_id;
        builder.element_id = this.element_id;
        builder.mt_element_options = Internal.copyOf("mt_element_options", this.mt_element_options);
        builder.addUnknownFields(unknownFields());
        return builder;
    }
}
