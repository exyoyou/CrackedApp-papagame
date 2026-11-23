package io.netty.handler.codec.http.multipart;

import com.join.mgps.activity.UploadActivity;
import com.sigmob.sdk.downloader.core.breakpoint.f;
import io.netty.buffer.ByteBuf;
import io.netty.channel.ChannelException;
import io.netty.handler.codec.http.HttpHeaderNames;
import io.netty.handler.codec.http.HttpHeaderValues;
import io.netty.util.internal.ObjectUtil;
import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes.dex */
public class DiskFileUpload extends AbstractDiskHttpData implements FileUpload {
    public static String baseDirectory = null;
    public static boolean deleteOnExitTemporaryFile = true;
    public static final String postfix = ".tmp";
    public static final String prefix = "FUp_";
    private String contentTransferEncoding;
    private String contentType;
    private String filename;

    public DiskFileUpload(String str, String str2, String str3, String str4, Charset charset, long j10) {
        super(str, charset, j10);
        setFilename(str2);
        setContentType(str3);
        setContentTransferEncoding(str4);
    }

    @Override // io.netty.handler.codec.http.multipart.AbstractDiskHttpData
    protected boolean deleteOnExit() {
        return deleteOnExitTemporaryFile;
    }

    public boolean equals(Object obj) {
        return (obj instanceof FileUpload) && FileUploadUtil.equals(this, (FileUpload) obj);
    }

    @Override // io.netty.handler.codec.http.multipart.AbstractDiskHttpData
    protected String getBaseDirectory() {
        return baseDirectory;
    }

    @Override // io.netty.handler.codec.http.multipart.FileUpload
    public String getContentTransferEncoding() {
        return this.contentTransferEncoding;
    }

    @Override // io.netty.handler.codec.http.multipart.FileUpload
    public String getContentType() {
        return this.contentType;
    }

    @Override // io.netty.handler.codec.http.multipart.AbstractDiskHttpData
    protected String getDiskFilename() {
        return UploadActivity.UPLOAD_RECEIVE;
    }

    @Override // io.netty.handler.codec.http.multipart.FileUpload
    public String getFilename() {
        return this.filename;
    }

    @Override // io.netty.handler.codec.http.multipart.InterfaceHttpData
    public InterfaceHttpData.HttpDataType getHttpDataType() {
        return InterfaceHttpData.HttpDataType.FileUpload;
    }

    @Override // io.netty.handler.codec.http.multipart.AbstractDiskHttpData
    protected String getPostfix() {
        return ".tmp";
    }

    @Override // io.netty.handler.codec.http.multipart.AbstractDiskHttpData
    protected String getPrefix() {
        return prefix;
    }

    public int hashCode() {
        return FileUploadUtil.hashCode(this);
    }

    @Override // io.netty.handler.codec.http.multipart.FileUpload
    public void setContentTransferEncoding(String str) {
        this.contentTransferEncoding = str;
    }

    @Override // io.netty.handler.codec.http.multipart.FileUpload
    public void setContentType(String str) {
        this.contentType = (String) ObjectUtil.checkNotNull(str, "contentType");
    }

    @Override // io.netty.handler.codec.http.multipart.FileUpload
    public void setFilename(String str) {
        this.filename = (String) ObjectUtil.checkNotNull(str, f.f80402e);
    }

