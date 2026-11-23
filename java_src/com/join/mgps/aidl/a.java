package com.join.mgps.aidl;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes3.dex */
public interface a extends IInterface {

    /* JADX INFO: renamed from: x1, reason: collision with root package name */
    public static final String f64074x1 = "com.join.mgps.aidl.AIDLService";

    /* JADX INFO: renamed from: com.join.mgps.aidl.a$a, reason: collision with other inner class name */
    public static class C0699a implements a {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.join.mgps.aidl.a
        public void emuConfigChanged() throws RemoteException {
        }

        @Override // com.join.mgps.aidl.a
        public void emuConfigPost(String uid, int type, String file) throws RemoteException {
        }

        @Override // com.join.mgps.aidl.a
        public void emuLogCat(String gameId, String uid, String packageName, String version, String errorInfo) throws RemoteException {
        }

        @Override // com.join.mgps.aidl.a
        public void gameOut(String gameId, int sec, String uid) throws RemoteException {
        }

        @Override // com.join.mgps.aidl.a
        public void gameStart(String gameId) throws RemoteException {
        }

        @Override // com.join.mgps.aidl.a
        public void gameStart15(String gameId, String uid) throws RemoteException {
        }

        @Override // com.join.mgps.aidl.a
        public void gameStart160(String gameId, String uid, int startMode) throws RemoteException {
        }

        @Override // com.join.mgps.aidl.a
        public void gameStartBattle(String gameId) throws RemoteException {
        }

        @Override // com.join.mgps.aidl.a
        public void gameStartBattle15(String gameId, String uid) throws RemoteException {
        }

        @Override // com.join.mgps.aidl.a
        public void gameWorldData(String data) throws RemoteException {
        }

        @Override // com.join.mgps.aidl.a
        public void netBattleMatchEfficiency(String gameId, String jsonData, String uid) throws RemoteException {
        }

        @Override // com.join.mgps.aidl.a
        public String oauth4StandaloneGame(String appKey) throws RemoteException {
            return null;
        }

        @Override // com.join.mgps.aidl.a
        public void playTime(String gameId, String uid, long sec) throws RemoteException {
        }

        @Override // com.join.mgps.aidl.a
        public void plugEfficiency(String gameId, String jsonData, String uid) throws RemoteException {
        }

        @Override // com.join.mgps.aidl.a
        public boolean unLockSP(String gameId) throws RemoteException {
            return false;
        }
    }

    public static abstract class b extends Binder implements a {
        static final int TRANSACTION_emuConfigChanged = 9;
        static final int TRANSACTION_emuConfigPost = 10;
        static final int TRANSACTION_emuLogCat = 11;
        static final int TRANSACTION_gameOut = 3;
        static final int TRANSACTION_gameStart = 6;
        static final int TRANSACTION_gameStart15 = 1;
        static final int TRANSACTION_gameStart160 = 12;
        static final int TRANSACTION_gameStartBattle = 7;
        static final int TRANSACTION_gameStartBattle15 = 2;
        static final int TRANSACTION_gameWorldData = 5;
        static final int TRANSACTION_netBattleMatchEfficiency = 4;
        static final int TRANSACTION_oauth4StandaloneGame = 15;
        static final int TRANSACTION_playTime = 14;
        static final int TRANSACTION_plugEfficiency = 13;
        static final int TRANSACTION_unLockSP = 8;

        /* JADX INFO: renamed from: com.join.mgps.aidl.a$b$a, reason: collision with other inner class name */
        private static class C0700a implements a {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private IBinder f64075b;

            C0700a(IBinder remote) {
                this.f64075b = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f64075b;
            }

