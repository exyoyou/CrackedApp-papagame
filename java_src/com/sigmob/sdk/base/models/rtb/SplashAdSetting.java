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
public final class SplashAdSetting extends AndroidMessage<SplashAdSetting, Builder> {
    public static final ProtoAdapter<SplashAdSetting> ADAPTER;
    public static final Parcelable.Creator<SplashAdSetting> CREATOR;
    public static final Integer DEFAULT_AC_DELAY_MS;
    public static final Boolean DEFAULT_ENABLE_CLOSE_ON_CLICK;
    public static final Boolean DEFAULT_ENABLE_FULL_CLICK;
    public static final Boolean DEFAULT_INVISIBLE_AD_LABEL;
    public static final Integer DEFAULT_SHOW_DURATION;
    public static final Boolean DEFAULT_USE_FLOATING_BTN;
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 8)
    public final Integer ac_delay_ms;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", tag = 2)
    public final Boolean enable_close_on_click;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", tag = 5)
    public final Boolean enable_full_click;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", tag = 6)
    public final Boolean invisible_ad_label;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", tag = 1)
    public final Integer show_duration;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", tag = 7)
    public final Boolean use_floating_btn;

    public static final class Builder extends Message.Builder<SplashAdSetting, Builder> {
        public Integer show_duration = SplashAdSetting.DEFAULT_SHOW_DURATION;
        public Boolean enable_close_on_click = SplashAdSetting.DEFAULT_ENABLE_CLOSE_ON_CLICK;
        public Boolean enable_full_click = SplashAdSetting.DEFAULT_ENABLE_FULL_CLICK;
        public Boolean invisible_ad_label = SplashAdSetting.DEFAULT_INVISIBLE_AD_LABEL;
        public Boolean use_floating_btn = SplashAdSetting.DEFAULT_USE_FLOATING_BTN;
        public Integer ac_delay_ms = SplashAdSetting.DEFAULT_AC_DELAY_MS;

        public Builder ac_delay_ms(Integer ac_delay_ms) {
            this.ac_delay_ms = ac_delay_ms;
            return this;
        }

        public Builder enable_close_on_click(Boolean enable_close_on_click) {
            this.enable_close_on_click = enable_close_on_click;
            return this;
        }

        public Builder enable_full_click(Boolean enable_full_click) {
            this.enable_full_click = enable_full_click;
            return this;
        }

        public Builder invisible_ad_label(Boolean invisible_ad_label) {
            this.invisible_ad_label = invisible_ad_label;
            return this;
        }

        public Builder show_duration(Integer show_duration) {
            this.show_duration = show_duration;
            return this;
        }

        public Builder use_floating_btn(Boolean use_floating_btn) {
            this.use_floating_btn = use_floating_btn;
            return this;
        }

        @Override // com.czhj.wire.Message.Builder
        public SplashAdSetting build() {
            return new SplashAdSetting(this.show_duration, this.enable_close_on_click, this.enable_full_click, this.invisible_ad_label, this.use_floating_btn, this.ac_delay_ms, super.buildUnknownFields());
        }
    }

    private static final class ProtoAdapter_SplashAdSetting extends ProtoAdapter<SplashAdSetting> {
        public ProtoAdapter_SplashAdSetting() {
            super(FieldEncoding.LENGTH_DELIMITED, SplashAdSetting.class);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.czhj.wire.ProtoAdapter
        public SplashAdSetting decode(ProtoReader reader) throws IOException {
            Builder builder = new Builder();
            long jBeginMessage = reader.beginMessage();
            while (true) {
                int iNextTag = reader.nextTag();
                if (iNextTag == -1) {
                    reader.endMessage(jBeginMessage);
                    return builder.build();
                }
                if (iNextTag == 1) {
                    builder.show_duration(ProtoAdapter.INT32.decode(reader));
                } else if (iNextTag == 2) {
                    builder.enable_close_on_click(ProtoAdapter.BOOL.decode(reader));
                } else if (iNextTag == 5) {
                    builder.enable_full_click(ProtoAdapter.BOOL.decode(reader));
                } else if (iNextTag == 6) {
                    builder.invisible_ad_label(ProtoAdapter.BOOL.decode(reader));
                } else if (iNextTag == 7) {
                    builder.use_floating_btn(ProtoAdapter.BOOL.decode(reader));
                } else if (iNextTag != 8) {
                    FieldEncoding fieldEncodingPeekFieldEncoding = reader.peekFieldEncoding();
                    builder.addUnknownField(iNextTag, fieldEncodingPeekFieldEncoding, fieldEncodingPeekFieldEncoding.rawProtoAdapter().decode(reader));
                } else {
                    builder.ac_delay_ms(ProtoAdapter.UINT32.decode(reader));
                }
            }
        }

        @Override // com.czhj.wire.ProtoAdapter
        public void encode(ProtoWriter writer, SplashAdSetting value) throws IOException {
            ProtoAdapter.INT32.encodeWithTag(writer, 1, value.show_duration);
            ProtoAdapter<Boolean> protoAdapter = ProtoAdapter.BOOL;
            protoAdapter.encodeWithTag(writer, 2, value.enable_close_on_click);
            protoAdapter.encodeWithTag(writer, 5, value.enable_full_click);
            protoAdapter.encodeWithTag(writer, 6, value.invisible_ad_label);
            protoAdapter.encodeWithTag(writer, 7, value.use_floating_btn);
            ProtoAdapter.UINT32.encodeWithTag(writer, 8, value.ac_delay_ms);
            writer.writeBytes(value.unknownFields());
        }

        @Override // com.czhj.wire.ProtoAdapter
        public int encodedSize(SplashAdSetting value) {
            int iEncodedSizeWithTag = ProtoAdapter.INT32.encodedSizeWithTag(1, value.show_duration);
            ProtoAdapter<Boolean> protoAdapter = ProtoAdapter.BOOL;
            return iEncodedSizeWithTag + protoAdapter.encodedSizeWithTag(2, value.enable_close_on_click) + protoAdapter.encodedSizeWithTag(5, value.enable_full_click) + protoAdapter.encodedSizeWithTag(6, value.invisible_ad_label) + protoAdapter.encodedSizeWithTag(7, value.use_floating_btn) + ProtoAdapter.UINT32.encodedSizeWithTag(8, value.ac_delay_ms) + value.unknownFields().size();
        }

        @Override // com.czhj.wire.ProtoAdapter
        public SplashAdSetting redact(SplashAdSetting value) {
            Builder builderNewBuilder = value.newBuilder();
            builderNewBuilder.clearUnknownFields();
            return builderNewBuilder.build();
        }
    }

    static {
        ProtoAdapter_SplashAdSetting protoAdapter_SplashAdSetting = new ProtoAdapter_SplashAdSetting();
        ADAPTER = protoAdapter_SplashAdSetting;
        CREATOR = AndroidMessage.newCreator(protoAdapter_SplashAdSetting);
        DEFAULT_SHOW_DURATION = 0;
        Boolean bool = Boolean.FALSE;
        DEFAULT_ENABLE_CLOSE_ON_CLICK = bool;
        DEFAULT_ENABLE_FULL_CLICK = bool;
        DEFAULT_INVISIBLE_AD_LABEL = bool;
        DEFAULT_USE_FLOATING_BTN = bool;
        DEFAULT_AC_DELAY_MS = 0;
    }

    public SplashAdSetting(Integer show_duration, Boolean enable_close_on_click, Boolean enable_full_click, Boolean invisible_ad_label, Boolean use_floating_btn, Integer ac_delay_ms) {
        this(show_duration, enable_close_on_click, enable_full_click, invisible_ad_label, use_floating_btn, ac_delay_ms, ByteString.EMPTY);
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof SplashAdSetting)) {
            return false;
        }
        SplashAdSetting splashAdSetting = (SplashAdSetting) other;
        return unknownFields().equals(splashAdSetting.unknownFields()) && Internal.equals(this.show_duration, splashAdSetting.show_duration) && Internal.equals(this.enable_close_on_click, splashAdSetting.enable_close_on_click) && Internal.equals(this.enable_full_click, splashAdSetting.enable_full_click) && Internal.equals(this.invisible_ad_label, splashAdSetting.invisible_ad_label) && Internal.equals(this.use_floating_btn, splashAdSetting.use_floating_btn) && Internal.equals(this.ac_delay_ms, splashAdSetting.ac_delay_ms);
    }

    public int hashCode() {
        int i10 = this.hashCode;
        if (i10 != 0) {
            return i10;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        Integer num = this.show_duration;
        int iHashCode2 = (iHashCode + (num != null ? num.hashCode() : 0)) * 37;
        Boolean bool = this.enable_close_on_click;
        int iHashCode3 = (iHashCode2 + (bool != null ? bool.hashCode() : 0)) * 37;
        Boolean bool2 = this.enable_full_click;
        int iHashCode4 = (iHashCode3 + (bool2 != null ? bool2.hashCode() : 0)) * 37;
        Boolean bool3 = this.invisible_ad_label;
        int iHashCode5 = (iHashCode4 + (bool3 != null ? bool3.hashCode() : 0)) * 37;
        Boolean bool4 = this.use_floating_btn;
        int iHashCode6 = (iHashCode5 + (bool4 != null ? bool4.hashCode() : 0)) * 37;
        Integer num2 = this.ac_delay_ms;
        int iHashCode7 = iHashCode6 + (num2 != null ? num2.hashCode() : 0);
        this.hashCode = iHashCode7;
        return iHashCode7;
    }

    @Override // com.czhj.wire.Message
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        if (this.show_duration != null) {
            sb2.append(", show_duration=");
            sb2.append(this.show_duration);
        }
        if (this.enable_close_on_click != null) {
            sb2.append(", enable_close_on_click=");
            sb2.append(this.enable_close_on_click);
        }
        if (this.enable_full_click != null) {
            sb2.append(", enable_full_click=");
            sb2.append(this.enable_full_click);
        }
        if (this.invisible_ad_label != null) {
            sb2.append(", invisible_ad_label=");
            sb2.append(this.invisible_ad_label);
        }
        if (this.use_floating_btn != null) {
            sb2.append(", use_floating_btn=");
            sb2.append(this.use_floating_btn);
        }
        if (this.ac_delay_ms != null) {
            sb2.append(", ac_delay_ms=");
            sb2.append(this.ac_delay_ms);
        }
        StringBuilder sbReplace = sb2.replace(0, 2, "SplashAdSetting{");
        sbReplace.append('}');
        return sbReplace.toString();
    }

    public SplashAdSetting(Integer show_duration, Boolean enable_close_on_click, Boolean enable_full_click, Boolean invisible_ad_label, Boolean use_floating_btn, Integer ac_delay_ms, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        this.show_duration = show_duration;
        this.enable_close_on_click = enable_close_on_click;
        this.enable_full_click = enable_full_click;
        this.invisible_ad_label = invisible_ad_label;
        this.use_floating_btn = use_floating_btn;
        this.ac_delay_ms = ac_delay_ms;
    }

    @Override // com.czhj.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.show_duration = this.show_duration;
        builder.enable_close_on_click = this.enable_close_on_click;
        builder.enable_full_click = this.enable_full_click;
        builder.invisible_ad_label = this.invisible_ad_label;
        builder.use_floating_btn = this.use_floating_btn;
        builder.ac_delay_ms = this.ac_delay_ms;
        builder.addUnknownFields(unknownFields());
        return builder;
    }
}
