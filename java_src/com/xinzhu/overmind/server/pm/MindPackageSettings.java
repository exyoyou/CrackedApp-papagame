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
public class MindPackageSettings implements Parcelable {
    public static final Parcelable.Creator<MindPackageSettings> CREATOR = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MindPackage f89829b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f89830c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public InstallOption f89831d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public HashSet<String> f89832e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f89833f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f89834g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Map<Integer, MindPackageUserState> f89835h;

    class a implements Parcelable.Creator<MindPackageSettings> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public MindPackageSettings createFromParcel(Parcel parcel) {
            return new MindPackageSettings(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public MindPackageSettings[] newArray(int i10) {
            return new MindPackageSettings[i10];
        }
    }

    public MindPackageSettings() {
        this.f89832e = new HashSet<>();
        this.f89833f = true;
        this.f89834g = false;
        this.f89835h = new HashMap();
    }

    private MindPackageUserState B(int i10) {
        MindPackageUserState mindPackageUserState = this.f89835h.get(Integer.valueOf(i10));
        if (mindPackageUserState != null) {
            return mindPackageUserState;
        }
        MindPackageUserState mindPackageUserState2 = new MindPackageUserState();
        this.f89835h.put(Integer.valueOf(i10), mindPackageUserState2);
        return mindPackageUserState2;
    }

    public List<MindPackageUserState> A() {
        return new ArrayList(this.f89835h.values());
    }

    public MindPackageUserState C(int i10) {
        MindPackageUserState mindPackageUserState = this.f89835h.get(Integer.valueOf(i10));
        if (mindPackageUserState == null) {
            mindPackageUserState = new MindPackageUserState();
        }
        MindPackageUserState mindPackageUserState2 = new MindPackageUserState(mindPackageUserState);
        if (this.f89835h.get(-1) != null) {
            mindPackageUserState2.f89844b = true;
        }
        return mindPackageUserState2;
    }

    public void D(int i10) {
        this.f89835h.remove(Integer.valueOf(i10));
    }

    public boolean E() {
        if (!this.f89833f) {
            return this.f89834g;
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
            new MindVolatilePackageSettings(this).b();
            new MindReliablePackageSettings(this).F();
            Parcel parcelObtain = Parcel.obtain();
            AtomicFile atomicFile = new AtomicFile(com.xinzhu.overmind.a.Q(this.f89829b.f89743m));
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
        this.f89833f = false;
        this.f89834g = z10;
    }

    public void J(boolean z10, int i10) {
        B(i10).f89845c = z10;
    }

    public boolean K() {
        for (String str : this.f89832e) {
            if (com.join.mgps.mod.utils.d.f71903e.equals(str) || "armeabi-v7a".equals(str)) {
                return true;
            }
        }
        return false;
    }

    public boolean L() {
        Iterator<String> it2 = this.f89832e.iterator();
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
        return this.f89832e.isEmpty();
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
        if (!this.f89833f) {
            if (Overmind.get().use32BitMainPackage()) {
                return this.f89834g ? com.xinzhu.overmind.a.f89175k : com.xinzhu.overmind.a.f89173i;
            }
            return this.f89834g ? com.xinzhu.overmind.a.f89173i : com.xinzhu.overmind.a.f89175k;
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
        parcel.writeParcelable(this.f89829b, i10);
        parcel.writeInt(this.f89830c);
        parcel.writeParcelable(this.f89831d, i10);
        parcel.writeSerializable(this.f89832e);
        parcel.writeByte(this.f89833f ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f89834g ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.f89835h.size());
        for (Map.Entry<Integer, MindPackageUserState> entry : this.f89835h.entrySet()) {
            parcel.writeValue(entry.getKey());
            parcel.writeParcelable(entry.getValue(), i10);
        }
    }

    public boolean x(int i10) {
        return C(i10).f89845c;
    }

    public List<Integer> y() {
        return new ArrayList(this.f89835h.keySet());
    }

    public MindPackageSettings(MindReliablePackageSettings mindReliablePackageSettings, MindVolatilePackageSettings mindVolatilePackageSettings) {
        this.f89832e = new HashSet<>();
        this.f89833f = true;
        this.f89834g = false;
        this.f89835h = new HashMap();
        this.f89829b = mindVolatilePackageSettings.f89855c;
        this.f89830c = mindReliablePackageSettings.f89848c;
        this.f89831d = mindReliablePackageSettings.f89849d;
        this.f89832e = mindReliablePackageSettings.f89850e;
        this.f89833f = mindReliablePackageSettings.f89851f;
        this.f89834g = mindReliablePackageSettings.f89852g;
        this.f89835h = mindReliablePackageSettings.f89853h;
    }

    protected MindPackageSettings(Parcel parcel) {
        this.f89832e = new HashSet<>();
        this.f89833f = true;
        this.f89834g = false;
        this.f89835h = new HashMap();
        this.f89829b = (MindPackage) parcel.readParcelable(MindPackage.class.getClassLoader());
        this.f89830c = parcel.readInt();
        this.f89831d = (InstallOption) parcel.readParcelable(InstallOption.class.getClassLoader());
        this.f89832e = (HashSet) parcel.readSerializable();
        this.f89833f = parcel.readByte() != 0;
        this.f89834g = parcel.readByte() != 0;
        int i10 = parcel.readInt();
        this.f89835h = new HashMap(i10);
        for (int i11 = 0; i11 < i10; i11++) {
            this.f89835h.put((Integer) parcel.readValue(Integer.class.getClassLoader()), (MindPackageUserState) parcel.readParcelable(MindPackageUserState.class.getClassLoader()));
        }
    }
}
