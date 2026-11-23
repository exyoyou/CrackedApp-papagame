package com.bykv.vk.component.ttvideo.log;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.byazt.nys.tt;
import com.bykv.vk.component.ttvideo.utils.EngineThreadPool;
import com.bykv.vk.component.ttvideo.utils.Error;
import com.bykv.vk.component.ttvideo.utils.TTVideoEngineLog;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public class d implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.bykv.vk.component.ttvideo.log.a f23245a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private c f23247c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f23249e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f23250f;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Context f23254j;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f23251g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f23252h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f23253i = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f23255k = -2147483648L;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private f f23246b = new f();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f23248d = true;

    private static class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private f f23256a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Handler f23257b = new Handler(Looper.getMainLooper());

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        c f23258c;

        /* JADX INFO: renamed from: com.bykv.vk.component.ttvideo.log.d$a$a, reason: collision with other inner class name */
        class RunnableC0512a implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ JSONObject f23259a;

            RunnableC0512a(a aVar, JSONObject jSONObject) {
                this.f23259a = jSONObject;
            }

            @Override // java.lang.Runnable
            public void run() {
                e.instance.a(false, this.f23259a);
            }
        }

        public a(f fVar, d dVar, c cVar) {
            this.f23256a = fVar;
            this.f23258c = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            TTVideoEngineLog.i("VideoEventLoggerV2", "AyncGetLogDataRunnable enter");
            f fVar = this.f23256a;
            if (fVar == null) {
                TTVideoEngineLog.e("VideoEventLoggerV2", "rEvent is null, return.");
                return;
            }
            JSONObject jSONObjectA = fVar.a(this.f23258c);
            Handler handler = this.f23257b;
            if (handler == null || handler.getLooper() == null) {
                TTVideoEngineLog.i("VideoEventLoggerV2", "report in child thread");
                e.instance.a(false, jSONObjectA);
            } else {
                TTVideoEngineLog.i("VideoEventLoggerV2", "report in main looper");
                this.f23257b.post(new RunnableC0512a(this, jSONObjectA));
            }
        }
    }

    public d(Context context, com.bykv.vk.component.ttvideo.log.a aVar) {
        this.f23245a = aVar;
        this.f23247c = new c(aVar, context);
        this.f23254j = context;
    }

    private void b() {
        this.f23253i = 0;
        this.f23248d = true;
        this.f23252h = 0;
        this.f23255k = -2147483648L;
    }

    private void c() {
        String strDecode;
        StringBuilder sb2;
        if (!TextUtils.isEmpty(this.f23249e)) {
            strDecode = this.f23249e;
        } else if (TextUtils.isEmpty(this.f23250f)) {
            return;
        } else {
            strDecode = this.f23250f;
        }
        try {
            strDecode = URLDecoder.decode(strDecode, "UTF-8");
        } catch (UnsupportedEncodingException e10) {
            e = e10;
            sb2 = new StringBuilder("exception:");
            sb2.append(e.toString());
            TTVideoEngineLog.e("VideoEventLoggerV2", sb2.toString());
        } catch (IllegalArgumentException e11) {
            e = e11;
            sb2 = new StringBuilder("exception:");
            sb2.append(e.toString());
            TTVideoEngineLog.e("VideoEventLoggerV2", sb2.toString());
        }
        int iIndexOf = strDecode.indexOf("&l=");
        if (iIndexOf > 0) {
            int iIndexOf2 = strDecode.indexOf(x.a.f97576d, iIndexOf + 1);
            int i10 = iIndexOf + 3;
            this.f23246b.f23278o = iIndexOf2 > 0 ? strDecode.substring(i10, iIndexOf2) : strDecode.substring(i10);
        }
    }

    private void d() {
        if (this.f23246b == null) {
            return;
        }
        TTVideoEngineLog.i("VideoEventLoggerV2", "sendEvent pt_new:" + this.f23246b.f23265b + ", mEvent:" + this.f23246b + ", eventBase:" + this.f23247c);
        if (this.f23246b.f23265b > 0 || this.f23255k > 0) {
            int i10 = this.f23251g;
            if (i10 > 0) {
                this.f23247c.f23244h = i10;
            }
            SharedPreferences sharedPreferencesTt = tt.tt(this.f23254j, "VideoEventLogger", 0);
            this.f23246b.f23279p = sharedPreferencesTt.getString("playersessionid", "");
            SharedPreferences.Editor editorEdit = sharedPreferencesTt.edit();
            editorEdit.putString("playersessionid", this.f23247c.f23242f);
            editorEdit.apply();
            f fVar = this.f23246b;
            fVar.f23277n = this.f23247c.f23242f;
            fVar.f23271h = this.f23252h;
            String str = this.f23249e;
            if (str != null) {
                fVar.f23274k = str;
            }
            String str2 = this.f23250f;
            if (str2 != null) {
                fVar.f23275l = str2;
            }
            fVar.f23266c = fVar.f23265b;
            fVar.f23264a = this.f23255k;
            if (fVar.f23268e <= 0 && fVar.f23267d > 0) {
                fVar.f23268e = System.currentTimeMillis();
            }
            if (TextUtils.isEmpty(this.f23246b.f23278o)) {
                c();
            }
            EngineThreadPool.a().execute(new a(this.f23246b, this, this.f23247c));
            b();
        }
    }

    private void f(int i10) {
        d();
        this.f23246b = new f();
    }

    @Override // com.bykv.vk.component.ttvideo.log.b
    public void a() {
        if (this.f23253i != 4) {
            this.f23253i = 2;
            this.f23248d = false;
            f fVar = this.f23246b;
            if (fVar.f23267d <= 0) {
                fVar.f23267d = System.currentTimeMillis();
            }
        }
    }

    @Override // com.bykv.vk.component.ttvideo.log.b
    public void e(int i10) {
        this.f23251g = i10;
        this.f23247c.f23244h = i10;
    }

    @Override // com.bykv.vk.component.ttvideo.log.b
    public void reset() {
        this.f23248d = true;
        this.f23249e = null;
        this.f23250f = null;
        this.f23251g = 0;
        this.f23252h = 0;
        this.f23247c = new c(this.f23245a, this.f23254j);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x002d  */
    @Override // com.bykv.vk.component.ttvideo.log.b
    public void a(int i10) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (i10 != 5) {
            int i11 = this.f23253i;
            if (i11 != 3 ? i11 != 4 : false) {
                this.f23247c.a();
            }
        }
        if (this.f23248d) {
            f fVar = this.f23246b;
            if (fVar.f23267d <= 0) {
                fVar.f23269f = jCurrentTimeMillis;
            } else {
                this.f23246b.f23268e = jCurrentTimeMillis;
            }
        } else {
            this.f23246b.f23268e = jCurrentTimeMillis;
        }
        f(i10);
    }

    @Override // com.bykv.vk.component.ttvideo.log.b
    public void b(int i10) {
        this.f23246b.f23276m = i10;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0035  */
    @Override // com.bykv.vk.component.ttvideo.log.b
    public void c(int i10) {
        if (this.f23253i == 0) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        int i11 = this.f23253i;
        boolean z10 = i11 != 4;
        if (i11 == 3) {
            z10 = false;
        }
        this.f23253i = 0;
        if (this.f23248d) {
            f fVar = this.f23246b;
            if (fVar.f23265b <= 0 || fVar.f23267d > 0) {
                this.f23246b.f23268e = jCurrentTimeMillis;
            } else if (fVar.f23269f <= 0) {
                fVar.f23269f = jCurrentTimeMillis;
            }
        } else {
            this.f23246b.f23268e = jCurrentTimeMillis;
        }
        if (z10) {
            this.f23247c.a();
        }
        f(i10);
    }

    @Override // com.bykv.vk.component.ttvideo.log.b
    public void d(int i10) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (i10 == 10) {
            f fVar = this.f23246b;
            if (fVar.f23265b <= 0) {
                fVar.f23265b = jCurrentTimeMillis;
            }
        }
    }

    @Override // com.bykv.vk.component.ttvideo.log.b
    public void a(long j10, String str) {
        this.f23253i = 1;
        this.f23247c.a(str);
        if (this.f23255k <= 0) {
            this.f23255k = j10;
        }
        this.f23248d = true;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0027  */
    /* JADX WARN: Code duplicated, block: B:19:0x003b  */
    @Override // com.bykv.vk.component.ttvideo.log.b
    public void a(Error error, int i10) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        int i11 = this.f23253i;
        boolean z10 = i11 != 3 ? i11 != 4 : false;
        this.f23253i = 5;
        if (this.f23248d) {
            f fVar = this.f23246b;
            if (fVar.f23267d <= 0) {
                fVar.f23269f = jCurrentTimeMillis;
            } else {
                if (error.f23288c.equals(Error.VideoOwnPlayer) || error.f23288c.equals(Error.VideoOSPlayer)) {
                    this.f23252h++;
                }
                this.f23246b.f23268e = jCurrentTimeMillis;
            }
        } else {
            if (error.f23288c.equals(Error.VideoOwnPlayer)) {
                this.f23252h++;
            } else {
                this.f23252h++;
            }
            this.f23246b.f23268e = jCurrentTimeMillis;
        }
        if (z10) {
            this.f23247c.a();
        }
        this.f23246b.f23272i = error.getType();
        this.f23246b.f23273j = error.f23286a;
        f(4);
    }

    @Override // com.bykv.vk.component.ttvideo.log.b
    public void a(Error error, int i10, int i11) {
        if (error.f23288c.equals(Error.VideoOwnPlayer) || error.f23288c.equals(Error.VideoOSPlayer)) {
            this.f23252h++;
        }
    }

    @Override // com.bykv.vk.component.ttvideo.log.b
    public void a(String str) {
        if (this.f23247c == null || str == null || str.isEmpty()) {
            return;
        }
        this.f23247c.b(str);
    }

    @Override // com.bykv.vk.component.ttvideo.log.b
    public void a(String str, String str2) {
        this.f23249e = str;
        c cVar = this.f23247c;
        if (cVar != null) {
            cVar.f23243g = str;
        }
        this.f23250f = str2;
    }
}
