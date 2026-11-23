package com.airbnb.lottie.animation.content;

import android.annotation.TargetApi;
import android.graphics.Path;
import com.airbnb.lottie.model.content.MergePaths;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes7.dex */
@TargetApi(19)
public class l implements n, j {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f5441d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final MergePaths f5443f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Path f5438a = new Path();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Path f5439b = new Path();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Path f5440c = new Path();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List<n> f5442e = new ArrayList();

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f5444a;

        static {
            int[] iArr = new int[MergePaths.MergePathsMode.values().length];
            f5444a = iArr;
            try {
                iArr[MergePaths.MergePathsMode.MERGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f5444a[MergePaths.MergePathsMode.ADD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f5444a[MergePaths.MergePathsMode.SUBTRACT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f5444a[MergePaths.MergePathsMode.INTERSECT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f5444a[MergePaths.MergePathsMode.EXCLUDE_INTERSECTIONS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public l(MergePaths mergePaths) {
        this.f5441d = mergePaths.c();
        this.f5443f = mergePaths;
    }

    private void d() {
        for (int i10 = 0; i10 < this.f5442e.size(); i10++) {
            this.f5440c.addPath(this.f5442e.get(i10).getPath());
        }
    }

    @TargetApi(19)
    private void g(Path.Op op) {
        this.f5439b.reset();
        this.f5438a.reset();
        for (int size = this.f5442e.size() - 1; size >= 1; size--) {
            n nVar = this.f5442e.get(size);
            if (nVar instanceof d) {
                d dVar = (d) nVar;
                List<n> listK = dVar.k();
                for (int size2 = listK.size() - 1; size2 >= 0; size2--) {
                    Path path = listK.get(size2).getPath();
                    path.transform(dVar.l());
                    this.f5439b.addPath(path);
                }
            } else {
                this.f5439b.addPath(nVar.getPath());
            }
        }
        n nVar2 = this.f5442e.get(0);
        if (nVar2 instanceof d) {
            d dVar2 = (d) nVar2;
            List<n> listK2 = dVar2.k();
            for (int i10 = 0; i10 < listK2.size(); i10++) {
                Path path2 = listK2.get(i10).getPath();
                path2.transform(dVar2.l());
                this.f5438a.addPath(path2);
            }
        } else {
            this.f5438a.set(nVar2.getPath());
        }
        this.f5440c.op(this.f5438a, this.f5439b, op);
    }

    @Override // com.airbnb.lottie.animation.content.j
    public void b(ListIterator<c> listIterator) {
        while (listIterator.hasPrevious() && listIterator.previous() != this) {
        }
        while (listIterator.hasPrevious()) {
            c cVarPrevious = listIterator.previous();
            if (cVarPrevious instanceof n) {
                this.f5442e.add((n) cVarPrevious);
                listIterator.remove();
            }
        }
    }

    @Override // com.airbnb.lottie.animation.content.c
    public void e(List<c> list, List<c> list2) {
        for (int i10 = 0; i10 < this.f5442e.size(); i10++) {
            this.f5442e.get(i10).e(list, list2);
        }
    }

    @Override // com.airbnb.lottie.animation.content.c
    public String getName() {
        return this.f5441d;
    }

    @Override // com.airbnb.lottie.animation.content.n
    public Path getPath() {
        this.f5440c.reset();
        if (this.f5443f.d()) {
            return this.f5440c;
        }
        int i10 = a.f5444a[this.f5443f.b().ordinal()];
        if (i10 == 1) {
            d();
        } else if (i10 == 2) {
            g(Path.Op.UNION);
        } else if (i10 == 3) {
            g(Path.Op.REVERSE_DIFFERENCE);
        } else if (i10 == 4) {
            g(Path.Op.INTERSECT);
        } else if (i10 == 5) {
            g(Path.Op.XOR);
        }
        return this.f5440c;
    }
}
