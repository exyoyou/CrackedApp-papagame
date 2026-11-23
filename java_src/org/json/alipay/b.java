package org.json.alipay;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collection;

/* JADX INFO: loaded from: classes10.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ArrayList f95831a;

    public b() {
        this.f95831a = new ArrayList();
    }

    public final int a() {
        return this.f95831a.size();
    }

    public String toString() {
        try {
            return "[" + a(",") + ']';
        } catch (Exception unused) {
            return null;
        }
    }

    public b(Object obj) throws a {
        this();
        if (!obj.getClass().isArray()) {
            throw new a("JSONArray initial value should be a string or collection or array.");
        }
        int length = Array.getLength(obj);
        for (int i10 = 0; i10 < length; i10++) {
            this.f95831a.add(Array.get(obj, i10));
        }
    }

    public final Object a(int i10) throws a {
        Object obj = (i10 < 0 || i10 >= this.f95831a.size()) ? null : this.f95831a.get(i10);
        if (obj != null) {
            return obj;
        }
        throw new a("JSONArray[" + i10 + "] not found.");
    }

    public b(String str) {
        this(new d(str));
    }

    private String a(String str) {
        int size = this.f95831a.size();
        StringBuffer stringBuffer = new StringBuffer();
        for (int i10 = 0; i10 < size; i10++) {
            if (i10 > 0) {
                stringBuffer.append(str);
            }
            stringBuffer.append(c.a(this.f95831a.get(i10)));
        }
        return stringBuffer.toString();
    }

    public b(Collection collection) {
        this.f95831a = collection == null ? new ArrayList() : new ArrayList(collection);
    }

    public b(d dVar) throws a {
        char c10;
        ArrayList arrayList;
        Object objD;
        this();
        char c11 = dVar.c();
        if (c11 == '[') {
            c10 = ']';
        } else {
            if (c11 != '(') {
                throw dVar.a("A JSONArray text must start with '['");
            }
            c10 = ')';
        }
        if (dVar.c() == ']') {
            return;
        }
        do {
            dVar.a();
            char c12 = dVar.c();
            dVar.a();
            if (c12 == ',') {
                arrayList = this.f95831a;
                objD = null;
            } else {
                arrayList = this.f95831a;
                objD = dVar.d();
            }
            arrayList.add(objD);
            char c13 = dVar.c();
            if (c13 != ')') {
                if (c13 != ',' && c13 != ';') {
                    if (c13 != ']') {
                        throw dVar.a("Expected a ',' or ']'");
                    }
                }
            }
            if (c10 == c13) {
                return;
            }
            throw dVar.a("Expected a '" + new Character(c10) + "'");
        } while (dVar.c() != ']');
    }
}
