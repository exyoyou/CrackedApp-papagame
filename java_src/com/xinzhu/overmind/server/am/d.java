package com.xinzhu.overmind.server.am;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ProviderInfo;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.xinzhu.overmind.entity.ClientConfig;
import com.xinzhu.overmind.entity.PendingIntentRecord;
import com.xinzhu.overmind.entity.UnbindRecord;
import com.xinzhu.overmind.server.ProcessRecord;

/* JADX INFO: loaded from: classes8.dex */
public interface d extends IInterface {

    public static class a implements d {
        @Override // com.xinzhu.overmind.server.am.d
        public IBinder acquireContentProviderClient(ProviderInfo providerInfo) throws RemoteException {
            return null;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.xinzhu.overmind.server.am.d
        public Intent bindService(Intent intent, IBinder iBinder, String str, int i10, int i11) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.am.d
        public PendingIntentRecord findPendingIntent(IBinder iBinder) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.am.d
        public ProcessRecord findProcessRecordByPid(int i10) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.am.d
        public ComponentName getCallingActivity(IBinder iBinder) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.am.d
        public String getCallingPackage(IBinder iBinder) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.am.d
        public String getLaunchedFromPackage(IBinder iBinder) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.am.d
        public int getLaunchedFromUid(IBinder iBinder) throws RemoteException {
            return 0;
        }

        @Override // com.xinzhu.overmind.server.am.d
        public MindTaskInfo getTaskInfo(int i10) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.am.d
        public ClientConfig initProcess(String str, String str2, int i10) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.am.d
        public void onActivityCreated(int i10, IBinder iBinder, IBinder iBinder2) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.am.d
        public void onActivityDestroyed(IBinder iBinder) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.am.d
        public void onActivityResumed(IBinder iBinder) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.am.d
        public void onFinishActivity(IBinder iBinder) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.am.d
        public void onFinishActivityAffinity(IBinder iBinder) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.am.d
        public void onServiceDestroy(Intent intent, int i10) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.am.d
        public UnbindRecord onServiceUnbind(Intent intent, int i10) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.am.d
        public void onStartCommand(Intent intent, int i10) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.am.d
        public IBinder peekService(Intent intent, String str, int i10) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.am.d
        public void registerPendingIntent(PendingIntentRecord pendingIntentRecord) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.am.d
        public void restartProcess(String str, String str2, int i10) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.am.d
        public Intent sendBroadcast(Intent intent, String str, int i10) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.am.d
        public int startActivities(int i10, String str, Intent[] intentArr, String[] strArr, IBinder iBinder, Bundle bundle) throws RemoteException {
            return 0;
        }

        @Override // com.xinzhu.overmind.server.am.d
        public void startActivity(Intent intent, int i10) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.am.d
        public int startActivityAms(int i10, String str, Intent intent, String str2, IBinder iBinder, String str3, int i11, int i12, Bundle bundle) throws RemoteException {
            return 0;
        }

        @Override // com.xinzhu.overmind.server.am.d
        public int startActivityFromExistTask(Intent intent, int i10) throws RemoteException {
            return 0;
        }

        @Override // com.xinzhu.overmind.server.am.d
        public Intent startService(Intent intent, String str, int i10, int i11) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.am.d
        public void stopPackage(String str, int i10) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.am.d
        public Intent stopService(Intent intent, String str, int i10) throws RemoteException {
            return null;
        }

        @Override // com.xinzhu.overmind.server.am.d
        public void unbindService(IBinder iBinder, int i10) throws RemoteException {
        }

        @Override // com.xinzhu.overmind.server.am.d
        public void unregisterPendingIntent(IBinder iBinder) throws RemoteException {
        }
    }

