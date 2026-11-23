package com.join.mgps.dto;

import com.join.mgps.activity.posting.PostingActivity_;
import com.kwad.sdk.api.model.AdnName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0017\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BA\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u001d\u001a\u00020\bHÆ\u0003JC\u0010\u001e\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0007\u001a\u00020\bHÆ\u0001J\u0013\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\"\u001a\u00020\bHÖ\u0001J\t\u0010#\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\f\"\u0004\b\u0010\u0010\u000eR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\f\"\u0004\b\u0012\u0010\u000eR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\f\"\u0004\b\u0014\u0010\u000eR\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018¨\u0006$"}, d2 = {"Lcom/join/mgps/dto/Item;", "", "desc", "", "itemId", "jumpUrl", PostingActivity_.LABEL_EXTRA, "status", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V", "getDesc", "()Ljava/lang/String;", "setDesc", "(Ljava/lang/String;)V", "getItemId", "setItemId", "getJumpUrl", "setJumpUrl", "getLabel", "setLabel", "getStatus", "()I", "setStatus", "(I)V", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", AdnName.OTHER, "hashCode", "toString", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class Item {

    @Nullable
    private String desc;

    @Nullable
    private String itemId;

    @Nullable
    private String jumpUrl;

    @Nullable
    private String label;
    private int status;

    public Item() {
        this(null, null, null, null, 0, 31, null);
    }

    public static /* synthetic */ Item copy$default(Item item, String str, String str2, String str3, String str4, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = item.desc;
        }
        if ((i11 & 2) != 0) {
            str2 = item.itemId;
        }
        String str5 = str2;
        if ((i11 & 4) != 0) {
            str3 = item.jumpUrl;
        }
        String str6 = str3;
        if ((i11 & 8) != 0) {
            str4 = item.label;
        }
        String str7 = str4;
        if ((i11 & 16) != 0) {
            i10 = item.status;
        }
        return item.copy(str, str5, str6, str7, i10);
    }

    @Nullable
    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getDesc() {
        return this.desc;
    }

    @Nullable
    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getItemId() {
        return this.itemId;
    }

    @Nullable
    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getJumpUrl() {
        return this.jumpUrl;
    }

    @Nullable
    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getLabel() {
        return this.label;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final int getStatus() {
        return this.status;
    }

    @NotNull
    public final Item copy(@Nullable String desc, @Nullable String itemId, @Nullable String jumpUrl, @Nullable String label, int status) {
        return new Item(desc, itemId, jumpUrl, label, status);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Item)) {
            return false;
        }
        Item item = (Item) other;
        return Intrinsics.areEqual(this.desc, item.desc) && Intrinsics.areEqual(this.itemId, item.itemId) && Intrinsics.areEqual(this.jumpUrl, item.jumpUrl) && Intrinsics.areEqual(this.label, item.label) && this.status == item.status;
    }

    @Nullable
    public final String getDesc() {
        return this.desc;
    }

    @Nullable
    public final String getItemId() {
        return this.itemId;
    }

    @Nullable
    public final String getJumpUrl() {
        return this.jumpUrl;
    }

    @Nullable
    public final String getLabel() {
        return this.label;
    }

    public final int getStatus() {
        return this.status;
    }

    public int hashCode() {
        String str = this.desc;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.itemId;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.jumpUrl;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.label;
        return ((iHashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31) + this.status;
    }

    public final void setDesc(@Nullable String str) {
        this.desc = str;
    }

    public final void setItemId(@Nullable String str) {
        this.itemId = str;
    }

    public final void setJumpUrl(@Nullable String str) {
        this.jumpUrl = str;
    }

    public final void setLabel(@Nullable String str) {
        this.label = str;
    }

    public final void setStatus(int i10) {
        this.status = i10;
    }

    @NotNull
    public String toString() {
        return "Item(desc=" + this.desc + ", itemId=" + this.itemId + ", jumpUrl=" + this.jumpUrl + ", label=" + this.label + ", status=" + this.status + ')';
    }

    public Item(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, int i10) {
        this.desc = str;
        this.itemId = str2;
        this.jumpUrl = str3;
        this.label = str4;
        this.status = i10;
    }

    public /* synthetic */ Item(String str, String str2, String str3, String str4, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : str3, (i11 & 8) == 0 ? str4 : null, (i11 & 16) != 0 ? 0 : i10);
    }
}
