package com.kwai.monitor.oaid;

import android.annotation.SuppressLint;
import android.text.TextUtils;
import com.bun.miitmdid.interfaces.IIdentifierListener;
import com.bun.miitmdid.interfaces.IdSupplier;
import ec.c;

/* JADX INFO: loaded from: classes2.dex */
public class OADIDSDKHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static boolean f75338a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static boolean f75339b;

    public static class IIdentifierListenerImpl implements IIdentifierListener {
        public final a mOaidListener;
        public final long mStartTime;

        public IIdentifierListenerImpl(long j10, a aVar) {
            this.mStartTime = j10;
            this.mOaidListener = aVar;
        }

        public void onSupport(IdSupplier idSupplier) {
            long jCurrentTimeMillis = System.currentTimeMillis() - this.mStartTime;
            if (idSupplier != null) {
                String oaid = idSupplier.getOAID();
                if (TextUtils.isEmpty(oaid)) {
                    boolean unused = OADIDSDKHelper.f75339b = true;
                } else {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("OADIDSDKHelper:oaid time=");
                    sb2.append(jCurrentTimeMillis);
                    sb2.append("--OAID:");
                    sb2.append(oaid);
                    hc.a.C1171a c1171a = (hc.a.C1171a) this.mOaidListener;
                    c1171a.getClass();
                    hc.a.f91458a = oaid;
                    c.d(c1171a.f91462a, "ks_oaid", oaid);
                    hc.a.c();
                }
            }
            boolean unused2 = OADIDSDKHelper.f75338a = false;
        }
    }

    public interface a {
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.kwai.monitor.oaid.OADIDSDKHelper$1] */
    @SuppressLint({"ObsoleteSdkInt"})
    public static boolean a() {
        try {
            IIdentifierListener.class.getMethod("onSupport", IdSupplier.class);
            new IIdentifierListener() { // from class: com.kwai.monitor.oaid.OADIDSDKHelper.1
                public void onSupport(IdSupplier idSupplier) {
                }
            }.onSupport(null);
            Class.forName("com.bun.miitmdid.core.MdidSdkHelper", false, OADIDSDKHelper.class.getClassLoader());
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }
}
