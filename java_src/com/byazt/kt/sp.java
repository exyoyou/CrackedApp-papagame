package com.byazt.kt;

import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 166, 91})
public class sp {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final c f16436c;

    interface c {
        com.byazt.kt.c.tt c(int i10, int i11, int i12, Object obj);

        void c(com.byazt.kt.c.tt ttVar);
    }

    public sp(c cVar) {
        this.f16436c = cVar;
    }

    private void ve(List<com.byazt.kt.c.tt> list, int i10, com.byazt.kt.c.tt ttVar, int i11, com.byazt.kt.c.tt ttVar2) {
        int i12 = ttVar.uj;
        int i13 = ttVar2.tt;
        int i14 = i12 < i13 ? -1 : 0;
        int i15 = ttVar.tt;
        if (i15 < i13) {
            i14++;
        }
        if (i13 <= i15) {
            ttVar.tt = i15 + ttVar2.uj;
        }
        int i16 = ttVar2.tt;
        if (i16 <= i12) {
            ttVar.uj = i12 + ttVar2.uj;
        }
        ttVar2.tt = i16 + i14;
        list.set(i10, ttVar2);
        list.set(i11, ttVar);
    }

    public void c(List<com.byazt.kt.c.tt> list) {
        while (true) {
            int iTt = tt(list);
            if (iTt == -1) {
                return;
            } else {
                c(list, iTt, iTt + 1);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0027  */
    /* JADX WARN: Code duplicated, block: B:12:0x002b  */
    /* JADX WARN: Code duplicated, block: B:14:0x0031  */
    /* JADX WARN: Code duplicated, block: B:17:0x0048  */
    /* JADX WARN: Code duplicated, block: B:18:0x004c  */
    /* JADX WARN: Code duplicated, block: B:20:0x0056  */
    /* JADX WARN: Code duplicated, block: B:22:0x005b  */
    /* JADX WARN: Code duplicated, block: B:24:? A[RETURN, SYNTHETIC] */
    public void tt(List<com.byazt.kt.c.tt> list, int i10, com.byazt.kt.c.tt ttVar, int i11, com.byazt.kt.c.tt ttVar2) {
        com.byazt.kt.c.tt ttVarC;
        int i12;
        int i13;
        int i14;
        int i15 = ttVar.uj;
        int i16 = ttVar2.tt;
        com.byazt.kt.c.tt ttVarC2 = null;
        if (i15 >= i16) {
            int i17 = ttVar2.uj;
            if (i15 < i16 + i17) {
                ttVar2.uj = i17 - 1;
                ttVarC = this.f16436c.c(4, ttVar.tt, 1, ttVar2.ve);
            }
            i12 = ttVar.tt;
            i13 = ttVar2.tt;
            if (i12 <= i13) {
                ttVar2.tt = i13 + 1;
            } else {
                i14 = ttVar2.uj;
                if (i12 < i13 + i14) {
                    int i18 = (i13 + i14) - i12;
                    ttVarC2 = this.f16436c.c(4, i12 + 1, i18, ttVar2.ve);
                    ttVar2.uj -= i18;
                }
            }
            list.set(i11, ttVar);
            if (ttVar2.uj > 0) {
                list.set(i10, ttVar2);
            } else {
                list.remove(i10);
                this.f16436c.c(ttVar2);
            }
            if (ttVarC != null) {
                list.add(i10, ttVarC);
            }
            if (ttVarC2 != null) {
                list.add(i10, ttVarC2);
            }
        }
        ttVar2.tt = i16 - 1;
        ttVarC = null;
        i12 = ttVar.tt;
        i13 = ttVar2.tt;
        if (i12 <= i13) {
            ttVar2.tt = i13 + 1;
        } else {
            i14 = ttVar2.uj;
            if (i12 < i13 + i14) {
                int i19 = (i13 + i14) - i12;
                ttVarC2 = this.f16436c.c(4, i12 + 1, i19, ttVar2.ve);
                ttVar2.uj -= i19;
            }
        }
        list.set(i11, ttVar);
        if (ttVar2.uj > 0) {
            list.set(i10, ttVar2);
        } else {
            list.remove(i10);
            this.f16436c.c(ttVar2);
        }
        if (ttVarC != null) {
            list.add(i10, ttVarC);
        }
        if (ttVarC2 != null) {
            list.add(i10, ttVarC2);
        }
    }

    private void c(List<com.byazt.kt.c.tt> list, int i10, int i11) {
        com.byazt.kt.c.tt ttVar = list.get(i10);
        com.byazt.kt.c.tt ttVar2 = list.get(i11);
        int i12 = ttVar2.f16419c;
        if (i12 == 1) {
            ve(list, i10, ttVar, i11, ttVar2);
        } else if (i12 == 2) {
            c(list, i10, ttVar, i11, ttVar2);
        } else {
            if (i12 != 4) {
                return;
            }
            tt(list, i10, ttVar, i11, ttVar2);
        }
    }

    public void c(List<com.byazt.kt.c.tt> list, int i10, com.byazt.kt.c.tt ttVar, int i11, com.byazt.kt.c.tt ttVar2) {
        boolean z10;
        int i12 = ttVar.tt;
        int i13 = ttVar.uj;
        boolean z11 = false;
        if (i12 < i13) {
            if (ttVar2.tt == i12 && ttVar2.uj == i13 - i12) {
                z10 = false;
                z11 = true;
            } else {
                z10 = false;
            }
        } else if (ttVar2.tt == i13 + 1 && ttVar2.uj == i12 - i13) {
            z10 = true;
            z11 = true;
        } else {
            z10 = true;
        }
        int i14 = ttVar2.tt;
        if (i13 < i14) {
            ttVar2.tt = i14 - 1;
        } else {
            int i15 = ttVar2.uj;
            if (i13 < i14 + i15) {
                ttVar2.uj = i15 - 1;
                ttVar.f16419c = 2;
                ttVar.uj = 1;
                if (ttVar2.uj == 0) {
                    list.remove(i11);
                    this.f16436c.c(ttVar2);
                    return;
                }
                return;
            }
        }
        int i16 = ttVar.tt;
        int i17 = ttVar2.tt;
        com.byazt.kt.c.tt ttVarC = null;
        if (i16 <= i17) {
            ttVar2.tt = i17 + 1;
        } else {
            int i18 = ttVar2.uj;
            if (i16 < i17 + i18) {
                ttVarC = this.f16436c.c(2, i16 + 1, (i17 + i18) - i16, null);
                ttVar2.uj = ttVar.tt - ttVar2.tt;
            }
        }
        if (z11) {
            list.set(i10, ttVar2);
            list.remove(i11);
            this.f16436c.c(ttVar);
            return;
        }
        if (z10) {
            if (ttVarC != null) {
                int i19 = ttVar.tt;
                if (i19 > ttVarC.tt) {
                    ttVar.tt = i19 - ttVarC.uj;
                }
                int i20 = ttVar.uj;
                if (i20 > ttVarC.tt) {
                    ttVar.uj = i20 - ttVarC.uj;
                }
            }
            int i21 = ttVar.tt;
            if (i21 > ttVar2.tt) {
                ttVar.tt = i21 - ttVar2.uj;
            }
            int i22 = ttVar.uj;
            if (i22 > ttVar2.tt) {
                ttVar.uj = i22 - ttVar2.uj;
            }
        } else {
            if (ttVarC != null) {
                int i23 = ttVar.tt;
                if (i23 >= ttVarC.tt) {
                    ttVar.tt = i23 - ttVarC.uj;
                }
                int i24 = ttVar.uj;
                if (i24 >= ttVarC.tt) {
                    ttVar.uj = i24 - ttVarC.uj;
                }
            }
            int i25 = ttVar.tt;
            if (i25 >= ttVar2.tt) {
                ttVar.tt = i25 - ttVar2.uj;
            }
            int i26 = ttVar.uj;
            if (i26 >= ttVar2.tt) {
                ttVar.uj = i26 - ttVar2.uj;
            }
        }
        list.set(i10, ttVar2);
        if (ttVar.tt != ttVar.uj) {
            list.set(i11, ttVar);
        } else {
            list.remove(i11);
        }
        if (ttVarC != null) {
            list.add(i10, ttVarC);
        }
    }

    private int tt(List<com.byazt.kt.c.tt> list) {
        boolean z10 = false;
        for (int size = list.size() - 1; size >= 0; size--) {
            if (list.get(size).f16419c != 8) {
                z10 = true;
            } else if (z10) {
                return size;
            }
        }
        return -1;
    }
}