    public static abstract class b extends Binder implements d {
        private static final String DESCRIPTOR = "com.xinzhu.overmind.server.am.IMindActivityManagerService";
        static final int TRANSACTION_acquireContentProviderClient = 15;
        static final int TRANSACTION_bindService = 10;
        static final int TRANSACTION_findPendingIntent = 27;
        static final int TRANSACTION_findProcessRecordByPid = 28;
        static final int TRANSACTION_getCallingActivity = 23;
        static final int TRANSACTION_getCallingPackage = 24;
        static final int TRANSACTION_getLaunchedFromPackage = 30;
        static final int TRANSACTION_getLaunchedFromUid = 29;
        static final int TRANSACTION_getTaskInfo = 31;
        static final int TRANSACTION_initProcess = 1;
        static final int TRANSACTION_onActivityCreated = 18;
        static final int TRANSACTION_onActivityDestroyed = 20;
        static final int TRANSACTION_onActivityResumed = 19;
        static final int TRANSACTION_onFinishActivity = 21;
        static final int TRANSACTION_onFinishActivityAffinity = 22;
        static final int TRANSACTION_onServiceDestroy = 14;
        static final int TRANSACTION_onServiceUnbind = 13;
        static final int TRANSACTION_onStartCommand = 12;
        static final int TRANSACTION_peekService = 17;
        static final int TRANSACTION_registerPendingIntent = 25;
        static final int TRANSACTION_restartProcess = 2;
        static final int TRANSACTION_sendBroadcast = 16;
        static final int TRANSACTION_startActivities = 6;
        static final int TRANSACTION_startActivity = 3;
        static final int TRANSACTION_startActivityAms = 5;
        static final int TRANSACTION_startActivityFromExistTask = 4;
        static final int TRANSACTION_startService = 8;
        static final int TRANSACTION_stopPackage = 7;
        static final int TRANSACTION_stopService = 9;
        static final int TRANSACTION_unbindService = 11;
        static final int TRANSACTION_unregisterPendingIntent = 26;

        private static class a implements d {

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public static d f89630c;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private IBinder f89631b;

            a(IBinder iBinder) {
                this.f89631b = iBinder;
            }

