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
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class SlotAdSetting extends AndroidMessage<SlotAdSetting, Builder> {
    public static final ProtoAdapter<SlotAdSetting> ADAPTER;
    public static final Parcelable.Creator<SlotAdSetting> CREATOR;
    public static final Integer DEFAULT_APK_DOWNLOAD_TYPE;
    public static final Integer DEFAULT_CLICK_LOSE_RATE;
    public static final Boolean DEFAULT_DISABLE_X_REQUESTED_WITH;
    public static final Boolean DEFAULT_ENABLE_DEEPLINK_AND_LANDING_PAGE;
    public static final Boolean DEFAULT_RESUMABLE_DOWNLOAD;
    public static final Integer DEFAULT_RETRY_COUNT;
    public static final Boolean DEFAULT_USE_DOWNLOADED_APK;
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 7)
    public final Integer apk_download_type;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 13)
    public final Integer click_lose_rate;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", tag = 5)
    public final Boolean disable_x_requested_with;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", tag = 10)
    public final Boolean enable_deeplink_and_landing_page;

    @WireField(adapter = "com.sigmob.sdk.base.models.rtb.InterstitialSetting#ADAPTER", tag = 6)
    public final InterstitialSetting interstitial_setting;

    @WireField(adapter = "com.sigmob.sdk.base.models.rtb.LinkAction#ADAPTER", label = WireField.Label.REPEATED, tag = 12)
    public final List<LinkAction> link_actions;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.REPEATED, tag = 11)
    public final List<String> market_package_name;

    @WireField(adapter = "com.sigmob.sdk.base.models.rtb.NativeAdSetting#ADAPTER", tag = 3)
    public final NativeAdSetting native_setting;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", tag = 8)
    public final Boolean resumable_download;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", tag = 4)
    public final Integer retry_count;

    @WireField(adapter = "com.sigmob.sdk.base.models.rtb.RvAdSetting#ADAPTER", tag = 1)
    public final RvAdSetting rv_setting;

    @WireField(adapter = "com.sigmob.sdk.base.models.rtb.SplashAdSetting#ADAPTER", tag = 2)
    public final SplashAdSetting splash_setting;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", tag = 9)
    public final Boolean use_downloaded_apk;

    public static final class Builder extends Message.Builder<SlotAdSetting, Builder> {
        public InterstitialSetting interstitial_setting;
        public NativeAdSetting native_setting;
        public RvAdSetting rv_setting;
        public SplashAdSetting splash_setting;
        public Integer retry_count = SlotAdSetting.DEFAULT_RETRY_COUNT;
        public Boolean disable_x_requested_with = SlotAdSetting.DEFAULT_DISABLE_X_REQUESTED_WITH;
        public Integer apk_download_type = SlotAdSetting.DEFAULT_APK_DOWNLOAD_TYPE;
        public Boolean resumable_download = SlotAdSetting.DEFAULT_RESUMABLE_DOWNLOAD;
        public Boolean use_downloaded_apk = SlotAdSetting.DEFAULT_USE_DOWNLOADED_APK;
        public Boolean enable_deeplink_and_landing_page = SlotAdSetting.DEFAULT_ENABLE_DEEPLINK_AND_LANDING_PAGE;
        public Integer click_lose_rate = SlotAdSetting.DEFAULT_CLICK_LOSE_RATE;
        public List<String> market_package_name = Internal.newMutableList();
        public List<LinkAction> link_actions = Internal.newMutableList();

        public Builder apk_download_type(Integer apk_download_type) {
            this.apk_download_type = apk_download_type;
            return this;
        }

        public Builder click_lose_rate(Integer click_lose_rate) {
            this.click_lose_rate = click_lose_rate;
            return this;
        }

        public Builder disable_x_requested_with(Boolean disable_x_requested_with) {
            this.disable_x_requested_with = disable_x_requested_with;
            return this;
        }

        public Builder enable_deeplink_and_landing_page(Boolean enable_deeplink_and_landing_page) {
            this.enable_deeplink_and_landing_page = enable_deeplink_and_landing_page;
            return this;
        }

        public Builder interstitial_setting(InterstitialSetting interstitial_setting) {
            this.interstitial_setting = interstitial_setting;
            return this;
        }

        public Builder link_actions(List<LinkAction> link_actions) {
            Internal.checkElementsNotNull(link_actions);
            this.link_actions = link_actions;
            return this;
        }

        public Builder market_package_name(List<String> market_package_name) {
            Internal.checkElementsNotNull(market_package_name);
            this.market_package_name = market_package_name;
            return this;
        }

        public Builder native_setting(NativeAdSetting native_setting) {
            this.native_setting = native_setting;
            return this;
        }

        public Builder resumable_download(Boolean resumable_download) {
            this.resumable_download = resumable_download;
            return this;
        }

        public Builder retry_count(Integer retry_count) {
            this.retry_count = retry_count;
            return this;
        }

        public Builder rv_setting(RvAdSetting rv_setting) {
            this.rv_setting = rv_setting;
            return this;
        }

        public Builder splash_setting(SplashAdSetting splash_setting) {
            this.splash_setting = splash_setting;
            return this;
        }

        public Builder use_downloaded_apk(Boolean use_downloaded_apk) {
            this.use_downloaded_apk = use_downloaded_apk;
            return this;
        }

        @Override // com.czhj.wire.Message.Builder
        public SlotAdSetting build() {
            return new SlotAdSetting(this.rv_setting, this.splash_setting, this.native_setting, this.retry_count, this.disable_x_requested_with, this.interstitial_setting, this.apk_download_type, this.resumable_download, this.use_downloaded_apk, this.enable_deeplink_and_landing_page, this.market_package_name, this.link_actions, this.click_lose_rate, super.buildUnknownFields());
        }
    }

    private static final class ProtoAdapter_SlotAdSetting extends ProtoAdapter<SlotAdSetting> {
        public ProtoAdapter_SlotAdSetting() {
            super(FieldEncoding.LENGTH_DELIMITED, SlotAdSetting.class);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.czhj.wire.ProtoAdapter
        public SlotAdSetting decode(ProtoReader reader) throws IOException {
            List list;
            Object obj;
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
                        builder.rv_setting(RvAdSetting.ADAPTER.decode(reader));
                        continue;
                    case 2:
                        builder.splash_setting(SplashAdSetting.ADAPTER.decode(reader));
                        continue;
                    case 3:
                        builder.native_setting(NativeAdSetting.ADAPTER.decode(reader));
                        continue;
                    case 4:
                        builder.retry_count(ProtoAdapter.INT32.decode(reader));
                        continue;
                    case 5:
                        builder.disable_x_requested_with(ProtoAdapter.BOOL.decode(reader));
                        continue;
                    case 6:
                        builder.interstitial_setting(InterstitialSetting.ADAPTER.decode(reader));
                        continue;
                    case 7:
                        builder.apk_download_type(ProtoAdapter.UINT32.decode(reader));
                        continue;
                    case 8:
                        builder.resumable_download(ProtoAdapter.BOOL.decode(reader));
                        continue;
                    case 9:
                        builder.use_downloaded_apk(ProtoAdapter.BOOL.decode(reader));
                        continue;
                    case 10:
                        builder.enable_deeplink_and_landing_page(ProtoAdapter.BOOL.decode(reader));
                        continue;
                    case 11:
                        list = builder.market_package_name;
                        obj = (String) ProtoAdapter.STRING.decode(reader);
                        break;
                    case 12:
                        list = builder.link_actions;
                        obj = (LinkAction) LinkAction.ADAPTER.decode(reader);
                        break;
                    case 13:
                        builder.click_lose_rate(ProtoAdapter.UINT32.decode(reader));
                        continue;
                    default:
                        FieldEncoding fieldEncodingPeekFieldEncoding = reader.peekFieldEncoding();
                        builder.addUnknownField(iNextTag, fieldEncodingPeekFieldEncoding, fieldEncodingPeekFieldEncoding.rawProtoAdapter().decode(reader));
                        continue;
                }
                list.add(obj);
            }
        }

        @Override // com.czhj.wire.ProtoAdapter
        public void encode(ProtoWriter writer, SlotAdSetting value) throws IOException {
            RvAdSetting.ADAPTER.encodeWithTag(writer, 1, value.rv_setting);
            SplashAdSetting.ADAPTER.encodeWithTag(writer, 2, value.splash_setting);
            NativeAdSetting.ADAPTER.encodeWithTag(writer, 3, value.native_setting);
            ProtoAdapter.INT32.encodeWithTag(writer, 4, value.retry_count);
            ProtoAdapter<Boolean> protoAdapter = ProtoAdapter.BOOL;
            protoAdapter.encodeWithTag(writer, 5, value.disable_x_requested_with);
            InterstitialSetting.ADAPTER.encodeWithTag(writer, 6, value.interstitial_setting);
            ProtoAdapter<Integer> protoAdapter2 = ProtoAdapter.UINT32;
            protoAdapter2.encodeWithTag(writer, 7, value.apk_download_type);
            protoAdapter.encodeWithTag(writer, 8, value.resumable_download);
            protoAdapter.encodeWithTag(writer, 9, value.use_downloaded_apk);
            protoAdapter.encodeWithTag(writer, 10, value.enable_deeplink_and_landing_page);
            ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 11, value.market_package_name);
            LinkAction.ADAPTER.asRepeated().encodeWithTag(writer, 12, value.link_actions);
            protoAdapter2.encodeWithTag(writer, 13, value.click_lose_rate);
            writer.writeBytes(value.unknownFields());
        }

        @Override // com.czhj.wire.ProtoAdapter
        public int encodedSize(SlotAdSetting value) {
            int iEncodedSizeWithTag = RvAdSetting.ADAPTER.encodedSizeWithTag(1, value.rv_setting) + SplashAdSetting.ADAPTER.encodedSizeWithTag(2, value.splash_setting) + NativeAdSetting.ADAPTER.encodedSizeWithTag(3, value.native_setting) + ProtoAdapter.INT32.encodedSizeWithTag(4, value.retry_count);
            ProtoAdapter<Boolean> protoAdapter = ProtoAdapter.BOOL;
            int iEncodedSizeWithTag2 = iEncodedSizeWithTag + protoAdapter.encodedSizeWithTag(5, value.disable_x_requested_with) + InterstitialSetting.ADAPTER.encodedSizeWithTag(6, value.interstitial_setting);
            ProtoAdapter<Integer> protoAdapter2 = ProtoAdapter.UINT32;
            return iEncodedSizeWithTag2 + protoAdapter2.encodedSizeWithTag(7, value.apk_download_type) + protoAdapter.encodedSizeWithTag(8, value.resumable_download) + protoAdapter.encodedSizeWithTag(9, value.use_downloaded_apk) + protoAdapter.encodedSizeWithTag(10, value.enable_deeplink_and_landing_page) + ProtoAdapter.STRING.asRepeated().encodedSizeWithTag(11, value.market_package_name) + LinkAction.ADAPTER.asRepeated().encodedSizeWithTag(12, value.link_actions) + protoAdapter2.encodedSizeWithTag(13, value.click_lose_rate) + value.unknownFields().size();
        }

        @Override // com.czhj.wire.ProtoAdapter
        public SlotAdSetting redact(SlotAdSetting value) {
            Builder builderNewBuilder = value.newBuilder();
            RvAdSetting rvAdSetting = builderNewBuilder.rv_setting;
            if (rvAdSetting != null) {
                builderNewBuilder.rv_setting = RvAdSetting.ADAPTER.redact(rvAdSetting);
            }
            SplashAdSetting splashAdSetting = builderNewBuilder.splash_setting;
            if (splashAdSetting != null) {
                builderNewBuilder.splash_setting = SplashAdSetting.ADAPTER.redact(splashAdSetting);
            }
            NativeAdSetting nativeAdSetting = builderNewBuilder.native_setting;
            if (nativeAdSetting != null) {
                builderNewBuilder.native_setting = NativeAdSetting.ADAPTER.redact(nativeAdSetting);
            }
            InterstitialSetting interstitialSetting = builderNewBuilder.interstitial_setting;
            if (interstitialSetting != null) {
                builderNewBuilder.interstitial_setting = InterstitialSetting.ADAPTER.redact(interstitialSetting);
            }
            Internal.redactElements(builderNewBuilder.link_actions, LinkAction.ADAPTER);
            builderNewBuilder.clearUnknownFields();
            return builderNewBuilder.build();
        }
    }

    static {
        ProtoAdapter_SlotAdSetting protoAdapter_SlotAdSetting = new ProtoAdapter_SlotAdSetting();
        ADAPTER = protoAdapter_SlotAdSetting;
        CREATOR = AndroidMessage.newCreator(protoAdapter_SlotAdSetting);
        DEFAULT_RETRY_COUNT = 0;
        Boolean bool = Boolean.FALSE;
        DEFAULT_DISABLE_X_REQUESTED_WITH = bool;
        DEFAULT_APK_DOWNLOAD_TYPE = 0;
        DEFAULT_RESUMABLE_DOWNLOAD = bool;
        DEFAULT_USE_DOWNLOADED_APK = bool;
        DEFAULT_ENABLE_DEEPLINK_AND_LANDING_PAGE = bool;
        DEFAULT_CLICK_LOSE_RATE = 0;
    }

    public SlotAdSetting(RvAdSetting rv_setting, SplashAdSetting splash_setting, NativeAdSetting native_setting, Integer retry_count, Boolean disable_x_requested_with, InterstitialSetting interstitial_setting, Integer apk_download_type, Boolean resumable_download, Boolean use_downloaded_apk, Boolean enable_deeplink_and_landing_page, List<String> market_package_name, List<LinkAction> link_actions, Integer click_lose_rate) {
        this(rv_setting, splash_setting, native_setting, retry_count, disable_x_requested_with, interstitial_setting, apk_download_type, resumable_download, use_downloaded_apk, enable_deeplink_and_landing_page, market_package_name, link_actions, click_lose_rate, ByteString.EMPTY);
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof SlotAdSetting)) {
            return false;
        }
        SlotAdSetting slotAdSetting = (SlotAdSetting) other;
        return unknownFields().equals(slotAdSetting.unknownFields()) && Internal.equals(this.rv_setting, slotAdSetting.rv_setting) && Internal.equals(this.splash_setting, slotAdSetting.splash_setting) && Internal.equals(this.native_setting, slotAdSetting.native_setting) && Internal.equals(this.retry_count, slotAdSetting.retry_count) && Internal.equals(this.disable_x_requested_with, slotAdSetting.disable_x_requested_with) && Internal.equals(this.interstitial_setting, slotAdSetting.interstitial_setting) && Internal.equals(this.apk_download_type, slotAdSetting.apk_download_type) && Internal.equals(this.resumable_download, slotAdSetting.resumable_download) && Internal.equals(this.use_downloaded_apk, slotAdSetting.use_downloaded_apk) && Internal.equals(this.enable_deeplink_and_landing_page, slotAdSetting.enable_deeplink_and_landing_page) && this.market_package_name.equals(slotAdSetting.market_package_name) && this.link_actions.equals(slotAdSetting.link_actions) && Internal.equals(this.click_lose_rate, slotAdSetting.click_lose_rate);
    }

    public int hashCode() {
        int i10 = this.hashCode;
        if (i10 != 0) {
            return i10;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        RvAdSetting rvAdSetting = this.rv_setting;
        int iHashCode2 = (iHashCode + (rvAdSetting != null ? rvAdSetting.hashCode() : 0)) * 37;
        SplashAdSetting splashAdSetting = this.splash_setting;
        int iHashCode3 = (iHashCode2 + (splashAdSetting != null ? splashAdSetting.hashCode() : 0)) * 37;
        NativeAdSetting nativeAdSetting = this.native_setting;
        int iHashCode4 = (iHashCode3 + (nativeAdSetting != null ? nativeAdSetting.hashCode() : 0)) * 37;
        Integer num = this.retry_count;
        int iHashCode5 = (iHashCode4 + (num != null ? num.hashCode() : 0)) * 37;
        Boolean bool = this.disable_x_requested_with;
        int iHashCode6 = (iHashCode5 + (bool != null ? bool.hashCode() : 0)) * 37;
        InterstitialSetting interstitialSetting = this.interstitial_setting;
        int iHashCode7 = (iHashCode6 + (interstitialSetting != null ? interstitialSetting.hashCode() : 0)) * 37;
        Integer num2 = this.apk_download_type;
        int iHashCode8 = (iHashCode7 + (num2 != null ? num2.hashCode() : 0)) * 37;
        Boolean bool2 = this.resumable_download;
        int iHashCode9 = (iHashCode8 + (bool2 != null ? bool2.hashCode() : 0)) * 37;
        Boolean bool3 = this.use_downloaded_apk;
        int iHashCode10 = (iHashCode9 + (bool3 != null ? bool3.hashCode() : 0)) * 37;
        Boolean bool4 = this.enable_deeplink_and_landing_page;
        int iHashCode11 = (((((iHashCode10 + (bool4 != null ? bool4.hashCode() : 0)) * 37) + this.market_package_name.hashCode()) * 37) + this.link_actions.hashCode()) * 37;
        Integer num3 = this.click_lose_rate;
        int iHashCode12 = iHashCode11 + (num3 != null ? num3.hashCode() : 0);
        this.hashCode = iHashCode12;
        return iHashCode12;
    }

    @Override // com.czhj.wire.Message
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        if (this.rv_setting != null) {
            sb2.append(", rv_setting=");
            sb2.append(this.rv_setting);
        }
        if (this.splash_setting != null) {
            sb2.append(", splash_setting=");
            sb2.append(this.splash_setting);
        }
        if (this.native_setting != null) {
            sb2.append(", native_setting=");
            sb2.append(this.native_setting);
        }
        if (this.retry_count != null) {
            sb2.append(", retry_count=");
            sb2.append(this.retry_count);
        }
        if (this.disable_x_requested_with != null) {
            sb2.append(", disable_x_requested_with=");
            sb2.append(this.disable_x_requested_with);
        }
        if (this.interstitial_setting != null) {
            sb2.append(", interstitial_setting=");
            sb2.append(this.interstitial_setting);
        }
        if (this.apk_download_type != null) {
            sb2.append(", apk_download_type=");
            sb2.append(this.apk_download_type);
        }
        if (this.resumable_download != null) {
            sb2.append(", resumable_download=");
            sb2.append(this.resumable_download);
        }
        if (this.use_downloaded_apk != null) {
            sb2.append(", use_downloaded_apk=");
            sb2.append(this.use_downloaded_apk);
        }
        if (this.enable_deeplink_and_landing_page != null) {
            sb2.append(", enable_deeplink_and_landing_page=");
            sb2.append(this.enable_deeplink_and_landing_page);
        }
        if (!this.market_package_name.isEmpty()) {
            sb2.append(", market_package_name=");
            sb2.append(this.market_package_name);
        }
        if (!this.link_actions.isEmpty()) {
            sb2.append(", link_actions=");
            sb2.append(this.link_actions);
        }
        if (this.click_lose_rate != null) {
            sb2.append(", click_lose_rate=");
            sb2.append(this.click_lose_rate);
        }
        StringBuilder sbReplace = sb2.replace(0, 2, "SlotAdSetting{");
        sbReplace.append('}');
        return sbReplace.toString();
    }

    public SlotAdSetting(RvAdSetting rv_setting, SplashAdSetting splash_setting, NativeAdSetting native_setting, Integer retry_count, Boolean disable_x_requested_with, InterstitialSetting interstitial_setting, Integer apk_download_type, Boolean resumable_download, Boolean use_downloaded_apk, Boolean enable_deeplink_and_landing_page, List<String> market_package_name, List<LinkAction> link_actions, Integer click_lose_rate, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        this.rv_setting = rv_setting;
        this.splash_setting = splash_setting;
        this.native_setting = native_setting;
        this.retry_count = retry_count;
        this.disable_x_requested_with = disable_x_requested_with;
        this.interstitial_setting = interstitial_setting;
        this.apk_download_type = apk_download_type;
        this.resumable_download = resumable_download;
        this.use_downloaded_apk = use_downloaded_apk;
        this.enable_deeplink_and_landing_page = enable_deeplink_and_landing_page;
        this.market_package_name = Internal.immutableCopyOf("market_package_name", market_package_name);
        this.link_actions = Internal.immutableCopyOf("link_actions", link_actions);
        this.click_lose_rate = click_lose_rate;
    }

    @Override // com.czhj.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.rv_setting = this.rv_setting;
        builder.splash_setting = this.splash_setting;
        builder.native_setting = this.native_setting;
        builder.retry_count = this.retry_count;
        builder.disable_x_requested_with = this.disable_x_requested_with;
        builder.interstitial_setting = this.interstitial_setting;
        builder.apk_download_type = this.apk_download_type;
        builder.resumable_download = this.resumable_download;
        builder.use_downloaded_apk = this.use_downloaded_apk;
        builder.enable_deeplink_and_landing_page = this.enable_deeplink_and_landing_page;
        builder.market_package_name = Internal.copyOf("market_package_name", this.market_package_name);
        builder.link_actions = Internal.copyOf("link_actions", this.link_actions);
        builder.click_lose_rate = this.click_lose_rate;
        builder.addUnknownFields(unknownFields());
        return builder;
    }
}
