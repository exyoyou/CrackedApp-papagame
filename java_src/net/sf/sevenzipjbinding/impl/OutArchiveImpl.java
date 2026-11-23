package net.sf.sevenzipjbinding.impl;

import java.io.IOException;
import java.io.PrintStream;
import net.sf.sevenzipjbinding.ArchiveFormat;
import net.sf.sevenzipjbinding.IInArchive;
import net.sf.sevenzipjbinding.IOutArchive;
import net.sf.sevenzipjbinding.IOutCreateCallback;
import net.sf.sevenzipjbinding.IOutItemBase;
import net.sf.sevenzipjbinding.ISequentialOutStream;
import net.sf.sevenzipjbinding.SevenZipException;

/* JADX INFO: loaded from: classes.dex */
public class OutArchiveImpl<T extends IOutItemBase> implements IOutArchive<T> {
    private ArchiveFormat archiveFormat;
    private boolean closed;
    private Boolean headerEncryption;
    private IInArchive inArchive;
    private long jbindingSession;
    private long sevenZipArchiveInstance;
    private boolean trace;
    private PrintStream tracePrintStream;
    private int compressionLevel = -1;
    private int threadCount = -1;

    private void doUpdateItems(ISequentialOutStream iSequentialOutStream, int i10, IOutCreateCallback<?> iOutCreateCallback) throws SevenZipException {
        applyFeatures();
        nativeUpdateItems(iSequentialOutStream, i10, iOutCreateCallback);
    }

    private void ensureOpened() throws SevenZipException {
        if (this.closed) {
            throw new SevenZipException("OutArchive closed");
        }
        IInArchive iInArchive = this.inArchive;
        if (iInArchive != null) {
            ((InArchiveImpl) iInArchive).ensureOpened();
        }
    }

    private native void nativeClose() throws SevenZipException;

    private native void nativeUpdateItems(ISequentialOutStream iSequentialOutStream, int i10, Object obj) throws SevenZipException;

    private final void traceMessage(String str) {
        if (this.trace) {
            PrintStream printStream = this.tracePrintStream;
            if (printStream == null) {
                System.out.println(str);
            } else {
                printStream.println(str);
            }
        }
    }

    protected void applyFeatures() throws SevenZipException {
        ensureOpened();
        int i10 = this.compressionLevel;
        if (i10 != -1) {
            nativeSetLevel(i10);
        }
        Boolean bool = this.headerEncryption;
        if (bool != null) {
            nativeSetHeaderEncryption(bool.booleanValue());
        }
        int i11 = this.threadCount;
        if (i11 >= 0) {
            nativeSetMultithreading(i11);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.closed) {
            return;
        }
        this.closed = true;
        if (this.inArchive != null) {
            return;
        }
        nativeClose();
    }

    @Override // net.sf.sevenzipjbinding.IOutCreateArchive
    public void createArchive(ISequentialOutStream iSequentialOutStream, int i10, IOutCreateCallback<? extends T> iOutCreateCallback) throws SevenZipException {
        ensureOpened();
        doUpdateItems(iSequentialOutStream, i10, iOutCreateCallback);
    }

    protected void featureSetHeaderEncryption(boolean z10) {
        this.headerEncryption = Boolean.valueOf(z10);
    }

    protected void featureSetLevel(int i10) {
        this.compressionLevel = i10;
    }

    protected void featureSetThreadCount(int i10) {
        this.threadCount = i10;
    }

    @Override // net.sf.sevenzipjbinding.IOutCreateArchive, net.sf.sevenzipjbinding.IOutUpdateArchive
    public ArchiveFormat getArchiveFormat() {
        return this.archiveFormat;
    }

    @Override // net.sf.sevenzipjbinding.IOutUpdateArchive
    public IInArchive getConnectedInArchive() {
        return this.inArchive;
    }

    @Override // net.sf.sevenzipjbinding.IOutArchiveBase
    public PrintStream getTracePrintStream() {
        return this.tracePrintStream;
    }

    @Override // net.sf.sevenzipjbinding.IOutArchiveBase
    public boolean isTrace() {
        return this.trace;
    }

    protected native void nativeSetHeaderEncryption(boolean z10) throws SevenZipException;

    protected native void nativeSetLevel(int i10) throws SevenZipException;

    protected native void nativeSetMultithreading(int i10) throws SevenZipException;

    protected native void nativeSetSolidSpec(String str) throws SevenZipException;

    protected void setArchiveFormat(ArchiveFormat archiveFormat) {
        this.archiveFormat = archiveFormat;
    }

    protected void setInArchive(IInArchive iInArchive) {
        this.inArchive = iInArchive;
    }

    @Override // net.sf.sevenzipjbinding.IOutArchiveBase
    public void setTrace(boolean z10) {
        this.trace = z10;
    }

    @Override // net.sf.sevenzipjbinding.IOutArchiveBase
    public void setTracePrintStream(PrintStream printStream) {
        this.tracePrintStream = printStream;
    }

    @Override // net.sf.sevenzipjbinding.IOutUpdateArchive
    public void updateItems(ISequentialOutStream iSequentialOutStream, int i10, IOutCreateCallback<T> iOutCreateCallback) throws SevenZipException {
        ensureOpened();
        doUpdateItems(iSequentialOutStream, i10, iOutCreateCallback);
    }
}
