package com.join.kotlin.ui.account.modle;

import com.haima.hmcp.widgets.BaseVideoView;
import com.join.mgps.dto.Constant;
import com.kwad.sdk.api.model.AdnName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b+\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003¢\u0006\u0004\b\n\u0010\u000bJ\t\u0010+\u001a\u00020\u0003HÆ\u0003J\t\u0010,\u001a\u00020\u0003HÆ\u0003J\t\u0010-\u001a\u00020\u0003HÆ\u0003J\t\u0010.\u001a\u00020\u0007HÆ\u0003J\t\u0010/\u001a\u00020\u0003HÆ\u0003J\t\u00100\u001a\u00020\u0003HÆ\u0003JE\u00101\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u0003HÆ\u0001J\u0013\u00102\u001a\u0002032\b\u00104\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00105\u001a\u00020\u0007HÖ\u0001J\t\u00106\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\r\"\u0004\b\u0011\u0010\u000fR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\r\"\u0004\b\u0013\u0010\u000fR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001a\u0010\b\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\r\"\u0004\b\u0019\u0010\u000fR\u001a\u0010\t\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\r\"\u0004\b\u001b\u0010\u000fR\u001a\u0010\u001c\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\r\"\u0004\b\u001e\u0010\u000fR\u001a\u0010\u001f\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\r\"\u0004\b!\u0010\u000fR\u001a\u0010\"\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\r\"\u0004\b$\u0010\u000fR\u001a\u0010%\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010\r\"\u0004\b'\u0010\u000fR\u001a\u0010(\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010\r\"\u0004\b*\u0010\u000f¨\u00067"}, d2 = {"Lcom/join/kotlin/ui/account/modle/UnThirdPartRequest;", "", "mobile", "", "smsCode", Constant.MD5, "uid", "", BaseVideoView.USER_TOKEN, "platformType", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V", "getMobile", "()Ljava/lang/String;", "setMobile", "(Ljava/lang/String;)V", "getSmsCode", "setSmsCode", "getSign", "setSign", "getUid", "()I", "setUid", "(I)V", "getUserToken", "setUserToken", "getPlatformType", "setPlatformType", "deviceId", "getDeviceId", "setDeviceId", "mac", "getMac", "setMac", "packageName", "getPackageName", "setPackageName", "packageType", "getPackageType", "setPackageType", "version", "getVersion", "setVersion", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", AdnName.OTHER, "hashCode", "toString", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class UnThirdPartRequest {

    @NotNull
    private String deviceId;

    @NotNull
    private String mac;

    @NotNull
    private String mobile;

    @NotNull
    private String packageName;

    @NotNull
    private String packageType;

    @NotNull
    private String platformType;

    @NotNull
    private String sign;

    @NotNull
    private String smsCode;
    private int uid;

    @NotNull
    private String userToken;

    @NotNull
    private String version;

    public UnThirdPartRequest(@NotNull String mobile, @NotNull String smsCode, @NotNull String sign, int i10, @NotNull String userToken, @NotNull String platformType) {
        Intrinsics.checkNotNullParameter(mobile, "mobile");
        Intrinsics.checkNotNullParameter(smsCode, "smsCode");
        Intrinsics.checkNotNullParameter(sign, "sign");
        Intrinsics.checkNotNullParameter(userToken, "userToken");
        Intrinsics.checkNotNullParameter(platformType, "platformType");
        this.mobile = mobile;
        this.smsCode = smsCode;
        this.sign = sign;
        this.uid = i10;
        this.userToken = userToken;
        this.platformType = platformType;
        this.deviceId = "";
        this.mac = "";
        this.packageName = "com.join.android.app.mgsim.wufun";
        this.packageType = "wufun";
        this.version = "517_6.1.7.0";
    }

    public static /* synthetic */ UnThirdPartRequest copy$default(UnThirdPartRequest unThirdPartRequest, String str, String str2, String str3, int i10, String str4, String str5, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = unThirdPartRequest.mobile;
        }
        if ((i11 & 2) != 0) {
            str2 = unThirdPartRequest.smsCode;
        }
        String str6 = str2;
        if ((i11 & 4) != 0) {
            str3 = unThirdPartRequest.sign;
        }
        String str7 = str3;
        if ((i11 & 8) != 0) {
            i10 = unThirdPartRequest.uid;
        }
        int i12 = i10;
        if ((i11 & 16) != 0) {
            str4 = unThirdPartRequest.userToken;
        }
        String str8 = str4;
        if ((i11 & 32) != 0) {
            str5 = unThirdPartRequest.platformType;
        }
        return unThirdPartRequest.copy(str, str6, str7, i12, str8, str5);
    }

    @NotNull
    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getMobile() {
        return this.mobile;
    }

    @NotNull
    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getSmsCode() {
        return this.smsCode;
    }

    @NotNull
    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getSign() {
        return this.sign;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final int getUid() {
        return this.uid;
    }

    @NotNull
    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getUserToken() {
        return this.userToken;
    }

    @NotNull
    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getPlatformType() {
        return this.platformType;
    }

    @NotNull
    public final UnThirdPartRequest copy(@NotNull String mobile, @NotNull String smsCode, @NotNull String sign, int uid, @NotNull String userToken, @NotNull String platformType) {
        Intrinsics.checkNotNullParameter(mobile, "mobile");
        Intrinsics.checkNotNullParameter(smsCode, "smsCode");
        Intrinsics.checkNotNullParameter(sign, "sign");
        Intrinsics.checkNotNullParameter(userToken, "userToken");
        Intrinsics.checkNotNullParameter(platformType, "platformType");
        return new UnThirdPartRequest(mobile, smsCode, sign, uid, userToken, platformType);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UnThirdPartRequest)) {
            return false;
        }
        UnThirdPartRequest unThirdPartRequest = (UnThirdPartRequest) other;
        return Intrinsics.areEqual(this.mobile, unThirdPartRequest.mobile) && Intrinsics.areEqual(this.smsCode, unThirdPartRequest.smsCode) && Intrinsics.areEqual(this.sign, unThirdPartRequest.sign) && this.uid == unThirdPartRequest.uid && Intrinsics.areEqual(this.userToken, unThirdPartRequest.userToken) && Intrinsics.areEqual(this.platformType, unThirdPartRequest.platformType);
    }

    @NotNull
    public final String getDeviceId() {
        return this.deviceId;
    }

    @NotNull
    public final String getMac() {
        return this.mac;
    }

    @NotNull
    public final String getMobile() {
        return this.mobile;
    }

    @NotNull
    public final String getPackageName() {
        return this.packageName;
    }

    @NotNull
    public final String getPackageType() {
        return this.packageType;
    }

    @NotNull
    public final String getPlatformType() {
        return this.platformType;
    }

    @NotNull
    public final String getSign() {
        return this.sign;
    }

    @NotNull
    public final String getSmsCode() {
        return this.smsCode;
    }

    public final int getUid() {
        return this.uid;
    }

    @NotNull
    public final String getUserToken() {
        return this.userToken;
    }

    @NotNull
    public final String getVersion() {
        return this.version;
    }

    public int hashCode() {
        return (((((((((this.mobile.hashCode() * 31) + this.smsCode.hashCode()) * 31) + this.sign.hashCode()) * 31) + this.uid) * 31) + this.userToken.hashCode()) * 31) + this.platformType.hashCode();
    }

    public final void setDeviceId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.deviceId = str;
    }

    public final void setMac(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.mac = str;
    }

    public final void setMobile(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.mobile = str;
    }

    public final void setPackageName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.packageName = str;
    }

    public final void setPackageType(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.packageType = str;
    }

    public final void setPlatformType(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.platformType = str;
    }

    public final void setSign(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.sign = str;
    }

    public final void setSmsCode(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.smsCode = str;
    }

    public final void setUid(int i10) {
        this.uid = i10;
    }

    public final void setUserToken(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.userToken = str;
    }

    public final void setVersion(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.version = str;
    }

    @NotNull
    public String toString() {
        return "UnThirdPartRequest(mobile=" + this.mobile + ", smsCode=" + this.smsCode + ", sign=" + this.sign + ", uid=" + this.uid + ", userToken=" + this.userToken + ", platformType=" + this.platformType + ')';
    }
}
