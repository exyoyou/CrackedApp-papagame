package net.sf.sevenzipjbinding;

/* JADX INFO: loaded from: classes.dex */
public interface IOutCreateArchiveZip extends IOutCreateArchive<IOutItemZip>, IOutFeatureSetLevel {
    void createArchive(IOutStream iOutStream, int i10, IOutCreateCallback<? extends IOutItemZip> iOutCreateCallback) throws SevenZipException;
}
