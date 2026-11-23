package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.JSONException;
import java.io.IOException;
import java.io.Writer;
import java.lang.reflect.Type;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.IdentityHashMap;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class v0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final t1 f6751a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final v1 f6752b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List<l> f6753c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<c> f6754d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<n1> f6755e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private List<e2> f6756f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private List<f1> f6757g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private List<o1> f6758h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f6759i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f6760j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f6761k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private DateFormat f6762l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private IdentityHashMap<Object, r1> f6763m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private r1 f6764n;

    public v0() {
        this(new v1(), t1.f());
    }

    public static final void I(v1 v1Var, Object obj) {
        new v0(v1Var).K(obj);
    }

    public static final void J(Writer writer, Object obj) {
        v1 v1Var = new v1();
        try {
            try {
                new v0(v1Var).K(obj);
                v1Var.x0(writer);
                v1Var.close();
            } catch (IOException e10) {
                throw new JSONException(e10.getMessage(), e10);
            }
        } catch (Throwable th) {
            v1Var.close();
            throw th;
        }
    }

    public void A() {
        r1 r1Var = this.f6764n;
        if (r1Var != null) {
            this.f6764n = r1Var.d();
        }
    }

    public void B() {
        this.f6752b.m('\n');
        for (int i10 = 0; i10 < this.f6759i; i10++) {
            this.f6752b.write(this.f6760j);
        }
    }

    public void C(r1 r1Var) {
        this.f6764n = r1Var;
    }

    public void D(r1 r1Var, Object obj, Object obj2, int i10) {
        E(r1Var, obj, obj2, i10, 0);
    }

    public void E(r1 r1Var, Object obj, Object obj2, int i10, int i11) {
        if (y(SerializerFeature.DisableCircularReferenceDetect)) {
            return;
        }
        this.f6764n = new r1(r1Var, obj, obj2, i10, i11);
        if (this.f6763m == null) {
            this.f6763m = new IdentityHashMap<>();
        }
        this.f6763m.put(obj, this.f6764n);
    }

    public void F(Object obj, Object obj2) {
        D(this.f6764n, obj, obj2, 0);
    }

    public void G(String str) {
        this.f6761k = str;
        if (this.f6762l != null) {
            this.f6762l = null;
        }
    }

    public void H(DateFormat dateFormat) {
        this.f6762l = dateFormat;
        if (this.f6761k != null) {
            this.f6761k = null;
        }
    }

    public final void K(Object obj) {
        if (obj == null) {
            this.f6752b.p0();
            return;
        }
        try {
            o(obj.getClass()).d(this, obj, null, null, 0);
        } catch (IOException e10) {
            throw new JSONException(e10.getMessage(), e10);
        }
    }

    public final void L(String str) {
        z1.f6790a.f(this, str);
    }

    protected final void M(char c10, String str, Object obj) {
        if (c10 != 0) {
            this.f6752b.m(c10);
        }
        this.f6752b.v(str);
        K(obj);
    }

    public void N() {
        this.f6752b.p0();
    }

    public void O(Object obj) {
        r1 context = getContext();
        if (obj == context.c()) {
            this.f6752b.write("{\"$ref\":\"@\"}");
            return;
        }
        r1 r1VarD = context.d();
        if (r1VarD != null && obj == r1VarD.c()) {
            this.f6752b.write("{\"$ref\":\"..\"}");
            return;
        }
        while (context.d() != null) {
            context = context.d();
        }
        if (obj == context.c()) {
            this.f6752b.write("{\"$ref\":\"$\"}");
            return;
        }
        String strE = t(obj).e();
        this.f6752b.write("{\"$ref\":\"");
        this.f6752b.write(strE);
        this.f6752b.write("\"}");
    }

    public final void P(Object obj, Object obj2) {
        Q(obj, obj2, null, 0);
    }

    public final void Q(Object obj, Object obj2, Type type, int i10) {
        try {
            if (obj == null) {
                this.f6752b.p0();
            } else {
                o(obj.getClass()).d(this, obj, obj2, type, i10);
            }
        } catch (IOException e10) {
            throw new JSONException(e10.getMessage(), e10);
        }
    }

    public final void R(Object obj, String str) {
        if (!(obj instanceof Date)) {
            K(obj);
            return;
        }
        DateFormat dateFormatI = i();
        if (dateFormatI == null) {
            dateFormatI = new SimpleDateFormat(str);
        }
        this.f6752b.q0(dateFormatI.format((Date) obj));
    }

    public void a() {
        this.f6752b.close();
    }

    public void b(SerializerFeature serializerFeature, boolean z10) {
        this.f6752b.d(serializerFeature, z10);
    }

    public boolean c(Object obj) {
        IdentityHashMap<Object, r1> identityHashMap = this.f6763m;
        if (identityHashMap == null) {
            return false;
        }
        return identityHashMap.containsKey(obj);
    }

    public void d() {
        this.f6759i--;
    }

    public List<c> e() {
        if (this.f6754d == null) {
            this.f6754d = new ArrayList();
        }
        return this.f6754d;
    }

    public List<c> f() {
        return this.f6754d;
    }

    public List<l> g() {
        if (this.f6753c == null) {
            this.f6753c = new ArrayList();
        }
        return this.f6753c;
    }

    public r1 getContext() {
        return this.f6764n;
    }

    public List<l> h() {
        return this.f6753c;
    }

    public DateFormat i() {
        if (this.f6762l == null && this.f6761k != null) {
            this.f6762l = new SimpleDateFormat(this.f6761k);
        }
        return this.f6762l;
    }

    public String j() {
        DateFormat dateFormat = this.f6762l;
        return dateFormat instanceof SimpleDateFormat ? ((SimpleDateFormat) dateFormat).toPattern() : this.f6761k;
    }

    public int k() {
        return this.f6759i;
    }

    public t1 l() {
        return this.f6751a;
    }

    public List<f1> m() {
        if (this.f6757g == null) {
            this.f6757g = new ArrayList();
        }
        return this.f6757g;
    }

    public List<f1> n() {
        return this.f6757g;
    }

    public j1 o(Class<?> cls) {
        return this.f6751a.g(cls);
    }

    public List<n1> p() {
        if (this.f6755e == null) {
            this.f6755e = new ArrayList();
        }
        return this.f6755e;
    }

    public List<n1> q() {
        return this.f6755e;
    }

    public List<o1> r() {
        if (this.f6758h == null) {
            this.f6758h = new ArrayList();
        }
        return this.f6758h;
    }

    public List<o1> s() {
        return this.f6758h;
    }

    public r1 t(Object obj) {
        IdentityHashMap<Object, r1> identityHashMap = this.f6763m;
        if (identityHashMap == null) {
            return null;
        }
        return identityHashMap.get(obj);
    }

    public String toString() {
        return this.f6752b.toString();
    }

    public List<e2> u() {
        if (this.f6756f == null) {
            this.f6756f = new ArrayList();
        }
        return this.f6756f;
    }

    public List<e2> v() {
        return this.f6756f;
    }

    public v1 w() {
        return this.f6752b;
    }

    public void x() {
        this.f6759i++;
    }

    public boolean y(SerializerFeature serializerFeature) {
        return this.f6752b.g(serializerFeature);
    }

    public final boolean z(Type type, Object obj) {
        if (!this.f6752b.g(SerializerFeature.WriteClassName)) {
            return false;
        }
        if (type == null && y(SerializerFeature.NotWriteRootClassName)) {
            if (this.f6764n.d() == null) {
                return false;
            }
        }
        return true;
    }

    public v0(v1 v1Var) {
        this(v1Var, t1.f());
    }

    public v0(t1 t1Var) {
        this(new v1(), t1Var);
    }

    @Deprecated
    public v0(x0 x0Var) {
        this(new v1(), x0Var);
    }

    public v0(v1 v1Var, t1 t1Var) {
        this.f6753c = null;
        this.f6754d = null;
        this.f6755e = null;
        this.f6756f = null;
        this.f6757g = null;
        this.f6758h = null;
        this.f6759i = 0;
        this.f6760j = "\t";
        this.f6763m = null;
        this.f6752b = v1Var;
        this.f6751a = t1Var;
    }
}
