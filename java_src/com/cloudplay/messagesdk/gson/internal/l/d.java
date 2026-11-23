package com.cloudplay.messagesdk.gson.internal.l;

import com.cloudplay.messagesdk.gson.TypeAdapterFactory;
import java.sql.Date;
import java.sql.Timestamp;

/* JADX INFO: loaded from: classes9.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final boolean f23923a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final TypeAdapterFactory f23924b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final TypeAdapterFactory f23925c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final TypeAdapterFactory f23926d;

    static class a extends com.cloudplay.messagesdk.gson.internal.j.d<Date> {
        a(Class cls) {
            super(cls);
        }
    }

    static class b extends com.cloudplay.messagesdk.gson.internal.j.d<Timestamp> {
        b(Class cls) {
            super(cls);
        }
    }

    static {
        boolean z10;
        try {
            Class.forName("java.sql.Date");
            z10 = true;
        } catch (ClassNotFoundException unused) {
            z10 = false;
        }
        f23923a = z10;
        if (!z10) {
            f23924b = null;
            f23925c = null;
            f23926d = null;
        } else {
            new a(Date.class);
            new b(Timestamp.class);
            f23924b = com.cloudplay.messagesdk.gson.internal.l.a.f23917b;
            f23925c = com.cloudplay.messagesdk.gson.internal.l.b.f23919b;
            f23926d = c.f23921b;
        }
    }
}
