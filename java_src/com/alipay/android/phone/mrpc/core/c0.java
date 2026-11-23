package com.alipay.android.phone.mrpc.core;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.apache.http.Header;

/* JADX INFO: loaded from: classes7.dex */
public final class c0 extends d {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    String f6896c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    byte[] f6897d;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    boolean f6901h;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    ArrayList<Header> f6899f = new ArrayList<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Map<String, String> f6900g = new HashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    String f6898e = "application/x-www-form-urlencoded";

    public c0(String str) {
        this.f6896c = str;
    }

    private void g(boolean z10) {
        this.f6901h = z10;
    }

    private void h(byte[] bArr) {
        this.f6897d = bArr;
    }

    private String i() {
        return this.f6896c;
    }

    private void j(String str) {
        this.f6898e = str;
    }

    private byte[] k() {
        return this.f6897d;
    }

    private String l() {
        return this.f6898e;
    }

    private ArrayList<Header> m() {
        return this.f6899f;
    }

    private boolean n() {
        return this.f6901h;
    }

    public final String d(String str) {
        Map<String, String> map = this.f6900g;
        if (map == null) {
            return null;
        }
        return map.get(str);
    }

    public final void e(String str, String str2) {
        if (this.f6900g == null) {
            this.f6900g = new HashMap();
        }
        this.f6900g.put(str, str2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c0.class != obj.getClass()) {
            return false;
        }
        c0 c0Var = (c0) obj;
        byte[] bArr = this.f6897d;
        if (bArr == null) {
            if (c0Var.f6897d != null) {
                return false;
            }
        } else if (!bArr.equals(c0Var.f6897d)) {
            return false;
        }
        String str = this.f6896c;
        String str2 = c0Var.f6896c;
        if (str == null) {
            if (str2 != null) {
                return false;
            }
        } else if (!str.equals(str2)) {
            return false;
        }
        return true;
    }

    public final void f(Header header) {
        this.f6899f.add(header);
    }

    public final int hashCode() {
        Map<String, String> map = this.f6900g;
        int iHashCode = ((map == null || !map.containsKey("id")) ? 1 : this.f6900g.get("id").hashCode() + 31) * 31;
        String str = this.f6896c;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return String.format("Url : %s,HttpHeader: %s", this.f6896c, this.f6899f);
    }
}
