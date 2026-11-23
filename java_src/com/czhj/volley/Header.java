package com.czhj.volley;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes9.dex */
public final class Header {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f25737a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f25738b;

    public Header(String str, String str2) {
        this.f25737a = str;
        this.f25738b = str2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Header.class != obj.getClass()) {
            return false;
        }
        Header header = (Header) obj;
        return TextUtils.equals(this.f25737a, header.f25737a) && TextUtils.equals(this.f25738b, header.f25738b);
    }

    public final String getName() {
        return this.f25737a;
    }

    public final String getValue() {
        return this.f25738b;
    }

    public int hashCode() {
        return (this.f25737a.hashCode() * 31) + this.f25738b.hashCode();
    }

    public String toString() {
        return "Header[name=" + this.f25737a + ",value=" + this.f25738b + "]";
    }
}
