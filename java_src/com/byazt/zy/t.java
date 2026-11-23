package com.byazt.zy;

import android.annotation.TargetApi;
import android.graphics.Path;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1698, 66})
@TargetApi(19)
public class t implements da, u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final com.byazt.jx.i f23039a;
    public final String uj;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Path f23040c = new Path();
    public final Path tt = new Path();
    public final Path ve = new Path();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final List<u> f23041n = new ArrayList();

    /* JADX INFO: renamed from: com.byazt.zy.t$1, reason: invalid class name */
    @com.byazt.zqa.c(c = {0, 1, 1698, 167})
    static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ int[] f23042c;

        static {
            int[] iArr = new int[com.byazt.jx.i.c.values().length];
            f23042c = iArr;
            try {
                iArr[com.byazt.jx.i.c.MERGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f23042c[com.byazt.jx.i.c.ADD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f23042c[com.byazt.jx.i.c.SUBTRACT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f23042c[com.byazt.jx.i.c.INTERSECT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f23042c[com.byazt.jx.i.c.EXCLUDE_INTERSECTIONS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public t(com.byazt.jx.i iVar) {
        this.uj = iVar.c();
        this.f23039a = iVar;
    }

    @Override // com.byazt.zy.da
    public void c(ListIterator<ve> listIterator) {
        while (listIterator.hasPrevious() && listIterator.previous() != this) {
        }
        while (listIterator.hasPrevious()) {
            ve veVarPrevious = listIterator.previous();
            if (veVarPrevious instanceof u) {
                this.f23041n.add((u) veVarPrevious);
                listIterator.remove();
            }
        }
    }

    @Override // com.byazt.zy.u
    public Path uj() {
        this.ve.reset();
        if (this.f23039a.ve()) {
            return this.ve;
        }
        int i10 = AnonymousClass1.f23042c[this.f23039a.tt().ordinal()];
        if (i10 == 1) {
            c();
        } else if (i10 == 2) {
            c(Path.Op.UNION);
        } else if (i10 == 3) {
            c(Path.Op.REVERSE_DIFFERENCE);
        } else if (i10 == 4) {
            c(Path.Op.INTERSECT);
        } else if (i10 == 5) {
            c(Path.Op.XOR);
        }
        return this.ve;
    }

    @Override // com.byazt.zy.ve
    public void c(List<ve> list, List<ve> list2) {
        for (int i10 = 0; i10 < this.f23041n.size(); i10++) {
            this.f23041n.get(i10).c(list, list2);
        }
    }

    private void c() {
        for (int i10 = 0; i10 < this.f23041n.size(); i10++) {
            this.ve.addPath(this.f23041n.get(i10).uj());
        }
    }

    @TargetApi(19)
    private void c(Path.Op op) {
        this.tt.reset();
        this.f23040c.reset();
        for (int size = this.f23041n.size() - 1; size > 0; size--) {
            u uVar = this.f23041n.get(size);
            if (uVar instanceof uj) {
                uj ujVar = (uj) uVar;
                List<u> listTt = ujVar.tt();
                for (int size2 = listTt.size() - 1; size2 >= 0; size2--) {
                    Path pathUj = listTt.get(size2).uj();
                    pathUj.transform(ujVar.ve());
                    this.tt.addPath(pathUj);
                }
            } else {
                this.tt.addPath(uVar.uj());
            }
        }
        u uVar2 = this.f23041n.get(0);
        if (uVar2 instanceof uj) {
            uj ujVar2 = (uj) uVar2;
            List<u> listTt2 = ujVar2.tt();
            for (int i10 = 0; i10 < listTt2.size(); i10++) {
                Path pathUj2 = listTt2.get(i10).uj();
                pathUj2.transform(ujVar2.ve());
                this.f23040c.addPath(pathUj2);
            }
        } else {
            this.f23040c.set(uVar2.uj());
        }
        this.ve.op(this.f23040c, this.tt, op);
    }
}
