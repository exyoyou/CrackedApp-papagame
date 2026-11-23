package com.sdk.f;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f78514a = System.currentTimeMillis();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public a f78515b = new a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f78516c = "";

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public List<C1012a> f78517a = new ArrayList();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public List<String> f78518b = new ArrayList();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public List<String> f78519c = new ArrayList();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public String f78520d = "";

        /* JADX INFO: renamed from: com.sdk.f.b$a$a, reason: collision with other inner class name */
        public static class C1012a {
            public String toString() {
                return "_$101005Bean{url='', time=0}";
            }
        }

        public String toString() {
            return "StatusBean{_$101005=" + this.f78517a + ", _$302001=" + this.f78518b + ", _$302002=" + this.f78519c + ", _$302003='" + this.f78520d + "'}";
        }
    }

    public String toString() {
        return "MobileLog{time=" + this.f78514a + ", status=" + this.f78515b + '}';
    }
}
