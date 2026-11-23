package net.sf.sevenzipjbinding.util;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;
import net.sf.sevenzipjbinding.IInStream;
import net.sf.sevenzipjbinding.IOutStream;
import net.sf.sevenzipjbinding.SevenZipException;

/* JADX INFO: loaded from: classes.dex */
public class ByteArrayStream implements IInStream, IOutStream {
    private static final int INPUT_STREAM_READ_BUFFER_SIZE = 16384;
    private static final int MAX_CHUNK_SIZE = 1048576;
    private final List<byte[]> chunkList;
    private int currentChunkIndex;
    private int currentPosition;
    private int currentPositionInChunk;
    private final int initialSize;
    private final int maxSize;
    private int seekToPosition;
    private int size;

    public ByteArrayStream(byte[] bArr, boolean z10, int i10) {
        this(1024, i10);
        setBytes(bArr, z10);
    }

    private void allocateNextChunk(int i10) {
        int i11 = this.currentChunkIndex;
        if (i11 == -1 || (i11 == this.chunkList.size() - 1 && this.chunkList.get(this.currentChunkIndex).length == this.currentPositionInChunk)) {
            this.currentPositionInChunk = 0;
            this.currentChunkIndex++;
        }
        if (this.size >= this.maxSize) {
            throw new RuntimeException("Maximal size of the byte array stream was reached. (Max size = " + this.maxSize + ")");
        }
        int size = this.chunkList.size() - 1;
        int length = size == -1 ? this.initialSize : this.chunkList.get(size).length << 1;
        if (length < 0 || length > 1048576) {
            length = 1048576;
        }
        int i12 = this.size;
        int i13 = i12 + length;
        int i14 = this.maxSize;
        if (i13 > i14) {
            length = i14 - i12;
        }
        if (i10 == -1 || length >= i10) {
            i10 = length;
        } else if (i12 + i10 >= i14) {
            throw new RuntimeException("Maximal size of the byte array stream was reached. (Max size = " + this.maxSize + ")");
        }
        this.chunkList.add(new byte[i10]);
    }

    private void endWriting() {
        if (this.size == this.currentPosition && this.currentPositionInChunk == 0) {
            int i10 = this.currentChunkIndex;
            if (i10 == 0) {
                init();
                return;
            }
            List<byte[]> list = this.chunkList;
            this.currentChunkIndex = i10 - 1;
            list.remove(i10);
            this.currentPositionInChunk = this.chunkList.get(this.currentChunkIndex).length;
        }
    }

    private void init() {
        this.chunkList.clear();
        this.currentPosition = 0;
        this.currentPositionInChunk = 0;
        this.currentChunkIndex = -1;
        this.size = 0;
        this.seekToPosition = -1;
    }

    private void performDelayedSeek() {
        int i10 = this.seekToPosition;
        if (i10 == -1) {
            return;
        }
        if (this.currentPosition == i10) {
            this.seekToPosition = -1;
            return;
        }
        if (i10 > this.size) {
            setSize(i10, true);
            this.seekToPosition = -1;
            return;
        }
        int i11 = 0;
        for (int i12 = 0; i12 < this.chunkList.size(); i12++) {
            int length = this.chunkList.get(i12).length;
            i11 += length;
            int i13 = this.seekToPosition;
            if (i11 > i13) {
                this.currentChunkIndex = i12;
                this.currentPositionInChunk = length - (i11 - i13);
                this.currentPosition = i13;
                this.seekToPosition = -1;
                return;
            }
        }
        int size = this.chunkList.size() - 1;
        this.currentChunkIndex = size;
        this.currentPositionInChunk = this.chunkList.get(size).length;
        this.currentPosition = this.size;
        this.seekToPosition = -1;
    }

