package cn.fly.commons.a;

import cn.fly.commons.ae;
import cn.fly.commons.x;
import cn.fly.tools.FlyLog;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class h extends c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile cn.fly.commons.l f980b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f981c = x.b("014^dg<eAdbcg cbhBchcc*e(cg^fMcjdi");

    public h() {
        super(x.b("002Jeech"), 0L, x.b("005@eechdiBci"), 30L, 0L);
    }

    private void n() {
        try {
            HashMap map = (HashMap) ae.b().c(f981c, null);
            if (map == null || map.isEmpty()) {
                return;
            }
            for (Map.Entry entry : map.entrySet()) {
                long jLongValue = ((Long) entry.getKey()).longValue();
                long jLongValue2 = ((Long) entry.getValue()).longValue();
                long j10 = jLongValue2 - jLongValue;
                if (j10 > 0) {
                    HashMap<String, Object> map2 = new HashMap<>();
                    map2.put(x.b("005.cfAdh[chKf"), Long.valueOf(jLongValue2));
                    map2.put(x.b("008-cicf=dh%chceVe6eh"), Long.valueOf(j10));
                    a("BKIOMT", map2);
                }
            }
            ae.b().b(f981c);
        } catch (Throwable th) {
            FlyLog.getInstance().w(th);
        }
    }

    private void o() {
        if (f980b == null) {
            synchronized (h.class) {
                if (f980b == null) {
                    f980b = new cn.fly.commons.l() { // from class: cn.fly.commons.a.h.1

                        /* JADX INFO: renamed from: b, reason: collision with root package name */
                        private volatile long f983b = 0;

                        /* JADX WARN: Type inference fix 'apply assigned field type' failed
                        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$ArrayArg
                        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
                        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
                        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
                        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
                        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
                        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
                        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
                         */
                        @Override // cn.fly.commons.l
                        public void a(boolean z10, boolean z11, long j10) {
                            if (z11) {
                                this.f983b = System.currentTimeMillis();
                                h.this.a(new Long[]{0L, Long.valueOf(this.f983b), Long.valueOf(this.f983b)});
                                d.a().b(h.this, 0L, 1);
                            }
                            if (!z10) {
                                if (j10 > 0) {
                                    h.this.a(new Long[]{2L, Long.valueOf(this.f983b), Long.valueOf(System.currentTimeMillis())});
                                    d.a().b(h.this, 0L, 1);
                                    return;
                                }
                                return;
                            }
                            if (z11) {
                                return;
                            }
                            this.f983b = System.currentTimeMillis();
                            h.this.a(new Long[]{1L, Long.valueOf(this.f983b), Long.valueOf(this.f983b)});
                            d.a().b(h.this, 0L, 0);
                        }
                    };
                    cn.fly.commons.m.a().a(f980b);
                }
            }
        }
    }

    @Override // cn.fly.commons.a.c
    protected void a() {
        if (i()) {
            return;
        }
        Long[] lArr = (Long[]) this.f941a;
        long jLongValue = lArr[0].longValue();
        long jLongValue2 = lArr[1].longValue();
        long jLongValue3 = (jLongValue != 3 || lArr.length >= 3) ? lArr[2].longValue() : System.currentTimeMillis();
        if (jLongValue == 0) {
            n();
            a(jLongValue2, jLongValue3);
            a(jLongValue2);
        } else if (jLongValue != 1 && jLongValue != 3) {
            if (jLongValue == 2) {
                a(jLongValue2, jLongValue3);
            }
        } else {
            if (jLongValue == 1) {
                n();
            }
            a(jLongValue2, jLongValue3);
            a(jLongValue2);
        }
    }

    @Override // cn.fly.commons.a.c
    protected void d() {
        o();
    }

    private void a(long j10) {
        if (cn.fly.commons.m.a().b()) {
            return;
        }
        a(new Long[]{3L, Long.valueOf(j10)});
        d.a().b(this, b(), 0);
    }

    private void a(long j10, long j11) {
        try {
            ae aeVarB = ae.b();
            String str = f981c;
            HashMap map = (HashMap) aeVarB.c(str, null);
            if (map == null) {
                map = new HashMap();
            }
            map.put(Long.valueOf(j10), Long.valueOf(j11));
            ae.b().b(str, map);
        } catch (Throwable th) {
            FlyLog.getInstance().w(th);
        }
    }
}
