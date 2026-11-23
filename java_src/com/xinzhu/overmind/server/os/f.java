package com.xinzhu.overmind.server.os;

import android.os.Parcel;
import android.os.RemoteException;
import android.util.AtomicFile;
import com.xinzhu.overmind.utils.l;
import com.xinzhu.overmind.utils.p;
import java.io.File;
import java.io.FileOutputStream;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class f extends a.b implements com.xinzhu.overmind.server.g {
    public static final String TAG = "f";
    private static final f sService = new f();
    private final Map<Integer, MindDeviceInfo> mDeviceInfoMap = new HashMap();
    private boolean mGlobalEnable = true;

    public f() {
        loadPersistence();
    }

    public static f get() {
        return sService;
    }

    private MindDeviceInfo getOrGenerateMindDeviceInfoLocked(int i10) {
        MindDeviceInfo mindDeviceInfo = this.mDeviceInfoMap.get(Integer.valueOf(i10));
        if (mindDeviceInfo != null) {
            return mindDeviceInfo;
        }
        MindDeviceInfo mindDeviceInfoB = MindDeviceInfo.b();
        this.mDeviceInfoMap.put(Integer.valueOf(i10), mindDeviceInfoB);
        savePersistence();
        return mindDeviceInfoB;
    }

    @Override // com.xinzhu.overmind.server.os.a
    public MindDeviceInfo getDeviceInfo(int i10) throws RemoteException {
        synchronized (this.mDeviceInfoMap) {
            if (!this.mGlobalEnable) {
                return null;
            }
            return getOrGenerateMindDeviceInfoLocked(i10);
        }
    }

    public void loadPersistence() {
        Parcel parcelObtain = Parcel.obtain();
        File fileZ = com.xinzhu.overmind.a.z();
        if (fileZ.exists()) {
            try {
                byte[] bArrV = l.v(fileZ);
                parcelObtain.unmarshall(bArrV, 0, bArrV.length);
                parcelObtain.setDataPosition(0);
                this.mDeviceInfoMap.clear();
                this.mGlobalEnable = parcelObtain.readByte() != 0;
                int i10 = parcelObtain.readInt();
                for (int i11 = 0; i11 < i10; i11++) {
                    this.mDeviceInfoMap.put(Integer.valueOf(parcelObtain.readInt()), (MindDeviceInfo) parcelObtain.readParcelable(MindDeviceInfo.class.getClassLoader()));
                }
            } catch (Throwable th) {
                try {
                    th.printStackTrace();
                } finally {
                    parcelObtain.recycle();
                }
            }
        }
    }

    public void savePersistence() {
        Parcel parcelObtain = Parcel.obtain();
        AtomicFile atomicFile = new AtomicFile(com.xinzhu.overmind.a.z());
        FileOutputStream fileOutputStreamStartWrite = null;
        try {
            parcelObtain.writeByte(this.mGlobalEnable ? (byte) 1 : (byte) 0);
            parcelObtain.writeInt(this.mDeviceInfoMap.size());
            for (Map.Entry<Integer, MindDeviceInfo> entry : this.mDeviceInfoMap.entrySet()) {
                parcelObtain.writeInt(entry.getKey().intValue());
                parcelObtain.writeParcelable(entry.getValue(), 0);
            }
            parcelObtain.setDataPosition(0);
            fileOutputStreamStartWrite = atomicFile.startWrite();
            l.z(parcelObtain, fileOutputStreamStartWrite);
            atomicFile.finishWrite(fileOutputStreamStartWrite);
            parcelObtain.recycle();
            p.a(fileOutputStreamStartWrite);
        } catch (Throwable th) {
            try {
                th.printStackTrace();
                atomicFile.failWrite(fileOutputStreamStartWrite);
                parcelObtain.recycle();
                p.a(fileOutputStreamStartWrite);
            } catch (Throwable th2) {
                parcelObtain.recycle();
                p.a(fileOutputStreamStartWrite);
                throw th2;
            }
        }
    }

    @Override // com.xinzhu.overmind.server.os.a
    public void setVirtualDeviceStatus(boolean z10) throws RemoteException {
        this.mGlobalEnable = z10;
        savePersistence();
    }

    @Override // com.xinzhu.overmind.server.g
    public void systemReady() {
    }

    @Override // com.xinzhu.overmind.server.os.a
    public void updateMindDeviceInfo(int i10, MindDeviceInfo mindDeviceInfo) throws RemoteException {
        synchronized (this.mDeviceInfoMap) {
            if (mindDeviceInfo != null) {
                this.mDeviceInfoMap.put(Integer.valueOf(i10), mindDeviceInfo);
                savePersistence();
            }
        }
    }
}
