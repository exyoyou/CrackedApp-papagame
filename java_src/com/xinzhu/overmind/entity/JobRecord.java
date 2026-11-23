package com.xinzhu.overmind.entity;

import android.app.Service;
import android.app.job.JobInfo;
import android.content.pm.ServiceInfo;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes8.dex */
public class JobRecord implements Parcelable {
    public static final Parcelable.Creator<JobRecord> CREATOR = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public JobInfo f89469b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ServiceInfo f89470c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Service f89471d;

    class a implements Parcelable.Creator<JobRecord> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public JobRecord createFromParcel(Parcel parcel) {
            return new JobRecord(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public JobRecord[] newArray(int i10) {
            return new JobRecord[i10];
        }
    }

    public JobRecord() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeParcelable(this.f89469b, i10);
        parcel.writeParcelable(this.f89470c, i10);
    }

    protected JobRecord(Parcel parcel) {
        this.f89469b = (JobInfo) parcel.readParcelable(JobInfo.class.getClassLoader());
        this.f89470c = (ServiceInfo) parcel.readParcelable(ServiceInfo.class.getClassLoader());
    }
}
