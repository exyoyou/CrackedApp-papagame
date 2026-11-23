package com.xinzhu.overmind.server.pm;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.AtomicFile;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.entity.pm.InstallOption;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class MindPackageSettingsAmbulance implements Parcelable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MindPackageAmbulance f89837b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f89838c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public InstallOption f89839d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public HashSet<String> f89840e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f89841f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f89842g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Map<Integer, MindPackageUserState> f89843h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    static final MindPackageUserState f89836i = new MindPackageUserState();
    public static final Parcelable.Creator<MindPackageSettingsAmbulance> CREATOR = new a();

    class a implements Parcelable.Creator<MindPackageSettingsAmbulance> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public MindPackageSettingsAmbulance createFromParcel(Parcel parcel) {
            return new MindPackageSettingsAmbulance(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public MindPackageSettingsAmbulance[] newArray(int i10) {
            return new MindPackageSettingsAmbulance[i10];
        }
    }

    public MindPackageSettingsAmbulance() {
        this.f89840e = new HashSet<>();
        this.f89841f = true;
        this.f89842g = false;
        this.f89843h = new HashMap();
    }

    private MindPackageUserState B(int i10) {
        MindPackageUserState mindPackageUserState = this.f89843h.get(Integer.valueOf(i10));
        if (mindPackageUserState != null) {
            return mindPackageUserState;
        }
        MindPackageUserState mindPackageUserState2 = new MindPackageUserState();
        this.f89843h.put(Integer.valueOf(i10), mindPackageUserState2);
        return mindPackageUserState2;
    }

    public List<MindPackageUserState> A() {
        return new ArrayList(this.f89843h.values());
    }

    public MindPackageUserState C(int i10) {
        MindPackageUserState mindPackageUserState = this.f89843h.get(Integer.valueOf(i10));
        if (mindPackageUserState == null) {
            mindPackageUserState = new MindPackageUserState();
        }
        MindPackageUserState mindPackageUserState2 = new MindPackageUserState(mindPackageUserState);
        if (this.f89843h.get(-1) != null) {
            mindPackageUserState2.f89844b = true;
        }
        return mindPackageUserState2;
    }

    public void D(int i10) {
        this.f89843h.remove(Integer.valueOf(i10));
    }

    public boolean E() {
        if (!this.f89841f) {
            return this.f89842g;
        }
        if (b()) {
            return false;
        }
        if (Overmind.get().use32BitMainPackage()) {
            if (K()) {
                return false;
            }
        } else if (L()) {
            return false;
        }
        return true;
    }

    public boolean F() {
        synchronized (this) {
            Parcel parcelObtain = Parcel.obtain();
            AtomicFile atomicFile = new AtomicFile(com.xinzhu.overmind.a.Q(this.f89837b.f89791n));
            FileOutputStream fileOutputStreamStartWrite = null;
            try {
                writeToParcel(parcelObtain, 0);
                parcelObtain.setDataPosition(0);
                fileOutputStreamStartWrite = atomicFile.startWrite();
                com.xinzhu.overmind.utils.l.z(parcelObtain, fileOutputStreamStartWrite);
                atomicFile.finishWrite(fileOutputStreamStartWrite);
                parcelObtain.recycle();
                com.xinzhu.overmind.utils.p.a(fileOutputStreamStartWrite);
            } catch (Throwable th) {
                try {
                    th.printStackTrace();
                    atomicFile.failWrite(fileOutputStreamStartWrite);
                    parcelObtain.recycle();
                    com.xinzhu.overmind.utils.p.a(fileOutputStreamStartWrite);
                    return false;
                } catch (Throwable th2) {
                    parcelObtain.recycle();
                    com.xinzhu.overmind.utils.p.a(fileOutputStreamStartWrite);
                    throw th2;
                }
            }
        }
        return true;
    }

    public void G(boolean z10, int i10) {
        B(i10).f89846d = z10;
    }

    public void H(boolean z10, int i10) {
        B(i10).f89844b = z10;
    }

    public void I(boolean z10) {
        if (!Overmind.get().isServerProcess()) {
            throw new RuntimeException("calling setRunWithPlugin not in server process!");
        }
        this.f89841f = false;
        this.f89842g = z10;
    }

    public void J(boolean z10, int i10) {
        B(i10).f89845c = z10;
    }

    public boolean K() {
        for (String str : this.f89840e) {
            if (com.join.mgps.mod.utils.d.f71903e.equals(str) || "armeabi-v7a".equals(str)) {
                return true;
            }
        }
        return false;
    }

    public boolean L() {
        Iterator<String> it2 = this.f89840e.iterator();
        while (it2.hasNext()) {
            if ("arm64-v8a".equals(it2.next())) {
                return true;
            }
        }
        return false;
    }

    public boolean M() {
        return Overmind.get().use32BitMainPackage() ? L() : K();
    }

    public boolean b() {
        return this.f89840e.isEmpty();
    }

    public boolean d(int i10) {
        return C(i10).f89846d;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean f(int i10) {
        return C(i10).f89844b;
    }

    public String w() {
        if (!this.f89841f) {
            if (Overmind.get().use32BitMainPackage()) {
                return this.f89842g ? com.xinzhu.overmind.a.f89175k : com.xinzhu.overmind.a.f89173i;
            }
            return this.f89842g ? com.xinzhu.overmind.a.f89173i : com.xinzhu.overmind.a.f89175k;
        }
        if (b()) {
            return Overmind.get().use32BitMainPackage() ? com.xinzhu.overmind.a.f89173i : com.xinzhu.overmind.a.f89175k;
        }
        if (Overmind.get().use32BitMainPackage()) {
            return K() ? com.xinzhu.overmind.a.f89173i : com.xinzhu.overmind.a.f89175k;
        }
        return L() ? com.xinzhu.overmind.a.f89175k : com.xinzhu.overmind.a.f89173i;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeParcelable(this.f89837b, i10);
        parcel.writeInt(this.f89838c);
        parcel.writeParcelable(this.f89839d, i10);
        parcel.writeSerializable(this.f89840e);
        parcel.writeByte(this.f89841f ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f89842g ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.f89843h.size());
        for (Map.Entry<Integer, MindPackageUserState> entry : this.f89843h.entrySet()) {
            parcel.writeValue(entry.getKey());
            parcel.writeParcelable(entry.getValue(), i10);
        }
    }

    public boolean x(int i10) {
        return C(i10).f89845c;
    }

    public List<Integer> y() {
        return new ArrayList(this.f89843h.keySet());
    }

    protected MindPackageSettingsAmbulance(Parcel parcel) {
        this.f89840e = new HashSet<>();
        this.f89841f = true;
        this.f89842g = false;
        this.f89843h = new HashMap();
        String string = parcel.readString();
        com.xinzhu.overmind.b.c(getClass().getSimpleName(), "MindPackageSettingsAmbulance read class " + string);
        this.f89837b = new MindPackageAmbulance(parcel);
        this.f89838c = parcel.readInt();
        this.f89839d = (InstallOption) parcel.readParcelable(InstallOption.class.getClassLoader());
        this.f89840e = (HashSet) parcel.readSerializable();
        this.f89841f = parcel.readByte() != 0;
        this.f89842g = parcel.readByte() != 0;
        int i10 = parcel.readInt();
        this.f89843h = new HashMap(i10);
        for (int i11 = 0; i11 < i10; i11++) {
            this.f89843h.put((Integer) parcel.readValue(Integer.class.getClassLoader()), (MindPackageUserState) parcel.readParcelable(MindPackageUserState.class.getClassLoader()));
        }
    }
}