            @Override // com.join.mgps.aidl.a
            public void emuConfigChanged() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.f64074x1);
                    this.f64075b.transact(9, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.join.mgps.aidl.a
            public void emuConfigPost(String uid, int type, String file) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.f64074x1);
                    parcelObtain.writeString(uid);
                    parcelObtain.writeInt(type);
                    parcelObtain.writeString(file);
                    this.f64075b.transact(10, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.join.mgps.aidl.a
            public void emuLogCat(String gameId, String uid, String packageName, String version, String errorInfo) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.f64074x1);
                    parcelObtain.writeString(gameId);
                    parcelObtain.writeString(uid);
                    parcelObtain.writeString(packageName);
                    parcelObtain.writeString(version);
                    parcelObtain.writeString(errorInfo);
                    this.f64075b.transact(11, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.join.mgps.aidl.a
            public void gameOut(String gameId, int sec, String uid) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.f64074x1);
                    parcelObtain.writeString(gameId);
                    parcelObtain.writeInt(sec);
                    parcelObtain.writeString(uid);
                    this.f64075b.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.join.mgps.aidl.a
            public void gameStart(String gameId) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.f64074x1);
                    parcelObtain.writeString(gameId);
                    this.f64075b.transact(6, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.join.mgps.aidl.a
            public void gameStart15(String gameId, String uid) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.f64074x1);
                    parcelObtain.writeString(gameId);
                    parcelObtain.writeString(uid);
                    this.f64075b.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.join.mgps.aidl.a
            public void gameStart160(String gameId, String uid, int startMode) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.f64074x1);
                    parcelObtain.writeString(gameId);
                    parcelObtain.writeString(uid);
                    parcelObtain.writeInt(startMode);
                    this.f64075b.transact(12, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.join.mgps.aidl.a
            public void gameStartBattle(String gameId) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.f64074x1);
                    parcelObtain.writeString(gameId);
                    this.f64075b.transact(7, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.join.mgps.aidl.a
            public void gameStartBattle15(String gameId, String uid) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.f64074x1);
                    parcelObtain.writeString(gameId);
                    parcelObtain.writeString(uid);
                    this.f64075b.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.join.mgps.aidl.a
            public void gameWorldData(String data) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.f64074x1);
                    parcelObtain.writeString(data);
                    this.f64075b.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.join.mgps.aidl.a
            public void netBattleMatchEfficiency(String gameId, String jsonData, String uid) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.f64074x1);
                    parcelObtain.writeString(gameId);
                    parcelObtain.writeString(jsonData);
                    parcelObtain.writeString(uid);
                    this.f64075b.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.join.mgps.aidl.a
            public String oauth4StandaloneGame(String appKey) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.f64074x1);
                    parcelObtain.writeString(appKey);
                    this.f64075b.transact(15, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.join.mgps.aidl.a
            public void playTime(String gameId, String uid, long sec) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.f64074x1);
                    parcelObtain.writeString(gameId);
                    parcelObtain.writeString(uid);
                    parcelObtain.writeLong(sec);
                    this.f64075b.transact(14, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.join.mgps.aidl.a
            public void plugEfficiency(String gameId, String jsonData, String uid) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.f64074x1);
                    parcelObtain.writeString(gameId);
                    parcelObtain.writeString(jsonData);
                    parcelObtain.writeString(uid);
                    this.f64075b.transact(13, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String u() {
                return a.f64074x1;
            }

            @Override // com.join.mgps.aidl.a
            public boolean unLockSP(String gameId) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.f64074x1);
                    parcelObtain.writeString(gameId);
                    this.f64075b.transact(8, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public b() {
            attachInterface(this, a.f64074x1);
        }

        public static a asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(a.f64074x1);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof a)) ? new C0700a(obj) : (a) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 >= 1 && i10 <= 16777215) {
                parcel.enforceInterface(a.f64074x1);
            }
            if (i10 == 1598968902) {
                parcel2.writeString(a.f64074x1);
                return true;
            }
            switch (i10) {
                case 1:
                    gameStart15(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 2:
                    gameStartBattle15(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 3:
                    gameOut(parcel.readString(), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 4:
                    netBattleMatchEfficiency(parcel.readString(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 5:
                    gameWorldData(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 6:
                    gameStart(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 7:
                    gameStartBattle(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 8:
                    boolean zUnLockSP = unLockSP(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zUnLockSP ? 1 : 0);
                    return true;
                case 9:
                    emuConfigChanged();
                    parcel2.writeNoException();
                    return true;
                case 10:
                    emuConfigPost(parcel.readString(), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 11:
                    emuLogCat(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 12:
                    gameStart160(parcel.readString(), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 13:
                    plugEfficiency(parcel.readString(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 14:
                    playTime(parcel.readString(), parcel.readString(), parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case 15:
                    String strOauth4StandaloneGame = oauth4StandaloneGame(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(strOauth4StandaloneGame);
                    return true;
                default:
                    return super.onTransact(i10, parcel, parcel2, i11);
            }
        }
    }

    void emuConfigChanged() throws RemoteException;

    void emuConfigPost(String uid, int type, String file) throws RemoteException;

    void emuLogCat(String gameId, String uid, String packageName, String version, String errorInfo) throws RemoteException;

    void gameOut(String gameId, int sec, String uid) throws RemoteException;

    void gameStart(String gameId) throws RemoteException;

    void gameStart15(String gameId, String uid) throws RemoteException;

    void gameStart160(String gameId, String uid, int startMode) throws RemoteException;

    void gameStartBattle(String gameId) throws RemoteException;

    void gameStartBattle15(String gameId, String uid) throws RemoteException;

    void gameWorldData(String data) throws RemoteException;

    void netBattleMatchEfficiency(String gameId, String jsonData, String uid) throws RemoteException;

    String oauth4StandaloneGame(String appKey) throws RemoteException;

    void playTime(String gameId, String uid, long sec) throws RemoteException;

    void plugEfficiency(String gameId, String jsonData, String uid) throws RemoteException;

    boolean unLockSP(String gameId) throws RemoteException;
}
