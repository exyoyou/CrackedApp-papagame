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

/* JADX INFO: loaded from: classes8.dex */
public final class StrategyWaterFall extends AndroidMessage<StrategyWaterFall, Builder> {
    public static final ProtoAdapter<StrategyWaterFall> ADAPTER;
    public static final Parcelable.Creator<StrategyWaterFall> CREATOR;
    public static final Integer DEFAULT_AB_FLAG;
    public static final Integer DEFAULT_BIDDING_TIMEOUT;
    public static final Boolean DEFAULT_BID_BOTTOM_LINE_SWITCH;
    public static final Integer DEFAULT_BID_FLOOR;
    public static final Integer DEFAULT_CONCURRENT_COUNT;
    public static final Boolean DEFAULT_ENABLE_CONCURRENCY;
    public static final Integer DEFAULT_EXPERIMENT_ID;
    public static final Integer DEFAULT_FILL_TYPE;
    public static final Integer DEFAULT_FREQUENCY_DAY;
    public static final Integer DEFAULT_FREQUENCY_HOUR;
    public static final Integer DEFAULT_FREQUENCY_SECS;
    public static final Integer DEFAULT_LOAD_TIMEOUT;
    public static final Integer DEFAULT_MAX_CONCURRENT_COUNT;
    public static final Boolean DEFAULT_NOTIFY_BID_RESULT_SWITCH;
    public static final Boolean DEFAULT_PLAYING_AUTO_LOAD;
    public static final Integer DEFAULT_REFRESH_INTERVAL;
    public static final Integer DEFAULT_SUB_EXPERIMENT_ID;
    public static final Integer DEFAULT_TRAFFIC_WEIGHT;
    public static final Integer DEFAULT_TYPE;
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 1)
    public final Integer ab_flag;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", tag = 12)
    public final Boolean bid_bottom_line_switch;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", tag = 10)
    public final Integer bid_floor;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 13)
    public final Integer bidding_timeout;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 3)
    public final Integer concurrent_count;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", label = WireField.Label.REPEATED, tag = 4)
    public final List<Integer> element_ids;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", tag = 18)
    public final Boolean enable_concurrency;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 6)
    public final Integer experiment_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 17)
    public final Integer fill_type;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 14)
    public final Integer frequency_day;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 15)
    public final Integer frequency_hour;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 16)
    public final Integer frequency_secs;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 5)
    public final Integer load_timeout;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 19)
    public final Integer max_concurrent_count;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", tag = 20)
    public final Boolean notify_bid_result_switch;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 21)
    public final String notify_url;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", tag = 11)
    public final Boolean playing_auto_load;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", tag = 9)
    public final Integer refresh_interval;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 8)
    public final Integer sub_experiment_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 2)
    public final Integer traffic_weight;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 7)
    public final Integer type;

    public static final class Builder extends Message.Builder<StrategyWaterFall, Builder> {
        public Integer ab_flag = StrategyWaterFall.DEFAULT_AB_FLAG;
        public Integer traffic_weight = StrategyWaterFall.DEFAULT_TRAFFIC_WEIGHT;
        public Integer concurrent_count = StrategyWaterFall.DEFAULT_CONCURRENT_COUNT;
        public Integer load_timeout = StrategyWaterFall.DEFAULT_LOAD_TIMEOUT;
        public Integer experiment_id = StrategyWaterFall.DEFAULT_EXPERIMENT_ID;
        public Integer type = StrategyWaterFall.DEFAULT_TYPE;
        public Integer sub_experiment_id = StrategyWaterFall.DEFAULT_SUB_EXPERIMENT_ID;
        public Integer refresh_interval = StrategyWaterFall.DEFAULT_REFRESH_INTERVAL;
        public Integer bid_floor = StrategyWaterFall.DEFAULT_BID_FLOOR;
        public Boolean playing_auto_load = StrategyWaterFall.DEFAULT_PLAYING_AUTO_LOAD;
        public Boolean bid_bottom_line_switch = StrategyWaterFall.DEFAULT_BID_BOTTOM_LINE_SWITCH;
        public Integer bidding_timeout = StrategyWaterFall.DEFAULT_BIDDING_TIMEOUT;
        public Integer frequency_day = StrategyWaterFall.DEFAULT_FREQUENCY_DAY;
        public Integer frequency_hour = StrategyWaterFall.DEFAULT_FREQUENCY_HOUR;
        public Integer frequency_secs = StrategyWaterFall.DEFAULT_FREQUENCY_SECS;
        public Integer fill_type = StrategyWaterFall.DEFAULT_FILL_TYPE;
        public Boolean enable_concurrency = StrategyWaterFall.DEFAULT_ENABLE_CONCURRENCY;
        public Integer max_concurrent_count = StrategyWaterFall.DEFAULT_MAX_CONCURRENT_COUNT;
        public Boolean notify_bid_result_switch = StrategyWaterFall.DEFAULT_NOTIFY_BID_RESULT_SWITCH;
        public String notify_url = "";
        public List<Integer> element_ids = Internal.newMutableList();

        public Builder ab_flag(Integer ab_flag) {
            this.ab_flag = ab_flag;
            return this;
        }

        public Builder bid_bottom_line_switch(Boolean bid_bottom_line_switch) {
            this.bid_bottom_line_switch = bid_bottom_line_switch;
            return this;
        }

        public Builder bid_floor(Integer bid_floor) {
            this.bid_floor = bid_floor;
            return this;
        }

        public Builder bidding_timeout(Integer bidding_timeout) {
            this.bidding_timeout = bidding_timeout;
            return this;
        }

        public Builder concurrent_count(Integer concurrent_count) {
            this.concurrent_count = concurrent_count;
            return this;
        }

        public Builder element_ids(List<Integer> element_ids) {
            Internal.checkElementsNotNull(element_ids);
            this.element_ids = element_ids;
            return this;
        }

        public Builder enable_concurrency(Boolean enable_concurrency) {
            this.enable_concurrency = enable_concurrency;
            return this;
        }

        public Builder experiment_id(Integer experiment_id) {
            this.experiment_id = experiment_id;
            return this;
        }

        public Builder fill_type(Integer fill_type) {
            this.fill_type = fill_type;
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

        public Builder load_timeout(Integer load_timeout) {
            this.load_timeout = load_timeout;
            return this;
        }

        public Builder max_concurrent_count(Integer max_concurrent_count) {
            this.max_concurrent_count = max_concurrent_count;
            return this;
        }

        public Builder notify_bid_result_switch(Boolean notify_bid_result_switch) {
            this.notify_bid_result_switch = notify_bid_result_switch;
            return this;
        }

        public Builder notify_url(String notify_url) {
            this.notify_url = notify_url;
            return this;
        }

        public Builder playing_auto_load(Boolean playing_auto_load) {
            this.playing_auto_load = playing_auto_load;
            return this;
        }

        public Builder refresh_interval(Integer refresh_interval) {
            this.refresh_interval = refresh_interval;
            return this;
        }

        public Builder sub_experiment_id(Integer sub_experiment_id) {
            this.sub_experiment_id = sub_experiment_id;
            return this;
        }

        public Builder traffic_weight(Integer traffic_weight) {
            this.traffic_weight = traffic_weight;
            return this;
        }

        public Builder type(Integer type) {
            this.type = type;
            return this;
        }

        @Override // com.czhj.wire.Message.Builder
        public StrategyWaterFall build() {
            return new StrategyWaterFall(this.ab_flag, this.traffic_weight, this.concurrent_count, this.element_ids, this.load_timeout, this.experiment_id, this.type, this.sub_experiment_id, this.refresh_interval, this.bid_floor, this.playing_auto_load, this.bid_bottom_line_switch, this.bidding_timeout, this.frequency_day, this.frequency_hour, this.frequency_secs, this.fill_type, this.enable_concurrency, this.max_concurrent_count, this.notify_bid_result_switch, this.notify_url, super.buildUnknownFields());
        }
    }

    private static final class ProtoAdapter_StrategyWaterFall extends ProtoAdapter<StrategyWaterFall> {
        public ProtoAdapter_StrategyWaterFall() {
            super(FieldEncoding.LENGTH_DELIMITED, StrategyWaterFall.class);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.czhj.wire.ProtoAdapter
        public StrategyWaterFall decode(ProtoReader reader) throws IOException {
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
                        builder.ab_flag(ProtoAdapter.UINT32.decode(reader));
                        break;
                    case 2:
                        builder.traffic_weight(ProtoAdapter.UINT32.decode(reader));
                        break;
                    case 3:
                        builder.concurrent_count(ProtoAdapter.UINT32.decode(reader));
                        break;
                    case 4:
                        builder.element_ids.add(ProtoAdapter.UINT32.decode(reader));
                        break;
                    case 5:
                        builder.load_timeout(ProtoAdapter.UINT32.decode(reader));
                        break;
                    case 6:
                        builder.experiment_id(ProtoAdapter.UINT32.decode(reader));
                        break;
                    case 7:
                        builder.type(ProtoAdapter.UINT32.decode(reader));
                        break;
                    case 8:
                        builder.sub_experiment_id(ProtoAdapter.UINT32.decode(reader));
                        break;
                    case 9:
                        builder.refresh_interval(ProtoAdapter.INT32.decode(reader));
                        break;
                    case 10:
                        builder.bid_floor(ProtoAdapter.INT32.decode(reader));
                        break;
                    case 11:
                        builder.playing_auto_load(ProtoAdapter.BOOL.decode(reader));
                        break;
                    case 12:
                        builder.bid_bottom_line_switch(ProtoAdapter.BOOL.decode(reader));
                        break;
                    case 13:
                        builder.bidding_timeout(ProtoAdapter.UINT32.decode(reader));
                        break;
                    case 14:
                        builder.frequency_day(ProtoAdapter.UINT32.decode(reader));
                        break;
                    case 15:
                        builder.frequency_hour(ProtoAdapter.UINT32.decode(reader));
                        break;
                    case 16:
                        builder.frequency_secs(ProtoAdapter.UINT32.decode(reader));
                        break;
                    case 17:
                        builder.fill_type(ProtoAdapter.UINT32.decode(reader));
                        break;
                    case 18:
                        builder.enable_concurrency(ProtoAdapter.BOOL.decode(reader));
                        break;
                    case 19:
                        builder.max_concurrent_count(ProtoAdapter.UINT32.decode(reader));
                        break;
                    case 20:
                        builder.notify_bid_result_switch(ProtoAdapter.BOOL.decode(reader));
                        break;
                    case 21:
                        builder.notify_url(ProtoAdapter.STRING.decode(reader));
                        break;
                    default:
                        FieldEncoding fieldEncodingPeekFieldEncoding = reader.peekFieldEncoding();
                        builder.addUnknownField(iNextTag, fieldEncodingPeekFieldEncoding, fieldEncodingPeekFieldEncoding.rawProtoAdapter().decode(reader));
                        break;
                }
            }
        }

        @Override // com.czhj.wire.ProtoAdapter
        public void encode(ProtoWriter writer, StrategyWaterFall value) throws IOException {
            ProtoAdapter<Integer> protoAdapter = ProtoAdapter.UINT32;
            protoAdapter.encodeWithTag(writer, 1, value.ab_flag);
            protoAdapter.encodeWithTag(writer, 2, value.traffic_weight);
            protoAdapter.encodeWithTag(writer, 3, value.concurrent_count);
            protoAdapter.asRepeated().encodeWithTag(writer, 4, value.element_ids);
            protoAdapter.encodeWithTag(writer, 5, value.load_timeout);
            protoAdapter.encodeWithTag(writer, 6, value.experiment_id);
            protoAdapter.encodeWithTag(writer, 7, value.type);
            protoAdapter.encodeWithTag(writer, 8, value.sub_experiment_id);
            ProtoAdapter<Integer> protoAdapter2 = ProtoAdapter.INT32;
            protoAdapter2.encodeWithTag(writer, 9, value.refresh_interval);
            protoAdapter2.encodeWithTag(writer, 10, value.bid_floor);
            ProtoAdapter<Boolean> protoAdapter3 = ProtoAdapter.BOOL;
            protoAdapter3.encodeWithTag(writer, 11, value.playing_auto_load);
            protoAdapter3.encodeWithTag(writer, 12, value.bid_bottom_line_switch);
            protoAdapter.encodeWithTag(writer, 13, value.bidding_timeout);
            protoAdapter.encodeWithTag(writer, 14, value.frequency_day);
            protoAdapter.encodeWithTag(writer, 15, value.frequency_hour);
            protoAdapter.encodeWithTag(writer, 16, value.frequency_secs);
            protoAdapter.encodeWithTag(writer, 17, value.fill_type);
            protoAdapter3.encodeWithTag(writer, 18, value.enable_concurrency);
            protoAdapter.encodeWithTag(writer, 19, value.max_concurrent_count);
            protoAdapter3.encodeWithTag(writer, 20, value.notify_bid_result_switch);
            ProtoAdapter.STRING.encodeWithTag(writer, 21, value.notify_url);
            writer.writeBytes(value.unknownFields());
        }

        @Override // com.czhj.wire.ProtoAdapter
        public int encodedSize(StrategyWaterFall value) {
            ProtoAdapter<Integer> protoAdapter = ProtoAdapter.UINT32;
            int iEncodedSizeWithTag = protoAdapter.encodedSizeWithTag(1, value.ab_flag) + protoAdapter.encodedSizeWithTag(2, value.traffic_weight) + protoAdapter.encodedSizeWithTag(3, value.concurrent_count) + protoAdapter.asRepeated().encodedSizeWithTag(4, value.element_ids) + protoAdapter.encodedSizeWithTag(5, value.load_timeout) + protoAdapter.encodedSizeWithTag(6, value.experiment_id) + protoAdapter.encodedSizeWithTag(7, value.type) + protoAdapter.encodedSizeWithTag(8, value.sub_experiment_id);
            ProtoAdapter<Integer> protoAdapter2 = ProtoAdapter.INT32;
            int iEncodedSizeWithTag2 = iEncodedSizeWithTag + protoAdapter2.encodedSizeWithTag(9, value.refresh_interval) + protoAdapter2.encodedSizeWithTag(10, value.bid_floor);
            ProtoAdapter<Boolean> protoAdapter3 = ProtoAdapter.BOOL;
            return iEncodedSizeWithTag2 + protoAdapter3.encodedSizeWithTag(11, value.playing_auto_load) + protoAdapter3.encodedSizeWithTag(12, value.bid_bottom_line_switch) + protoAdapter.encodedSizeWithTag(13, value.bidding_timeout) + protoAdapter.encodedSizeWithTag(14, value.frequency_day) + protoAdapter.encodedSizeWithTag(15, value.frequency_hour) + protoAdapter.encodedSizeWithTag(16, value.frequency_secs) + protoAdapter.encodedSizeWithTag(17, value.fill_type) + protoAdapter3.encodedSizeWithTag(18, value.enable_concurrency) + protoAdapter.encodedSizeWithTag(19, value.max_concurrent_count) + protoAdapter3.encodedSizeWithTag(20, value.notify_bid_result_switch) + ProtoAdapter.STRING.encodedSizeWithTag(21, value.notify_url) + value.unknownFields().size();
        }

        @Override // com.czhj.wire.ProtoAdapter
        public StrategyWaterFall redact(StrategyWaterFall value) {
            Builder builderNewBuilder = value.newBuilder();
            builderNewBuilder.clearUnknownFields();
            return builderNewBuilder.build();
        }
    }

    static {
        ProtoAdapter_StrategyWaterFall protoAdapter_StrategyWaterFall = new ProtoAdapter_StrategyWaterFall();
        ADAPTER = protoAdapter_StrategyWaterFall;
        CREATOR = AndroidMessage.newCreator(protoAdapter_StrategyWaterFall);
        DEFAULT_AB_FLAG = 0;
        DEFAULT_TRAFFIC_WEIGHT = 0;
        DEFAULT_CONCURRENT_COUNT = 0;
        DEFAULT_LOAD_TIMEOUT = 0;
        DEFAULT_EXPERIMENT_ID = 0;
        DEFAULT_TYPE = 0;
        DEFAULT_SUB_EXPERIMENT_ID = 0;
        DEFAULT_REFRESH_INTERVAL = 0;
        DEFAULT_BID_FLOOR = 0;
        Boolean bool = Boolean.FALSE;
        DEFAULT_PLAYING_AUTO_LOAD = bool;
        DEFAULT_BID_BOTTOM_LINE_SWITCH = bool;
        DEFAULT_BIDDING_TIMEOUT = 0;
        DEFAULT_FREQUENCY_DAY = 0;
        DEFAULT_FREQUENCY_HOUR = 0;
        DEFAULT_FREQUENCY_SECS = 0;
        DEFAULT_FILL_TYPE = 0;
        DEFAULT_ENABLE_CONCURRENCY = bool;
        DEFAULT_MAX_CONCURRENT_COUNT = 8;
        DEFAULT_NOTIFY_BID_RESULT_SWITCH = bool;
    }

    public StrategyWaterFall(Integer ab_flag, Integer traffic_weight, Integer concurrent_count, List<Integer> element_ids, Integer load_timeout, Integer experiment_id, Integer type, Integer sub_experiment_id, Integer refresh_interval, Integer bid_floor, Boolean playing_auto_load, Boolean bid_bottom_line_switch, Integer bidding_timeout, Integer frequency_day, Integer frequency_hour, Integer frequency_secs, Integer fill_type, Boolean enable_concurrency, Integer max_concurrent_count, Boolean notify_bid_result_switch, String notify_url) {
        this(ab_flag, traffic_weight, concurrent_count, element_ids, load_timeout, experiment_id, type, sub_experiment_id, refresh_interval, bid_floor, playing_auto_load, bid_bottom_line_switch, bidding_timeout, frequency_day, frequency_hour, frequency_secs, fill_type, enable_concurrency, max_concurrent_count, notify_bid_result_switch, notify_url, ByteString.EMPTY);
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof StrategyWaterFall)) {
            return false;
        }
        StrategyWaterFall strategyWaterFall = (StrategyWaterFall) other;
        return unknownFields().equals(strategyWaterFall.unknownFields()) && Internal.equals(this.ab_flag, strategyWaterFall.ab_flag) && Internal.equals(this.traffic_weight, strategyWaterFall.traffic_weight) && Internal.equals(this.concurrent_count, strategyWaterFall.concurrent_count) && this.element_ids.equals(strategyWaterFall.element_ids) && Internal.equals(this.load_timeout, strategyWaterFall.load_timeout) && Internal.equals(this.experiment_id, strategyWaterFall.experiment_id) && Internal.equals(this.type, strategyWaterFall.type) && Internal.equals(this.sub_experiment_id, strategyWaterFall.sub_experiment_id) && Internal.equals(this.refresh_interval, strategyWaterFall.refresh_interval) && Internal.equals(this.bid_floor, strategyWaterFall.bid_floor) && Internal.equals(this.playing_auto_load, strategyWaterFall.playing_auto_load) && Internal.equals(this.bid_bottom_line_switch, strategyWaterFall.bid_bottom_line_switch) && Internal.equals(this.bidding_timeout, strategyWaterFall.bidding_timeout) && Internal.equals(this.frequency_day, strategyWaterFall.frequency_day) && Internal.equals(this.frequency_hour, strategyWaterFall.frequency_hour) && Internal.equals(this.frequency_secs, strategyWaterFall.frequency_secs) && Internal.equals(this.fill_type, strategyWaterFall.fill_type) && Internal.equals(this.enable_concurrency, strategyWaterFall.enable_concurrency) && Internal.equals(this.max_concurrent_count, strategyWaterFall.max_concurrent_count) && Internal.equals(this.notify_url, strategyWaterFall.notify_url) && Internal.equals(this.notify_bid_result_switch, strategyWaterFall.notify_bid_result_switch);
    }

    public int hashCode() {
        int i10 = this.hashCode;
        if (i10 != 0) {
            return i10;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        Integer num = this.ab_flag;
        int iHashCode2 = (iHashCode + (num != null ? num.hashCode() : 0)) * 37;
        Integer num2 = this.traffic_weight;
        int iHashCode3 = (iHashCode2 + (num2 != null ? num2.hashCode() : 0)) * 37;
        Integer num3 = this.concurrent_count;
        int iHashCode4 = (((iHashCode3 + (num3 != null ? num3.hashCode() : 0)) * 37) + this.element_ids.hashCode()) * 37;
        Integer num4 = this.load_timeout;
        int iHashCode5 = (iHashCode4 + (num4 != null ? num4.hashCode() : 0)) * 37;
        Integer num5 = this.experiment_id;
        int iHashCode6 = (iHashCode5 + (num5 != null ? num5.hashCode() : 0)) * 37;
        Integer num6 = this.type;
        int iHashCode7 = (iHashCode6 + (num6 != null ? num6.hashCode() : 0)) * 37;
        Integer num7 = this.sub_experiment_id;
        int iHashCode8 = (iHashCode7 + (num7 != null ? num7.hashCode() : 0)) * 37;
        Integer num8 = this.refresh_interval;
        int iHashCode9 = (iHashCode8 + (num8 != null ? num8.hashCode() : 0)) * 37;
        Integer num9 = this.bid_floor;
        int iHashCode10 = (iHashCode9 + (num9 != null ? num9.hashCode() : 0)) * 37;
        Boolean bool = this.playing_auto_load;
        int iHashCode11 = (iHashCode10 + (bool != null ? bool.hashCode() : 0)) * 37;
        Boolean bool2 = this.bid_bottom_line_switch;
        int iHashCode12 = (iHashCode11 + (bool2 != null ? bool2.hashCode() : 0)) * 37;
        Integer num10 = this.bidding_timeout;
        int iHashCode13 = (iHashCode12 + (num10 != null ? num10.hashCode() : 0)) * 37;
        Integer num11 = this.frequency_day;
        int iHashCode14 = (iHashCode13 + (num11 != null ? num11.hashCode() : 0)) * 37;
        Integer num12 = this.frequency_hour;
        int iHashCode15 = (iHashCode14 + (num12 != null ? num12.hashCode() : 0)) * 37;
        Integer num13 = this.frequency_secs;
        int iHashCode16 = (iHashCode15 + (num13 != null ? num13.hashCode() : 0)) * 37;
        Integer num14 = this.fill_type;
        int iHashCode17 = (iHashCode16 + (num14 != null ? num14.hashCode() : 0)) * 37;
        Boolean bool3 = this.enable_concurrency;
        int iHashCode18 = (iHashCode17 + (bool3 != null ? bool3.hashCode() : 0)) * 37;
        Integer num15 = this.max_concurrent_count;
        int iHashCode19 = (iHashCode18 + (num15 != null ? num15.hashCode() : 0)) * 37;
        Boolean bool4 = this.notify_bid_result_switch;
        int iHashCode20 = iHashCode19 + (bool4 != null ? bool4.hashCode() : 0);
        this.hashCode = iHashCode20;
        return iHashCode20;
    }

    @Override // com.czhj.wire.Message
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        if (this.ab_flag != null) {
            sb2.append(", ab_flag=");
            sb2.append(this.ab_flag);
        }
        if (this.traffic_weight != null) {
            sb2.append(", traffic_weight=");
            sb2.append(this.traffic_weight);
        }
        if (this.concurrent_count != null) {
            sb2.append(", concurrent_count=");
            sb2.append(this.concurrent_count);
        }
        if (!this.element_ids.isEmpty()) {
            sb2.append(", element_ids=");
            sb2.append(this.element_ids);
        }
        if (this.load_timeout != null) {
            sb2.append(", load_timeout=");
            sb2.append(this.load_timeout);
        }
        if (this.experiment_id != null) {
            sb2.append(", experiment_id=");
            sb2.append(this.experiment_id);
        }
        if (this.type != null) {
            sb2.append(", type=");
            sb2.append(this.type);
        }
        if (this.sub_experiment_id != null) {
            sb2.append(", sub_experiment_id=");
            sb2.append(this.sub_experiment_id);
        }
        if (this.refresh_interval != null) {
            sb2.append(", refresh_interval=");
            sb2.append(this.refresh_interval);
        }
        if (this.bid_floor != null) {
            sb2.append(", bid_floor=");
            sb2.append(this.bid_floor);
        }
        if (this.playing_auto_load != null) {
            sb2.append(", playing_auto_load=");
            sb2.append(this.playing_auto_load);
        }
        if (this.bid_bottom_line_switch != null) {
            sb2.append(", bid_bottom_line_switch=");
            sb2.append(this.bid_bottom_line_switch);
        }
        if (this.bidding_timeout != null) {
            sb2.append(", bidding_timeout=");
            sb2.append(this.bidding_timeout);
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
        if (this.fill_type != null) {
            sb2.append(", fill_type=");
            sb2.append(this.fill_type);
        }
        if (this.enable_concurrency != null) {
            sb2.append(", enable_concurrency=");
            sb2.append(this.enable_concurrency);
        }
        if (this.max_concurrent_count != null) {
            sb2.append(", max_concurrent_count=");
            sb2.append(this.max_concurrent_count);
        }
        if (this.notify_bid_result_switch != null) {
            sb2.append(", notify_bid_result_switch=");
            sb2.append(this.notify_bid_result_switch);
        }
        if (this.notify_url != null) {
            sb2.append(", notify_url=");
            sb2.append(this.notify_url);
        }
        StringBuilder sbReplace = sb2.replace(0, 2, "StrategyWaterFall{");
        sbReplace.append('}');
        return sbReplace.toString();
    }

    public StrategyWaterFall(Integer ab_flag, Integer traffic_weight, Integer concurrent_count, List<Integer> element_ids, Integer load_timeout, Integer experiment_id, Integer type, Integer sub_experiment_id, Integer refresh_interval, Integer bid_floor, Boolean playing_auto_load, Boolean bid_bottom_line_switch, Integer bidding_timeout, Integer frequency_day, Integer frequency_hour, Integer frequency_secs, Integer fill_type, Boolean enable_concurrency, Integer max_concurrent_count, Boolean notify_bid_result_switch, String notify_url, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        this.ab_flag = ab_flag;
        this.traffic_weight = traffic_weight;
        this.concurrent_count = concurrent_count;
        this.element_ids = Internal.immutableCopyOf("element_ids", element_ids);
        this.load_timeout = load_timeout;
        this.experiment_id = experiment_id;
        this.type = type;
        this.sub_experiment_id = sub_experiment_id;
        this.refresh_interval = refresh_interval;
        this.bid_floor = bid_floor;
        this.playing_auto_load = playing_auto_load;
        this.bid_bottom_line_switch = bid_bottom_line_switch;
        this.bidding_timeout = bidding_timeout;
        this.frequency_day = frequency_day;
        this.frequency_hour = frequency_hour;
        this.frequency_secs = frequency_secs;
        this.fill_type = fill_type;
        this.enable_concurrency = enable_concurrency;
        this.max_concurrent_count = max_concurrent_count;
        this.notify_bid_result_switch = notify_bid_result_switch;
        this.notify_url = notify_url;
    }

    @Override // com.czhj.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.ab_flag = this.ab_flag;
        builder.traffic_weight = this.traffic_weight;
        builder.concurrent_count = this.concurrent_count;
        builder.element_ids = Internal.copyOf("element_ids", this.element_ids);
        builder.load_timeout = this.load_timeout;
        builder.experiment_id = this.experiment_id;
        builder.type = this.type;
        builder.sub_experiment_id = this.sub_experiment_id;
        builder.refresh_interval = this.refresh_interval;
        builder.bid_floor = this.bid_floor;
        builder.playing_auto_load = this.playing_auto_load;
        builder.bid_bottom_line_switch = this.bid_bottom_line_switch;
        builder.bidding_timeout = this.bidding_timeout;
        builder.frequency_day = this.frequency_day;
        builder.frequency_hour = this.frequency_hour;
        builder.frequency_secs = this.frequency_secs;
        builder.fill_type = this.fill_type;
        builder.enable_concurrency = this.enable_concurrency;
        builder.max_concurrent_count = this.max_concurrent_count;
        builder.notify_bid_result_switch = this.notify_bid_result_switch;
        builder.notify_url = this.notify_url;
        builder.addUnknownFields(unknownFields());
        return builder;
    }
}
