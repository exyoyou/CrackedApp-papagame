package com.join.mgps.dto;

import com.kwad.sdk.api.model.AdnName;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\u001c\b\u0002\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003j\n\u0012\u0004\u0012\u00020\u0004\u0018\u0001`\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u001d\u0010\n\u001a\u0016\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003j\n\u0012\u0004\u0012\u00020\u0004\u0018\u0001`\u0005HÆ\u0003J'\u0010\u000b\u001a\u00020\u00002\u001c\b\u0002\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003j\n\u0012\u0004\u0012\u00020\u0004\u0018\u0001`\u0005HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001R%\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003j\n\u0012\u0004\u0012\u00020\u0004\u0018\u0001`\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\u0013"}, d2 = {"Lcom/join/mgps/dto/CloudBannerBean;", "", "personal_center_banner", "Ljava/util/ArrayList;", "Lcom/join/mgps/dto/CloudGameBanner;", "Lkotlin/collections/ArrayList;", "<init>", "(Ljava/util/ArrayList;)V", "getPersonal_center_banner", "()Ljava/util/ArrayList;", "component1", "copy", "equals", "", AdnName.OTHER, "hashCode", "", "toString", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class CloudBannerBean {

    @Nullable
    private final ArrayList<CloudGameBanner> personal_center_banner;

    /* JADX WARN: Multi-variable type inference failed */
    public CloudBannerBean() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CloudBannerBean copy$default(CloudBannerBean cloudBannerBean, ArrayList arrayList, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            arrayList = cloudBannerBean.personal_center_banner;
        }
        return cloudBannerBean.copy(arrayList);
    }

    @Nullable
    public final ArrayList<CloudGameBanner> component1() {
        return this.personal_center_banner;
    }

    @NotNull
    public final CloudBannerBean copy(@Nullable ArrayList<CloudGameBanner> personal_center_banner) {
        return new CloudBannerBean(personal_center_banner);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof CloudBannerBean) && Intrinsics.areEqual(this.personal_center_banner, ((CloudBannerBean) other).personal_center_banner);
    }

    @Nullable
    public final ArrayList<CloudGameBanner> getPersonal_center_banner() {
        return this.personal_center_banner;
    }

    public int hashCode() {
        ArrayList<CloudGameBanner> arrayList = this.personal_center_banner;
        if (arrayList == null) {
            return 0;
        }
        return arrayList.hashCode();
    }

    @NotNull
    public String toString() {
        return "CloudBannerBean(personal_center_banner=" + this.personal_center_banner + ')';
    }

    public CloudBannerBean(@Nullable ArrayList<CloudGameBanner> arrayList) {
        this.personal_center_banner = arrayList;
    }

    public /* synthetic */ CloudBannerBean(ArrayList arrayList, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : arrayList);
    }
}
