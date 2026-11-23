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

/* JADX INFO: loaded from: classes8.dex */
public class MindPackage implements Parcelable {
    private static final int A = 1;
    static final String B = "android.test.base";
    static final String C = "android.test.mock";
    public static final Parcelable.Creator<MindPackage> CREATOR = new a();
    static final String D = "android.test.runner";
    static final String E = "org.apache.http.legacy";

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final String f89731z = "MindPackage";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ArrayList<b> f89732b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ArrayList<b> f89733c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public ArrayList<g> f89734d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ArrayList<h> f89735e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ArrayList<d> f89736f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public ArrayList<e> f89737g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ArrayList<f> f89738h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ArrayList<String> f89739i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Signature[] f89740j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public PackageParser.SigningDetails f89741k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Bundle f89742l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public String f89743m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f89744n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public String f89745o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public ArrayList<String> f89746p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public ArrayList<String> f89747q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f89748r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public ApplicationInfo f89749s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public String f89750t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public String[] f89751u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public String f89752v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f89753w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public ArrayList<ConfigurationInfo> f89754x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public ArrayList<FeatureInfo> f89755y;

    public static class ActivityIntentInfo extends IntentInfo {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public b f89756i;

        public ActivityIntentInfo(PackageParser.IntentInfo intentInfo) {
            super(intentInfo);
        }

        public ActivityIntentInfo(IntentInfo intentInfo) {
            super(intentInfo);
        }
    }

    public static class ProviderIntentInfo extends IntentInfo {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public g f89764i;

        public ProviderIntentInfo(PackageParser.IntentInfo intentInfo) {
            super(intentInfo);
        }

        public ProviderIntentInfo(IntentInfo intentInfo) {
            super(intentInfo);
        }
    }

    public static class ServiceIntentInfo extends IntentInfo {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public h f89765i;

        public ServiceIntentInfo(PackageParser.IntentInfo intentInfo) {
            super(intentInfo);
        }

        public ServiceIntentInfo(IntentInfo intentInfo) {
            super(intentInfo);
        }
    }

    class a implements Parcelable.Creator<MindPackage> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public MindPackage createFromParcel(Parcel parcel) {
            return new MindPackage(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public MindPackage[] newArray(int i10) {
            return new MindPackage[i10];
        }
    }

