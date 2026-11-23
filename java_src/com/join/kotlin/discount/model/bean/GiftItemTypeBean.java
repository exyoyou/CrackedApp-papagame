package com.join.kotlin.discount.model.bean;

import com.kwad.sdk.api.model.AdnName;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B-\u0012\u0010\u0010\u0002\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\t\u0010\nJ\u0013\u0010\u0012\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u000eJ\u000b\u0010\u0014\u001a\u0004\u0018\u00010\bHÆ\u0003J:\u0010\u0015\u001a\u00020\u00002\u0012\b\u0002\u0010\u0002\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\bHÆ\u0001¢\u0006\u0002\u0010\u0016J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u0006HÖ\u0001J\t\u0010\u001b\u001a\u00020\bHÖ\u0001R\u001b\u0010\u0002\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0015\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\n\n\u0002\u0010\u000f\u001a\u0004\b\r\u0010\u000eR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u001c"}, d2 = {"Lcom/join/kotlin/discount/model/bean/GiftItemTypeBean;", "", "gifts", "", "Lcom/join/kotlin/discount/model/bean/GiftItemBean;", "type", "", "typeName", "", "<init>", "(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;)V", "getGifts", "()Ljava/util/List;", "getType", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getTypeName", "()Ljava/lang/String;", "component1", "component2", "component3", "copy", "(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;)Lcom/join/kotlin/discount/model/bean/GiftItemTypeBean;", "equals", "", AdnName.OTHER, "hashCode", "toString", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class GiftItemTypeBean {

    @Nullable
    private final List<GiftItemBean> gifts;

    @Nullable
    private final Integer type;

    @Nullable
    private final String typeName;

    public GiftItemTypeBean(@Nullable List<GiftItemBean> list, @Nullable Integer num, @Nullable String str) {
        this.gifts = list;
        this.type = num;
        this.typeName = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ GiftItemTypeBean copy$default(GiftItemTypeBean giftItemTypeBean, List list, Integer num, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            list = giftItemTypeBean.gifts;
        }
        if ((i10 & 2) != 0) {
            num = giftItemTypeBean.type;
        }
        if ((i10 & 4) != 0) {
            str = giftItemTypeBean.typeName;
        }
        return giftItemTypeBean.copy(list, num, str);
    }

    @Nullable
    public final List<GiftItemBean> component1() {
        return this.gifts;
    }

    @Nullable
    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Integer getType() {
        return this.type;
    }

    @Nullable
    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getTypeName() {
        return this.typeName;
    }

    @NotNull
    public final GiftItemTypeBean copy(@Nullable List<GiftItemBean> gifts, @Nullable Integer type, @Nullable String typeName) {
        return new GiftItemTypeBean(gifts, type, typeName);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof GiftItemTypeBean)) {
            return false;
        }
        GiftItemTypeBean giftItemTypeBean = (GiftItemTypeBean) other;
        return Intrinsics.areEqual(this.gifts, giftItemTypeBean.gifts) && Intrinsics.areEqual(this.type, giftItemTypeBean.type) && Intrinsics.areEqual(this.typeName, giftItemTypeBean.typeName);
    }

    @Nullable
    public final List<GiftItemBean> getGifts() {
        return this.gifts;
    }

    @Nullable
    public final Integer getType() {
        return this.type;
    }

    @Nullable
    public final String getTypeName() {
        return this.typeName;
    }

    public int hashCode() {
        List<GiftItemBean> list = this.gifts;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        Integer num = this.type;
        int iHashCode2 = (iHashCode + (num == null ? 0 : num.hashCode())) * 31;
        String str = this.typeName;
        return iHashCode2 + (str != null ? str.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "GiftItemTypeBean(gifts=" + this.gifts + ", type=" + this.type + ", typeName=" + this.typeName + ')';
    }
}
