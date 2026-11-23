package com.xinzhu.overmind.server.am;

import android.content.ComponentName;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes8.dex */
public class MindTaskInfo implements Parcelable {
    public static final Parcelable.Creator<MindTaskInfo> CREATOR = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f89611b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Intent f89612c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public ComponentName f89613d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ComponentName f89614e;

    class a implements Parcelable.Creator<MindTaskInfo> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public MindTaskInfo createFromParcel(Parcel parcel) {
            return new MindTaskInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public MindTaskInfo[] newArray(int i10) {
            return new MindTaskInfo[i10];
        }
    }

    public MindTaskInfo(int i10, Intent intent, ComponentName componentName, ComponentName componentName2) {
        this.f89611b = i10;
        this.f89612c = intent;
        this.f89613d = componentName;
        this.f89614e = componentName2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f89611b);
        parcel.writeParcelable(this.f89612c, i10);
        parcel.writeParcelable(this.f89613d, i10);
        parcel.writeParcelable(this.f89614e, i10);
    }

    protected MindTaskInfo(Parcel parcel) {
        this.f89611b = parcel.readInt();
        this.f89612c = (Intent) parcel.readParcelable(Intent.class.getClassLoader());
        this.f89613d = (ComponentName) parcel.readParcelable(ComponentName.class.getClassLoader());
        this.f89614e = (ComponentName) parcel.readParcelable(ComponentName.class.getClassLoader());
    }
}
