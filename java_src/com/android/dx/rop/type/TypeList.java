package com.android.dx.rop.type;

/* JADX INFO: loaded from: classes7.dex */
public interface TypeList {
    Type getType(int i10);

    int getWordCount();

    boolean isMutable();

    int size();

    TypeList withAddedType(Type type);
}
