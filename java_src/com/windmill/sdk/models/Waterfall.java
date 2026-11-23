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
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public final class Waterfall extends AndroidMessage<Waterfall, Builder> {
    public static final ProtoAdapter<Waterfall> ADAPTER;
    public static final Parcelable.Creator<Waterfall> CREATOR;
    public static final Integer DEFAULT_CHECK_MASK;
    public static final Boolean DEFAULT_CLIENT_BIDDING_SWITCH;
    public static final Boolean DEFAULT_ENABLE_AB_TEST;
    public static final Boolean DEFAULT_FORBIDPLUGINUPDATE;
    public static final Boolean DEFAULT_INCENTIVE_ABNORMAL_SHUTDOWN;
    public static final Boolean DEFAULT_IS_ENABLE_TRACKING_READY_LOG;
    public static final String DEFAULT_M = "";
    public static final String DEFAULT_MABC_URL = "";
    public static final String DEFAULT_PRIVACY_URL = "";
    public static final String DEFAULT_RULE_ID = "";
    public static final String DEFAULT_RV_CALLBACK_URL = "";
    public static final Integer DEFAULT_SINGLE_CHANNEL_TIMEOUT;
    public static final Integer DEFAULT_STRATEGY_EXPIRE_TIMESTAMP;
    public static final String DEFAULT_STRATEGY_ID = "";
    public static final Boolean DEFAULT_STRATEGY_REALTIME_REFRESH;
    public static final Long DEFAULT_TIMESTAMP;
    public static final Integer DEFAULT_TIME_TYPE;
    public static final Boolean DEFAULT_USEMEDIATION;
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.windmill.sdk.models.MediationApp#ADAPTER", label = WireField.Label.REPEATED, tag = 2)
    public final List<MediationApp> apps;

    @WireField(adapter = "com.windmill.sdk.models.MediationChannel#ADAPTER", label = WireField.Label.REPEATED, tag = 4)
    public final List<MediationChannel> channels;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", tag = 23)
    public final Integer check_mask;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", tag = 18)
    public final Boolean client_bidding_switch;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", keyAdapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 19)
    public final Map<String, Float> currency_setting;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", keyAdapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 21)
    public final Map<String, String> custom_setting;

    @WireField(adapter = "com.windmill.sdk.models.MediationElement#ADAPTER", label = WireField.Label.REPEATED, tag = 1)
    public final List<MediationElement> elements;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", tag = 5)
    public final Boolean enable_ab_test;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", tag = 16)
    public final Boolean forbidPluginUpdate;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", tag = 26)
    public final Boolean incentive_abnormal_shutdown;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", tag = 27)
    public final Boolean is_enable_tracking_ready_log;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 25)
    public final String f87059m;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 24)
    public final String mabc_url;

    @WireField(adapter = "com.windmill.sdk.models.MtElementInfo#ADAPTER", tag = 28)
    public final MtElementInfo mt_channel;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 13)
    public final String privacy_url;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 8)
    public final String rule_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 9)
    public final String rv_callback_url;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 3)
    public final Integer single_channel_timeout;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", keyAdapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 15)
    public final Map<String, String> ssp_options;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 10)
    public final Integer strategy_expire_timestamp;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 7)
    public final String strategy_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", tag = 17)
    public final Boolean strategy_realtime_refresh;

    @WireField(adapter = "com.windmill.sdk.models.StrategyWaterFall#ADAPTER", tag = 6)
    public final StrategyWaterFall strategy_waterfall;

    @WireField(adapter = "com.windmill.sdk.models.TemplateSetting#ADAPTER", tag = 12)
    public final TemplateSetting template_setting;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", tag = 20)
    public final Integer time_type;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", tag = 22)
    public final Long timestamp;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.REPEATED, tag = 11)
    public final List<String> track_url;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", tag = 14)
    public final Boolean useMediation;

    public static final class Builder extends Message.Builder<Waterfall, Builder> {
        public Boolean incentive_abnormal_shutdown;
        public Boolean is_enable_tracking_ready_log;
        public MtElementInfo mt_channel;
        public StrategyWaterFall strategy_waterfall;
        public TemplateSetting template_setting;
        public Integer single_channel_timeout = Waterfall.DEFAULT_SINGLE_CHANNEL_TIMEOUT;
        public Boolean enable_ab_test = Waterfall.DEFAULT_ENABLE_AB_TEST;
        public String strategy_id = "";
        public String rule_id = "";
        public String rv_callback_url = "";
        public Integer strategy_expire_timestamp = Waterfall.DEFAULT_STRATEGY_EXPIRE_TIMESTAMP;
        public String privacy_url = "";
        public Boolean useMediation = Waterfall.DEFAULT_USEMEDIATION;
        public Boolean forbidPluginUpdate = Waterfall.DEFAULT_FORBIDPLUGINUPDATE;
        public Boolean strategy_realtime_refresh = Waterfall.DEFAULT_STRATEGY_REALTIME_REFRESH;
        public Boolean client_bidding_switch = Waterfall.DEFAULT_CLIENT_BIDDING_SWITCH;
        public Integer time_type = Waterfall.DEFAULT_TIME_TYPE;
        public Long timestamp = Waterfall.DEFAULT_TIMESTAMP;
        public Integer check_mask = Waterfall.DEFAULT_CHECK_MASK;
        public String mabc_url = "";

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public String f87060m = "";
        public List<MediationElement> elements = Internal.newMutableList();
        public List<MediationApp> apps = Internal.newMutableList();
        public List<MediationChannel> channels = Internal.newMutableList();
        public List<String> track_url = Internal.newMutableList();
        public Map<String, String> ssp_options = Internal.newMutableMap();
        public Map<String, Float> currency_setting = Internal.newMutableMap();
        public Map<String, String> custom_setting = Internal.newMutableMap();

        public Builder apps(List<MediationApp> apps) {
            Internal.checkElementsNotNull(apps);
            this.apps = apps;
            return this;
        }

        public Builder channels(List<MediationChannel> channels) {
            Internal.checkElementsNotNull(channels);
            this.channels = channels;
            return this;
        }

        public Builder check_mask(Integer check_mask) {
            this.check_mask = check_mask;
            return this;
        }

        public Builder client_bidding_switch(Boolean client_bidding_switch) {
            this.client_bidding_switch = client_bidding_switch;
            return this;
        }

        public Builder currency_setting(Map<String, Float> currency_setting) {
            Internal.checkElementsNotNull(currency_setting);
            this.currency_setting = currency_setting;
            return this;
        }

        public Builder custom_setting(Map<String, String> custom_setting) {
            Internal.checkElementsNotNull(custom_setting);
            this.custom_setting = custom_setting;
            return this;
        }

        public Builder elements(List<MediationElement> elements) {
            Internal.checkElementsNotNull(elements);
            this.elements = elements;
            return this;
        }

        public Builder enable_ab_test(Boolean enable_ab_test) {
            this.enable_ab_test = enable_ab_test;
            return this;
        }

        public Builder forbidPluginUpdate(Boolean forbidPluginUpdate) {
            this.forbidPluginUpdate = forbidPluginUpdate;
            return this;
        }

        public Builder incentive_abnormal_shutdown(Boolean incentive_abnormal_shutdown) {
            this.incentive_abnormal_shutdown = incentive_abnormal_shutdown;
            return this;
        }

        public Builder is_enable_tracking_ready_log(Boolean is_enable_tracking_ready_log) {
            this.is_enable_tracking_ready_log = is_enable_tracking_ready_log;
            return this;
        }

        public Builder m(String m10) {
            this.f87060m = m10;
            return this;
        }

        public Builder mabc_url(String mabc_url) {
            this.mabc_url = mabc_url;
            return this;
        }

        public Builder mt_channel(MtElementInfo mt_channel) {
            this.mt_channel = mt_channel;
            return this;
        }

        public Builder privacy_url(String privacy_url) {
            this.privacy_url = privacy_url;
            return this;
        }

        public Builder rule_id(String rule_id) {
            this.rule_id = rule_id;
            return this;
        }

        public Builder rv_callback_url(String rv_callback_url) {
            this.rv_callback_url = rv_callback_url;
            return this;
        }

        public Builder single_channel_timeout(Integer single_channel_timeout) {
            this.single_channel_timeout = single_channel_timeout;
            return this;
        }

        public Builder ssp_options(Map<String, String> ssp_options) {
            Internal.checkElementsNotNull(ssp_options);
            this.ssp_options = ssp_options;
            return this;
        }

        public Builder strategy_expire_timestamp(Integer strategy_expire_timestamp) {
            this.strategy_expire_timestamp = strategy_expire_timestamp;
            return this;
        }

        public Builder strategy_id(String strategy_id) {
            this.strategy_id = strategy_id;
            return this;
        }

        public Builder strategy_realtime_refresh(Boolean strategy_realtime_refresh) {
            this.strategy_realtime_refresh = strategy_realtime_refresh;
            return this;
        }

        public Builder strategy_waterfall(StrategyWaterFall strategy_waterfall) {
            this.strategy_waterfall = strategy_waterfall;
            return this;
        }

        public Builder template_setting(TemplateSetting template_setting) {
            this.template_setting = template_setting;
            return this;
        }

        public Builder time_type(Integer time_type) {
            this.time_type = time_type;
            return this;
        }

        public Builder timestamp(Long timestamp) {
            this.timestamp = timestamp;
            return this;
        }

        public Builder track_url(List<String> track_url) {
            Internal.checkElementsNotNull(track_url);
            this.track_url = track_url;
            return this;
        }

        public Builder useMediation(Boolean useMediation) {
            this.useMediation = useMediation;
            return this;
        }

        @Override // com.czhj.wire.Message.Builder
        public Waterfall build() {
            return new Waterfall(this.elements, this.apps, this.single_channel_timeout, this.channels, this.enable_ab_test, this.strategy_waterfall, this.strategy_id, this.rule_id, this.rv_callback_url, this.strategy_expire_timestamp, this.track_url, this.template_setting, this.privacy_url, this.useMediation, this.ssp_options, this.forbidPluginUpdate, this.strategy_realtime_refresh, this.client_bidding_switch, this.currency_setting, this.time_type, this.custom_setting, this.timestamp, this.check_mask, this.mabc_url, this.f87060m, this.incentive_abnormal_shutdown, this.is_enable_tracking_ready_log, this.mt_channel, super.buildUnknownFields());
        }
    }

    private static final class ProtoAdapter_Waterfall extends ProtoAdapter<Waterfall> {
        private final ProtoAdapter<Map<String, Float>> currency_setting;
        private final ProtoAdapter<Map<String, String>> custom_setting;
        private final ProtoAdapter<Map<String, String>> ssp_options;

        public ProtoAdapter_Waterfall() {
            super(FieldEncoding.LENGTH_DELIMITED, Waterfall.class);
            ProtoAdapter<String> protoAdapter = ProtoAdapter.STRING;
            this.ssp_options = ProtoAdapter.newMapAdapter(protoAdapter, protoAdapter);
            this.currency_setting = ProtoAdapter.newMapAdapter(protoAdapter, ProtoAdapter.FLOAT);
            this.custom_setting = ProtoAdapter.newMapAdapter(protoAdapter, protoAdapter);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.czhj.wire.ProtoAdapter
        public Waterfall decode(ProtoReader reader) throws IOException {
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
                        builder.elements.add(MediationElement.ADAPTER.decode(reader));
                        break;
                    case 2:
                        builder.apps.add(MediationApp.ADAPTER.decode(reader));
                        break;
                    case 3:
                        builder.single_channel_timeout(ProtoAdapter.UINT32.decode(reader));
                        break;
                    case 4:
                        builder.channels.add(MediationChannel.ADAPTER.decode(reader));
                        break;
                    case 5:
                        builder.enable_ab_test(ProtoAdapter.BOOL.decode(reader));
                        break;
                    case 6:
                        builder.strategy_waterfall(StrategyWaterFall.ADAPTER.decode(reader));
                        break;
                    case 7:
                        builder.strategy_id(ProtoAdapter.STRING.decode(reader));
                        break;
                    case 8:
                        builder.rule_id(ProtoAdapter.STRING.decode(reader));
                        break;
                    case 9:
                        builder.rv_callback_url(ProtoAdapter.STRING.decode(reader));
                        break;
                    case 10:
                        builder.strategy_expire_timestamp(ProtoAdapter.UINT32.decode(reader));
                        break;
                    case 11:
                        builder.track_url.add(ProtoAdapter.STRING.decode(reader));
                        break;
                    case 12:
                        builder.template_setting(TemplateSetting.ADAPTER.decode(reader));
                        break;
                    case 13:
                        builder.privacy_url(ProtoAdapter.STRING.decode(reader));
                        break;
                    case 14:
                        builder.useMediation(ProtoAdapter.BOOL.decode(reader));
                        break;
                    case 15:
                        builder.ssp_options.putAll(this.ssp_options.decode(reader));
                        break;
                    case 16:
                        builder.forbidPluginUpdate(ProtoAdapter.BOOL.decode(reader));
                        break;
                    case 17:
                        builder.strategy_realtime_refresh(ProtoAdapter.BOOL.decode(reader));
                        break;
                    case 18:
                        builder.client_bidding_switch(ProtoAdapter.BOOL.decode(reader));
                        break;
                    case 19:
                        builder.currency_setting.putAll(this.currency_setting.decode(reader));
                        break;
                    case 20:
                        builder.time_type(ProtoAdapter.INT32.decode(reader));
                        break;
                    case 21:
                        builder.custom_setting.putAll(this.custom_setting.decode(reader));
                        break;
                    case 22:
                        builder.timestamp(ProtoAdapter.INT64.decode(reader));
                        break;
                    case 23:
                        builder.check_mask(ProtoAdapter.INT32.decode(reader));
                        break;
                    case 24:
                        builder.mabc_url(ProtoAdapter.STRING.decode(reader));
                        break;
                    case 25:
                        builder.m(ProtoAdapter.STRING.decode(reader));
                        break;
                    case 26:
                        builder.incentive_abnormal_shutdown(ProtoAdapter.BOOL.decode(reader));
                        break;
                    case 27:
                        builder.is_enable_tracking_ready_log(ProtoAdapter.BOOL.decode(reader));
                        break;
                    case 28:
                        builder.mt_channel(MtElementInfo.ADAPTER.decode(reader));
                        break;
                    default:
                        FieldEncoding fieldEncodingPeekFieldEncoding = reader.peekFieldEncoding();
                        builder.addUnknownField(iNextTag, fieldEncodingPeekFieldEncoding, fieldEncodingPeekFieldEncoding.rawProtoAdapter().decode(reader));
                        break;
                }
            }
        }

        @Override // com.czhj.wire.ProtoAdapter
        public void encode(ProtoWriter writer, Waterfall value) throws IOException {
            MediationElement.ADAPTER.asRepeated().encodeWithTag(writer, 1, value.elements);
            MediationApp.ADAPTER.asRepeated().encodeWithTag(writer, 2, value.apps);
            ProtoAdapter<Integer> protoAdapter = ProtoAdapter.UINT32;
            protoAdapter.encodeWithTag(writer, 3, value.single_channel_timeout);
            MediationChannel.ADAPTER.asRepeated().encodeWithTag(writer, 4, value.channels);
            ProtoAdapter<Boolean> protoAdapter2 = ProtoAdapter.BOOL;
            protoAdapter2.encodeWithTag(writer, 5, value.enable_ab_test);
            StrategyWaterFall.ADAPTER.encodeWithTag(writer, 6, value.strategy_waterfall);
            ProtoAdapter<String> protoAdapter3 = ProtoAdapter.STRING;
            protoAdapter3.encodeWithTag(writer, 7, value.strategy_id);
            protoAdapter3.encodeWithTag(writer, 8, value.rule_id);
            protoAdapter3.encodeWithTag(writer, 9, value.rv_callback_url);
            protoAdapter.encodeWithTag(writer, 10, value.strategy_expire_timestamp);
            protoAdapter3.asRepeated().encodeWithTag(writer, 11, value.track_url);
            TemplateSetting.ADAPTER.encodeWithTag(writer, 12, value.template_setting);
            protoAdapter3.encodeWithTag(writer, 13, value.privacy_url);
            protoAdapter2.encodeWithTag(writer, 14, value.useMediation);
            this.ssp_options.encodeWithTag(writer, 15, value.ssp_options);
            protoAdapter2.encodeWithTag(writer, 16, value.forbidPluginUpdate);
            protoAdapter2.encodeWithTag(writer, 17, value.strategy_realtime_refresh);
            protoAdapter2.encodeWithTag(writer, 18, value.client_bidding_switch);
            this.currency_setting.encodeWithTag(writer, 19, value.currency_setting);
            ProtoAdapter<Integer> protoAdapter4 = ProtoAdapter.INT32;
            protoAdapter4.encodeWithTag(writer, 20, value.time_type);
            this.custom_setting.encodeWithTag(writer, 21, value.custom_setting);
            ProtoAdapter.INT64.encodeWithTag(writer, 22, value.timestamp);
            protoAdapter4.encodeWithTag(writer, 23, value.check_mask);
            protoAdapter3.encodeWithTag(writer, 24, value.mabc_url);
            protoAdapter3.encodeWithTag(writer, 25, value.f87059m);
            protoAdapter2.encodeWithTag(writer, 26, value.incentive_abnormal_shutdown);
            protoAdapter2.encodeWithTag(writer, 27, value.is_enable_tracking_ready_log);
            MtElementInfo.ADAPTER.encodeWithTag(writer, 28, value.mt_channel);
            writer.writeBytes(value.unknownFields());
        }

        @Override // com.czhj.wire.ProtoAdapter
        public int encodedSize(Waterfall value) {
            int iEncodedSizeWithTag = MediationElement.ADAPTER.asRepeated().encodedSizeWithTag(1, value.elements) + MediationApp.ADAPTER.asRepeated().encodedSizeWithTag(2, value.apps);
            ProtoAdapter<Integer> protoAdapter = ProtoAdapter.UINT32;
            int iEncodedSizeWithTag2 = iEncodedSizeWithTag + protoAdapter.encodedSizeWithTag(3, value.single_channel_timeout) + MediationChannel.ADAPTER.asRepeated().encodedSizeWithTag(4, value.channels);
            ProtoAdapter<Boolean> protoAdapter2 = ProtoAdapter.BOOL;
            int iEncodedSizeWithTag3 = iEncodedSizeWithTag2 + protoAdapter2.encodedSizeWithTag(5, value.enable_ab_test) + StrategyWaterFall.ADAPTER.encodedSizeWithTag(6, value.strategy_waterfall);
            ProtoAdapter<String> protoAdapter3 = ProtoAdapter.STRING;
            int iEncodedSizeWithTag4 = iEncodedSizeWithTag3 + protoAdapter3.encodedSizeWithTag(7, value.strategy_id) + protoAdapter3.encodedSizeWithTag(8, value.rule_id) + protoAdapter3.encodedSizeWithTag(9, value.rv_callback_url) + protoAdapter.encodedSizeWithTag(10, value.strategy_expire_timestamp) + protoAdapter3.asRepeated().encodedSizeWithTag(11, value.track_url) + TemplateSetting.ADAPTER.encodedSizeWithTag(12, value.template_setting) + protoAdapter3.encodedSizeWithTag(13, value.privacy_url) + protoAdapter2.encodedSizeWithTag(14, value.useMediation) + this.ssp_options.encodedSizeWithTag(15, value.ssp_options) + protoAdapter2.encodedSizeWithTag(16, value.forbidPluginUpdate) + protoAdapter2.encodedSizeWithTag(17, value.strategy_realtime_refresh) + protoAdapter2.encodedSizeWithTag(18, value.client_bidding_switch) + this.currency_setting.encodedSizeWithTag(19, value.currency_setting);
            ProtoAdapter<Integer> protoAdapter4 = ProtoAdapter.INT32;
            return iEncodedSizeWithTag4 + protoAdapter4.encodedSizeWithTag(20, value.time_type) + this.custom_setting.encodedSizeWithTag(21, value.custom_setting) + ProtoAdapter.INT64.encodedSizeWithTag(22, value.timestamp) + protoAdapter4.encodedSizeWithTag(23, value.check_mask) + protoAdapter3.encodedSizeWithTag(24, value.mabc_url) + protoAdapter3.encodedSizeWithTag(25, value.f87059m) + protoAdapter2.encodedSizeWithTag(26, value.incentive_abnormal_shutdown) + protoAdapter2.encodedSizeWithTag(27, value.is_enable_tracking_ready_log) + MtElementInfo.ADAPTER.encodedSizeWithTag(28, value.mt_channel) + value.unknownFields().size();
        }

        @Override // com.czhj.wire.ProtoAdapter
        public Waterfall redact(Waterfall value) {
            Builder builderNewBuilder = value.newBuilder();
            Internal.redactElements(builderNewBuilder.elements, MediationElement.ADAPTER);
            Internal.redactElements(builderNewBuilder.apps, MediationApp.ADAPTER);
            Internal.redactElements(builderNewBuilder.channels, MediationChannel.ADAPTER);
            StrategyWaterFall strategyWaterFall = builderNewBuilder.strategy_waterfall;
            if (strategyWaterFall != null) {
                builderNewBuilder.strategy_waterfall = StrategyWaterFall.ADAPTER.redact(strategyWaterFall);
            }
            TemplateSetting templateSetting = builderNewBuilder.template_setting;
            if (templateSetting != null) {
                builderNewBuilder.template_setting = TemplateSetting.ADAPTER.redact(templateSetting);
            }
            MtElementInfo mtElementInfo = builderNewBuilder.mt_channel;
            if (mtElementInfo != null) {
                builderNewBuilder.mt_channel = MtElementInfo.ADAPTER.redact(mtElementInfo);
            }
            builderNewBuilder.clearUnknownFields();
            return builderNewBuilder.build();
        }
    }

    static {
        ProtoAdapter_Waterfall protoAdapter_Waterfall = new ProtoAdapter_Waterfall();
        ADAPTER = protoAdapter_Waterfall;
        CREATOR = AndroidMessage.newCreator(protoAdapter_Waterfall);
        DEFAULT_SINGLE_CHANNEL_TIMEOUT = 0;
        Boolean bool = Boolean.FALSE;
        DEFAULT_ENABLE_AB_TEST = bool;
        DEFAULT_STRATEGY_EXPIRE_TIMESTAMP = 0;
        DEFAULT_USEMEDIATION = bool;
        DEFAULT_FORBIDPLUGINUPDATE = bool;
        DEFAULT_STRATEGY_REALTIME_REFRESH = bool;
        DEFAULT_CLIENT_BIDDING_SWITCH = bool;
        DEFAULT_TIME_TYPE = 0;
        DEFAULT_TIMESTAMP = 0L;
        DEFAULT_CHECK_MASK = 0;
        DEFAULT_INCENTIVE_ABNORMAL_SHUTDOWN = bool;
        DEFAULT_IS_ENABLE_TRACKING_READY_LOG = bool;
    }

    public Waterfall(List<MediationElement> elements, List<MediationApp> apps, Integer single_channel_timeout, List<MediationChannel> channels, Boolean enable_ab_test, StrategyWaterFall strategy_waterfall, String strategy_id, String rule_id, String rv_callback_url, Integer strategy_expire_timestamp, List<String> track_url, TemplateSetting template_setting, String privacy_url, Boolean useMediation, Map<String, String> ssp_options, Boolean forbidPluginUpdate, Boolean strategy_realtime_refresh, Boolean client_bidding_switch, Map<String, Float> currency_setting, Integer time_type, Map<String, String> custom_setting, Long timestamp, Integer check_mask, String mabc_url, String m10, Boolean incentive_abnormal_shutdown, Boolean is_enable_tracking_ready_log, MtElementInfo mt_channel) {
        this(elements, apps, single_channel_timeout, channels, enable_ab_test, strategy_waterfall, strategy_id, rule_id, rv_callback_url, strategy_expire_timestamp, track_url, template_setting, privacy_url, useMediation, ssp_options, forbidPluginUpdate, strategy_realtime_refresh, client_bidding_switch, currency_setting, time_type, custom_setting, timestamp, check_mask, mabc_url, m10, incentive_abnormal_shutdown, is_enable_tracking_ready_log, mt_channel, ByteString.EMPTY);
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof Waterfall)) {
            return false;
        }
        Waterfall waterfall = (Waterfall) other;
        return unknownFields().equals(waterfall.unknownFields()) && this.elements.equals(waterfall.elements) && this.apps.equals(waterfall.apps) && Internal.equals(this.single_channel_timeout, waterfall.single_channel_timeout) && this.channels.equals(waterfall.channels) && Internal.equals(this.enable_ab_test, waterfall.enable_ab_test) && Internal.equals(this.strategy_waterfall, waterfall.strategy_waterfall) && Internal.equals(this.strategy_id, waterfall.strategy_id) && Internal.equals(this.rule_id, waterfall.rule_id) && Internal.equals(this.rv_callback_url, waterfall.rv_callback_url) && Internal.equals(this.strategy_expire_timestamp, waterfall.strategy_expire_timestamp) && this.track_url.equals(waterfall.track_url) && Internal.equals(this.template_setting, waterfall.template_setting) && Internal.equals(this.privacy_url, waterfall.privacy_url) && Internal.equals(this.useMediation, waterfall.useMediation) && this.ssp_options.equals(waterfall.ssp_options) && Internal.equals(this.forbidPluginUpdate, waterfall.forbidPluginUpdate) && Internal.equals(this.strategy_realtime_refresh, waterfall.strategy_realtime_refresh) && Internal.equals(this.client_bidding_switch, waterfall.client_bidding_switch) && this.currency_setting.equals(waterfall.currency_setting) && Internal.equals(this.time_type, waterfall.time_type) && this.custom_setting.equals(waterfall.custom_setting) && Internal.equals(this.timestamp, waterfall.timestamp) && Internal.equals(this.check_mask, waterfall.check_mask) && Internal.equals(this.mabc_url, waterfall.mabc_url) && Internal.equals(this.f87059m, waterfall.f87059m) && Internal.equals(this.incentive_abnormal_shutdown, waterfall.incentive_abnormal_shutdown) && Internal.equals(this.is_enable_tracking_ready_log, waterfall.is_enable_tracking_ready_log) && Internal.equals(this.mt_channel, waterfall.mt_channel);
    }

    public int hashCode() {
        int i10 = this.hashCode;
        if (i10 != 0) {
            return i10;
        }
        int iHashCode = ((((unknownFields().hashCode() * 37) + this.elements.hashCode()) * 37) + this.apps.hashCode()) * 37;
        Integer num = this.single_channel_timeout;
        int iHashCode2 = (((iHashCode + (num != null ? num.hashCode() : 0)) * 37) + this.channels.hashCode()) * 37;
        Boolean bool = this.enable_ab_test;
        int iHashCode3 = (iHashCode2 + (bool != null ? bool.hashCode() : 0)) * 37;
        StrategyWaterFall strategyWaterFall = this.strategy_waterfall;
        int iHashCode4 = (iHashCode3 + (strategyWaterFall != null ? strategyWaterFall.hashCode() : 0)) * 37;
        String str = this.strategy_id;
        int iHashCode5 = (iHashCode4 + (str != null ? str.hashCode() : 0)) * 37;
        String str2 = this.rule_id;
        int iHashCode6 = (iHashCode5 + (str2 != null ? str2.hashCode() : 0)) * 37;
        String str3 = this.rv_callback_url;
        int iHashCode7 = (iHashCode6 + (str3 != null ? str3.hashCode() : 0)) * 37;
        Integer num2 = this.strategy_expire_timestamp;
        int iHashCode8 = (((iHashCode7 + (num2 != null ? num2.hashCode() : 0)) * 37) + this.track_url.hashCode()) * 37;
        TemplateSetting templateSetting = this.template_setting;
        int iHashCode9 = (iHashCode8 + (templateSetting != null ? templateSetting.hashCode() : 0)) * 37;
        String str4 = this.privacy_url;
        int iHashCode10 = (iHashCode9 + (str4 != null ? str4.hashCode() : 0)) * 37;
        Boolean bool2 = this.useMediation;
        int iHashCode11 = (((iHashCode10 + (bool2 != null ? bool2.hashCode() : 0)) * 37) + this.ssp_options.hashCode()) * 37;
        Boolean bool3 = this.forbidPluginUpdate;
        int iHashCode12 = (iHashCode11 + (bool3 != null ? bool3.hashCode() : 0)) * 37;
        Boolean bool4 = this.strategy_realtime_refresh;
        int iHashCode13 = (iHashCode12 + (bool4 != null ? bool4.hashCode() : 0)) * 37;
        Boolean bool5 = this.client_bidding_switch;
        int iHashCode14 = (((iHashCode13 + (bool5 != null ? bool5.hashCode() : 0)) * 37) + this.currency_setting.hashCode()) * 37;
        Integer num3 = this.time_type;
        int iHashCode15 = (((iHashCode14 + (num3 != null ? num3.hashCode() : 0)) * 37) + this.custom_setting.hashCode()) * 37;
        Long l10 = this.timestamp;
        int iHashCode16 = (iHashCode15 + (l10 != null ? l10.hashCode() : 0)) * 37;
        Integer num4 = this.check_mask;
        int iHashCode17 = (iHashCode16 + (num4 != null ? num4.hashCode() : 0)) * 37;
        String str5 = this.mabc_url;
        int iHashCode18 = (iHashCode17 + (str5 != null ? str5.hashCode() : 0)) * 37;
        String str6 = this.f87059m;
        int iHashCode19 = (iHashCode18 + (str6 != null ? str6.hashCode() : 0)) * 37;
        Boolean bool6 = this.incentive_abnormal_shutdown;
        int iHashCode20 = (iHashCode19 + (bool6 != null ? bool6.hashCode() : 0)) * 37;
        Boolean bool7 = this.is_enable_tracking_ready_log;
        int iHashCode21 = (iHashCode20 + (bool7 != null ? bool7.hashCode() : 0)) * 37;
        MtElementInfo mtElementInfo = this.mt_channel;
        int iHashCode22 = iHashCode21 + (mtElementInfo != null ? mtElementInfo.hashCode() : 0);
        this.hashCode = iHashCode22;
        return iHashCode22;
    }

    @Override // com.czhj.wire.Message
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        if (!this.elements.isEmpty()) {
            sb2.append(", elements=");
            sb2.append(this.elements);
        }
        if (!this.apps.isEmpty()) {
            sb2.append(", apps=");
            sb2.append(this.apps);
        }
        if (this.single_channel_timeout != null) {
            sb2.append(", single_channel_timeout=");
            sb2.append(this.single_channel_timeout);
        }
        if (!this.channels.isEmpty()) {
            sb2.append(", channels=");
            sb2.append(this.channels);
        }
        if (this.enable_ab_test != null) {
            sb2.append(", enable_ab_test=");
            sb2.append(this.enable_ab_test);
        }
        if (this.strategy_waterfall != null) {
            sb2.append(", strategy_waterfall=");
            sb2.append(this.strategy_waterfall);
        }
        if (this.strategy_id != null) {
            sb2.append(", strategy_id=");
            sb2.append(this.strategy_id);
        }
        if (this.rule_id != null) {
            sb2.append(", rule_id=");
            sb2.append(this.rule_id);
        }
        if (this.rv_callback_url != null) {
            sb2.append(", rv_callback_url=");
            sb2.append(this.rv_callback_url);
        }
        if (this.strategy_expire_timestamp != null) {
            sb2.append(", strategy_expire_timestamp=");
            sb2.append(this.strategy_expire_timestamp);
        }
        if (!this.track_url.isEmpty()) {
            sb2.append(", track_url=");
            sb2.append(this.track_url);
        }
        if (this.template_setting != null) {
            sb2.append(", template_setting=");
            sb2.append(this.template_setting);
        }
        if (this.privacy_url != null) {
            sb2.append(", privacy_url=");
            sb2.append(this.privacy_url);
        }
        if (this.useMediation != null) {
            sb2.append(", useMediation=");
            sb2.append(this.useMediation);
        }
        if (!this.ssp_options.isEmpty()) {
            sb2.append(", ssp_options=");
            sb2.append(this.ssp_options);
        }
        if (this.forbidPluginUpdate != null) {
            sb2.append(", forbidPluginUpdate=");
            sb2.append(this.forbidPluginUpdate);
        }
        if (this.strategy_realtime_refresh != null) {
            sb2.append(", strategy_realtime_refresh=");
            sb2.append(this.strategy_realtime_refresh);
        }
        if (this.client_bidding_switch != null) {
            sb2.append(", client_bidding_switch=");
            sb2.append(this.client_bidding_switch);
        }
        if (!this.currency_setting.isEmpty()) {
            sb2.append(", currency_setting=");
            sb2.append(this.currency_setting);
        }
        if (this.time_type != null) {
            sb2.append(", time_type=");
            sb2.append(this.time_type);
        }
        if (!this.custom_setting.isEmpty()) {
            sb2.append(", custom_setting=");
            sb2.append(this.custom_setting);
        }
        if (this.timestamp != null) {
            sb2.append(", timestamp=");
            sb2.append(this.timestamp);
        }
        if (this.check_mask != null) {
            sb2.append(", check_mask=");
            sb2.append(this.check_mask);
        }
        if (this.mabc_url != null) {
            sb2.append(", mabc_url=");
            sb2.append(this.mabc_url);
        }
        if (this.f87059m != null) {
            sb2.append(", m=");
            sb2.append(this.f87059m);
        }
        if (this.incentive_abnormal_shutdown != null) {
            sb2.append(", incentive_abnormal_shutdown=");
            sb2.append(this.incentive_abnormal_shutdown);
        }
        if (this.is_enable_tracking_ready_log != null) {
            sb2.append(", is_enable_tracking_ready_log=");
            sb2.append(this.is_enable_tracking_ready_log);
        }
        if (this.mt_channel != null) {
            sb2.append(", mt_channel=");
            sb2.append(this.mt_channel);
        }
        StringBuilder sbReplace = sb2.replace(0, 2, "Waterfall{");
        sbReplace.append('}');
        return sbReplace.toString();
    }

    public Waterfall(List<MediationElement> elements, List<MediationApp> apps, Integer single_channel_timeout, List<MediationChannel> channels, Boolean enable_ab_test, StrategyWaterFall strategy_waterfall, String strategy_id, String rule_id, String rv_callback_url, Integer strategy_expire_timestamp, List<String> track_url, TemplateSetting template_setting, String privacy_url, Boolean useMediation, Map<String, String> ssp_options, Boolean forbidPluginUpdate, Boolean strategy_realtime_refresh, Boolean client_bidding_switch, Map<String, Float> currency_setting, Integer time_type, Map<String, String> custom_setting, Long timestamp, Integer check_mask, String mabc_url, String m10, Boolean incentive_abnormal_shutdown, Boolean is_enable_tracking_ready_log, MtElementInfo mt_channel, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        this.elements = Internal.immutableCopyOf("elements", elements);
        this.apps = Internal.immutableCopyOf("apps", apps);
        this.single_channel_timeout = single_channel_timeout;
        this.channels = Internal.immutableCopyOf("channels", channels);
        this.enable_ab_test = enable_ab_test;
        this.strategy_waterfall = strategy_waterfall;
        this.strategy_id = strategy_id;
        this.rule_id = rule_id;
        this.rv_callback_url = rv_callback_url;
        this.strategy_expire_timestamp = strategy_expire_timestamp;
        this.track_url = Internal.immutableCopyOf("track_url", track_url);
        this.template_setting = template_setting;
        this.privacy_url = privacy_url;
        this.useMediation = useMediation;
        this.ssp_options = Internal.immutableCopyOf("ssp_options", ssp_options);
        this.forbidPluginUpdate = forbidPluginUpdate;
        this.strategy_realtime_refresh = strategy_realtime_refresh;
        this.client_bidding_switch = client_bidding_switch;
        this.currency_setting = Internal.immutableCopyOf("currency_setting", currency_setting);
        this.time_type = time_type;
        this.custom_setting = Internal.immutableCopyOf("custom_setting", custom_setting);
        this.timestamp = timestamp;
        this.check_mask = check_mask;
        this.mabc_url = mabc_url;
        this.f87059m = m10;
        this.incentive_abnormal_shutdown = incentive_abnormal_shutdown;
        this.is_enable_tracking_ready_log = is_enable_tracking_ready_log;
        this.mt_channel = mt_channel;
    }

    @Override // com.czhj.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.elements = Internal.copyOf("elements", this.elements);
        builder.apps = Internal.copyOf("apps", this.apps);
        builder.single_channel_timeout = this.single_channel_timeout;
        builder.channels = Internal.copyOf("channels", this.channels);
        builder.enable_ab_test = this.enable_ab_test;
        builder.strategy_waterfall = this.strategy_waterfall;
        builder.strategy_id = this.strategy_id;
        builder.rule_id = this.rule_id;
        builder.rv_callback_url = this.rv_callback_url;
        builder.strategy_expire_timestamp = this.strategy_expire_timestamp;
        builder.track_url = Internal.copyOf("track_url", this.track_url);
        builder.template_setting = this.template_setting;
        builder.privacy_url = this.privacy_url;
        builder.useMediation = this.useMediation;
        builder.ssp_options = Internal.copyOf("ssp_options", this.ssp_options);
        builder.forbidPluginUpdate = this.forbidPluginUpdate;
        builder.strategy_realtime_refresh = this.strategy_realtime_refresh;
        builder.client_bidding_switch = this.client_bidding_switch;
        builder.currency_setting = Internal.copyOf("currency_setting", this.currency_setting);
        builder.time_type = this.time_type;
        builder.custom_setting = Internal.copyOf("custom_setting", this.custom_setting);
        builder.timestamp = this.timestamp;
        builder.check_mask = this.check_mask;
        builder.mabc_url = this.mabc_url;
        builder.f87060m = this.f87059m;
        builder.incentive_abnormal_shutdown = this.incentive_abnormal_shutdown;
        builder.is_enable_tracking_ready_log = this.is_enable_tracking_ready_log;
        builder.mt_channel = this.mt_channel;
        builder.addUnknownFields(unknownFields());
        return builder;
    }
}
