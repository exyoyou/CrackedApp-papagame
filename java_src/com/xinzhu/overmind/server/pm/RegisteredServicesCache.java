package com.xinzhu.overmind.server.pm;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.ComponentInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.Xml;
import com.join.mgps.receiver.BootReceiver_;
import com.xinzhu.overmind.server.user.MindUserHandle;
import com.xinzhu.overmind.utils.y;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes8.dex */
public abstract class RegisteredServicesCache<V> {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final String f89856l = "PackageManager";

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final boolean f89857m = false;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    protected static final String f89858n = "registered_services";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f89859a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f89860b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f89861c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f89862d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected final Object f89863e = new Object();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final SparseArray<d<V>> f89864f = new SparseArray<>(2);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private t<V> f89865g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Handler f89866h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final r f89867i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final com.xinzhu.overmind.server.user.b f89868j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final BroadcastReceiver f89869k;

    class a implements r {
        a() {
        }

        @Override // com.xinzhu.overmind.server.pm.r
        public void a(String str, int i10) {
            RegisteredServicesCache.this.q(new Intent().setAction(BootReceiver_.f72255b), i10);
        }

        @Override // com.xinzhu.overmind.server.pm.r
        public void b(String str, int i10) {
            RegisteredServicesCache.this.q(new Intent().setAction(BootReceiver_.f72254a), i10);
        }

        @Override // com.xinzhu.overmind.server.pm.r
        public void c(String str, int i10) {
            RegisteredServicesCache.this.q(new Intent().setAction("android.intent.action.PACKAGE_CHANGED"), i10);
        }
    }

    class b implements com.xinzhu.overmind.server.user.b {
        b() {
        }

        @Override // com.xinzhu.overmind.server.user.b
        public void a(int i10) {
        }

        @Override // com.xinzhu.overmind.server.user.b
        public void b(int i10) {
            RegisteredServicesCache.this.u(i10);
        }

        @Override // com.xinzhu.overmind.server.user.b
        public void c(int i10) {
        }
    }

    public static class c<V> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final V f89873a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ComponentInfo f89874b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ComponentName f89875c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f89876d;

        public c(V v10, ComponentInfo componentInfo, ComponentName componentName) {
            this.f89873a = v10;
            this.f89874b = componentInfo;
            this.f89875c = componentName;
            this.f89876d = componentInfo != null ? componentInfo.applicationInfo.uid : -1;
        }

