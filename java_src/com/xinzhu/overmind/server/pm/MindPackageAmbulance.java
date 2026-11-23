package com.xinzhu.overmind.server.pm;

import android.content.ComponentName;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.ConfigurationInfo;
import android.content.pm.FeatureInfo;
import android.content.pm.InstrumentationInfo;
import android.content.pm.PackageParser;
import android.content.pm.PermissionGroupInfo;
import android.content.pm.PermissionInfo;
import android.content.pm.ProviderInfo;
import android.content.pm.ServiceInfo;
import android.content.pm.Signature;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
import sa.b0;
import sa.f0;
import sa.g0;

/* JADX INFO: loaded from: classes8.dex */
public class MindPackageAmbulance implements Parcelable {
    private static final String A = "MindPackageAmbulance";
    private static final int B = 1;
    static final String C = "android.test.base";
    public static final Parcelable.Creator<MindPackageAmbulance> CREATOR = new a();
    static final String D = "android.test.mock";
    static final String E = "android.test.runner";
    static final String F = "org.apache.http.legacy";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f89779b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ArrayList<b> f89780c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public ArrayList<b> f89781d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ArrayList<g> f89782e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ArrayList<h> f89783f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public ArrayList<d> f89784g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ArrayList<e> f89785h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ArrayList<f> f89786i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public ArrayList<String> f89787j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Signature[] f89788k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public PackageParser.SigningDetails f89789l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Bundle f89790m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f89791n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f89792o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public String f89793p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public ArrayList<String> f89794q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public ArrayList<String> f89795r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f89796s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public ApplicationInfo f89797t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public String f89798u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public String[] f89799v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public String f89800w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f89801x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public ArrayList<ConfigurationInfo> f89802y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public ArrayList<FeatureInfo> f89803z;

    public static class ActivityIntentInfo extends IntentInfo {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public b f89804i;

        public ActivityIntentInfo(PackageParser.IntentInfo intentInfo) {
            super(intentInfo);
        }

        public ActivityIntentInfo(IntentInfo intentInfo) {
            super(intentInfo);
        }
    }

    public static class ProviderIntentInfo extends IntentInfo {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public g f89812i;

        public ProviderIntentInfo(PackageParser.IntentInfo intentInfo) {
            super(intentInfo);
        }

        public ProviderIntentInfo(IntentInfo intentInfo) {
            super(intentInfo);
        }
    }

    public static class ServiceIntentInfo extends IntentInfo {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public h f89813i;

        public ServiceIntentInfo(PackageParser.IntentInfo intentInfo) {
            super(intentInfo);
        }

        public ServiceIntentInfo(IntentInfo intentInfo) {
            super(intentInfo);
        }
    }

    class a implements Parcelable.Creator<MindPackageAmbulance> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public MindPackageAmbulance createFromParcel(Parcel parcel) {
            return new MindPackageAmbulance(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public MindPackageAmbulance[] newArray(int i10) {
            return new MindPackageAmbulance[i10];
        }
    }

