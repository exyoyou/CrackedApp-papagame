package io.netty.handler.codec.http.multipart;

import com.j256.ormlite.stmt.query.SimpleComparison;
import com.sigmob.sdk.base.mta.PointCategory;
import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufAllocator;
import io.netty.buffer.Unpooled;
import io.netty.channel.ChannelHandlerContext;
import io.netty.handler.codec.DecoderResult;
import io.netty.handler.codec.http.DefaultFullHttpRequest;
import io.netty.handler.codec.http.DefaultHttpContent;
import io.netty.handler.codec.http.EmptyHttpHeaders;
import io.netty.handler.codec.http.FullHttpRequest;
import io.netty.handler.codec.http.HttpConstants;
import io.netty.handler.codec.http.HttpContent;
import io.netty.handler.codec.http.HttpHeaderNames;
import io.netty.handler.codec.http.HttpHeaderValues;
import io.netty.handler.codec.http.HttpHeaders;
import io.netty.handler.codec.http.HttpMethod;
import io.netty.handler.codec.http.HttpRequest;
import io.netty.handler.codec.http.HttpUtil;
import io.netty.handler.codec.http.HttpVersion;
import io.netty.handler.codec.http.LastHttpContent;
import io.netty.handler.stream.ChunkedInput;
import io.netty.util.AsciiString;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.PlatformDependent;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.regex.Pattern;
import x.a;

/* JADX INFO: loaded from: classes.dex */
public class HttpPostRequestEncoder implements ChunkedInput<HttpContent> {
    private static final Map.Entry[] percentEncodings = {new AbstractMap.SimpleImmutableEntry(Pattern.compile("\\*"), "%2A"), new AbstractMap.SimpleImmutableEntry(Pattern.compile("\\+"), "%20"), new AbstractMap.SimpleImmutableEntry(Pattern.compile("~"), "%7E")};
    private final List<InterfaceHttpData> bodyListDatas;
    private final Charset charset;
    private ByteBuf currentBuffer;
    private InterfaceHttpData currentData;
    private FileUpload currentFileUpload;
    private boolean duringMixedMode;
    private final EncoderMode encoderMode;
    private final HttpDataFactory factory;
    private long globalBodySize;
    private long globalProgress;
    private boolean headerFinalized;
    private boolean isChunked;
    private boolean isKey;
    private boolean isLastChunk;
    private boolean isLastChunkSent;
    private final boolean isMultipart;
    private ListIterator<InterfaceHttpData> iterator;
    String multipartDataBoundary;
    final List<InterfaceHttpData> multipartHttpDatas;
    String multipartMixedBoundary;
    private final HttpRequest request;

    public enum EncoderMode {
        RFC1738,
        RFC3986,
        HTML5
    }

    public static class ErrorDataEncoderException extends Exception {
        private static final long serialVersionUID = 5020247425493164465L;

        public ErrorDataEncoderException() {
        }

        public ErrorDataEncoderException(String str) {
            super(str);
        }

        public ErrorDataEncoderException(Throwable th) {
            super(th);
        }

        public ErrorDataEncoderException(String str, Throwable th) {
            super(str, th);
        }
    }

    private static final class WrappedFullHttpRequest extends WrappedHttpRequest implements FullHttpRequest {
        private final HttpContent content;

        @Override // io.netty.buffer.ByteBufHolder
        public ByteBuf content() {
            return this.content.content();
        }

        @Override // io.netty.util.ReferenceCounted
        public int refCnt() {
            return this.content.refCnt();
        }

        @Override // io.netty.util.ReferenceCounted
        public boolean release() {
            return this.content.release();
        }

        @Override // io.netty.handler.codec.http.LastHttpContent
        public HttpHeaders trailingHeaders() {
            HttpContent httpContent = this.content;
            return httpContent instanceof LastHttpContent ? ((LastHttpContent) httpContent).trailingHeaders() : EmptyHttpHeaders.INSTANCE;
        }

        private WrappedFullHttpRequest(HttpRequest httpRequest, HttpContent httpContent) {
            super(httpRequest);
            this.content = httpContent;
        }

        @Override // io.netty.util.ReferenceCounted
        public boolean release(int i10) {
            return this.content.release(i10);
        }

        @Override // io.netty.handler.codec.http.multipart.HttpPostRequestEncoder.WrappedHttpRequest, io.netty.handler.codec.http.HttpRequest, io.netty.handler.codec.http.FullHttpRequest
        public FullHttpRequest setMethod(HttpMethod httpMethod) {
            super.setMethod(httpMethod);
            return this;
        }

