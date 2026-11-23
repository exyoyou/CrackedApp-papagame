package com.xinzhu.overmind.os;

import android.os.Binder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.UserHandle;
import com.xinzhu.haunted.android.os.x;
import com.xinzhu.overmind.server.ProcessRecord;
import com.xinzhu.overmind.server.h;
import com.xinzhu.overmind.server.user.MindUserHandle;

/* JADX INFO: loaded from: classes8.dex */
public class BinderHelper {

    public static class CallingInfo implements Parcelable {
        public static final Parcelable.Creator<CallingInfo> CREATOR = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f89520b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f89521c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f89522d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public UserHandle f89523e;

        class a implements Parcelable.Creator<CallingInfo> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public CallingInfo createFromParcel(Parcel parcel) {
                return new CallingInfo(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public CallingInfo[] newArray(int i10) {
                return new CallingInfo[i10];
            }
        }

        CallingInfo() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeInt(this.f89520b);
            parcel.writeInt(this.f89521c);
            parcel.writeParcelable(this.f89523e, i10);
        }

        protected CallingInfo(Parcel parcel) {
            this.f89520b = parcel.readInt();
            this.f89521c = parcel.readInt();
            this.f89523e = (UserHandle) parcel.readParcelable(UserHandle.class.getClassLoader());
        }
    }

    public static long a() {
        return Binder.clearCallingIdentity();
    }

    public static CallingInfo b() {
        int callingPid = Binder.getCallingPid();
        ProcessRecord processRecordB = h.d().b(callingPid);
        CallingInfo callingInfo = new CallingInfo();
        if (processRecordB != null) {
            callingInfo.f89520b = callingPid;
            int i10 = processRecordB.vuid;
            callingInfo.f89521c = i10;
            callingInfo.f89522d = processRecordB.userId;
            callingInfo.f89523e = (UserHandle) x.c(i10).f89137a;
            return callingInfo;
        }
        callingInfo.f89520b = Binder.getCallingPid();
        int callingUid = Binder.getCallingUid();
        callingInfo.f89521c = callingUid;
        callingInfo.f89522d = MindUserHandle.x(callingUid);
        callingInfo.f89523e = Binder.getCallingUserHandle();
        return callingInfo;
    }

    public static void c(long j10) {
        Binder.restoreCallingIdentity(j10);
    }
}
