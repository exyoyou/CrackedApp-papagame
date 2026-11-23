package com.sdk.f;

import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static boolean f78521a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static boolean f78522b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static boolean f78523c;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static abstract class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final b f78524a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final b f78525b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final b f78526c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final /* synthetic */ b[] f78527d;

        public final enum a extends b {
            public a(String str, int i10) {
                super(str, i10);
            }

            @Override // com.sdk.f.d.b
            public String a() {
                return com.sdk.m.a.a("cucc/host_cucc.properties", "PRODUCE_STATISTICAL");
            }
        }

        /* JADX INFO: renamed from: com.sdk.f.d$b$b, reason: collision with other inner class name */
        public final enum C1013b extends b {
            public C1013b(String str, int i10) {
                super(str, i10);
            }

            @Override // com.sdk.f.d.b
            public String a() {
                return com.sdk.m.a.a("cucc/host_cucc.properties", "PRODUCE_DZH");
            }
        }

        public final enum c extends b {
            public c(String str, int i10) {
                super(str, i10);
            }

            @Override // com.sdk.f.d.b
            public String a() {
                return com.sdk.m.a.a("cucc/host_cucc.properties", "PRODUCE_TEST");
            }
        }

        static {
            a aVar = new a("PRODUCE_STATISTICAL", 0);
            f78524a = aVar;
            C1013b c1013b = new C1013b("PRODUCE_DZH", 1);
            f78525b = c1013b;
            c cVar = new c("PRODUCE_TEST", 2);
            f78526c = cVar;
            f78527d = new b[]{aVar, c1013b, cVar};
        }

        public b(String str, int i10) {
            super(str, i10);
        }

        public static b valueOf(String str) {
            return (b) Enum.valueOf(b.class, str);
        }

        public static b[] values() {
            return (b[]) f78527d.clone();
        }

        public abstract String a();
    }

    static {
        new HashMap();
        f78521a = false;
        f78522b = true;
        f78523c = false;
    }
}
