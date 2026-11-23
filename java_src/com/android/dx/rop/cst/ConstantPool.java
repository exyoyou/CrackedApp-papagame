package com.android.dx.rop.cst;

/* JADX INFO: loaded from: classes7.dex */
public interface ConstantPool {
    Constant get(int i10);

    Constant get0Ok(int i10);

    Constant[] getEntries();

    Constant getOrNull(int i10);

    int size();
}
