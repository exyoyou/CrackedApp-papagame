package com.kwad.sdk.core.network.idc;

import android.content.Context;
import android.net.Uri;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.kwad.sdk.core.d.c;
import com.kwad.sdk.core.network.d;
import com.kwad.sdk.export.proxy.AdHttpProxy;
import com.kwad.sdk.h;
import com.kwad.sdk.utils.aq;
import com.kwad.sdk.utils.bi;
import com.kwad.sdk.utils.i;
import java.net.URLDecoder;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public final class a {
    private static final int aUl;
    private final Map<String, String> aUg;
    private final com.kwad.sdk.core.network.idc.a.b aUh;
    private final Random aUi;
    private final Map<String, AtomicBoolean> aUj;
    private final Map<String, com.kwad.sdk.core.network.idc.a.a> aUk;
    private volatile int aUm;
    private volatile boolean aUn;
    private Context mContext;

    /* JADX INFO: renamed from: com.kwad.sdk.core.network.idc.a$a, reason: collision with other inner class name */
    static final class C0938a {
        private static final a aUq = new a(0);
    }

    static {
        aUl = com.kwad.framework.a.a.pe.booleanValue() ? 0 : 60000;
    }

    /* synthetic */ a(byte b10) {
        this();
    }

    public static a Mo() {
        return C0938a.aUq;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public void Mp() {
        com.kwad.sdk.core.network.idc.a.b bVarBV = b.bV(this.mContext);
        if (bVarBV.isEmpty()) {
            bVarBV = b.bU(this.mContext);
        }
        this.aUh.a(bVarBV);
    }

    @WorkerThread
    private void Y(@NonNull String str, String str2) {
        String host;
        StringBuilder sb2;
        List<String> listER = this.aUh.eR(str2);
        if (listER.isEmpty() || (host = Uri.parse(str).getHost()) == null || host.isEmpty()) {
            return;
        }
        c.d("IdcManager", ">>> switchHost start, try get lock, type = " + str2 + ", old host = " + host);
        AtomicBoolean atomicBoolean = this.aUj.get(str2);
        if (atomicBoolean.compareAndSet(false, true)) {
            try {
                String strEP = eP(str2);
                if ((TextUtils.isEmpty(strEP) || host.equals(strEP)) ? false : true) {
                    atomicBoolean.set(false);
                    sb2 = new StringBuilder("<<< switchHost end, type = ");
                } else {
                    int size = listER.size();
                    int iIndexOf = listER.indexOf(host);
                    boolean z10 = iIndexOf >= 0;
                    if (z10) {
                        size--;
                    }
                    if (size <= 0) {
                        atomicBoolean.set(false);
                        sb2 = new StringBuilder("<<< switchHost end, type = ");
                    } else {
                        int iNextInt = this.aUi.nextInt(size) + 1;
                        if (z10) {
                            iNextInt += iIndexOf;
                        }
                        int size2 = iNextInt % listER.size();
                        String str3 = listER.get(size2);
                        c.d("IdcManager", "switchHost success, type = " + str2 + ", old host = " + host + ",new host = " + str3 + ",hostList = " + listER + ", key = " + size2);
                        aa(str2, str3);
                        if (q(str2, size2)) {
                            eM(str2);
                        }
                        atomicBoolean.set(false);
                        sb2 = new StringBuilder("<<< switchHost end, type = ");
                    }
                }
                sb2.append(str2);
                sb2.append(", old host = ");
                sb2.append(host);
                String string = sb2.toString();
            } finally {
                atomicBoolean.set(false);
                c.d("IdcManager", "<<< switchHost end, type = " + str2 + ", old host = " + host);
            }
        }
    }

    private void aa(String str, String str2) {
        c.d("IdcManager", "updateCurrentIdc: hostType = " + str + ",new host = " + str2);
        this.aUg.put(str, str2);
        i.execute(new bi() { // from class: com.kwad.sdk.core.network.idc.a.3
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                b.a(a.this.mContext, (Map<String, String>) a.this.aUg);
            }
        });
    }

    private void eM(String str) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        c.d("IdcManager", "save switched host, type = " + str);
        this.aUk.put(str, new com.kwad.sdk.core.network.idc.a.a(jElapsedRealtime, false));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public boolean eO(String str) {
        boolean zHT;
        String strEP = eP(str);
        List<String> listER = this.aUh.eR(str);
        if (listER.isEmpty()) {
            return false;
        }
        String str2 = listER.get(0);
        if (TextUtils.equals(str2, strEP)) {
            return true;
        }
        if ("api".equals(str)) {
            zHT = c(com.kwad.framework.a.a.pe.booleanValue() ? "beta2-ad-open-api.test.gifshow.com" : str2, this.mContext);
        } else {
            zHT = aq.hT(str2);
        }
        c.d("IdcManager", "perform ping action for " + str + ",mainHost = " + str2 + ",isSuccess = " + zHT);
        if (zHT) {
            aa(str, str2);
        }
        return zHT;
    }

    private String eP(String str) {
        return this.aUg.get(str);
    }

    private boolean q(String str, int i10) {
        return "api".equals(str) && i10 > 0 && !this.aUk.containsKey(str) && this.aUm > 0;
    }

    public final boolean Mq() {
        return !this.aUk.isEmpty();
    }

    @Nullable
    public final String Z(String str, String str2) {
        String str3 = this.aUg.get(str);
        return TextUtils.isEmpty(str3) ? str2 : str3;
    }

    public final String ab(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        String strEP = eP(str2);
        if (strEP == null || strEP.isEmpty()) {
            return str;
        }
        Uri uri = Uri.parse(str);
        if (TextUtils.isEmpty(uri.getPath()) || strEP.equals(uri.getHost())) {
            return str;
        }
        Uri.Builder builder = new Uri.Builder();
        builder.authority(strEP);
        if (TextUtils.isEmpty(uri.getScheme())) {
            builder.scheme("https");
        } else {
            builder.scheme(uri.getScheme());
        }
        builder.path(uri.getPath());
        if (!TextUtils.isEmpty(uri.getQuery())) {
            builder.query(uri.getQuery());
        }
        return URLDecoder.decode(builder.build().toString());
    }

    public final void eN(String str) {
        int i10 = this.aUm;
        if (this.aUn || i10 <= 0) {
            c.d("IdcManager", "performHostRollback is invalid, by in prepare = " + this.aUn + ",rollbackInterval = " + i10);
            return;
        }
        com.kwad.sdk.core.network.idc.a.a aVar = this.aUk.get(str);
        if (aVar != null) {
            long jElapsedRealtime = SystemClock.elapsedRealtime() - aVar.Mt();
            boolean z10 = jElapsedRealtime > ((long) Math.max(i10, aUl));
            c.d("IdcManager", "handleHostRollback: isAvailable = " + z10 + ",interval = " + jElapsedRealtime + ",rollbackInterval = " + i10 + ",hostType = hostType");
            if (z10) {
                AtomicBoolean atomicBoolean = this.aUj.get(str);
                try {
                    if (atomicBoolean.compareAndSet(false, true)) {
                        boolean zMs = aVar.Ms();
                        c.d("IdcManager", "handleHostRollback: isInRollback = " + zMs);
                        if (!zMs) {
                            aVar.bF(true);
                            if (eO(str)) {
                                this.aUk.remove(str);
                                c.d("IdcManager", "handleHostRollback success,remove switched host, type = " + str);
                            } else {
                                c.d("IdcManager", "rollbackToMainHost failed, reset attempt time.");
                                eM(str);
                            }
                        }
                    }
                } catch (Exception e10) {
                    c.e("IdcManager", "handleHostRollback failed by " + e10.getMessage());
                } finally {
                    atomicBoolean.set(false);
                    c.d("IdcManager", "handleHostRollback end, release lock.host = " + str);
                }
            }
        }
    }

    public final String eQ(String str) {
        return ab(str, "cdn");
    }

    public final void h(String str, Throwable th) {
        a(str, "cdn", new DomainException(th));
    }

    public final void init(final Context context) {
        this.mContext = context.getApplicationContext();
        this.aUn = true;
        i.execute(new bi() { // from class: com.kwad.sdk.core.network.idc.a.1
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                a.this.aUg.putAll(b.bW(context));
                a.this.Mp();
                if (!a.this.aUh.isEmpty()) {
                    Iterator<String> it2 = a.this.aUh.Mv().iterator();
                    while (it2.hasNext()) {
                        a.this.eO(it2.next());
                    }
                }
                c.d("IdcManager", "idc prepare done.");
                a.a(a.this, false);
            }
        });
    }

    private a() {
        this.aUg = new ConcurrentHashMap(8);
        this.aUh = new com.kwad.sdk.core.network.idc.a.b();
        this.aUi = new Random(System.currentTimeMillis());
        HashMap map = new HashMap();
        this.aUj = map;
        this.aUk = new ConcurrentHashMap(4);
        this.aUm = 0;
        this.aUn = false;
        map.put("api", new AtomicBoolean(false));
        map.put("ulog", new AtomicBoolean(false));
        map.put("zt", new AtomicBoolean(false));
        map.put("cdn", new AtomicBoolean(false));
    }

    @WorkerThread
    private static boolean c(final String str, Context context) {
        boolean zIsNetworkConnected = aq.isNetworkConnected(context);
        c.d("IdcManager", "connect host = " + str + ",isNetworkConnected = " + zIsNetworkConnected);
        if (zIsNetworkConnected && str != null) {
            AdHttpProxy adHttpProxyEG = h.EG();
            d dVar = new d() { // from class: com.kwad.sdk.core.network.idc.a.4
                @Override // com.kwad.sdk.core.network.d, com.kwad.sdk.core.network.b
                public final void buildBaseBody() {
                }

                @Override // com.kwad.sdk.core.network.d, com.kwad.sdk.core.network.b
                public final void buildBaseHeader() {
                }

                @Override // com.kwad.sdk.core.network.b, com.kwad.sdk.core.network.f
                public final String getUrl() {
                    return com.kwad.sdk.i.cN("https://" + str);
                }
            };
            com.kwad.sdk.core.network.c cVarDoGet = adHttpProxyEG.doGet(dVar.getUrl(), Collections.emptyMap());
            c.d("IdcManager", "perform connect host:" + dVar.getUrl());
            if (cVarDoGet != null) {
                c.d("IdcManager", "connect host response, rawCode = " + cVarDoGet.aSW + ",body = " + cVarDoGet.aSY);
                if (cVarDoGet.aSW == 200) {
                    return true;
                }
            }
        }
        return false;
    }

    static /* synthetic */ boolean a(a aVar, boolean z10) {
        aVar.aUn = false;
        return false;
    }

    public final void a(com.kwad.sdk.core.network.idc.a.b bVar, int i10) {
        this.aUm = i10 * 1000;
        c.d("IdcManager", "updateIdcData,rollback interval = " + i10);
        if (i10 == 0) {
            this.aUk.clear();
        }
        this.aUh.a(bVar);
        i.execute(new bi() { // from class: com.kwad.sdk.core.network.idc.a.2
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                b.a(a.this.mContext, a.this.aUh);
            }
        });
    }

    public final void a(String str, int i10, Throwable th) {
        a(str, "ulog", new DomainException(i10, th));
    }

    public final void a(String str, String str2, DomainException domainException) {
        if (str != null && a(domainException)) {
            Y(str, str2);
        }
    }

    private static boolean a(DomainException domainException) {
        if (domainException.getHttpCode() >= 500) {
            return true;
        }
        return domainException.isConnectException();
    }
}
