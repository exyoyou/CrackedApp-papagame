package m.framework.network;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class MultiPartInputStream extends InputStream {
    private int curIs;
    private ArrayList<InputStream> isList = new ArrayList<>();

    MultiPartInputStream() {
    }

    private boolean isEmpty() {
        ArrayList<InputStream> arrayList = this.isList;
        return arrayList == null || arrayList.size() <= 0;
    }

    public void addInputStream(InputStream inputStream) throws Throwable {
        this.isList.add(inputStream);
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        if (isEmpty()) {
            return 0;
        }
        return this.isList.get(this.curIs).available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        Iterator<InputStream> it2 = this.isList.iterator();
        while (it2.hasNext()) {
            it2.next().close();
        }
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (isEmpty()) {
            return -1;
        }
        int i10 = this.isList.get(this.curIs).read();
        while (i10 < 0) {
            int i11 = this.curIs + 1;
            this.curIs = i11;
            if (i11 >= this.isList.size()) {
                break;
            }
            i10 = this.isList.get(this.curIs).read();
        }
        return i10;
    }

    @Override // java.io.InputStream
    public long skip(long j10) throws IOException {
        throw new IOException();
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        if (isEmpty()) {
            return -1;
        }
        int i12 = this.isList.get(this.curIs).read(bArr, i10, i11);
        while (i12 < 0) {
            int i13 = this.curIs + 1;
            this.curIs = i13;
            if (i13 >= this.isList.size()) {
                break;
            }
            i12 = this.isList.get(this.curIs).read(bArr, i10, i11);
        }
        return i12;
    }
}
