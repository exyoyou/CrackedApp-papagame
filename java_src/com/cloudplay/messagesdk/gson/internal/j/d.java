package com.cloudplay.messagesdk.gson.internal.j;

import java.util.Date;

/* JADX INFO: loaded from: classes9.dex */
public abstract class d<T extends Date> {

    static class a extends d<Date> {
        a(Class cls) {
            super(cls);
        }
    }

    static {
        new a(Date.class);
    }

    protected d(Class<T> cls) {
    }
}