    public MindPackage(PackageParser.Package r10) {
        this.f89732b = new ArrayList<>(0);
        this.f89733c = new ArrayList<>(0);
        this.f89734d = new ArrayList<>(0);
        this.f89735e = new ArrayList<>(0);
        this.f89736f = new ArrayList<>(0);
        this.f89737g = new ArrayList<>(0);
        this.f89738h = new ArrayList<>(0);
        this.f89739i = new ArrayList<>();
        this.f89754x = null;
        this.f89755y = null;
        this.f89732b = new ArrayList<>(r10.activities.size());
        Iterator<PackageParser.Activity> it2 = r10.activities.iterator();
        while (it2.hasNext()) {
            b bVar = new b(it2.next());
            Iterator it3 = bVar.f89770b.iterator();
            while (it3.hasNext()) {
                ((ActivityIntentInfo) it3.next()).f89756i = bVar;
            }
            bVar.f89769a = this;
            this.f89732b.add(bVar);
        }
        this.f89733c = new ArrayList<>(r10.receivers.size());
        Iterator<PackageParser.Activity> it4 = r10.receivers.iterator();
        while (it4.hasNext()) {
            b bVar2 = new b(it4.next());
            Iterator it5 = bVar2.f89770b.iterator();
            while (it5.hasNext()) {
                ((ActivityIntentInfo) it5.next()).f89756i = bVar2;
            }
            bVar2.f89769a = this;
            this.f89733c.add(bVar2);
        }
        this.f89734d = new ArrayList<>(r10.providers.size());
        for (PackageParser.Provider provider : r10.providers) {
            String[] strArrSplit = provider.info.authority.split(";");
            provider.info.authority = strArrSplit[0];
            g gVar = new g(provider);
            Iterator it6 = gVar.f89770b.iterator();
            while (it6.hasNext()) {
                ((ProviderIntentInfo) it6.next()).f89764i = gVar;
            }
            gVar.f89769a = this;
            this.f89734d.add(gVar);
        }
        this.f89735e = new ArrayList<>(r10.services.size());
        Iterator<PackageParser.Service> it7 = r10.services.iterator();
        while (it7.hasNext()) {
            h hVar = new h(it7.next());
            Iterator it8 = hVar.f89770b.iterator();
            while (it8.hasNext()) {
                ((ServiceIntentInfo) it8.next()).f89765i = hVar;
            }
            hVar.f89769a = this;
            this.f89735e.add(hVar);
        }
        this.f89736f = new ArrayList<>(r10.instrumentation.size());
        Iterator<PackageParser.Instrumentation> it9 = r10.instrumentation.iterator();
        while (it9.hasNext()) {
            d dVar = new d(it9.next());
            dVar.f89769a = this;
            this.f89736f.add(dVar);
        }
        this.f89737g = new ArrayList<>(r10.permissions.size());
        Iterator<PackageParser.Permission> it10 = r10.permissions.iterator();
        while (it10.hasNext()) {
            e eVar = new e(it10.next());
            eVar.f89769a = this;
            this.f89737g.add(eVar);
        }
        this.f89738h = new ArrayList<>(r10.permissionGroups.size());
        Iterator<PackageParser.PermissionGroup> it11 = r10.permissionGroups.iterator();
        while (it11.hasNext()) {
            f fVar = new f(it11.next());
            fVar.f89769a = this;
            this.f89738h.add(fVar);
        }
        this.f89739i = r10.requestedPermissions;
        if (com.xinzhu.overmind.utils.e.v()) {
            PackageParser.SigningDetails signingDetails = r10.mSigningDetails;
            this.f89741k = signingDetails;
            this.f89740j = signingDetails.signatures;
        } else {
            this.f89740j = r10.mSignatures;
        }
        this.f89742l = r10.mAppMetaData;
        this.f89743m = r10.packageName;
        this.f89744n = r10.mPreferredOrder;
        this.f89745o = r10.mSharedUserId;
        this.f89746p = r10.usesLibraries;
        this.f89747q = r10.usesOptionalLibraries;
        this.f89748r = r10.mVersionCode;
        ApplicationInfo applicationInfo = r10.applicationInfo;
        this.f89749s = applicationInfo;
        this.f89750t = r10.mVersionName;
        if (Build.VERSION.SDK_INT >= 26) {
            this.f89751u = applicationInfo.splitNames;
        }
        this.f89752v = r10.baseCodePath;
        this.f89753w = r10.mSharedUserLabel;
        this.f89754x = r10.configPreferences;
        this.f89755y = r10.reqFeatures;
    }

