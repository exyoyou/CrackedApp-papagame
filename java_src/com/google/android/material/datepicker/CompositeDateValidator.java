package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.core.util.Preconditions;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class CompositeDateValidator implements CalendarConstraints.DateValidator {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f30384d = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f30385e = 2;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final d f30388b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    private final List<CalendarConstraints.DateValidator> f30389c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final d f30386f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final d f30387g = new b();
    public static final Parcelable.Creator<CompositeDateValidator> CREATOR = new c();

    class a implements d {
        a() {
        }

        @Override // com.google.android.material.datepicker.CompositeDateValidator.d
        public boolean a(@NonNull List<CalendarConstraints.DateValidator> list, long j10) {
            for (CalendarConstraints.DateValidator dateValidator : list) {
                if (dateValidator != null && dateValidator.e(j10)) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.google.android.material.datepicker.CompositeDateValidator.d
        public int getId() {
            return 1;
        }
    }

    class b implements d {
        b() {
        }

        @Override // com.google.android.material.datepicker.CompositeDateValidator.d
        public boolean a(@NonNull List<CalendarConstraints.DateValidator> list, long j10) {
            for (CalendarConstraints.DateValidator dateValidator : list) {
                if (dateValidator != null && !dateValidator.e(j10)) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.google.android.material.datepicker.CompositeDateValidator.d
        public int getId() {
            return 2;
        }
    }

    class c implements Parcelable.Creator<CompositeDateValidator> {
        c() {
        }

        @Override // android.os.Parcelable.Creator
        @NonNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public CompositeDateValidator createFromParcel(@NonNull Parcel parcel) {
            ArrayList arrayList = parcel.readArrayList(CalendarConstraints.DateValidator.class.getClassLoader());
            int i10 = parcel.readInt();
            d dVar = (i10 != 2 && i10 == 1) ? CompositeDateValidator.f30386f : CompositeDateValidator.f30387g;
            return new CompositeDateValidator((List) Preconditions.checkNotNull(arrayList), dVar, null);
        }

        @Override // android.os.Parcelable.Creator
        @NonNull
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public CompositeDateValidator[] newArray(int i10) {
            return new CompositeDateValidator[i10];
        }
    }

    private interface d {
        boolean a(@NonNull List<CalendarConstraints.DateValidator> list, long j10);

        int getId();
    }

    /* synthetic */ CompositeDateValidator(List list, d dVar, a aVar) {
        this(list, dVar);
    }

    @NonNull
    public static CalendarConstraints.DateValidator f(@NonNull List<CalendarConstraints.DateValidator> list) {
        return new CompositeDateValidator(list, f30387g);
    }

    @NonNull
    public static CalendarConstraints.DateValidator m(@NonNull List<CalendarConstraints.DateValidator> list) {
        return new CompositeDateValidator(list, f30386f);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.google.android.material.datepicker.CalendarConstraints.DateValidator
    public boolean e(long j10) {
        return this.f30388b.a(this.f30389c, j10);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CompositeDateValidator)) {
            return false;
        }
        CompositeDateValidator compositeDateValidator = (CompositeDateValidator) obj;
        return this.f30389c.equals(compositeDateValidator.f30389c) && this.f30388b.getId() == compositeDateValidator.f30388b.getId();
    }

    public int hashCode() {
        return this.f30389c.hashCode();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        parcel.writeList(this.f30389c);
        parcel.writeInt(this.f30388b.getId());
    }

    private CompositeDateValidator(@NonNull List<CalendarConstraints.DateValidator> list, d dVar) {
        this.f30389c = list;
        this.f30388b = dVar;
    }
}
