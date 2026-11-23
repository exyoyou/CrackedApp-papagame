package m.framework.network;

import java.io.ByteArrayInputStream;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public class StringPart extends HTTPPart {

    /* JADX INFO: renamed from: sb, reason: collision with root package name */
    private StringBuilder f94147sb = new StringBuilder();

    public StringPart append(String str) {
        this.f94147sb.append(str);
        return this;
    }

    @Override // m.framework.network.HTTPPart
    protected InputStream getInputStream() throws Throwable {
        return new ByteArrayInputStream(this.f94147sb.toString().getBytes("utf-8"));
    }

    @Override // m.framework.network.HTTPPart
    protected long length() throws Throwable {
        return this.f94147sb.toString().getBytes("utf-8").length;
    }

    public String toString() {
        return this.f94147sb.toString();
    }
}
