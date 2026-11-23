package com.kwai.monitor.oaid;

import android.text.TextUtils;
import com.bun.miitmdid.interfaces.IIdentifierListener;
import com.bun.miitmdid.interfaces.IdSupplier;
import ec.c;

/* JADX INFO: loaded from: classes2.dex */
public class OADIDSDKHelper25 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static boolean f75340a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static boolean f75341b;

    public static class IIdentifierListener25 implements IIdentifierListener {
        public final a mOaidListener;
        public final long mStartTime;

        public IIdentifierListener25(long j10, a aVar) {
            this.mStartTime = j10;
            this.mOaidListener = aVar;
        }

        @Override // com.bun.miitmdid.interfaces.IIdentifierListener
        public void OnSupport(boolean z10, IdSupplier idSupplier) {
            long jCurrentTimeMillis = System.currentTimeMillis() - this.mStartTime;
            if (idSupplier != null) {
                String oaid = idSupplier.getOAID();
                if (TextUtils.isEmpty(oaid)) {
                    boolean unused = OADIDSDKHelper25.f75341b = true;
                } else {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("OADIDSDKHelper25:oaid time=");
                    sb2.append(jCurrentTimeMillis);
                    sb2.append("--OAID:");
                    sb2.append(oaid);
                    hc.a.b bVar = (hc.a.b) this.mOaidListener;
                    bVar.getClass();
                    hc.a.f91458a = oaid;
                    c.d(bVar.f91463a, "ks_oaid", oaid);
                    hc.a.c();
                }
            }
            boolean unused2 = OADIDSDKHelper25.f75340a = false;
        }
    }

    public interface a {
    }

    public static boolean a() {
        try {
            new IIdentifierListener() { // from class: com.kwai.monitor.oaid.OADIDSDKHelper25.1
                @Override // com.bun.miitmdid.interfaces.IIdentifierListener
                public void OnSupport(boolean z10, IdSupplier idSupplier) {
                }
            }.OnSupport(true, null);
            Class.forName("com.bun.miitmdid.core.MdidSdkHelper", false, OADIDSDKHelper25.class.getClassLoader());
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }
}
