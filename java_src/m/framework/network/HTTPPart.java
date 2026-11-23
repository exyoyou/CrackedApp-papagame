package m.framework.network;

import java.io.InputStream;
import org.apache.http.entity.InputStreamEntity;

/* JADX INFO: loaded from: classes.dex */
public abstract class HTTPPart {
    protected abstract InputStream getInputStream() throws Throwable;

    public InputStreamEntity getInputStreamEntity() throws Throwable {
        return new InputStreamEntity(getInputStream(), length());
    }

    protected abstract long length() throws Throwable;
}
