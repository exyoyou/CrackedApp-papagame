package com.android.dx.io.instructions;

import java.io.EOFException;

/* JADX INFO: loaded from: classes7.dex */
public interface CodeInput extends CodeCursor {
    boolean hasMore();

    int read() throws EOFException;

    int readInt() throws EOFException;

    long readLong() throws EOFException;
}
