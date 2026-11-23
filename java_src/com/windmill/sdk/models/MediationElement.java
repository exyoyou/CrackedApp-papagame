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
public final class MediationElement extends AndroidMessage<MediationElement, Builder> {
    public static final ProtoAdapter<MediationElement> ADAPTER;
    public static final Parcelable.Creator<MediationElement> CREATOR;
    public static final Integer DEFAULT_BID_FLOOR;
    public static final String DEFAULT_BID_FLOOR_CUR = "";
    public static final Integer DEFAULT_BID_TYPE;
    public static final Integer DEFAULT_ECPM;
    public static final Integer DEFAULT_ELEMENT_ID;
    public static final Integer DEFAULT_FREQUENCY_DAY;
    public static final Integer DEFAULT_FREQUENCY_HOUR;
    public static final Integer DEFAULT_FREQUENCY_SECS;
    public static final Integer DEFAULT_HB;
    public static final Boolean DEFAULT_IS_PDB;
    public static final String DEFAULT_MASK = "";
    public static final Integer DEFAULT_MEDIATION_APP_ID;
    public static final Integer DEFAULT_NO_HB_PRELOAD;
    public static final Integer DEFAULT_ORDER;
    public static final Integer DEFAULT_PDB_PRIORITY;
    public static final Integer DEFAULT_PRICE;
    public static final Integer DEFAULT_RENDER_TYPE;
    public static final String DEFAULT_REWARD_GUIDE_PROMPT = "";
    public static final Integer DEFAULT_REWARD_TYPE;
    public static final Integer DEFAULT_SINGLE_CHANNEL_TIMEOUT;
    public static final Integer DEFAULT_SUB_AD_TYPE;
    public static final Integer DEFAULT_TAG;
    public static final Boolean DEFAULT_WEIGHT_SWITCH;
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.REPEATED, tag = 23)
    public final List<String> ban_pkg_name;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", tag = 16)
    public final Integer bid_floor;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 22)
    public final String bid_floor_cur;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 11)
    public final Integer bid_type;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 7)
    public final Integer ecpm;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 1)
    public final Integer element_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 4)
    public final Integer frequency_day;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 5)
    public final Integer frequency_hour;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 6)
    public final Integer frequency_secs;

    /* JADX INFO: renamed from: hb, reason: collision with root package name */
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 10)
    public final Integer f87055hb;

    @WireField(adapter = "com.windmill.sdk.models.HBResponse#ADAPTER", tag = 8)
    public final HBResponse hb_response;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", tag = 24)
    public final Boolean is_pdb;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 21)
    public final String mask;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 2)
    public final Integer mediation_app_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", tag = 17)
    public final Integer no_hb_preload;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", keyAdapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 3)
    public final Map<String, String> options;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", tag = 20)
    public final Integer order;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 25)
    public final Integer pdb_priority;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 9)
    public final Integer price;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 15)
    public final Integer render_type;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 26)
    public final String reward_guide_prompt;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", tag = 19)
    public final Integer reward_type;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", keyAdapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 27)
    public final Map<String, String> saas_options;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 13)
    public final Integer single_channel_timeout;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", tag = 18)
    public final Integer sub_ad_type;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 12)
    public final Integer tag;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", tag = 14)
    public final Boolean weight_switch;

    public static final class Builder extends Message.Builder<MediationElement, Builder> {
        public String bid_floor_cur;
        public HBResponse hb_response;
        public String mask;
        public Integer element_id = MediationElement.DEFAULT_ELEMENT_ID;
        public Integer mediation_app_id = MediationElement.DEFAULT_MEDIATION_APP_ID;
        public Integer frequency_day = MediationElement.DEFAULT_FREQUENCY_DAY;
        public Integer frequency_hour = MediationElement.DEFAULT_FREQUENCY_HOUR;
        public Integer frequency_secs = MediationElement.DEFAULT_FREQUENCY_SECS;
        public Integer ecpm = MediationElement.DEFAULT_ECPM;
        public Integer price = MediationElement.DEFAULT_PRICE;

        /* JADX INFO: renamed from: hb, reason: collision with root package name */
        public Integer f87056hb = MediationElement.DEFAULT_HB;
        public Integer bid_type = MediationElement.DEFAULT_BID_TYPE;
        public Integer tag = MediationElement.DEFAULT_TAG;
        public Integer single_channel_timeout = MediationElement.DEFAULT_SINGLE_CHANNEL_TIMEOUT;
        public Boolean weight_switch = MediationElement.DEFAULT_WEIGHT_SWITCH;
        public Integer render_type = MediationElement.DEFAULT_RENDER_TYPE;
        public Integer bid_floor = MediationElement.DEFAULT_BID_FLOOR;
        public Integer no_hb_preload = MediationElement.DEFAULT_NO_HB_PRELOAD;
        public Integer sub_ad_type = MediationElement.DEFAULT_SUB_AD_TYPE;
        public Integer reward_type = MediationElement.DEFAULT_REWARD_TYPE;
        public Integer order = MediationElement.DEFAULT_ORDER;
        public Boolean is_pdb = MediationElement.DEFAULT_IS_PDB;
        public Integer pdb_priority = MediationElement.DEFAULT_PDB_PRIORITY;
        public String reward_guide_prompt = "";
        public Map<String, String> options = Internal.newMutableMap();
        public List<String> ban_pkg_name = Internal.newMutableList();
        public Map<String, String> saas_options = Internal.newMutableMap();

        public Builder ban_pkg_name(List<String> ban_pkg_name) {
            Internal.checkElementsNotNull(ban_pkg_name);
            this.ban_pkg_name = ban_pkg_name;
            return this;
        }

        public Builder bid_floor(Integer bid_floor) {
            this.bid_floor = bid_floor;
            return this;
        }

        public Builder bid_floor_cur(String bid_floor_cur) {
            this.bid_floor_cur = bid_floor_cur;
            return this;
        }

        public Builder bid_type(Integer bid_type) {
            this.bid_type = bid_type;
            return this;
        }

        public Builder ecpm(Integer ecpm) {
            this.ecpm = ecpm;
            return this;
        }

        public Builder element_id(Integer element_id) {
            this.element_id = element_id;
            return this;
        }

        public Builder frequency_day(Integer frequency_day) {
            this.frequency_day = frequency_day;
            return this;
        }

        public Builder frequency_hour(Integer frequency_hour) {
            this.frequency_hour = frequency_hour;
            return this;
        }

        public Builder frequency_secs(Integer frequency_secs) {
            this.frequency_secs = frequency_secs;
            return this;
        }

        public Builder hb(Integer hb2) {
            this.f87056hb = hb2;
            return this;
        }

        public Builder hb_response(HBResponse hb_response) {
            this.hb_response = hb_response;
            return this;
        }

        public Builder is_pdb(Boolean is_pdb) {
            this.is_pdb = is_pdb;
            return this;
        }

        public Builder mask(String mask) {
            this.mask = mask;
            return this;
        }

        public Builder mediation_app_id(Integer mediation_app_id) {
            this.mediation_app_id = mediation_app_id;
            return this;
        }

        public Builder no_hb_preload(Integer no_hb_preload) {
            this.no_hb_preload = no_hb_preload;
            return this;
        }

        public Builder options(Map<String, String> options) {
            Internal.checkElementsNotNull(options);
            this.options = options;
            return this;
        }

        public Builder order(Integer order) {
            this.order = order;
            return this;
        }

        public Builder pdb_priority(Integer pdb_priority) {
            this.pdb_priority = pdb_priority;
            return this;
        }

        public Builder price(Integer price) {
            this.price = price;
            return this;
        }

        public Builder render_type(Integer render_type) {
            this.render_type = render_type;
            return this;
        }

        public Builder reward_guide_prompt(String reward_guide_prompt) {
            this.reward_guide_prompt = reward_guide_prompt;
            return this;
        }

        public Builder reward_type(Integer reward_type) {
            this.reward_type = reward_type;
            return this;
        }

        public Builder saas_options(Map<String, String> saas_options) {
            Internal.checkElementsNotNull(saas_options);
            this.saas_options = saas_options;
            return this;
        }

        public Builder single_channel_timeout(Integer single_channel_timeout) {
            this.single_channel_timeout = single_channel_timeout;
            return this;
        }

        public Builder sub_ad_type(Integer sub_ad_type) {
            this.sub_ad_type = sub_ad_type;
            return this;
        }

        public Builder tag(Integer tag) {
            this.tag = tag;
            return this;
        }

        public Builder weight_switch(Boolean weight_switch) {
            this.weight_switch = weight_switch;
            return this;
        }

        @Override // com.czhj.wire.Message.Builder
        public MediationElement build() {
            return new MediationElement(this.element_id, this.mediation_app_id, this.options, this.frequency_day, this.frequency_hour, this.frequency_secs, this.ecpm, this.hb_response, this.price, this.f87056hb, this.bid_type, this.tag, this.single_channel_timeout, this.weight_switch, this.render_type, this.bid_floor, this.no_hb_preload, this.sub_ad_type, this.reward_type, this.order, this.mask, this.bid_floor_cur, this.ban_pkg_name, this.is_pdb, this.pdb_priority, this.reward_guide_prompt, this.saas_options, super.buildUnknownFields());
        }
    }

    private static final class ProtoAdapter_MediationElement extends ProtoAdapter<MediationElement> {
        private final ProtoAdapter<Map<String, String>> options;
        private final ProtoAdapter<Map<String, String>> saas_options;

        public ProtoAdapter_MediationElement() {
            super(FieldEncoding.LENGTH_DELIMITED, MediationElement.class);
            ProtoAdapter<String> protoAdapter = ProtoAdapter.STRING;
            this.options = ProtoAdapter.newMapAdapter(protoAdapter, protoAdapter);
            this.saas_options = ProtoAdapter.newMapAdapter(protoAdapter, protoAdapter);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.czhj.wire.ProtoAdapter
        public MediationElement decode(ProtoReader reader) throws IOException {
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
                        builder.element_id(ProtoAdapter.UINT32.decode(reader));
                        break;
                    case 2:
                        builder.mediation_app_id(ProtoAdapter.UINT32.decode(reader));
                        break;
                    case 3:
                        builder.options.putAll(this.options.decode(reader));
                        break;
                    case 4:
                        builder.frequency_day(ProtoAdapter.UINT32.decode(reader));
                        break;
                    case 5:
                        builder.frequency_hour(ProtoAdapter.UINT32.decode(reader));
                        break;
                    case 6:
                        builder.frequency_secs(ProtoAdapter.UINT32.decode(reader));
                        break;
                    case 7:
                        builder.ecpm(ProtoAdapter.UINT32.decode(reader));
                        break;
                    case 8:
                        builder.hb_response(HBResponse.ADAPTER.decode(reader));
                        break;
                    case 9:
                        builder.price(ProtoAdapter.UINT32.decode(reader));
                        break;
                    case 10:
                        builder.hb(ProtoAdapter.UINT32.decode(reader));
                        break;
                    case 11:
                        builder.bid_type(ProtoAdapter.UINT32.decode(reader));
                        break;
                    case 12:
                        builder.tag(ProtoAdapter.UINT32.decode(reader));
                        break;
                    case 13:
                        builder.single_channel_timeout(ProtoAdapter.UINT32.decode(reader));
                        break;
                    case 14:
                        builder.weight_switch(ProtoAdapter.BOOL.decode(reader));
                        break;
                    case 15:
                        builder.render_type(ProtoAdapter.UINT32.decode(reader));
                        break;
                    case 16:
                        builder.bid_floor(ProtoAdapter.INT32.decode(reader));
                        break;
                    case 17:
                        builder.no_hb_preload(ProtoAdapter.INT32.decode(reader));
                        break;
                    case 18:
                        builder.sub_ad_type(ProtoAdapter.INT32.decode(reader));
                        break;
                    case 19:
                        builder.reward_type(ProtoAdapter.INT32.decode(reader));
                        break;
                    case 20:
                        builder.order(ProtoAdapter.INT32.decode(reader));
                        break;
                    case 21:
                        builder.mask(ProtoAdapter.STRING.decode(reader));
                        break;
                    case 22:
                        builder.bid_floor_cur(ProtoAdapter.STRING.decode(reader));
                        break;
                    case 23:
                        builder.ban_pkg_name.add(ProtoAdapter.STRING.decode(reader));
                        break;
                    case 24:
                        builder.is_pdb(ProtoAdapter.BOOL.decode(reader));
                        break;
                    case 25:
                        builder.pdb_priority(ProtoAdapter.UINT32.decode(reader));
                        break;
                    case 26:
                        builder.reward_guide_prompt(ProtoAdapter.STRING.decode(reader));
                        break;
                    case 27:
                        builder.saas_options.putAll(this.saas_options.decode(reader));
                        break;
                    default:
                        FieldEncoding fieldEncodingPeekFieldEncoding = reader.peekFieldEncoding();
                        builder.addUnknownField(iNextTag, fieldEncodingPeekFieldEncoding, fieldEncodingPeekFieldEncoding.rawProtoAdapter().decode(reader));
                        break;
                }
            }
        }

        @Override // com.czhj.wire.ProtoAdapter
        public void encode(ProtoWriter writer, MediationElement value) throws IOException {
            ProtoAdapter<Integer> protoAdapter = ProtoAdapter.UINT32;
            protoAdapter.encodeWithTag(writer, 1, value.element_id);
            protoAdapter.encodeWithTag(writer, 2, value.mediation_app_id);
            this.options.encodeWithTag(writer, 3, value.options);
            protoAdapter.encodeWithTag(writer, 4, value.frequency_day);
            protoAdapter.encodeWithTag(writer, 5, value.frequency_hour);
            protoAdapter.encodeWithTag(writer, 6, value.frequency_secs);
            protoAdapter.encodeWithTag(writer, 7, value.ecpm);
            HBResponse.ADAPTER.encodeWithTag(writer, 8, value.hb_response);
            protoAdapter.encodeWithTag(writer, 9, value.price);
            protoAdapter.encodeWithTag(writer, 10, value.f87055hb);
            protoAdapter.encodeWithTag(writer, 11, value.bid_type);
            protoAdapter.encodeWithTag(writer, 12, value.tag);
            protoAdapter.encodeWithTag(writer, 13, value.single_channel_timeout);
            ProtoAdapter<Boolean> protoAdapter2 = ProtoAdapter.BOOL;
            protoAdapter2.encodeWithTag(writer, 14, value.weight_switch);
            protoAdapter.encodeWithTag(writer, 15, value.render_type);
            ProtoAdapter<Integer> protoAdapter3 = ProtoAdapter.INT32;
            protoAdapter3.encodeWithTag(writer, 16, value.bid_floor);
            protoAdapter3.encodeWithTag(writer, 17, value.no_hb_preload);
            protoAdapter3.encodeWithTag(writer, 18, value.sub_ad_type);
            protoAdapter3.encodeWithTag(writer, 19, value.reward_type);
            protoAdapter3.encodeWithTag(writer, 20, value.order);
            ProtoAdapter<String> protoAdapter4 = ProtoAdapter.STRING;
            protoAdapter4.encodeWithTag(writer, 21, value.mask);
            protoAdapter4.encodeWithTag(writer, 22, value.bid_floor_cur);
            protoAdapter4.asRepeated().encodeWithTag(writer, 23, value.ban_pkg_name);
            protoAdapter2.encodeWithTag(writer, 24, value.is_pdb);
            protoAdapter.encodeWithTag(writer, 25, value.pdb_priority);
            protoAdapter4.encodeWithTag(writer, 26, value.reward_guide_prompt);
            this.saas_options.encodeWithTag(writer, 27, value.saas_options);
            writer.writeBytes(value.unknownFields());
        }

        @Override // com.czhj.wire.ProtoAdapter
        public int encodedSize(MediationElement value) {
            ProtoAdapter<Integer> protoAdapter = ProtoAdapter.UINT32;
            int iEncodedSizeWithTag = protoAdapter.encodedSizeWithTag(1, value.element_id) + protoAdapter.encodedSizeWithTag(2, value.mediation_app_id) + this.options.encodedSizeWithTag(3, value.options) + protoAdapter.encodedSizeWithTag(4, value.frequency_day) + protoAdapter.encodedSizeWithTag(5, value.frequency_hour) + protoAdapter.encodedSizeWithTag(6, value.frequency_secs) + protoAdapter.encodedSizeWithTag(7, value.ecpm) + HBResponse.ADAPTER.encodedSizeWithTag(8, value.hb_response) + protoAdapter.encodedSizeWithTag(9, value.price) + protoAdapter.encodedSizeWithTag(10, value.f87055hb) + protoAdapter.encodedSizeWithTag(11, value.bid_type) + protoAdapter.encodedSizeWithTag(12, value.tag) + protoAdapter.encodedSizeWithTag(13, value.single_channel_timeout);
            ProtoAdapter<Boolean> protoAdapter2 = ProtoAdapter.BOOL;
            int iEncodedSizeWithTag2 = iEncodedSizeWithTag + protoAdapter2.encodedSizeWithTag(14, value.weight_switch) + protoAdapter.encodedSizeWithTag(15, value.render_type);
            ProtoAdapter<Integer> protoAdapter3 = ProtoAdapter.INT32;
            int iEncodedSizeWithTag3 = iEncodedSizeWithTag2 + protoAdapter3.encodedSizeWithTag(16, value.bid_floor) + protoAdapter3.encodedSizeWithTag(17, value.no_hb_preload) + protoAdapter3.encodedSizeWithTag(18, value.sub_ad_type) + protoAdapter3.encodedSizeWithTag(19, value.reward_type) + protoAdapter3.encodedSizeWithTag(20, value.order);
            ProtoAdapter<String> protoAdapter4 = ProtoAdapter.STRING;
            return iEncodedSizeWithTag3 + protoAdapter4.encodedSizeWithTag(21, value.mask) + protoAdapter4.encodedSizeWithTag(22, value.bid_floor_cur) + protoAdapter4.asRepeated().encodedSizeWithTag(23, value.ban_pkg_name) + protoAdapter2.encodedSizeWithTag(24, value.is_pdb) + protoAdapter.encodedSizeWithTag(25, value.pdb_priority) + protoAdapter4.encodedSizeWithTag(26, value.reward_guide_prompt) + this.saas_options.encodedSizeWithTag(27, value.saas_options) + value.unknownFields().size();
        }

        @Override // com.czhj.wire.ProtoAdapter
        public MediationElement redact(MediationElement value) {
            Builder builderNewBuilder = value.newBuilder();
            HBResponse hBResponse = builderNewBuilder.hb_response;
            if (hBResponse != null) {
                builderNewBuilder.hb_response = HBResponse.ADAPTER.redact(hBResponse);
            }
            builderNewBuilder.clearUnknownFields();
            return builderNewBuilder.build();
        }
    }

    static {
        ProtoAdapter_MediationElement protoAdapter_MediationElement = new ProtoAdapter_MediationElement();
        ADAPTER = protoAdapter_MediationElement;
        CREATOR = AndroidMessage.newCreator(protoAdapter_MediationElement);
        DEFAULT_ELEMENT_ID = 0;
        DEFAULT_MEDIATION_APP_ID = 0;
        DEFAULT_FREQUENCY_DAY = 0;
        DEFAULT_FREQUENCY_HOUR = 0;
        DEFAULT_FREQUENCY_SECS = 0;
        DEFAULT_ECPM = 0;
        DEFAULT_PRICE = 0;
        DEFAULT_HB = 0;
        DEFAULT_BID_TYPE = 0;
        DEFAULT_TAG = 0;
        DEFAULT_SINGLE_CHANNEL_TIMEOUT = 0;
        Boolean bool = Boolean.FALSE;
        DEFAULT_WEIGHT_SWITCH = bool;
        DEFAULT_RENDER_TYPE = 0;
        DEFAULT_BID_FLOOR = 0;
        DEFAULT_NO_HB_PRELOAD = 0;
        DEFAULT_SUB_AD_TYPE = 0;
        DEFAULT_REWARD_TYPE = 0;
        DEFAULT_ORDER = 0;
        DEFAULT_IS_PDB = bool;
        DEFAULT_PDB_PRIORITY = 0;
    }

    public MediationElement(Integer element_id, Integer mediation_app_id, Map<String, String> options, Integer frequency_day, Integer frequency_hour, Integer frequency_secs, Integer ecpm, HBResponse hb_response, Integer price, Integer hb2, Integer bid_type, Integer tag, Integer single_channel_timeout, Boolean weight_switch, Integer render_type, Integer bid_floor, Integer no_hb_preload, Integer sub_ad_type, Integer reward_type, Integer order, String mask, String bid_floor_cur, List<String> ban_pkg_name, Boolean is_pdb, Integer pdb_priority, String reward_guide_prompt, Map<String, String> saas_options) {
        this(element_id, mediation_app_id, options, frequency_day, frequency_hour, frequency_secs, ecpm, hb_response, price, hb2, bid_type, tag, single_channel_timeout, weight_switch, render_type, bid_floor, no_hb_preload, sub_ad_type, reward_type, order, mask, bid_floor_cur, ban_pkg_name, is_pdb, pdb_priority, reward_guide_prompt, saas_options, ByteString.EMPTY);
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof MediationElement)) {
            return false;
        }
        MediationElement mediationElement = (MediationElement) other;
        return unknownFields().equals(mediationElement.unknownFields()) && Internal.equals(this.element_id, mediationElement.element_id) && Internal.equals(this.mediation_app_id, mediationElement.mediation_app_id) && this.options.equals(mediationElement.options) && Internal.equals(this.frequency_day, mediationElement.frequency_day) && Internal.equals(this.frequency_hour, mediationElement.frequency_hour) && Internal.equals(this.frequency_secs, mediationElement.frequency_secs) && Internal.equals(this.ecpm, mediationElement.ecpm) && Internal.equals(this.hb_response, mediationElement.hb_response) && Internal.equals(this.price, mediationElement.price) && Internal.equals(this.f87055hb, mediationElement.f87055hb) && Internal.equals(this.bid_type, mediationElement.bid_type) && Internal.equals(this.tag, mediationElement.tag) && Internal.equals(this.single_channel_timeout, mediationElement.single_channel_timeout) && Internal.equals(this.weight_switch, mediationElement.weight_switch) && Internal.equals(this.render_type, mediationElement.render_type) && Internal.equals(this.bid_floor, mediationElement.bid_floor) && Internal.equals(this.no_hb_preload, mediationElement.no_hb_preload) && Internal.equals(this.sub_ad_type, mediationElement.sub_ad_type) && Internal.equals(this.reward_type, mediationElement.reward_type) && Internal.equals(this.order, mediationElement.order) && Internal.equals(this.mask, mediationElement.mask) && Internal.equals(this.bid_floor_cur, mediationElement.bid_floor_cur) && this.ban_pkg_name.equals(mediationElement.ban_pkg_name) && Internal.equals(this.is_pdb, mediationElement.is_pdb) && Internal.equals(this.pdb_priority, mediationElement.pdb_priority) && Internal.equals(this.reward_guide_prompt, mediationElement.reward_guide_prompt) && this.saas_options.equals(mediationElement.saas_options);
    }

    public int hashCode() {
        int i10 = this.hashCode;
        if (i10 != 0) {
            return i10;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        Integer num = this.element_id;
        int iHashCode2 = (iHashCode + (num != null ? num.hashCode() : 0)) * 37;
        Integer num2 = this.mediation_app_id;
        int iHashCode3 = (((iHashCode2 + (num2 != null ? num2.hashCode() : 0)) * 37) + this.options.hashCode()) * 37;
        Integer num3 = this.frequency_day;
        int iHashCode4 = (iHashCode3 + (num3 != null ? num3.hashCode() : 0)) * 37;
        Integer num4 = this.frequency_hour;
        int iHashCode5 = (iHashCode4 + (num4 != null ? num4.hashCode() : 0)) * 37;
        Integer num5 = this.frequency_secs;
        int iHashCode6 = (iHashCode5 + (num5 != null ? num5.hashCode() : 0)) * 37;
        Integer num6 = this.ecpm;
        int iHashCode7 = (iHashCode6 + (num6 != null ? num6.hashCode() : 0)) * 37;
        HBResponse hBResponse = this.hb_response;
        int iHashCode8 = (iHashCode7 + (hBResponse != null ? hBResponse.hashCode() : 0)) * 37;
        Integer num7 = this.price;
        int iHashCode9 = (iHashCode8 + (num7 != null ? num7.hashCode() : 0)) * 37;
        Integer num8 = this.f87055hb;
        int iHashCode10 = (iHashCode9 + (num8 != null ? num8.hashCode() : 0)) * 37;
        Integer num9 = this.bid_type;
        int iHashCode11 = (iHashCode10 + (num9 != null ? num9.hashCode() : 0)) * 37;
        Integer num10 = this.tag;
        int iHashCode12 = (iHashCode11 + (num10 != null ? num10.hashCode() : 0)) * 37;
        Integer num11 = this.single_channel_timeout;
        int iHashCode13 = (iHashCode12 + (num11 != null ? num11.hashCode() : 0)) * 37;
        Boolean bool = this.weight_switch;
        int iHashCode14 = (iHashCode13 + (bool != null ? bool.hashCode() : 0)) * 37;
        Integer num12 = this.render_type;
        int iHashCode15 = (iHashCode14 + (num12 != null ? num12.hashCode() : 0)) * 37;
        Integer num13 = this.bid_floor;
        int iHashCode16 = (iHashCode15 + (num13 != null ? num13.hashCode() : 0)) * 37;
        Integer num14 = this.no_hb_preload;
        int iHashCode17 = (iHashCode16 + (num14 != null ? num14.hashCode() : 0)) * 37;
        Integer num15 = this.sub_ad_type;
        int iHashCode18 = (iHashCode17 + (num15 != null ? num15.hashCode() : 0)) * 37;
        Integer num16 = this.reward_type;
        int iHashCode19 = (iHashCode18 + (num16 != null ? num16.hashCode() : 0)) * 37;
        Integer num17 = this.order;
        int iHashCode20 = (iHashCode19 + (num17 != null ? num17.hashCode() : 0)) * 37;
        String str = this.mask;
        int iHashCode21 = (iHashCode20 + (str != null ? str.hashCode() : 0)) * 37;
        String str2 = this.bid_floor_cur;
        int iHashCode22 = (((iHashCode21 + (str2 != null ? str2.hashCode() : 0)) * 37) + this.ban_pkg_name.hashCode()) * 37;
        Boolean bool2 = this.is_pdb;
        int iHashCode23 = (iHashCode22 + (bool2 != null ? bool2.hashCode() : 0)) * 37;
        Integer num18 = this.pdb_priority;
        int iHashCode24 = (iHashCode23 + (num18 != null ? num18.hashCode() : 0)) * 37;
        String str3 = this.reward_guide_prompt;
        int iHashCode25 = ((iHashCode24 + (str3 != null ? str3.hashCode() : 0)) * 37) + this.saas_options.hashCode();
        this.hashCode = iHashCode25;
        return iHashCode25;
    }

    @Override // com.czhj.wire.Message
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        if (this.element_id != null) {
            sb2.append(", element_id=");
            sb2.append(this.element_id);
        }
        if (this.mediation_app_id != null) {
            sb2.append(", mediation_app_id=");
            sb2.append(this.mediation_app_id);
        }
        if (!this.options.isEmpty()) {
            sb2.append(", options=");
            sb2.append(this.options);
        }
        if (this.frequency_day != null) {
            sb2.append(", frequency_day=");
            sb2.append(this.frequency_day);
        }
        if (this.frequency_hour != null) {
            sb2.append(", frequency_hour=");
            sb2.append(this.frequency_hour);
        }
        if (this.frequency_secs != null) {
            sb2.append(", frequency_secs=");
            sb2.append(this.frequency_secs);
        }
        if (this.ecpm != null) {
            sb2.append(", ecpm=");
            sb2.append(this.ecpm);
        }
        if (this.hb_response != null) {
            sb2.append(", hb_response=");
            sb2.append(this.hb_response);
        }
        if (this.price != null) {
            sb2.append(", price=");
            sb2.append(this.price);
        }
        if (this.f87055hb != null) {
            sb2.append(", hb=");
            sb2.append(this.f87055hb);
        }
        if (this.bid_type != null) {
            sb2.append(", bid_type=");
            sb2.append(this.bid_type);
        }
        if (this.tag != null) {
            sb2.append(", tag=");
            sb2.append(this.tag);
        }
        if (this.single_channel_timeout != null) {
            sb2.append(", single_channel_timeout=");
            sb2.append(this.single_channel_timeout);
        }
        if (this.weight_switch != null) {
            sb2.append(", weight_switch=");
            sb2.append(this.weight_switch);
        }
        if (this.render_type != null) {
            sb2.append(", render_type=");
            sb2.append(this.render_type);
        }
        if (this.bid_floor != null) {
            sb2.append(", bid_floor=");
            sb2.append(this.bid_floor);
        }
        if (this.no_hb_preload != null) {
            sb2.append(", no_hb_preload=");
            sb2.append(this.no_hb_preload);
        }
        if (this.sub_ad_type != null) {
            sb2.append(", sub_ad_type=");
            sb2.append(this.sub_ad_type);
        }
        if (this.reward_type != null) {
            sb2.append(", reward_type=");
            sb2.append(this.reward_type);
        }
        if (this.order != null) {
            sb2.append(", order=");
            sb2.append(this.order);
        }
        if (this.mask != null) {
            sb2.append(", mask=");
            sb2.append(this.mask);
        }
        if (this.bid_floor_cur != null) {
            sb2.append(", bid_floor_cur=");
            sb2.append(this.bid_floor_cur);
        }
        if (!this.ban_pkg_name.isEmpty()) {
            sb2.append(", ban_pkg_name=");
            sb2.append(this.ban_pkg_name);
        }
        if (this.is_pdb != null) {
            sb2.append(", is_pdb=");
            sb2.append(this.is_pdb);
        }
        if (this.pdb_priority != null) {
            sb2.append(", pdb_priority=");
            sb2.append(this.pdb_priority);
        }
        if (this.reward_guide_prompt != null) {
            sb2.append(", reward_guide_prompt=");
            sb2.append(this.reward_guide_prompt);
        }
        if (!this.saas_options.isEmpty()) {
            sb2.append(", saas_options=");
            sb2.append(this.saas_options);
        }
        StringBuilder sbReplace = sb2.replace(0, 2, "MediationElement{");
        sbReplace.append('}');
        return sbReplace.toString();
    }

    public MediationElement(Integer element_id, Integer mediation_app_id, Map<String, String> options, Integer frequency_day, Integer frequency_hour, Integer frequency_secs, Integer ecpm, HBResponse hb_response, Integer price, Integer hb2, Integer bid_type, Integer tag, Integer single_channel_timeout, Boolean weight_switch, Integer render_type, Integer bid_floor, Integer no_hb_preload, Integer sub_ad_type, Integer reward_type, Integer order, String mask, String bid_floor_cur, List<String> ban_pkg_name, Boolean is_pdb, Integer pdb_priority, String reward_guide_prompt, Map<String, String> saas_options, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        this.element_id = element_id;
        this.mediation_app_id = mediation_app_id;
        this.options = Internal.immutableCopyOf("options", options);
        this.frequency_day = frequency_day;
        this.frequency_hour = frequency_hour;
        this.frequency_secs = frequency_secs;
        this.ecpm = ecpm;
        this.hb_response = hb_response;
        this.price = price;
        this.f87055hb = hb2;
        this.bid_type = bid_type;
        this.tag = tag;
        this.single_channel_timeout = single_channel_timeout;
        this.weight_switch = weight_switch;
        this.render_type = render_type;
        this.bid_floor = bid_floor;
        this.no_hb_preload = no_hb_preload;
        this.sub_ad_type = sub_ad_type;
        this.reward_type = reward_type;
        this.order = order;
        this.mask = mask;
        this.bid_floor_cur = bid_floor_cur;
        this.ban_pkg_name = Internal.immutableCopyOf("ban_pkg_name", ban_pkg_name);
        this.is_pdb = is_pdb;
        this.pdb_priority = pdb_priority;
        this.reward_guide_prompt = reward_guide_prompt;
        this.saas_options = Internal.immutableCopyOf("saas_options", saas_options);
    }

    @Override // com.czhj.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.element_id = this.element_id;
        builder.mediation_app_id = this.mediation_app_id;
        builder.options = Internal.copyOf("options", this.options);
        builder.frequency_day = this.frequency_day;
        builder.frequency_hour = this.frequency_hour;
        builder.frequency_secs = this.frequency_secs;
        builder.ecpm = this.ecpm;
        builder.hb_response = this.hb_response;
        builder.price = this.price;
        builder.f87056hb = this.f87055hb;
        builder.bid_type = this.bid_type;
        builder.tag = this.tag;
        builder.single_channel_timeout = this.single_channel_timeout;
        builder.weight_switch = this.weight_switch;
        builder.render_type = this.render_type;
        builder.bid_floor = this.bid_floor;
        builder.no_hb_preload = this.no_hb_preload;
        builder.sub_ad_type = this.sub_ad_type;
        builder.reward_type = this.reward_type;
        builder.order = this.order;
        builder.mask = this.mask;
        builder.bid_floor_cur = this.bid_floor_cur;
        builder.ban_pkg_name = Internal.copyOf("ban_pkg_name", this.ban_pkg_name);
        builder.is_pdb = this.is_pdb;
        builder.pdb_priority = this.pdb_priority;
        builder.reward_guide_prompt = this.reward_guide_prompt;
        builder.saas_options = Internal.copyOf("saas_options", this.saas_options);
        builder.addUnknownFields(unknownFields());
        return builder;
    }
}
