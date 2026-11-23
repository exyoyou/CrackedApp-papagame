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
public final class Android extends AndroidMessage<Android, Builder> {
    public static final ProtoAdapter<Android> ADAPTER;
    public static final Parcelable.Creator<Android> CREATOR;
    public static final Boolean DEFAULT_DISABLE_BOOT_MARK;
    public static final Integer DEFAULT_DISABLE_UP_OAID;
    public static final Boolean DEFAULT_ENABLE_NDK_CRASH;
    public static final Boolean DEFAULT_ENABLE_PERMISSION;
    public static final Boolean DEFAULT_ENABLE_REPORT_CRASH;
    public static final Boolean DEFAULT_ENABLE_REWARD_NDK;
    public static final Integer DEFAULT_GM_PRICE_CACHE_SWITCH;
    public static final Integer DEFAULT_GM_PRICE_PERCENT;
    public static final Integer DEFAULT_INIT_SYNC_TIMEOUT;
    public static final Boolean DEFAULT_OAID_API_IS_DISABLE;
    public static final Integer DEFAULT_REPORT_LOG;
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", tag = 6)
    public Boolean disable_boot_mark;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 2)
    public final Integer disable_up_oaid;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", tag = 8)
    public Boolean enable_ndk_crash;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", tag = 3)
    public final Boolean enable_permission;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", tag = 4)
    public final Boolean enable_report_crash;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", tag = 7)
    public Boolean enable_reward_ndk;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 12)
    public final Integer gm_price_cache_switch;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.REPEATED, tag = 11)
    public final List<String> gm_price_packages;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 10)
    public final Integer gm_price_percent;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 9)
    public final Integer init_sync_timeout;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", tag = 5)
    public final Boolean oaid_api_is_disable;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.REPEATED, tag = 13)
    public final List<String> quick_app_schema;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 15)
    public final Integer redirect_link_collection_ratio;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", tag = 14)
    public final Boolean redirect_link_collection_switch;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 1)
    public final Integer report_log;

    public static final class Builder extends Message.Builder<Android, Builder> {
        public Integer redirect_link_collection_ratio;
        public Boolean redirect_link_collection_switch;
        public Integer report_log = Android.DEFAULT_REPORT_LOG;
        public Integer disable_up_oaid = Android.DEFAULT_DISABLE_UP_OAID;
        public Boolean enable_permission = Android.DEFAULT_ENABLE_PERMISSION;
        public Boolean enable_report_crash = Android.DEFAULT_ENABLE_REPORT_CRASH;
        public Boolean oaid_api_is_disable = Android.DEFAULT_OAID_API_IS_DISABLE;
        public Boolean disable_boot_mark = Android.DEFAULT_DISABLE_BOOT_MARK;
        public Boolean enable_reward_ndk = Android.DEFAULT_ENABLE_REWARD_NDK;
        public Boolean enable_ndk_crash = Android.DEFAULT_ENABLE_NDK_CRASH;
        public Integer init_sync_timeout = Android.DEFAULT_INIT_SYNC_TIMEOUT;
        public Integer gm_price_percent = Android.DEFAULT_GM_PRICE_PERCENT;
        public Integer gm_price_cache_switch = Android.DEFAULT_GM_PRICE_CACHE_SWITCH;
        public List<String> gm_price_packages = Internal.newMutableList();
        public List<String> quick_app_schema = Internal.newMutableList();

        public Builder disable_boot_mark(Boolean disable_boot_mark) {
            this.disable_boot_mark = disable_boot_mark;
            return this;
        }

        public Builder disable_up_oaid(Integer disable_up_oaid) {
            this.disable_up_oaid = disable_up_oaid;
            return this;
        }

        public Builder enable_ndk_crash(Boolean enable_ndk_crash) {
            this.enable_ndk_crash = enable_ndk_crash;
            return this;
        }

        public Builder enable_permission(Boolean enable_permission) {
            this.enable_permission = enable_permission;
            return this;
        }

        public Builder enable_report_crash(Boolean enable_report_crash) {
            this.enable_report_crash = enable_report_crash;
            return this;
        }

        public Builder enable_reward_ndk(Boolean enable_reward_ndk) {
            this.enable_reward_ndk = enable_reward_ndk;
            return this;
        }

        public Builder gm_price_cache_switch(Integer gm_price_cache_switch) {
            this.gm_price_cache_switch = gm_price_cache_switch;
            return this;
        }

        public Builder gm_price_packages(List<String> gm_price_packages) {
            Internal.checkElementsNotNull(gm_price_packages);
            this.gm_price_packages = gm_price_packages;
            return this;
        }

        public Builder gm_price_percent(Integer gm_price_percent) {
            this.gm_price_percent = gm_price_percent;
            return this;
        }

        public Builder init_sync_timeout(Integer init_sync_timeout) {
            this.init_sync_timeout = init_sync_timeout;
            return this;
        }

        public Builder oaid_api_is_disable(Boolean oaid_api_is_disable) {
            this.oaid_api_is_disable = oaid_api_is_disable;
            return this;
        }

        public Builder quick_app_schema(List<String> quick_app_schema) {
            Internal.checkElementsNotNull(quick_app_schema);
            this.quick_app_schema = quick_app_schema;
            return this;
        }

        public Builder redirect_link_collection_ratio(Integer redirect_link_collection_ratio) {
            this.redirect_link_collection_ratio = redirect_link_collection_ratio;
            return this;
        }

        public Builder redirect_link_collection_switch(Boolean redirect_link_collection_switch) {
            this.redirect_link_collection_switch = redirect_link_collection_switch;
            return this;
        }

        public Builder report_log(Integer report_log) {
            this.report_log = report_log;
            return this;
        }

        @Override // com.czhj.wire.Message.Builder
        public Android build() {
            return new Android(this.report_log, this.disable_up_oaid, this.enable_permission, this.enable_report_crash, this.oaid_api_is_disable, this.disable_boot_mark, this.enable_reward_ndk, this.enable_ndk_crash, this.init_sync_timeout, this.gm_price_percent, this.gm_price_packages, this.gm_price_cache_switch, this.quick_app_schema, this.redirect_link_collection_switch, this.redirect_link_collection_ratio, super.buildUnknownFields());
        }
    }

    private static final class ProtoAdapter_Android extends ProtoAdapter<Android> {
        public ProtoAdapter_Android() {
            super(FieldEncoding.LENGTH_DELIMITED, Android.class);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.czhj.wire.ProtoAdapter
        public Android decode(ProtoReader reader) throws IOException {
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
                        builder.report_log(ProtoAdapter.UINT32.decode(reader));
                        break;
                    case 2:
                        builder.disable_up_oaid(ProtoAdapter.UINT32.decode(reader));
                        break;
                    case 3:
                        builder.enable_permission(ProtoAdapter.BOOL.decode(reader));
                        break;
                    case 4:
                        builder.enable_report_crash(ProtoAdapter.BOOL.decode(reader));
                        break;
                    case 5:
                        builder.oaid_api_is_disable(ProtoAdapter.BOOL.decode(reader));
                        break;
                    case 6:
                        builder.disable_boot_mark(ProtoAdapter.BOOL.decode(reader));
                        break;
                    case 7:
                        builder.enable_reward_ndk(ProtoAdapter.BOOL.decode(reader));
                        break;
                    case 8:
                        builder.enable_ndk_crash(ProtoAdapter.BOOL.decode(reader));
                        break;
                    case 9:
                        builder.init_sync_timeout(ProtoAdapter.UINT32.decode(reader));
                        break;
                    case 10:
                        builder.gm_price_percent(ProtoAdapter.UINT32.decode(reader));
                        break;
                    case 11:
                        builder.gm_price_packages.add(ProtoAdapter.STRING.decode(reader));
                        break;
                    case 12:
                        builder.gm_price_cache_switch(ProtoAdapter.UINT32.decode(reader));
                        break;
                    case 13:
                        builder.quick_app_schema.add(ProtoAdapter.STRING.decode(reader));
                        break;
                    case 14:
                        builder.redirect_link_collection_switch(ProtoAdapter.BOOL.decode(reader));
                        break;
                    case 15:
                        builder.redirect_link_collection_ratio(ProtoAdapter.UINT32.decode(reader));
                        break;
                    default:
                        FieldEncoding fieldEncodingPeekFieldEncoding = reader.peekFieldEncoding();
                        builder.addUnknownField(iNextTag, fieldEncodingPeekFieldEncoding, fieldEncodingPeekFieldEncoding.rawProtoAdapter().decode(reader));
                        break;
                }
            }
        }

        @Override // com.czhj.wire.ProtoAdapter
        public void encode(ProtoWriter writer, Android value) throws IOException {
            ProtoAdapter<Integer> protoAdapter = ProtoAdapter.UINT32;
            protoAdapter.encodeWithTag(writer, 1, value.report_log);
            protoAdapter.encodeWithTag(writer, 2, value.disable_up_oaid);
            ProtoAdapter<Boolean> protoAdapter2 = ProtoAdapter.BOOL;
            protoAdapter2.encodeWithTag(writer, 3, value.enable_permission);
            protoAdapter2.encodeWithTag(writer, 4, value.enable_report_crash);
            protoAdapter2.encodeWithTag(writer, 5, value.oaid_api_is_disable);
            protoAdapter2.encodeWithTag(writer, 6, value.disable_boot_mark);
            protoAdapter2.encodeWithTag(writer, 7, value.enable_reward_ndk);
            protoAdapter2.encodeWithTag(writer, 8, value.enable_ndk_crash);
            protoAdapter.encodeWithTag(writer, 9, value.init_sync_timeout);
            protoAdapter.encodeWithTag(writer, 10, value.gm_price_percent);
            ProtoAdapter<String> protoAdapter3 = ProtoAdapter.STRING;
            protoAdapter3.asRepeated().encodeWithTag(writer, 11, value.gm_price_packages);
            protoAdapter.encodeWithTag(writer, 12, value.gm_price_cache_switch);
            protoAdapter3.asRepeated().encodeWithTag(writer, 13, value.quick_app_schema);
            protoAdapter2.encodeWithTag(writer, 14, value.redirect_link_collection_switch);
            protoAdapter.encodeWithTag(writer, 15, value.redirect_link_collection_ratio);
            writer.writeBytes(value.unknownFields());
        }

        @Override // com.czhj.wire.ProtoAdapter
        public int encodedSize(Android value) {
            ProtoAdapter<Integer> protoAdapter = ProtoAdapter.UINT32;
            int iEncodedSizeWithTag = protoAdapter.encodedSizeWithTag(1, value.report_log) + protoAdapter.encodedSizeWithTag(2, value.disable_up_oaid);
            ProtoAdapter<Boolean> protoAdapter2 = ProtoAdapter.BOOL;
            int iEncodedSizeWithTag2 = iEncodedSizeWithTag + protoAdapter2.encodedSizeWithTag(3, value.enable_permission) + protoAdapter2.encodedSizeWithTag(4, value.enable_report_crash) + protoAdapter2.encodedSizeWithTag(5, value.oaid_api_is_disable) + protoAdapter2.encodedSizeWithTag(6, value.disable_boot_mark) + protoAdapter2.encodedSizeWithTag(7, value.enable_reward_ndk) + protoAdapter2.encodedSizeWithTag(8, value.enable_ndk_crash) + protoAdapter.encodedSizeWithTag(9, value.init_sync_timeout) + protoAdapter.encodedSizeWithTag(10, value.gm_price_percent);
            ProtoAdapter<String> protoAdapter3 = ProtoAdapter.STRING;
            return iEncodedSizeWithTag2 + protoAdapter3.asRepeated().encodedSizeWithTag(11, value.gm_price_packages) + protoAdapter.encodedSizeWithTag(12, value.gm_price_cache_switch) + protoAdapter3.asRepeated().encodedSizeWithTag(13, value.quick_app_schema) + protoAdapter2.encodedSizeWithTag(14, value.redirect_link_collection_switch) + protoAdapter.encodedSizeWithTag(15, value.redirect_link_collection_ratio) + value.unknownFields().size();
        }

        @Override // com.czhj.wire.ProtoAdapter
        public Android redact(Android value) {
            Builder builderNewBuilder = value.newBuilder();
            builderNewBuilder.clearUnknownFields();
            return builderNewBuilder.build();
        }
    }

    static {
        ProtoAdapter_Android protoAdapter_Android = new ProtoAdapter_Android();
        ADAPTER = protoAdapter_Android;
        CREATOR = AndroidMessage.newCreator(protoAdapter_Android);
        DEFAULT_REPORT_LOG = 0;
        DEFAULT_DISABLE_UP_OAID = 0;
        Boolean bool = Boolean.FALSE;
        DEFAULT_ENABLE_PERMISSION = bool;
        DEFAULT_ENABLE_REPORT_CRASH = bool;
        DEFAULT_OAID_API_IS_DISABLE = bool;
        DEFAULT_DISABLE_BOOT_MARK = bool;
        DEFAULT_ENABLE_REWARD_NDK = bool;
        DEFAULT_ENABLE_NDK_CRASH = bool;
        DEFAULT_INIT_SYNC_TIMEOUT = 2000;
        DEFAULT_GM_PRICE_PERCENT = 0;
        DEFAULT_GM_PRICE_CACHE_SWITCH = 0;
    }

    public Android(Integer report_log, Integer disable_up_oaid, Boolean enable_permission, Boolean enable_report_crash, Boolean oaid_api_is_disable, Boolean disable_boot_mark, Boolean enable_reward_ndk, Boolean enable_ndk_crash, Integer init_sync_timeout, Integer gm_price_percent, List<String> gm_price_packages, Integer gm_price_cache_switch, List<String> quick_app_schema, Boolean redirect_link_collection_switch, Integer redirect_link_collection_ratio) {
        this(report_log, disable_up_oaid, enable_permission, enable_report_crash, oaid_api_is_disable, disable_boot_mark, enable_reward_ndk, enable_ndk_crash, init_sync_timeout, gm_price_percent, gm_price_packages, gm_price_cache_switch, quick_app_schema, redirect_link_collection_switch, redirect_link_collection_ratio, ByteString.EMPTY);
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof Android)) {
            return false;
        }
        Android android2 = (Android) other;
        return unknownFields().equals(android2.unknownFields()) && Internal.equals(this.report_log, android2.report_log) && Internal.equals(this.disable_up_oaid, android2.disable_up_oaid) && Internal.equals(this.enable_permission, android2.enable_permission) && Internal.equals(this.enable_report_crash, android2.enable_report_crash) && Internal.equals(this.oaid_api_is_disable, android2.oaid_api_is_disable) && Internal.equals(this.disable_boot_mark, android2.disable_boot_mark) && Internal.equals(this.enable_reward_ndk, android2.enable_reward_ndk) && Internal.equals(this.enable_ndk_crash, android2.enable_ndk_crash) && Internal.equals(this.init_sync_timeout, android2.init_sync_timeout) && Internal.equals(this.gm_price_percent, android2.gm_price_percent) && this.gm_price_packages.equals(android2.gm_price_packages) && Internal.equals(this.gm_price_cache_switch, android2.gm_price_cache_switch) && this.quick_app_schema.equals(android2.quick_app_schema) && Internal.equals(this.redirect_link_collection_switch, android2.redirect_link_collection_switch) && Internal.equals(this.redirect_link_collection_ratio, android2.redirect_link_collection_ratio);
    }

    public int hashCode() {
        int i10 = this.hashCode;
        if (i10 != 0) {
            return i10;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        Integer num = this.report_log;
        int iHashCode2 = (iHashCode + (num != null ? num.hashCode() : 0)) * 37;
        Integer num2 = this.disable_up_oaid;
        int iHashCode3 = (iHashCode2 + (num2 != null ? num2.hashCode() : 0)) * 37;
        Boolean bool = this.enable_permission;
        int iHashCode4 = (iHashCode3 + (bool != null ? bool.hashCode() : 0)) * 37;
        Boolean bool2 = this.enable_report_crash;
        int iHashCode5 = (iHashCode4 + (bool2 != null ? bool2.hashCode() : 0)) * 37;
        Boolean bool3 = this.oaid_api_is_disable;
        int iHashCode6 = (iHashCode5 + (bool3 != null ? bool3.hashCode() : 0)) * 37;
        Boolean bool4 = this.disable_boot_mark;
        int iHashCode7 = (iHashCode6 + (bool4 != null ? bool4.hashCode() : 0)) * 37;
        Boolean bool5 = this.enable_reward_ndk;
        int iHashCode8 = (iHashCode7 + (bool5 != null ? bool5.hashCode() : 0)) * 37;
        Boolean bool6 = this.enable_ndk_crash;
        int iHashCode9 = (iHashCode8 + (bool6 != null ? bool6.hashCode() : 0)) * 37;
        Integer num3 = this.init_sync_timeout;
        int iHashCode10 = (iHashCode9 + (num3 != null ? num3.hashCode() : 0)) * 37;
        Integer num4 = this.gm_price_percent;
        int iHashCode11 = (((iHashCode10 + (num4 != null ? num4.hashCode() : 0)) * 37) + this.gm_price_packages.hashCode()) * 37;
        Integer num5 = this.gm_price_cache_switch;
        int iHashCode12 = (((iHashCode11 + (num5 != null ? num5.hashCode() : 0)) * 37) + this.quick_app_schema.hashCode()) * 37;
        Boolean bool7 = this.redirect_link_collection_switch;
        int iHashCode13 = (iHashCode12 + (bool7 != null ? bool7.hashCode() : 0)) * 37;
        Integer num6 = this.redirect_link_collection_ratio;
        int iHashCode14 = iHashCode13 + (num6 != null ? num6.hashCode() : 0);
        this.hashCode = iHashCode14;
        return iHashCode14;
    }

    @Override // com.czhj.wire.Message
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        if (this.report_log != null) {
            sb2.append(", report_log=");
            sb2.append(this.report_log);
        }
        if (this.disable_up_oaid != null) {
            sb2.append(", disable_up_oaid=");
            sb2.append(this.disable_up_oaid);
        }
        if (this.enable_permission != null) {
            sb2.append(", enable_permission=");
            sb2.append(this.enable_permission);
        }
        if (this.enable_report_crash != null) {
            sb2.append(", enable_report_crash=");
            sb2.append(this.enable_report_crash);
        }
        if (this.oaid_api_is_disable != null) {
            sb2.append(", oaid_api_is_disable=");
            sb2.append(this.oaid_api_is_disable);
        }
        if (this.disable_boot_mark != null) {
            sb2.append(", disable_boot_mark=");
            sb2.append(this.disable_boot_mark);
        }
        if (this.gm_price_percent != null) {
            sb2.append(", gm_price_percent=");
            sb2.append(this.gm_price_percent);
        }
        if (!this.gm_price_packages.isEmpty()) {
            sb2.append(", gm_price_packages=");
            sb2.append(this.gm_price_packages);
        }
        if (this.gm_price_cache_switch != null) {
            sb2.append(", gm_price_cache_switch=");
            sb2.append(this.gm_price_cache_switch);
        }
        if (!this.quick_app_schema.isEmpty()) {
            sb2.append(", quick_app_schema=");
            sb2.append(this.quick_app_schema);
        }
        if (this.redirect_link_collection_switch != null) {
            sb2.append(", redirect_link_collection_switch=");
            sb2.append(this.redirect_link_collection_switch);
        }
        if (this.redirect_link_collection_ratio != null) {
            sb2.append(", redirect_link_collection_ratio=");
            sb2.append(this.redirect_link_collection_ratio);
        }
        StringBuilder sbReplace = sb2.replace(0, 2, "Android{");
        sbReplace.append('}');
        return sbReplace.toString();
    }

    public Android(Integer report_log, Integer disable_up_oaid, Boolean enable_permission, Boolean enable_report_crash, Boolean oaid_api_is_disable, Boolean disable_boot_mark, Boolean enable_reward_ndk, Boolean enable_ndk_crash, Integer init_sync_timeout, Integer gm_price_percent, List<String> gm_price_packages, Integer gm_price_cache_switch, List<String> quick_app_schema, Boolean redirect_link_collection_switch, Integer redirect_link_collection_ratio, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        this.report_log = report_log;
        this.disable_up_oaid = disable_up_oaid;
        this.enable_permission = enable_permission;
        this.enable_report_crash = enable_report_crash;
        this.oaid_api_is_disable = oaid_api_is_disable;
        this.disable_boot_mark = disable_boot_mark;
        this.enable_reward_ndk = enable_reward_ndk;
        this.enable_ndk_crash = enable_ndk_crash;
        this.init_sync_timeout = init_sync_timeout;
        this.gm_price_percent = gm_price_percent;
        this.gm_price_packages = Internal.immutableCopyOf("gm_price_packages", gm_price_packages);
        this.gm_price_cache_switch = gm_price_cache_switch;
        this.quick_app_schema = Internal.immutableCopyOf("quick_app_schema", quick_app_schema);
        this.redirect_link_collection_switch = redirect_link_collection_switch;
        this.redirect_link_collection_ratio = redirect_link_collection_ratio;
    }

    @Override // com.czhj.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.report_log = this.report_log;
        builder.disable_up_oaid = this.disable_up_oaid;
        builder.enable_permission = this.enable_permission;
        builder.enable_report_crash = this.enable_report_crash;
        builder.oaid_api_is_disable = this.oaid_api_is_disable;
        builder.disable_boot_mark = this.disable_boot_mark;
        builder.gm_price_packages = Internal.copyOf("gm_price_packages", this.gm_price_packages);
        builder.gm_price_cache_switch = this.gm_price_cache_switch;
        builder.quick_app_schema = Internal.copyOf("quick_app_schema", this.quick_app_schema);
        builder.redirect_link_collection_switch = this.redirect_link_collection_switch;
        builder.redirect_link_collection_ratio = this.redirect_link_collection_ratio;
        builder.addUnknownFields(unknownFields());
        return builder;
    }
}
