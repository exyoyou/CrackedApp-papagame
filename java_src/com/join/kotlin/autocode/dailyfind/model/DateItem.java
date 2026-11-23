package com.join.kotlin.autocode.dailyfind.model;

import com.google.android.material.timepicker.TimeModel;
import com.kuaishou.weapon.p0.t;
import com.kwad.sdk.api.model.AdnName;
import com.umeng.umcrash.UMCrash;
import java.util.Arrays;
import java.util.Calendar;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import r2.a;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u001f\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u0005¢\u0006\u0004\b\u000b\u0010\fJ\u0018\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u00032\u0006\u0010\u001f\u001a\u00020\u0003H\u0002J\t\u0010 \u001a\u00020\u0003HÆ\u0003J\t\u0010!\u001a\u00020\u0005HÆ\u0003J\t\u0010\"\u001a\u00020\u0007HÆ\u0003J\t\u0010#\u001a\u00020\tHÆ\u0003J\t\u0010$\u001a\u00020\u0005HÆ\u0003J;\u0010%\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u0005HÆ\u0001J\u0013\u0010&\u001a\u00020\u00052\b\u0010'\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010(\u001a\u00020)HÖ\u0001J\t\u0010*\u001a\u00020\u0007HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\u000fR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u001a\u0010\n\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u000f\"\u0004\b\u0017\u0010\u0018R\u0011\u0010\u0019\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u0011R\u0011\u0010\u001b\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u0011¨\u0006+"}, d2 = {"Lcom/join/kotlin/autocode/dailyfind/model/DateItem;", "", "calendar", "Ljava/util/Calendar;", "isToday", "", "dateStr", "", UMCrash.SP_KEY_TIMESTAMP, "", "explore", "<init>", "(Ljava/util/Calendar;ZLjava/lang/String;JZ)V", "getCalendar", "()Ljava/util/Calendar;", "()Z", "getDateStr", "()Ljava/lang/String;", "setDateStr", "(Ljava/lang/String;)V", "getTimestamp", "()J", "getExplore", "setExplore", "(Z)V", "weekdayLabel", "getWeekdayLabel", "dayLabel", "getDayLabel", "sameDay", "a", t.f74887l, "component1", "component2", "component3", "component4", "component5", "copy", "equals", AdnName.OTHER, "hashCode", "", "toString", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nDateItem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DateItem.kt\ncom/join/kotlin/autocode/dailyfind/model/DateItem\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,49:1\n1#2:50\n*E\n"})
public final /* data */ class DateItem {

    @NotNull
    private final Calendar calendar;

    @NotNull
    private String dateStr;
    private boolean explore;
    private final boolean isToday;
    private final long timestamp;

    public DateItem(@NotNull Calendar calendar, boolean z10, @NotNull String dateStr, long j10, boolean z11) {
        Intrinsics.checkNotNullParameter(calendar, "calendar");
        Intrinsics.checkNotNullParameter(dateStr, "dateStr");
        this.calendar = calendar;
        this.isToday = z10;
        this.dateStr = dateStr;
        this.timestamp = j10;
        this.explore = z11;
    }

    public static /* synthetic */ DateItem copy$default(DateItem dateItem, Calendar calendar, boolean z10, String str, long j10, boolean z11, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            calendar = dateItem.calendar;
        }
        if ((i10 & 2) != 0) {
            z10 = dateItem.isToday;
        }
        boolean z12 = z10;
        if ((i10 & 4) != 0) {
            str = dateItem.dateStr;
        }
        String str2 = str;
        if ((i10 & 8) != 0) {
            j10 = dateItem.timestamp;
        }
        long j11 = j10;
        if ((i10 & 16) != 0) {
            z11 = dateItem.explore;
        }
        return dateItem.copy(calendar, z12, str2, j11, z11);
    }

    private final boolean sameDay(Calendar a10, Calendar b10) {
        return a10.get(1) == b10.get(1) && a10.get(6) == b10.get(6);
    }

    @NotNull
    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Calendar getCalendar() {
        return this.calendar;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getIsToday() {
        return this.isToday;
    }

    @NotNull
    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getDateStr() {
        return this.dateStr;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final long getTimestamp() {
        return this.timestamp;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final boolean getExplore() {
        return this.explore;
    }

    @NotNull
    public final DateItem copy(@NotNull Calendar calendar, boolean isToday, @NotNull String dateStr, long timestamp, boolean explore) {
        Intrinsics.checkNotNullParameter(calendar, "calendar");
        Intrinsics.checkNotNullParameter(dateStr, "dateStr");
        return new DateItem(calendar, isToday, dateStr, timestamp, explore);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DateItem)) {
            return false;
        }
        DateItem dateItem = (DateItem) other;
        return Intrinsics.areEqual(this.calendar, dateItem.calendar) && this.isToday == dateItem.isToday && Intrinsics.areEqual(this.dateStr, dateItem.dateStr) && this.timestamp == dateItem.timestamp && this.explore == dateItem.explore;
    }

    @NotNull
    public final Calendar getCalendar() {
        return this.calendar;
    }

    @NotNull
    public final String getDateStr() {
        return this.dateStr;
    }

    @NotNull
    public final String getDayLabel() {
        if (this.isToday) {
            return "今";
        }
        Calendar calendar = Calendar.getInstance();
        Object objClone = calendar.clone();
        Intrinsics.checkNotNull(objClone, "null cannot be cast to non-null type java.util.Calendar");
        Calendar calendar2 = (Calendar) objClone;
        calendar2.add(5, -1);
        Object objClone2 = calendar.clone();
        Intrinsics.checkNotNull(objClone2, "null cannot be cast to non-null type java.util.Calendar");
        Calendar calendar3 = (Calendar) objClone2;
        calendar3.add(5, 1);
        if (sameDay(this.calendar, calendar2)) {
            return "昨";
        }
        if (sameDay(this.calendar, calendar3)) {
            return "明";
        }
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String str = String.format(TimeModel.f32343i, Arrays.copyOf(new Object[]{Integer.valueOf(this.calendar.get(5))}, 1));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        return str;
    }

    public final boolean getExplore() {
        return this.explore;
    }

    public final long getTimestamp() {
        return this.timestamp;
    }

    @NotNull
    public final String getWeekdayLabel() {
        switch (this.calendar.get(7)) {
            case 1:
                return "周日";
            case 2:
                return "周一";
            case 3:
                return "周二";
            case 4:
                return "周三";
            case 5:
                return "周四";
            case 6:
                return "周五";
            case 7:
                return "周六";
            default:
                return "";
        }
    }

    public int hashCode() {
        return (((((((this.calendar.hashCode() * 31) + a.a(this.isToday)) * 31) + this.dateStr.hashCode()) * 31) + s5.a.a(this.timestamp)) * 31) + a.a(this.explore);
    }

    public final boolean isToday() {
        return this.isToday;
    }

    public final void setDateStr(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.dateStr = str;
    }

    public final void setExplore(boolean z10) {
        this.explore = z10;
    }

    @NotNull
    public String toString() {
        return "DateItem(calendar=" + this.calendar + ", isToday=" + this.isToday + ", dateStr=" + this.dateStr + ", timestamp=" + this.timestamp + ", explore=" + this.explore + ')';
    }

    public /* synthetic */ DateItem(Calendar calendar, boolean z10, String str, long j10, boolean z11, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(calendar, z10, str, j10, (i10 & 16) != 0 ? false : z11);
    }
}
