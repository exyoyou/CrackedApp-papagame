package com.xinzhu.overmind.server.pm;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.util.ArrayMap;
import com.byazt.hv.TTDownloadField;
import com.xinzhu.overmind.utils.y;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public class b {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String f89880g = "ComponentResolver";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    static final Comparator<ResolveInfo> f89881h = new Comparator() { // from class: com.xinzhu.overmind.server.pm.a
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return b.j((ResolveInfo) obj, (ResolveInfo) obj2);
        }
    };

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final C1135b f89883b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final c f89884c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final C1135b f89885d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final d f89886e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f89882a = new Object();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ArrayMap<String, MindPackage.g> f89887f = new ArrayMap<>();

    /* JADX INFO: renamed from: com.xinzhu.overmind.server.pm.b$b, reason: collision with other inner class name */
    private static final class C1135b extends g<MindPackage.ActivityIntentInfo, ResolveInfo> {

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private final ArrayMap<ComponentName, MindPackage.b> f89888m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private int f89889n;

        private C1135b() {
            this.f89888m = new ArrayMap<>();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void G(MindPackage.b bVar, String str, List<MindPackage.ActivityIntentInfo> list) {
            this.f89888m.put(bVar.a(), bVar);
            int size = bVar.f89770b.size();
            for (int i10 = 0; i10 < size; i10++) {
                MindPackage.ActivityIntentInfo activityIntentInfo = (MindPackage.ActivityIntentInfo) bVar.f89770b.get(i10);
                if (list != null && TTDownloadField.TT_ACTIVITY.equals(str)) {
                    list.add(activityIntentInfo);
                    b(activityIntentInfo);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void M(MindPackage.b bVar, String str) {
            this.f89888m.remove(bVar.a());
            int size = bVar.f89770b.size();
            for (int i10 = 0; i10 < size; i10++) {
                x((MindPackage.ActivityIntentInfo) bVar.f89770b.get(i10));
            }
        }

        private MindPackageSettings N(MindPackageSettings mindPackageSettings) {
            return mindPackageSettings.f89829b != null ? MindPackageManagerService.get().getMindPackageSettingsInternal(mindPackageSettings.f89829b.f89743m) : mindPackageSettings;
        }

        @Override // com.xinzhu.overmind.server.pm.g
        protected void A(List<ResolveInfo> list) {
            Collections.sort(list, b.f89881h);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.server.pm.g
        /* JADX INFO: renamed from: H, reason: merged with bridge method [inline-methods] */
        public boolean q(String str, MindPackage.ActivityIntentInfo activityIntentInfo) {
            return str.equals(activityIntentInfo.f89756i.f89769a.f89743m);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.server.pm.g
        /* JADX INFO: renamed from: I, reason: merged with bridge method [inline-methods] */
        public MindPackage.ActivityIntentInfo[] r(int i10) {
            return new MindPackage.ActivityIntentInfo[i10];
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.server.pm.g
        /* JADX INFO: renamed from: J, reason: merged with bridge method [inline-methods] */
        public ResolveInfo s(MindPackage.ActivityIntentInfo activityIntentInfo, int i10, int i11) {
            MindPackageSettings mindPackageSettingsInternal;
            MindPackage.b bVar = activityIntentInfo.f89756i;
            if (!MindPackageManagerService.get().isComponentEnabled(bVar.f89768f, i11) || (mindPackageSettingsInternal = MindPackageManagerService.get().getMindPackageSettingsInternal(bVar.f89768f.packageName)) == null) {
                return null;
            }
            ActivityInfo activityInfoE = q.e(bVar, this.f89889n, mindPackageSettingsInternal.C(i11), i11);
            ResolveInfo resolveInfo = new ResolveInfo();
            resolveInfo.activityInfo = activityInfoE;
            if ((this.f89889n & 64) != 0) {
                resolveInfo.filter = activityIntentInfo.f89757b;
            }
            resolveInfo.priority = activityIntentInfo.f89757b.getPriority();
            resolveInfo.preferredOrder = bVar.f89769a.f89744n;
            resolveInfo.match = i10;
            resolveInfo.isDefault = activityIntentInfo.f89758c;
            resolveInfo.labelRes = activityIntentInfo.f89759d;
            resolveInfo.nonLocalizedLabel = activityIntentInfo.f89760e;
            resolveInfo.icon = activityIntentInfo.f89761f;
            return resolveInfo;
        }

        List<ResolveInfo> K(Intent intent, String str, int i10, int i11) {
            this.f89889n = i10;
            return super.t(intent, str, (i10 & 65536) != 0, i11);
        }

        List<ResolveInfo> L(Intent intent, String str, int i10, List<MindPackage.b> list, int i11) {
            if (list == null) {
                return null;
            }
            this.f89889n = i10;
            boolean z10 = (i10 & 65536) != 0;
            int size = list.size();
            ArrayList arrayList = new ArrayList(size);
            for (int i12 = 0; i12 < size; i12++) {
                ArrayList<II> arrayList2 = list.get(i12).f89770b;
                if (arrayList2 != 0 && arrayList2.size() > 0) {
                    MindPackage.ActivityIntentInfo[] activityIntentInfoArr = new MindPackage.ActivityIntentInfo[arrayList2.size()];
                    arrayList2.toArray(activityIntentInfoArr);
                    arrayList.add(activityIntentInfoArr);
                }
            }
            return super.u(intent, str, z10, arrayList, i11);
        }

        @Override // com.xinzhu.overmind.server.pm.g
        public List<ResolveInfo> t(Intent intent, String str, boolean z10, int i10) {
            this.f89889n = z10 ? 65536 : 0;
            return super.t(intent, str, z10, i10);
        }
    }

    private static final class c extends g<MindPackage.ProviderIntentInfo, ResolveInfo> {

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private final ArrayMap<ComponentName, MindPackage.g> f89890m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private int f89891n;

        private c() {
            this.f89890m = new ArrayMap<>();
        }

        @Override // com.xinzhu.overmind.server.pm.g
        protected void A(List<ResolveInfo> list) {
            Collections.sort(list, b.f89881h);
        }

        void E(MindPackage.g gVar) {
            this.f89890m.put(gVar.a(), gVar);
            int size = gVar.f89770b.size();
            for (int i10 = 0; i10 < size; i10++) {
                b((MindPackage.ProviderIntentInfo) gVar.f89770b.get(i10));
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.server.pm.g
        /* JADX INFO: renamed from: F, reason: merged with bridge method [inline-methods] */
        public boolean c(MindPackage.ProviderIntentInfo providerIntentInfo, List<ResolveInfo> list) {
            ProviderInfo providerInfo = providerIntentInfo.f89764i.f89777f;
            for (int size = list.size() - 1; size >= 0; size--) {
                ProviderInfo providerInfo2 = list.get(size).providerInfo;
                if (providerInfo2.name.equals(providerInfo.name) && providerInfo2.packageName.equals(providerInfo.packageName)) {
                    return false;
                }
            }
            return true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.server.pm.g
        /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
        public boolean q(String str, MindPackage.ProviderIntentInfo providerIntentInfo) {
            return str.equals(providerIntentInfo.f89764i.f89769a.f89743m);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.server.pm.g
        /* JADX INFO: renamed from: H, reason: merged with bridge method [inline-methods] */
        public MindPackage.ProviderIntentInfo[] r(int i10) {
            return new MindPackage.ProviderIntentInfo[i10];
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.server.pm.g
        /* JADX INFO: renamed from: I, reason: merged with bridge method [inline-methods] */
        public ResolveInfo s(MindPackage.ProviderIntentInfo providerIntentInfo, int i10, int i11) {
            MindPackageSettings mindPackageSettingsInternal;
            MindPackage.g gVar = providerIntentInfo.f89764i;
            if (!MindPackageManagerService.get().isComponentEnabled(gVar.f89777f, i11) || (mindPackageSettingsInternal = MindPackageManagerService.get().getMindPackageSettingsInternal(gVar.f89777f.packageName)) == null) {
                return null;
            }
            ProviderInfo providerInfoK = q.k(gVar, this.f89891n, mindPackageSettingsInternal.C(i11), i11);
            ResolveInfo resolveInfo = new ResolveInfo();
            resolveInfo.providerInfo = providerInfoK;
            if ((this.f89891n & 64) != 0) {
                resolveInfo.filter = providerIntentInfo.f89757b;
            }
            resolveInfo.priority = providerIntentInfo.f89757b.getPriority();
            resolveInfo.preferredOrder = gVar.f89769a.f89744n;
            resolveInfo.match = i10;
            resolveInfo.isDefault = providerIntentInfo.f89758c;
            resolveInfo.labelRes = providerIntentInfo.f89759d;
            resolveInfo.nonLocalizedLabel = providerIntentInfo.f89760e;
            resolveInfo.icon = providerIntentInfo.f89761f;
            return resolveInfo;
        }

        List<ResolveInfo> J(Intent intent, String str, int i10, int i11) {
            this.f89891n = i10;
            return super.t(intent, str, (i10 & 65536) != 0, i11);
        }

        List<ResolveInfo> K(Intent intent, String str, int i10, List<MindPackage.g> list, int i11) {
            if (list == null) {
                return null;
            }
            this.f89891n = i10;
            boolean z10 = (i10 & 65536) != 0;
            int size = list.size();
            ArrayList arrayList = new ArrayList(size);
            for (int i12 = 0; i12 < size; i12++) {
                ArrayList<II> arrayList2 = list.get(i12).f89770b;
                if (arrayList2 != 0 && arrayList2.size() > 0) {
                    MindPackage.ProviderIntentInfo[] providerIntentInfoArr = new MindPackage.ProviderIntentInfo[arrayList2.size()];
                    arrayList2.toArray(providerIntentInfoArr);
                    arrayList.add(providerIntentInfoArr);
                }
            }
            return super.u(intent, str, z10, arrayList, i11);
        }

        void L(MindPackage.g gVar) {
            this.f89890m.remove(gVar.a());
            int size = gVar.f89770b.size();
            for (int i10 = 0; i10 < size; i10++) {
                x((MindPackage.ProviderIntentInfo) gVar.f89770b.get(i10));
            }
        }

        @Override // com.xinzhu.overmind.server.pm.g
        public List<ResolveInfo> t(Intent intent, String str, boolean z10, int i10) {
            this.f89891n = z10 ? 65536 : 0;
            return super.t(intent, str, z10, i10);
        }
    }

    private static final class d extends g<MindPackage.ServiceIntentInfo, ResolveInfo> {

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private final ArrayMap<ComponentName, MindPackage.h> f89892m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private int f89893n;

        private d() {
            this.f89892m = new ArrayMap<>();
        }

        @Override // com.xinzhu.overmind.server.pm.g
        protected void A(List<ResolveInfo> list) {
            Collections.sort(list, b.f89881h);
        }

        void E(MindPackage.h hVar) {
            this.f89892m.put(hVar.a(), hVar);
            int size = hVar.f89770b.size();
            for (int i10 = 0; i10 < size; i10++) {
                b((MindPackage.ServiceIntentInfo) hVar.f89770b.get(i10));
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.server.pm.g
        /* JADX INFO: renamed from: F, reason: merged with bridge method [inline-methods] */
        public boolean q(String str, MindPackage.ServiceIntentInfo serviceIntentInfo) {
            return str.equals(serviceIntentInfo.f89765i.f89769a.f89743m);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.server.pm.g
        /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
        public MindPackage.ServiceIntentInfo[] r(int i10) {
            return new MindPackage.ServiceIntentInfo[i10];
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.server.pm.g
        /* JADX INFO: renamed from: H, reason: merged with bridge method [inline-methods] */
        public ResolveInfo s(MindPackage.ServiceIntentInfo serviceIntentInfo, int i10, int i11) {
            MindPackageSettings mindPackageSettingsInternal;
            MindPackage.h hVar = serviceIntentInfo.f89765i;
            if (!MindPackageManagerService.get().isComponentEnabled(hVar.f89778f, i11) || (mindPackageSettingsInternal = MindPackageManagerService.get().getMindPackageSettingsInternal(hVar.f89778f.packageName)) == null) {
                return null;
            }
            ServiceInfo serviceInfoL = q.l(hVar, this.f89893n, mindPackageSettingsInternal.C(i11), i11);
            ResolveInfo resolveInfo = new ResolveInfo();
            resolveInfo.serviceInfo = serviceInfoL;
            if ((this.f89893n & 64) != 0) {
                resolveInfo.filter = serviceIntentInfo.f89757b;
            }
            resolveInfo.priority = serviceIntentInfo.f89757b.getPriority();
            resolveInfo.preferredOrder = hVar.f89769a.f89744n;
            resolveInfo.match = i10;
            resolveInfo.isDefault = serviceIntentInfo.f89758c;
            resolveInfo.labelRes = serviceIntentInfo.f89759d;
            resolveInfo.nonLocalizedLabel = serviceIntentInfo.f89760e;
            resolveInfo.icon = serviceIntentInfo.f89761f;
            return resolveInfo;
        }

        List<ResolveInfo> I(Intent intent, String str, int i10, int i11) {
            this.f89893n = i10;
            return super.t(intent, str, (i10 & 65536) != 0, i11);
        }

        List<ResolveInfo> J(Intent intent, String str, int i10, List<MindPackage.h> list, int i11) {
            if (list == null) {
                return null;
            }
            this.f89893n = i10;
            boolean z10 = (i10 & 65536) != 0;
            int size = list.size();
            ArrayList arrayList = new ArrayList(size);
            for (int i12 = 0; i12 < size; i12++) {
                ArrayList<II> arrayList2 = list.get(i12).f89770b;
                if (arrayList2 != 0 && arrayList2.size() > 0) {
                    MindPackage.ServiceIntentInfo[] serviceIntentInfoArr = new MindPackage.ServiceIntentInfo[arrayList2.size()];
                    arrayList2.toArray(serviceIntentInfoArr);
                    arrayList.add(serviceIntentInfoArr);
                }
            }
            return super.u(intent, str, z10, arrayList, i11);
        }

        void K(MindPackage.h hVar) {
            this.f89892m.remove(hVar.a());
            int size = hVar.f89770b.size();
            for (int i10 = 0; i10 < size; i10++) {
                x((MindPackage.ServiceIntentInfo) hVar.f89770b.get(i10));
            }
        }

        @Override // com.xinzhu.overmind.server.pm.g
        public List<ResolveInfo> t(Intent intent, String str, boolean z10, int i10) {
            this.f89893n = z10 ? 65536 : 0;
            return super.t(intent, str, z10, i10);
        }
    }

    public b() {
        this.f89883b = new C1135b();
        this.f89884c = new c();
        this.f89885d = new C1135b();
        this.f89886e = new d();
    }

    private void b(MindPackage mindPackage, List<MindPackage.ActivityIntentInfo> list) {
        int size = mindPackage.f89732b.size();
        for (int i10 = 0; i10 < size; i10++) {
            MindPackage.b bVar = mindPackage.f89732b.get(i10);
            ActivityInfo activityInfo = bVar.f89768f;
            activityInfo.processName = MindPackageManagerService.fixProcessName(mindPackage.f89749s.processName, activityInfo.processName);
            this.f89883b.G(bVar, TTDownloadField.TT_ACTIVITY, list);
        }
    }

    private void d(MindPackage mindPackage) {
        int size = mindPackage.f89734d.size();
        for (int i10 = 0; i10 < size; i10++) {
            MindPackage.g gVar = mindPackage.f89734d.get(i10);
            ProviderInfo providerInfo = gVar.f89777f;
            providerInfo.processName = MindPackageManagerService.fixProcessName(mindPackage.f89749s.processName, providerInfo.processName);
            this.f89884c.E(gVar);
            String str = gVar.f89777f.authority;
            if (str != null) {
                for (String str2 : str.split(";")) {
                    if (this.f89887f.containsKey(str2)) {
                        MindPackage.g gVar2 = this.f89887f.get(str2);
                        ComponentName componentNameA = (gVar2 == null || gVar2.a() == null) ? null : gVar2.a();
                        y.j(f89880g, "Skipping provider name " + str2 + " (in package " + mindPackage.f89749s.packageName + "): name already used by " + (componentNameA != null ? componentNameA.getPackageName() : "?"));
                    } else {
                        this.f89887f.put(str2, gVar);
                        ProviderInfo providerInfo2 = gVar.f89777f;
                        String str3 = providerInfo2.authority;
                        if (str3 == null) {
                            providerInfo2.authority = str2;
                        } else {
                            providerInfo2.authority = str3;
                        }
                    }
                }
            }
        }
    }

    private void e(MindPackage mindPackage) {
        int size = mindPackage.f89733c.size();
        for (int i10 = 0; i10 < size; i10++) {
            MindPackage.b bVar = mindPackage.f89733c.get(i10);
            ActivityInfo activityInfo = bVar.f89768f;
            activityInfo.processName = MindPackageManagerService.fixProcessName(mindPackage.f89749s.processName, activityInfo.processName);
            this.f89885d.G(bVar, "receiver", null);
        }
    }

    private void f(MindPackage mindPackage) {
        int size = mindPackage.f89735e.size();
        for (int i10 = 0; i10 < size; i10++) {
            MindPackage.h hVar = mindPackage.f89735e.get(i10);
            ServiceInfo serviceInfo = hVar.f89778f;
            serviceInfo.processName = MindPackageManagerService.fixProcessName(mindPackage.f89749s.processName, serviceInfo.processName);
            this.f89886e.E(hVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int j(ResolveInfo resolveInfo, ResolveInfo resolveInfo2) {
        int i10 = resolveInfo.priority;
        int i11 = resolveInfo2.priority;
        if (i10 != i11) {
            return i10 > i11 ? -1 : 1;
        }
        int i12 = resolveInfo.preferredOrder;
        int i13 = resolveInfo2.preferredOrder;
        if (i12 != i13) {
            return i12 > i13 ? -1 : 1;
        }
        boolean z10 = resolveInfo.isDefault;
        if (z10 != resolveInfo2.isDefault) {
            return z10 ? -1 : 1;
        }
        int i14 = resolveInfo.match;
        int i15 = resolveInfo2.match;
        if (i14 != i15) {
            return i14 > i15 ? -1 : 1;
        }
        ActivityInfo activityInfo = resolveInfo.activityInfo;
        if (activityInfo != null) {
            return activityInfo.packageName.compareTo(resolveInfo2.activityInfo.packageName);
        }
        ServiceInfo serviceInfo = resolveInfo.serviceInfo;
        if (serviceInfo != null) {
            return serviceInfo.packageName.compareTo(resolveInfo2.serviceInfo.packageName);
        }
        ProviderInfo providerInfo = resolveInfo.providerInfo;
        if (providerInfo != null) {
            return providerInfo.packageName.compareTo(resolveInfo2.providerInfo.packageName);
        }
        return 0;
    }

    private void w(MindPackage mindPackage) {
        int size = mindPackage.f89732b.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.f89883b.M(mindPackage.f89732b.get(i10), TTDownloadField.TT_ACTIVITY);
        }
        int size2 = mindPackage.f89734d.size();
        for (int i11 = 0; i11 < size2; i11++) {
            MindPackage.g gVar = mindPackage.f89734d.get(i11);
            this.f89884c.L(gVar);
            String str = gVar.f89777f.authority;
            if (str != null) {
                String[] strArrSplit = str.split(";");
                for (int i12 = 0; i12 < strArrSplit.length; i12++) {
                    if (this.f89887f.get(strArrSplit[i12]) != null) {
                        this.f89887f.remove(strArrSplit[i12]);
                    }
                }
            }
        }
        int size3 = mindPackage.f89733c.size();
        for (int i13 = 0; i13 < size3; i13++) {
            this.f89885d.M(mindPackage.f89733c.get(i13), "receiver");
        }
        int size4 = mindPackage.f89735e.size();
        for (int i14 = 0; i14 < size4; i14++) {
            this.f89886e.K(mindPackage.f89735e.get(i14));
        }
    }

    void c(MindPackage mindPackage) {
        ArrayList arrayList = new ArrayList();
        synchronized (this.f89882a) {
            b(mindPackage, arrayList);
            f(mindPackage);
            d(mindPackage);
            e(mindPackage);
        }
    }

    MindPackage.g g(ComponentName componentName) {
        MindPackage.g gVar;
        synchronized (this.f89882a) {
            gVar = (MindPackage.g) this.f89884c.f89890m.get(componentName);
        }
        return gVar;
    }

    MindPackage.b getActivity(ComponentName componentName) {
        MindPackage.b bVar;
        synchronized (this.f89882a) {
            bVar = (MindPackage.b) this.f89883b.f89888m.get(componentName);
        }
        return bVar;
    }

    MindPackage.b h(ComponentName componentName) {
        MindPackage.b bVar;
        synchronized (this.f89882a) {
            bVar = (MindPackage.b) this.f89885d.f89888m.get(componentName);
        }
        return bVar;
    }

    MindPackage.h i(ComponentName componentName) {
        MindPackage.h hVar;
        synchronized (this.f89882a) {
            hVar = (MindPackage.h) this.f89886e.f89892m.get(componentName);
        }
        return hVar;
    }

    List<ResolveInfo> k(Intent intent, String str, int i10, int i11) {
        List<ResolveInfo> listK;
        synchronized (this.f89882a) {
            listK = this.f89883b.K(intent, str, i10, i11);
        }
        return listK;
    }

    List<ResolveInfo> l(Intent intent, String str, int i10, List<MindPackage.b> list, int i11) {
        List<ResolveInfo> listL;
        synchronized (this.f89882a) {
            listL = this.f89883b.L(intent, str, i10, list, i11);
        }
        return listL;
    }

    List<ResolveInfo> m(Intent intent, String str, int i10, int i11) {
        List<ResolveInfo> listK;
        synchronized (this.f89882a) {
            listK = this.f89883b.K(intent, str, i10, i11);
        }
        return listK;
    }

    ProviderInfo n(String str, int i10, int i11) {
        synchronized (this.f89882a) {
            MindPackage.g gVar = this.f89887f.get(str.split(";")[0]);
            if (gVar == null) {
                return null;
            }
            return q.k(gVar, i10, MindPackageManagerService.get().getMindPackageSettingsInternal(gVar.f89777f.packageName).C(i11), i11);
        }
    }

    List<ResolveInfo> o(Intent intent, String str, int i10, int i11) {
        List<ResolveInfo> listJ;
        synchronized (this.f89882a) {
            listJ = this.f89884c.J(intent, str, i10, i11);
        }
        return listJ;
    }

    List<ResolveInfo> p(Intent intent, String str, int i10, List<MindPackage.g> list, int i11) {
        List<ResolveInfo> listK;
        synchronized (this.f89882a) {
            listK = this.f89884c.K(intent, str, i10, list, i11);
        }
        return listK;
    }

    List<ProviderInfo> q(String str, String str2, int i10, int i11) {
        ProviderInfo providerInfoK;
        Bundle bundle;
        ArrayList arrayList = new ArrayList();
        synchronized (this.f89882a) {
            for (int size = this.f89884c.f89890m.size() - 1; size >= 0; size--) {
                MindPackage.g gVar = (MindPackage.g) this.f89884c.f89890m.valueAt(size);
                MindPackageSettings mindPackageSettingsInternal = MindPackageManagerService.get().getMindPackageSettingsInternal(gVar.f89777f.packageName);
                if (mindPackageSettingsInternal != null) {
                    ProviderInfo providerInfo = gVar.f89777f;
                    if (providerInfo.authority != null && ((str == null || providerInfo.processName.equals(str)) && ((str2 == null || ((bundle = gVar.f89772d) != null && bundle.containsKey(str2))) && MindPackageManagerService.get().isEnabledAndMatchLPr(gVar.f89777f, i10, i11) && (providerInfoK = q.k(gVar, i10, mindPackageSettingsInternal.C(i11), i11)) != null))) {
                        arrayList.add(providerInfoK);
                    }
                }
            }
        }
        return arrayList;
    }

    List<ResolveInfo> r(Intent intent, String str, int i10, int i11) {
        List<ResolveInfo> listK;
        synchronized (this.f89882a) {
            listK = this.f89885d.K(intent, str, i10, i11);
        }
        return listK;
    }

    List<ResolveInfo> s(Intent intent, String str, int i10, List<MindPackage.b> list, int i11) {
        List<ResolveInfo> listL;
        synchronized (this.f89882a) {
            listL = this.f89885d.L(intent, str, i10, list, i11);
        }
        return listL;
    }

    List<ResolveInfo> t(Intent intent, String str, int i10, int i11) {
        List<ResolveInfo> listI;
        synchronized (this.f89882a) {
            listI = this.f89886e.I(intent, str, i10, i11);
        }
        return listI;
    }

    List<ResolveInfo> u(Intent intent, String str, int i10, List<MindPackage.h> list, int i11) {
        List<ResolveInfo> listJ;
        synchronized (this.f89882a) {
            listJ = this.f89886e.J(intent, str, i10, list, i11);
        }
        return listJ;
    }

    void v(MindPackage mindPackage) {
        synchronized (this.f89882a) {
            w(mindPackage);
        }
    }
}
