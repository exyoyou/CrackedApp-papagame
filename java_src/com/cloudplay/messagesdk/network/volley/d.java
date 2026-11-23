package com.cloudplay.messagesdk.network.volley;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes9.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f24039a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f24040b;

    public d(String str, String str2) {
        this.f24039a = str;
        this.f24040b = str2;
    }

    public final String a() {
        return this.f24039a;
    }

    public final String b() {
        return this.f24040b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || d.class != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        return TextUtils.equals(this.f24039a, dVar.f24039a) && TextUtils.equals(this.f24040b, dVar.f24040b);
    }

    public int hashCode() {
        return (this.f24039a.hashCode() * 31) + this.f24040b.hashCode();
    }

    public String toString() {
        return "Header[name=" + this.f24039a + ",value=" + this.f24040b + "]";
    }
}
