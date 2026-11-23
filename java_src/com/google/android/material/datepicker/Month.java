package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.Calendar;
import java.util.GregorianCalendar;

/* JADX INFO: loaded from: classes5.dex */
final class Month implements Comparable<Month>, Parcelable {
    public static final Parcelable.Creator<Month> CREATOR = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final Calendar f30484b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final int f30485c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final int f30486d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final int f30487e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final int f30488f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final long f30489g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private String f30490h;

    class a implements Parcelable.Creator<Month> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        @NonNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Month createFromParcel(@NonNull Parcel parcel) {
            return Month.f(parcel.readInt(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        @NonNull
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Month[] newArray(int i10) {
            return new Month[i10];
        }
    }

    private Month(@NonNull Calendar calendar) {
        calendar.set(5, 1);
        Calendar calendarF = a0.f(calendar);
        this.f30484b = calendarF;
        this.f30485c = calendarF.get(2);
        this.f30486d = calendarF.get(1);
        this.f30487e = calendarF.getMaximum(7);
        this.f30488f = calendarF.getActualMaximum(5);
        this.f30489g = calendarF.getTimeInMillis();
    }

    @NonNull
    static Month f(int i10, int i11) {
        Calendar calendarX = a0.x();
        calendarX.set(1, i10);
        calendarX.set(2, i11);
        return new Month(calendarX);
    }

    @NonNull
    static Month m(long j10) {
        Calendar calendarX = a0.x();
        calendarX.setTimeInMillis(j10);
        return new Month(calendarX);
    }

    @NonNull
    static Month w() {
        return new Month(a0.v());
    }

    @NonNull
    String A() {
        if (this.f30490h == null) {
            this.f30490h = j.l(this.f30484b.getTimeInMillis());
        }
        return this.f30490h;
    }

    long B() {
        return this.f30484b.getTimeInMillis();
    }

    @NonNull
    Month C(int i10) {
        Calendar calendarF = a0.f(this.f30484b);
        calendarF.add(2, i10);
        return new Month(calendarF);
    }

    int D(@NonNull Month month) {
        if (this.f30484b instanceof GregorianCalendar) {
            return ((month.f30486d - this.f30486d) * 12) + (month.f30485c - this.f30485c);
        }
        throw new IllegalArgumentException("Only Gregorian calendars are supported.");
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public int compareTo(@NonNull Month month) {
        return this.f30484b.compareTo(month.f30484b);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Month)) {
            return false;
        }
        Month month = (Month) obj;
        return this.f30485c == month.f30485c && this.f30486d == month.f30486d;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f30485c), Integer.valueOf(this.f30486d)});
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        parcel.writeInt(this.f30486d);
        parcel.writeInt(this.f30485c);
    }

    int x(int i10) {
        int i11 = this.f30484b.get(7);
        if (i10 <= 0) {
            i10 = this.f30484b.getFirstDayOfWeek();
        }
        int i12 = i11 - i10;
        return i12 < 0 ? i12 + this.f30487e : i12;
    }

    long y(int i10) {
        Calendar calendarF = a0.f(this.f30484b);
        calendarF.set(5, i10);
        return calendarF.getTimeInMillis();
    }

    int z(long j10) {
        Calendar calendarF = a0.f(this.f30484b);
        calendarF.setTimeInMillis(j10);
        return calendarF.get(5);
    }
}
