package com.facebook.imagepipeline.decoder;

import com.facebook.common.internal.i;
import com.facebook.imagepipeline.image.h;
import com.facebook.imagepipeline.image.j;
import com.facebook.infer.annotation.Nullsafe;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class f implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c f28022a;

    private static class b implements c {
        private b() {
        }

        @Override // com.facebook.imagepipeline.decoder.f.c
        public List<Integer> a() {
            return Collections.EMPTY_LIST;
        }

        @Override // com.facebook.imagepipeline.decoder.f.c
        public int b() {
            return 0;
        }
    }

    public interface c {
        List<Integer> a();

        int b();
    }

    public f() {
        this(new b());
    }

    @Override // com.facebook.imagepipeline.decoder.d
    public int a(int scanNumber) {
        List<Integer> listA = this.f28022a.a();
        if (listA == null || listA.isEmpty()) {
            return scanNumber + 1;
        }
        for (int i10 = 0; i10 < listA.size(); i10++) {
            if (listA.get(i10).intValue() > scanNumber) {
                return listA.get(i10).intValue();
            }
        }
        return Integer.MAX_VALUE;
    }

    @Override // com.facebook.imagepipeline.decoder.d
    public j b(int scanNumber) {
        return h.d(scanNumber, scanNumber >= this.f28022a.b(), false);
    }

    public f(c dynamicValueConfig) {
        this.f28022a = (c) i.i(dynamicValueConfig);
    }
}