        @Override // io.netty.handler.codec.http.multipart.HttpPostRequestEncoder.WrappedHttpRequest, io.netty.handler.codec.http.HttpRequest, io.netty.handler.codec.http.FullHttpRequest
        public FullHttpRequest setUri(String str) {
            super.setUri(str);
            return this;
        }

        @Override // io.netty.handler.codec.http.multipart.HttpPostRequestEncoder.WrappedHttpRequest, io.netty.handler.codec.http.HttpRequest, io.netty.handler.codec.http.FullHttpRequest
        public FullHttpRequest setProtocolVersion(HttpVersion httpVersion) {
            super.setProtocolVersion(httpVersion);
            return this;
        }

        @Override // io.netty.handler.codec.http.LastHttpContent, io.netty.handler.codec.http.HttpContent, io.netty.buffer.ByteBufHolder
        public FullHttpRequest copy() {
            return replace(content().copy());
        }

        @Override // io.netty.handler.codec.http.LastHttpContent, io.netty.handler.codec.http.HttpContent, io.netty.buffer.ByteBufHolder
        public FullHttpRequest duplicate() {
            return replace(content().duplicate());
        }

        @Override // io.netty.handler.codec.http.LastHttpContent, io.netty.handler.codec.http.HttpContent, io.netty.buffer.ByteBufHolder
        public FullHttpRequest replace(ByteBuf byteBuf) {
            DefaultFullHttpRequest defaultFullHttpRequest = new DefaultFullHttpRequest(protocolVersion(), method(), uri(), byteBuf);
            defaultFullHttpRequest.headers().set(headers());
            defaultFullHttpRequest.trailingHeaders().set(trailingHeaders());
            return defaultFullHttpRequest;
        }

        @Override // io.netty.handler.codec.http.LastHttpContent, io.netty.handler.codec.http.HttpContent, io.netty.buffer.ByteBufHolder
        public FullHttpRequest retainedDuplicate() {
            return replace(content().retainedDuplicate());
        }

        @Override // io.netty.util.ReferenceCounted
        public FullHttpRequest retain(int i10) {
            this.content.retain(i10);
            return this;
        }

        @Override // io.netty.util.ReferenceCounted
        public FullHttpRequest touch() {
            this.content.touch();
            return this;
        }

        @Override // io.netty.util.ReferenceCounted
        public FullHttpRequest retain() {
            this.content.retain();
            return this;
        }

        @Override // io.netty.util.ReferenceCounted
        public FullHttpRequest touch(Object obj) {
            this.content.touch(obj);
            return this;
        }
    }

    private static class WrappedHttpRequest implements HttpRequest {
        private final HttpRequest request;

        WrappedHttpRequest(HttpRequest httpRequest) {
            this.request = httpRequest;
        }

        @Override // io.netty.handler.codec.DecoderResultProvider
        public DecoderResult decoderResult() {
            return this.request.decoderResult();
        }

        @Override // io.netty.handler.codec.http.HttpObject
        @Deprecated
        public DecoderResult getDecoderResult() {
            return this.request.getDecoderResult();
        }

        @Override // io.netty.handler.codec.http.HttpRequest
        public HttpMethod getMethod() {
            return this.request.method();
        }

        @Override // io.netty.handler.codec.http.HttpMessage
        public HttpVersion getProtocolVersion() {
            return this.request.protocolVersion();
        }

        @Override // io.netty.handler.codec.http.HttpRequest
        public String getUri() {
            return this.request.uri();
        }

        @Override // io.netty.handler.codec.http.HttpMessage
        public HttpHeaders headers() {
            return this.request.headers();
        }

        @Override // io.netty.handler.codec.http.HttpRequest
        public HttpMethod method() {
            return this.request.method();
        }

        @Override // io.netty.handler.codec.http.HttpMessage
        public HttpVersion protocolVersion() {
            return this.request.protocolVersion();
        }

        @Override // io.netty.handler.codec.DecoderResultProvider
        public void setDecoderResult(DecoderResult decoderResult) {
            this.request.setDecoderResult(decoderResult);
        }

        @Override // io.netty.handler.codec.http.HttpRequest, io.netty.handler.codec.http.FullHttpRequest
        public HttpRequest setMethod(HttpMethod httpMethod) {
            this.request.setMethod(httpMethod);
            return this;
        }

        @Override // io.netty.handler.codec.http.HttpRequest, io.netty.handler.codec.http.FullHttpRequest
        public HttpRequest setUri(String str) {
            this.request.setUri(str);
            return this;
        }

        @Override // io.netty.handler.codec.http.HttpRequest
        public String uri() {
            return this.request.uri();
        }

        @Override // io.netty.handler.codec.http.HttpRequest, io.netty.handler.codec.http.FullHttpRequest
        public HttpRequest setProtocolVersion(HttpVersion httpVersion) {
            this.request.setProtocolVersion(httpVersion);
            return this;
        }
    }

