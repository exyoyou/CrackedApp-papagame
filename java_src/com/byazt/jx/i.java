package com.byazt.jx;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 214, 42})
public class i implements ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f15963c;
    public final c tt;
    public final boolean ve;

    public enum c {
        MERGE,
        ADD,
        SUBTRACT,
        INTERSECT,
        EXCLUDE_INTERSECTIONS;

        public static c c(int i10) {
            if (i10 == 1) {
                return MERGE;
            }
            if (i10 == 2) {
                return ADD;
            }
            if (i10 == 3) {
                return SUBTRACT;
            }
            if (i10 != 4) {
                return i10 != 5 ? MERGE : EXCLUDE_INTERSECTIONS;
            }
            return INTERSECT;
        }
    }

    public i(String str, c cVar, boolean z10) {
        this.f15963c = str;
        this.tt = cVar;
        this.ve = z10;
    }

    public String c() {
        return this.f15963c;
    }

    public String toString() {
        return "MergePaths{mode=" + this.tt + '}';
    }

    public c tt() {
        return this.tt;
    }

    public boolean ve() {
        return this.ve;
    }

    @Override // com.byazt.jx.ve
    public com.byazt.zy.ve c(com.byazt.ga.x xVar, com.byazt.ga.a aVar, com.byazt.zk.ve veVar) {
        return new com.byazt.zy.t(this);
    }
}
