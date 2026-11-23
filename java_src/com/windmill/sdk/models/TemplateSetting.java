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
public final class TemplateSetting extends AndroidMessage<TemplateSetting, Builder> {
    public static final ProtoAdapter<TemplateSetting> ADAPTER;
    public static final Parcelable.Creator<TemplateSetting> CREATOR;
    public static final Integer DEFAULT_CLOSE_POSITION;
    public static final Integer DEFAULT_CLOSE_STYLE;
    public static final Integer DEFAULT_MISTAKE_CLICK_RATE;
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 2)
    public final Integer close_position;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 1)
    public final Integer close_style;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 3)
    public final Integer mistake_click_rate;

    public static final class Builder extends Message.Builder<TemplateSetting, Builder> {
        public Integer close_style = TemplateSetting.DEFAULT_CLOSE_STYLE;
        public Integer close_position = TemplateSetting.DEFAULT_CLOSE_POSITION;
        public Integer mistake_click_rate = TemplateSetting.DEFAULT_MISTAKE_CLICK_RATE;

        public Builder close_position(Integer close_position) {
            this.close_position = close_position;
            return this;
        }

        public Builder close_style(Integer close_style) {
            this.close_style = close_style;
            return this;
        }

        public Builder mistake_click_rate(Integer mistake_click_rate) {
            this.mistake_click_rate = mistake_click_rate;
            return this;
        }

        @Override // com.czhj.wire.Message.Builder
        public TemplateSetting build() {
            return new TemplateSetting(this.close_style, this.close_position, this.mistake_click_rate, super.buildUnknownFields());
        }
    }

    private static final class ProtoAdapter_TemplateSetting extends ProtoAdapter<TemplateSetting> {
        public ProtoAdapter_TemplateSetting() {
            super(FieldEncoding.LENGTH_DELIMITED, TemplateSetting.class);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.czhj.wire.ProtoAdapter
        public TemplateSetting decode(ProtoReader reader) throws IOException {
            Builder builder = new Builder();
            long jBeginMessage = reader.beginMessage();
            while (true) {
                int iNextTag = reader.nextTag();
                if (iNextTag == -1) {
                    reader.endMessage(jBeginMessage);
                    return builder.build();
                }
                if (iNextTag == 1) {
                    builder.close_style(ProtoAdapter.UINT32.decode(reader));
                } else if (iNextTag == 2) {
                    builder.close_position(ProtoAdapter.UINT32.decode(reader));
                } else if (iNextTag != 3) {
                    FieldEncoding fieldEncodingPeekFieldEncoding = reader.peekFieldEncoding();
                    builder.addUnknownField(iNextTag, fieldEncodingPeekFieldEncoding, fieldEncodingPeekFieldEncoding.rawProtoAdapter().decode(reader));
                } else {
                    builder.mistake_click_rate(ProtoAdapter.UINT32.decode(reader));
                }
            }
        }

        @Override // com.czhj.wire.ProtoAdapter
        public void encode(ProtoWriter writer, TemplateSetting value) throws IOException {
            ProtoAdapter<Integer> protoAdapter = ProtoAdapter.UINT32;
            protoAdapter.encodeWithTag(writer, 1, value.close_style);
            protoAdapter.encodeWithTag(writer, 2, value.close_position);
            protoAdapter.encodeWithTag(writer, 3, value.mistake_click_rate);
            writer.writeBytes(value.unknownFields());
        }

        @Override // com.czhj.wire.ProtoAdapter
        public int encodedSize(TemplateSetting value) {
            ProtoAdapter<Integer> protoAdapter = ProtoAdapter.UINT32;
            return protoAdapter.encodedSizeWithTag(1, value.close_style) + protoAdapter.encodedSizeWithTag(2, value.close_position) + protoAdapter.encodedSizeWithTag(3, value.mistake_click_rate) + value.unknownFields().size();
        }

        @Override // com.czhj.wire.ProtoAdapter
        public TemplateSetting redact(TemplateSetting value) {
            Builder builderNewBuilder = value.newBuilder();
            builderNewBuilder.clearUnknownFields();
            return builderNewBuilder.build();
        }
    }

    static {
        ProtoAdapter_TemplateSetting protoAdapter_TemplateSetting = new ProtoAdapter_TemplateSetting();
        ADAPTER = protoAdapter_TemplateSetting;
        CREATOR = AndroidMessage.newCreator(protoAdapter_TemplateSetting);
        DEFAULT_CLOSE_STYLE = 0;
        DEFAULT_CLOSE_POSITION = 0;
        DEFAULT_MISTAKE_CLICK_RATE = 0;
    }

    public TemplateSetting(Integer close_style, Integer close_position, Integer mistake_click_rate) {
        this(close_style, close_position, mistake_click_rate, ByteString.EMPTY);
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof TemplateSetting)) {
            return false;
        }
        TemplateSetting templateSetting = (TemplateSetting) other;
        return unknownFields().equals(templateSetting.unknownFields()) && Internal.equals(this.close_style, templateSetting.close_style) && Internal.equals(this.close_position, templateSetting.close_position) && Internal.equals(this.mistake_click_rate, templateSetting.mistake_click_rate);
    }

    public int hashCode() {
        int i10 = this.hashCode;
        if (i10 != 0) {
            return i10;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        Integer num = this.close_style;
        int iHashCode2 = (iHashCode + (num != null ? num.hashCode() : 0)) * 37;
        Integer num2 = this.close_position;
        int iHashCode3 = (iHashCode2 + (num2 != null ? num2.hashCode() : 0)) * 37;
        Integer num3 = this.mistake_click_rate;
        int iHashCode4 = iHashCode3 + (num3 != null ? num3.hashCode() : 0);
        this.hashCode = iHashCode4;
        return iHashCode4;
    }

    @Override // com.czhj.wire.Message
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        if (this.close_style != null) {
            sb2.append(", close_style=");
            sb2.append(this.close_style);
        }
        if (this.close_position != null) {
            sb2.append(", close_position=");
            sb2.append(this.close_position);
        }
        if (this.mistake_click_rate != null) {
            sb2.append(", mistake_click_rate=");
            sb2.append(this.mistake_click_rate);
        }
        StringBuilder sbReplace = sb2.replace(0, 2, "TemplateSetting{");
        sbReplace.append('}');
        return sbReplace.toString();
    }

    public TemplateSetting(Integer close_style, Integer close_position, Integer mistake_click_rate, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        this.close_style = close_style;
        this.close_position = close_position;
        this.mistake_click_rate = mistake_click_rate;
    }

    @Override // com.czhj.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.close_style = this.close_style;
        builder.close_position = this.close_position;
        builder.mistake_click_rate = this.mistake_click_rate;
        builder.addUnknownFields(unknownFields());
        return builder;
    }
}
