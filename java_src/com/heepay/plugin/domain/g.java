package com.heepay.plugin.domain;

import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.util.zip.GZIPInputStream;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Exception f34345a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f34346b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f34347c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f34348d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f34349e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f34350f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public String f34351g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f34352h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f34353i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f34354j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public String f34355k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public String f34356l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public String f34357m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f34358n;

    public g() {
        this.f34346b = false;
    }

    public String a() {
        return a(this.f34349e);
    }

    public String b() {
        String str = this.f34347c;
        return (str == null || str.length() == 0) ? this.f34348d : str;
    }

    public JSONObject c() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("hasError", this.f34346b);
            jSONObject.put("message", this.f34347c);
            jSONObject.put("errorCode", this.f34348d);
            jSONObject.put("returnValue", this.f34349e);
            jSONObject.put("returnStatus", this.f34358n);
            jSONObject.put("extValue1", this.f34350f);
            jSONObject.put("extValue2", this.f34351g);
            jSONObject.put("extValue3", this.f34352h);
            jSONObject.put("extValue4", this.f34353i);
            jSONObject.put("extValue5", this.f34354j);
            jSONObject.put("extValue6", this.f34355k);
            jSONObject.put("extValue7", this.f34356l);
            jSONObject.put("extValue8", this.f34357m);
            return jSONObject;
        } catch (Exception unused) {
            return null;
        }
    }

    public String toString() {
        return c().toString();
    }

    public g(boolean z10, String str, String str2) {
        this.f34346b = z10;
        this.f34347c = str2;
        this.f34348d = str;
    }

    private String a(String str) {
        int i10;
        String str2 = this.f34350f;
        if (str2 != null && str2.length() > 0) {
            try {
                i10 = Integer.parseInt(this.f34350f);
            } catch (Exception unused) {
                i10 = 0;
            }
            if (i10 == 1) {
                try {
                    GZIPInputStream gZIPInputStream = new GZIPInputStream(new ByteArrayInputStream(com.heepay.plugin.a.c.a(str)));
                    try {
                        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(gZIPInputStream, Charset.forName("UTF-8")));
                        StringBuffer stringBuffer = new StringBuffer();
                        while (true) {
                            String line = bufferedReader.readLine();
                            if (line == null) {
                                String string = stringBuffer.toString();
                                com.heepay.plugin.c.c.b("GetUnzipValue", "unzipped data is: " + string);
                                return string;
                            }
                            stringBuffer.append(line);
                        }
                    } finally {
                        gZIPInputStream.close();
                    }
                } catch (Exception e10) {
                    com.heepay.plugin.c.c.e("ServiceReturn", com.heepay.plugin.c.b.a(e10));
                }
            }
        }
        return str;
    }
}
