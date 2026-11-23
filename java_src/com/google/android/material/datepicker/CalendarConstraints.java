package com.google.android.material.datepicker;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.ObjectsCompat;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class CalendarConstraints implements Parcelable {
    public static final Parcelable.Creator<CalendarConstraints> CREATOR = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final Month f30369b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    private final Month f30370c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    private final DateValidator f30371d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    private Month f30372e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f30373f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f30374g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f30375h;

    public interface DateValidator extends Parcelable {
        boolean e(long j10);
    }

    class a implements Parcelable.Creator<CalendarConstraints> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        @NonNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public CalendarConstraints createFromParcel(@NonNull Parcel parcel) {
            return new CalendarConstraints((Month) parcel.readParcelable(Month.class.getClassLoader()), (Month) parcel.readParcelable(Month.class.getClassLoader()), (DateValidator) parcel.readParcelable(DateValidator.class.getClassLoader()), (Month) parcel.readParcelable(Month.class.getClassLoader()), parcel.readInt(), null);
        }

        @Override // android.os.Parcelable.Creator
        @NonNull
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public CalendarConstraints[] newArray(int i10) {
            return new CalendarConstraints[i10];
        }
    }

    /* synthetic */ CalendarConstraints(Month month, Month month2, DateValidator dateValidator, Month month3, int i10, a aVar) {
        this(month, month2, dateValidator, month3, i10);
    }

    public long A() {
        return this.f30370c.f30489g;
    }

    int B() {
        return this.f30373f;
    }

    int C() {
        return this.f30375h;
    }

    @Nullable
    Month D() {
        return this.f30372e;
    }

    @Nullable
    public Long E() {
        Month month = this.f30372e;
        if (month == null) {
            return null;
        }
        return Long.valueOf(month.f30489g);
    }

    @NonNull
    Month F() {
        return this.f30369b;
    }

    public long G() {
        return this.f30369b.f30489g;
    }

    int H() {
        return this.f30374g;
    }

    boolean I(long j10) {
        if (this.f30369b.y(1) <= j10) {
            Month month = this.f30370c;
            if (j10 <= month.y(month.f30488f)) {
                return true;
            }
        }
        return false;
    }

    void J(@Nullable Month month) {
        this.f30372e = month;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CalendarConstraints)) {
            return false;
        }
        CalendarConstraints calendarConstraints = (CalendarConstraints) obj;
        return this.f30369b.equals(calendarConstraints.f30369b) && this.f30370c.equals(calendarConstraints.f30370c) && ObjectsCompat.equals(this.f30372e, calendarConstraints.f30372e) && this.f30373f == calendarConstraints.f30373f && this.f30371d.equals(calendarConstraints.f30371d);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f30369b, this.f30370c, this.f30372e, Integer.valueOf(this.f30373f), this.f30371d});
    }

    Month m(Month month) {
        if (month.compareTo(this.f30369b) < 0) {
            return this.f30369b;
        }
        return month.compareTo(this.f30370c) > 0 ? this.f30370c : month;
    }

    public DateValidator w() {
        return this.f30371d;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeParcelable(this.f30369b, 0);
        parcel.writeParcelable(this.f30370c, 0);
        parcel.writeParcelable(this.f30372e, 0);
        parcel.writeParcelable(this.f30371d, 0);
        parcel.writeInt(this.f30373f);
    }

    @NonNull
    Month y() {
        return this.f30370c;
    }

    private CalendarConstraints(@NonNull Month month, @NonNull Month month2, @NonNull DateValidator dateValidator, @Nullable Month month3, int i10) {
        Objects.requireNonNull(month, "start cannot be null");
        Objects.requireNonNull(month2, "end cannot be null");
        Objects.requireNonNull(dateValidator, "validator cannot be null");
        this.f30369b = month;
        this.f30370c = month2;
        this.f30372e = month3;
        this.f30373f = i10;
        this.f30371d = dateValidator;
        if (month3 != null && month.compareTo(month3) > 0) {
            throw new IllegalArgumentException("start Month cannot be after current Month");
        }
        if (month3 != null && month3.compareTo(month2) > 0) {
            throw new IllegalArgumentException("current Month cannot be after end Month");
        }
        if (i10 < 0 || i10 > a0.x().getMaximum(7)) {
            throw new IllegalArgumentException("firstDayOfWeek is not valid");
        }
        this.f30375h = month.D(month2) + 1;
        this.f30374g = (month2.f30486d - month.f30486d) + 1;
    }

    public static final class b {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        static final long f30376f = a0.a(Month.f(1900, 0).f30489g);

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        static final long f30377g = a0.a(Month.f(com.airsaid.pickerviewlibrary.widget.c.f6242m, 11).f30489g);

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private static final String f30378h = "DEEP_COPY_VALIDATOR_KEY";

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private long f30379a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private long f30380b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Long f30381c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f30382d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private DateValidator f30383e;

        public b() {
            this.f30379a = f30376f;
            this.f30380b = f30377g;
            this.f30383e = DateValidatorPointForward.a(Long.MIN_VALUE);
        }

        @NonNull
        public CalendarConstraints a() {
            Bundle bundle = new Bundle();
            bundle.putParcelable(f30378h, this.f30383e);
            Month monthM = Month.m(this.f30379a);
            Month monthM2 = Month.m(this.f30380b);
            DateValidator dateValidator = (DateValidator) bundle.getParcelable(f30378h);
            Long l10 = this.f30381c;
            return new CalendarConstraints(monthM, monthM2, dateValidator, l10 == null ? null : Month.m(l10.longValue()), this.f30382d, null);
        }

        @NonNull
        @CanIgnoreReturnValue
        public b b(long j10) {
            this.f30380b = j10;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public b c(int i10) {
            this.f30382d = i10;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public b d(long j10) {
            this.f30381c = Long.valueOf(j10);
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public b e(long j10) {
            this.f30379a = j10;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public b f(@NonNull DateValidator dateValidator) {
            Objects.requireNonNull(dateValidator, "validator cannot be null");
            this.f30383e = dateValidator;
            return this;
        }

        b(@NonNull CalendarConstraints calendarConstraints) {
            this.f30379a = f30376f;
            this.f30380b = f30377g;
            this.f30383e = DateValidatorPointForward.a(Long.MIN_VALUE);
            this.f30379a = calendarConstraints.f30369b.f30489g;
            this.f30380b = calendarConstraints.f30370c.f30489g;
            this.f30381c = Long.valueOf(calendarConstraints.f30372e.f30489g);
            this.f30382d = calendarConstraints.f30373f;
            this.f30383e = calendarConstraints.f30371d;
        }
    }
}
