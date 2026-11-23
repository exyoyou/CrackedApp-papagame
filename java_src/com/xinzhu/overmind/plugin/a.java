package com.xinzhu.overmind.plugin;

import android.app.ActivityManager;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import com.xinzhu.overmind.server.os.MindShareFileInfo;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public interface a extends IInterface {

    /* JADX INFO: renamed from: com.xinzhu.overmind.plugin.a$a, reason: collision with other inner class name */
    public static class C1125a implements a {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.xinzhu.overmind.plugin.a
        public MindShareFileInfo checkFile(String str) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.plugin.a
        public void copyDir(String str, String str2) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.plugin.a
        public void copyFile(String str, String str2) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.plugin.a
        public void deleteAllPackages() throws RemoteException {
        }

        @Override // com.xinzhu.overmind.plugin.a
        public void deleteFileOrDir(String str) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.plugin.a
        public void deletePackage(String str, int i10) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.plugin.a
        public void finishPlugin() throws RemoteException {
        }

        @Override // com.xinzhu.overmind.plugin.a
        public List<ActivityManager.RecentTaskInfo> getRecentTasks(int i10, int i11) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.plugin.a
        public List<ActivityManager.RunningAppProcessInfo> getRunningAppProcesses() throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.plugin.a
        public int initWorks() throws RemoteException {
            return 0;
        }

        @Override // com.xinzhu.overmind.plugin.a
        public void killProcess(int i10) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.plugin.a
        public List<MindShareFileInfo> listFiles(String str) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.plugin.a
        public ParcelFileDescriptor openAsParcelFile(String str) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.plugin.a
        public void syncAllPackages() throws RemoteException {
        }

        @Override // com.xinzhu.overmind.plugin.a
        public void syncPackage(String str, int i10) throws RemoteException {
        }
    }

    public static abstract class b extends Binder implements a {
        private static final String DESCRIPTOR = "com.xinzhu.overmind.plugin.IPluginMonitor";
        static final int TRANSACTION_checkFile = 11;
        static final int TRANSACTION_copyDir = 13;
        static final int TRANSACTION_copyFile = 12;
        static final int TRANSACTION_deleteAllPackages = 5;
        static final int TRANSACTION_deleteFileOrDir = 14;
        static final int TRANSACTION_deletePackage = 6;
        static final int TRANSACTION_finishPlugin = 2;
        static final int TRANSACTION_getRecentTasks = 8;
        static final int TRANSACTION_getRunningAppProcesses = 7;
        static final int TRANSACTION_initWorks = 1;
        static final int TRANSACTION_killProcess = 9;
        static final int TRANSACTION_listFiles = 10;
        static final int TRANSACTION_openAsParcelFile = 15;
        static final int TRANSACTION_syncAllPackages = 3;
        static final int TRANSACTION_syncPackage = 4;

        /* JADX INFO: renamed from: com.xinzhu.overmind.plugin.a$b$a, reason: collision with other inner class name */
        private static class C1126a implements a {

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public static a f89526c;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private IBinder f89527b;

            C1126a(IBinder iBinder) {
                this.f89527b = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f89527b;
            }

            @Override // com.xinzhu.overmind.plugin.a
            public MindShareFileInfo checkFile(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (!this.f89527b.transact(11, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().checkFile(str);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? MindShareFileInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.plugin.a
            public void copyDir(String str, String str2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    if (this.f89527b.transact(13, parcelObtain, parcelObtain2, 0) || b.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        b.getDefaultImpl().copyDir(str, str2);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.plugin.a
            public void copyFile(String str, String str2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    if (this.f89527b.transact(12, parcelObtain, parcelObtain2, 0) || b.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        b.getDefaultImpl().copyFile(str, str2);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.plugin.a
            public void deleteAllPackages() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (this.f89527b.transact(5, parcelObtain, parcelObtain2, 0) || b.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        b.getDefaultImpl().deleteAllPackages();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.plugin.a
            public void deleteFileOrDir(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (this.f89527b.transact(14, parcelObtain, parcelObtain2, 0) || b.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        b.getDefaultImpl().deleteFileOrDir(str);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.plugin.a
            public void deletePackage(String str, int i10) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i10);
                    if (this.f89527b.transact(6, parcelObtain, parcelObtain2, 0) || b.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        b.getDefaultImpl().deletePackage(str, i10);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.plugin.a
            public void finishPlugin() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (this.f89527b.transact(2, parcelObtain, parcelObtain2, 0) || b.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        b.getDefaultImpl().finishPlugin();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.plugin.a
            public List<ActivityManager.RecentTaskInfo> getRecentTasks(int i10, int i11) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    if (!this.f89527b.transact(8, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().getRecentTasks(i10, i11);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(ActivityManager.RecentTaskInfo.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.plugin.a
            public List<ActivityManager.RunningAppProcessInfo> getRunningAppProcesses() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (!this.f89527b.transact(7, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().getRunningAppProcesses();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(ActivityManager.RunningAppProcessInfo.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.plugin.a
            public int initWorks() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (!this.f89527b.transact(1, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().initWorks();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.plugin.a
            public void killProcess(int i10) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.f89527b.transact(9, parcelObtain, parcelObtain2, 0) || b.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        b.getDefaultImpl().killProcess(i10);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.plugin.a
            public List<MindShareFileInfo> listFiles(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (!this.f89527b.transact(10, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().listFiles(str);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(MindShareFileInfo.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.plugin.a
            public ParcelFileDescriptor openAsParcelFile(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (!this.f89527b.transact(15, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().openAsParcelFile(str);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? (ParcelFileDescriptor) ParcelFileDescriptor.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.plugin.a
            public void syncAllPackages() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (this.f89527b.transact(3, parcelObtain, parcelObtain2, 0) || b.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        b.getDefaultImpl().syncAllPackages();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.plugin.a
            public void syncPackage(String str, int i10) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i10);
                    if (this.f89527b.transact(4, parcelObtain, parcelObtain2, 0) || b.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        b.getDefaultImpl().syncPackage(str, i10);
                    }
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

        public static a asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof a)) ? new C1126a(iBinder) : (a) iInterfaceQueryLocalInterface;
        }

        public static a getDefaultImpl() {
            return C1126a.f89526c;
        }

        public static boolean setDefaultImpl(a aVar) {
            if (C1126a.f89526c != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (aVar == null) {
                return false;
            }
            C1126a.f89526c = aVar;
            return true;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            switch (i10) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iInitWorks = initWorks();
                    parcel2.writeNoException();
                    parcel2.writeInt(iInitWorks);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    finishPlugin();
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    syncAllPackages();
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    syncPackage(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    deleteAllPackages();
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    deletePackage(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = getRunningAppProcesses();
                    parcel2.writeNoException();
                    parcel2.writeTypedList(runningAppProcesses);
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<ActivityManager.RecentTaskInfo> recentTasks = getRecentTasks(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeTypedList(recentTasks);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    killProcess(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<MindShareFileInfo> listListFiles = listFiles(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeTypedList(listListFiles);
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    MindShareFileInfo mindShareFileInfoCheckFile = checkFile(parcel.readString());
                    parcel2.writeNoException();
                    if (mindShareFileInfoCheckFile != null) {
                        parcel2.writeInt(1);
                        mindShareFileInfoCheckFile.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    copyFile(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    copyDir(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    deleteFileOrDir(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    ParcelFileDescriptor parcelFileDescriptorOpenAsParcelFile = openAsParcelFile(parcel.readString());
                    parcel2.writeNoException();
                    if (parcelFileDescriptorOpenAsParcelFile != null) {
                        parcel2.writeInt(1);
                        parcelFileDescriptorOpenAsParcelFile.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                default:
                    return super.onTransact(i10, parcel, parcel2, i11);
            }
        }
    }

    MindShareFileInfo checkFile(String str) throws RemoteException;

    void copyDir(String str, String str2) throws RemoteException;

    void copyFile(String str, String str2) throws RemoteException;

    void deleteAllPackages() throws RemoteException;

    void deleteFileOrDir(String str) throws RemoteException;

    void deletePackage(String str, int i10) throws RemoteException;

    void finishPlugin() throws RemoteException;

    List<ActivityManager.RecentTaskInfo> getRecentTasks(int i10, int i11) throws RemoteException;

    List<ActivityManager.RunningAppProcessInfo> getRunningAppProcesses() throws RemoteException;

    int initWorks() throws RemoteException;

    void killProcess(int i10) throws RemoteException;

    List<MindShareFileInfo> listFiles(String str) throws RemoteException;

    ParcelFileDescriptor openAsParcelFile(String str) throws RemoteException;

    void syncAllPackages() throws RemoteException;

    void syncPackage(String str, int i10) throws RemoteException;
}
