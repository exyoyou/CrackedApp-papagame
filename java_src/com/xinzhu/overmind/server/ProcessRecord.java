package com.xinzhu.overmind.server;

import android.content.pm.ApplicationInfo;
import android.os.Binder;
import android.os.ConditionVariable;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Process;
import android.text.TextUtils;
import com.xinzhu.overmind.entity.ClientConfig;
import java.util.Arrays;

/* JADX INFO: loaded from: classes8.dex */
public class ProcessRecord extends Binder implements Parcelable {
    public static final Parcelable.Creator<ProcessRecord> CREATOR = new a();
    public IInterface appThread;
    public int baseVUid;
    public int callingVUid;
    public com.xinzhu.overmind.client.c client;
    public final ApplicationInfo info;
    public ConditionVariable initLock;
    public int pid;
    public final String processName;
    public boolean runWithPlugin;
    public int uid;
    public int userId;
    public int vpid;
    public int vuid;

    class a implements Parcelable.Creator<ProcessRecord> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ProcessRecord createFromParcel(Parcel parcel) {
            return new ProcessRecord(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public ProcessRecord[] newArray(int i10) {
            return new ProcessRecord[i10];
        }
    }

    public ProcessRecord(ApplicationInfo applicationInfo, String str, int i10, int i11, int i12) {
        this.initLock = new ConditionVariable();
        this.info = applicationInfo;
        this.vuid = i10;
        this.vpid = i11;
        this.userId = 0;
        this.callingVUid = i12;
        this.processName = str;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ProcessRecord processRecord = (ProcessRecord) obj;
        return this.pid == processRecord.pid && this.vuid == processRecord.vuid && this.vpid == processRecord.vpid && this.uid == processRecord.uid && this.userId == processRecord.userId && this.baseVUid == processRecord.baseVUid && TextUtils.equals(this.processName, processRecord.processName) && this.runWithPlugin == processRecord.runWithPlugin;
    }

    public int getCallingVUid() {
        return this.callingVUid;
    }

    public ClientConfig getClientConfig() {
        ClientConfig clientConfig = new ClientConfig();
        clientConfig.f89460b = this.info.packageName;
        clientConfig.f89461c = this.processName;
        clientConfig.f89462d = this.vpid;
        clientConfig.f89463e = this.vuid;
        clientConfig.f89464f = this.uid;
        clientConfig.f89465g = this.userId;
        clientConfig.f89467i = this;
        clientConfig.f89466h = this.baseVUid;
        clientConfig.f89468j = this.runWithPlugin;
        return clientConfig;
    }

    public String getPackageName() {
        return this.info.packageName;
    }

    public String getProviderAuthority() {
        return this.runWithPlugin ? com.xinzhu.overmind.client.g.c(this.vpid) : com.xinzhu.overmind.client.g.g(this.vpid);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.processName, Integer.valueOf(this.pid), Integer.valueOf(this.vuid), Integer.valueOf(this.vpid), Integer.valueOf(this.uid), Integer.valueOf(this.pid), Integer.valueOf(this.userId)});
    }

    public void kill() {
        int i10 = this.pid;
        if (i10 > 0) {
            try {
                Process.killProcess(i10);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeParcelable(this.info, i10);
        parcel.writeString(this.processName);
        parcel.writeInt(this.pid);
        parcel.writeInt(this.vuid);
        parcel.writeInt(this.vpid);
        parcel.writeInt(this.uid);
        parcel.writeInt(this.callingVUid);
        parcel.writeInt(this.userId);
        parcel.writeInt(this.baseVUid);
        parcel.writeByte(this.runWithPlugin ? (byte) 1 : (byte) 0);
    }

    protected ProcessRecord(Parcel parcel) {
        this.initLock = new ConditionVariable();
        this.info = (ApplicationInfo) parcel.readParcelable(ApplicationInfo.class.getClassLoader());
        this.processName = parcel.readString();
        this.pid = parcel.readInt();
        this.vuid = parcel.readInt();
        this.vpid = parcel.readInt();
        this.uid = parcel.readInt();
        this.callingVUid = parcel.readInt();
        this.userId = parcel.readInt();
        this.baseVUid = parcel.readInt();
        this.runWithPlugin = parcel.readByte() != 0;
    }
}
