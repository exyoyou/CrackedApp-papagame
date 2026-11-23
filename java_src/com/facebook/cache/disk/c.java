package com.facebook.cache.disk;

import com.facebook.cache.common.k;
import com.facebook.infer.annotation.Nullsafe;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public interface c {

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public List<b> f26779a = new ArrayList();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Map<String, Integer> f26780b = new HashMap();
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f26781a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f26782b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f26783c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final float f26784d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final String f26785e;

        protected b(String id2, String path, String type, float size, String firstBits) {
            this.f26781a = id2;
            this.f26782b = path;
            this.f26783c = type;
            this.f26784d = size;
            this.f26785e = firstBits;
        }
    }

    /* JADX INFO: renamed from: com.facebook.cache.disk.c$c, reason: collision with other inner class name */
    public interface InterfaceC0556c {
        d3.a a();

        String getId();

        long getSize();

        long getTimestamp();
    }

    public interface d {
        boolean a();

        d3.a b(Object debugInfo, long time) throws IOException;

        void c(k callback, Object debugInfo) throws IOException;

        d3.a d(Object debugInfo) throws IOException;
    }

    a a() throws IOException;

    long b(InterfaceC0556c entry) throws IOException;

    boolean c(String resourceId, Object debugInfo) throws IOException;

    void clearAll() throws IOException;

    String d();

    void e();

    boolean f(String resourceId, Object debugInfo) throws IOException;

    @Nullable
    d3.a g(String resourceId, Object debugInfo) throws IOException;

    Collection<InterfaceC0556c> getEntries() throws IOException;

    d insert(String resourceId, Object debugInfo) throws IOException;

    boolean isEnabled();

    boolean isExternal();

    long remove(String resourceId) throws IOException;
}
