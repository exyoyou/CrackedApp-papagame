package com.join.mgps.dto;

import com.kwad.sdk.api.model.AdnName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000b\u0010\n\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J!\u0010\f\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\b¨\u0006\u0013"}, d2 = {"Lcom/join/mgps/dto/CloudGameBanner;", "", "pic_path", "", "vip_url", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "getPic_path", "()Ljava/lang/String;", "getVip_url", "component1", "component2", "copy", "equals", "", AdnName.OTHER, "hashCode", "", "toString", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class CloudGameBanner {

    @Nullable
    private final String pic_path;

    @Nullable
    private final String vip_url;

    /* JADX WARN: Multi-variable type inference failed */
    public CloudGameBanner() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public static /* synthetic */ CloudGameBanner copy$default(CloudGameBanner cloudGameBanner, String str, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = cloudGameBanner.pic_path;
        }
        if ((i10 & 2) != 0) {
            str2 = cloudGameBanner.vip_url;
        }
        return cloudGameBanner.copy(str, str2);
    }

    @Nullable
    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getPic_path() {
        return this.pic_path;
    }

    @Nullable
    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getVip_url() {
        return this.vip_url;
    }

    @NotNull
    public final CloudGameBanner copy(@Nullable String pic_path, @Nullable String vip_url) {
        return new CloudGameBanner(pic_path, vip_url);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CloudGameBanner)) {
            return false;
        }
        CloudGameBanner cloudGameBanner = (CloudGameBanner) other;
        return Intrinsics.areEqual(this.pic_path, cloudGameBanner.pic_path) && Intrinsics.areEqual(this.vip_url, cloudGameBanner.vip_url);
    }

    @Nullable
    public final String getPic_path() {
        return this.pic_path;
    }

    @Nullable
    public final String getVip_url() {
        return this.vip_url;
    }

    public int hashCode() {
        String str = this.pic_path;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.vip_url;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "CloudGameBanner(pic_path=" + this.pic_path + ", vip_url=" + this.vip_url + ')';
    }

    public CloudGameBanner(@Nullable String str, @Nullable String str2) {
        this.pic_path = str;
        this.vip_url = str2;
    }

    public /* synthetic */ CloudGameBanner(String str, String str2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? "" : str, (i10 & 2) != 0 ? "" : str2);
    }
}
