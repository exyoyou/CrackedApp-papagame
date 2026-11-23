package m.framework.network;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public class FilePart extends HTTPPart {
    private File file;

    @Override // m.framework.network.HTTPPart
    protected InputStream getInputStream() throws Throwable {
        return new FileInputStream(this.file);
    }

    @Override // m.framework.network.HTTPPart
    protected long length() throws Throwable {
        return this.file.length();
    }

    public void setFile(File file) {
        this.file = file;
    }

    public String toString() {
        return this.file.toString();
    }

    public void setFile(String str) {
        this.file = new File(str);
    }
}
