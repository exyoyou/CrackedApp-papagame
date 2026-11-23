package net.sf.sevenzipjbinding;

import net.sf.sevenzipjbinding.IOutItemBase;
import net.sf.sevenzipjbinding.impl.OutItemFactory;

/* JADX INFO: loaded from: classes.dex */
public interface IOutCreateCallback<T extends IOutItemBase> extends IProgress {
    T getItemInformation(int i10, OutItemFactory<T> outItemFactory) throws SevenZipException;

    ISequentialInStream getStream(int i10) throws SevenZipException;

    void setOperationResult(boolean z10) throws SevenZipException;
}
