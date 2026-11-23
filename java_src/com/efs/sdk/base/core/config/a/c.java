package com.efs.sdk.base.core.config.a;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Pair;
import android.webkit.ValueCallback;
import androidx.annotation.NonNull;
import com.efs.sdk.base.IConfigRefreshAction;
import com.efs.sdk.base.core.c.f;
import com.efs.sdk.base.core.controller.ControllerCenter;
import com.efs.sdk.base.core.util.Log;
import com.efs.sdk.base.observer.IConfigCallback;
import com.efs.sdk.base.observer.IEfsReporterObserver;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import com.join.mgps.dto.Constant;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public final class c implements Handler.Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Random f26311a = new Random();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public IConfigRefreshAction f26312b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f26313c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public b f26314d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Map<IConfigCallback, String[]> f26315e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Handler f26316f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private e f26317g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f26318h;

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final c f26320a = new c(0);
    }

    /* synthetic */ c(byte b10) {
        this();
    }

    private void e() {
        if (!f.a.f26281a.a()) {
            Log.i("efs.config", "has no permission to refresh config from remote");
            return;
        }
        if (!this.f26313c) {
            Log.i("efs.config", "disable refresh config from remote");
            return;
        }
        String strRefresh = g().refresh();
        Log.i("efs.config", "from server. efs config is ".concat(String.valueOf(strRefresh)));
        if (TextUtils.isEmpty(strRefresh)) {
            return;
        }
        a(strRefresh);
    }

    private void f() {
        boolean zA;
        try {
            zA = this.f26317g.a(this.f26314d);
        } catch (Throwable unused) {
            zA = false;
        }
        if (zA) {
            return;
        }
        this.f26316f.sendEmptyMessageDelayed(3, BaseCloudFileManager.ACK_TIMEOUT);
    }

    @NonNull
    private IConfigRefreshAction g() {
        IConfigRefreshAction iConfigRefreshAction = this.f26312b;
        return iConfigRefreshAction == null ? com.efs.sdk.base.core.config.a.a.a() : iConfigRefreshAction;
    }

    private boolean h() {
        e.b();
        long j10 = 0;
        try {
            e eVar = this.f26317g;
            eVar.c();
            if (eVar.f26322a != null) {
                j10 = eVar.f26322a.getLong("last_refresh_time", 0L);
            }
        } catch (Throwable unused) {
        }
        return System.currentTimeMillis() - j10 >= (this.f26314d.f26306e * 60) * 1000;
    }

    private void i() {
        try {
            for (ValueCallback<Pair<Message, Message>> valueCallback : ControllerCenter.getGlobalEnvStruct().getCallback(1)) {
                Message messageObtain = Message.obtain(null, 1, new JSONObject(this.f26314d.f26308g).toString());
                Message messageObtain2 = Message.obtain();
                valueCallback.onReceiveValue(new Pair<>(messageObtain, messageObtain2));
                messageObtain.recycle();
                messageObtain2.recycle();
            }
            Iterator<IEfsReporterObserver> it2 = ControllerCenter.getGlobalEnvStruct().getEfsReporterObservers().iterator();
            while (it2.hasNext()) {
                it2.next().onConfigChange();
            }
        } catch (Throwable th) {
            Log.e("efs.config", th);
        }
    }

    public final Map<String, String> c() {
        return new HashMap(this.f26314d.f26308g);
    }

    public final void d() {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.efs.sdk.base.core.config.a.c.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    for (IConfigCallback iConfigCallback : c.this.f26315e.keySet()) {
                        String[] strArr = (String[]) c.this.f26315e.get(iConfigCallback);
                        HashMap map = new HashMap();
                        if (strArr != null && strArr.length != 0) {
                            for (String str : strArr) {
                                if (c.this.f26314d.f26308g.containsKey(str)) {
                                    map.put(str, c.this.c().get(str));
                                    Log.i("efs.config", "--->>> configCallback key is " + str + " ## value is " + c.this.c().get(str));
                                }
                            }
                        }
                        iConfigCallback.onChange(map);
                    }
                    c.this.f26315e.clear();
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(@NonNull Message message) {
        b bVar;
        int i10 = message.what;
        if (i10 == 0) {
            boolean zA = e.a();
            Log.i("efs.config", "delete old config is ".concat(String.valueOf(zA)));
            if (zA) {
                this.f26316f.sendEmptyMessage(1);
            } else {
                e eVar = this.f26317g;
                eVar.c();
                if (eVar.f26322a == null) {
                    bVar = null;
                } else {
                    b bVarA = b.a();
                    bVarA.f26302a = eVar.f26322a.getInt("cver", -1);
                    Set<String> setKeySet = eVar.f26322a.getAll().keySet();
                    HashMap map = new HashMap();
                    for (String str : setKeySet) {
                        String string = eVar.f26322a.getString(str, "");
                        if (!TextUtils.isEmpty(string)) {
                            map.put(str, string);
                        }
                    }
                    bVarA.a(map);
                    bVarA.a(eVar.f26322a.getString(Constant.MD5, ""));
                    bVar = bVarA;
                }
                if (bVar == null) {
                    Log.i("efs.config", "first load local config false.");
                } else if (a(bVar)) {
                    Log.i("efs.config", "current config to same.");
                } else {
                    this.f26314d = bVar;
                    String str2 = "load config from storage";
                    if (-1 != bVar.f26302a) {
                        i();
                        d();
                        str2 = "load config from storage and notify observer";
                    }
                    Log.i("efs.config", str2);
                }
            }
        } else if (i10 == 1) {
            int i11 = message.arg1;
            if (i11 <= this.f26314d.f26302a) {
                Log.i("efs.config", "current config version is " + i11 + ", no need to refresh");
                Log.i("efs.config", "current config version(" + this.f26314d.f26302a + ") is " + i11 + ", no need to refresh");
            } else {
                e();
            }
        } else if (i10 == 2) {
            try {
                if (f.a.f26281a.a()) {
                    if (h()) {
                        e();
                    } else {
                        Log.i("efs.config", "No update is required, less than 8h since the last update");
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        } else if (i10 == 3) {
            f();
        }
        return true;
    }

    private c() {
        this.f26313c = true;
        this.f26315e = new HashMap();
        this.f26316f = new Handler(com.efs.sdk.base.core.util.concurrent.a.f26397a.getLooper(), this);
        this.f26317g = new e();
        this.f26314d = b.a();
        this.f26318h = ControllerCenter.getGlobalEnvStruct().configRefreshDelayMills;
    }

    public static c a() {
        return a.f26320a;
    }

    public final void b() {
        this.f26316f.sendEmptyMessage(0);
        this.f26316f.sendEmptyMessageDelayed(2, this.f26318h);
    }

    public final void a(int i10) {
        if (i10 <= this.f26314d.f26302a) {
            Log.i("efs.config", "current config version is " + i10 + ", no need to refresh");
            return;
        }
        Message messageObtain = Message.obtain();
        messageObtain.arg1 = i10;
        messageObtain.what = 1;
        this.f26316f.sendMessage(messageObtain);
    }

    public final String a(boolean z10) {
        if (z10) {
            return "https://" + this.f26314d.f26305d;
        }
        return this.f26314d.f26304c + this.f26314d.f26305d;
    }

    public final void a(String str) {
        b bVarA = b.a();
        if (d.a(str, bVarA)) {
            if (a(bVarA)) {
                return;
            }
            this.f26314d = bVarA;
            f();
            i();
            d();
            return;
        }
        this.f26316f.sendEmptyMessageDelayed(1, BaseCloudFileManager.ACK_TIMEOUT);
    }

    private boolean a(b bVar) {
        if (this.f26314d.f26302a >= bVar.f26302a) {
            return true;
        }
        Log.i("efs.config", "current config version (" + this.f26314d.f26302a + ") is older than another (" + bVar.f26302a + ")");
        return false;
    }
}
