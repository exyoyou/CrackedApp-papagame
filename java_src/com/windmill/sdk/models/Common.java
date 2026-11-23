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
public final class Common extends AndroidMessage<Common, Builder> {
    public static final ProtoAdapter<Common> ADAPTER;
    public static final Parcelable.Creator<Common> CREATOR;
    public static final Integer DEFAULT_CONFIGREFRESH;
    public static final Boolean DEFAULT_DISABLE_UP_LOCATION;
    public static final Boolean DEFAULT_ENABLE_DEBUG_LEVEL;
    public static final Boolean DEFAULT_IS_GDPR_REGION;
    public static final Integer DEFAULT_LOAD_INTERVAL;
    public static final Boolean DEFAULT_LOG_ENC;
    public static final Integer DEFAULT_MAX_SEND_LOG_RECORDS;
    public static final Integer DEFAULT_READY_EXPIRE_TIMESTAMP;
    public static final Integer DEFAULT_SEND_LOG_INTERVAL;
    public static final Integer DEFAULT_TRACKING_EXPIRATION_TIME;
    public static final Integer DEFAULT_TRACKING_RETRY_INTERVAL;
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 2)
    public final Integer configRefresh;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", label = WireField.Label.REPEATED, tag = 6)
    public final List<Integer> dclog_blacklist;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", tag = 11)
    public final Boolean disable_up_location;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", tag = 7)
    public final Boolean enable_debug_level;

    @WireField(adapter = "com.windmill.sdk.models.CommonEndpointsConfig#ADAPTER", tag = 1)
    public final CommonEndpointsConfig endpoints;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", tag = 3)
    public final Boolean is_gdpr_region;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 10)
    public final Integer load_interval;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", tag = 12)
    public final Boolean log_enc;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 4)
    public final Integer max_send_log_records;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 9)
    public final Integer ready_expire_timestamp;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 5)
    public final Integer send_log_interval;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 13)
    public final Integer tracking_expiration_time;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 14)
    public final Integer tracking_retry_interval;

    public static final class Builder extends Message.Builder<Common, Builder> {
        public CommonEndpointsConfig endpoints;
        public Integer configRefresh = Common.DEFAULT_CONFIGREFRESH;
        public Boolean is_gdpr_region = Common.DEFAULT_IS_GDPR_REGION;
        public Integer max_send_log_records = Common.DEFAULT_MAX_SEND_LOG_RECORDS;
        public Integer send_log_interval = Common.DEFAULT_SEND_LOG_INTERVAL;
        public Boolean enable_debug_level = Common.DEFAULT_ENABLE_DEBUG_LEVEL;
        public Integer ready_expire_timestamp = Common.DEFAULT_READY_EXPIRE_TIMESTAMP;
        public Integer load_interval = Common.DEFAULT_LOAD_INTERVAL;
        public Boolean disable_up_location = Common.DEFAULT_DISABLE_UP_LOCATION;
        public Boolean log_enc = Common.DEFAULT_LOG_ENC;
        public Integer tracking_expiration_time = Common.DEFAULT_TRACKING_EXPIRATION_TIME;
        public Integer tracking_retry_interval = Common.DEFAULT_TRACKING_RETRY_INTERVAL;
        public List<Integer> dclog_blacklist = Internal.newMutableList();

        public Builder configRefresh(Integer configRefresh) {
            this.configRefresh = configRefresh;
            return this;
        }

        public Builder dclog_blacklist(List<Integer> dclog_blacklist) {
            Internal.checkElementsNotNull(dclog_blacklist);
            this.dclog_blacklist = dclog_blacklist;
            return this;
        }

        public Builder disable_up_location(Boolean disable_up_location) {
            this.disable_up_location = disable_up_location;
            return this;
        }

        public Builder enable_debug_level(Boolean enable_debug_level) {
            this.enable_debug_level = enable_debug_level;
            return this;
        }

        public Builder endpoints(CommonEndpointsConfig endpoints) {
            this.endpoints = endpoints;
            return this;
        }

        public Builder is_gdpr_region(Boolean is_gdpr_region) {
            this.is_gdpr_region = is_gdpr_region;
            return this;
        }

        public Builder load_interval(Integer load_interval) {
            this.load_interval = load_interval;
            return this;
        }

        public Builder log_enc(Boolean log_enc) {
            this.log_enc = log_enc;
            return this;
        }

        public Builder max_send_log_records(Integer max_send_log_records) {
            this.max_send_log_records = max_send_log_records;
            return this;
        }

        public Builder ready_expire_timestamp(Integer ready_expire_timestamp) {
            this.ready_expire_timestamp = ready_expire_timestamp;
            return this;
        }

        public Builder send_log_interval(Integer send_log_interval) {
            this.send_log_interval = send_log_interval;
            return this;
        }

        public Builder tracking_expiration_time(Integer tracking_expiration_time) {
            this.tracking_expiration_time = tracking_expiration_time;
            return this;
        }

        public Builder tracking_retry_interval(Integer tracking_retry_interval) {
            this.tracking_retry_interval = tracking_retry_interval;
            return this;
        }

        @Override // com.czhj.wire.Message.Builder
        public Common build() {
            return new Common(this.endpoints, this.configRefresh, this.is_gdpr_region, this.max_send_log_records, this.send_log_interval, this.dclog_blacklist, this.enable_debug_level, this.ready_expire_timestamp, this.load_interval, this.disable_up_location, this.log_enc, this.tracking_expiration_time, this.tracking_retry_interval, super.buildUnknownFields());
        }
    }

    private static final class ProtoAdapter_Common extends ProtoAdapter<Common> {
        public ProtoAdapter_Common() {
            super(FieldEncoding.LENGTH_DELIMITED, Common.class);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.czhj.wire.ProtoAdapter
        public Common decode(ProtoReader reader) throws IOException {
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
                        builder.endpoints(CommonEndpointsConfig.ADAPTER.decode(reader));
                        break;
                    case 2:
                        builder.configRefresh(ProtoAdapter.UINT32.decode(reader));
                        break;
                    case 3:
                        builder.is_gdpr_region(ProtoAdapter.BOOL.decode(reader));
                        break;
                    case 4:
                        builder.max_send_log_records(ProtoAdapter.UINT32.decode(reader));
                        break;
                    case 5:
                        builder.send_log_interval(ProtoAdapter.UINT32.decode(reader));
                        break;
                    case 6:
                        builder.dclog_blacklist.add(ProtoAdapter.UINT32.decode(reader));
                        break;
                    case 7:
                        builder.enable_debug_level(ProtoAdapter.BOOL.decode(reader));
                        break;
                    case 8:
                    default:
                        FieldEncoding fieldEncodingPeekFieldEncoding = reader.peekFieldEncoding();
                        builder.addUnknownField(iNextTag, fieldEncodingPeekFieldEncoding, fieldEncodingPeekFieldEncoding.rawProtoAdapter().decode(reader));
                        break;
                    case 9:
                        builder.ready_expire_timestamp(ProtoAdapter.UINT32.decode(reader));
                        break;
                    case 10:
                        builder.load_interval(ProtoAdapter.UINT32.decode(reader));
                        break;
                    case 11:
                        builder.disable_up_location(ProtoAdapter.BOOL.decode(reader));
                        break;
                    case 12:
                        builder.log_enc(ProtoAdapter.BOOL.decode(reader));
                        break;
                    case 13:
                        builder.tracking_expiration_time(ProtoAdapter.UINT32.decode(reader));
                        break;
                    case 14:
                        builder.tracking_retry_interval(ProtoAdapter.UINT32.decode(reader));
                        break;
                }
            }
        }

        @Override // com.czhj.wire.ProtoAdapter
        public void encode(ProtoWriter writer, Common value) throws IOException {
            CommonEndpointsConfig.ADAPTER.encodeWithTag(writer, 1, value.endpoints);
            ProtoAdapter<Integer> protoAdapter = ProtoAdapter.UINT32;
            protoAdapter.encodeWithTag(writer, 2, value.configRefresh);
            ProtoAdapter<Boolean> protoAdapter2 = ProtoAdapter.BOOL;
            protoAdapter2.encodeWithTag(writer, 3, value.is_gdpr_region);
            protoAdapter.encodeWithTag(writer, 4, value.max_send_log_records);
            protoAdapter.encodeWithTag(writer, 5, value.send_log_interval);
            protoAdapter.asRepeated().encodeWithTag(writer, 6, value.dclog_blacklist);
            protoAdapter2.encodeWithTag(writer, 7, value.enable_debug_level);
            protoAdapter.encodeWithTag(writer, 9, value.ready_expire_timestamp);
            protoAdapter.encodeWithTag(writer, 10, value.load_interval);
            protoAdapter2.encodeWithTag(writer, 11, value.disable_up_location);
            protoAdapter2.encodeWithTag(writer, 12, value.log_enc);
            protoAdapter.encodeWithTag(writer, 13, value.tracking_expiration_time);
            protoAdapter.encodeWithTag(writer, 14, value.tracking_retry_interval);
            writer.writeBytes(value.unknownFields());
        }

        @Override // com.czhj.wire.ProtoAdapter
        public int encodedSize(Common value) {
            int iEncodedSizeWithTag = CommonEndpointsConfig.ADAPTER.encodedSizeWithTag(1, value.endpoints);
            ProtoAdapter<Integer> protoAdapter = ProtoAdapter.UINT32;
            int iEncodedSizeWithTag2 = iEncodedSizeWithTag + protoAdapter.encodedSizeWithTag(2, value.configRefresh);
            ProtoAdapter<Boolean> protoAdapter2 = ProtoAdapter.BOOL;
            return iEncodedSizeWithTag2 + protoAdapter2.encodedSizeWithTag(3, value.is_gdpr_region) + protoAdapter.encodedSizeWithTag(4, value.max_send_log_records) + protoAdapter.encodedSizeWithTag(5, value.send_log_interval) + protoAdapter.asRepeated().encodedSizeWithTag(6, value.dclog_blacklist) + protoAdapter2.encodedSizeWithTag(7, value.enable_debug_level) + protoAdapter.encodedSizeWithTag(9, value.ready_expire_timestamp) + protoAdapter.encodedSizeWithTag(10, value.load_interval) + protoAdapter2.encodedSizeWithTag(11, value.disable_up_location) + protoAdapter2.encodedSizeWithTag(12, value.log_enc) + protoAdapter.encodedSizeWithTag(13, value.tracking_expiration_time) + protoAdapter.encodedSizeWithTag(14, value.tracking_retry_interval) + value.unknownFields().size();
        }

        @Override // com.czhj.wire.ProtoAdapter
        public Common redact(Common value) {
            Builder builderNewBuilder = value.newBuilder();
            CommonEndpointsConfig commonEndpointsConfig = builderNewBuilder.endpoints;
            if (commonEndpointsConfig != null) {
                builderNewBuilder.endpoints = CommonEndpointsConfig.ADAPTER.redact(commonEndpointsConfig);
            }
            builderNewBuilder.clearUnknownFields();
            return builderNewBuilder.build();
        }
    }

    static {
        ProtoAdapter_Common protoAdapter_Common = new ProtoAdapter_Common();
        ADAPTER = protoAdapter_Common;
        CREATOR = AndroidMessage.newCreator(protoAdapter_Common);
        DEFAULT_CONFIGREFRESH = 0;
        Boolean bool = Boolean.FALSE;
        DEFAULT_IS_GDPR_REGION = bool;
        DEFAULT_MAX_SEND_LOG_RECORDS = 100;
        DEFAULT_SEND_LOG_INTERVAL = 3;
        DEFAULT_ENABLE_DEBUG_LEVEL = bool;
        DEFAULT_READY_EXPIRE_TIMESTAMP = 900;
        DEFAULT_LOAD_INTERVAL = 0;
        DEFAULT_DISABLE_UP_LOCATION = bool;
        DEFAULT_LOG_ENC = bool;
        DEFAULT_TRACKING_EXPIRATION_TIME = 0;
        DEFAULT_TRACKING_RETRY_INTERVAL = 0;
    }

    public Common(CommonEndpointsConfig endpoints, Integer configRefresh, Boolean is_gdpr_region, Integer max_send_log_records, Integer send_log_interval, List<Integer> dclog_blacklist, Boolean enable_debug_level, Integer ready_expire_timestamp, Integer load_interval, Boolean disable_up_location, Boolean log_enc, Integer tracking_expiration_time, Integer tracking_retry_interval) {
        this(endpoints, configRefresh, is_gdpr_region, max_send_log_records, send_log_interval, dclog_blacklist, enable_debug_level, ready_expire_timestamp, load_interval, disable_up_location, log_enc, tracking_expiration_time, tracking_retry_interval, ByteString.EMPTY);
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof Common)) {
            return false;
        }
        Common common = (Common) other;
        return unknownFields().equals(common.unknownFields()) && Internal.equals(this.endpoints, common.endpoints) && Internal.equals(this.configRefresh, common.configRefresh) && Internal.equals(this.is_gdpr_region, common.is_gdpr_region) && Internal.equals(this.max_send_log_records, common.max_send_log_records) && Internal.equals(this.send_log_interval, common.send_log_interval) && this.dclog_blacklist.equals(common.dclog_blacklist) && Internal.equals(this.enable_debug_level, common.enable_debug_level) && Internal.equals(this.ready_expire_timestamp, common.ready_expire_timestamp) && Internal.equals(this.load_interval, common.load_interval) && Internal.equals(this.disable_up_location, common.disable_up_location) && Internal.equals(this.log_enc, common.log_enc) && Internal.equals(this.tracking_expiration_time, common.tracking_expiration_time) && Internal.equals(this.tracking_retry_interval, common.tracking_retry_interval);
    }

    public int hashCode() {
        int i10 = this.hashCode;
        if (i10 != 0) {
            return i10;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        CommonEndpointsConfig commonEndpointsConfig = this.endpoints;
        int iHashCode2 = (iHashCode + (commonEndpointsConfig != null ? commonEndpointsConfig.hashCode() : 0)) * 37;
        Integer num = this.configRefresh;
        int iHashCode3 = (iHashCode2 + (num != null ? num.hashCode() : 0)) * 37;
        Boolean bool = this.is_gdpr_region;
        int iHashCode4 = (iHashCode3 + (bool != null ? bool.hashCode() : 0)) * 37;
        Integer num2 = this.max_send_log_records;
        int iHashCode5 = (iHashCode4 + (num2 != null ? num2.hashCode() : 0)) * 37;
        Integer num3 = this.send_log_interval;
        int iHashCode6 = (((iHashCode5 + (num3 != null ? num3.hashCode() : 0)) * 37) + this.dclog_blacklist.hashCode()) * 37;
        Boolean bool2 = this.enable_debug_level;
        int iHashCode7 = (iHashCode6 + (bool2 != null ? bool2.hashCode() : 0)) * 37;
        Integer num4 = this.ready_expire_timestamp;
        int iHashCode8 = (iHashCode7 + (num4 != null ? num4.hashCode() : 0)) * 37;
        Integer num5 = this.load_interval;
        int iHashCode9 = (iHashCode8 + (num5 != null ? num5.hashCode() : 0)) * 37;
        Boolean bool3 = this.disable_up_location;
        int iHashCode10 = (iHashCode9 + (bool3 != null ? bool3.hashCode() : 0)) * 37;
        Boolean bool4 = this.log_enc;
        int iHashCode11 = (iHashCode10 + (bool4 != null ? bool4.hashCode() : 0)) * 37;
        Integer num6 = this.tracking_expiration_time;
        int iHashCode12 = (iHashCode11 + (num6 != null ? num6.hashCode() : 0)) * 37;
        Integer num7 = this.tracking_retry_interval;
        int iHashCode13 = iHashCode12 + (num7 != null ? num7.hashCode() : 0);
        this.hashCode = iHashCode13;
        return iHashCode13;
    }

    @Override // com.czhj.wire.Message
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        if (this.endpoints != null) {
            sb2.append(", endpoints=");
            sb2.append(this.endpoints);
        }
        if (this.configRefresh != null) {
            sb2.append(", configRefresh=");
            sb2.append(this.configRefresh);
        }
        if (this.is_gdpr_region != null) {
            sb2.append(", is_gdpr_region=");
            sb2.append(this.is_gdpr_region);
        }
        if (this.max_send_log_records != null) {
            sb2.append(", max_send_log_records=");
            sb2.append(this.max_send_log_records);
        }
        if (this.send_log_interval != null) {
            sb2.append(", send_log_interval=");
            sb2.append(this.send_log_interval);
        }
        if (!this.dclog_blacklist.isEmpty()) {
            sb2.append(", dclog_blacklist=");
            sb2.append(this.dclog_blacklist);
        }
        if (this.enable_debug_level != null) {
            sb2.append(", enable_debug_level=");
            sb2.append(this.enable_debug_level);
        }
        if (this.ready_expire_timestamp != null) {
            sb2.append(", ready_expire_timestamp=");
            sb2.append(this.ready_expire_timestamp);
        }
        if (this.load_interval != null) {
            sb2.append(", load_interval=");
            sb2.append(this.load_interval);
        }
        if (this.disable_up_location != null) {
            sb2.append(", disable_up_location=");
            sb2.append(this.disable_up_location);
        }
        if (this.log_enc != null) {
            sb2.append(", log_enc=");
            sb2.append(this.log_enc);
        }
        if (this.tracking_expiration_time != null) {
            sb2.append(", tracking_expiration_time=");
            sb2.append(this.tracking_expiration_time);
        }
        if (this.tracking_retry_interval != null) {
            sb2.append(", tracking_retry_interval=");
            sb2.append(this.tracking_retry_interval);
        }
        StringBuilder sbReplace = sb2.replace(0, 2, "Common{");
        sbReplace.append('}');
        return sbReplace.toString();
    }

    public Common(CommonEndpointsConfig endpoints, Integer configRefresh, Boolean is_gdpr_region, Integer max_send_log_records, Integer send_log_interval, List<Integer> dclog_blacklist, Boolean enable_debug_level, Integer ready_expire_timestamp, Integer load_interval, Boolean disable_up_location, Boolean log_enc, Integer tracking_expiration_time, Integer tracking_retry_interval, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        this.endpoints = endpoints;
        this.configRefresh = configRefresh;
        this.is_gdpr_region = is_gdpr_region;
        this.max_send_log_records = max_send_log_records;
        this.send_log_interval = send_log_interval;
        this.dclog_blacklist = Internal.immutableCopyOf("dclog_blacklist", dclog_blacklist);
        this.enable_debug_level = enable_debug_level;
        this.ready_expire_timestamp = ready_expire_timestamp;
        this.load_interval = load_interval;
        this.disable_up_location = disable_up_location;
        this.log_enc = log_enc;
        this.tracking_expiration_time = tracking_expiration_time;
        this.tracking_retry_interval = tracking_retry_interval;
    }

    @Override // com.czhj.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.endpoints = this.endpoints;
        builder.configRefresh = this.configRefresh;
        builder.is_gdpr_region = this.is_gdpr_region;
        builder.max_send_log_records = this.max_send_log_records;
        builder.send_log_interval = this.send_log_interval;
        builder.dclog_blacklist = Internal.copyOf("dclog_blacklist", this.dclog_blacklist);
        builder.enable_debug_level = this.enable_debug_level;
        builder.ready_expire_timestamp = this.ready_expire_timestamp;
        builder.load_interval = this.load_interval;
        builder.disable_up_location = this.disable_up_location;
        builder.log_enc = this.log_enc;
        builder.tracking_expiration_time = this.tracking_expiration_time;
        builder.tracking_retry_interval = this.tracking_retry_interval;
        builder.addUnknownFields(unknownFields());
        return builder;
    }
}
