package com.mob.tools.network;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class FilePart extends HTTPPart {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private File f75506a;

    public File getFile() {
        return this.f75506a;
    }

    @Override // com.mob.tools.network.HTTPPart
    public InputStream getInputStream() throws Throwable {
        return new FileInputStream(this.f75506a);
    }

    @Override // com.mob.tools.network.HTTPPart
    public long length() throws Throwable {
        return this.f75506a.length();
    }

    public void setFile(File file) {
        this.f75506a = file;
    }

    public String toString() {
        return this.f75506a.toString();
    }

    public void setFile(String str) {
        this.f75506a = new File(str);
    }
}
