package com.ta.utdid2.core.persistent;

import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public interface b {

    public interface a {
        a clear();

        boolean commit();

        a putBoolean(String str, boolean z10);

        a putFloat(String str, float f10);

        a putInt(String str, int i10);

        a putLong(String str, long j10);

        a putString(String str, String str2);

        a remove(String str);
    }

    /* JADX INFO: renamed from: com.ta.utdid2.core.persistent.b$b, reason: collision with other inner class name */
    public interface InterfaceC1042b {
        void a(b bVar, String str);
    }

    boolean a();

    void b(InterfaceC1042b interfaceC1042b);

    void c(InterfaceC1042b interfaceC1042b);

    boolean contains(String str);

    a edit();

    Map<String, ?> getAll();

    boolean getBoolean(String str, boolean z10);

    float getFloat(String str, float f10);

    int getInt(String str, int i10);

    long getLong(String str, long j10);

    String getString(String str, String str2);
}
