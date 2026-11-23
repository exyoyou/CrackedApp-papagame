package com.mob.tools.network;

import java.io.ByteArrayInputStream;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public class StringPart extends HTTPPart {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private StringBuilder f75521a = new StringBuilder();

    public StringPart append(String str) {
        this.f75521a.append(str);
        return this;
    }

    @Override // com.mob.tools.network.HTTPPart
    protected InputStream getInputStream() throws Throwable {
        return new ByteArrayInputStream(this.f75521a.toString().getBytes("utf-8"));
    }

    @Override // com.mob.tools.network.HTTPPart
    protected long length() throws Throwable {
        return this.f75521a.toString().getBytes("utf-8").length;
    }

    public String toString() {
        return this.f75521a.toString();
    }
}
