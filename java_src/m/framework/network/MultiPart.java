package m.framework.network;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class MultiPart extends HTTPPart {
    private ArrayList<HTTPPart> parts = new ArrayList<>();

    public MultiPart append(HTTPPart hTTPPart) throws Throwable {
        this.parts.add(hTTPPart);
        return this;
    }

    @Override // m.framework.network.HTTPPart
    protected InputStream getInputStream() throws Throwable {
        MultiPartInputStream multiPartInputStream = new MultiPartInputStream();
        Iterator<HTTPPart> it2 = this.parts.iterator();
        while (it2.hasNext()) {
            multiPartInputStream.addInputStream(it2.next().getInputStream());
        }
        return multiPartInputStream;
    }

    @Override // m.framework.network.HTTPPart
    protected long length() throws Throwable {
        Iterator<HTTPPart> it2 = this.parts.iterator();
        long length = 0;
        while (it2.hasNext()) {
            length += it2.next().length();
        }
        return length;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        Iterator<HTTPPart> it2 = this.parts.iterator();
        while (it2.hasNext()) {
            sb2.append(it2.next().toString());
        }
        return sb2.toString();
    }
}
