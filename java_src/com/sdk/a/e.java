package com.sdk.a;

import com.j256.ormlite.stmt.query.SimpleComparison;
import com.sdk.base.framework.utils.log.LogUtils;
import java.io.File;
import java.io.Serializable;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes2.dex */
public class e<T> implements Serializable {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String f78433i = "com.sdk.a.e";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Boolean f78434j = Boolean.valueOf(com.sdk.f.d.f78521a);
    private static final long serialVersionUID = -8869881146515387822L;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f78436b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public TreeMap<String, Object> f78437c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public ArrayList<File> f78438d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public HashMap<String, Object> f78439e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public com.sdk.e.b<T> f78441g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public com.sdk.n.a.c f78442h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f78435a = d.a.GET.toString();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f78440f = 0;

    public com.sdk.e.b<T> a() {
        return this.f78441g;
    }

    public String b() {
        return this.f78435a;
    }

    public int c() {
        return this.f78440f;
    }

    public String d() {
        return this.f78436b;
    }

    public String a(TreeMap<String, Object> treeMap) {
        StringBuilder sb2;
        if (treeMap != null) {
            try {
                sb2 = new StringBuilder();
                for (Map.Entry<String, Object> entry : treeMap.entrySet()) {
                    String key = entry.getKey();
                    Object value = entry.getValue();
                    if (value != null && com.sdk.r.a.b(key).booleanValue()) {
                        String strEncode = URLEncoder.encode(value.toString(), "UTF-8");
                        boolean z10 = com.sdk.f.d.f78521a;
                        sb2.append(key);
                        sb2.append(SimpleComparison.EQUAL_TO_OPERATION);
                        sb2.append(strEncode);
                        sb2.append(x.a.f97576d);
                    }
                }
                sb2.deleteCharAt(sb2.length() - 1);
            } catch (Exception e10) {
                LogUtils.e(f78433i, e10.getMessage(), f78434j);
                throw new Exception("http请求参数出错");
            }
        } else {
            sb2 = null;
        }
        if (sb2 == null) {
            return null;
        }
        return sb2.toString();
    }
}