            @Override // com.xinzhu.overmind.server.am.d
            public IBinder acquireContentProviderClient(ProviderInfo providerInfo) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (providerInfo != null) {
                        parcelObtain.writeInt(1);
                        providerInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.f89631b.transact(15, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().acquireContentProviderClient(providerInfo);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readStrongBinder();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f89631b;
            }

            @Override // com.xinzhu.overmind.server.am.d
            public Intent bindService(Intent intent, IBinder iBinder, String str, int i10, int i11) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (intent != null) {
                        parcelObtain.writeInt(1);
                        intent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    if (!this.f89631b.transact(10, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().bindService(intent, iBinder, str, i10, i11);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.am.d
            public PendingIntentRecord findPendingIntent(IBinder iBinder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    if (!this.f89631b.transact(27, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().findPendingIntent(iBinder);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? PendingIntentRecord.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.am.d
            public ProcessRecord findProcessRecordByPid(int i10) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (!this.f89631b.transact(28, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().findProcessRecordByPid(i10);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ProcessRecord.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.am.d
            public ComponentName getCallingActivity(IBinder iBinder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    if (!this.f89631b.transact(23, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().getCallingActivity(iBinder);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? (ComponentName) ComponentName.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.am.d
            public String getCallingPackage(IBinder iBinder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    if (!this.f89631b.transact(24, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().getCallingPackage(iBinder);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.am.d
            public String getLaunchedFromPackage(IBinder iBinder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    if (!this.f89631b.transact(30, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().getLaunchedFromPackage(iBinder);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.am.d
            public int getLaunchedFromUid(IBinder iBinder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    if (!this.f89631b.transact(29, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().getLaunchedFromUid(iBinder);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.am.d
            public MindTaskInfo getTaskInfo(int i10) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (!this.f89631b.transact(31, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().getTaskInfo(i10);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? MindTaskInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.am.d
            public ClientConfig initProcess(String str, String str2, int i10) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeInt(i10);
                    if (!this.f89631b.transact(1, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().initProcess(str, str2, i10);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ClientConfig.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.am.d
            public void onActivityCreated(int i10, IBinder iBinder, IBinder iBinder2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeStrongBinder(iBinder2);
                    if (this.f89631b.transact(18, parcelObtain, parcelObtain2, 0) || b.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        b.getDefaultImpl().onActivityCreated(i10, iBinder, iBinder2);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.am.d
            public void onActivityDestroyed(IBinder iBinder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    if (this.f89631b.transact(20, parcelObtain, parcelObtain2, 0) || b.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        b.getDefaultImpl().onActivityDestroyed(iBinder);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.am.d
            public void onActivityResumed(IBinder iBinder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    if (this.f89631b.transact(19, parcelObtain, parcelObtain2, 0) || b.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        b.getDefaultImpl().onActivityResumed(iBinder);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.am.d
            public void onFinishActivity(IBinder iBinder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    if (this.f89631b.transact(21, parcelObtain, parcelObtain2, 0) || b.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        b.getDefaultImpl().onFinishActivity(iBinder);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.am.d
            public void onFinishActivityAffinity(IBinder iBinder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    if (this.f89631b.transact(22, parcelObtain, parcelObtain2, 0) || b.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        b.getDefaultImpl().onFinishActivityAffinity(iBinder);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.am.d
            public void onServiceDestroy(Intent intent, int i10) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (intent != null) {
                        parcelObtain.writeInt(1);
                        intent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i10);
                    if (this.f89631b.transact(14, parcelObtain, parcelObtain2, 0) || b.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        b.getDefaultImpl().onServiceDestroy(intent, i10);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.am.d
            public UnbindRecord onServiceUnbind(Intent intent, int i10) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (intent != null) {
                        parcelObtain.writeInt(1);
                        intent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i10);
                    if (!this.f89631b.transact(13, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().onServiceUnbind(intent, i10);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? UnbindRecord.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.am.d
            public void onStartCommand(Intent intent, int i10) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (intent != null) {
                        parcelObtain.writeInt(1);
                        intent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i10);
                    if (this.f89631b.transact(12, parcelObtain, parcelObtain2, 0) || b.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        b.getDefaultImpl().onStartCommand(intent, i10);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.am.d
            public IBinder peekService(Intent intent, String str, int i10) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (intent != null) {
                        parcelObtain.writeInt(1);
                        intent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i10);
                    if (!this.f89631b.transact(17, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().peekService(intent, str, i10);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readStrongBinder();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.am.d
            public void registerPendingIntent(PendingIntentRecord pendingIntentRecord) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (pendingIntentRecord != null) {
                        parcelObtain.writeInt(1);
                        pendingIntentRecord.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.f89631b.transact(25, parcelObtain, parcelObtain2, 0) || b.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        b.getDefaultImpl().registerPendingIntent(pendingIntentRecord);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.am.d
            public void restartProcess(String str, String str2, int i10) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeInt(i10);
                    if (this.f89631b.transact(2, parcelObtain, parcelObtain2, 0) || b.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        b.getDefaultImpl().restartProcess(str, str2, i10);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.am.d
            public Intent sendBroadcast(Intent intent, String str, int i10) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (intent != null) {
                        parcelObtain.writeInt(1);
                        intent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i10);
                    if (!this.f89631b.transact(16, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().sendBroadcast(intent, str, i10);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.am.d
            public int startActivities(int i10, String str, Intent[] intentArr, String[] strArr, IBinder iBinder, Bundle bundle) throws Throwable {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeString(str);
                    parcelObtain.writeTypedArray(intentArr, 0);
                    parcelObtain.writeStringArray(strArr);
                    parcelObtain.writeStrongBinder(iBinder);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    try {
                        if (!this.f89631b.transact(6, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                            int iStartActivities = b.getDefaultImpl().startActivities(i10, str, intentArr, strArr, iBinder, bundle);
                            parcelObtain2.recycle();
                            parcelObtain.recycle();
                            return iStartActivities;
                        }
                        parcelObtain2.readException();
                        int i11 = parcelObtain2.readInt();
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                        return i11;
                    } catch (Throwable th) {
                        th = th;
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }

            @Override // com.xinzhu.overmind.server.am.d
            public void startActivity(Intent intent, int i10) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (intent != null) {
                        parcelObtain.writeInt(1);
                        intent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i10);
                    if (this.f89631b.transact(3, parcelObtain, parcelObtain2, 0) || b.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        b.getDefaultImpl().startActivity(intent, i10);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.am.d
            public int startActivityAms(int i10, String str, Intent intent, String str2, IBinder iBinder, String str3, int i11, int i12, Bundle bundle) throws Throwable {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeString(str);
                    if (intent != null) {
                        parcelObtain.writeInt(1);
                        intent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeString(str2);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeString(str3);
                    parcelObtain.writeInt(i11);
                    parcelObtain.writeInt(i12);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    try {
                        if (!this.f89631b.transact(5, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                            int iStartActivityAms = b.getDefaultImpl().startActivityAms(i10, str, intent, str2, iBinder, str3, i11, i12, bundle);
                            parcelObtain2.recycle();
                            parcelObtain.recycle();
                            return iStartActivityAms;
                        }
                        parcelObtain2.readException();
                        int i13 = parcelObtain2.readInt();
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                        return i13;
                    } catch (Throwable th) {
                        th = th;
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }

            @Override // com.xinzhu.overmind.server.am.d
            public int startActivityFromExistTask(Intent intent, int i10) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (intent != null) {
                        parcelObtain.writeInt(1);
                        intent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i10);
                    if (!this.f89631b.transact(4, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().startActivityFromExistTask(intent, i10);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.am.d
            public Intent startService(Intent intent, String str, int i10, int i11) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (intent != null) {
                        parcelObtain.writeInt(1);
                        intent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    if (!this.f89631b.transact(8, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().startService(intent, str, i10, i11);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.am.d
            public void stopPackage(String str, int i10) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i10);
                    if (this.f89631b.transact(7, parcelObtain, parcelObtain2, 0) || b.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        b.getDefaultImpl().stopPackage(str, i10);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.am.d
            public Intent stopService(Intent intent, String str, int i10) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    if (intent != null) {
                        parcelObtain.writeInt(1);
                        intent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i10);
                    if (!this.f89631b.transact(9, parcelObtain, parcelObtain2, 0) && b.getDefaultImpl() != null) {
                        return b.getDefaultImpl().stopService(intent, str, i10);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String u() {
                return b.DESCRIPTOR;
            }

            @Override // com.xinzhu.overmind.server.am.d
            public void unbindService(IBinder iBinder, int i10) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeInt(i10);
                    if (this.f89631b.transact(11, parcelObtain, parcelObtain2, 0) || b.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        b.getDefaultImpl().unbindService(iBinder, i10);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.xinzhu.overmind.server.am.d
            public void unregisterPendingIntent(IBinder iBinder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    if (this.f89631b.transact(26, parcelObtain, parcelObtain2, 0) || b.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        b.getDefaultImpl().unregisterPendingIntent(iBinder);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public b() {
            attachInterface(this, DESCRIPTOR);
        }

        public static d asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof d)) ? new a(iBinder) : (d) iInterfaceQueryLocalInterface;
        }

        public static d getDefaultImpl() {
            return a.f89630c;
        }

        public static boolean setDefaultImpl(d dVar) {
            if (a.f89630c != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (dVar == null) {
                return false;
            }
            a.f89630c = dVar;
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
                    ClientConfig clientConfigInitProcess = initProcess(parcel.readString(), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    if (clientConfigInitProcess != null) {
                        parcel2.writeInt(1);
                        clientConfigInitProcess.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    restartProcess(parcel.readString(), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    startActivity(parcel.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iStartActivityFromExistTask = startActivityFromExistTask(parcel.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iStartActivityFromExistTask);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iStartActivityAms = startActivityAms(parcel.readInt(), parcel.readString(), parcel.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(parcel) : null, parcel.readString(), parcel.readStrongBinder(), parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(iStartActivityAms);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iStartActivities = startActivities(parcel.readInt(), parcel.readString(), (Intent[]) parcel.createTypedArray(Intent.CREATOR), parcel.createStringArray(), parcel.readStrongBinder(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(iStartActivities);
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    stopPackage(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    Intent intentStartService = startService(parcel.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(parcel) : null, parcel.readString(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    if (intentStartService != null) {
                        parcel2.writeInt(1);
                        intentStartService.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    Intent intentStopService = stopService(parcel.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(parcel) : null, parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    if (intentStopService != null) {
                        parcel2.writeInt(1);
                        intentStopService.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    Intent intentBindService = bindService(parcel.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(parcel) : null, parcel.readStrongBinder(), parcel.readString(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    if (intentBindService != null) {
                        parcel2.writeInt(1);
                        intentBindService.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    unbindService(parcel.readStrongBinder(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    onStartCommand(parcel.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    UnbindRecord unbindRecordOnServiceUnbind = onServiceUnbind(parcel.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                    parcel2.writeNoException();
                    if (unbindRecordOnServiceUnbind != null) {
                        parcel2.writeInt(1);
                        unbindRecordOnServiceUnbind.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    onServiceDestroy(parcel.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    IBinder iBinderAcquireContentProviderClient = acquireContentProviderClient(parcel.readInt() != 0 ? (ProviderInfo) ProviderInfo.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(iBinderAcquireContentProviderClient);
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    Intent intentSendBroadcast = sendBroadcast(parcel.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(parcel) : null, parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    if (intentSendBroadcast != null) {
                        parcel2.writeInt(1);
                        intentSendBroadcast.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    IBinder iBinderPeekService = peekService(parcel.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(parcel) : null, parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(iBinderPeekService);
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    onActivityCreated(parcel.readInt(), parcel.readStrongBinder(), parcel.readStrongBinder());
                    parcel2.writeNoException();
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    onActivityResumed(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    onActivityDestroyed(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    return true;
                case 21:
                    parcel.enforceInterface(DESCRIPTOR);
                    onFinishActivity(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    return true;
                case 22:
                    parcel.enforceInterface(DESCRIPTOR);
                    onFinishActivityAffinity(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    return true;
                case 23:
                    parcel.enforceInterface(DESCRIPTOR);
                    ComponentName callingActivity = getCallingActivity(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    if (callingActivity != null) {
                        parcel2.writeInt(1);
                        callingActivity.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 24:
                    parcel.enforceInterface(DESCRIPTOR);
                    String callingPackage = getCallingPackage(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    parcel2.writeString(callingPackage);
                    return true;
                case 25:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerPendingIntent(parcel.readInt() != 0 ? PendingIntentRecord.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 26:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterPendingIntent(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    return true;
                case 27:
                    parcel.enforceInterface(DESCRIPTOR);
                    PendingIntentRecord pendingIntentRecordFindPendingIntent = findPendingIntent(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    if (pendingIntentRecordFindPendingIntent != null) {
                        parcel2.writeInt(1);
                        pendingIntentRecordFindPendingIntent.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 28:
                    parcel.enforceInterface(DESCRIPTOR);
                    ProcessRecord processRecordFindProcessRecordByPid = findProcessRecordByPid(parcel.readInt());
                    parcel2.writeNoException();
                    if (processRecordFindProcessRecordByPid != null) {
                        parcel2.writeInt(1);
                        processRecordFindProcessRecordByPid.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 29:
                    parcel.enforceInterface(DESCRIPTOR);
                    int launchedFromUid = getLaunchedFromUid(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    parcel2.writeInt(launchedFromUid);
                    return true;
                case 30:
                    parcel.enforceInterface(DESCRIPTOR);
                    String launchedFromPackage = getLaunchedFromPackage(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    parcel2.writeString(launchedFromPackage);
                    return true;
                case 31:
                    parcel.enforceInterface(DESCRIPTOR);
                    MindTaskInfo taskInfo = getTaskInfo(parcel.readInt());
                    parcel2.writeNoException();
                    if (taskInfo != null) {
                        parcel2.writeInt(1);
                        taskInfo.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                default:
                    return super.onTransact(i10, parcel, parcel2, i11);
            }
        }
    }

    IBinder acquireContentProviderClient(ProviderInfo providerInfo) throws RemoteException;

    Intent bindService(Intent intent, IBinder iBinder, String str, int i10, int i11) throws RemoteException;

    PendingIntentRecord findPendingIntent(IBinder iBinder) throws RemoteException;

    ProcessRecord findProcessRecordByPid(int i10) throws RemoteException;

    ComponentName getCallingActivity(IBinder iBinder) throws RemoteException;

    String getCallingPackage(IBinder iBinder) throws RemoteException;

    String getLaunchedFromPackage(IBinder iBinder) throws RemoteException;

    int getLaunchedFromUid(IBinder iBinder) throws RemoteException;

    MindTaskInfo getTaskInfo(int i10) throws RemoteException;

    ClientConfig initProcess(String str, String str2, int i10) throws RemoteException;

    void onActivityCreated(int i10, IBinder iBinder, IBinder iBinder2) throws RemoteException;

    void onActivityDestroyed(IBinder iBinder) throws RemoteException;

    void onActivityResumed(IBinder iBinder) throws RemoteException;

    void onFinishActivity(IBinder iBinder) throws RemoteException;

    void onFinishActivityAffinity(IBinder iBinder) throws RemoteException;

    void onServiceDestroy(Intent intent, int i10) throws RemoteException;

    UnbindRecord onServiceUnbind(Intent intent, int i10) throws RemoteException;

    void onStartCommand(Intent intent, int i10) throws RemoteException;

    IBinder peekService(Intent intent, String str, int i10) throws RemoteException;

    void registerPendingIntent(PendingIntentRecord pendingIntentRecord) throws RemoteException;

    void restartProcess(String str, String str2, int i10) throws RemoteException;

    Intent sendBroadcast(Intent intent, String str, int i10) throws RemoteException;

    int startActivities(int i10, String str, Intent[] intentArr, String[] strArr, IBinder iBinder, Bundle bundle) throws RemoteException;

    void startActivity(Intent intent, int i10) throws RemoteException;

    int startActivityAms(int i10, String str, Intent intent, String str2, IBinder iBinder, String str3, int i11, int i12, Bundle bundle) throws RemoteException;

    int startActivityFromExistTask(Intent intent, int i10) throws RemoteException;

    Intent startService(Intent intent, String str, int i10, int i11) throws RemoteException;

    void stopPackage(String str, int i10) throws RemoteException;

    Intent stopService(Intent intent, String str, int i10) throws RemoteException;

    void unbindService(IBinder iBinder, int i10) throws RemoteException;

    void unregisterPendingIntent(IBinder iBinder) throws RemoteException;
}
