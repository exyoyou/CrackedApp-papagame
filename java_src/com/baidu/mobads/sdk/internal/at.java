package com.baidu.mobads.sdk.internal;

import android.content.Context;
import android.text.TextUtils;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public class at {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f7471a = z.f8074p;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f7472b = "pauseDlByPk";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f7473c = "cancelDlByPk";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f7474d = "resumeDownload";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f7475e = "getDownloadStatus";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static at f7476g;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private au f7477f;

    private at(Context context) {
        this.f7477f = au.a(context, f7471a);
    }

    public static at a(Context context) {
        if (f7476g == null) {
            synchronized (at.class) {
                if (f7476g == null) {
                    f7476g = new at(context);
                }
            }
        }
        return f7476g;
    }

    public void b(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f7477f.a(null, f7473c, str);
    }

    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f7477f.a(null, f7472b, str, 1);
    }

    public boolean a(Context context, JSONObject jSONObject, String str, String str2) {
        if (context != null && jSONObject != null) {
            Object objB = this.f7477f.b(null, f7474d, context, jSONObject, str, str2);
            if (objB instanceof Boolean) {
                return ((Boolean) objB).booleanValue();
            }
        }
        return false;
    }

    public int a(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        if (bw.a(context, str)) {
            return 103;
        }
        Object objB = this.f7477f.b(null, f7475e, str);
        if (objB instanceof Integer) {
            return ((Integer) objB).intValue();
        }
        return -1;
    }
}