    private boolean a(String str) {
        return this.f89746p.contains(str) || this.f89747q.contains(str);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f89732b.size());
        for (b bVar : this.f89732b) {
            parcel.writeString(bVar.f89771c);
            parcel.writeBundle(bVar.f89772d);
            parcel.writeParcelable(bVar.f89768f, i10);
            ArrayList<II> arrayList = bVar.f89770b;
            if (arrayList != 0) {
                int size = arrayList.size();
                parcel.writeInt(size);
                while (true) {
                    int i11 = size - 1;
                    if (size > 0) {
                        parcel.writeParcelable((Parcelable) bVar.f89770b.get(i11), i10);
                        size = i11;
                    }
                }
            } else {
                parcel.writeInt(0);
            }
        }
        parcel.writeInt(this.f89733c.size());
        for (b bVar2 : this.f89733c) {
            parcel.writeString(bVar2.f89771c);
            parcel.writeBundle(bVar2.f89772d);
            parcel.writeParcelable(bVar2.f89768f, i10);
            ArrayList<II> arrayList2 = bVar2.f89770b;
            if (arrayList2 != 0) {
                int size2 = arrayList2.size();
                parcel.writeInt(size2);
                while (true) {
                    int i12 = size2 - 1;
                    if (size2 > 0) {
                        parcel.writeParcelable((Parcelable) bVar2.f89770b.get(i12), i10);
                        size2 = i12;
                    }
                }
            } else {
                parcel.writeInt(0);
            }
        }
        parcel.writeInt(this.f89734d.size());
        for (g gVar : this.f89734d) {
            parcel.writeString(gVar.f89771c);
            parcel.writeBundle(gVar.f89772d);
            parcel.writeParcelable(gVar.f89777f, i10);
            ArrayList<II> arrayList3 = gVar.f89770b;
            if (arrayList3 != 0) {
                int size3 = arrayList3.size();
                parcel.writeInt(size3);
                while (true) {
                    int i13 = size3 - 1;
                    if (size3 > 0) {
                        parcel.writeParcelable((Parcelable) gVar.f89770b.get(i13), i10);
                        size3 = i13;
                    }
                }
            } else {
                parcel.writeInt(0);
            }
        }
        parcel.writeInt(this.f89735e.size());
        for (h hVar : this.f89735e) {
            parcel.writeString(hVar.f89771c);
            parcel.writeBundle(hVar.f89772d);
            parcel.writeParcelable(hVar.f89778f, i10);
            ArrayList<II> arrayList4 = hVar.f89770b;
            if (arrayList4 != 0) {
                int size4 = arrayList4.size();
                parcel.writeInt(size4);
                while (true) {
                    int i14 = size4 - 1;
                    if (size4 > 0) {
                        parcel.writeParcelable((Parcelable) hVar.f89770b.get(i14), i10);
                        size4 = i14;
                    }
                }
            } else {
                parcel.writeInt(0);
            }
        }
        parcel.writeInt(this.f89736f.size());
        for (d dVar : this.f89736f) {
            parcel.writeString(dVar.f89771c);
            parcel.writeBundle(dVar.f89772d);
            parcel.writeParcelable(dVar.f89774f, i10);
            ArrayList<II> arrayList5 = dVar.f89770b;
            if (arrayList5 != 0) {
                int size5 = arrayList5.size();
                parcel.writeInt(size5);
                while (true) {
                    int i15 = size5 - 1;
                    if (size5 > 0) {
                        parcel.writeParcelable((Parcelable) dVar.f89770b.get(i15), i10);
                        size5 = i15;
                    }
                }
            } else {
                parcel.writeInt(0);
            }
        }
        parcel.writeInt(this.f89737g.size());
        for (e eVar : this.f89737g) {
            parcel.writeString(eVar.f89771c);
            parcel.writeBundle(eVar.f89772d);
            parcel.writeParcelable(eVar.f89775f, i10);
            ArrayList<II> arrayList6 = eVar.f89770b;
            if (arrayList6 != 0) {
                int size6 = arrayList6.size();
                parcel.writeInt(size6);
                while (true) {
                    int i16 = size6 - 1;
                    if (size6 > 0) {
                        parcel.writeParcelable((Parcelable) eVar.f89770b.get(i16), i10);
                        size6 = i16;
                    }
                }
            } else {
                parcel.writeInt(0);
            }
        }
        parcel.writeInt(this.f89738h.size());
        for (f fVar : this.f89738h) {
            parcel.writeString(fVar.f89771c);
            parcel.writeBundle(fVar.f89772d);
            parcel.writeParcelable(fVar.f89776f, i10);
            ArrayList<II> arrayList7 = fVar.f89770b;
            if (arrayList7 != 0) {
                int size7 = arrayList7.size();
                parcel.writeInt(size7);
                while (true) {
                    int i17 = size7 - 1;
                    if (size7 > 0) {
                        parcel.writeParcelable((Parcelable) fVar.f89770b.get(i17), i10);
                        size7 = i17;
                    }
                }
            } else {
                parcel.writeInt(0);
            }
        }
        parcel.writeStringList(this.f89739i);
        if (com.xinzhu.overmind.utils.e.v()) {
            parcel.writeParcelable(this.f89741k, i10);
        }
        parcel.writeTypedArray(this.f89740j, i10);
        parcel.writeBundle(this.f89742l);
        parcel.writeString(this.f89743m);
        parcel.writeInt(this.f89744n);
        parcel.writeString(this.f89745o);
        parcel.writeStringList(this.f89746p);
        parcel.writeStringList(this.f89747q);
        parcel.writeInt(this.f89748r);
        parcel.writeParcelable(this.f89749s, i10);
        parcel.writeString(this.f89750t);
        parcel.writeString(this.f89752v);
        parcel.writeInt(this.f89753w);
        parcel.writeTypedList(this.f89754x);
        parcel.writeTypedList(this.f89755y);
        parcel.writeString("appendVersion");
        parcel.writeInt(1);
        parcel.writeStringArray(this.f89751u);
    }

