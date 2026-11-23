package com.xinzhu.overmind.entity.pm;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class XposedConfig implements Parcelable {
    public static final Parcelable.Creator<XposedConfig> CREATOR = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f89498b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Map<String, Boolean> f89499c;

    class a implements Parcelable.Creator<XposedConfig> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public XposedConfig createFromParcel(Parcel parcel) {
            return new XposedConfig(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public XposedConfig[] newArray(int i10) {
            return new XposedConfig[i10];
        }
    }

    public XposedConfig() {
        this.f89499c = new HashMap();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeByte(this.f89498b ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.f89499c.size());
        for (Map.Entry<String, Boolean> entry : this.f89499c.entrySet()) {
            parcel.writeString(entry.getKey());
            parcel.writeValue(entry.getValue());
        }
    }

    public XposedConfig(Parcel parcel) {
        this.f89499c = new HashMap();
        this.f89498b = parcel.readByte() != 0;
        int i10 = parcel.readInt();
        this.f89499c = new HashMap(i10);
        for (int i11 = 0; i11 < i10; i11++) {
            this.f89499c.put(parcel.readString(), (Boolean) parcel.readValue(Boolean.class.getClassLoader()));
        }
    }
}
