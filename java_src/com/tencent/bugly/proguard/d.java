package com.tencent.bugly.proguard;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class d extends c {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected HashMap<String, byte[]> f83582e = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private HashMap<String, Object> f83584g = new HashMap<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    k f83583f = new k();

    private void c(String str, Object obj) {
        this.f83584g.put(str, obj);
    }

    @Override // com.tencent.bugly.proguard.c
    public final /* bridge */ /* synthetic */ void a(String str) {
        super.a(str);
    }

    public void b() {
        this.f83582e = new HashMap<>();
    }

    @Override // com.tencent.bugly.proguard.c
    public <T> void a(String str, T t10) {
        if (this.f83582e == null) {
            super.a(str, t10);
            return;
        }
        if (str == null) {
            throw new IllegalArgumentException("put key can not is null");
        }
        if (t10 == null) {
            throw new IllegalArgumentException("put value can not is null");
        }
        if (t10 instanceof Set) {
            throw new IllegalArgumentException("can not support Set");
        }
        l lVar = new l();
        lVar.a(this.f83579c);
        lVar.a(t10, 0);
        this.f83582e.put(str, n.a(lVar.f83610a));
    }

    public final <T> T b(String str, T t10) throws b {
        HashMap<String, byte[]> map = this.f83582e;
        if (map != null) {
            if (!map.containsKey(str)) {
                return null;
            }
            if (this.f83584g.containsKey(str)) {
                return (T) this.f83584g.get(str);
            }
            try {
                this.f83583f.a(this.f83582e.get(str));
                this.f83583f.a(this.f83579c);
                T t11 = (T) this.f83583f.a((Object) t10, 0, true);
                if (t11 != null) {
                    c(str, t11);
                }
                return t11;
            } catch (Exception e10) {
                throw new b(e10);
            }
        }
        if (!this.f83577a.containsKey(str)) {
            return null;
        }
        if (this.f83584g.containsKey(str)) {
            return (T) this.f83584g.get(str);
        }
        byte[] value = new byte[0];
        Iterator<Map.Entry<String, byte[]>> it2 = this.f83577a.get(str).entrySet().iterator();
        if (it2.hasNext()) {
            Map.Entry<String, byte[]> next = it2.next();
            next.getKey();
            value = next.getValue();
        }
        try {
            this.f83583f.a(value);
            this.f83583f.a(this.f83579c);
            T t12 = (T) this.f83583f.a((Object) t10, 0, true);
            c(str, t12);
            return t12;
        } catch (Exception e11) {
            throw new b(e11);
        }
    }

    @Override // com.tencent.bugly.proguard.c
    public byte[] a() {
        if (this.f83582e != null) {
            l lVar = new l(0);
            lVar.a(this.f83579c);
            lVar.a((Map) this.f83582e, 0);
            return n.a(lVar.f83610a);
        }
        return super.a();
    }

    @Override // com.tencent.bugly.proguard.c
    public void a(byte[] bArr) {
        try {
            super.a(bArr);
        } catch (Exception unused) {
            this.f83583f.a(bArr);
            this.f83583f.a(this.f83579c);
            HashMap map = new HashMap(1);
            map.put("", new byte[0]);
            this.f83582e = this.f83583f.a((Map) map, 0, false);
        }
    }
}