    public static final class SigningDetails implements Parcelable {
        public static final Parcelable.Creator<SigningDetails> CREATOR = new a();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final PackageParser.SigningDetails f89766c = null;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Signature[] f89767b;

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
            this.f89767b = signingDetails.signatures;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeTypedArray(this.f89767b, i10);
        }

        protected SigningDetails(Parcel parcel) {
            this.f89767b = (Signature[]) parcel.createTypedArray(Signature.CREATOR);
        }
    }

    public static class c<II extends IntentInfo> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public MindPackage f89769a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public ArrayList<II> f89770b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f89771c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public Bundle f89772d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public ComponentName f89773e;

        public c(Parcel parcel) {
            this.f89771c = parcel.readString();
            this.f89772d = parcel.readBundle(Bundle.class.getClassLoader());
        }

        public ComponentName a() {
            ComponentName componentName = this.f89773e;
            if (componentName != null) {
                return componentName;
            }
            if (this.f89771c != null) {
                this.f89773e = new ComponentName(this.f89769a.f89743m, this.f89771c);
            }
            return this.f89773e;
        }

        public c(PackageParser.Component<?> component) {
            this.f89771c = component.className;
            this.f89772d = component.metaData;
        }
    }

    public static final class b extends c<ActivityIntentInfo> {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public ActivityInfo f89768f;

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public b(PackageParser.Activity activity) {
            super(activity);
            this.f89768f = activity.info;
            ArrayList<II> arrayList = activity.intents;
            if (arrayList != 0) {
                this.f89770b = new ArrayList<>(arrayList.size());
                Iterator it2 = activity.intents.iterator();
                while (it2.hasNext()) {
                    this.f89770b.add(new ActivityIntentInfo((PackageParser.ActivityIntentInfo) it2.next()));
                }
            }
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public b(Parcel parcel) {
            super(parcel);
            this.f89768f = (ActivityInfo) parcel.readParcelable(ActivityInfo.class.getClassLoader());
            int i10 = parcel.readInt();
            this.f89770b = new ArrayList<>(i10);
            while (true) {
                int i11 = i10 - 1;
                if (i10 <= 0) {
                    return;
                }
                this.f89770b.add(new ActivityIntentInfo((IntentInfo) parcel.readParcelable(MindPackage.class.getClassLoader())));
                i10 = i11;
            }
        }
    }

    public static final class d extends c<IntentInfo> {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public InstrumentationInfo f89774f;

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public d(PackageParser.Instrumentation instrumentation) {
            super(instrumentation);
            this.f89774f = instrumentation.info;
            ArrayList<II> arrayList = instrumentation.intents;
            if (arrayList != 0) {
                this.f89770b = new ArrayList<>(arrayList.size());
                Iterator it2 = instrumentation.intents.iterator();
                while (it2.hasNext()) {
                    this.f89770b.add((II) new IntentInfo((PackageParser.IntentInfo) it2.next()));
                }
            }
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public d(Parcel parcel) {
            super(parcel);
            this.f89774f = (InstrumentationInfo) parcel.readParcelable(InstrumentationInfo.class.getClassLoader());
            int i10 = parcel.readInt();
            this.f89770b = new ArrayList<>(i10);
            while (true) {
                int i11 = i10 - 1;
                if (i10 <= 0) {
                    return;
                }
                this.f89770b.add((II) ((IntentInfo) parcel.readParcelable(MindPackage.class.getClassLoader())));
                i10 = i11;
            }
        }
    }

    public static final class e extends c<IntentInfo> {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public PermissionInfo f89775f;

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public e(PackageParser.Permission permission) {
            super(permission);
            this.f89775f = permission.info;
            ArrayList<II> arrayList = permission.intents;
            if (arrayList != 0) {
                this.f89770b = new ArrayList<>(arrayList.size());
                Iterator it2 = permission.intents.iterator();
                while (it2.hasNext()) {
                    this.f89770b.add((II) new IntentInfo((PackageParser.IntentInfo) it2.next()));
                }
            }
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public e(Parcel parcel) {
            super(parcel);
            this.f89775f = (PermissionInfo) parcel.readParcelable(e.class.getClassLoader());
            int i10 = parcel.readInt();
            this.f89770b = new ArrayList<>(i10);
            while (true) {
                int i11 = i10 - 1;
                if (i10 <= 0) {
                    return;
                }
                this.f89770b.add((II) ((IntentInfo) parcel.readParcelable(MindPackage.class.getClassLoader())));
                i10 = i11;
            }
        }
    }

    public static final class f extends c<IntentInfo> {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public PermissionGroupInfo f89776f;

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public f(PackageParser.PermissionGroup permissionGroup) {
            super(permissionGroup);
            this.f89776f = permissionGroup.info;
            ArrayList<II> arrayList = permissionGroup.intents;
            if (arrayList != 0) {
                this.f89770b = new ArrayList<>(arrayList.size());
                Iterator it2 = permissionGroup.intents.iterator();
                while (it2.hasNext()) {
                    this.f89770b.add((II) new IntentInfo((PackageParser.IntentInfo) it2.next()));
                }
            }
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public f(Parcel parcel) {
            super(parcel);
            this.f89776f = (PermissionGroupInfo) parcel.readParcelable(f.class.getClassLoader());
            int i10 = parcel.readInt();
            this.f89770b = new ArrayList<>(i10);
            while (true) {
                int i11 = i10 - 1;
                if (i10 <= 0) {
                    return;
                }
                this.f89770b.add((II) ((IntentInfo) parcel.readParcelable(MindPackage.class.getClassLoader())));
                i10 = i11;
            }
        }
    }

    public static final class g extends c<ProviderIntentInfo> {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public ProviderInfo f89777f;

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public g(PackageParser.Provider provider) {
            super(provider);
            this.f89777f = provider.info;
            ArrayList<II> arrayList = provider.intents;
            if (arrayList != 0) {
                this.f89770b = new ArrayList<>(arrayList.size());
                Iterator it2 = provider.intents.iterator();
                while (it2.hasNext()) {
                    this.f89770b.add(new ProviderIntentInfo((PackageParser.ProviderIntentInfo) it2.next()));
                }
            }
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public g(Parcel parcel) {
            super(parcel);
            this.f89777f = (ProviderInfo) parcel.readParcelable(ProviderInfo.class.getClassLoader());
            int i10 = parcel.readInt();
            this.f89770b = new ArrayList<>(i10);
            while (true) {
                int i11 = i10 - 1;
                if (i10 <= 0) {
                    return;
                }
                this.f89770b.add(new ProviderIntentInfo((IntentInfo) parcel.readParcelable(MindPackage.class.getClassLoader())));
                i10 = i11;
            }
        }
    }

    public static final class h extends c<ServiceIntentInfo> {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public ServiceInfo f89778f;

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public h(PackageParser.Service service) {
            super(service);
            this.f89778f = service.info;
            ArrayList<II> arrayList = service.intents;
            if (arrayList != 0) {
                this.f89770b = new ArrayList<>(arrayList.size());
                Iterator it2 = service.intents.iterator();
                while (it2.hasNext()) {
                    this.f89770b.add(new ServiceIntentInfo((PackageParser.ServiceIntentInfo) it2.next()));
                }
            }
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public h(Parcel parcel) {
            super(parcel);
            this.f89778f = (ServiceInfo) parcel.readParcelable(ServiceInfo.class.getClassLoader());
            int i10 = parcel.readInt();
            this.f89770b = new ArrayList<>(i10);
            while (true) {
                int i11 = i10 - 1;
                if (i10 <= 0) {
                    return;
                }
                this.f89770b.add(new ServiceIntentInfo((IntentInfo) parcel.readParcelable(MindPackage.class.getClassLoader())));
                i10 = i11;
            }
        }
    }

    public static class IntentInfo implements Parcelable {
        public static final Parcelable.Creator<IntentInfo> CREATOR = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public IntentFilter f89757b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f89758c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f89759d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public String f89760e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f89761f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f89762g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f89763h;

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
            this.f89757b = intentInfo;
            this.f89758c = intentInfo.hasDefault;
            this.f89759d = intentInfo.labelRes;
            CharSequence charSequence = intentInfo.nonLocalizedLabel;
            this.f89760e = charSequence == null ? null : charSequence.toString();
            this.f89761f = intentInfo.icon;
            this.f89762g = intentInfo.logo;
            this.f89763h = intentInfo.banner;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeParcelable(this.f89757b, i10);
            parcel.writeByte(this.f89758c ? (byte) 1 : (byte) 0);
            parcel.writeInt(this.f89759d);
            parcel.writeString(this.f89760e);
            parcel.writeInt(this.f89761f);
            parcel.writeInt(this.f89762g);
            parcel.writeInt(this.f89763h);
        }

        public IntentInfo(IntentInfo intentInfo) {
            this.f89757b = intentInfo.f89757b;
            this.f89758c = intentInfo.f89758c;
            this.f89759d = intentInfo.f89759d;
            String str = intentInfo.f89760e;
            this.f89760e = str == null ? null : str.toString();
            this.f89761f = intentInfo.f89761f;
            this.f89762g = intentInfo.f89762g;
            this.f89763h = intentInfo.f89763h;
        }

        protected IntentInfo(Parcel parcel) {
            this.f89757b = (IntentFilter) parcel.readParcelable(MindPackage.class.getClassLoader());
            this.f89758c = parcel.readByte() != 0;
            this.f89759d = parcel.readInt();
            this.f89760e = parcel.readString();
            this.f89761f = parcel.readInt();
            this.f89762g = parcel.readInt();
            this.f89763h = parcel.readInt();
        }
    }

    protected MindPackage(Parcel parcel) {
        this.f89732b = new ArrayList<>(0);
        this.f89733c = new ArrayList<>(0);
        this.f89734d = new ArrayList<>(0);
        this.f89735e = new ArrayList<>(0);
        this.f89736f = new ArrayList<>(0);
        this.f89737g = new ArrayList<>(0);
        this.f89738h = new ArrayList<>(0);
        this.f89739i = new ArrayList<>();
        this.f89754x = null;
        this.f89755y = null;
        int i10 = parcel.readInt();
        this.f89732b = new ArrayList<>(i10);
        while (true) {
            int i11 = i10 - 1;
            if (i10 <= 0) {
                break;
            }
            b bVar = new b(parcel);
            Iterator it2 = bVar.f89770b.iterator();
            while (it2.hasNext()) {
                ((ActivityIntentInfo) it2.next()).f89756i = bVar;
            }
            bVar.f89769a = this;
            this.f89732b.add(bVar);
            i10 = i11;
        }
        int i12 = parcel.readInt();
        this.f89733c = new ArrayList<>(i12);
        while (true) {
            int i13 = i12 - 1;
            if (i12 <= 0) {
                break;
            }
            b bVar2 = new b(parcel);
            Iterator it3 = bVar2.f89770b.iterator();
            while (it3.hasNext()) {
                ((ActivityIntentInfo) it3.next()).f89756i = bVar2;
            }
            bVar2.f89769a = this;
            this.f89733c.add(bVar2);
            i12 = i13;
        }
        int i14 = parcel.readInt();
        this.f89734d = new ArrayList<>(i14);
        while (true) {
            int i15 = i14 - 1;
            if (i14 <= 0) {
                break;
            }
            g gVar = new g(parcel);
            gVar.f89777f.authority = gVar.f89777f.authority.split(";")[0];
            Iterator it4 = gVar.f89770b.iterator();
            while (it4.hasNext()) {
                ((ProviderIntentInfo) it4.next()).f89764i = gVar;
            }
            gVar.f89769a = this;
            this.f89734d.add(gVar);
            i14 = i15;
        }
        int i16 = parcel.readInt();
        this.f89735e = new ArrayList<>(i16);
        while (true) {
            int i17 = i16 - 1;
            if (i16 <= 0) {
                break;
            }
            h hVar = new h(parcel);
            Iterator it5 = hVar.f89770b.iterator();
            while (it5.hasNext()) {
                ((ServiceIntentInfo) it5.next()).f89765i = hVar;
            }
            hVar.f89769a = this;
            this.f89735e.add(hVar);
            i16 = i17;
        }
        int i18 = parcel.readInt();
        this.f89736f = new ArrayList<>(i18);
        while (true) {
            int i19 = i18 - 1;
            if (i18 <= 0) {
                break;
            }
            d dVar = new d(parcel);
            dVar.f89769a = this;
            this.f89736f.add(dVar);
            i18 = i19;
        }
        int i20 = parcel.readInt();
        this.f89737g = new ArrayList<>(i20);
        while (true) {
            int i21 = i20 - 1;
            if (i20 <= 0) {
                break;
            }
            e eVar = new e(parcel);
            eVar.f89769a = this;
            this.f89737g.add(eVar);
            i20 = i21;
        }
        int i22 = parcel.readInt();
        this.f89738h = new ArrayList<>(i22);
        while (true) {
            int i23 = i22 - 1;
            if (i22 <= 0) {
                break;
            }
            f fVar = new f(parcel);
            fVar.f89769a = this;
            this.f89738h.add(fVar);
            i22 = i23;
        }
        parcel.readStringList(this.f89739i);
        if (com.xinzhu.overmind.utils.e.v()) {
            try {
                int iDataPosition = parcel.dataPosition();
                String string = parcel.readString();
                parcel.setDataPosition(iDataPosition);
                if (string.contains("MindPackage$SigningDetails")) {
                    com.xinzhu.overmind.b.c(f89731z, "Legacy signing details found, solve it");
                    com.xinzhu.haunted.android.content.pm.n.a aVarN = com.xinzhu.haunted.android.content.pm.n.a.n(((SigningDetails) parcel.readParcelable(SigningDetails.class.getClassLoader())).f89767b, 0);
                    Objects.requireNonNull(aVarN);
                    this.f89741k = (PackageParser.SigningDetails) aVarN.f88853a;
                } else {
                    this.f89741k = (PackageParser.SigningDetails) parcel.readParcelable(PackageParser.SigningDetails.class.getClassLoader());
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        this.f89740j = (Signature[]) parcel.createTypedArray(Signature.CREATOR);
        this.f89742l = parcel.readBundle(Bundle.class.getClassLoader());
        this.f89743m = parcel.readString();
        this.f89744n = parcel.readInt();
        this.f89745o = parcel.readString();
        this.f89746p = parcel.createStringArrayList();
        this.f89747q = parcel.createStringArrayList();
        this.f89748r = parcel.readInt();
        this.f89749s = (ApplicationInfo) parcel.readParcelable(ApplicationInfo.class.getClassLoader());
        this.f89750t = parcel.readString();
        this.f89752v = parcel.readString();
        this.f89753w = parcel.readInt();
        this.f89754x = parcel.createTypedArrayList(ConfigurationInfo.CREATOR);
        this.f89755y = parcel.createTypedArrayList(FeatureInfo.CREATOR);
        int iDataPosition2 = parcel.dataPosition();
        try {
            if (parcel.readString().equals("appendVersion")) {
                if (parcel.readInt() == 1) {
                    this.f89751u = parcel.createStringArray();
                    return;
                }
                return;
            }
        } catch (Throwable unused) {
        }
        parcel.setDataPosition(iDataPosition2);
    }
}
