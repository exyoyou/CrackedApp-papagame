package cn.fly.tools.network;

import java.io.ByteArrayInputStream;
import java.io.InputStream;

/* JADX INFO: loaded from: classes7.dex */
public class StringPart extends HTTPPart {

    /* JADX INFO: renamed from: sb, reason: collision with root package name */
    private StringBuilder f2065sb = new StringBuilder();

    public StringPart append(String str) {
        this.f2065sb.append(str);
        return this;
    }

    @Override // cn.fly.tools.network.HTTPPart
    protected InputStream getInputStream() throws Throwable {
        return new ByteArrayInputStream(this.f2065sb.toString().getBytes("utf-8"));
    }

    @Override // cn.fly.tools.network.HTTPPart
    protected long length() throws Throwable {
        return this.f2065sb.toString().getBytes("utf-8").length;
    }

    public String toString() {
        return this.f2065sb.toString();
    }
}
