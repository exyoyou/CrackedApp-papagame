package com.join.kotlin.autocode.dailyfind.model.args;

import com.haima.hmcp.widgets.BaseVideoView;
import com.kwad.sdk.api.model.AdnName;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0010\t\n\u0002\b\u001b\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BI\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000eJ\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0011\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0005HÆ\u0003JP\u0010!\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\"J\u0013\u0010#\u001a\u00020$2\b\u0010%\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010&\u001a\u00020\u0003HÖ\u0001J\t\u0010'\u001a\u00020\u0005HÖ\u0001R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u000f\u001a\u0004\b\r\u0010\u000eR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\"\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0011\"\u0004\b\u0019\u0010\u0013R\u001c\u0010\n\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0011\"\u0004\b\u001b\u0010\u0013¨\u0006("}, d2 = {"Lcom/join/kotlin/autocode/dailyfind/model/args/DailyDiscoverArgs;", "", "currentDate", "", "date", "", "downloadedGameIdList", "", "", "uid", BaseVideoView.USER_TOKEN, "<init>", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V", "getCurrentDate", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getDate", "()Ljava/lang/String;", "setDate", "(Ljava/lang/String;)V", "getDownloadedGameIdList", "()Ljava/util/List;", "setDownloadedGameIdList", "(Ljava/util/List;)V", "getUid", "setUid", "getUserToken", "setUserToken", "component1", "component2", "component3", "component4", "component5", "copy", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/join/kotlin/autocode/dailyfind/model/args/DailyDiscoverArgs;", "equals", "", AdnName.OTHER, "hashCode", "toString", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class DailyDiscoverArgs {

    @Nullable
    private final Integer currentDate;

    @Nullable
    private String date;

    @Nullable
    private List<Long> downloadedGameIdList;

    @Nullable
    private String uid;

    @Nullable
    private String userToken;

    public DailyDiscoverArgs() {
        this(null, null, null, null, null, 31, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ DailyDiscoverArgs copy$default(DailyDiscoverArgs dailyDiscoverArgs, Integer num, String str, List list, String str2, String str3, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            num = dailyDiscoverArgs.currentDate;
        }
        if ((i10 & 2) != 0) {
            str = dailyDiscoverArgs.date;
        }
        String str4 = str;
        if ((i10 & 4) != 0) {
            list = dailyDiscoverArgs.downloadedGameIdList;
        }
        List list2 = list;
        if ((i10 & 8) != 0) {
            str2 = dailyDiscoverArgs.uid;
        }
        String str5 = str2;
        if ((i10 & 16) != 0) {
            str3 = dailyDiscoverArgs.userToken;
        }
        return dailyDiscoverArgs.copy(num, str4, list2, str5, str3);
    }

    @Nullable
    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Integer getCurrentDate() {
        return this.currentDate;
    }

    @Nullable
    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getDate() {
        return this.date;
    }

    @Nullable
    public final List<Long> component3() {
        return this.downloadedGameIdList;
    }

    @Nullable
    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getUid() {
        return this.uid;
    }

    @Nullable
    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getUserToken() {
        return this.userToken;
    }

    @NotNull
    public final DailyDiscoverArgs copy(@Nullable Integer currentDate, @Nullable String date, @Nullable List<Long> downloadedGameIdList, @Nullable String uid, @Nullable String userToken) {
        return new DailyDiscoverArgs(currentDate, date, downloadedGameIdList, uid, userToken);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DailyDiscoverArgs)) {
            return false;
        }
        DailyDiscoverArgs dailyDiscoverArgs = (DailyDiscoverArgs) other;
        return Intrinsics.areEqual(this.currentDate, dailyDiscoverArgs.currentDate) && Intrinsics.areEqual(this.date, dailyDiscoverArgs.date) && Intrinsics.areEqual(this.downloadedGameIdList, dailyDiscoverArgs.downloadedGameIdList) && Intrinsics.areEqual(this.uid, dailyDiscoverArgs.uid) && Intrinsics.areEqual(this.userToken, dailyDiscoverArgs.userToken);
    }

    @Nullable
    public final Integer getCurrentDate() {
        return this.currentDate;
    }

    @Nullable
    public final String getDate() {
        return this.date;
    }

    @Nullable
    public final List<Long> getDownloadedGameIdList() {
        return this.downloadedGameIdList;
    }

    @Nullable
    public final String getUid() {
        return this.uid;
    }

    @Nullable
    public final String getUserToken() {
        return this.userToken;
    }

    public int hashCode() {
        Integer num = this.currentDate;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        String str = this.date;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        List<Long> list = this.downloadedGameIdList;
        int iHashCode3 = (iHashCode2 + (list == null ? 0 : list.hashCode())) * 31;
        String str2 = this.uid;
        int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.userToken;
        return iHashCode4 + (str3 != null ? str3.hashCode() : 0);
    }

    public final void setDate(@Nullable String str) {
        this.date = str;
    }

    public final void setDownloadedGameIdList(@Nullable List<Long> list) {
        this.downloadedGameIdList = list;
    }

    public final void setUid(@Nullable String str) {
        this.uid = str;
    }

    public final void setUserToken(@Nullable String str) {
        this.userToken = str;
    }

    @NotNull
    public String toString() {
        return "DailyDiscoverArgs(currentDate=" + this.currentDate + ", date=" + this.date + ", downloadedGameIdList=" + this.downloadedGameIdList + ", uid=" + this.uid + ", userToken=" + this.userToken + ')';
    }

    public DailyDiscoverArgs(@Nullable Integer num, @Nullable String str, @Nullable List<Long> list, @Nullable String str2, @Nullable String str3) {
        this.currentDate = num;
        this.date = str;
        this.downloadedGameIdList = list;
        this.uid = str2;
        this.userToken = str3;
    }

    public /* synthetic */ DailyDiscoverArgs(Integer num, String str, List list, String str2, String str3, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? 0 : num, (i10 & 2) != 0 ? "" : str, (i10 & 4) != 0 ? null : list, (i10 & 8) != 0 ? "" : str2, (i10 & 16) == 0 ? str3 : "");
    }
}