    public String toString() {
        File file;
        try {
            file = getFile();
        } catch (IOException unused) {
            file = null;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append((Object) HttpHeaderNames.CONTENT_DISPOSITION);
        sb2.append(": ");
        sb2.append((Object) HttpHeaderValues.FORM_DATA);
        sb2.append("; ");
        sb2.append((Object) HttpHeaderValues.NAME);
        sb2.append("=\"");
        sb2.append(getName());
        sb2.append("\"; ");
        sb2.append((Object) HttpHeaderValues.FILENAME);
        sb2.append("=\"");
        sb2.append(this.filename);
        sb2.append("\"\r\n");
        sb2.append((Object) HttpHeaderNames.CONTENT_TYPE);
        sb2.append(": ");
        sb2.append(this.contentType);
        String str = "\r\n";
        if (getCharset() != null) {
            str = "; " + ((Object) HttpHeaderValues.CHARSET) + '=' + getCharset().name() + "\r\n";
        }
        sb2.append(str);
        sb2.append((Object) HttpHeaderNames.CONTENT_LENGTH);
        sb2.append(": ");
        sb2.append(length());
        sb2.append("\r\nCompleted: ");
        sb2.append(isCompleted());
        sb2.append("\r\nIsInMemory: ");
        sb2.append(isInMemory());
        sb2.append("\r\nRealFile: ");
        sb2.append(file != null ? file.getAbsolutePath() : "null");
        sb2.append(" DefaultDeleteAfter: ");
        sb2.append(deleteOnExitTemporaryFile);
        return sb2.toString();
    }

    @Override // java.lang.Comparable
    public int compareTo(InterfaceHttpData interfaceHttpData) {
        if (interfaceHttpData instanceof FileUpload) {
            return compareTo((FileUpload) interfaceHttpData);
        }
        throw new ClassCastException("Cannot compare " + getHttpDataType() + " with " + interfaceHttpData.getHttpDataType());
    }

    @Override // io.netty.handler.codec.http.multipart.HttpData, io.netty.buffer.ByteBufHolder
    public FileUpload copy() {
        ByteBuf byteBufContent = content();
        return replace(byteBufContent != null ? byteBufContent.copy() : null);
    }

    @Override // io.netty.handler.codec.http.multipart.HttpData, io.netty.buffer.ByteBufHolder
    public FileUpload duplicate() {
        ByteBuf byteBufContent = content();
        return replace(byteBufContent != null ? byteBufContent.duplicate() : null);
    }

    @Override // io.netty.handler.codec.http.multipart.HttpData, io.netty.buffer.ByteBufHolder
    public FileUpload replace(ByteBuf byteBuf) {
        DiskFileUpload diskFileUpload = new DiskFileUpload(getName(), getFilename(), getContentType(), getContentTransferEncoding(), getCharset(), this.size);
        if (byteBuf != null) {
            try {
                diskFileUpload.setContent(byteBuf);
            } catch (IOException e10) {
                throw new ChannelException(e10);
            }
        }
        return diskFileUpload;
    }

    @Override // io.netty.handler.codec.http.multipart.HttpData, io.netty.buffer.ByteBufHolder
    public FileUpload retainedDuplicate() {
        ByteBuf byteBufContent = content();
        if (byteBufContent != null) {
            ByteBuf byteBufRetainedDuplicate = byteBufContent.retainedDuplicate();
            try {
                return replace(byteBufRetainedDuplicate);
            } catch (Throwable th) {
                byteBufRetainedDuplicate.release();
                throw th;
            }
        }
        return replace((ByteBuf) null);
    }

    public int compareTo(FileUpload fileUpload) {
        return FileUploadUtil.compareTo(this, fileUpload);
    }

    @Override // io.netty.handler.codec.http.multipart.AbstractHttpData, io.netty.util.AbstractReferenceCounted, io.netty.util.ReferenceCounted
    public FileUpload retain(int i10) {
        super.retain(i10);
        return this;
    }

    @Override // io.netty.handler.codec.http.multipart.AbstractDiskHttpData, io.netty.handler.codec.http.multipart.AbstractHttpData, io.netty.util.AbstractReferenceCounted, io.netty.util.ReferenceCounted
    public FileUpload touch() {
        super.touch();
        return this;
    }

    @Override // io.netty.handler.codec.http.multipart.AbstractHttpData, io.netty.util.AbstractReferenceCounted, io.netty.util.ReferenceCounted
    public FileUpload retain() {
        super.retain();
        return this;
    }

    @Override // io.netty.handler.codec.http.multipart.AbstractDiskHttpData, io.netty.handler.codec.http.multipart.AbstractHttpData, io.netty.util.ReferenceCounted
    public FileUpload touch(Object obj) {
        super.touch(obj);
        return this;
    }
}
