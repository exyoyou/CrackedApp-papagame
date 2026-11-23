package net.sf.sevenzipjbinding;

import java.io.Closeable;
import net.sf.sevenzipjbinding.IOutItemBase;

/* JADX INFO: loaded from: classes.dex */
public interface IOutCreateArchive<T extends IOutItemBase> extends IOutArchiveBase, Closeable {
    void createArchive(ISequentialOutStream iSequentialOutStream, int i10, IOutCreateCallback<? extends T> iOutCreateCallback) throws SevenZipException;

    ArchiveFormat getArchiveFormat();
}
