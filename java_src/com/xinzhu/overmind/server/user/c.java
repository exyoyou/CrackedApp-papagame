package com.xinzhu.overmind.server.user;

import android.os.Parcel;
import android.os.RemoteException;
import androidx.core.util.AtomicFile;
import com.xinzhu.overmind.server.g;
import com.xinzhu.overmind.server.pm.MindPackageManagerService;
import com.xinzhu.overmind.utils.l;
import com.xinzhu.overmind.utils.p;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import na.d;

/* JADX INFO: loaded from: classes8.dex */
public class c extends com.xinzhu.overmind.server.user.a.b implements g {
    private static c sService = new c();
    public final HashMap<Integer, MindUserInfo> mUsers = new HashMap<>();
    public final Object mUserLock = new Object();
    private List<b> mUserListeners = new ArrayList();

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f89956b;

        a(int i10) {
            this.f89956b = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (String str : na.c.a()) {
                if (!MindPackageManagerService.get().isInstalled(str, this.f89956b) && MindPackageManagerService.get().isInstalled(str, 0)) {
                    MindPackageManagerService.get().installPackageAsExist(str, this.f89956b);
                }
            }
        }
    }

    private MindUserInfo createUserLocked(int i10) {
        MindUserInfo mindUserInfo = new MindUserInfo();
        mindUserInfo.f89950b = i10;
        mindUserInfo.f89951c = MindUserStatus.ENABLE;
        this.mUsers.put(Integer.valueOf(i10), mindUserInfo);
        synchronized (this.mUsers) {
            saveUserInfoLocked();
        }
        Iterator<b> it2 = this.mUserListeners.iterator();
        while (it2.hasNext()) {
            it2.next().c(i10);
        }
        if (d.a()) {
            d.d(i10);
        }
        if (i10 != 0) {
            new Thread(new a(i10)).start();
        }
        return mindUserInfo;
    }

    public static c get() {
        return sService;
    }

    private void saveUserInfoLocked() {
        Parcel parcelObtain = Parcel.obtain();
        AtomicFile atomicFile = new AtomicFile(com.xinzhu.overmind.a.Z());
        try {
            parcelObtain.writeTypedList(new ArrayList(this.mUsers.values()));
            FileOutputStream fileOutputStreamStartWrite = null;
            try {
                try {
                    fileOutputStreamStartWrite = atomicFile.startWrite();
                    l.z(parcelObtain, fileOutputStreamStartWrite);
                    atomicFile.finishWrite(fileOutputStreamStartWrite);
                    p.a(fileOutputStreamStartWrite);
                } catch (IOException e10) {
                    e10.printStackTrace();
                    atomicFile.failWrite(fileOutputStreamStartWrite);
                    p.a(fileOutputStreamStartWrite);
                }
                parcelObtain.recycle();
            } catch (Throwable th) {
                p.a(fileOutputStreamStartWrite);
                throw th;
            }
        } catch (Throwable th2) {
            parcelObtain.recycle();
            throw th2;
        }
    }

    private void scanUserL() {
        Throwable th;
        FileInputStream fileInputStream;
        Exception e10;
        synchronized (this.mUserLock) {
            Parcel parcelObtain = Parcel.obtain();
            try {
                try {
                    if (!com.xinzhu.overmind.a.Z().exists()) {
                        parcelObtain.recycle();
                        p.a(null);
                        return;
                    }
                    fileInputStream = new FileInputStream(com.xinzhu.overmind.a.Z());
                    try {
                        byte[] bArrW = l.w(fileInputStream);
                        parcelObtain.unmarshall(bArrW, 0, bArrW.length);
                        parcelObtain.setDataPosition(0);
                        ArrayList<MindUserInfo> arrayListCreateTypedArrayList = parcelObtain.createTypedArrayList(MindUserInfo.CREATOR);
                        if (arrayListCreateTypedArrayList == null) {
                            parcelObtain.recycle();
                            p.a(fileInputStream);
                            return;
                        }
                        synchronized (this.mUsers) {
                            this.mUsers.clear();
                            for (MindUserInfo mindUserInfo : arrayListCreateTypedArrayList) {
                                this.mUsers.put(Integer.valueOf(mindUserInfo.f89950b), mindUserInfo);
                            }
                        }
                        parcelObtain.recycle();
                        p.a(fileInputStream);
                    } catch (Exception e11) {
                        e10 = e11;
                        e10.printStackTrace();
                        parcelObtain.recycle();
                        p.a(fileInputStream);
                    }
                } catch (Throwable th2) {
                    th = th2;
                    parcelObtain.recycle();
                    p.a(null);
                    throw th;
                }
            } catch (Exception e12) {
                fileInputStream = null;
                e10 = e12;
            } catch (Throwable th3) {
                th = th3;
                parcelObtain.recycle();
                p.a(null);
                throw th;
            }
            e10.printStackTrace();
            parcelObtain.recycle();
            p.a(fileInputStream);
        }
    }

    @Override // com.xinzhu.overmind.server.user.a
    public MindUserInfo createUser(int i10) throws RemoteException {
        synchronized (this.mUserLock) {
            if (exists(i10)) {
                return getUserInfo(i10);
            }
            return createUserLocked(i10);
        }
    }

    @Override // com.xinzhu.overmind.server.user.a
    public void deleteUser(int i10) throws RemoteException {
        synchronized (this.mUserLock) {
            synchronized (this.mUsers) {
                try {
                    MindPackageManagerService.get().deleteUser(i10);
                    this.mUsers.remove(Integer.valueOf(i10));
                    saveUserInfoLocked();
                    l.j(com.xinzhu.overmind.a.X(i10));
                    for (b bVar : this.mUserListeners) {
                        bVar.a(i10);
                        bVar.b(i10);
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
    }

    @Override // com.xinzhu.overmind.server.user.a
    public boolean exists(int i10) {
        boolean z10;
        synchronized (this.mUsers) {
            z10 = this.mUsers.get(Integer.valueOf(i10)) != null;
        }
        return z10;
    }

    public List<MindUserInfo> getAllUsers() {
        ArrayList arrayList;
        synchronized (this.mUsers) {
            arrayList = new ArrayList(this.mUsers.values());
        }
        return arrayList;
    }

    @Override // com.xinzhu.overmind.server.user.a
    public MindUserInfo getUserInfo(int i10) {
        MindUserInfo mindUserInfo;
        synchronized (this.mUserLock) {
            mindUserInfo = this.mUsers.get(Integer.valueOf(i10));
        }
        return mindUserInfo;
    }

    @Override // com.xinzhu.overmind.server.user.a
    public List<MindUserInfo> getUsers() {
        ArrayList arrayList;
        synchronized (this.mUsers) {
            arrayList = new ArrayList();
            for (MindUserInfo mindUserInfo : this.mUsers.values()) {
                if (mindUserInfo.f89950b >= 0) {
                    arrayList.add(mindUserInfo);
                }
            }
        }
        return arrayList;
    }

    public void registerListener(b bVar) {
        synchronized (this.mUserLock) {
            this.mUserListeners.add(bVar);
        }
    }

    public void removeListener(b bVar) {
        synchronized (this.mUserLock) {
            this.mUserListeners.remove(bVar);
        }
    }

    @Override // com.xinzhu.overmind.server.g
    public void systemReady() {
        scanUserL();
    }
}
