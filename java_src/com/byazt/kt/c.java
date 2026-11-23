package com.byazt.kt;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 166, 20})
public class c implements sp.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final sp f16415a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList<tt> f16416c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final boolean f16417n;
    public com.byazt.kpm.uj.c<tt> sp;
    public final ArrayList<tt> tt;
    public Runnable uj;
    public final InterfaceC0362c ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f16418x;

    /* JADX INFO: renamed from: com.byazt.kt.c$c, reason: collision with other inner class name */
    interface InterfaceC0362c {
        RecyclerView.gu c(int i10);

        void c(int i10, int i11);

        void c(int i10, int i11, Object obj);

        void tt(int i10, int i11);

        void uj(int i10, int i11);

        void ve(int i10, int i11);
    }

    @com.byazt.zqa.c(c = {0, 1, 166, 175})
    static class tt {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f16419c;
        public int tt;
        public int uj;
        public Object ve;

        public tt(int i10, int i11, int i12, Object obj) {
            this.f16419c = i10;
            this.tt = i11;
            this.uj = i12;
            this.ve = obj;
        }

        public String c() {
            int i10 = this.f16419c;
            if (i10 == 1) {
                return "add";
            }
            if (i10 == 2) {
                return com.kuaishou.weapon.p0.t.f74898w;
            }
            if (i10 != 4) {
                return i10 != 8 ? "??" : "mv";
            }
            return "up";
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            tt ttVar = (tt) obj;
            int i10 = this.f16419c;
            if (i10 != ttVar.f16419c) {
                return false;
            }
            if (i10 == 8 && Math.abs(this.uj - this.tt) == 1 && this.uj == ttVar.tt && this.tt == ttVar.uj) {
                return true;
            }
            if (this.uj != ttVar.uj || this.tt != ttVar.tt) {
                return false;
            }
            Object obj2 = this.ve;
            if (obj2 != null) {
                if (!obj2.equals(ttVar.ve)) {
                    return false;
                }
            } else if (ttVar.ve != null) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return (((this.f16419c * 31) + this.tt) * 31) + this.uj;
        }

        public String toString() {
            return Integer.toHexString(System.identityHashCode(this)) + "[" + c() + ",s:" + this.tt + "c:" + this.uj + ",p:" + this.ve + "]";
        }
    }

    public c(InterfaceC0362c interfaceC0362c) {
        this(interfaceC0362c, false);
    }

    private void a(tt ttVar) {
        sp(ttVar);
    }

    private void n(tt ttVar) {
        int i10;
        int i11 = ttVar.f16419c;
        if (i11 == 1 || i11 == 8) {
            throw new IllegalArgumentException("should not dispatch add or move for pre layout");
        }
        int iTt = tt(ttVar.tt, i11);
        int i12 = ttVar.tt;
        int i13 = ttVar.f16419c;
        if (i13 == 2) {
            i10 = 0;
        } else {
            if (i13 != 4) {
                throw new IllegalArgumentException("op should be remove or update.".concat(String.valueOf(ttVar)));
            }
            i10 = 1;
        }
        int i14 = 1;
        for (int i15 = 1; i15 < ttVar.uj; i15++) {
            int iTt2 = tt(ttVar.tt + (i10 * i15), ttVar.f16419c);
            int i16 = ttVar.f16419c;
            if (i16 == 2 ? iTt2 == iTt : i16 == 4 && iTt2 == iTt + 1) {
                i14++;
            } else {
                tt ttVarC = c(i16, iTt, i14, ttVar.ve);
                c(ttVarC, i12);
                c(ttVarC);
                if (ttVar.f16419c == 4) {
                    i12 += i14;
                }
                iTt = iTt2;
                i14 = 1;
            }
        }
        Object obj = ttVar.ve;
        c(ttVar);
        if (i14 > 0) {
            tt ttVarC2 = c(ttVar.f16419c, iTt, i14, obj);
            c(ttVarC2, i12);
            c(ttVarC2);
        }
    }

    private void sp(tt ttVar) {
        this.tt.add(ttVar);
        int i10 = ttVar.f16419c;
        if (i10 == 1) {
            this.ve.ve(ttVar.tt, ttVar.uj);
            return;
        }
        if (i10 == 2) {
            this.ve.tt(ttVar.tt, ttVar.uj);
        } else if (i10 == 4) {
            this.ve.c(ttVar.tt, ttVar.uj, ttVar.ve);
        } else {
            if (i10 != 8) {
                throw new IllegalArgumentException("Unknown update op type for ".concat(String.valueOf(ttVar)));
            }
            this.ve.uj(ttVar.tt, ttVar.uj);
        }
    }

    private void uj(tt ttVar) {
        int i10 = ttVar.tt;
        int i11 = ttVar.uj + i10;
        int i12 = i10;
        byte b10 = -1;
        int i13 = 0;
        while (i10 < i11) {
            if (this.ve.c(i10) != null || uj(i10)) {
                if (b10 == 0) {
                    n(c(4, i12, i13, ttVar.ve));
                    i12 = i10;
                    i13 = 0;
                }
                b10 = 1;
            } else {
                if (b10 == 1) {
                    sp(c(4, i12, i13, ttVar.ve));
                    i12 = i10;
                    i13 = 0;
                }
                b10 = 0;
            }
            i13++;
            i10++;
        }
        if (i13 != ttVar.uj) {
            Object obj = ttVar.ve;
            c(ttVar);
            ttVar = c(4, i12, i13, obj);
        }
        if (b10 == 0) {
            n(ttVar);
        } else {
            sp(ttVar);
        }
    }

    public void c() {
        c(this.f16416c);
        c(this.tt);
        this.f16418x = 0;
    }

    public void tt() {
        this.f16415a.c(this.f16416c);
        int size = this.f16416c.size();
        for (int i10 = 0; i10 < size; i10++) {
            tt ttVar = this.f16416c.get(i10);
            int i11 = ttVar.f16419c;
            if (i11 == 1) {
                a(ttVar);
            } else if (i11 == 2) {
                ve(ttVar);
            } else if (i11 == 4) {
                uj(ttVar);
            } else if (i11 == 8) {
                tt(ttVar);
            }
            Runnable runnable = this.uj;
            if (runnable != null) {
                runnable.run();
            }
        }
        this.f16416c.clear();
    }

    public void ve() {
        int size = this.tt.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.tt.get(i10);
        }
        c(this.tt);
        this.f16418x = 0;
    }

    public c(InterfaceC0362c interfaceC0362c, boolean z10) {
        this.sp = new com.byazt.kpm.uj.tt(30);
        this.f16416c = new ArrayList<>();
        this.tt = new ArrayList<>();
        this.f16418x = 0;
        this.ve = interfaceC0362c;
        this.f16417n = z10;
        this.f16415a = new sp(this);
    }

    public boolean a() {
        return (this.tt.isEmpty() || this.f16416c.isEmpty()) ? false : true;
    }

    public void c(tt ttVar, int i10) {
        int i11 = ttVar.f16419c;
        if (i11 == 2) {
            this.ve.c(i10, ttVar.uj);
        } else {
            if (i11 == 4) {
                this.ve.c(i10, ttVar.uj, ttVar.ve);
                return;
            }
            throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
        }
    }

    private void ve(tt ttVar) {
        boolean z10;
        byte b10;
        int i10 = ttVar.tt;
        int i11 = ttVar.uj + i10;
        byte b11 = -1;
        int i12 = i10;
        int i13 = 0;
        while (i12 < i11) {
            if (this.ve.c(i12) != null || uj(i12)) {
                if (b11 == 0) {
                    n(c(2, i10, i13, null));
                    z10 = true;
                } else {
                    z10 = false;
                }
                b10 = 1;
            } else {
                if (b11 == 1) {
                    sp(c(2, i10, i13, null));
                    z10 = true;
                } else {
                    z10 = false;
                }
                b10 = 0;
            }
            if (z10) {
                i12 -= i13;
                i11 -= i13;
                i13 = 1;
            } else {
                i13++;
            }
            i12++;
            b11 = b10;
        }
        if (i13 != ttVar.uj) {
            c(ttVar);
            ttVar = c(2, i10, i13, null);
        }
        if (b11 == 0) {
            n(ttVar);
        } else {
            sp(ttVar);
        }
    }

    public boolean c(int i10) {
        return (i10 & this.f16418x) != 0;
    }

    public int c(int i10, int i11) {
        int size = this.tt.size();
        while (i11 < size) {
            tt ttVar = this.tt.get(i11);
            int i12 = ttVar.f16419c;
            if (i12 == 8) {
                int i13 = ttVar.tt;
                if (i13 == i10) {
                    i10 = ttVar.uj;
                } else {
                    if (i13 < i10) {
                        i10--;
                    }
                    if (ttVar.uj <= i10) {
                        i10++;
                    }
                }
            } else {
                int i14 = ttVar.tt;
                if (i14 > i10) {
                    continue;
                } else if (i12 == 2) {
                    int i15 = ttVar.uj;
                    if (i10 < i14 + i15) {
                        return -1;
                    }
                    i10 -= i15;
                } else if (i12 == 1) {
                    i10 += ttVar.uj;
                }
            }
            i11++;
        }
        return i10;
    }

    private void tt(tt ttVar) {
        sp(ttVar);
    }

    private int tt(int i10, int i11) {
        int i12;
        int i13;
        for (int size = this.tt.size() - 1; size >= 0; size--) {
            tt ttVar = this.tt.get(size);
            int i14 = ttVar.f16419c;
            if (i14 == 8) {
                int i15 = ttVar.tt;
                int i16 = ttVar.uj;
                if (i15 < i16) {
                    i13 = i15;
                    i12 = i16;
                } else {
                    i12 = i15;
                    i13 = i16;
                }
                if (i10 < i13 || i10 > i12) {
                    if (i10 < i15) {
                        if (i11 == 1) {
                            ttVar.tt = i15 + 1;
                            ttVar.uj = i16 + 1;
                        } else if (i11 == 2) {
                            ttVar.tt = i15 - 1;
                            ttVar.uj = i16 - 1;
                        }
                    }
                } else if (i13 == i15) {
                    if (i11 == 1) {
                        ttVar.uj = i16 + 1;
                    } else if (i11 == 2) {
                        ttVar.uj = i16 - 1;
                    }
                    i10++;
                } else {
                    if (i11 == 1) {
                        ttVar.tt = i15 + 1;
                    } else if (i11 == 2) {
                        ttVar.tt = i15 - 1;
                    }
                    i10--;
                }
            } else {
                int i17 = ttVar.tt;
                if (i17 <= i10) {
                    if (i14 == 1) {
                        i10 -= ttVar.uj;
                    } else if (i14 == 2) {
                        i10 += ttVar.uj;
                    }
                } else if (i11 == 1) {
                    ttVar.tt = i17 + 1;
                } else if (i11 == 2) {
                    ttVar.tt = i17 - 1;
                }
            }
        }
        for (int size2 = this.tt.size() - 1; size2 >= 0; size2--) {
            tt ttVar2 = this.tt.get(size2);
            if (ttVar2.f16419c == 8) {
                int i18 = ttVar2.uj;
                if (i18 == ttVar2.tt || i18 < 0) {
                    this.tt.remove(size2);
                    c(ttVar2);
                }
            } else if (ttVar2.uj <= 0) {
                this.tt.remove(size2);
                c(ttVar2);
            }
        }
        return i10;
    }

    private boolean uj(int i10) {
        int size = this.tt.size();
        for (int i11 = 0; i11 < size; i11++) {
            tt ttVar = this.tt.get(i11);
            int i12 = ttVar.f16419c;
            if (i12 == 8) {
                if (c(ttVar.uj, i11 + 1) == i10) {
                    return true;
                }
            } else if (i12 == 1) {
                int i13 = ttVar.tt;
                int i14 = ttVar.uj + i13;
                while (i13 < i14) {
                    if (c(i13, i11 + 1) == i10) {
                        return true;
                    }
                    i13++;
                }
            } else {
                continue;
            }
        }
        return false;
    }

    public boolean c(int i10, int i11, Object obj) {
        if (i11 <= 0) {
            return false;
        }
        this.f16416c.add(c(4, i10, i11, obj));
        this.f16418x |= 4;
        return this.f16416c.size() == 1;
    }

    public int ve(int i10) {
        int size = this.f16416c.size();
        for (int i11 = 0; i11 < size; i11++) {
            tt ttVar = this.f16416c.get(i11);
            int i12 = ttVar.f16419c;
            if (i12 != 1) {
                if (i12 == 2) {
                    int i13 = ttVar.tt;
                    if (i13 <= i10) {
                        int i14 = ttVar.uj;
                        if (i13 + i14 > i10) {
                            return -1;
                        }
                        i10 -= i14;
                    } else {
                        continue;
                    }
                } else if (i12 == 8) {
                    int i15 = ttVar.tt;
                    if (i15 == i10) {
                        i10 = ttVar.uj;
                    } else {
                        if (i15 < i10) {
                            i10--;
                        }
                        if (ttVar.uj <= i10) {
                            i10++;
                        }
                    }
                }
            } else if (ttVar.tt <= i10) {
                i10 += ttVar.uj;
            }
        }
        return i10;
    }

    public void n() {
        ve();
        int size = this.f16416c.size();
        for (int i10 = 0; i10 < size; i10++) {
            tt ttVar = this.f16416c.get(i10);
            int i11 = ttVar.f16419c;
            if (i11 == 1) {
                this.ve.ve(ttVar.tt, ttVar.uj);
            } else if (i11 == 2) {
                this.ve.c(ttVar.tt, ttVar.uj);
            } else if (i11 == 4) {
                this.ve.c(ttVar.tt, ttVar.uj, ttVar.ve);
            } else if (i11 == 8) {
                this.ve.uj(ttVar.tt, ttVar.uj);
            }
            Runnable runnable = this.uj;
            if (runnable != null) {
                runnable.run();
            }
        }
        c(this.f16416c);
        this.f16418x = 0;
    }

    @Override // com.byazt.kt.sp.c
    public tt c(int i10, int i11, int i12, Object obj) {
        tt ttVarC = this.sp.c();
        if (ttVarC == null) {
            return new tt(i10, i11, i12, obj);
        }
        ttVarC.f16419c = i10;
        ttVarC.tt = i11;
        ttVarC.uj = i12;
        ttVarC.ve = obj;
        return ttVarC;
    }

    public boolean uj() {
        return this.f16416c.size() > 0;
    }

    @Override // com.byazt.kt.sp.c
    public void c(tt ttVar) {
        if (this.f16417n) {
            return;
        }
        ttVar.ve = null;
        this.sp.c(ttVar);
    }

    public void c(List<tt> list) {
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            c(list.get(i10));
        }
        list.clear();
    }

    public int tt(int i10) {
        return c(i10, 0);
    }
}
