package com.google.android.material.timepicker;

import android.content.res.Resources;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import com.google.android.material.R;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
class TimeModel implements Parcelable {
    public static final Parcelable.Creator<TimeModel> CREATOR = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String f32343i = "%02d";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String f32344j = "%d";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final f f32345b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final f f32346c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final int f32347d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f32348e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f32349f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f32350g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    int f32351h;

    class a implements Parcelable.Creator<TimeModel> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public TimeModel createFromParcel(Parcel parcel) {
            return new TimeModel(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public TimeModel[] newArray(int i10) {
            return new TimeModel[i10];
        }
    }

    public TimeModel() {
        this(0);
    }

    @Nullable
    public static String a(Resources resources, CharSequence charSequence) {
        return b(resources, charSequence, f32343i);
    }

    @Nullable
    public static String b(Resources resources, CharSequence charSequence, String str) {
        try {
            return String.format(resources.getConfiguration().locale, str, Integer.valueOf(Integer.parseInt(String.valueOf(charSequence))));
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    private static int z(int i10) {
        return i10 >= 12 ? 1 : 0;
    }

    public void A(int i10) {
        if (this.f32347d == 1) {
            this.f32348e = i10;
        } else {
            this.f32348e = (i10 % 12) + (this.f32351h != 1 ? 0 : 12);
        }
    }

    public void B(int i10) {
        this.f32351h = z(i10);
        this.f32348e = i10;
    }

    public void C(@IntRange(from = 0, to = 59) int i10) {
        this.f32349f = i10 % 60;
    }

    public void D(int i10) {
        if (i10 != this.f32351h) {
            this.f32351h = i10;
            int i11 = this.f32348e;
            if (i11 < 12 && i10 == 1) {
                this.f32348e = i11 + 12;
            } else {
                if (i11 < 12 || i10 != 0) {
                    return;
                }
                this.f32348e = i11 - 12;
            }
        }
    }

    @StringRes
    public int d() {
        return this.f32347d == 1 ? R.string.material_hour_24h_suffix : R.string.material_hour_suffix;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TimeModel)) {
            return false;
        }
        TimeModel timeModel = (TimeModel) obj;
        return this.f32348e == timeModel.f32348e && this.f32349f == timeModel.f32349f && this.f32347d == timeModel.f32347d && this.f32350g == timeModel.f32350g;
    }

    public int f() {
        if (this.f32347d == 1) {
            return this.f32348e % 24;
        }
        int i10 = this.f32348e;
        if (i10 % 12 == 0) {
            return 12;
        }
        return this.f32351h == 1 ? i10 - 12 : i10;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f32347d), Integer.valueOf(this.f32348e), Integer.valueOf(this.f32349f), Integer.valueOf(this.f32350g)});
    }

    public f w() {
        return this.f32346c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f32348e);
        parcel.writeInt(this.f32349f);
        parcel.writeInt(this.f32350g);
        parcel.writeInt(this.f32347d);
    }

    public f y() {
        return this.f32345b;
    }

    public TimeModel(int i10) {
        this(0, 0, 10, i10);
    }

    public TimeModel(int i10, int i11, int i12, int i13) {
        this.f32348e = i10;
        this.f32349f = i11;
        this.f32350g = i12;
        this.f32347d = i13;
        this.f32351h = z(i10);
        this.f32345b = new f(59);
        this.f32346c = new f(i13 == 1 ? 23 : 12);
    }

    protected TimeModel(Parcel parcel) {
        this(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
    }
}
