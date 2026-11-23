package com.join.mgps.customview.guideview;

import android.R;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;

/* JADX INFO: loaded from: classes3.dex */
class Configuration implements Parcelable {
    public static final Parcelable.Creator<Configuration> CREATOR = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    View f66361b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f66362c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f66363d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f66364e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f66365f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f66366g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    boolean f66367h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    int f66368i = 255;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    int f66369j = -1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    int f66370k = -1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    int f66371l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    int f66372m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    int f66373n = R.color.black;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    boolean f66374o = true;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    boolean f66375p = false;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    boolean f66376q = false;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    int f66377r = -1;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    int f66378s = -1;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    Rect f66379t = null;

    class a implements Parcelable.Creator<Configuration> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Configuration createFromParcel(Parcel source) {
            Configuration configuration = new Configuration();
            configuration.f66368i = source.readInt();
            configuration.f66369j = source.readInt();
            configuration.f66370k = source.readInt();
            configuration.f66373n = source.readInt();
            configuration.f66371l = source.readInt();
            configuration.f66362c = source.readInt();
            configuration.f66363d = source.readInt();
            configuration.f66364e = source.readInt();
            configuration.f66365f = source.readInt();
            configuration.f66366g = source.readInt();
            configuration.f66372m = source.readInt();
            configuration.f66374o = source.readByte() == 1;
            configuration.f66375p = source.readByte() == 1;
            return configuration;
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Configuration[] newArray(int size) {
            return new Configuration[size];
        }
    }

    Configuration() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f66368i);
        parcel.writeInt(this.f66369j);
        parcel.writeInt(this.f66370k);
        parcel.writeInt(this.f66373n);
        parcel.writeInt(this.f66371l);
        parcel.writeInt(this.f66362c);
        parcel.writeInt(this.f66363d);
        parcel.writeInt(this.f66364e);
        parcel.writeInt(this.f66365f);
        parcel.writeInt(this.f66366g);
        parcel.writeInt(this.f66372m);
        parcel.writeByte(this.f66374o ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f66375p ? (byte) 1 : (byte) 0);
    }
}
