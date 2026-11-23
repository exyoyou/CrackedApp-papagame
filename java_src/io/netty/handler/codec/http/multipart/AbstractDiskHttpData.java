package io.netty.handler.codec.http.multipart;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.Unpooled;
import io.netty.handler.codec.http.HttpConstants;
import io.netty.util.internal.EmptyArrays;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.charset.Charset;
import net.lingala.zip4j.util.e;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractDiskHttpData extends AbstractHttpData {
    private static final InternalLogger logger = InternalLoggerFactory.getInstance((Class<?>) AbstractDiskHttpData.class);
    private File file;
    private FileChannel fileChannel;
    private boolean isRenamed;

    protected AbstractDiskHttpData(String str, Charset charset, long j10) {
        super(str, charset, j10);
    }

    private static byte[] readFrom(File file) throws IOException {
        long length = file.length();
        if (length > 2147483647L) {
            throw new IllegalArgumentException("File too big to be loaded in memory");
        }
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "r");
        byte[] bArr = new byte[(int) length];
        try {
            FileChannel channel = randomAccessFile.getChannel();
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
            for (int i10 = 0; i10 < length; i10 += channel.read(byteBufferWrap)) {
            }
            randomAccessFile.close();
            return bArr;
        } catch (Throwable th) {
            randomAccessFile.close();
            throw th;
        }
    }

    private File tempFile() throws IOException {
        String postfix;
        String diskFilename = getDiskFilename();
        if (diskFilename != null) {
            postfix = '_' + diskFilename;
        } else {
            postfix = getPostfix();
        }
        File fileCreateTempFile = getBaseDirectory() == null ? File.createTempFile(getPrefix(), postfix) : File.createTempFile(getPrefix(), postfix, new File(getBaseDirectory()));
        if (deleteOnExit()) {
            fileCreateTempFile.deleteOnExit();
        }
        return fileCreateTempFile;
    }

    @Override // io.netty.handler.codec.http.multipart.HttpData
    public void addContent(ByteBuf byteBuf, boolean z10) throws IOException {
        if (byteBuf != null) {
            try {
                int i10 = byteBuf.readableBytes();
                long j10 = i10;
                checkSize(this.size + j10);
                long j11 = this.definedSize;
                if (j11 > 0 && j11 < this.size + j10) {
                    throw new IOException("Out of size: " + (this.size + j10) + " > " + this.definedSize);
                }
                ByteBuffer byteBufferNioBuffer = byteBuf.nioBufferCount() == 1 ? byteBuf.nioBuffer() : byteBuf.copy().nioBuffer();
                if (this.file == null) {
                    this.file = tempFile();
                }
                if (this.fileChannel == null) {
                    this.fileChannel = new RandomAccessFile(this.file, e.f94694e0).getChannel();
                }
                int iWrite = 0;
                while (iWrite < i10) {
                    iWrite += this.fileChannel.write(byteBufferNioBuffer);
                }
                this.size += j10;
                byteBuf.readerIndex(byteBuf.readerIndex() + iWrite);
                byteBuf.release();
            } catch (Throwable th) {
                byteBuf.release();
                throw th;
            }
        }
        if (!z10) {
            ObjectUtil.checkNotNull(byteBuf, "buffer");
            return;
        }
        if (this.file == null) {
            this.file = tempFile();
        }
        if (this.fileChannel == null) {
            this.fileChannel = new RandomAccessFile(this.file, e.f94694e0).getChannel();
        }
        this.fileChannel.force(false);
        this.fileChannel.close();
        this.fileChannel = null;
        setCompleted();
    }

    @Override // io.netty.handler.codec.http.multipart.HttpData
    public void delete() {
        FileChannel fileChannel = this.fileChannel;
        if (fileChannel != null) {
            try {
                fileChannel.force(false);
                this.fileChannel.close();
            } catch (IOException e10) {
                logger.warn("Failed to close a file.", (Throwable) e10);
            }
            this.fileChannel = null;
        }
        if (this.isRenamed) {
            return;
        }
        File file = this.file;
        if (file != null && file.exists() && !this.file.delete()) {
            logger.warn("Failed to delete: {}", this.file);
        }
        this.file = null;
    }

    protected abstract boolean deleteOnExit();

    @Override // io.netty.handler.codec.http.multipart.HttpData
    public byte[] get() throws IOException {
        File file = this.file;
        return file == null ? EmptyArrays.EMPTY_BYTES : readFrom(file);
    }

    protected abstract String getBaseDirectory();

    @Override // io.netty.handler.codec.http.multipart.HttpData
    public ByteBuf getByteBuf() throws IOException {
        File file = this.file;
        return file == null ? Unpooled.EMPTY_BUFFER : Unpooled.wrappedBuffer(readFrom(file));
    }

    @Override // io.netty.handler.codec.http.multipart.HttpData
    public ByteBuf getChunk(int i10) throws IOException {
        if (this.file == null || i10 == 0) {
            return Unpooled.EMPTY_BUFFER;
        }
        if (this.fileChannel == null) {
            this.fileChannel = new RandomAccessFile(this.file, "r").getChannel();
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(i10);
        int i11 = 0;
        while (i11 < i10) {
            int i12 = this.fileChannel.read(byteBufferAllocate);
            if (i12 == -1) {
                this.fileChannel.close();
                this.fileChannel = null;
                break;
            }
            i11 += i12;
        }
        if (i11 == 0) {
            return Unpooled.EMPTY_BUFFER;
        }
        byteBufferAllocate.flip();
        ByteBuf byteBufWrappedBuffer = Unpooled.wrappedBuffer(byteBufferAllocate);
        byteBufWrappedBuffer.readerIndex(0);
        byteBufWrappedBuffer.writerIndex(i11);
        return byteBufWrappedBuffer;
    }

    protected abstract String getDiskFilename();

    @Override // io.netty.handler.codec.http.multipart.HttpData
    public File getFile() throws IOException {
        return this.file;
    }

    protected abstract String getPostfix();

    protected abstract String getPrefix();

    @Override // io.netty.handler.codec.http.multipart.HttpData
    public String getString() throws IOException {
        return getString(HttpConstants.DEFAULT_CHARSET);
    }

    @Override // io.netty.handler.codec.http.multipart.HttpData
    public boolean isInMemory() {
        return false;
    }

    @Override // io.netty.handler.codec.http.multipart.HttpData
    public boolean renameTo(File file) throws Throwable {
        Throwable th;
        RandomAccessFile randomAccessFile;
        RandomAccessFile randomAccessFile2;
        IOException iOException;
        ObjectUtil.checkNotNull(file, "dest");
        File file2 = this.file;
        if (file2 == null) {
            throw new IOException("No file defined so cannot be renamed");
        }
        if (file2.renameTo(file)) {
            this.file = file;
            this.isRenamed = true;
            return true;
        }
        IOException iOException2 = null;
        long jTransferTo = 0;
        try {
            randomAccessFile = new RandomAccessFile(this.file, "r");
            try {
                randomAccessFile2 = new RandomAccessFile(file, e.f94694e0);
                try {
                    FileChannel channel = randomAccessFile.getChannel();
                    FileChannel channel2 = randomAccessFile2.getChannel();
                    long j10 = 8196;
                    while (true) {
                        long j11 = this.size;
                        if (jTransferTo < j11) {
                            long j12 = j10 < j11 - jTransferTo ? j11 - jTransferTo : j10;
                            jTransferTo += channel.transferTo(jTransferTo, j12, channel2);
                            j10 = j12;
                        } else {
                            try {
                                break;
                            } catch (IOException e10) {
                                iOException2 = e10;
                            }
                        }
                    }
                    randomAccessFile.close();
                    try {
                        randomAccessFile2.close();
                    } catch (IOException e11) {
                        iOException = e11;
                        if (iOException2 == null) {
                            iOException2 = iOException;
                        } else {
                            logger.warn("Multiple exceptions detected, the following will be suppressed {}", (Throwable) iOException);
                        }
                    }
                } catch (IOException e12) {
                    e = e12;
                    iOException2 = e;
                    if (randomAccessFile != null) {
                        try {
                            randomAccessFile.close();
                        } catch (IOException e13) {
                            logger.warn("Multiple exceptions detected, the following will be suppressed {}", (Throwable) e13);
                        }
                    }
                    if (randomAccessFile2 != null) {
                        try {
                            randomAccessFile2.close();
                        } catch (IOException e14) {
                            iOException = e14;
                            logger.warn("Multiple exceptions detected, the following will be suppressed {}", (Throwable) iOException);
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (randomAccessFile != null) {
                        try {
                            randomAccessFile.close();
                        } catch (IOException e15) {
                            iOException2 = e15;
                        }
                    }
                    if (randomAccessFile2 == null) {
                        throw th;
                    }
                    try {
                        randomAccessFile2.close();
                        throw th;
                    } catch (IOException e16) {
                        if (iOException2 == null) {
                            throw th;
                        }
                        logger.warn("Multiple exceptions detected, the following will be suppressed {}", (Throwable) e16);
                        throw th;
                    }
                }
            } catch (IOException e17) {
                e = e17;
                randomAccessFile2 = null;
            } catch (Throwable th3) {
                th = th3;
                randomAccessFile2 = null;
            }
        } catch (IOException e18) {
            e = e18;
            randomAccessFile = null;
            randomAccessFile2 = null;
        } catch (Throwable th4) {
            th = th4;
            randomAccessFile = null;
            randomAccessFile2 = null;
        }
        if (iOException2 != null) {
            throw iOException2;
        }
        if (jTransferTo != this.size) {
            if (file.delete()) {
                return false;
            }
            logger.warn("Failed to delete: {}", file);
            return false;
        }
        if (!this.file.delete()) {
            logger.warn("Failed to delete: {}", this.file);
        }
        this.file = file;
        this.isRenamed = true;
        return true;
    }

    @Override // io.netty.handler.codec.http.multipart.HttpData
    public void setContent(ByteBuf byteBuf) throws IOException {
        ObjectUtil.checkNotNull(byteBuf, "buffer");
        try {
            long j10 = byteBuf.readableBytes();
            this.size = j10;
            checkSize(j10);
            long j11 = this.definedSize;
            if (j11 > 0 && j11 < this.size) {
                throw new IOException("Out of size: " + this.size + " > " + this.definedSize);
            }
            if (this.file == null) {
                this.file = tempFile();
            }
            if (byteBuf.readableBytes() == 0) {
                if (!this.file.createNewFile()) {
                    if (this.file.length() == 0) {
                        byteBuf.release();
                        return;
                    } else if (!this.file.delete() || !this.file.createNewFile()) {
                        throw new IOException("file exists already: " + this.file);
                    }
                }
                byteBuf.release();
                return;
            }
            RandomAccessFile randomAccessFile = new RandomAccessFile(this.file, e.f94694e0);
            randomAccessFile.setLength(0L);
            try {
                FileChannel channel = randomAccessFile.getChannel();
                ByteBuffer byteBufferNioBuffer = byteBuf.nioBuffer();
                int iWrite = 0;
                while (iWrite < this.size) {
                    iWrite += channel.write(byteBufferNioBuffer);
                }
                byteBuf.readerIndex(byteBuf.readerIndex() + iWrite);
                channel.force(false);
                randomAccessFile.close();
                setCompleted();
                byteBuf.release();
            } catch (Throwable th) {
                randomAccessFile.close();
                throw th;
            }
        } catch (Throwable th2) {
            byteBuf.release();
            throw th2;
        }
    }

    @Override // io.netty.handler.codec.http.multipart.AbstractHttpData, io.netty.util.AbstractReferenceCounted, io.netty.util.ReferenceCounted
    public HttpData touch() {
        return this;
    }

    @Override // io.netty.handler.codec.http.multipart.HttpData
    public String getString(Charset charset) throws IOException {
        File file = this.file;
        if (file == null) {
            return "";
        }
        return charset == null ? new String(readFrom(file), HttpConstants.DEFAULT_CHARSET.name()) : new String(readFrom(file), charset.name());
    }

    @Override // io.netty.handler.codec.http.multipart.AbstractHttpData, io.netty.util.ReferenceCounted
    public HttpData touch(Object obj) {
        return this;
    }

    @Override // io.netty.handler.codec.http.multipart.HttpData
    public void setContent(File file) throws IOException {
        if (this.file != null) {
            delete();
        }
        this.file = file;
        long length = file.length();
        this.size = length;
        checkSize(length);
        this.isRenamed = true;
        setCompleted();
    }

    @Override // io.netty.handler.codec.http.multipart.HttpData
    public void setContent(InputStream inputStream) throws IOException {
        ObjectUtil.checkNotNull(inputStream, "inputStream");
        if (this.file != null) {
            delete();
        }
        this.file = tempFile();
        RandomAccessFile randomAccessFile = new RandomAccessFile(this.file, e.f94694e0);
        randomAccessFile.setLength(0L);
        try {
            FileChannel channel = randomAccessFile.getChannel();
            byte[] bArr = new byte[16384];
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
            int i10 = inputStream.read(bArr);
            int iWrite = 0;
            while (i10 > 0) {
                byteBufferWrap.position(i10).flip();
                iWrite += channel.write(byteBufferWrap);
                checkSize(iWrite);
                i10 = inputStream.read(bArr);
            }
            channel.force(false);
            randomAccessFile.close();
            long j10 = iWrite;
            this.size = j10;
            long j11 = this.definedSize;
            if (j11 > 0 && j11 < j10) {
                if (!this.file.delete()) {
                    logger.warn("Failed to delete: {}", this.file);
                }
                this.file = null;
                throw new IOException("Out of size: " + this.size + " > " + this.definedSize);
            }
            this.isRenamed = true;
            setCompleted();
        } catch (Throwable th) {
            randomAccessFile.close();
            throw th;
        }
    }
}
