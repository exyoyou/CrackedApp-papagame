package net.sf.sevenzipjbinding.simple;

import net.sf.sevenzipjbinding.SevenZipException;

/* JADX INFO: loaded from: classes.dex */
public interface ISimpleInArchive {
    void close() throws SevenZipException;

    ISimpleInArchiveItem getArchiveItem(int i10) throws SevenZipException;

    ISimpleInArchiveItem[] getArchiveItems() throws SevenZipException;

    int getNumberOfItems() throws SevenZipException;
}
