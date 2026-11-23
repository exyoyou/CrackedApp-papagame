package net.sf.sevenzipjbinding;

import net.sf.sevenzipjbinding.IOutItemBase;

/* JADX INFO: loaded from: classes.dex */
public interface IOutUpdateArchive<T extends IOutItemBase> extends IOutArchiveBase {
    ArchiveFormat getArchiveFormat();

    IInArchive getConnectedInArchive();

    void updateItems(ISequentialOutStream iSequentialOutStream, int i10, IOutCreateCallback<T> iOutCreateCallback) throws SevenZipException;
}
