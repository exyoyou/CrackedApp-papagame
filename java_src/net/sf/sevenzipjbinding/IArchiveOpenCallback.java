package net.sf.sevenzipjbinding;

/* JADX INFO: loaded from: classes.dex */
public interface IArchiveOpenCallback {
    void setCompleted(Long l10, Long l11) throws SevenZipException;

    void setTotal(Long l10, Long l11) throws SevenZipException;
}
