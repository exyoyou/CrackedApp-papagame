package org.jboss.netty.util;

/* JADX INFO: loaded from: classes10.dex */
public interface d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d f95729a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final d f95730b = new b();

    static class a implements d {
        a() {
        }

        @Override // org.jboss.netty.util.d
        public String a(String str, String str2) throws Exception {
            return str2;
        }
    }

    static class b implements d {
        b() {
        }

        @Override // org.jboss.netty.util.d
        public String a(String str, String str2) throws Exception {
            return null;
        }
    }

    String a(String str, String str2) throws Exception;
}
