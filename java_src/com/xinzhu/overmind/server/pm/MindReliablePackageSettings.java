package com.xinzhu.overmind.server.pm;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.AtomicFile;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.entity.pm.InstallOption;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class MindReliablePackageSettings implements Parcelable {
    public static final Parcelable.Creator<MindReliablePackageSettings> CREATOR = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f89847b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f89848c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public InstallOption f89849d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public HashSet<String> f89850e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f89851f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f89852g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Map<Integer, MindPackageUserState> f89853h;

    class a implements Parcelable.Creator<MindReliablePackageSettings> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public MindReliablePackageSettings createFromParcel(Parcel parcel) {
            return new MindReliablePackageSettings(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public MindReliablePackageSettings[] newArray(int i10) {
            return new MindReliablePackageSettings[i10];
        }
    }

    public MindReliablePackageSettings() {
        this.f89850e = new HashSet<>();
        this.f89851f = true;
        this.f89852g = false;
        this.f89853h = new HashMap();
    }

    private MindPackageUserState B(int i10) {
        MindPackageUserState mindPackageUserState = this.f89853h.get(Integer.valueOf(i10));
        if (mindPackageUserState != null) {
            return mindPackageUserState;
        }
        MindPackageUserState mindPackageUserState2 = new MindPackageUserState();
        this.f89853h.put(Integer.valueOf(i10), mindPackageUserState2);
        return mindPackageUserState2;
    }

    public static MindReliablePackageSettings c(String str) {
        try {
            Parcel parcelObtain = Parcel.obtain();
            File fileR = com.xinzhu.overmind.a.R(str);
            if (!fileR.exists()) {
                return null;
            }
            byte[] bArrV = com.xinzhu.overmind.utils.l.v(fileR);
            parcelObtain.unmarshall(bArrV, 0, bArrV.length);
            parcelObtain.setDataPosition(0);
            return new MindReliablePackageSettings(parcelObtain);
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public List<MindPackageUserState> A() {
        return new ArrayList(this.f89853h.values());
    }

    public MindPackageUserState C(int i10) {
        MindPackageUserState mindPackageUserState = this.f89853h.get(Integer.valueOf(i10));
        if (mindPackageUserState == null) {
            mindPackageUserState = new MindPackageUserState();
        }
        MindPackageUserState mindPackageUserState2 = new MindPackageUserState(mindPackageUserState);
        if (this.f89853h.get(-1) != null) {
            mindPackageUserState2.f89844b = true;
        }
        return mindPackageUserState2;
    }

    public void D(int i10) {
        this.f89853h.remove(Integer.valueOf(i10));
    }

    public boolean E() {
        if (!this.f89851f) {
            return this.f89852g;
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
            AtomicFile atomicFile = new AtomicFile(com.xinzhu.overmind.a.R(this.f89847b));
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
        this.f89851f = false;
        this.f89852g = z10;
    }

    public void J(boolean z10, int i10) {
        B(i10).f89845c = z10;
    }

    public boolean K() {
        for (String str : this.f89850e) {
            if (com.join.mgps.mod.utils.d.f71903e.equals(str) || "armeabi-v7a".equals(str)) {
                return true;
            }
        }
        return false;
    }

    public boolean L() {
        Iterator<String> it2 = this.f89850e.iterator();
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
        return this.f89850e.isEmpty();
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
        if (!this.f89851f) {
            if (Overmind.get().use32BitMainPackage()) {
                return this.f89852g ? com.xinzhu.overmind.a.f89175k : com.xinzhu.overmind.a.f89173i;
            }
            return this.f89852g ? com.xinzhu.overmind.a.f89173i : com.xinzhu.overmind.a.f89175k;
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
        parcel.writeString(this.f89847b);
        parcel.writeInt(this.f89848c);
        parcel.writeParcelable(this.f89849d, i10);
        parcel.writeSerializable(this.f89850e);
        parcel.writeByte(this.f89851f ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f89852g ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.f89853h.size());
        for (Map.Entry<Integer, MindPackageUserState> entry : this.f89853h.entrySet()) {
            parcel.writeValue(entry.getKey());
            parcel.writeParcelable(entry.getValue(), i10);
        }
    }

    public boolean x(int i10) {
        return C(i10).f89845c;
    }

    public List<Integer> y() {
        return new ArrayList(this.f89853h.keySet());
    }

    public MindReliablePackageSettings(MindPackageSettings mindPackageSettings) {
        this.f89850e = new HashSet<>();
        this.f89851f = true;
        this.f89852g = false;
        this.f89853h = new HashMap();
        this.f89847b = mindPackageSettings.f89829b.f89743m;
        this.f89848c = mindPackageSettings.f89830c;
        this.f89849d = mindPackageSettings.f89831d;
        this.f89850e = mindPackageSettings.f89832e;
        this.f89851f = mindPackageSettings.f89833f;
        this.f89852g = mindPackageSettings.f89834g;
        this.f89853h = mindPackageSettings.f89835h;
    }

    protected MindReliablePackageSettings(Parcel parcel) {
        this.f89850e = new HashSet<>();
        this.f89851f = true;
        this.f89852g = false;
        this.f89853h = new HashMap();
        this.f89847b = parcel.readString();
        this.f89848c = parcel.readInt();
        this.f89849d = (InstallOption) parcel.readParcelable(InstallOption.class.getClassLoader());
        this.f89850e = (HashSet) parcel.readSerializable();
        this.f89851f = parcel.readByte() != 0;
        this.f89852g = parcel.readByte() != 0;
        int i10 = parcel.readInt();
        this.f89853h = new HashMap(i10);
        for (int i11 = 0; i11 < i10; i11++) {
            this.f89853h.put((Integer) parcel.readValue(Integer.class.getClassLoader()), (MindPackageUserState) parcel.readParcelable(MindPackageUserState.class.getClassLoader()));
        }
    }
}
