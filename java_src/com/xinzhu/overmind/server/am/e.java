package com.xinzhu.overmind.server.am;

import android.app.job.JobInfo;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.xinzhu.overmind.entity.JobRecord;

/* JADX INFO: loaded from: classes8.dex */
public interface e extends IInterface {

    public static class a implements e {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.xinzhu.overmind.server.am.e
        public int cancel(String str, int i10, int i11) throws RemoteException {
            return 0;
        }

        @Override // com.xinzhu.overmind.server.am.e
        public void cancelAll(String str, int i10) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.am.e
        public JobRecord queryJobRecord(String str, int i10, int i11) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.am.e
        public JobInfo schedule(JobInfo jobInfo, int i10) throws RemoteException {
            return null;
        }
    }

    public static abstract class b extends Binder implements e {
        private static final String DESCRIPTOR = "com.xinzhu.overmind.server.am.IMindJobManagerService";
        static final int TRANSACTION_cancel = 4;
        static final int TRANSACTION_cancelAll = 3;
        static final int TRANSACTION_queryJobRecord = 2;
        static final int TRANSACTION_schedule = 1;

        private static class a implements e {

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public static e f89632c;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private IBinder f89633b;

            a(IBinder iBinder) {
                this.f89633b = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f89633b;
            }

            @Override // com.xinzhu.overmind.server.am.e
            public int cancel(String str, int i10, int i11) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    if (!this.f89633b.transact(4, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().cancel(str, i10, i11);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.am.e
            public void cancelAll(String str, int i10) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i10);
                    if (this.f89633b.transact(3, parcelObtain, parcelObtain2, 0) || b.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        b.getDefaultImpl().cancelAll(str, i10);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.am.e
            public JobRecord queryJobRecord(String str, int i10, int i11) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    if (!this.f89633b.transact(2, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().queryJobRecord(str, i10, i11);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? JobRecord.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.am.e
            public JobInfo schedule(JobInfo jobInfo, int i10) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (jobInfo != null) {
                        parcelObtain.writeInt(1);
                        jobInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i10);
                    if (!this.f89633b.transact(1, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().schedule(jobInfo, i10);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? (JobInfo) JobInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String u() {
                return b.DESCRIPTOR;
            }
        }

        public b() {
            attachInterface(this, DESCRIPTOR);
        }

        public static e asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof e)) ? new a(iBinder) : (e) iInterfaceQueryLocalInterface;
        }

        public static e getDefaultImpl() {
            return a.f89632c;
        }

        public static boolean setDefaultImpl(e eVar) {
            if (a.f89632c != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (eVar == null) {
                return false;
            }
            a.f89632c = eVar;
            return true;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                JobInfo jobInfoSchedule = schedule(parcel.readInt() != 0 ? (JobInfo) JobInfo.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                parcel2.writeNoException();
                if (jobInfoSchedule != null) {
                    parcel2.writeInt(1);
                    jobInfoSchedule.writeToParcel(parcel2, 1);
                } else {
                    parcel2.writeInt(0);
                }
                return true;
            }
            if (i10 == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                JobRecord jobRecordQueryJobRecord = queryJobRecord(parcel.readString(), parcel.readInt(), parcel.readInt());
                parcel2.writeNoException();
                if (jobRecordQueryJobRecord != null) {
                    parcel2.writeInt(1);
                    jobRecordQueryJobRecord.writeToParcel(parcel2, 1);
                } else {
                    parcel2.writeInt(0);
                }
                return true;
            }
            if (i10 == 3) {
                parcel.enforceInterface(DESCRIPTOR);
                cancelAll(parcel.readString(), parcel.readInt());
                parcel2.writeNoException();
                return true;
            }
            if (i10 != 4) {
                if (i10 != 1598968902) {
                    return super.onTransact(i10, parcel, parcel2, i11);
                }
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            parcel.enforceInterface(DESCRIPTOR);
            int iCancel = cancel(parcel.readString(), parcel.readInt(), parcel.readInt());
            parcel2.writeNoException();
            parcel2.writeInt(iCancel);
            return true;
        }
    }

    int cancel(String str, int i10, int i11) throws RemoteException;

    void cancelAll(String str, int i10) throws RemoteException;

    JobRecord queryJobRecord(String str, int i10, int i11) throws RemoteException;

    JobInfo schedule(JobInfo jobInfo, int i10) throws RemoteException;
}
