package android.content;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes7.dex */
public class SyncStatusInfo implements Parcelable {
    public static final Parcelable.Creator<SyncStatusInfo> CREATOR = new Parcelable.Creator<SyncStatusInfo>() { // from class: android.content.SyncStatusInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SyncStatusInfo createFromParcel(Parcel parcel) {
            return new SyncStatusInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SyncStatusInfo[] newArray(int i10) {
            return new SyncStatusInfo[i10];
        }
    };
    private static final String TAG = "Sync";
    static final int VERSION = 2;
    public final int authorityId;
    public long initialFailureTime;
    public boolean initialize;
    public String lastFailureMesg;
    public int lastFailureSource;
    public long lastFailureTime;
    public int lastSuccessSource;
    public long lastSuccessTime;
    public int numSourceLocal;
    public int numSourcePeriodic;
    public int numSourcePoll;
    public int numSourceServer;
    public int numSourceUser;
    public int numSyncs;
    public boolean pending;
    private ArrayList<Long> periodicSyncTimes;
    public long totalElapsedTime;

    public SyncStatusInfo(int i10) {
        this.authorityId = i10;
    }

    private void ensurePeriodicSyncTimeSize(int i10) {
        if (this.periodicSyncTimes == null) {
            this.periodicSyncTimes = new ArrayList<>(0);
        }
        int i11 = i10 + 1;
        if (this.periodicSyncTimes.size() < i11) {
            for (int size = this.periodicSyncTimes.size(); size < i11; size++) {
                this.periodicSyncTimes.add(0L);
            }
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getLastFailureMesgAsInt(int i10) {
        return 0;
    }

    public long getPeriodicSyncTime(int i10) {
        ArrayList<Long> arrayList = this.periodicSyncTimes;
        if (arrayList == null || i10 >= arrayList.size()) {
            return 0L;
        }
        return this.periodicSyncTimes.get(i10).longValue();
    }

    public void removePeriodicSyncTime(int i10) {
        ArrayList<Long> arrayList = this.periodicSyncTimes;
        if (arrayList == null || i10 >= arrayList.size()) {
            return;
        }
        this.periodicSyncTimes.remove(i10);
    }

    public void setPeriodicSyncTime(int i10, long j10) {
        ensurePeriodicSyncTimeSize(i10);
        this.periodicSyncTimes.set(i10, Long.valueOf(j10));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(2);
        parcel.writeInt(this.authorityId);
        parcel.writeLong(this.totalElapsedTime);
        parcel.writeInt(this.numSyncs);
        parcel.writeInt(this.numSourcePoll);
        parcel.writeInt(this.numSourceServer);
        parcel.writeInt(this.numSourceLocal);
        parcel.writeInt(this.numSourceUser);
        parcel.writeLong(this.lastSuccessTime);
        parcel.writeInt(this.lastSuccessSource);
        parcel.writeLong(this.lastFailureTime);
        parcel.writeInt(this.lastFailureSource);
        parcel.writeString(this.lastFailureMesg);
        parcel.writeLong(this.initialFailureTime);
        parcel.writeInt(this.pending ? 1 : 0);
        parcel.writeInt(this.initialize ? 1 : 0);
        ArrayList<Long> arrayList = this.periodicSyncTimes;
        if (arrayList == null) {
            parcel.writeInt(-1);
            return;
        }
        parcel.writeInt(arrayList.size());
        Iterator<Long> it2 = this.periodicSyncTimes.iterator();
        while (it2.hasNext()) {
            parcel.writeLong(it2.next().longValue());
        }
    }

    public SyncStatusInfo(Parcel parcel) {
        int i10 = parcel.readInt();
        if (i10 != 2 && i10 != 1) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Unknown version: ");
            sb2.append(i10);
        }
        this.authorityId = parcel.readInt();
        this.totalElapsedTime = parcel.readLong();
        this.numSyncs = parcel.readInt();
        this.numSourcePoll = parcel.readInt();
        this.numSourceServer = parcel.readInt();
        this.numSourceLocal = parcel.readInt();
        this.numSourceUser = parcel.readInt();
        this.lastSuccessTime = parcel.readLong();
        this.lastSuccessSource = parcel.readInt();
        this.lastFailureTime = parcel.readLong();
        this.lastFailureSource = parcel.readInt();
        this.lastFailureMesg = parcel.readString();
        this.initialFailureTime = parcel.readLong();
        this.pending = parcel.readInt() != 0;
        this.initialize = parcel.readInt() != 0;
        if (i10 == 1) {
            this.periodicSyncTimes = null;
            return;
        }
        int i11 = parcel.readInt();
        if (i11 < 0) {
            this.periodicSyncTimes = null;
            return;
        }
        this.periodicSyncTimes = new ArrayList<>();
        for (int i12 = 0; i12 < i11; i12++) {
            this.periodicSyncTimes.add(Long.valueOf(parcel.readLong()));
        }
    }

    public SyncStatusInfo(SyncStatusInfo syncStatusInfo) {
        this.authorityId = syncStatusInfo.authorityId;
        this.totalElapsedTime = syncStatusInfo.totalElapsedTime;
        this.numSyncs = syncStatusInfo.numSyncs;
        this.numSourcePoll = syncStatusInfo.numSourcePoll;
        this.numSourceServer = syncStatusInfo.numSourceServer;
        this.numSourceLocal = syncStatusInfo.numSourceLocal;
        this.numSourceUser = syncStatusInfo.numSourceUser;
        this.numSourcePeriodic = syncStatusInfo.numSourcePeriodic;
        this.lastSuccessTime = syncStatusInfo.lastSuccessTime;
        this.lastSuccessSource = syncStatusInfo.lastSuccessSource;
        this.lastFailureTime = syncStatusInfo.lastFailureTime;
        this.lastFailureSource = syncStatusInfo.lastFailureSource;
        this.lastFailureMesg = syncStatusInfo.lastFailureMesg;
        this.initialFailureTime = syncStatusInfo.initialFailureTime;
        this.pending = syncStatusInfo.pending;
        this.initialize = syncStatusInfo.initialize;
        if (syncStatusInfo.periodicSyncTimes != null) {
            this.periodicSyncTimes = new ArrayList<>(syncStatusInfo.periodicSyncTimes);
        }
    }
}