    public MindPackageAmbulance(PackageParser.Package r10) {
        this.f89779b = false;
        this.f89780c = new ArrayList<>(0);
        this.f89781d = new ArrayList<>(0);
        this.f89782e = new ArrayList<>(0);
        this.f89783f = new ArrayList<>(0);
        this.f89784g = new ArrayList<>(0);
        this.f89785h = new ArrayList<>(0);
        this.f89786i = new ArrayList<>(0);
        this.f89787j = new ArrayList<>();
        this.f89802y = null;
        this.f89803z = null;
        this.f89780c = new ArrayList<>(r10.activities.size());
        Iterator<PackageParser.Activity> it2 = r10.activities.iterator();
        while (it2.hasNext()) {
            b bVar = new b(it2.next());
            Iterator it3 = bVar.f89818b.iterator();
            while (it3.hasNext()) {
                ((ActivityIntentInfo) it3.next()).f89804i = bVar;
            }
            bVar.f89817a = this;
            this.f89780c.add(bVar);
        }
        this.f89781d = new ArrayList<>(r10.receivers.size());
        Iterator<PackageParser.Activity> it4 = r10.receivers.iterator();
        while (it4.hasNext()) {
            b bVar2 = new b(it4.next());
            Iterator it5 = bVar2.f89818b.iterator();
            while (it5.hasNext()) {
                ((ActivityIntentInfo) it5.next()).f89804i = bVar2;
            }
            bVar2.f89817a = this;
            this.f89781d.add(bVar2);
        }
        this.f89782e = new ArrayList<>(r10.providers.size());
        for (PackageParser.Provider provider : r10.providers) {
            String[] strArrSplit = provider.info.authority.split(";");
            provider.info.authority = strArrSplit[0];
            g gVar = new g(provider);
            Iterator it6 = gVar.f89818b.iterator();
            while (it6.hasNext()) {
                ((ProviderIntentInfo) it6.next()).f89812i = gVar;
            }
            gVar.f89817a = this;
            this.f89782e.add(gVar);
        }
        this.f89783f = new ArrayList<>(r10.services.size());
        Iterator<PackageParser.Service> it7 = r10.services.iterator();
        while (it7.hasNext()) {
            h hVar = new h(it7.next());
            Iterator it8 = hVar.f89818b.iterator();
            while (it8.hasNext()) {
                ((ServiceIntentInfo) it8.next()).f89813i = hVar;
            }
            hVar.f89817a = this;
            this.f89783f.add(hVar);
        }
        this.f89784g = new ArrayList<>(r10.instrumentation.size());
        Iterator<PackageParser.Instrumentation> it9 = r10.instrumentation.iterator();
        while (it9.hasNext()) {
            d dVar = new d(it9.next());
            dVar.f89817a = this;
            this.f89784g.add(dVar);
        }
        this.f89785h = new ArrayList<>(r10.permissions.size());
        Iterator<PackageParser.Permission> it10 = r10.permissions.iterator();
        while (it10.hasNext()) {
            e eVar = new e(it10.next());
            eVar.f89817a = this;
            this.f89785h.add(eVar);
        }
        this.f89786i = new ArrayList<>(r10.permissionGroups.size());
        Iterator<PackageParser.PermissionGroup> it11 = r10.permissionGroups.iterator();
        while (it11.hasNext()) {
            f fVar = new f(it11.next());
            fVar.f89817a = this;
            this.f89786i.add(fVar);
        }
        this.f89787j = r10.requestedPermissions;
        if (com.xinzhu.overmind.utils.e.v()) {
            PackageParser.SigningDetails signingDetails = r10.mSigningDetails;
            this.f89789l = signingDetails;
            this.f89788k = signingDetails.signatures;
        } else {
            this.f89788k = r10.mSignatures;
        }
        this.f89790m = r10.mAppMetaData;
        this.f89791n = r10.packageName;
        this.f89792o = r10.mPreferredOrder;
        this.f89793p = r10.mSharedUserId;
        this.f89794q = r10.usesLibraries;
        this.f89795r = r10.usesOptionalLibraries;
        this.f89796s = r10.mVersionCode;
        ApplicationInfo applicationInfo = r10.applicationInfo;
        this.f89797t = applicationInfo;
        this.f89798u = r10.mVersionName;
        if (Build.VERSION.SDK_INT >= 26) {
            this.f89799v = applicationInfo.splitNames;
        }
        this.f89800w = r10.baseCodePath;
        this.f89801x = r10.mSharedUserLabel;
        this.f89802y = r10.configPreferences;
        this.f89803z = r10.reqFeatures;
    }

    private boolean c(String str) {
        return this.f89794q.contains(str) || this.f89795r.contains(str);
    }

