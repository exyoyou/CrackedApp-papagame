package com.sigmob.sdk.base.models.config;

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
public final class SigmobRvConfig extends AndroidMessage<SigmobRvConfig, Builder> {
    public static final ProtoAdapter<SigmobRvConfig> ADAPTER;
    public static final Parcelable.Creator<SigmobRvConfig> CREATOR;
    public static final Integer DEFAULT_AD_LOAD_TIMEOUT;
    public static final Integer DEFAULT_CACHETOP;
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 2)
    public final Integer ad_load_timeout;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 1)
    public final Integer cacheTop;

    @WireField(adapter = "com.sigmob.sdk.base.models.config.SigmobDialogSetting#ADAPTER", tag = 3)
    public final SigmobDialogSetting close_dialog_setting;

    public static final class Builder extends Message.Builder<SigmobRvConfig, Builder> {
        public Integer ad_load_timeout;
        public Integer cacheTop;
        public SigmobDialogSetting close_dialog_setting;

        public Builder ad_load_timeout(Integer ad_load_timeout) {
            this.ad_load_timeout = ad_load_timeout;
            return this;
        }

        public Builder cacheTop(Integer cacheTop) {
            this.cacheTop = cacheTop;
            return this;
        }

        public Builder close_dialog_setting(SigmobDialogSetting close_dialog_setting) {
            this.close_dialog_setting = close_dialog_setting;
            return this;
        }

        @Override // com.czhj.wire.Message.Builder
        public SigmobRvConfig build() {
            return new SigmobRvConfig(this.cacheTop, this.ad_load_timeout, this.close_dialog_setting, super.buildUnknownFields());
        }
    }

    private static final class ProtoAdapter_SigmobRvConfig extends ProtoAdapter<SigmobRvConfig> {
        public ProtoAdapter_SigmobRvConfig() {
            super(FieldEncoding.LENGTH_DELIMITED, SigmobRvConfig.class);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.czhj.wire.ProtoAdapter
        public SigmobRvConfig decode(ProtoReader reader) throws IOException {
            Builder builder = new Builder();
            long jBeginMessage = reader.beginMessage();
            while (true) {
                int iNextTag = reader.nextTag();
                if (iNextTag == -1) {
                    reader.endMessage(jBeginMessage);
                    return builder.build();
                }
                if (iNextTag == 1) {
                    builder.cacheTop(ProtoAdapter.UINT32.decode(reader));
                } else if (iNextTag == 2) {
                    builder.ad_load_timeout(ProtoAdapter.UINT32.decode(reader));
                } else if (iNextTag != 3) {
                    FieldEncoding fieldEncodingPeekFieldEncoding = reader.peekFieldEncoding();
                    builder.addUnknownField(iNextTag, fieldEncodingPeekFieldEncoding, fieldEncodingPeekFieldEncoding.rawProtoAdapter().decode(reader));
                } else {
                    builder.close_dialog_setting(SigmobDialogSetting.ADAPTER.decode(reader));
                }
            }
        }

        @Override // com.czhj.wire.ProtoAdapter
        public void encode(ProtoWriter writer, SigmobRvConfig value) throws IOException {
            ProtoAdapter<Integer> protoAdapter = ProtoAdapter.UINT32;
            protoAdapter.encodeWithTag(writer, 1, value.cacheTop);
            protoAdapter.encodeWithTag(writer, 2, value.ad_load_timeout);
            SigmobDialogSetting.ADAPTER.encodeWithTag(writer, 3, value.close_dialog_setting);
            writer.writeBytes(value.unknownFields());
        }

        @Override // com.czhj.wire.ProtoAdapter
        public int encodedSize(SigmobRvConfig value) {
            ProtoAdapter<Integer> protoAdapter = ProtoAdapter.UINT32;
            return protoAdapter.encodedSizeWithTag(1, value.cacheTop) + protoAdapter.encodedSizeWithTag(2, value.ad_load_timeout) + SigmobDialogSetting.ADAPTER.encodedSizeWithTag(3, value.close_dialog_setting) + value.unknownFields().size();
        }

        @Override // com.czhj.wire.ProtoAdapter
        public SigmobRvConfig redact(SigmobRvConfig value) {
            Builder builderNewBuilder = value.newBuilder();
            SigmobDialogSetting sigmobDialogSetting = builderNewBuilder.close_dialog_setting;
            if (sigmobDialogSetting != null) {
                builderNewBuilder.close_dialog_setting = SigmobDialogSetting.ADAPTER.redact(sigmobDialogSetting);
            }
            builderNewBuilder.clearUnknownFields();
            return builderNewBuilder.build();
        }
    }

    static {
        ProtoAdapter_SigmobRvConfig protoAdapter_SigmobRvConfig = new ProtoAdapter_SigmobRvConfig();
        ADAPTER = protoAdapter_SigmobRvConfig;
        CREATOR = AndroidMessage.newCreator(protoAdapter_SigmobRvConfig);
        DEFAULT_CACHETOP = 0;
        DEFAULT_AD_LOAD_TIMEOUT = 0;
    }

    public SigmobRvConfig(Integer cacheTop, Integer ad_load_timeout, SigmobDialogSetting close_dialog_setting) {
        this(cacheTop, ad_load_timeout, close_dialog_setting, ByteString.EMPTY);
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof SigmobRvConfig)) {
            return false;
        }
        SigmobRvConfig sigmobRvConfig = (SigmobRvConfig) other;
        return unknownFields().equals(sigmobRvConfig.unknownFields()) && Internal.equals(this.cacheTop, sigmobRvConfig.cacheTop) && Internal.equals(this.ad_load_timeout, sigmobRvConfig.ad_load_timeout) && Internal.equals(this.close_dialog_setting, sigmobRvConfig.close_dialog_setting);
    }

    public int hashCode() {
        int i10 = this.hashCode;
        if (i10 != 0) {
            return i10;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        Integer num = this.cacheTop;
        int iHashCode2 = (iHashCode + (num != null ? num.hashCode() : 0)) * 37;
        Integer num2 = this.ad_load_timeout;
        int iHashCode3 = (iHashCode2 + (num2 != null ? num2.hashCode() : 0)) * 37;
        SigmobDialogSetting sigmobDialogSetting = this.close_dialog_setting;
        int iHashCode4 = iHashCode3 + (sigmobDialogSetting != null ? sigmobDialogSetting.hashCode() : 0);
        this.hashCode = iHashCode4;
        return iHashCode4;
    }

    @Override // com.czhj.wire.Message
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        if (this.cacheTop != null) {
            sb2.append(", cacheTop=");
            sb2.append(this.cacheTop);
        }
        if (this.ad_load_timeout != null) {
            sb2.append(", ad_load_timeout=");
            sb2.append(this.ad_load_timeout);
        }
        if (this.close_dialog_setting != null) {
            sb2.append(", close_dialog_setting=");
            sb2.append(this.close_dialog_setting);
        }
        StringBuilder sbReplace = sb2.replace(0, 2, "SigmobRvConfig{");
        sbReplace.append('}');
        return sbReplace.toString();
    }

    public SigmobRvConfig(Integer cacheTop, Integer ad_load_timeout, SigmobDialogSetting close_dialog_setting, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        this.cacheTop = cacheTop;
        this.ad_load_timeout = ad_load_timeout;
        this.close_dialog_setting = close_dialog_setting;
    }

    @Override // com.czhj.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.cacheTop = this.cacheTop;
        builder.ad_load_timeout = this.ad_load_timeout;
        builder.close_dialog_setting = this.close_dialog_setting;
        builder.addUnknownFields(unknownFields());
        return builder;
    }
}
