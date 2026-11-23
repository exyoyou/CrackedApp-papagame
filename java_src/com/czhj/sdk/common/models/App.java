package com.czhj.sdk.common.models;

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

/* JADX INFO: loaded from: classes9.dex */
public final class App extends AndroidMessage<App, Builder> {
    public static final ProtoAdapter<App> ADAPTER;
    public static final Parcelable.Creator<App> CREATOR;
    public static final String DEFAULT_APP_ID = "";
    public static final String DEFAULT_APP_PACKAGE = "";
    public static final String DEFAULT_APP_SHA256 = "";
    public static final String DEFAULT_CHANNEL_ID = "";
    public static final String DEFAULT_IDFV = "";
    public static final Long DEFAULT_INSTALL_TIME;
    public static final String DEFAULT_NAME = "";
    public static final Integer DEFAULT_ORIENTATION;
    public static final String DEFAULT_PRODUCT_ID = "";
    public static final Boolean DEFAULT_SUPPORT_HTTP;
    public static final String DEFAULT_SUPPORT_SK_VERSION = "";
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.REPEATED, tag = 10)
    public final List<String> ad_network_ids;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 1)
    public final String app_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 3)
    public final String app_package;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 21)
    public final String app_sha256;

    @WireField(adapter = "com.sigmob.sdk.common.models.Version#ADAPTER", tag = 2)
    public final Version app_version;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 7)
    public final String channel_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 6)
    public final String idfv;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", tag = 15)
    public final Long install_time;

    @WireField(adapter = "com.sigmob.sdk.common.models.Version#ADAPTER", tag = 17)
    public final Version mraid1_version;

    @WireField(adapter = "com.sigmob.sdk.common.models.Version#ADAPTER", tag = 18)
    public final Version mraid2_version;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 5)
    public final String name;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 4)
    public final Integer orientation;

    @WireField(adapter = "com.sigmob.sdk.common.models.Permission#ADAPTER", tag = 19)
    public final Permission permission;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 8)
    public final String product_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", label = WireField.Label.REPEATED, tag = 12)
    public final List<Integer> sdk_ext_cap;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", tag = 9)
    public final Boolean support_http;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 11)
    public final String support_sk_version;

    public static final class Builder extends Message.Builder<App, Builder> {
        public String app_id;
        public String app_package;
        public String app_sha256;
        public Version app_version;
        public String channel_id;
        public String idfv;
        public Long install_time;
        public Version mraid1_version;
        public Version mraid2_version;
        public String name;
        public Integer orientation;
        public Permission permission;
        public String product_id;
        public Boolean support_http;
        public String support_sk_version;
        public List<String> ad_network_ids = Internal.newMutableList();
        public List<Integer> sdk_ext_cap = Internal.newMutableList();

        public Builder ad_network_ids(List<String> list) {
            Internal.checkElementsNotNull(list);
            this.ad_network_ids = list;
            return this;
        }

        public Builder app_id(String str) {
            this.app_id = str;
            return this;
        }

        public Builder app_package(String str) {
            this.app_package = str;
            return this;
        }

        public Builder app_sha256(String str) {
            this.app_sha256 = str;
            return this;
        }

        public Builder app_version(Version version) {
            this.app_version = version;
            return this;
        }

        @Override // com.czhj.wire.Message.Builder
        public App build() {
            return new App(this.app_id, this.app_version, this.app_package, this.orientation, this.name, this.idfv, this.channel_id, this.product_id, this.support_http, this.ad_network_ids, this.support_sk_version, this.sdk_ext_cap, this.install_time, this.mraid1_version, this.mraid2_version, this.permission, this.app_sha256, super.buildUnknownFields());
        }

        public Builder channel_id(String str) {
            this.channel_id = str;
            return this;
        }

        public Builder idfv(String str) {
            this.idfv = str;
            return this;
        }

        public Builder install_time(Long l10) {
            this.install_time = l10;
            return this;
        }

        public Builder mraid1_version(Version version) {
            this.mraid1_version = version;
            return this;
        }

        public Builder mraid2_version(Version version) {
            this.mraid2_version = version;
            return this;
        }

        public Builder name(String str) {
            this.name = str;
            return this;
        }

        public Builder orientation(Integer num) {
            this.orientation = num;
            return this;
        }

        public Builder permission(Permission permission) {
            this.permission = permission;
            return this;
        }

        public Builder product_id(String str) {
            this.product_id = str;
            return this;
        }

        public Builder sdk_ext_cap(List<Integer> list) {
            Internal.checkElementsNotNull(list);
            this.sdk_ext_cap = list;
            return this;
        }

        public Builder support_http(Boolean bool) {
            this.support_http = bool;
            return this;
        }

        public Builder support_sk_version(String str) {
            this.support_sk_version = str;
            return this;
        }
    }

    private static final class ProtoAdapter_App extends ProtoAdapter<App> {
        public ProtoAdapter_App() {
            super(FieldEncoding.LENGTH_DELIMITED, App.class);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.czhj.wire.ProtoAdapter
        public App decode(ProtoReader protoReader) throws IOException {
            List list;
            Object obj;
            Builder builder = new Builder();
            long jBeginMessage = protoReader.beginMessage();
            while (true) {
                int iNextTag = protoReader.nextTag();
                if (iNextTag == -1) {
                    protoReader.endMessage(jBeginMessage);
                    return builder.build();
                }
                switch (iNextTag) {
                    case 1:
                        builder.app_id(ProtoAdapter.STRING.decode(protoReader));
                        continue;
                    case 2:
                        builder.app_version(Version.ADAPTER.decode(protoReader));
                        continue;
                    case 3:
                        builder.app_package(ProtoAdapter.STRING.decode(protoReader));
                        continue;
                    case 4:
                        builder.orientation(ProtoAdapter.UINT32.decode(protoReader));
                        continue;
                    case 5:
                        builder.name(ProtoAdapter.STRING.decode(protoReader));
                        continue;
                    case 6:
                        builder.idfv(ProtoAdapter.STRING.decode(protoReader));
                        continue;
                    case 7:
                        builder.channel_id(ProtoAdapter.STRING.decode(protoReader));
                        continue;
                    case 8:
                        builder.product_id(ProtoAdapter.STRING.decode(protoReader));
                        continue;
                    case 9:
                        builder.support_http(ProtoAdapter.BOOL.decode(protoReader));
                        continue;
                    case 10:
                        list = builder.ad_network_ids;
                        obj = (String) ProtoAdapter.STRING.decode(protoReader);
                        break;
                    case 11:
                        builder.support_sk_version(ProtoAdapter.STRING.decode(protoReader));
                        continue;
                    case 12:
                        list = builder.sdk_ext_cap;
                        obj = (Integer) ProtoAdapter.UINT32.decode(protoReader);
                        break;
                    case 13:
                    case 14:
                    case 16:
                    case 20:
                    default:
                        FieldEncoding fieldEncodingPeekFieldEncoding = protoReader.peekFieldEncoding();
                        builder.addUnknownField(iNextTag, fieldEncodingPeekFieldEncoding, fieldEncodingPeekFieldEncoding.rawProtoAdapter().decode(protoReader));
                        continue;
                    case 15:
                        builder.install_time(ProtoAdapter.INT64.decode(protoReader));
                        continue;
                    case 17:
                        builder.mraid1_version(Version.ADAPTER.decode(protoReader));
                        continue;
                    case 18:
                        builder.mraid2_version(Version.ADAPTER.decode(protoReader));
                        continue;
                    case 19:
                        builder.permission(Permission.ADAPTER.decode(protoReader));
                        continue;
                    case 21:
                        builder.app_sha256(ProtoAdapter.STRING.decode(protoReader));
                        continue;
                }
                list.add(obj);
            }
        }

        @Override // com.czhj.wire.ProtoAdapter
        public void encode(ProtoWriter protoWriter, App app2) throws IOException {
            ProtoAdapter<String> protoAdapter = ProtoAdapter.STRING;
            protoAdapter.encodeWithTag(protoWriter, 1, app2.app_id);
            ProtoAdapter<Version> protoAdapter2 = Version.ADAPTER;
            protoAdapter2.encodeWithTag(protoWriter, 2, app2.app_version);
            protoAdapter.encodeWithTag(protoWriter, 3, app2.app_package);
            ProtoAdapter<Integer> protoAdapter3 = ProtoAdapter.UINT32;
            protoAdapter3.encodeWithTag(protoWriter, 4, app2.orientation);
            protoAdapter.encodeWithTag(protoWriter, 5, app2.name);
            protoAdapter.encodeWithTag(protoWriter, 6, app2.idfv);
            protoAdapter.encodeWithTag(protoWriter, 7, app2.channel_id);
            protoAdapter.encodeWithTag(protoWriter, 8, app2.product_id);
            ProtoAdapter.BOOL.encodeWithTag(protoWriter, 9, app2.support_http);
            protoAdapter.asRepeated().encodeWithTag(protoWriter, 10, app2.ad_network_ids);
            protoAdapter.encodeWithTag(protoWriter, 11, app2.support_sk_version);
            protoAdapter3.asRepeated().encodeWithTag(protoWriter, 12, app2.sdk_ext_cap);
            ProtoAdapter.INT64.encodeWithTag(protoWriter, 15, app2.install_time);
            protoAdapter2.encodeWithTag(protoWriter, 17, app2.mraid1_version);
            protoAdapter2.encodeWithTag(protoWriter, 18, app2.mraid2_version);
            Permission.ADAPTER.encodeWithTag(protoWriter, 19, app2.permission);
            protoAdapter.encodeWithTag(protoWriter, 21, app2.app_sha256);
            protoWriter.writeBytes(app2.unknownFields());
        }

        @Override // com.czhj.wire.ProtoAdapter
        public int encodedSize(App app2) {
            ProtoAdapter<String> protoAdapter = ProtoAdapter.STRING;
            int iEncodedSizeWithTag = protoAdapter.encodedSizeWithTag(1, app2.app_id);
            ProtoAdapter<Version> protoAdapter2 = Version.ADAPTER;
            int iEncodedSizeWithTag2 = iEncodedSizeWithTag + protoAdapter2.encodedSizeWithTag(2, app2.app_version) + protoAdapter.encodedSizeWithTag(3, app2.app_package);
            ProtoAdapter<Integer> protoAdapter3 = ProtoAdapter.UINT32;
            return iEncodedSizeWithTag2 + protoAdapter3.encodedSizeWithTag(4, app2.orientation) + protoAdapter.encodedSizeWithTag(5, app2.name) + protoAdapter.encodedSizeWithTag(6, app2.idfv) + protoAdapter.encodedSizeWithTag(7, app2.channel_id) + protoAdapter.encodedSizeWithTag(8, app2.product_id) + ProtoAdapter.BOOL.encodedSizeWithTag(9, app2.support_http) + protoAdapter.asRepeated().encodedSizeWithTag(10, app2.ad_network_ids) + protoAdapter.encodedSizeWithTag(11, app2.support_sk_version) + protoAdapter3.asRepeated().encodedSizeWithTag(12, app2.sdk_ext_cap) + ProtoAdapter.INT64.encodedSizeWithTag(15, app2.install_time) + protoAdapter2.encodedSizeWithTag(17, app2.mraid1_version) + protoAdapter2.encodedSizeWithTag(18, app2.mraid2_version) + Permission.ADAPTER.encodedSizeWithTag(19, app2.permission) + protoAdapter.encodedSizeWithTag(21, app2.app_sha256) + app2.unknownFields().size();
        }

        @Override // com.czhj.wire.ProtoAdapter
        public App redact(App app2) {
            Builder builderNewBuilder = app2.newBuilder();
            Version version = builderNewBuilder.app_version;
            if (version != null) {
                builderNewBuilder.app_version = Version.ADAPTER.redact(version);
            }
            Version version2 = builderNewBuilder.mraid1_version;
            if (version2 != null) {
                builderNewBuilder.mraid1_version = Version.ADAPTER.redact(version2);
            }
            Version version3 = builderNewBuilder.mraid2_version;
            if (version3 != null) {
                builderNewBuilder.mraid2_version = Version.ADAPTER.redact(version3);
            }
            Permission permission = builderNewBuilder.permission;
            if (permission != null) {
                builderNewBuilder.permission = Permission.ADAPTER.redact(permission);
            }
            builderNewBuilder.clearUnknownFields();
            return builderNewBuilder.build();
        }
    }

    static {
        ProtoAdapter_App protoAdapter_App = new ProtoAdapter_App();
        ADAPTER = protoAdapter_App;
        CREATOR = AndroidMessage.newCreator(protoAdapter_App);
        DEFAULT_ORIENTATION = 0;
        DEFAULT_SUPPORT_HTTP = Boolean.FALSE;
        DEFAULT_INSTALL_TIME = 0L;
    }

    public App(String str, Version version, String str2, Integer num, String str3, String str4, String str5, String str6, Boolean bool, List<String> list, String str7, List<Integer> list2, Long l10, Version version2, Version version3, Permission permission, String str8) {
        this(str, version, str2, num, str3, str4, str5, str6, bool, list, str7, list2, l10, version2, version3, permission, str8, ByteString.EMPTY);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof App)) {
            return false;
        }
        App app2 = (App) obj;
        return unknownFields().equals(app2.unknownFields()) && Internal.equals(this.app_id, app2.app_id) && Internal.equals(this.app_version, app2.app_version) && Internal.equals(this.app_package, app2.app_package) && Internal.equals(this.orientation, app2.orientation) && Internal.equals(this.name, app2.name) && Internal.equals(this.idfv, app2.idfv) && Internal.equals(this.channel_id, app2.channel_id) && Internal.equals(this.product_id, app2.product_id) && Internal.equals(this.support_http, app2.support_http) && this.ad_network_ids.equals(app2.ad_network_ids) && Internal.equals(this.support_sk_version, app2.support_sk_version) && this.sdk_ext_cap.equals(app2.sdk_ext_cap) && Internal.equals(this.install_time, app2.install_time) && Internal.equals(this.mraid1_version, app2.mraid1_version) && Internal.equals(this.mraid2_version, app2.mraid2_version) && Internal.equals(this.permission, app2.permission) && Internal.equals(this.app_sha256, app2.app_sha256);
    }

    public int hashCode() {
        int i10 = this.hashCode;
        if (i10 != 0) {
            return i10;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        String str = this.app_id;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
        Version version = this.app_version;
        int iHashCode3 = (iHashCode2 + (version != null ? version.hashCode() : 0)) * 37;
        String str2 = this.app_package;
        int iHashCode4 = (iHashCode3 + (str2 != null ? str2.hashCode() : 0)) * 37;
        Integer num = this.orientation;
        int iHashCode5 = (iHashCode4 + (num != null ? num.hashCode() : 0)) * 37;
        String str3 = this.name;
        int iHashCode6 = (iHashCode5 + (str3 != null ? str3.hashCode() : 0)) * 37;
        String str4 = this.idfv;
        int iHashCode7 = (iHashCode6 + (str4 != null ? str4.hashCode() : 0)) * 37;
        String str5 = this.channel_id;
        int iHashCode8 = (iHashCode7 + (str5 != null ? str5.hashCode() : 0)) * 37;
        String str6 = this.product_id;
        int iHashCode9 = (iHashCode8 + (str6 != null ? str6.hashCode() : 0)) * 37;
        Boolean bool = this.support_http;
        int iHashCode10 = (((iHashCode9 + (bool != null ? bool.hashCode() : 0)) * 37) + this.ad_network_ids.hashCode()) * 37;
        String str7 = this.support_sk_version;
        int iHashCode11 = (((iHashCode10 + (str7 != null ? str7.hashCode() : 0)) * 37) + this.sdk_ext_cap.hashCode()) * 37;
        Long l10 = this.install_time;
        int iHashCode12 = (iHashCode11 + (l10 != null ? l10.hashCode() : 0)) * 37;
        Version version2 = this.mraid1_version;
        int iHashCode13 = (iHashCode12 + (version2 != null ? version2.hashCode() : 0)) * 37;
        Version version3 = this.mraid2_version;
        int iHashCode14 = (iHashCode13 + (version3 != null ? version3.hashCode() : 0)) * 37;
        Permission permission = this.permission;
        int iHashCode15 = (iHashCode14 + (permission != null ? permission.hashCode() : 0)) * 37;
        String str8 = this.app_sha256;
        int iHashCode16 = iHashCode15 + (str8 != null ? str8.hashCode() : 0);
        this.hashCode = iHashCode16;
        return iHashCode16;
    }

    @Override // com.czhj.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.app_id = this.app_id;
        builder.app_version = this.app_version;
        builder.app_package = this.app_package;
        builder.orientation = this.orientation;
        builder.name = this.name;
        builder.idfv = this.idfv;
        builder.channel_id = this.channel_id;
        builder.product_id = this.product_id;
        builder.support_http = this.support_http;
        builder.ad_network_ids = Internal.copyOf("ad_network_ids", this.ad_network_ids);
        builder.support_sk_version = this.support_sk_version;
        builder.sdk_ext_cap = Internal.copyOf("sdk_ext_cap", this.sdk_ext_cap);
        builder.install_time = this.install_time;
        builder.mraid1_version = this.mraid1_version;
        builder.mraid2_version = this.mraid2_version;
        builder.permission = this.permission;
        builder.app_sha256 = this.app_sha256;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    @Override // com.czhj.wire.Message
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        if (this.app_id != null) {
            sb2.append(", app_id=");
            sb2.append(this.app_id);
        }
        if (this.app_version != null) {
            sb2.append(", app_version=");
            sb2.append(this.app_version);
        }
        if (this.app_package != null) {
            sb2.append(", app_package=");
            sb2.append(this.app_package);
        }
        if (this.orientation != null) {
            sb2.append(", orientation=");
            sb2.append(this.orientation);
        }
        if (this.name != null) {
            sb2.append(", name=");
            sb2.append(this.name);
        }
        if (this.idfv != null) {
            sb2.append(", idfv=");
            sb2.append(this.idfv);
        }
        if (this.channel_id != null) {
            sb2.append(", channel_id=");
            sb2.append(this.channel_id);
        }
        if (this.product_id != null) {
            sb2.append(", product_id=");
            sb2.append(this.product_id);
        }
        if (this.support_http != null) {
            sb2.append(", support_http=");
            sb2.append(this.support_http);
        }
        if (!this.ad_network_ids.isEmpty()) {
            sb2.append(", ad_network_ids=");
            sb2.append(this.ad_network_ids);
        }
        if (this.support_sk_version != null) {
            sb2.append(", support_sk_version=");
            sb2.append(this.support_sk_version);
        }
        if (!this.sdk_ext_cap.isEmpty()) {
            sb2.append(", sdk_ext_cap=");
            sb2.append(this.sdk_ext_cap);
        }
        if (this.install_time != null) {
            sb2.append(", install_time=");
            sb2.append(this.install_time);
        }
        if (this.mraid1_version != null) {
            sb2.append(", mraid1_version=");
            sb2.append(this.mraid1_version);
        }
        if (this.mraid2_version != null) {
            sb2.append(", mraid2_version=");
            sb2.append(this.mraid2_version);
        }
        if (this.permission != null) {
            sb2.append(", permission=");
            sb2.append(this.permission);
        }
        if (this.app_sha256 != null) {
            sb2.append(", app_sha256=");
            sb2.append(this.app_sha256);
        }
        StringBuilder sbReplace = sb2.replace(0, 2, "App{");
        sbReplace.append('}');
        return sbReplace.toString();
    }

    public App(String str, Version version, String str2, Integer num, String str3, String str4, String str5, String str6, Boolean bool, List<String> list, String str7, List<Integer> list2, Long l10, Version version2, Version version3, Permission permission, String str8, ByteString byteString) {
        super(ADAPTER, byteString);
        this.app_id = str;
        this.app_version = version;
        this.app_package = str2;
        this.orientation = num;
        this.name = str3;
        this.idfv = str4;
        this.channel_id = str5;
        this.product_id = str6;
        this.support_http = bool;
        this.ad_network_ids = Internal.immutableCopyOf("ad_network_ids", list);
        this.support_sk_version = str7;
        this.sdk_ext_cap = Internal.immutableCopyOf("sdk_ext_cap", list2);
        this.install_time = l10;
        this.mraid1_version = version2;
        this.mraid2_version = version3;
        this.permission = permission;
        this.app_sha256 = str8;
    }
}
