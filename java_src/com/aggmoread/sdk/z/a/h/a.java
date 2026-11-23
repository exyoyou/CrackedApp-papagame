package com.aggmoread.sdk.z.a.h;

import android.content.Context;
import com.aggmoread.sdk.z.a.g.i;
import com.aggmoread.sdk.z.a.m.f;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class a {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static a f3472j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f3473a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.aggmoread.sdk.z.a.g.b f3474b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f3476d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private b f3477e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private i f3475c = i.f3468d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Map<EnumC0074a, com.aggmoread.sdk.z.a.g.b> f3478f = new HashMap();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Map<EnumC0074a, i> f3479g = new HashMap();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f3480h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f3481i = 0;

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX INFO: renamed from: com.aggmoread.sdk.z.a.h.a$a, reason: collision with other inner class name */
    public static final class EnumC0074a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final EnumC0074a f3482b = new EnumC0074a("API", 0);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final EnumC0074a f3483c = new EnumC0074a("DSP", 1);

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final EnumC0074a f3484d = new EnumC0074a("AG", 2);

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final EnumC0074a f3485e = new EnumC0074a("RS", 3);

        private EnumC0074a(String str, int i10) {
            super(str, i10);
        }
    }

    private a() {
    }

    public static synchronized a d() {
        if (f3472j == null) {
            synchronized (a.class) {
                if (f3472j == null) {
                    f3472j = new a();
                }
            }
        }
        return f3472j;
    }

    public Context a() {
        return this.f3473a;
    }

    public com.aggmoread.sdk.z.a.g.b b() {
        return a(EnumC0074a.f3482b);
    }

    public b c() {
        return this.f3477e;
    }

    public i e() {
        return b(EnumC0074a.f3482b);
    }

    public int f() {
        return this.f3481i;
    }

    public boolean g() {
        return this.f3476d;
    }

    public boolean h() {
        return this.f3480h;
    }

    public com.aggmoread.sdk.z.a.g.b a(EnumC0074a enumC0074a) {
        return this.f3478f.containsKey(enumC0074a) ? this.f3478f.get(enumC0074a) : this.f3474b;
    }

    public i b(EnumC0074a enumC0074a) {
        return this.f3479g.containsKey(enumC0074a) ? this.f3479g.get(enumC0074a) : this.f3475c;
    }

    public void a(int i10) {
        this.f3481i = i10;
    }

    public void a(EnumC0074a enumC0074a, i iVar) {
        this.f3479g.put(enumC0074a, iVar);
    }

    public void a(String str) {
    }

    public boolean a(Context context, EnumC0074a enumC0074a, com.aggmoread.sdk.z.a.g.b bVar, b bVar2) {
        if (this.f3476d) {
            if (enumC0074a != null && bVar != null && !this.f3478f.containsKey(enumC0074a)) {
                this.f3478f.put(enumC0074a, bVar);
            }
            return true;
        }
        if (context == null || bVar == null) {
            return this.f3476d;
        }
        this.f3473a = context.getApplicationContext();
        if (enumC0074a != null) {
            this.f3478f.put(enumC0074a, bVar);
        } else {
            this.f3478f.put(EnumC0074a.f3482b, bVar);
            this.f3474b = bVar;
        }
        this.f3477e = bVar2;
        f.a(context);
        this.f3476d = true;
        return true;
    }
}
