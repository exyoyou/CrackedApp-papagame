package com.aggmoread.sdk.z.c.a.a.e;

import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.CountDownLatch;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
public class o {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile o f5248c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile com.aggmoread.sdk.z.c.a.a.e.u.c f5249a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile com.aggmoread.sdk.z.c.a.a.e.u.b f5250b;

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ long f5251b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Handler.Callback f5252c;

        /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.e.o$a$a, reason: collision with other inner class name */
        class C0191a implements k.b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ CountDownLatch f5254a;

            C0191a(CountDownLatch countDownLatch) {
                this.f5254a = countDownLatch;
            }

            @Override // com.aggmoread.sdk.z.c.a.a.e.k.b
            public void a(String str) {
                o.this.a(str);
                e.b("ampp_tag", "sdk plg config: " + o.this.f5249a);
                e.b("ampp_tag", "pm delay " + (System.currentTimeMillis() - a.this.f5251b));
                this.f5254a.countDown();
            }
        }

        a(long j10, Handler.Callback callback) {
            this.f5251b = j10;
            this.f5252c = callback;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                CountDownLatch countDownLatch = new CountDownLatch(1);
                HashMap map = new HashMap();
                map.put("rek", "PLG_CONFIG");
                map.put("svs", "20102911");
                k.a().a(map, new C0191a(countDownLatch));
                countDownLatch.await();
                o.this.a(this.f5252c);
            } catch (Exception e10) {
                e.b("ampp_tag", "l err " + e10.getMessage());
                o.this.a(this.f5252c);
            }
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Handler.Callback f5256b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ long f5257c;

        class a implements k.b {
            a() {
            }

            @Override // com.aggmoread.sdk.z.c.a.a.e.k.b
            public void a(String str) {
                o.this.b(str);
                e.b("ampp_tag", "sdk g config: " + o.this.f5250b);
                b bVar = b.this;
                o.this.a(bVar.f5256b);
                e.b("ampp_tag", "ic delay " + (System.currentTimeMillis() - b.this.f5257c));
            }
        }

        b(Handler.Callback callback, long j10) {
            this.f5256b = callback;
            this.f5257c = j10;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                HashMap map = new HashMap();
                map.put("rek", "INIT_CONFIG");
                map.put("svs", "20102911");
                k.a().a(map, new a());
            } catch (Exception e10) {
                e.b("ampp_tag", "req err " + e10.getMessage());
                o.this.a(this.f5256b);
            }
        }
    }

    private o() {
    }

    public static o a() {
        if (f5248c == null) {
            synchronized (o.class) {
                if (f5248c == null) {
                    f5248c = new o();
                }
            }
        }
        return f5248c;
    }

    private void d(Handler.Callback callback) {
        if (callback != null) {
            callback.handleMessage(Message.obtain());
        }
    }

    public com.aggmoread.sdk.z.c.a.a.e.u.b b() {
        return this.f5250b;
    }

    public com.aggmoread.sdk.z.c.a.a.e.u.c c() {
        return this.f5249a;
    }

    public void c(Handler.Callback callback) {
        q.c(new b(callback, System.currentTimeMillis()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Handler.Callback callback) {
        d(callback);
    }

    public void b(Handler.Callback callback) {
        k.a().a(callback, new a(System.currentTimeMillis(), callback));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            com.aggmoread.sdk.z.c.a.a.e.u.b bVar = new com.aggmoread.sdk.z.c.a.a.e.u.b();
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("configs")) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("configs");
                if (jSONObject2.has("un_init")) {
                    JSONObject jSONObject3 = jSONObject2.getJSONObject("un_init");
                    Iterator<String> itKeys = jSONObject3.keys();
                    while (itKeys.hasNext()) {
                        String next = itKeys.next();
                        JSONArray jSONArray = jSONObject3.getJSONArray(next);
                        int i10 = Integer.parseInt(next);
                        ArrayList arrayList = new ArrayList();
                        for (int i11 = 0; i11 < jSONArray.length(); i11++) {
                            arrayList.add(jSONArray.getString(i11));
                        }
                        bVar.f5289a.put(Integer.valueOf(i10), arrayList);
                    }
                }
                if (jSONObject2.has("n_init")) {
                    JSONObject jSONObject4 = jSONObject2.getJSONObject("n_init");
                    Iterator<String> itKeys2 = jSONObject4.keys();
                    while (itKeys2.hasNext()) {
                        String next2 = itKeys2.next();
                        JSONArray jSONArray2 = jSONObject4.getJSONArray(next2);
                        int i12 = Integer.parseInt(next2);
                        ArrayList arrayList2 = new ArrayList();
                        for (int i13 = 0; i13 < jSONArray2.length(); i13++) {
                            arrayList2.add(jSONArray2.getString(i13));
                        }
                        bVar.f5290b.put(Integer.valueOf(i12), arrayList2);
                    }
                }
                this.f5250b = bVar;
            }
        } catch (Exception e10) {
            e.b("ampp_tag", "pr err " + e10.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            this.f5249a = new com.aggmoread.sdk.z.c.a.a.e.u.c();
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("configs")) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("configs");
                if (jSONObject2.has("gdt_hp")) {
                    JSONObject jSONObject3 = jSONObject2.getJSONObject("gdt_hp");
                    com.aggmoread.sdk.z.c.a.a.e.u.a aVar = new com.aggmoread.sdk.z.c.a.a.e.u.a();
                    if (jSONObject3.has("ver_bl") && !jSONObject3.isNull("ver_bl") && jSONObject3.getJSONArray("ver_bl").length() > 0) {
                        JSONArray jSONArray = jSONObject3.getJSONArray("ver_bl");
                        ArrayList arrayList = new ArrayList();
                        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                            arrayList.add(jSONArray.getString(i10));
                        }
                        aVar.a(arrayList);
                    }
                    if (jSONObject3.has("data") && !jSONObject3.isNull("data") && jSONObject3.getJSONArray("data").length() > 0) {
                        JSONArray jSONArray2 = jSONObject3.getJSONArray("data");
                        HashMap map = new HashMap();
                        for (int i11 = 0; i11 < jSONArray2.length(); i11++) {
                            JSONObject jSONObject4 = jSONArray2.getJSONObject(i11);
                            Iterator<String> itKeys = jSONObject4.keys();
                            while (itKeys.hasNext()) {
                                String next = itKeys.next();
                                String string = jSONObject4.getString(next);
                                if (!TextUtils.isEmpty(next) && !TextUtils.isEmpty(string)) {
                                    map.put(next, string);
                                }
                            }
                        }
                        aVar.a(map);
                    }
                    this.f5249a.f5291a = aVar;
                }
            }
        } catch (Exception e10) {
            e.b("ampp_tag", "pr err " + e10.getMessage());
        }
    }
}