    public HttpPostRequestEncoder(HttpRequest httpRequest, boolean z10) throws ErrorDataEncoderException {
        this(new DefaultHttpDataFactory(16384L), httpRequest, z10, HttpConstants.DEFAULT_CHARSET, EncoderMode.RFC1738);
    }

    private int calculateRemainingSize() {
        ByteBuf byteBuf = this.currentBuffer;
        return byteBuf != null ? HttpPostBodyUtil.chunkSize - byteBuf.readableBytes() : HttpPostBodyUtil.chunkSize;
    }

    private String encodeAttribute(String str, Charset charset) throws ErrorDataEncoderException {
        if (str == null) {
            return "";
        }
        try {
            String strEncode = URLEncoder.encode(str, charset.name());
            if (this.encoderMode == EncoderMode.RFC3986) {
                for (Map.Entry entry : percentEncodings) {
                    strEncode = ((Pattern) entry.getKey()).matcher(strEncode).replaceAll((String) entry.getValue());
                }
            }
            return strEncode;
        } catch (UnsupportedEncodingException e10) {
            throw new ErrorDataEncoderException(charset.name(), e10);
        }
    }

    private HttpContent encodeNextChunkMultipart(int i10) throws ErrorDataEncoderException {
        ByteBuf chunk;
        InterfaceHttpData interfaceHttpData = this.currentData;
        if (interfaceHttpData == null) {
            return null;
        }
        if (interfaceHttpData instanceof InternalAttribute) {
            chunk = ((InternalAttribute) interfaceHttpData).toByteBuf();
            this.currentData = null;
        } else {
            try {
                chunk = ((HttpData) interfaceHttpData).getChunk(i10);
                if (chunk.capacity() == 0) {
                    this.currentData = null;
                    return null;
                }
            } catch (IOException e10) {
                throw new ErrorDataEncoderException(e10);
            }
        }
        ByteBuf byteBuf = this.currentBuffer;
        if (byteBuf == null) {
            this.currentBuffer = chunk;
        } else {
            this.currentBuffer = Unpooled.wrappedBuffer(byteBuf, chunk);
        }
        if (this.currentBuffer.readableBytes() >= 8096) {
            return new DefaultHttpContent(fillByteBuf());
        }
        this.currentData = null;
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x008a  */
    private HttpContent encodeNextChunkUrlEncoded(int i10) throws ErrorDataEncoderException {
        ByteBuf byteBufWrappedBuffer;
        InterfaceHttpData interfaceHttpData = this.currentData;
        if (interfaceHttpData == null) {
            return null;
        }
        if (this.isKey) {
            ByteBuf byteBufWrappedBuffer2 = Unpooled.wrappedBuffer(interfaceHttpData.getName().getBytes());
            this.isKey = false;
            ByteBuf byteBuf = this.currentBuffer;
            if (byteBuf == null) {
                this.currentBuffer = Unpooled.wrappedBuffer(byteBufWrappedBuffer2, Unpooled.wrappedBuffer(SimpleComparison.EQUAL_TO_OPERATION.getBytes()));
            } else {
                this.currentBuffer = Unpooled.wrappedBuffer(byteBuf, byteBufWrappedBuffer2, Unpooled.wrappedBuffer(SimpleComparison.EQUAL_TO_OPERATION.getBytes()));
            }
            i10 -= byteBufWrappedBuffer2.readableBytes() + 1;
            if (this.currentBuffer.readableBytes() >= 8096) {
                return new DefaultHttpContent(fillByteBuf());
            }
        }
        try {
            ByteBuf chunk = ((HttpData) this.currentData).getChunk(i10);
            if (chunk.readableBytes() < i10) {
                this.isKey = true;
                if (this.iterator.hasNext()) {
                    byteBufWrappedBuffer = Unpooled.wrappedBuffer(a.f97576d.getBytes());
                } else {
                    byteBufWrappedBuffer = null;
                }
            } else {
                byteBufWrappedBuffer = null;
            }
            if (chunk.capacity() == 0) {
                this.currentData = null;
                ByteBuf byteBuf2 = this.currentBuffer;
                if (byteBuf2 == null) {
                    if (byteBufWrappedBuffer == null) {
                        return null;
                    }
                    this.currentBuffer = byteBufWrappedBuffer;
                } else if (byteBufWrappedBuffer != null) {
                    this.currentBuffer = Unpooled.wrappedBuffer(byteBuf2, byteBufWrappedBuffer);
                }
                if (this.currentBuffer.readableBytes() >= 8096) {
                    return new DefaultHttpContent(fillByteBuf());
                }
                return null;
            }
            ByteBuf byteBuf3 = this.currentBuffer;
            if (byteBuf3 == null) {
                if (byteBufWrappedBuffer != null) {
                    this.currentBuffer = Unpooled.wrappedBuffer(chunk, byteBufWrappedBuffer);
                } else {
                    this.currentBuffer = chunk;
                }
            } else if (byteBufWrappedBuffer != null) {
                this.currentBuffer = Unpooled.wrappedBuffer(byteBuf3, chunk, byteBufWrappedBuffer);
            } else {
                this.currentBuffer = Unpooled.wrappedBuffer(byteBuf3, chunk);
            }
            if (this.currentBuffer.readableBytes() >= 8096) {
                return new DefaultHttpContent(fillByteBuf());
            }
            this.currentData = null;
            this.isKey = true;
            return null;
        } catch (IOException e10) {
            throw new ErrorDataEncoderException(e10);
        }
    }

    private ByteBuf fillByteBuf() {
        if (this.currentBuffer.readableBytes() > 8096) {
            return this.currentBuffer.readRetainedSlice(HttpPostBodyUtil.chunkSize);
        }
        ByteBuf byteBuf = this.currentBuffer;
        this.currentBuffer = null;
        return byteBuf;
    }

    private static String getNewMultipartDelimiter() {
        return Long.toHexString(PlatformDependent.threadLocalRandom().nextLong());
    }

    private void initDataMultipart() {
        this.multipartDataBoundary = getNewMultipartDelimiter();
    }

    private void initMixedMultipart() {
        this.multipartMixedBoundary = getNewMultipartDelimiter();
    }

    private HttpContent lastChunk() {
        this.isLastChunk = true;
        ByteBuf byteBuf = this.currentBuffer;
        if (byteBuf == null) {
            this.isLastChunkSent = true;
            return LastHttpContent.EMPTY_LAST_CONTENT;
        }
        this.currentBuffer = null;
        return new DefaultHttpContent(byteBuf);
    }

    private HttpContent nextChunk() throws ErrorDataEncoderException {
        if (this.isLastChunk) {
            this.isLastChunkSent = true;
            return LastHttpContent.EMPTY_LAST_CONTENT;
        }
        int iCalculateRemainingSize = calculateRemainingSize();
        if (iCalculateRemainingSize <= 0) {
            return new DefaultHttpContent(fillByteBuf());
        }
        if (this.currentData != null) {
            HttpContent httpContentEncodeNextChunkMultipart = this.isMultipart ? encodeNextChunkMultipart(iCalculateRemainingSize) : encodeNextChunkUrlEncoded(iCalculateRemainingSize);
            if (httpContentEncodeNextChunkMultipart != null) {
                return httpContentEncodeNextChunkMultipart;
            }
            iCalculateRemainingSize = calculateRemainingSize();
        }
        if (!this.iterator.hasNext()) {
            return lastChunk();
        }
        while (iCalculateRemainingSize > 0 && this.iterator.hasNext()) {
            this.currentData = this.iterator.next();
            HttpContent httpContentEncodeNextChunkMultipart2 = this.isMultipart ? encodeNextChunkMultipart(iCalculateRemainingSize) : encodeNextChunkUrlEncoded(iCalculateRemainingSize);
            if (httpContentEncodeNextChunkMultipart2 != null) {
                return httpContentEncodeNextChunkMultipart2;
            }
            iCalculateRemainingSize = calculateRemainingSize();
        }
        return lastChunk();
    }

    public void addBodyAttribute(String str, String str2) throws ErrorDataEncoderException {
        if (str2 == null) {
            str2 = "";
        }
        addBodyHttpData(this.factory.createAttribute(this.request, (String) ObjectUtil.checkNotNull(str, "name"), str2));
    }

    public void addBodyFileUpload(String str, File file, String str2, boolean z10) throws ErrorDataEncoderException {
        addBodyFileUpload(str, file.getName(), file, str2, z10);
    }

    public void addBodyFileUploads(String str, File[] fileArr, String[] strArr, boolean[] zArr) throws ErrorDataEncoderException {
        if (fileArr.length != strArr.length && fileArr.length != zArr.length) {
            throw new IllegalArgumentException("Different array length");
        }
        for (int i10 = 0; i10 < fileArr.length; i10++) {
            addBodyFileUpload(str, fileArr[i10], strArr[i10], zArr[i10]);
        }
    }

    /* JADX WARN: Code duplicated, block: B:69:0x0496  */
    /* JADX WARN: Code duplicated, block: B:71:0x049c  */
    /* JADX WARN: Code duplicated, block: B:72:0x04c4  */
    /* JADX WARN: Instruction removed from duplicated block: B:71:0x049c, please report this as an issue */
    public void addBodyHttpData(InterfaceHttpData interfaceHttpData) throws ErrorDataEncoderException {
        FileUpload fileUpload;
        boolean z10;
        if (this.headerFinalized) {
            throw new ErrorDataEncoderException("Cannot add value once finalized");
        }
        this.bodyListDatas.add((InterfaceHttpData) ObjectUtil.checkNotNull(interfaceHttpData, "data"));
        if (!this.isMultipart) {
            if (interfaceHttpData instanceof Attribute) {
                Attribute attribute = (Attribute) interfaceHttpData;
                try {
                    Attribute attributeCreateAttribute = this.factory.createAttribute(this.request, encodeAttribute(attribute.getName(), this.charset), encodeAttribute(attribute.getValue(), this.charset));
                    this.multipartHttpDatas.add(attributeCreateAttribute);
                    this.globalBodySize += ((long) (attributeCreateAttribute.getName().length() + 1)) + attributeCreateAttribute.length() + 1;
                    return;
                } catch (IOException e10) {
                    throw new ErrorDataEncoderException(e10);
                }
            }
            if (interfaceHttpData instanceof FileUpload) {
                FileUpload fileUpload2 = (FileUpload) interfaceHttpData;
                Attribute attributeCreateAttribute2 = this.factory.createAttribute(this.request, encodeAttribute(fileUpload2.getName(), this.charset), encodeAttribute(fileUpload2.getFilename(), this.charset));
                this.multipartHttpDatas.add(attributeCreateAttribute2);
                this.globalBodySize += ((long) (attributeCreateAttribute2.getName().length() + 1)) + attributeCreateAttribute2.length() + 1;
                return;
            }
            return;
        }
        String str = "\"\r\n";
        String str2 = "=\"";
        if (interfaceHttpData instanceof Attribute) {
            if (this.duringMixedMode) {
                InternalAttribute internalAttribute = new InternalAttribute(this.charset);
                internalAttribute.addValue("\r\n--" + this.multipartMixedBoundary + "--");
                this.multipartHttpDatas.add(internalAttribute);
                this.multipartMixedBoundary = null;
                this.currentFileUpload = null;
                this.duringMixedMode = false;
            }
            InternalAttribute internalAttribute2 = new InternalAttribute(this.charset);
            if (!this.multipartHttpDatas.isEmpty()) {
                internalAttribute2.addValue("\r\n");
            }
            internalAttribute2.addValue("--" + this.multipartDataBoundary + "\r\n");
            Attribute attribute2 = (Attribute) interfaceHttpData;
            internalAttribute2.addValue(((Object) HttpHeaderNames.CONTENT_DISPOSITION) + ": " + ((Object) HttpHeaderValues.FORM_DATA) + "; " + ((Object) HttpHeaderValues.NAME) + "=\"" + attribute2.getName() + "\"\r\n");
            StringBuilder sb2 = new StringBuilder();
            sb2.append((Object) HttpHeaderNames.CONTENT_LENGTH);
            sb2.append(": ");
            sb2.append(attribute2.length());
            sb2.append("\r\n");
            internalAttribute2.addValue(sb2.toString());
            Charset charset = attribute2.getCharset();
            if (charset != null) {
                internalAttribute2.addValue(((Object) HttpHeaderNames.CONTENT_TYPE) + ": text/plain; " + ((Object) HttpHeaderValues.CHARSET) + '=' + charset.name() + "\r\n");
            }
            internalAttribute2.addValue("\r\n");
            this.multipartHttpDatas.add(internalAttribute2);
            this.multipartHttpDatas.add(interfaceHttpData);
            this.globalBodySize += attribute2.length() + ((long) internalAttribute2.size());
            return;
        }
        if (interfaceHttpData instanceof FileUpload) {
            FileUpload fileUpload3 = (FileUpload) interfaceHttpData;
            InternalAttribute internalAttribute3 = new InternalAttribute(this.charset);
            if (!this.multipartHttpDatas.isEmpty()) {
                internalAttribute3.addValue("\r\n");
            }
            String str3 = "\r\n\r\n";
            if (this.duringMixedMode) {
                FileUpload fileUpload4 = this.currentFileUpload;
                if (fileUpload4 == null || !fileUpload4.getName().equals(fileUpload3.getName())) {
                    internalAttribute3.addValue("--" + this.multipartMixedBoundary + "--");
                    this.multipartHttpDatas.add(internalAttribute3);
                    this.multipartMixedBoundary = null;
                    internalAttribute3 = new InternalAttribute(this.charset);
                    internalAttribute3.addValue("\r\n");
                    this.currentFileUpload = fileUpload3;
                    this.duringMixedMode = false;
                    z10 = false;
                } else {
                    str = "\"\r\n";
                    str3 = "\r\n\r\n";
                    z10 = true;
                }
            } else if (this.encoderMode == EncoderMode.HTML5 || (fileUpload = this.currentFileUpload) == null || !fileUpload.getName().equals(fileUpload3.getName())) {
                this.currentFileUpload = fileUpload3;
                this.duringMixedMode = false;
                z10 = false;
            } else {
                initMixedMultipart();
                List<InterfaceHttpData> list = this.multipartHttpDatas;
                InternalAttribute internalAttribute4 = (InternalAttribute) list.get(list.size() - 2);
                this.globalBodySize -= (long) internalAttribute4.size();
                StringBuilder sb3 = new StringBuilder(this.multipartDataBoundary.length() + 139 + (this.multipartMixedBoundary.length() * 2) + fileUpload3.getFilename().length() + fileUpload3.getName().length());
                sb3.append("--");
                sb3.append(this.multipartDataBoundary);
                sb3.append("\r\n");
                AsciiString asciiString = HttpHeaderNames.CONTENT_DISPOSITION;
                sb3.append((CharSequence) asciiString);
                sb3.append(": ");
                sb3.append((CharSequence) HttpHeaderValues.FORM_DATA);
                sb3.append("; ");
                sb3.append((CharSequence) HttpHeaderValues.NAME);
                str2 = "=\"";
                sb3.append(str2);
                sb3.append(fileUpload3.getName());
                sb3.append("\"\r\n");
                sb3.append((CharSequence) HttpHeaderNames.CONTENT_TYPE);
                sb3.append(": ");
                sb3.append((CharSequence) HttpHeaderValues.MULTIPART_MIXED);
                sb3.append("; ");
                sb3.append((CharSequence) HttpHeaderValues.BOUNDARY);
                sb3.append('=');
                sb3.append(this.multipartMixedBoundary);
                sb3.append("\r\n\r\n");
                sb3.append("--");
                sb3.append(this.multipartMixedBoundary);
                sb3.append("\r\n");
                sb3.append((CharSequence) asciiString);
                sb3.append(": ");
                sb3.append((CharSequence) HttpHeaderValues.ATTACHMENT);
                if (!fileUpload3.getFilename().isEmpty()) {
                    sb3.append("; ");
                    sb3.append((CharSequence) HttpHeaderValues.FILENAME);
                    sb3.append(str2);
                    sb3.append(this.currentFileUpload.getFilename());
                    sb3.append('\"');
                }
                sb3.append("\r\n");
                internalAttribute4.setValue(sb3.toString(), 1);
                internalAttribute4.setValue("", 2);
                str3 = "\r\n\r\n";
                str = "\"\r\n";
                this.globalBodySize += (long) internalAttribute4.size();
                z10 = true;
                this.duringMixedMode = true;
            }
            if (z10) {
                internalAttribute3.addValue("--" + this.multipartMixedBoundary + "\r\n");
                if (fileUpload3.getFilename().isEmpty()) {
                    internalAttribute3.addValue(((Object) HttpHeaderNames.CONTENT_DISPOSITION) + ": " + ((Object) HttpHeaderValues.ATTACHMENT) + "\r\n");
                } else {
                    internalAttribute3.addValue(((Object) HttpHeaderNames.CONTENT_DISPOSITION) + ": " + ((Object) HttpHeaderValues.ATTACHMENT) + "; " + ((Object) HttpHeaderValues.FILENAME) + str2 + fileUpload3.getFilename() + str);
                }
            } else {
                String str4 = str;
                internalAttribute3.addValue("--" + this.multipartDataBoundary + "\r\n");
                if (fileUpload3.getFilename().isEmpty()) {
                    internalAttribute3.addValue(((Object) HttpHeaderNames.CONTENT_DISPOSITION) + ": " + ((Object) HttpHeaderValues.FORM_DATA) + "; " + ((Object) HttpHeaderValues.NAME) + str2 + fileUpload3.getName() + str4);
                } else {
                    internalAttribute3.addValue(((Object) HttpHeaderNames.CONTENT_DISPOSITION) + ": " + ((Object) HttpHeaderValues.FORM_DATA) + "; " + ((Object) HttpHeaderValues.NAME) + str2 + fileUpload3.getName() + "\"; " + ((Object) HttpHeaderValues.FILENAME) + str2 + fileUpload3.getFilename() + str4);
                }
            }
            internalAttribute3.addValue(((Object) HttpHeaderNames.CONTENT_LENGTH) + ": " + fileUpload3.length() + "\r\n");
            StringBuilder sb4 = new StringBuilder();
            sb4.append((Object) HttpHeaderNames.CONTENT_TYPE);
            sb4.append(": ");
            sb4.append(fileUpload3.getContentType());
            internalAttribute3.addValue(sb4.toString());
            String contentTransferEncoding = fileUpload3.getContentTransferEncoding();
            if (contentTransferEncoding != null) {
                HttpPostBodyUtil.TransferEncodingMechanism transferEncodingMechanism = HttpPostBodyUtil.TransferEncodingMechanism.BINARY;
                if (contentTransferEncoding.equals(transferEncodingMechanism.value())) {
                    internalAttribute3.addValue("\r\n" + ((Object) HttpHeaderNames.CONTENT_TRANSFER_ENCODING) + ": " + transferEncodingMechanism.value() + str3);
                } else if (fileUpload3.getCharset() != null) {
                    internalAttribute3.addValue("; " + ((Object) HttpHeaderValues.CHARSET) + '=' + fileUpload3.getCharset().name() + str3);
                } else {
                    internalAttribute3.addValue(str3);
                }
            } else if (fileUpload3.getCharset() != null) {
                internalAttribute3.addValue("; " + ((Object) HttpHeaderValues.CHARSET) + '=' + fileUpload3.getCharset().name() + str3);
            } else {
                internalAttribute3.addValue(str3);
            }
            this.multipartHttpDatas.add(internalAttribute3);
            this.multipartHttpDatas.add(interfaceHttpData);
            this.globalBodySize += fileUpload3.length() + ((long) internalAttribute3.size());
        }
    }

    public void cleanFiles() {
        this.factory.cleanRequestHttpData(this.request);
    }

    @Override // io.netty.handler.stream.ChunkedInput
    public void close() throws Exception {
    }

    public HttpRequest finalizeRequest() throws ErrorDataEncoderException {
        if (this.headerFinalized) {
            throw new ErrorDataEncoderException("Header already encoded");
        }
        if (this.isMultipart) {
            InternalAttribute internalAttribute = new InternalAttribute(this.charset);
            if (this.duringMixedMode) {
                internalAttribute.addValue("\r\n--" + this.multipartMixedBoundary + "--");
            }
            internalAttribute.addValue("\r\n--" + this.multipartDataBoundary + "--\r\n");
            this.multipartHttpDatas.add(internalAttribute);
            this.multipartMixedBoundary = null;
            this.currentFileUpload = null;
            this.duringMixedMode = false;
            this.globalBodySize += (long) internalAttribute.size();
        }
        this.headerFinalized = true;
        HttpHeaders httpHeadersHeaders = this.request.headers();
        AsciiString asciiString = HttpHeaderNames.CONTENT_TYPE;
        List<String> all = httpHeadersHeaders.getAll(asciiString);
        List<String> all2 = httpHeadersHeaders.getAll(HttpHeaderNames.TRANSFER_ENCODING);
        if (all != null) {
            httpHeadersHeaders.remove(asciiString);
            for (String str : all) {
                String lowerCase = str.toLowerCase();
                if (!lowerCase.startsWith(HttpHeaderValues.MULTIPART_FORM_DATA.toString()) && !lowerCase.startsWith(HttpHeaderValues.APPLICATION_X_WWW_FORM_URLENCODED.toString())) {
                    httpHeadersHeaders.add(HttpHeaderNames.CONTENT_TYPE, str);
                }
            }
        }
        if (this.isMultipart) {
            httpHeadersHeaders.add(HttpHeaderNames.CONTENT_TYPE, ((Object) HttpHeaderValues.MULTIPART_FORM_DATA) + "; " + ((Object) HttpHeaderValues.BOUNDARY) + '=' + this.multipartDataBoundary);
        } else {
            httpHeadersHeaders.add(HttpHeaderNames.CONTENT_TYPE, HttpHeaderValues.APPLICATION_X_WWW_FORM_URLENCODED);
        }
        long j10 = this.globalBodySize;
        if (!this.isMultipart) {
            j10--;
        }
        this.iterator = this.multipartHttpDatas.listIterator();
        httpHeadersHeaders.set(HttpHeaderNames.CONTENT_LENGTH, String.valueOf(j10));
        if (j10 > 8096 || this.isMultipart) {
            this.isChunked = true;
            if (all2 != null) {
                httpHeadersHeaders.remove(HttpHeaderNames.TRANSFER_ENCODING);
                for (String str2 : all2) {
                    if (!HttpHeaderValues.CHUNKED.contentEqualsIgnoreCase(str2)) {
                        httpHeadersHeaders.add(HttpHeaderNames.TRANSFER_ENCODING, str2);
                    }
                }
            }
            HttpUtil.setTransferEncodingChunked(this.request, true);
            return new WrappedHttpRequest(this.request);
        }
        HttpContent httpContentNextChunk = nextChunk();
        HttpRequest httpRequest = this.request;
        if (!(httpRequest instanceof FullHttpRequest)) {
            return new WrappedFullHttpRequest(httpRequest, httpContentNextChunk);
        }
        FullHttpRequest fullHttpRequest = (FullHttpRequest) httpRequest;
        ByteBuf byteBufContent = httpContentNextChunk.content();
        if (fullHttpRequest.content() != byteBufContent) {
            fullHttpRequest.content().clear().writeBytes(byteBufContent);
            byteBufContent.release();
        }
        return fullHttpRequest;
    }

    public List<InterfaceHttpData> getBodyListAttributes() {
        return this.bodyListDatas;
    }

    public boolean isChunked() {
        return this.isChunked;
    }

    @Override // io.netty.handler.stream.ChunkedInput
    public boolean isEndOfInput() throws Exception {
        return this.isLastChunkSent;
    }

    public boolean isMultipart() {
        return this.isMultipart;
    }

    @Override // io.netty.handler.stream.ChunkedInput
    public long length() {
        return this.isMultipart ? this.globalBodySize : this.globalBodySize - 1;
    }

    @Override // io.netty.handler.stream.ChunkedInput
    public long progress() {
        return this.globalProgress;
    }

    public void setBodyHttpDatas(List<InterfaceHttpData> list) throws ErrorDataEncoderException {
        ObjectUtil.checkNotNull(list, "datas");
        this.globalBodySize = 0L;
        this.bodyListDatas.clear();
        this.currentFileUpload = null;
        this.duringMixedMode = false;
        this.multipartHttpDatas.clear();
        Iterator<InterfaceHttpData> it2 = list.iterator();
        while (it2.hasNext()) {
            addBodyHttpData(it2.next());
        }
    }

    public HttpPostRequestEncoder(HttpDataFactory httpDataFactory, HttpRequest httpRequest, boolean z10) throws ErrorDataEncoderException {
        this(httpDataFactory, httpRequest, z10, HttpConstants.DEFAULT_CHARSET, EncoderMode.RFC1738);
    }

    public void addBodyFileUpload(String str, String str2, File file, String str3, boolean z10) throws ErrorDataEncoderException {
        ObjectUtil.checkNotNull(str, "name");
        ObjectUtil.checkNotNull(file, "file");
        if (str2 == null) {
            str2 = "";
        }
        String str4 = str2;
        if (str3 == null) {
            str3 = z10 ? "text/plain" : "application/octet-stream";
        }
        FileUpload fileUploadCreateFileUpload = this.factory.createFileUpload(this.request, str, str4, str3, !z10 ? HttpPostBodyUtil.TransferEncodingMechanism.BINARY.value() : null, null, file.length());
        try {
            fileUploadCreateFileUpload.setContent(file);
            addBodyHttpData(fileUploadCreateFileUpload);
        } catch (IOException e10) {
            throw new ErrorDataEncoderException(e10);
        }
    }

    public HttpPostRequestEncoder(HttpDataFactory httpDataFactory, HttpRequest httpRequest, boolean z10, Charset charset, EncoderMode encoderMode) throws ErrorDataEncoderException {
        this.isKey = true;
        this.request = (HttpRequest) ObjectUtil.checkNotNull(httpRequest, PointCategory.REQUEST);
        this.charset = (Charset) ObjectUtil.checkNotNull(charset, "charset");
        this.factory = (HttpDataFactory) ObjectUtil.checkNotNull(httpDataFactory, "factory");
        if (!HttpMethod.TRACE.equals(httpRequest.method())) {
            this.bodyListDatas = new ArrayList();
            this.isLastChunk = false;
            this.isLastChunkSent = false;
            this.isMultipart = z10;
            this.multipartHttpDatas = new ArrayList();
            this.encoderMode = encoderMode;
            if (z10) {
                initDataMultipart();
                return;
            }
            return;
        }
        throw new ErrorDataEncoderException("Cannot create a Encoder if request is a TRACE");
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.netty.handler.stream.ChunkedInput
    @Deprecated
    public HttpContent readChunk(ChannelHandlerContext channelHandlerContext) throws Exception {
        return readChunk(channelHandlerContext.alloc());
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.netty.handler.stream.ChunkedInput
    public HttpContent readChunk(ByteBufAllocator byteBufAllocator) throws Exception {
        if (this.isLastChunkSent) {
            return null;
        }
        HttpContent httpContentNextChunk = nextChunk();
        this.globalProgress += (long) httpContentNextChunk.content().readableBytes();
        return httpContentNextChunk;
    }
}
