package com.aggmoread.sdk.z.c.a.a.e;

import android.os.Handler;
import android.os.HandlerThread;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
public class k {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile k f5240c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final HandlerThread f5241a = new HandlerThread("bg_task");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Handler f5242b;

    class a implements d.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ long f5243a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ b f5244b;

        a(long j10, b bVar) {
            this.f5243a = j10;
            this.f5244b = bVar;
        }

        @Override // com.aggmoread.sdk.z.c.a.a.e.d.e
        public void a(int i10, byte[] bArr, com.aggmoread.sdk.z.c.a.a.d.b.j jVar) {
            try {
                byte[] bArrE = com.aggmoread.sdk.z.c.a.a.b.e(bArr);
                if (bArrE == null) {
                    e.b("RCH_TAG", "r empty ");
                    k.this.a(this.f5244b, (String) null);
                    return;
                }
                String str = new String(bArrE, "utf-8");
                e.b("RCH_TAG", "r Str " + str);
                e.b("RCH_TAG", "delay time: " + (System.currentTimeMillis() - this.f5243a));
                k.this.a(this.f5244b, str);
            } catch (Exception e10) {
                e.b("RCH_TAG", "r err " + e10.getMessage());
            }
        }
    }

    interface b {
        void a(String str);
    }

    private k() {
    }

    public static k a() {
        if (f5240c == null) {
            synchronized (k.class) {
                if (f5240c == null) {
                    f5240c = new k();
                }
            }
        }
        return f5240c;
    }

    private void b() {
        try {
            if (this.f5242b == null) {
                this.f5241a.start();
                this.f5242b = new Handler(this.f5241a.getLooper());
            }
        } catch (Exception e10) {
            e.b("RCH_TAG", "init err " + e10.getMessage());
        }
    }

    public void a(Handler.Callback callback, Runnable runnable) {
        b();
        if (this.f5242b == null || runnable == null) {
            if (callback != null) {
                callback.handleMessage(null);
            }
        } else {
            e.b("RCH_TAG", "executeTask task " + runnable);
            this.f5242b.post(runnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(b bVar, String str) {
        if (bVar != null) {
            bVar.a(str);
        }
    }

    public void a(Map<String, String> map, b bVar) {
        try {
            String strA = com.aggmoread.sdk.z.c.a.a.d.b.k.a("rcv");
            HashMap map2 = new HashMap();
            map2.put("Content-type", "application/json");
            map2.put("Accept", "application/json");
            map2.put("tt", "1");
            d.a(strA, com.aggmoread.sdk.z.c.a.a.b.c(new JSONObject(map).toString().getBytes("UTF-8")).getBytes("UTF-8"), map2, new a(System.currentTimeMillis(), bVar));
        } catch (Exception e10) {
            e.b("RCH_TAG", "req err " + e10.getMessage());
            a(bVar, (String) null);
        }
    }
}
