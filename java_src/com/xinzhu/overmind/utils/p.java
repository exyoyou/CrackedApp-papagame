package com.xinzhu.overmind.utils;

import java.io.Closeable;

/* JADX INFO: loaded from: classes8.dex */
public class p {
    private p() {
    }

    public static void a(Closeable... closeableArr) {
        if (closeableArr == null || closeableArr.length == 0) {
            return;
        }
        for (Closeable closeable : closeableArr) {
            if (closeable != null) {
                try {
                    closeable.close();
                } catch (Exception unused) {
                }
            }
        }
    }

    public static void b(AutoCloseable autoCloseable) {
        try {
            autoCloseable.close();
        } catch (Exception unused) {
        }
    }
}