    protected void a(Parcel parcel) {
        int i10 = parcel.readInt();
        this.f89780c = new ArrayList<>(i10);
        com.xinzhu.overmind.b.c(A, "how much act " + i10);
        while (true) {
            int i11 = i10 - 1;
            if (i10 <= 0) {
                break;
            }
            b bVar = new b(parcel);
            Iterator it2 = bVar.f89818b.iterator();
            while (it2.hasNext()) {
                ((ActivityIntentInfo) it2.next()).f89804i = bVar;
            }
            bVar.f89817a = this;
            this.f89780c.add(bVar);
            i10 = i11;
        }
        int i12 = parcel.readInt();
        this.f89781d = new ArrayList<>(i12);
        while (true) {
            int i13 = i12 - 1;
            if (i12 <= 0) {
                break;
            }
            b bVar2 = new b(parcel);
            Iterator it3 = bVar2.f89818b.iterator();
            while (it3.hasNext()) {
                ((ActivityIntentInfo) it3.next()).f89804i = bVar2;
            }
            bVar2.f89817a = this;
            this.f89781d.add(bVar2);
            i12 = i13;
        }
        int i14 = parcel.readInt();
        this.f89782e = new ArrayList<>(i14);
        while (true) {
            int i15 = i14 - 1;
            if (i14 <= 0) {
                break;
            }
            g gVar = new g(parcel);
            gVar.f89825f.authority = gVar.f89825f.authority.split(";")[0];
            Iterator it4 = gVar.f89818b.iterator();
            while (it4.hasNext()) {
                ((ProviderIntentInfo) it4.next()).f89812i = gVar;
            }
            gVar.f89817a = this;
            this.f89782e.add(gVar);
            i14 = i15;
        }
        int i16 = parcel.readInt();
        this.f89783f = new ArrayList<>(i16);
        while (true) {
            int i17 = i16 - 1;
            if (i16 <= 0) {
                break;
            }
            h hVar = new h(parcel);
            Iterator it5 = hVar.f89818b.iterator();
            while (it5.hasNext()) {
                ((ServiceIntentInfo) it5.next()).f89813i = hVar;
            }
            hVar.f89817a = this;
            this.f89783f.add(hVar);
            i16 = i17;
        }
        int i18 = parcel.readInt();
        this.f89784g = new ArrayList<>(i18);
        while (true) {
            int i19 = i18 - 1;
            if (i18 <= 0) {
                break;
            }
            d dVar = new d(parcel);
            dVar.f89817a = this;
            this.f89784g.add(dVar);
            i18 = i19;
        }
        int i20 = parcel.readInt();
        this.f89785h = new ArrayList<>(i20);
        while (true) {
            int i21 = i20 - 1;
            if (i20 <= 0) {
                break;
            }
            e eVar = new e(parcel);
            eVar.f89817a = this;
            this.f89785h.add(eVar);
            i20 = i21;
        }
        int i22 = parcel.readInt();
        this.f89786i = new ArrayList<>(i22);
        while (true) {
            int i23 = i22 - 1;
            if (i22 <= 0) {
                break;
            }
            f fVar = new f(parcel);
            fVar.f89817a = this;
            this.f89786i.add(fVar);
            i22 = i23;
        }
        parcel.readStringList(this.f89787j);
        String str = A;
        com.xinzhu.overmind.b.c(str, "permissions " + this.f89787j);
        if (com.xinzhu.overmind.utils.e.v()) {
            try {
                int iDataPosition = parcel.dataPosition();
                String string = parcel.readString();
                com.xinzhu.overmind.b.c(str, "what class " + string);
                parcel.setDataPosition(iDataPosition);
                if (string.contains("MindPackage$SigningDetails")) {
                    com.xinzhu.overmind.b.c(str, "Legacy signing details found, solve it");
                    com.xinzhu.haunted.android.content.pm.n.a aVarN = com.xinzhu.haunted.android.content.pm.n.a.n(((SigningDetails) parcel.readParcelable(SigningDetails.class.getClassLoader())).f89815b, 0);
                    Objects.requireNonNull(aVarN);
                    this.f89789l = (PackageParser.SigningDetails) aVarN.f88853a;
                } else {
                    this.f89789l = g0.a(parcel);
                    com.xinzhu.overmind.b.c(str, "trying to restore signing details corrupt " + this.f89789l);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        this.f89788k = (Signature[]) parcel.createTypedArray(Signature.CREATOR);
        this.f89790m = parcel.readBundle(Bundle.class.getClassLoader());
        this.f89791n = parcel.readString();
        this.f89792o = parcel.readInt();
        this.f89793p = parcel.readString();
        this.f89794q = parcel.createStringArrayList();
        this.f89795r = parcel.createStringArrayList();
        this.f89796s = parcel.readInt();
        try {
            this.f89797t = sa.q.a(parcel);
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        this.f89798u = parcel.readString();
        this.f89800w = parcel.readString();
        this.f89801x = parcel.readInt();
        this.f89802y = parcel.createTypedArrayList(ConfigurationInfo.CREATOR);
        this.f89803z = parcel.createTypedArrayList(FeatureInfo.CREATOR);
        com.xinzhu.overmind.b.c(A, "check san " + this.f89797t.packageName);
        int iDataPosition2 = parcel.dataPosition();
        try {
            if (parcel.readString().equals("appendVersion")) {
                if (parcel.readInt() == 1) {
                    this.f89799v = parcel.createStringArray();
                    return;
                }
                return;
            }
        } catch (Throwable unused) {
        }
        parcel.setDataPosition(iDataPosition2);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f89780c.size());
        for (b bVar : this.f89780c) {
            parcel.writeString(bVar.f89819c);
            parcel.writeBundle(bVar.f89820d);
            parcel.writeParcelable(bVar.f89816f, i10);
            ArrayList<II> arrayList = bVar.f89818b;
            if (arrayList != 0) {
                int size = arrayList.size();
                parcel.writeInt(size);
                while (true) {
                    int i11 = size - 1;
                    if (size > 0) {
                        parcel.writeParcelable((Parcelable) bVar.f89818b.get(i11), i10);
                        size = i11;
                    }
                }
            } else {
                parcel.writeInt(0);
            }
        }
        parcel.writeInt(this.f89781d.size());
        for (b bVar2 : this.f89781d) {
            parcel.writeString(bVar2.f89819c);
            parcel.writeBundle(bVar2.f89820d);
            parcel.writeParcelable(bVar2.f89816f, i10);
            ArrayList<II> arrayList2 = bVar2.f89818b;
            if (arrayList2 != 0) {
                int size2 = arrayList2.size();
                parcel.writeInt(size2);
                while (true) {
                    int i12 = size2 - 1;
                    if (size2 > 0) {
                        parcel.writeParcelable((Parcelable) bVar2.f89818b.get(i12), i10);
                        size2 = i12;
                    }
                }
            } else {
                parcel.writeInt(0);
            }
        }
        parcel.writeInt(this.f89782e.size());
        for (g gVar : this.f89782e) {
            parcel.writeString(gVar.f89819c);
            parcel.writeBundle(gVar.f89820d);
            parcel.writeParcelable(gVar.f89825f, i10);
            ArrayList<II> arrayList3 = gVar.f89818b;
            if (arrayList3 != 0) {
                int size3 = arrayList3.size();
                parcel.writeInt(size3);
                while (true) {
                    int i13 = size3 - 1;
                    if (size3 > 0) {
                        parcel.writeParcelable((Parcelable) gVar.f89818b.get(i13), i10);
                        size3 = i13;
                    }
                }
            } else {
                parcel.writeInt(0);
            }
        }
        parcel.writeInt(this.f89783f.size());
        for (h hVar : this.f89783f) {
            parcel.writeString(hVar.f89819c);
            parcel.writeBundle(hVar.f89820d);
            parcel.writeParcelable(hVar.f89826f, i10);
            ArrayList<II> arrayList4 = hVar.f89818b;
            if (arrayList4 != 0) {
                int size4 = arrayList4.size();
                parcel.writeInt(size4);
                while (true) {
                    int i14 = size4 - 1;
                    if (size4 > 0) {
                        parcel.writeParcelable((Parcelable) hVar.f89818b.get(i14), i10);
                        size4 = i14;
                    }
                }
            } else {
                parcel.writeInt(0);
            }
        }
        parcel.writeInt(this.f89784g.size());
        for (d dVar : this.f89784g) {
            parcel.writeString(dVar.f89819c);
            parcel.writeBundle(dVar.f89820d);
            parcel.writeParcelable(dVar.f89822f, i10);
            ArrayList<II> arrayList5 = dVar.f89818b;
            if (arrayList5 != 0) {
                int size5 = arrayList5.size();
                parcel.writeInt(size5);
                while (true) {
                    int i15 = size5 - 1;
                    if (size5 > 0) {
                        parcel.writeParcelable((Parcelable) dVar.f89818b.get(i15), i10);
                        size5 = i15;
                    }
                }
            } else {
                parcel.writeInt(0);
            }
        }
        parcel.writeInt(this.f89785h.size());
        for (e eVar : this.f89785h) {
            parcel.writeString(eVar.f89819c);
            parcel.writeBundle(eVar.f89820d);
            parcel.writeParcelable(eVar.f89823f, i10);
            ArrayList<II> arrayList6 = eVar.f89818b;
            if (arrayList6 != 0) {
                int size6 = arrayList6.size();
                parcel.writeInt(size6);
                while (true) {
                    int i16 = size6 - 1;
                    if (size6 > 0) {
                        parcel.writeParcelable((Parcelable) eVar.f89818b.get(i16), i10);
                        size6 = i16;
                    }
                }
            } else {
                parcel.writeInt(0);
            }
        }
        parcel.writeInt(this.f89786i.size());
        for (f fVar : this.f89786i) {
            parcel.writeString(fVar.f89819c);
            parcel.writeBundle(fVar.f89820d);
            parcel.writeParcelable(fVar.f89824f, i10);
            ArrayList<II> arrayList7 = fVar.f89818b;
            if (arrayList7 != 0) {
                int size7 = arrayList7.size();
                parcel.writeInt(size7);
                while (true) {
                    int i17 = size7 - 1;
                    if (size7 > 0) {
                        parcel.writeParcelable((Parcelable) fVar.f89818b.get(i17), i10);
                        size7 = i17;
                    }
                }
            } else {
                parcel.writeInt(0);
            }
        }
        parcel.writeStringList(this.f89787j);
        if (com.xinzhu.overmind.utils.e.v()) {
            parcel.writeParcelable(this.f89789l, i10);
        }
        parcel.writeTypedArray(this.f89788k, i10);
        parcel.writeBundle(this.f89790m);
        parcel.writeString(this.f89791n);
        parcel.writeInt(this.f89792o);
        parcel.writeString(this.f89793p);
        parcel.writeStringList(this.f89794q);
        parcel.writeStringList(this.f89795r);
        parcel.writeInt(this.f89796s);
        parcel.writeParcelable(this.f89797t, i10);
        parcel.writeString(this.f89798u);
        parcel.writeString(this.f89800w);
        parcel.writeInt(this.f89801x);
        parcel.writeTypedList(this.f89802y);
        parcel.writeTypedList(this.f89803z);
        parcel.writeString("appendVersion");
        parcel.writeInt(1);
        parcel.writeStringArray(this.f89799v);
    }

    public static final class SigningDetails implements Parcelable {
        public static final Parcelable.Creator<SigningDetails> CREATOR = new a();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final PackageParser.SigningDetails f89814c = null;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Signature[] f89815b;

        class a implements Parcelable.Creator<SigningDetails> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SigningDetails createFromParcel(Parcel parcel) {
                return new SigningDetails(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public SigningDetails[] newArray(int i10) {
                return new SigningDetails[i10];
            }
        }

        public SigningDetails(PackageParser.SigningDetails signingDetails) {
            this.f89815b = signingDetails.signatures;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeTypedArray(this.f89815b, i10);
        }

        protected SigningDetails(Parcel parcel) {
            this.f89815b = (Signature[]) parcel.createTypedArray(Signature.CREATOR);
        }
    }

    public static class c<II extends IntentInfo> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public MindPackageAmbulance f89817a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public ArrayList<II> f89818b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f89819c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public Bundle f89820d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public ComponentName f89821e;

        public c(Parcel parcel) {
            this.f89819c = parcel.readString();
            this.f89820d = parcel.readBundle(Bundle.class.getClassLoader());
        }

        public ComponentName a() {
            ComponentName componentName = this.f89821e;
            if (componentName != null) {
                return componentName;
            }
            if (this.f89819c != null) {
                this.f89821e = new ComponentName(this.f89817a.f89791n, this.f89819c);
            }
            return this.f89821e;
        }

        public c(PackageParser.Component<?> component) {
            this.f89819c = component.className;
            this.f89820d = component.metaData;
        }
    }

    public static final class b extends c<ActivityIntentInfo> {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public ActivityInfo f89816f;

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public b(PackageParser.Activity activity) {
            super(activity);
            this.f89816f = activity.info;
            ArrayList<II> arrayList = activity.intents;
            if (arrayList != 0) {
                this.f89818b = new ArrayList<>(arrayList.size());
                Iterator it2 = activity.intents.iterator();
                while (it2.hasNext()) {
                    this.f89818b.add(new ActivityIntentInfo((PackageParser.ActivityIntentInfo) it2.next()));
                }
            }
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public b(Parcel parcel) {
            int i10;
            super(parcel);
            int iDataPosition = parcel.dataPosition();
            try {
                this.f89816f = (ActivityInfo) parcel.readParcelable(ActivityInfo.class.getClassLoader());
                while (true) {
                    int i11 = i10 - 1;
                    if (i10 <= 0) {
                        return;
                    }
                    parcel.readString();
                    this.f89818b.add(new ActivityIntentInfo(new IntentInfo(parcel)));
                    i10 = i11;
                }
            } catch (Throwable unused) {
                parcel.setDataPosition(iDataPosition);
                this.f89816f = sa.p.a(parcel);
                com.xinzhu.overmind.b.c(MindPackageAmbulance.A, "trying to restore activityinfo corrupt " + this.f89816f);
            }
            i10 = parcel.readInt();
            this.f89818b = new ArrayList<>(i10);
        }
    }

    public static final class d extends c<IntentInfo> {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public InstrumentationInfo f89822f;

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public d(PackageParser.Instrumentation instrumentation) {
            super(instrumentation);
            this.f89822f = instrumentation.info;
            ArrayList<II> arrayList = instrumentation.intents;
            if (arrayList != 0) {
                this.f89818b = new ArrayList<>(arrayList.size());
                Iterator it2 = instrumentation.intents.iterator();
                while (it2.hasNext()) {
                    this.f89818b.add((II) new IntentInfo((PackageParser.IntentInfo) it2.next()));
                }
            }
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public d(Parcel parcel) {
            super(parcel);
            this.f89822f = (InstrumentationInfo) parcel.readParcelable(InstrumentationInfo.class.getClassLoader());
            int i10 = parcel.readInt();
            this.f89818b = new ArrayList<>(i10);
            while (true) {
                int i11 = i10 - 1;
                if (i10 <= 0) {
                    return;
                }
                parcel.readString();
                this.f89818b.add((II) new IntentInfo(parcel));
                i10 = i11;
            }
        }
    }

    public static final class e extends c<IntentInfo> {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public PermissionInfo f89823f;

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public e(PackageParser.Permission permission) {
            super(permission);
            this.f89823f = permission.info;
            ArrayList<II> arrayList = permission.intents;
            if (arrayList != 0) {
                this.f89818b = new ArrayList<>(arrayList.size());
                Iterator it2 = permission.intents.iterator();
                while (it2.hasNext()) {
                    this.f89818b.add((II) new IntentInfo((PackageParser.IntentInfo) it2.next()));
                }
            }
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public e(Parcel parcel) {
            super(parcel);
            this.f89823f = (PermissionInfo) parcel.readParcelable(e.class.getClassLoader());
            int i10 = parcel.readInt();
            this.f89818b = new ArrayList<>(i10);
            while (true) {
                int i11 = i10 - 1;
                if (i10 <= 0) {
                    return;
                }
                parcel.readString();
                this.f89818b.add((II) new IntentInfo(parcel));
                i10 = i11;
            }
        }
    }

    public static final class f extends c<IntentInfo> {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public PermissionGroupInfo f89824f;

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public f(PackageParser.PermissionGroup permissionGroup) {
            super(permissionGroup);
            this.f89824f = permissionGroup.info;
            ArrayList<II> arrayList = permissionGroup.intents;
            if (arrayList != 0) {
                this.f89818b = new ArrayList<>(arrayList.size());
                Iterator it2 = permissionGroup.intents.iterator();
                while (it2.hasNext()) {
                    this.f89818b.add((II) new IntentInfo((PackageParser.IntentInfo) it2.next()));
                }
            }
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public f(Parcel parcel) {
            super(parcel);
            this.f89824f = (PermissionGroupInfo) parcel.readParcelable(f.class.getClassLoader());
            int i10 = parcel.readInt();
            this.f89818b = new ArrayList<>(i10);
            while (true) {
                int i11 = i10 - 1;
                if (i10 <= 0) {
                    return;
                }
                parcel.readString();
                this.f89818b.add((II) new IntentInfo(parcel));
                i10 = i11;
            }
        }
    }

    public static final class g extends c<ProviderIntentInfo> {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public ProviderInfo f89825f;

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public g(PackageParser.Provider provider) {
            super(provider);
            this.f89825f = provider.info;
            ArrayList<II> arrayList = provider.intents;
            if (arrayList != 0) {
                this.f89818b = new ArrayList<>(arrayList.size());
                Iterator it2 = provider.intents.iterator();
                while (it2.hasNext()) {
                    this.f89818b.add(new ProviderIntentInfo((PackageParser.ProviderIntentInfo) it2.next()));
                }
            }
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public g(Parcel parcel) {
            int i10;
            super(parcel);
            int iDataPosition = parcel.dataPosition();
            try {
                this.f89825f = (ProviderInfo) parcel.readParcelable(ProviderInfo.class.getClassLoader());
                while (true) {
                    int i11 = i10 - 1;
                    if (i10 <= 0) {
                        return;
                    }
                    parcel.readString();
                    this.f89818b.add(new ProviderIntentInfo(new IntentInfo(parcel)));
                    i10 = i11;
                }
            } catch (Throwable unused) {
                parcel.setDataPosition(iDataPosition);
                this.f89825f = b0.a(parcel);
                com.xinzhu.overmind.b.c(MindPackageAmbulance.A, "trying to restore providerinfo corrupt " + this.f89825f);
            }
            i10 = parcel.readInt();
            this.f89818b = new ArrayList<>(i10);
        }
    }

    public static final class h extends c<ServiceIntentInfo> {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public ServiceInfo f89826f;

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public h(PackageParser.Service service) {
            super(service);
            this.f89826f = service.info;
            ArrayList<II> arrayList = service.intents;
            if (arrayList != 0) {
                this.f89818b = new ArrayList<>(arrayList.size());
                Iterator it2 = service.intents.iterator();
                while (it2.hasNext()) {
                    this.f89818b.add(new ServiceIntentInfo((PackageParser.ServiceIntentInfo) it2.next()));
                }
            }
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public h(Parcel parcel) {
            int i10;
            super(parcel);
            int iDataPosition = parcel.dataPosition();
            try {
                this.f89826f = (ServiceInfo) parcel.readParcelable(ServiceInfo.class.getClassLoader());
                while (true) {
                    int i11 = i10 - 1;
                    if (i10 <= 0) {
                        return;
                    }
                    parcel.readString();
                    this.f89818b.add(new ServiceIntentInfo(new IntentInfo(parcel)));
                    i10 = i11;
                }
            } catch (Throwable unused) {
                parcel.setDataPosition(iDataPosition);
                this.f89826f = f0.a(parcel);
                com.xinzhu.overmind.b.c(MindPackageAmbulance.A, "trying to restore serviceInfo corrupt " + this.f89826f);
            }
            i10 = parcel.readInt();
            this.f89818b = new ArrayList<>(i10);
        }
    }

    public static class IntentInfo implements Parcelable {
        public static final Parcelable.Creator<IntentInfo> CREATOR = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public IntentFilter f89805b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f89806c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f89807d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public String f89808e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f89809f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f89810g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f89811h;

        class a implements Parcelable.Creator<IntentInfo> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public IntentInfo createFromParcel(Parcel parcel) {
                return new IntentInfo(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public IntentInfo[] newArray(int i10) {
                return new IntentInfo[i10];
            }
        }

        public IntentInfo(PackageParser.IntentInfo intentInfo) {
            this.f89805b = intentInfo;
            this.f89806c = intentInfo.hasDefault;
            this.f89807d = intentInfo.labelRes;
            CharSequence charSequence = intentInfo.nonLocalizedLabel;
            this.f89808e = charSequence == null ? null : charSequence.toString();
            this.f89809f = intentInfo.icon;
            this.f89810g = intentInfo.logo;
            this.f89811h = intentInfo.banner;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeParcelable(this.f89805b, i10);
            parcel.writeByte(this.f89806c ? (byte) 1 : (byte) 0);
            parcel.writeInt(this.f89807d);
            parcel.writeString(this.f89808e);
            parcel.writeInt(this.f89809f);
            parcel.writeInt(this.f89810g);
            parcel.writeInt(this.f89811h);
        }

        public IntentInfo(IntentInfo intentInfo) {
            this.f89805b = intentInfo.f89805b;
            this.f89806c = intentInfo.f89806c;
            this.f89807d = intentInfo.f89807d;
            String str = intentInfo.f89808e;
            this.f89808e = str == null ? null : str.toString();
            this.f89809f = intentInfo.f89809f;
            this.f89810g = intentInfo.f89810g;
            this.f89811h = intentInfo.f89811h;
        }

        protected IntentInfo(Parcel parcel) {
            this.f89805b = (IntentFilter) parcel.readParcelable(MindPackageAmbulance.class.getClassLoader());
            this.f89806c = parcel.readByte() != 0;
            this.f89807d = parcel.readInt();
            this.f89808e = parcel.readString();
            this.f89809f = parcel.readInt();
            this.f89810g = parcel.readInt();
            this.f89811h = parcel.readInt();
        }
    }

    protected MindPackageAmbulance(Parcel parcel) {
        this.f89779b = false;
        this.f89780c = new ArrayList<>(0);
        this.f89781d = new ArrayList<>(0);
        this.f89782e = new ArrayList<>(0);
        this.f89783f = new ArrayList<>(0);
        this.f89784g = new ArrayList<>(0);
        this.f89785h = new ArrayList<>(0);
        this.f89786i = new ArrayList<>(0);
        this.f89787j = new ArrayList<>();
        this.f89802y = null;
        this.f89803z = null;
        int iDataPosition = parcel.dataPosition();
        int i10 = parcel.readInt();
        try {
            this.f89780c = new ArrayList<>(i10);
            while (true) {
                int i11 = i10 - 1;
                if (i10 <= 0) {
                    break;
                }
                b bVar = new b(parcel);
                Iterator it2 = bVar.f89818b.iterator();
                while (it2.hasNext()) {
                    ((ActivityIntentInfo) it2.next()).f89804i = bVar;
                }
                bVar.f89817a = this;
                this.f89780c.add(bVar);
                i10 = i11;
            }
            int i12 = parcel.readInt();
            this.f89781d = new ArrayList<>(i12);
            while (true) {
                int i13 = i12 - 1;
                if (i12 <= 0) {
                    break;
                }
                b bVar2 = new b(parcel);
                Iterator it3 = bVar2.f89818b.iterator();
                while (it3.hasNext()) {
                    ((ActivityIntentInfo) it3.next()).f89804i = bVar2;
                }
                bVar2.f89817a = this;
                this.f89781d.add(bVar2);
                i12 = i13;
            }
            int i14 = parcel.readInt();
            this.f89782e = new ArrayList<>(i14);
            while (true) {
                int i15 = i14 - 1;
                if (i14 <= 0) {
                    break;
                }
                g gVar = new g(parcel);
                gVar.f89825f.authority = gVar.f89825f.authority.split(";")[0];
                Iterator it4 = gVar.f89818b.iterator();
                while (it4.hasNext()) {
                    ((ProviderIntentInfo) it4.next()).f89812i = gVar;
                }
                gVar.f89817a = this;
                this.f89782e.add(gVar);
                i14 = i15;
            }
            int i16 = parcel.readInt();
            this.f89783f = new ArrayList<>(i16);
            while (true) {
                int i17 = i16 - 1;
                if (i16 <= 0) {
                    break;
                }
                h hVar = new h(parcel);
                Iterator it5 = hVar.f89818b.iterator();
                while (it5.hasNext()) {
                    ((ServiceIntentInfo) it5.next()).f89813i = hVar;
                }
                hVar.f89817a = this;
                this.f89783f.add(hVar);
                i16 = i17;
            }
            int i18 = parcel.readInt();
            this.f89784g = new ArrayList<>(i18);
            while (true) {
                int i19 = i18 - 1;
                if (i18 <= 0) {
                    break;
                }
                d dVar = new d(parcel);
                dVar.f89817a = this;
                this.f89784g.add(dVar);
                i18 = i19;
            }
            int i20 = parcel.readInt();
            this.f89785h = new ArrayList<>(i20);
            while (true) {
                int i21 = i20 - 1;
                if (i20 <= 0) {
                    break;
                }
                e eVar = new e(parcel);
                eVar.f89817a = this;
                this.f89785h.add(eVar);
                i20 = i21;
            }
            int i22 = parcel.readInt();
            this.f89786i = new ArrayList<>(i22);
            while (true) {
                int i23 = i22 - 1;
                if (i22 <= 0) {
                    break;
                }
                f fVar = new f(parcel);
                fVar.f89817a = this;
                this.f89786i.add(fVar);
                i22 = i23;
            }
            parcel.readStringList(this.f89787j);
            String str = A;
            com.xinzhu.overmind.b.c(str, "permissions " + this.f89787j);
            if (com.xinzhu.overmind.utils.e.v()) {
                try {
                    int iDataPosition2 = parcel.dataPosition();
                    String string = parcel.readString();
                    com.xinzhu.overmind.b.c(str, "what class " + string);
                    parcel.setDataPosition(iDataPosition2);
                    if (string.contains("MindPackage$SigningDetails")) {
                        com.xinzhu.overmind.b.c(str, "Legacy signing details found, solve it");
                        com.xinzhu.haunted.android.content.pm.n.a aVarN = com.xinzhu.haunted.android.content.pm.n.a.n(((SigningDetails) parcel.readParcelable(SigningDetails.class.getClassLoader())).f89815b, 0);
                        Objects.requireNonNull(aVarN);
                        this.f89789l = (PackageParser.SigningDetails) aVarN.f88853a;
                    } else {
                        try {
                            this.f89789l = g0.a(parcel);
                            com.xinzhu.overmind.b.c(str, "trying to restore signing details corrupt " + this.f89789l);
                        } catch (Throwable th) {
                            parcel.setDataPosition(iDataPosition2);
                            th.printStackTrace();
                            com.xinzhu.overmind.b.c(A, "fallback to system signingdetails read");
                            this.f89789l = (PackageParser.SigningDetails) parcel.readParcelable(PackageParser.SigningDetails.class.getClassLoader());
                        }
                    }
                } catch (Throwable th2) {
                    th2.printStackTrace();
                }
            }
            this.f89788k = (Signature[]) parcel.createTypedArray(Signature.CREATOR);
            this.f89790m = parcel.readBundle(Bundle.class.getClassLoader());
            this.f89791n = parcel.readString();
            this.f89792o = parcel.readInt();
            this.f89793p = parcel.readString();
            this.f89794q = parcel.createStringArrayList();
            this.f89795r = parcel.createStringArrayList();
            this.f89796s = parcel.readInt();
            try {
                this.f89797t = sa.q.a(parcel);
            } catch (Throwable th3) {
                th3.printStackTrace();
            }
            this.f89798u = parcel.readString();
            this.f89800w = parcel.readString();
            this.f89801x = parcel.readInt();
            this.f89802y = parcel.createTypedArrayList(ConfigurationInfo.CREATOR);
            this.f89803z = parcel.createTypedArrayList(FeatureInfo.CREATOR);
            com.xinzhu.overmind.b.c(A, "check san " + this.f89797t.packageName);
            int iDataPosition3 = parcel.dataPosition();
            try {
                if (parcel.readString().equals("appendVersion")) {
                    if (parcel.readInt() == 1) {
                        this.f89799v = parcel.createStringArray();
                        return;
                    }
                    return;
                }
            } catch (Throwable unused) {
            }
            parcel.setDataPosition(iDataPosition3);
        } catch (Throwable unused2) {
            com.xinzhu.overmind.b.c(A, "MindPackage run into ambulance routine");
            parcel.setDataPosition(iDataPosition);
            a(parcel);
        }
    }
}
