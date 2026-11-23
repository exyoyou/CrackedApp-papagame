package de.robv.android.xposed.callbacks;

/* JADX INFO: loaded from: classes8.dex */
public interface IXUnhook<T> {
    T getCallback();

    void unhook();
}