        public String toString() {
            return "ServiceInfo: " + this.f89873a + ", " + this.f89875c + ", uid " + this.f89876d;
        }
    }

    public RegisteredServicesCache(Context context, String str, String str2, String str3) {
        a aVar = new a();
        this.f89867i = aVar;
        b bVar = new b();
        this.f89868j = bVar;
        this.f89869k = new BroadcastReceiver() { // from class: com.xinzhu.overmind.server.pm.RegisteredServicesCache.3
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                int intExtra = intent.getIntExtra("android.intent.extra.UID", -1);
                if (intExtra != -1) {
                    RegisteredServicesCache.this.q(intent, MindUserHandle.x(intExtra));
                }
            }
        };
        this.f89859a = context;
        this.f89860b = str;
        this.f89861c = str2;
        this.f89862d = str3;
        MindPackageManagerService.get().addPackageMonitor(aVar);
        com.xinzhu.overmind.server.user.c.get().registerListener(bVar);
    }

    private boolean i(ArrayList<c<V>> arrayList, V v10) {
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (arrayList.get(i10).f89873a.equals(v10)) {
                return true;
            }
        }
        return false;
    }

    private boolean j(ArrayList<c<V>> arrayList, V v10, int i10) {
        int size = arrayList.size();
        for (int i11 = 0; i11 < size; i11++) {
            c<V> cVar = arrayList.get(i11);
            if (cVar.f89873a.equals(v10) && cVar.f89876d == i10) {
                return true;
            }
        }
        return false;
    }

    private boolean k(Integer[] numArr, Integer num) {
        return numArr == null || com.xinzhu.overmind.utils.d.f(numArr, num);
    }

    private d<V> l(int i10) {
        d<V> dVar = this.f89864f.get(i10);
        if (dVar != null) {
            return dVar;
        }
        d<V> dVar2 = new d<>(null);
        this.f89864f.put(i10, dVar2);
        return dVar2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void m(Integer[] numArr, int i10) {
        ArrayList<c<V>> arrayList = new ArrayList();
        for (ResolveInfo resolveInfo : x(i10)) {
            try {
                c cVarW = w(resolveInfo);
                if (cVarW == null) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Unable to load service info ");
                    sb2.append(resolveInfo.serviceInfo);
                } else {
                    arrayList.add(cVarW);
                }
            } catch (IOException | XmlPullParserException unused) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("Unable to load service info ");
                sb3.append(resolveInfo.toString());
            }
        }
        synchronized (this.f89863e) {
            d dVarL = l(i10);
            boolean z10 = dVarL.f89878b == null;
            if (z10) {
                dVarL.f89878b = new HashMap();
            }
            boolean z11 = false;
            for (c<V> cVar : arrayList) {
                Integer num = dVarL.f89877a.get(cVar.f89873a);
                if (num == null) {
                    dVarL.f89878b.put(cVar.f89873a, cVar);
                    dVarL.f89877a.put(cVar.f89873a, Integer.valueOf(cVar.f89876d));
                    if (!dVarL.f89879c || !z10) {
                        s(cVar.f89873a, i10, false);
                    }
                    z11 = true;
                } else if (num.intValue() == cVar.f89876d) {
                    dVarL.f89878b.put(cVar.f89873a, cVar);
                }
            }
            ArrayList arrayList2 = new ArrayList();
            for (V v10 : dVarL.f89877a.keySet()) {
                if (!i(arrayList, v10) && k(numArr, dVarL.f89877a.get(v10))) {
                    arrayList2.add(v10);
                }
            }
            for (Object obj : arrayList2) {
                dVarL.f89877a.remove(obj);
                dVarL.f89878b.remove(obj);
                s(obj, i10, true);
                z11 = true;
            }
            if (z11) {
                t(i10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q(Intent intent, int i10) {
        String action = intent.getAction();
        boolean z10 = BootReceiver_.f72255b.equals(action) || "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE".equals(action);
        boolean booleanExtra = intent.getBooleanExtra("android.intent.extra.REPLACING", false);
        if (z10 && booleanExtra) {
            return;
        }
        int intExtra = intent.getIntExtra("android.intent.extra.UID", -1);
        m(intExtra > 0 ? new Integer[]{Integer.valueOf(intExtra)} : null, i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void r(t tVar, Object obj, int i10, boolean z10) {
        try {
            tVar.a(obj, i10, z10);
        } catch (Throwable th) {
            y.n(f89856l, "Exception from onServiceChanged", th);
        }
    }

    private void s(final V v10, final int i10, final boolean z10) {
        final t<V> tVar;
        Handler handler;
        synchronized (this) {
            tVar = this.f89865g;
            handler = this.f89866h;
        }
        if (tVar == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.xinzhu.overmind.server.pm.s
            @Override // java.lang.Runnable
            public final void run() {
                RegisteredServicesCache.r(tVar, v10, i10, z10);
            }
        });
    }

    public void a(int i10) {
        synchronized (this.f89863e) {
            l(i10).f89878b = null;
            t(i10);
        }
    }

    public Collection<c<V>> c(int i10) {
        Collection<c<V>> collectionUnmodifiableCollection;
        synchronized (this.f89863e) {
            d<V> dVarL = l(i10);
            if (dVarL.f89878b == null) {
                m(null, i10);
            }
            collectionUnmodifiableCollection = Collections.unmodifiableCollection(new ArrayList(dVarL.f89878b.values()));
        }
        return collectionUnmodifiableCollection;
    }

    public void d(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr, int i10) {
        synchronized (this.f89863e) {
            d<V> dVarL = l(i10);
            if (dVarL.f89878b != null) {
                printWriter.println("RegisteredServicesCache: " + dVarL.f89878b.size() + " services");
                Iterator<c<V>> it2 = dVarL.f89878b.values().iterator();
                while (it2.hasNext()) {
                    printWriter.println("  " + it2.next());
                }
            } else {
                printWriter.println("RegisteredServicesCache: services not loaded");
            }
        }
    }

    public void e(int i10) {
        synchronized (this.f89863e) {
            d<V> dVarL = l(i10);
            if (dVarL.f89878b == null) {
                return;
            }
            ArrayList arrayList = null;
            for (c cVar : new ArrayList(dVarL.f89878b.values())) {
                long jC0 = new com.xinzhu.haunted.android.content.pm.b(cVar.f89874b.applicationInfo).C0();
                ApplicationInfo applicationInfo = MindPackageManagerService.get().getApplicationInfo(cVar.f89874b.packageName, 0, i10);
                if (applicationInfo == null || new com.xinzhu.haunted.android.content.pm.b(applicationInfo).C0() != jC0) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(Integer.valueOf(cVar.f89876d));
                }
            }
            if (arrayList == null || arrayList.size() <= 0) {
                return;
            }
            m((Integer[]) arrayList.toArray(), i10);
        }
    }

    public void f(t<V> tVar, Handler handler) {
        if (handler == null) {
            handler = new Handler(this.f89859a.getMainLooper());
        }
        synchronized (this) {
            this.f89866h = handler;
            this.f89865g = tVar;
        }
    }

    public t<V> n() {
        t<V> tVar;
        synchronized (this) {
            tVar = this.f89865g;
        }
        return tVar;
    }

    protected Map<V, Integer> o(int i10) {
        return l(i10).f89877a;
    }

    public c<V> p(V v10, int i10) {
        c<V> cVar;
        synchronized (this.f89863e) {
            d<V> dVarL = l(i10);
            if (dVarL.f89878b == null) {
                m(null, i10);
            }
            cVar = dVarL.f89878b.get(v10);
        }
        return cVar;
    }

    protected void t(int i10) {
    }

    protected void u(int i10) {
        synchronized (this.f89863e) {
            this.f89864f.remove(i10);
        }
    }

    public abstract V v(Resources resources, String str, AttributeSet attributeSet);

    protected c<V> w(ResolveInfo resolveInfo) throws Throwable {
        int next;
        XmlResourceParser xmlResourceParser = null;
        if (resolveInfo.serviceInfo == null) {
            return null;
        }
        ServiceInfo serviceInfo = new ServiceInfo(resolveInfo.serviceInfo);
        serviceInfo.applicationInfo = q.b(serviceInfo.applicationInfo);
        ComponentName componentName = new ComponentName(serviceInfo.packageName, serviceInfo.name);
        PackageManager packageManager = this.f89859a.getPackageManager();
        try {
            try {
                XmlResourceParser xmlResourceParserLoadXmlMetaData = serviceInfo.loadXmlMetaData(packageManager, this.f89861c);
                try {
                    if (xmlResourceParserLoadXmlMetaData == null) {
                        throw new XmlPullParserException("No " + this.f89861c + " meta-data");
                    }
                    AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xmlResourceParserLoadXmlMetaData);
                    do {
                        next = xmlResourceParserLoadXmlMetaData.next();
                        if (next == 1) {
                            break;
                        }
                    } while (next != 2);
                    String name = xmlResourceParserLoadXmlMetaData.getName();
                    if (!this.f89862d.equals(name)) {
                        throw new XmlPullParserException("Meta-data does not start with " + this.f89862d + " tag " + name);
                    }
                    V v10 = v(packageManager.getResourcesForApplication(serviceInfo.applicationInfo), serviceInfo.packageName, attributeSetAsAttributeSet);
                    if (v10 == null) {
                        xmlResourceParserLoadXmlMetaData.close();
                        return null;
                    }
                    c<V> cVar = new c<>(v10, resolveInfo.serviceInfo, componentName);
                    xmlResourceParserLoadXmlMetaData.close();
                    return cVar;
                } catch (PackageManager.NameNotFoundException unused) {
                    xmlResourceParser = xmlResourceParserLoadXmlMetaData;
                    throw new XmlPullParserException("Unable to load resources for pacakge " + serviceInfo.packageName);
                } catch (Throwable th) {
                    th = th;
                    xmlResourceParser = xmlResourceParserLoadXmlMetaData;
                    if (xmlResourceParser != null) {
                        xmlResourceParser.close();
                    }
                    throw th;
                }
            } catch (PackageManager.NameNotFoundException unused2) {
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    protected List<ResolveInfo> x(int i10) {
        Intent intent = new Intent(this.f89860b);
        return MindPackageManagerService.get().queryIntentServices(intent, 786560, intent.resolveTypeIfNeeded(this.f89859a.getContentResolver()), i10);
    }

    private static class d<V> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Map<V, Integer> f89877a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Map<V, c<V>> f89878b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f89879c;

        private d() {
            this.f89877a = new HashMap();
            this.f89878b = null;
            this.f89879c = true;
        }

        /* synthetic */ d(a aVar) {
            this();
        }
    }
}
