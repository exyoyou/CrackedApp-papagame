package com.join.kotlin.discount.model.bean;

import com.kwad.sdk.api.model.AdnName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0018\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BC\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\fJ\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\fJ\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\fJ\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\fJ\u000b\u0010\u001d\u001a\u0004\u0018\u00010\bHÆ\u0003JJ\u0010\u001e\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\bHÆ\u0001¢\u0006\u0002\u0010\u001fJ\u0013\u0010 \u001a\u00020!2\b\u0010\"\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010#\u001a\u00020\u0003HÖ\u0001J\t\u0010$\u001a\u00020\bHÖ\u0001R\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u000f\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u000f\u001a\u0004\b\u0010\u0010\f\"\u0004\b\u0011\u0010\u000eR\u001e\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u000f\u001a\u0004\b\u0012\u0010\f\"\u0004\b\u0013\u0010\u000eR\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u000f\u001a\u0004\b\u0006\u0010\f\"\u0004\b\u0014\u0010\u000eR\u001c\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018¨\u0006%"}, d2 = {"Lcom/join/kotlin/discount/model/bean/GameDetailBookingInfoBean;", "", "booking_count", "", "booking_switch", "game_status", "is_booking", "online_time", "", "<init>", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V", "getBooking_count", "()Ljava/lang/Integer;", "setBooking_count", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getBooking_switch", "setBooking_switch", "getGame_status", "setGame_status", "set_booking", "getOnline_time", "()Ljava/lang/String;", "setOnline_time", "(Ljava/lang/String;)V", "component1", "component2", "component3", "component4", "component5", "copy", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lcom/join/kotlin/discount/model/bean/GameDetailBookingInfoBean;", "equals", "", AdnName.OTHER, "hashCode", "toString", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class GameDetailBookingInfoBean {

    @Nullable
    private Integer booking_count;

    @Nullable
    private Integer booking_switch;

    @Nullable
    private Integer game_status;

    @Nullable
    private Integer is_booking;

    @Nullable
    private String online_time;

    public GameDetailBookingInfoBean() {
        this(null, null, null, null, null, 31, null);
    }

    public static /* synthetic */ GameDetailBookingInfoBean copy$default(GameDetailBookingInfoBean gameDetailBookingInfoBean, Integer num, Integer num2, Integer num3, Integer num4, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            num = gameDetailBookingInfoBean.booking_count;
        }
        if ((i10 & 2) != 0) {
            num2 = gameDetailBookingInfoBean.booking_switch;
        }
        Integer num5 = num2;
        if ((i10 & 4) != 0) {
            num3 = gameDetailBookingInfoBean.game_status;
        }
        Integer num6 = num3;
        if ((i10 & 8) != 0) {
            num4 = gameDetailBookingInfoBean.is_booking;
        }
        Integer num7 = num4;
        if ((i10 & 16) != 0) {
            str = gameDetailBookingInfoBean.online_time;
        }
        return gameDetailBookingInfoBean.copy(num, num5, num6, num7, str);
    }

    @Nullable
    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Integer getBooking_count() {
        return this.booking_count;
    }

    @Nullable
    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Integer getBooking_switch() {
        return this.booking_switch;
    }

    @Nullable
    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Integer getGame_status() {
        return this.game_status;
    }

    @Nullable
    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Integer getIs_booking() {
        return this.is_booking;
    }

    @Nullable
    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getOnline_time() {
        return this.online_time;
    }

    @NotNull
    public final GameDetailBookingInfoBean copy(@Nullable Integer booking_count, @Nullable Integer booking_switch, @Nullable Integer game_status, @Nullable Integer is_booking, @Nullable String online_time) {
        return new GameDetailBookingInfoBean(booking_count, booking_switch, game_status, is_booking, online_time);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof GameDetailBookingInfoBean)) {
            return false;
        }
        GameDetailBookingInfoBean gameDetailBookingInfoBean = (GameDetailBookingInfoBean) other;
        return Intrinsics.areEqual(this.booking_count, gameDetailBookingInfoBean.booking_count) && Intrinsics.areEqual(this.booking_switch, gameDetailBookingInfoBean.booking_switch) && Intrinsics.areEqual(this.game_status, gameDetailBookingInfoBean.game_status) && Intrinsics.areEqual(this.is_booking, gameDetailBookingInfoBean.is_booking) && Intrinsics.areEqual(this.online_time, gameDetailBookingInfoBean.online_time);
    }

    @Nullable
    public final Integer getBooking_count() {
        return this.booking_count;
    }

    @Nullable
    public final Integer getBooking_switch() {
        return this.booking_switch;
    }

    @Nullable
    public final Integer getGame_status() {
        return this.game_status;
    }

    @Nullable
    public final String getOnline_time() {
        return this.online_time;
    }

    public int hashCode() {
        Integer num = this.booking_count;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        Integer num2 = this.booking_switch;
        int iHashCode2 = (iHashCode + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.game_status;
        int iHashCode3 = (iHashCode2 + (num3 == null ? 0 : num3.hashCode())) * 31;
        Integer num4 = this.is_booking;
        int iHashCode4 = (iHashCode3 + (num4 == null ? 0 : num4.hashCode())) * 31;
        String str = this.online_time;
        return iHashCode4 + (str != null ? str.hashCode() : 0);
    }

    @Nullable
    public final Integer is_booking() {
        return this.is_booking;
    }

    public final void setBooking_count(@Nullable Integer num) {
        this.booking_count = num;
    }

    public final void setBooking_switch(@Nullable Integer num) {
        this.booking_switch = num;
    }

    public final void setGame_status(@Nullable Integer num) {
        this.game_status = num;
    }

    public final void setOnline_time(@Nullable String str) {
        this.online_time = str;
    }

    public final void set_booking(@Nullable Integer num) {
        this.is_booking = num;
    }

    @NotNull
    public String toString() {
        return "GameDetailBookingInfoBean(booking_count=" + this.booking_count + ", booking_switch=" + this.booking_switch + ", game_status=" + this.game_status + ", is_booking=" + this.is_booking + ", online_time=" + this.online_time + ')';
    }

    public GameDetailBookingInfoBean(@Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable Integer num4, @Nullable String str) {
        this.booking_count = num;
        this.booking_switch = num2;
        this.game_status = num3;
        this.is_booking = num4;
        this.online_time = str;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ GameDetailBookingInfoBean(Integer num, Integer num2, Integer num3, Integer num4, String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        Integer num5 = 0;
        this((i10 & 1) != 0 ? num5 : num, (i10 & 2) != 0 ? num5 : num2, (i10 & 4) != 0 ? num5 : num3, (i10 & 8) == 0 ? num4 : 0, (i10 & 16) != 0 ? "" : str);
    }
}
