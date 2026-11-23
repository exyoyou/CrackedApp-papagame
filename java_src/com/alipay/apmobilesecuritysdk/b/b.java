package com.alipay.apmobilesecuritysdk.b;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.sdk.base.framework.utils.log.LogFile;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import org.json.JSONException;
import org.json.JSONObject;
import q.e;

/* JADX INFO: loaded from: classes7.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private File f6994a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private b0.a f6995b;

    public b(String str, b0.a aVar) {
        this.f6994a = null;
        this.f6995b = null;
        this.f6994a = new File(str);
        this.f6995b = aVar;
    }

    private static String a(String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("type", "id");
            jSONObject.put("error", str);
            return jSONObject.toString();
        } catch (JSONException unused) {
            return "";
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0020  */
    private void c(Context context) {
        boolean z10;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        NetworkInfo activeNetworkInfo = connectivityManager == null ? null : connectivityManager.getActiveNetworkInfo();
        if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
            z10 = activeNetworkInfo.getType() == 1;
        }
        boolean zB = e.b(context);
        if (z10 && zB) {
            new Thread(new c(this)).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized void b() {
        File file = this.f6994a;
        if (file == null) {
            return;
        }
        if (file.exists() && this.f6994a.isDirectory() && this.f6994a.list().length != 0) {
            ArrayList arrayList = new ArrayList();
            for (String str : this.f6994a.list()) {
                arrayList.add(str);
            }
            Collections.sort(arrayList);
            String str2 = (String) arrayList.get(arrayList.size() - 1);
            int size = arrayList.size();
            if (str2.equals(new SimpleDateFormat("yyyyMMdd").format(Calendar.getInstance().getTime()) + LogFile.LOG_SUFFIX)) {
                if (arrayList.size() < 2) {
                    return;
                }
                str2 = (String) arrayList.get(arrayList.size() - 2);
                size--;
            }
            if (!this.f6995b.a(a(c0.c.a(this.f6994a.getAbsolutePath(), str2)))) {
                size--;
            }
            for (int i10 = 0; i10 < size; i10++) {
                new File(this.f6994a, (String) arrayList.get(i10)).delete();
            }
        }
    }
}
