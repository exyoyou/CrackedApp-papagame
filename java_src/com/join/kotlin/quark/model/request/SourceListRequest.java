package com.join.kotlin.quark.model.request;

import com.czhj.sdk.common.Constants;
import com.join.kotlin.quark.model.bean.Page;
import com.kwad.sdk.api.model.AdnName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\t\u0010\nJ\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u000eJ\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0007HÆ\u0003J>\u0010\u0017\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010\u0018J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001c\u001a\u00020\u0005HÖ\u0001J\t\u0010\u001d\u001a\u00020\u0007HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\n\n\u0002\u0010\u000f\u001a\u0004\b\r\u0010\u000eR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0013\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0011¨\u0006\u001e"}, d2 = {"Lcom/join/kotlin/quark/model/request/SourceListRequest;", "", "page", "Lcom/join/kotlin/quark/model/bean/Page;", "tabId", "", Constants.TOKEN, "", "uid", "<init>", "(Lcom/join/kotlin/quark/model/bean/Page;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V", "getPage", "()Lcom/join/kotlin/quark/model/bean/Page;", "getTabId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getToken", "()Ljava/lang/String;", "getUid", "component1", "component2", "component3", "component4", "copy", "(Lcom/join/kotlin/quark/model/bean/Page;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/join/kotlin/quark/model/request/SourceListRequest;", "equals", "", AdnName.OTHER, "hashCode", "toString", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class SourceListRequest {

    @Nullable
    private final Page page;

    @Nullable
    private final Integer tabId;

    @Nullable
    private final String token;

    @Nullable
    private final String uid;

    public SourceListRequest(@Nullable Page page, @Nullable Integer num, @Nullable String str, @Nullable String str2) {
        this.page = page;
        this.tabId = num;
        this.token = str;
        this.uid = str2;
    }

    public static /* synthetic */ SourceListRequest copy$default(SourceListRequest sourceListRequest, Page page, Integer num, String str, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            page = sourceListRequest.page;
        }
        if ((i10 & 2) != 0) {
            num = sourceListRequest.tabId;
        }
        if ((i10 & 4) != 0) {
            str = sourceListRequest.token;
        }
        if ((i10 & 8) != 0) {
            str2 = sourceListRequest.uid;
        }
        return sourceListRequest.copy(page, num, str, str2);
    }

    @Nullable
    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Page getPage() {
        return this.page;
    }

    @Nullable
    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Integer getTabId() {
        return this.tabId;
    }

    @Nullable
    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getToken() {
        return this.token;
    }

    @Nullable
    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getUid() {
        return this.uid;
    }

    @NotNull
    public final SourceListRequest copy(@Nullable Page page, @Nullable Integer tabId, @Nullable String token, @Nullable String uid) {
        return new SourceListRequest(page, tabId, token, uid);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SourceListRequest)) {
            return false;
        }
        SourceListRequest sourceListRequest = (SourceListRequest) other;
        return Intrinsics.areEqual(this.page, sourceListRequest.page) && Intrinsics.areEqual(this.tabId, sourceListRequest.tabId) && Intrinsics.areEqual(this.token, sourceListRequest.token) && Intrinsics.areEqual(this.uid, sourceListRequest.uid);
    }

    @Nullable
    public final Page getPage() {
        return this.page;
    }

    @Nullable
    public final Integer getTabId() {
        return this.tabId;
    }

    @Nullable
    public final String getToken() {
        return this.token;
    }

    @Nullable
    public final String getUid() {
        return this.uid;
    }

    public int hashCode() {
        Page page = this.page;
        int iHashCode = (page == null ? 0 : page.hashCode()) * 31;
        Integer num = this.tabId;
        int iHashCode2 = (iHashCode + (num == null ? 0 : num.hashCode())) * 31;
        String str = this.token;
        int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.uid;
        return iHashCode3 + (str2 != null ? str2.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "SourceListRequest(page=" + this.page + ", tabId=" + this.tabId + ", token=" + this.token + ", uid=" + this.uid + ')';
    }
}
