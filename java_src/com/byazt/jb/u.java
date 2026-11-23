package com.byazt.jb;

import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public interface u {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final u f15785c = new u() { // from class: com.byazt.jb.u.1
        @Override // com.byazt.jb.u
        public boolean c(int i10, List<ve> list) {
            return true;
        }

        @Override // com.byazt.jb.u
        public boolean c(int i10, List<ve> list, boolean z10) {
            return true;
        }

        @Override // com.byazt.jb.u
        public boolean c(int i10, com.byazt.mk.n nVar, int i11, boolean z10) throws IOException {
            nVar.x(i11);
            return true;
        }
    };

    boolean c(int i10, com.byazt.mk.n nVar, int i11, boolean z10) throws IOException;

    boolean c(int i10, List<ve> list);

    boolean c(int i10, List<ve> list, boolean z10);
}
