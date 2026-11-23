package com.tencent.stat.a;

import java.util.Arrays;
import java.util.Properties;

/* JADX INFO: loaded from: classes2.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    String f83826a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    String[] f83827b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Properties f83828c;

    public c() {
        this.f83828c = null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        boolean z10 = this.f83826a.equals(cVar.f83826a) && Arrays.equals(this.f83827b, cVar.f83827b);
        Properties properties = this.f83828c;
        if (properties != null) {
            return z10 && properties.equals(cVar.f83828c);
        }
        return z10 && cVar.f83828c == null;
    }

    public int hashCode() {
        String str = this.f83826a;
        int iHashCode = str != null ? str.hashCode() : 0;
        String[] strArr = this.f83827b;
        if (strArr != null) {
            iHashCode ^= Arrays.hashCode(strArr);
        }
        Properties properties = this.f83828c;
        return properties != null ? iHashCode ^ properties.hashCode() : iHashCode;
    }

    public String toString() {
        String str;
        String str2 = this.f83826a;
        String[] strArr = this.f83827b;
        if (strArr != null) {
            String str3 = strArr[0];
            for (int i10 = 1; i10 < this.f83827b.length; i10++) {
                str3 = str3 + "," + this.f83827b[i10];
            }
            str = "[" + str3 + "]";
        } else {
            str = "";
        }
        if (this.f83828c != null) {
            str = str + this.f83828c.toString();
        }
        return str2 + str;
    }

    public c(String str, String[] strArr, Properties properties) {
        this.f83826a = str;
        this.f83827b = strArr;
        this.f83828c = properties;
    }
}
