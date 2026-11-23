package com.cloudplay.messagesdk.gson.internal.k;

import com.cloudplay.messagesdk.gson.internal.d;
import java.lang.reflect.AccessibleObject;

/* JADX INFO: loaded from: classes9.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final b f23913a;

    static {
        f23913a = d.b() < 9 ? new a() : new c();
    }

    public static b a() {
        return f23913a;
    }

    public abstract void a(AccessibleObject accessibleObject);
}
