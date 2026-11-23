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
public final class MediationChannel extends AndroidMessage<MediationChannel, Builder> {
    public static final ProtoAdapter<MediationChannel> ADAPTER;
    public static final Parcelable.Creator<MediationChannel> CREATOR;
    public static final String DEFAULT_AD_CLASS = "";
    public static final Integer DEFAULT_AD_EXPIRE_TIME;
    public static final String DEFAULT_AD_INIT_CLASS = "";
    public static final Integer DEFAULT_CHANNEL_ID;
    public static final Integer DEFAULT_COUNTDOWN_AUTO_CLOSE_TIMER;
    public static final String DEFAULT_CUR = "";
    public static final Boolean DEFAULT_ENABLE_CLICK_AUTO_CLOSE;
    public static final Boolean DEFAULT_ENABLE_EXTRA_CLOSE_CALLBACK;
    public static final Integer DEFAULT_FILL_TYPE;
    public static final Boolean DEFAULT_IS_CUSTOM;
    public static final Integer DEFAULT_IS_READY;
    public static final Boolean DEFAULT_IS_SAAS_ADX;
    public static final String DEFAULT_MODULE_NAME = "";
    public static final String DEFAULT_NAME = "";
    public static final Integer DEFAULT_RATIO;
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 7)
    public final String ad_class;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 3)
    public final Integer ad_expire_time;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 6)
    public final String ad_init_class;

    @WireField(adapter = "com.windmill.sdk.models.AdapterConfig#ADAPTER", tag = 17)
    public final AdapterConfig adapter_config;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 1)
    public final Integer channel_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 13)
    public final Integer countdown_auto_close_timer;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 9)
    public final String cur;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", tag = 12)
    public final Boolean enable_click_auto_close;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", tag = 4)
    public final Boolean enable_extra_close_callback;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 8)
    public final Integer fill_type;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", tag = 5)
    public final Boolean is_custom;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", tag = 14)
    public final Integer is_ready;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", tag = 15)
    public final Boolean is_saas_adx;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 11)
    public final String module_name;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 2)
    public final String name;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", keyAdapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 18)
    public final Map<String, String> options;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", tag = 10)
    public final Integer ratio;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", keyAdapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 16)
    public final Map<String, String> saas_options;

    public static final class Builder extends Message.Builder<MediationChannel, Builder> {
        public AdapterConfig adapter_config;
        public Integer channel_id = MediationChannel.DEFAULT_CHANNEL_ID;
        public String name = "";
        public Integer ad_expire_time = MediationChannel.DEFAULT_AD_EXPIRE_TIME;
        public Boolean enable_extra_close_callback = MediationChannel.DEFAULT_ENABLE_EXTRA_CLOSE_CALLBACK;
        public Integer is_ready = MediationChannel.DEFAULT_IS_READY;
        public Boolean is_custom = MediationChannel.DEFAULT_IS_CUSTOM;
        public String ad_init_class = "";
        public String ad_class = "";
        public Integer fill_type = MediationChannel.DEFAULT_FILL_TYPE;
        public String cur = "";
        public Integer ratio = MediationChannel.DEFAULT_RATIO;
        public String module_name = "";
        public Boolean enable_click_auto_close = MediationChannel.DEFAULT_ENABLE_CLICK_AUTO_CLOSE;
        public Integer countdown_auto_close_timer = MediationChannel.DEFAULT_COUNTDOWN_AUTO_CLOSE_TIMER;
        public Boolean is_saas_adx = MediationChannel.DEFAULT_IS_SAAS_ADX;
        public Map<String, String> saas_options = Internal.newMutableMap();
        public Map<String, String> options = Internal.newMutableMap();

        public Builder ad_class(String ad_class) {
            this.ad_class = ad_class;
            return this;
        }

        public Builder ad_expire_time(Integer ad_expire_time) {
            this.ad_expire_time = ad_expire_time;
            return this;
        }

        public Builder ad_init_class(String ad_init_class) {
            this.ad_init_class = ad_init_class;
            return this;
        }

        public Builder adapter_config(AdapterConfig adapter_config) {
            this.adapter_config = adapter_config;
            return this;
        }

        public Builder channel_id(Integer channel_id) {
            this.channel_id = channel_id;
            return this;
        }

        public Builder countdown_auto_close_timer(Integer countdown_auto_close_timer) {
            this.countdown_auto_close_timer = countdown_auto_close_timer;
            return this;
        }

        public Builder cur(String cur) {
            this.cur = cur;
            return this;
        }

        public Builder enable_click_auto_close(Boolean enable_click_auto_close) {
            this.enable_click_auto_close = enable_click_auto_close;
            return this;
        }

        public Builder enable_extra_close_callback(Boolean enable_extra_close_callback) {
            this.enable_extra_close_callback = enable_extra_close_callback;
            return this;
        }

        public Builder fill_type(Integer fill_type) {
            this.fill_type = fill_type;
            return this;
        }

        public Builder is_custom(Boolean is_custom) {
            this.is_custom = is_custom;
            return this;
        }

        public Builder is_ready(Integer is_ready) {
            this.is_ready = is_ready;
            return this;
        }

        public Builder is_saas_adx(Boolean is_saas_adx) {
            this.is_saas_adx = is_saas_adx;
            return this;
        }

        public Builder module_name(String module_name) {
            this.module_name = module_name;
            return this;
        }

        public Builder name(String name) {
            this.name = name;
            return this;
        }

        public Builder options(Map<String, String> options) {
            Internal.checkElementsNotNull(options);
            this.options = options;
            return this;
        }

        public Builder ratio(Integer ratio) {
            this.ratio = ratio;
            return this;
        }

        public Builder saas_options(Map<String, String> saas_options) {
            Internal.checkElementsNotNull(saas_options);
            this.saas_options = saas_options;
            return this;
        }

        @Override // com.czhj.wire.Message.Builder
        public MediationChannel build() {
            return new MediationChannel(this.channel_id, this.name, this.ad_expire_time, this.enable_extra_close_callback, this.is_custom, this.ad_init_class, this.ad_class, this.fill_type, this.cur, this.ratio, this.module_name, this.enable_click_auto_close, this.countdown_auto_close_timer, this.is_ready, this.is_saas_adx, this.saas_options, this.adapter_config, this.options, super.buildUnknownFields());
        }
    }

    private static final class ProtoAdapter_MediationChannel extends ProtoAdapter<MediationChannel> {
        private final ProtoAdapter<Map<String, String>> options;
        private final ProtoAdapter<Map<String, String>> saas_options;

        public ProtoAdapter_MediationChannel() {
            super(FieldEncoding.LENGTH_DELIMITED, MediationChannel.class);
            ProtoAdapter<String> protoAdapter = ProtoAdapter.STRING;
            this.saas_options = ProtoAdapter.newMapAdapter(protoAdapter, protoAdapter);
            this.options = ProtoAdapter.newMapAdapter(protoAdapter, protoAdapter);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.czhj.wire.ProtoAdapter
        public MediationChannel decode(ProtoReader reader) throws IOException {
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
                        builder.channel_id(ProtoAdapter.UINT32.decode(reader));
                        break;
                    case 2:
                        builder.name(ProtoAdapter.STRING.decode(reader));
                        break;
                    case 3:
                        builder.ad_expire_time(ProtoAdapter.UINT32.decode(reader));
                        break;
                    case 4:
                        builder.enable_extra_close_callback(ProtoAdapter.BOOL.decode(reader));
                        break;
                    case 5:
                        builder.is_custom(ProtoAdapter.BOOL.decode(reader));
                        break;
                    case 6:
                        builder.ad_init_class(ProtoAdapter.STRING.decode(reader));
                        break;
                    case 7:
                        builder.ad_class(ProtoAdapter.STRING.decode(reader));
                        break;
                    case 8:
                        builder.fill_type(ProtoAdapter.UINT32.decode(reader));
                        break;
                    case 9:
                        builder.cur(ProtoAdapter.STRING.decode(reader));
                        break;
                    case 10:
                        builder.ratio(ProtoAdapter.INT32.decode(reader));
                        break;
                    case 11:
                        builder.module_name(ProtoAdapter.STRING.decode(reader));
                        break;
                    case 12:
                        builder.enable_click_auto_close(ProtoAdapter.BOOL.decode(reader));
                        break;
                    case 13:
                        builder.countdown_auto_close_timer(ProtoAdapter.UINT32.decode(reader));
                        break;
                    case 14:
                        builder.is_ready(ProtoAdapter.INT32.decode(reader));
                        break;
                    case 15:
                        builder.is_saas_adx(ProtoAdapter.BOOL.decode(reader));
                        break;
                    case 16:
                        builder.saas_options.putAll(this.saas_options.decode(reader));
                        break;
                    case 17:
                        builder.adapter_config(AdapterConfig.ADAPTER.decode(reader));
                        break;
                    case 18:
                        builder.options.putAll(this.options.decode(reader));
                        break;
                    default:
                        FieldEncoding fieldEncodingPeekFieldEncoding = reader.peekFieldEncoding();
                        builder.addUnknownField(iNextTag, fieldEncodingPeekFieldEncoding, fieldEncodingPeekFieldEncoding.rawProtoAdapter().decode(reader));
                        break;
                }
            }
        }

        @Override // com.czhj.wire.ProtoAdapter
        public void encode(ProtoWriter writer, MediationChannel value) throws IOException {
            ProtoAdapter<Integer> protoAdapter = ProtoAdapter.UINT32;
            protoAdapter.encodeWithTag(writer, 1, value.channel_id);
            ProtoAdapter<String> protoAdapter2 = ProtoAdapter.STRING;
            protoAdapter2.encodeWithTag(writer, 2, value.name);
            protoAdapter.encodeWithTag(writer, 3, value.ad_expire_time);
            ProtoAdapter<Boolean> protoAdapter3 = ProtoAdapter.BOOL;
            protoAdapter3.encodeWithTag(writer, 4, value.enable_extra_close_callback);
            protoAdapter3.encodeWithTag(writer, 5, value.is_custom);
            protoAdapter2.encodeWithTag(writer, 6, value.ad_init_class);
            protoAdapter2.encodeWithTag(writer, 7, value.ad_class);
            protoAdapter.encodeWithTag(writer, 8, value.fill_type);
            protoAdapter2.encodeWithTag(writer, 9, value.cur);
            ProtoAdapter<Integer> protoAdapter4 = ProtoAdapter.INT32;
            protoAdapter4.encodeWithTag(writer, 10, value.ratio);
            protoAdapter2.encodeWithTag(writer, 11, value.module_name);
            protoAdapter3.encodeWithTag(writer, 12, value.enable_click_auto_close);
            protoAdapter.encodeWithTag(writer, 13, value.countdown_auto_close_timer);
            protoAdapter4.encodeWithTag(writer, 14, value.is_ready);
            protoAdapter3.encodeWithTag(writer, 15, value.is_saas_adx);
            this.saas_options.encodeWithTag(writer, 16, value.saas_options);
            AdapterConfig.ADAPTER.encodeWithTag(writer, 17, value.adapter_config);
            this.options.encodeWithTag(writer, 18, value.options);
            writer.writeBytes(value.unknownFields());
        }

        @Override // com.czhj.wire.ProtoAdapter
        public int encodedSize(MediationChannel value) {
            ProtoAdapter<Integer> protoAdapter = ProtoAdapter.UINT32;
            int iEncodedSizeWithTag = protoAdapter.encodedSizeWithTag(1, value.channel_id);
            ProtoAdapter<String> protoAdapter2 = ProtoAdapter.STRING;
            int iEncodedSizeWithTag2 = iEncodedSizeWithTag + protoAdapter2.encodedSizeWithTag(2, value.name) + protoAdapter.encodedSizeWithTag(3, value.ad_expire_time);
            ProtoAdapter<Boolean> protoAdapter3 = ProtoAdapter.BOOL;
            int iEncodedSizeWithTag3 = iEncodedSizeWithTag2 + protoAdapter3.encodedSizeWithTag(4, value.enable_extra_close_callback) + protoAdapter3.encodedSizeWithTag(5, value.is_custom) + protoAdapter2.encodedSizeWithTag(6, value.ad_init_class) + protoAdapter2.encodedSizeWithTag(7, value.ad_class) + protoAdapter.encodedSizeWithTag(8, value.fill_type) + protoAdapter2.encodedSizeWithTag(9, value.cur);
            ProtoAdapter<Integer> protoAdapter4 = ProtoAdapter.INT32;
            return iEncodedSizeWithTag3 + protoAdapter4.encodedSizeWithTag(10, value.ratio) + protoAdapter2.encodedSizeWithTag(11, value.module_name) + protoAdapter3.encodedSizeWithTag(12, value.enable_click_auto_close) + protoAdapter.encodedSizeWithTag(13, value.countdown_auto_close_timer) + protoAdapter4.encodedSizeWithTag(14, value.is_ready) + protoAdapter3.encodedSizeWithTag(15, value.is_saas_adx) + this.saas_options.encodedSizeWithTag(16, value.saas_options) + AdapterConfig.ADAPTER.encodedSizeWithTag(17, value.adapter_config) + this.options.encodedSizeWithTag(18, value.options) + value.unknownFields().size();
        }

        @Override // com.czhj.wire.ProtoAdapter
        public MediationChannel redact(MediationChannel value) {
            Builder builderNewBuilder = value.newBuilder();
            AdapterConfig adapterConfig = builderNewBuilder.adapter_config;
            if (adapterConfig != null) {
                builderNewBuilder.adapter_config = AdapterConfig.ADAPTER.redact(adapterConfig);
            }
            builderNewBuilder.clearUnknownFields();
            return builderNewBuilder.build();
        }
    }

    static {
        ProtoAdapter_MediationChannel protoAdapter_MediationChannel = new ProtoAdapter_MediationChannel();
        ADAPTER = protoAdapter_MediationChannel;
        CREATOR = AndroidMessage.newCreator(protoAdapter_MediationChannel);
        DEFAULT_CHANNEL_ID = 0;
        DEFAULT_AD_EXPIRE_TIME = 0;
        Boolean bool = Boolean.FALSE;
        DEFAULT_ENABLE_EXTRA_CLOSE_CALLBACK = bool;
        DEFAULT_IS_CUSTOM = bool;
        DEFAULT_FILL_TYPE = 0;
        DEFAULT_RATIO = 0;
        DEFAULT_ENABLE_CLICK_AUTO_CLOSE = bool;
        DEFAULT_COUNTDOWN_AUTO_CLOSE_TIMER = 0;
        DEFAULT_IS_READY = 0;
        DEFAULT_IS_SAAS_ADX = bool;
    }

    public MediationChannel(Integer channel_id, String name, Integer ad_expire_time, Boolean enable_extra_close_callback, Boolean is_custom, String ad_init_class, String ad_class, Integer fill_type, String cur, Integer ratio, String module_name, Boolean enable_click_auto_close, Integer countdown_auto_close_timer, Integer is_ready, Boolean is_saas_adx, Map<String, String> saas_options, AdapterConfig adapter_config, Map<String, String> options) {
        this(channel_id, name, ad_expire_time, enable_extra_close_callback, is_custom, ad_init_class, ad_class, fill_type, cur, ratio, module_name, enable_click_auto_close, countdown_auto_close_timer, is_ready, is_saas_adx, saas_options, adapter_config, options, ByteString.EMPTY);
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof MediationChannel)) {
            return false;
        }
        MediationChannel mediationChannel = (MediationChannel) other;
        return unknownFields().equals(mediationChannel.unknownFields()) && Internal.equals(this.channel_id, mediationChannel.channel_id) && Internal.equals(this.name, mediationChannel.name) && Internal.equals(this.ad_expire_time, mediationChannel.ad_expire_time) && Internal.equals(this.enable_extra_close_callback, mediationChannel.enable_extra_close_callback) && Internal.equals(this.is_custom, mediationChannel.is_custom) && Internal.equals(this.ad_init_class, mediationChannel.ad_init_class) && Internal.equals(this.ad_class, mediationChannel.ad_class) && Internal.equals(this.fill_type, mediationChannel.fill_type) && Internal.equals(this.cur, mediationChannel.cur) && Internal.equals(this.ratio, mediationChannel.ratio) && Internal.equals(this.module_name, mediationChannel.module_name) && Internal.equals(this.enable_click_auto_close, mediationChannel.enable_click_auto_close) && Internal.equals(this.countdown_auto_close_timer, mediationChannel.countdown_auto_close_timer) && Internal.equals(this.is_ready, mediationChannel.is_ready) && Internal.equals(this.is_saas_adx, mediationChannel.is_saas_adx) && this.saas_options.equals(mediationChannel.saas_options) && Internal.equals(this.adapter_config, mediationChannel.adapter_config) && this.options.equals(mediationChannel.options);
    }

    public int hashCode() {
        int i10 = this.hashCode;
        if (i10 != 0) {
            return i10;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        Integer num = this.channel_id;
        int iHashCode2 = (iHashCode + (num != null ? num.hashCode() : 0)) * 37;
        String str = this.name;
        int iHashCode3 = (iHashCode2 + (str != null ? str.hashCode() : 0)) * 37;
        Integer num2 = this.ad_expire_time;
        int iHashCode4 = (iHashCode3 + (num2 != null ? num2.hashCode() : 0)) * 37;
        Boolean bool = this.enable_extra_close_callback;
        int iHashCode5 = (iHashCode4 + (bool != null ? bool.hashCode() : 0)) * 37;
        Boolean bool2 = this.is_custom;
        int iHashCode6 = (iHashCode5 + (bool2 != null ? bool2.hashCode() : 0)) * 37;
        String str2 = this.ad_init_class;
        int iHashCode7 = (iHashCode6 + (str2 != null ? str2.hashCode() : 0)) * 37;
        String str3 = this.ad_class;
        int iHashCode8 = (iHashCode7 + (str3 != null ? str3.hashCode() : 0)) * 37;
        Integer num3 = this.fill_type;
        int iHashCode9 = (iHashCode8 + (num3 != null ? num3.hashCode() : 0)) * 37;
        String str4 = this.cur;
        int iHashCode10 = (iHashCode9 + (str4 != null ? str4.hashCode() : 0)) * 37;
        Integer num4 = this.ratio;
        int iHashCode11 = (iHashCode10 + (num4 != null ? num4.hashCode() : 0)) * 37;
        String str5 = this.module_name;
        int iHashCode12 = (iHashCode11 + (str5 != null ? str5.hashCode() : 0)) * 37;
        Boolean bool3 = this.enable_click_auto_close;
        int iHashCode13 = (iHashCode12 + (bool3 != null ? bool3.hashCode() : 0)) * 37;
        Integer num5 = this.countdown_auto_close_timer;
        int iHashCode14 = (iHashCode13 + (num5 != null ? num5.hashCode() : 0)) * 37;
        Integer num6 = this.is_ready;
        int iHashCode15 = (iHashCode14 + (num6 != null ? num6.hashCode() : 0)) * 37;
        Boolean bool4 = this.is_saas_adx;
        int iHashCode16 = (((iHashCode15 + (bool4 != null ? bool4.hashCode() : 0)) * 37) + this.saas_options.hashCode()) * 37;
        AdapterConfig adapterConfig = this.adapter_config;
        int iHashCode17 = ((iHashCode16 + (adapterConfig != null ? adapterConfig.hashCode() : 0)) * 37) + this.options.hashCode();
        this.hashCode = iHashCode17;
        return iHashCode17;
    }

    @Override // com.czhj.wire.Message
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        if (this.channel_id != null) {
            sb2.append(", channel_id=");
            sb2.append(this.channel_id);
        }
        if (this.name != null) {
            sb2.append(", name=");
            sb2.append(this.name);
        }
        if (this.ad_expire_time != null) {
            sb2.append(", ad_expire_time=");
            sb2.append(this.ad_expire_time);
        }
        if (this.enable_extra_close_callback != null) {
            sb2.append(", enable_extra_close_callback=");
            sb2.append(this.enable_extra_close_callback);
        }
        if (this.is_custom != null) {
            sb2.append(", is_custom=");
            sb2.append(this.is_custom);
        }
        if (this.ad_init_class != null) {
            sb2.append(", ad_init_class=");
            sb2.append(this.ad_init_class);
        }
        if (this.ad_class != null) {
            sb2.append(", ad_class=");
            sb2.append(this.ad_class);
        }
        if (this.fill_type != null) {
            sb2.append(", fill_type=");
            sb2.append(this.fill_type);
        }
        if (this.cur != null) {
            sb2.append(", cur=");
            sb2.append(this.cur);
        }
        if (this.ratio != null) {
            sb2.append(", ratio=");
            sb2.append(this.ratio);
        }
        if (this.module_name != null) {
            sb2.append(", module_name=");
            sb2.append(this.module_name);
        }
        if (this.enable_click_auto_close != null) {
            sb2.append(", enable_click_auto_close=");
            sb2.append(this.enable_click_auto_close);
        }
        if (this.countdown_auto_close_timer != null) {
            sb2.append(", countdown_auto_close_timer=");
            sb2.append(this.countdown_auto_close_timer);
        }
        if (this.is_ready != null) {
            sb2.append(", is_ready=");
            sb2.append(this.is_ready);
        }
        if (this.is_saas_adx != null) {
            sb2.append(", is_saas_adx=");
            sb2.append(this.is_saas_adx);
        }
        if (!this.saas_options.isEmpty()) {
            sb2.append(", saas_options=");
            sb2.append(this.saas_options);
        }
        if (this.adapter_config != null) {
            sb2.append(", adapter_config=");
            sb2.append(this.adapter_config);
        }
        if (!this.options.isEmpty()) {
            sb2.append(", options=");
            sb2.append(this.options);
        }
        StringBuilder sbReplace = sb2.replace(0, 2, "MediationChannel{");
        sbReplace.append('}');
        return sbReplace.toString();
    }

    public MediationChannel(Integer channel_id, String name, Integer ad_expire_time, Boolean enable_extra_close_callback, Boolean is_custom, String ad_init_class, String ad_class, Integer fill_type, String cur, Integer ratio, String module_name, Boolean enable_click_auto_close, Integer countdown_auto_close_timer, Integer is_ready, Boolean is_saas_adx, Map<String, String> saas_options, AdapterConfig adapter_config, Map<String, String> options, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        this.channel_id = channel_id;
        this.name = name;
        this.ad_expire_time = ad_expire_time;
        this.enable_extra_close_callback = enable_extra_close_callback;
        this.is_custom = is_custom;
        this.ad_init_class = ad_init_class;
        this.ad_class = ad_class;
        this.fill_type = fill_type;
        this.cur = cur;
        this.ratio = ratio;
        this.module_name = module_name;
        this.enable_click_auto_close = enable_click_auto_close;
        this.countdown_auto_close_timer = countdown_auto_close_timer;
        this.is_ready = is_ready;
        this.is_saas_adx = is_saas_adx;
        this.saas_options = Internal.immutableCopyOf("saas_options", saas_options);
        this.adapter_config = adapter_config;
        this.options = Internal.immutableCopyOf("options", options);
    }

    @Override // com.czhj.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.channel_id = this.channel_id;
        builder.name = this.name;
        builder.ad_expire_time = this.ad_expire_time;
        builder.enable_extra_close_callback = this.enable_extra_close_callback;
        builder.is_custom = this.is_custom;
        builder.ad_init_class = this.ad_init_class;
        builder.ad_class = this.ad_class;
        builder.fill_type = this.fill_type;
        builder.cur = this.cur;
        builder.ratio = this.ratio;
        builder.module_name = this.module_name;
        builder.enable_click_auto_close = this.enable_click_auto_close;
        builder.countdown_auto_close_timer = this.countdown_auto_close_timer;
        builder.is_ready = this.is_ready;
        builder.is_saas_adx = this.is_saas_adx;
        builder.saas_options = Internal.copyOf("saas_options", this.saas_options);
        builder.adapter_config = this.adapter_config;
        builder.options = Internal.copyOf("options", this.options);
        builder.addUnknownFields(unknownFields());
        return builder;
    }
}