    private void startWriting() {
        int i10 = this.currentChunkIndex;
        if (i10 == -1 || this.currentPositionInChunk >= this.chunkList.get(i10).length) {
            allocateNextChunk(-1);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
    }

    public synchronized byte[] getBytes() {
        byte[] bArr;
        bArr = new byte[this.size];
        int i10 = 0;
        for (byte[] bArr2 : this.chunkList) {
            int length = bArr2.length + i10;
            int i11 = this.size;
            int length2 = length > i11 ? i11 - i10 : bArr2.length;
            System.arraycopy(bArr2, 0, bArr, i10, length2);
            i10 += length2;
        }
        return bArr;
    }

    public synchronized int getCurrentPosition() {
        int i10 = this.seekToPosition;
        if (i10 != -1) {
            return i10;
        }
        return this.currentPosition;
    }

    public InputStream getDetachedInputStream() {
        throw new IllegalStateException("Not implemented");
    }

    public InputStream getInputStream() {
        throw new IllegalStateException("Not implemented");
    }

    public OutputStream getOutputStream() {
        throw new IllegalStateException("Not implemented");
    }

    public synchronized int getSize() {
        return this.size;
    }

    public synchronized boolean isEOF() {
        return getCurrentPosition() >= this.size;
    }

    @Override // net.sf.sevenzipjbinding.ISequentialInStream
    public int read(byte[] bArr) throws SevenZipException {
        return read(bArr, 0, bArr.length);
    }

    public synchronized void rewind() {
        this.seekToPosition = 0;
    }

    @Override // net.sf.sevenzipjbinding.ISeekableStream
    public synchronized long seek(long j10, int i10) throws SevenZipException {
        int i11;
        try {
            if (i10 != 0) {
                if (i10 == 1) {
                    i11 = this.seekToPosition;
                    if (i11 == -1) {
                        i11 = this.currentPosition;
                    }
                } else {
                    if (i10 != 2) {
                        throw new SevenZipException("Seek: unknown origin: " + i10);
                    }
                    i11 = this.size;
                }
                j10 += (long) i11;
            }
            if (j10 > this.maxSize) {
                throw new RuntimeException("Maximal size of the byte array stream was reached by seek to " + j10 + ", maximal size is " + this.maxSize + " bytes");
            }
            this.seekToPosition = (int) j10;
        } catch (Throwable th) {
            throw th;
        }
        return j10;
    }

    public synchronized void setBytes(byte[] bArr, boolean z10) {
        init();
        int length = bArr.length;
        if (z10) {
            byte[] bArr2 = new byte[length];
            System.arraycopy(bArr, 0, bArr2, 0, length);
            bArr = bArr2;
        }
        this.chunkList.add(bArr);
        this.currentChunkIndex = 0;
        this.currentPosition = 0;
        this.currentPositionInChunk = 0;
        this.size = length;
    }

    @Override // net.sf.sevenzipjbinding.IOutStream
    public synchronized void setSize(long j10) {
        setSize(j10, false);
    }

    public synchronized void truncate() {
        init();
    }

    @Override // net.sf.sevenzipjbinding.ISequentialOutStream
    public int write(byte[] bArr) {
        return write(bArr, 0, bArr.length);
    }

    public synchronized void writeFromInputStream(InputStream inputStream, boolean z10) throws IOException {
        performDelayedSeek();
        if (this.size == 0) {
            init();
            int iAvailable = inputStream.available();
            if (iAvailable > this.maxSize) {
                throw new RuntimeException("Maximal size of the byte array stream was reached. (Max size = " + this.maxSize + ")");
            }
            if (iAvailable > this.initialSize) {
                byte[] bArr = new byte[iAvailable];
                int i10 = inputStream.read(bArr);
                if (i10 == -1) {
                    return;
                }
                this.size = i10;
                this.currentPosition = i10;
                this.currentPositionInChunk = i10;
                this.currentChunkIndex = 0;
                this.chunkList.add(bArr);
            }
            startWriting();
            while (true) {
                byte[] bArr2 = this.chunkList.get(this.currentChunkIndex);
                int i11 = this.currentPositionInChunk;
                int i12 = inputStream.read(bArr2, i11, bArr2.length - i11);
                if (i12 == -1) {
                    break;
                }
                this.currentPosition += i12;
                int i13 = this.currentPositionInChunk + i12;
                this.currentPositionInChunk = i13;
                if (bArr2.length - i13 == 0) {
                    allocateNextChunk(-1);
                }
            }
            this.size = this.currentPosition;
            endWriting();
        } else {
            byte[] bArr3 = new byte[16384];
            while (true) {
                int i14 = inputStream.read(bArr3);
                if (i14 == -1) {
                    break;
                } else {
                    write(bArr3, 0, i14);
                }
            }
        }
        if (z10) {
            inputStream.close();
        }
    }

    public synchronized void writeToOutputStream(OutputStream outputStream, boolean z10) throws IOException {
        try {
            int i10 = 0;
            for (byte[] bArr : this.chunkList) {
                int length = bArr.length + i10;
                int i11 = this.size;
                int length2 = length > i11 ? i11 - i10 : bArr.length;
                outputStream.write(bArr, 0, length2);
                i10 += length2;
            }
            if (z10) {
                try {
                    outputStream.close();
                } catch (Exception unused) {
                }
            }
        } catch (Throwable th) {
            if (z10) {
                try {
                    outputStream.close();
                } catch (Exception unused2) {
                }
            }
            throw th;
        }
    }

    public synchronized int read(byte[] bArr, int i10, int i11) {
        if (i10 >= 0 && i11 >= 0) {
            if (bArr.length >= i10 + i11) {
                if (this.seekToPosition > this.size) {
                    return 0;
                }
                performDelayedSeek();
                int i12 = this.currentPosition;
                int i13 = i12 + i11;
                int i14 = this.size;
                if (i13 > i14) {
                    i11 = i14 - i12;
                }
                int i15 = i11;
                while (i15 > 0) {
                    int length = this.chunkList.get(this.currentChunkIndex).length;
                    int i16 = length - this.currentPositionInChunk;
                    if (i15 <= i16) {
                        i16 = i15;
                    }
                    System.arraycopy(this.chunkList.get(this.currentChunkIndex), this.currentPositionInChunk, bArr, i10, i16);
                    i10 += i16;
                    int i17 = this.currentPositionInChunk + i16;
                    this.currentPositionInChunk = i17;
                    i15 -= i16;
                    if (i17 >= length && this.currentChunkIndex < this.chunkList.size() - 1) {
                        int i18 = this.currentChunkIndex + 1;
                        this.currentChunkIndex = i18;
                        this.currentPositionInChunk = 0;
                        int length2 = this.chunkList.get(i18).length;
                    }
                }
                this.currentPosition += i11;
                return i11;
            }
        }
        throw new IllegalStateException("Invalid start position (" + i10 + ") and length (" + i11 + ")");
    }

    public synchronized int write(byte[] bArr, int i10, int i11) {
        if (i10 >= 0 && i11 >= 0) {
            if (bArr.length >= i10 + i11) {
                if (i11 == 0) {
                    return 0;
                }
                performDelayedSeek();
                startWriting();
                do {
                    byte[] bArr2 = this.chunkList.get(this.currentChunkIndex);
                    int length = bArr2.length;
                    int i12 = this.currentPositionInChunk;
                    int i13 = length - i12;
                    if (i13 >= i11) {
                        i13 = i11;
                    }
                    System.arraycopy(bArr, i10, bArr2, i12, i13);
                    int i14 = this.currentPositionInChunk + i13;
                    this.currentPositionInChunk = i14;
                    this.currentPosition += i13;
                    i10 += i13;
                    i11 -= i13;
                    if (i14 >= bArr2.length) {
                        this.currentPositionInChunk = 0;
                        int i15 = this.currentChunkIndex + 1;
                        this.currentChunkIndex = i15;
                        if (i15 >= this.chunkList.size()) {
                            allocateNextChunk(-1);
                        }
                    }
                } while (i11 > 0);
                int i16 = this.currentPosition;
                if (i16 > this.size) {
                    this.size = i16;
                }
                endWriting();
                return bArr.length;
            }
        }
        throw new IllegalStateException("Invalid start position (" + i10 + ") and length (" + i11 + ")");
    }

    public ByteArrayStream(byte[] bArr, boolean z10) {
        this(1024 > bArr.length ? bArr.length : 1024, bArr.length);
        setBytes(bArr, z10);
    }

    private synchronized void setSize(long j10, boolean z10) {
        try {
            if (j10 == 0) {
                truncate();
                return;
            }
            if (j10 <= this.maxSize) {
                int i10 = this.size;
                if (j10 > i10) {
                    if (i10 == 0) {
                        int i11 = (int) j10;
                        this.chunkList.add(new byte[i11]);
                        this.currentChunkIndex = 0;
                        this.size = i11;
                    }
                    int i12 = (int) (j10 - ((long) this.size));
                    int length = 0;
                    for (int i13 = 0; i13 < this.chunkList.size(); i13++) {
                        length += this.chunkList.get(i13).length;
                    }
                    int i14 = this.size;
                    int i15 = length - i14;
                    if (i15 < i12) {
                        this.size = i14 + i15;
                        int i16 = i12 - i15;
                        allocateNextChunk(i16);
                        if (z10) {
                            this.currentPositionInChunk = i16;
                        }
                    } else if (z10) {
                        List<byte[]> list = this.chunkList;
                        this.currentPositionInChunk = (list.get(list.size() - 1).length - i15) + i12;
                    }
                    if (z10) {
                        this.currentChunkIndex = this.chunkList.size() - 1;
                        this.currentPosition = (int) j10;
                    }
                    this.size = (int) j10;
                }
                if (j10 < this.size) {
                    int length2 = 0;
                    for (int i17 = 0; i17 < this.chunkList.size(); i17++) {
                        length2 += this.chunkList.get(i17).length;
                        if (length2 >= j10) {
                            for (int size = this.chunkList.size() - 1; size > i17; size--) {
                                this.chunkList.remove(size);
                            }
                            int i18 = this.seekToPosition;
                            if (i18 != -1 && i18 > j10) {
                                this.seekToPosition = (int) j10;
                            } else if (this.currentPosition > j10) {
                                int i19 = (int) j10;
                                this.currentPosition = i19;
                                this.currentPositionInChunk = (i19 - length2) + this.chunkList.get(i17).length;
                                this.currentChunkIndex = i17;
                            }
                            this.size = (int) j10;
                        }
                    }
                }
                return;
            }
            throw new RuntimeException("Maximal size of the byte array stream was reached by setSize(" + j10 + "). Maximal size is " + this.maxSize + " bytes");
        } catch (Throwable th) {
            throw th;
        }
    }

    public ByteArrayStream(int i10) {
        this(1024, i10);
    }

    public ByteArrayStream(int i10, int i11) {
        this.chunkList = new ArrayList();
        this.initialSize = i10;
        if (i11 < 0) {
            throw new IllegalStateException("Maximal size of the byte array stream should be >0");
        }
        if (i10 >= 0) {
            this.maxSize = i11;
            init();
            return;
        }
        throw new IllegalStateException("Initial size of the byte array stream should be >0");
    }
}
