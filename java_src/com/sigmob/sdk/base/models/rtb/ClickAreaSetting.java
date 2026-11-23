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
public final class ClickAreaSetting extends AndroidMessage<ClickAreaSetting, Builder> {
    public static final ProtoAdapter<ClickAreaSetting> ADAPTER;
    public static final Parcelable.Creator<ClickAreaSetting> CREATOR;
    public static final Float DEFAULT_BOTTOM;
    public static final Float DEFAULT_LEFT;
    public static final Float DEFAULT_RIGHT;
    public static final Float DEFAULT_TOP;
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", tag = 3)
    public final Float bottom;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", tag = 2)
    public final Float left;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", tag = 4)
    public final Float right;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", tag = 1)
    public final Float top;

    public static final class Builder extends Message.Builder<ClickAreaSetting, Builder> {
        public Float top = ClickAreaSetting.DEFAULT_TOP;
        public Float left = ClickAreaSetting.DEFAULT_LEFT;
        public Float bottom = ClickAreaSetting.DEFAULT_BOTTOM;
        public Float right = ClickAreaSetting.DEFAULT_RIGHT;

        public Builder bottom(Float bottom) {
            this.bottom = bottom;
            return this;
        }

        public Builder left(Float left) {
            this.left = left;
            return this;
        }

        public Builder right(Float right) {
            this.right = right;
            return this;
        }

        public Builder top(Float top) {
            this.top = top;
            return this;
        }

        @Override // com.czhj.wire.Message.Builder
        public ClickAreaSetting build() {
            return new ClickAreaSetting(this.top, this.left, this.bottom, this.right, super.buildUnknownFields());
        }
    }

    private static final class ProtoAdapter_ClickAreaSetting extends ProtoAdapter<ClickAreaSetting> {
        public ProtoAdapter_ClickAreaSetting() {
            super(FieldEncoding.LENGTH_DELIMITED, ClickAreaSetting.class);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.czhj.wire.ProtoAdapter
        public ClickAreaSetting decode(ProtoReader reader) throws IOException {
            Builder builder = new Builder();
            long jBeginMessage = reader.beginMessage();
            while (true) {
                int iNextTag = reader.nextTag();
                if (iNextTag == -1) {
                    reader.endMessage(jBeginMessage);
                    return builder.build();
                }
                if (iNextTag == 1) {
                    builder.top(ProtoAdapter.FLOAT.decode(reader));
                } else if (iNextTag == 2) {
                    builder.left(ProtoAdapter.FLOAT.decode(reader));
                } else if (iNextTag == 3) {
                    builder.bottom(ProtoAdapter.FLOAT.decode(reader));
                } else if (iNextTag != 4) {
                    FieldEncoding fieldEncodingPeekFieldEncoding = reader.peekFieldEncoding();
                    builder.addUnknownField(iNextTag, fieldEncodingPeekFieldEncoding, fieldEncodingPeekFieldEncoding.rawProtoAdapter().decode(reader));
                } else {
                    builder.right(ProtoAdapter.FLOAT.decode(reader));
                }
            }
        }

        @Override // com.czhj.wire.ProtoAdapter
        public void encode(ProtoWriter writer, ClickAreaSetting value) throws IOException {
            ProtoAdapter<Float> protoAdapter = ProtoAdapter.FLOAT;
            protoAdapter.encodeWithTag(writer, 1, value.top);
            protoAdapter.encodeWithTag(writer, 2, value.left);
            protoAdapter.encodeWithTag(writer, 3, value.bottom);
            protoAdapter.encodeWithTag(writer, 4, value.right);
            writer.writeBytes(value.unknownFields());
        }

        @Override // com.czhj.wire.ProtoAdapter
        public int encodedSize(ClickAreaSetting value) {
            ProtoAdapter<Float> protoAdapter = ProtoAdapter.FLOAT;
            return protoAdapter.encodedSizeWithTag(1, value.top) + protoAdapter.encodedSizeWithTag(2, value.left) + protoAdapter.encodedSizeWithTag(3, value.bottom) + protoAdapter.encodedSizeWithTag(4, value.right) + value.unknownFields().size();
        }

        @Override // com.czhj.wire.ProtoAdapter
        public ClickAreaSetting redact(ClickAreaSetting value) {
            Builder builderNewBuilder = value.newBuilder();
            builderNewBuilder.clearUnknownFields();
            return builderNewBuilder.build();
        }
    }

    static {
        ProtoAdapter_ClickAreaSetting protoAdapter_ClickAreaSetting = new ProtoAdapter_ClickAreaSetting();
        ADAPTER = protoAdapter_ClickAreaSetting;
        CREATOR = AndroidMessage.newCreator(protoAdapter_ClickAreaSetting);
        Float fValueOf = Float.valueOf(0.0f);
        DEFAULT_TOP = fValueOf;
        DEFAULT_LEFT = fValueOf;
        DEFAULT_BOTTOM = fValueOf;
        DEFAULT_RIGHT = fValueOf;
    }

    public ClickAreaSetting(Float top, Float left, Float bottom, Float right) {
        this(top, left, bottom, right, ByteString.EMPTY);
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ClickAreaSetting)) {
            return false;
        }
        ClickAreaSetting clickAreaSetting = (ClickAreaSetting) other;
        return unknownFields().equals(clickAreaSetting.unknownFields()) && Internal.equals(this.top, clickAreaSetting.top) && Internal.equals(this.left, clickAreaSetting.left) && Internal.equals(this.bottom, clickAreaSetting.bottom) && Internal.equals(this.right, clickAreaSetting.right);
    }

    public int hashCode() {
        int i10 = this.hashCode;
        if (i10 != 0) {
            return i10;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        Float f10 = this.top;
        int iHashCode2 = (iHashCode + (f10 != null ? f10.hashCode() : 0)) * 37;
        Float f11 = this.left;
        int iHashCode3 = (iHashCode2 + (f11 != null ? f11.hashCode() : 0)) * 37;
        Float f12 = this.bottom;
        int iHashCode4 = (iHashCode3 + (f12 != null ? f12.hashCode() : 0)) * 37;
        Float f13 = this.right;
        int iHashCode5 = iHashCode4 + (f13 != null ? f13.hashCode() : 0);
        this.hashCode = iHashCode5;
        return iHashCode5;
    }

    @Override // com.czhj.wire.Message
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        if (this.top != null) {
            sb2.append(", top=");
            sb2.append(this.top);
        }
        if (this.left != null) {
            sb2.append(", left=");
            sb2.append(this.left);
        }
        if (this.bottom != null) {
            sb2.append(", bottom=");
            sb2.append(this.bottom);
        }
        if (this.right != null) {
            sb2.append(", right=");
            sb2.append(this.right);
        }
        StringBuilder sbReplace = sb2.replace(0, 2, "ClickAreaSetting{");
        sbReplace.append('}');
        return sbReplace.toString();
    }

    public ClickAreaSetting(Float top, Float left, Float bottom, Float right, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        this.top = top;
        this.left = left;
        this.bottom = bottom;
        this.right = right;
    }

    @Override // com.czhj.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.top = this.top;
        builder.left = this.left;
        builder.bottom = this.bottom;
        builder.right = this.right;
        builder.addUnknownFields(unknownFields());
        return builder;
    }
}
