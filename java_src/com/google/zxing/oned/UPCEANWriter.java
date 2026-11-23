package com.google.zxing.oned;

/* JADX INFO: loaded from: classes5.dex */
public abstract class UPCEANWriter extends OneDimensionalCodeWriter {
    protected UPCEANWriter() {
        super(UPCEANReader.START_END_PATTERN.length << 1);
    }
}
