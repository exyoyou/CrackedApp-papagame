package io.netty.handler.codec.http.multipart;

import com.sigmob.sdk.base.mta.PointCategory;
import io.netty.buffer.ByteBuf;
import io.netty.buffer.Unpooled;
import io.netty.handler.codec.http.HttpConstants;
import io.netty.handler.codec.http.HttpContent;
import io.netty.handler.codec.http.HttpRequest;
import io.netty.handler.codec.http.LastHttpContent;
import io.netty.handler.codec.http.QueryStringDecoder;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.PlatformDependent;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes.dex */
public class HttpPostStandardRequestDecoder implements InterfaceHttpPostRequestDecoder {
    private final List<InterfaceHttpData> bodyListHttpData;
    private int bodyListHttpDataRank;
    private final Map<String, List<InterfaceHttpData>> bodyMapHttpData;
    private final Charset charset;
    private Attribute currentAttribute;
    private HttpPostRequestDecoder.MultiPartStatus currentStatus;
    private boolean destroyed;
    private int discardThreshold;
    private final HttpDataFactory factory;
    private boolean isLastChunk;
    private final HttpRequest request;
    private ByteBuf undecodedChunk;

    /* JADX INFO: renamed from: io.netty.handler.codec.http.multipart.HttpPostStandardRequestDecoder$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$io$netty$handler$codec$http$multipart$HttpPostRequestDecoder$MultiPartStatus;

        static {
            int[] iArr = new int[HttpPostRequestDecoder.MultiPartStatus.values().length];
            $SwitchMap$io$netty$handler$codec$http$multipart$HttpPostRequestDecoder$MultiPartStatus = iArr;
            try {
                iArr[HttpPostRequestDecoder.MultiPartStatus.DISPOSITION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$http$multipart$HttpPostRequestDecoder$MultiPartStatus[HttpPostRequestDecoder.MultiPartStatus.FIELD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public HttpPostStandardRequestDecoder(HttpRequest httpRequest) {
        this(new DefaultHttpDataFactory(16384L), httpRequest, HttpConstants.DEFAULT_CHARSET);
    }

    private void checkDestroyed() {
        if (this.destroyed) {
            throw new IllegalStateException(HttpPostStandardRequestDecoder.class.getSimpleName() + " was destroyed already");
        }
    }

    private static String decodeAttribute(String str, Charset charset) {
        try {
            return QueryStringDecoder.decodeComponent(str, charset);
        } catch (IllegalArgumentException e10) {
            throw new HttpPostRequestDecoder.ErrorDataDecoderException("Bad string: '" + str + '\'', e10);
        }
    }

    private void parseBody() {
        HttpPostRequestDecoder.MultiPartStatus multiPartStatus = this.currentStatus;
        if (multiPartStatus != HttpPostRequestDecoder.MultiPartStatus.PREEPILOGUE && multiPartStatus != HttpPostRequestDecoder.MultiPartStatus.EPILOGUE) {
            parseBodyAttributes();
        } else if (this.isLastChunk) {
            this.currentStatus = HttpPostRequestDecoder.MultiPartStatus.EPILOGUE;
        }
    }

    private void parseBodyAttributes() {
        Attribute attribute;
        Attribute attribute2;
        if (!this.undecodedChunk.hasArray()) {
            parseBodyAttributesStandard();
            return;
        }
        HttpPostBodyUtil.SeekAheadOptimize seekAheadOptimize = new HttpPostBodyUtil.SeekAheadOptimize(this.undecodedChunk);
        int i10 = this.undecodedChunk.readerIndex();
        if (this.currentStatus == HttpPostRequestDecoder.MultiPartStatus.NOTSTARTED) {
            this.currentStatus = HttpPostRequestDecoder.MultiPartStatus.DISPOSITION;
        }
        while (true) {
            int i11 = i10;
            while (true) {
                try {
                    int i12 = seekAheadOptimize.pos;
                    boolean z10 = true;
                    if (i12 < seekAheadOptimize.limit) {
                        byte[] bArr = seekAheadOptimize.bytes;
                        seekAheadOptimize.pos = i12 + 1;
                        char c10 = (char) (bArr[i12] & 255);
                        i10++;
                        int i13 = AnonymousClass1.$SwitchMap$io$netty$handler$codec$http$multipart$HttpPostRequestDecoder$MultiPartStatus[this.currentStatus.ordinal()];
                        if (i13 != 1) {
                            if (i13 != 2) {
                                seekAheadOptimize.setReadPosition(0);
                            } else if (c10 == '&') {
                                this.currentStatus = HttpPostRequestDecoder.MultiPartStatus.DISPOSITION;
                                setFinalBuffer(this.undecodedChunk.copy(i11, (i10 - 1) - i11));
                            } else if (c10 == '\r') {
                                int i14 = seekAheadOptimize.pos;
                                int i15 = seekAheadOptimize.limit;
                                if (i14 < i15) {
                                    byte[] bArr2 = seekAheadOptimize.bytes;
                                    seekAheadOptimize.pos = i14 + 1;
                                    i10++;
                                    if (((char) (bArr2[i14] & 255)) != '\n') {
                                        seekAheadOptimize.setReadPosition(0);
                                        throw new HttpPostRequestDecoder.ErrorDataDecoderException("Bad end of line");
                                    }
                                    this.currentStatus = HttpPostRequestDecoder.MultiPartStatus.PREEPILOGUE;
                                    seekAheadOptimize.setReadPosition(0);
                                    setFinalBuffer(this.undecodedChunk.copy(i11, (i10 - 2) - i11));
                                    i11 = i10;
                                } else if (i15 > 0) {
                                    i10--;
                                }
                            } else if (c10 == '\n') {
                                this.currentStatus = HttpPostRequestDecoder.MultiPartStatus.PREEPILOGUE;
                                seekAheadOptimize.setReadPosition(0);
                                setFinalBuffer(this.undecodedChunk.copy(i11, (i10 - 1) - i11));
                                i11 = i10;
                            }
                            z10 = false;
                        } else if (c10 == '=') {
                            this.currentStatus = HttpPostRequestDecoder.MultiPartStatus.FIELD;
                            this.currentAttribute = this.factory.createAttribute(this.request, decodeAttribute(this.undecodedChunk.toString(i11, (i10 - 1) - i11, this.charset), this.charset));
                        } else if (c10 == '&') {
                            this.currentStatus = HttpPostRequestDecoder.MultiPartStatus.DISPOSITION;
                            Attribute attributeCreateAttribute = this.factory.createAttribute(this.request, decodeAttribute(this.undecodedChunk.toString(i11, (i10 - 1) - i11, this.charset), this.charset));
                            this.currentAttribute = attributeCreateAttribute;
                            attributeCreateAttribute.setValue("");
                            addHttpData(this.currentAttribute);
                            this.currentAttribute = null;
                        }
                    }
                    if (!this.isLastChunk || (attribute2 = this.currentAttribute) == null) {
                        if (z10 && (attribute = this.currentAttribute) != null && this.currentStatus == HttpPostRequestDecoder.MultiPartStatus.FIELD) {
                            attribute.addContent(this.undecodedChunk.copy(i11, i10 - i11), false);
                        }
                        this.undecodedChunk.readerIndex(i11);
                        return;
                    }
                    if (i10 > i11) {
                        setFinalBuffer(this.undecodedChunk.copy(i11, i10 - i11));
                    } else if (!attribute2.isCompleted()) {
                        setFinalBuffer(Unpooled.EMPTY_BUFFER);
                    }
                    try {
                        this.currentStatus = HttpPostRequestDecoder.MultiPartStatus.EPILOGUE;
                    } catch (HttpPostRequestDecoder.ErrorDataDecoderException e10) {
                        e = e10;
                        i11 = i10;
                        this.undecodedChunk.readerIndex(i11);
                        throw e;
                    } catch (IOException e11) {
                        e = e11;
                        i11 = i10;
                        this.undecodedChunk.readerIndex(i11);
                        throw new HttpPostRequestDecoder.ErrorDataDecoderException(e);
                    } catch (IllegalArgumentException e12) {
                        e = e12;
                        i11 = i10;
                        this.undecodedChunk.readerIndex(i11);
                        throw new HttpPostRequestDecoder.ErrorDataDecoderException(e);
                    }
                    i11 = i10;
                    this.undecodedChunk.readerIndex(i11);
                    return;
                } catch (HttpPostRequestDecoder.ErrorDataDecoderException e13) {
                    e = e13;
                } catch (IOException e14) {
                    e = e14;
                } catch (IllegalArgumentException e15) {
                    e = e15;
                }
            }
        }
    }

    private void parseBodyAttributesStandard() {
        int i10;
        boolean z10;
        Attribute attribute;
        Attribute attribute2;
        int i11 = this.undecodedChunk.readerIndex();
        if (this.currentStatus == HttpPostRequestDecoder.MultiPartStatus.NOTSTARTED) {
            this.currentStatus = HttpPostRequestDecoder.MultiPartStatus.DISPOSITION;
        }
        loop0: while (true) {
            i10 = i11;
            z10 = true;
            while (true) {
                try {
                    if (!this.undecodedChunk.isReadable() || !z10) {
                        break loop0;
                    }
                    char unsignedByte = (char) this.undecodedChunk.readUnsignedByte();
                    i11++;
                    int i12 = AnonymousClass1.$SwitchMap$io$netty$handler$codec$http$multipart$HttpPostRequestDecoder$MultiPartStatus[this.currentStatus.ordinal()];
                    if (i12 != 1) {
                        if (i12 == 2) {
                            if (unsignedByte == '&') {
                                this.currentStatus = HttpPostRequestDecoder.MultiPartStatus.DISPOSITION;
                                setFinalBuffer(this.undecodedChunk.copy(i10, (i11 - 1) - i10));
                                break;
                            }
                            if (unsignedByte == '\r') {
                                if (this.undecodedChunk.isReadable()) {
                                    i11++;
                                    if (((char) this.undecodedChunk.readUnsignedByte()) != '\n') {
                                        throw new HttpPostRequestDecoder.ErrorDataDecoderException("Bad end of line");
                                    }
                                    this.currentStatus = HttpPostRequestDecoder.MultiPartStatus.PREEPILOGUE;
                                    setFinalBuffer(this.undecodedChunk.copy(i10, (i11 - 2) - i10));
                                    i10 = i11;
                                } else {
                                    i11--;
                                }
                            } else if (unsignedByte == '\n') {
                                this.currentStatus = HttpPostRequestDecoder.MultiPartStatus.PREEPILOGUE;
                                setFinalBuffer(this.undecodedChunk.copy(i10, (i11 - 1) - i10));
                                i10 = i11;
                            }
                        }
                        z10 = false;
                    } else if (unsignedByte == '=') {
                        this.currentStatus = HttpPostRequestDecoder.MultiPartStatus.FIELD;
                        this.currentAttribute = this.factory.createAttribute(this.request, decodeAttribute(this.undecodedChunk.toString(i10, (i11 - 1) - i10, this.charset), this.charset));
                        i10 = i11;
                    } else if (unsignedByte == '&') {
                        this.currentStatus = HttpPostRequestDecoder.MultiPartStatus.DISPOSITION;
                        Attribute attributeCreateAttribute = this.factory.createAttribute(this.request, decodeAttribute(this.undecodedChunk.toString(i10, (i11 - 1) - i10, this.charset), this.charset));
                        this.currentAttribute = attributeCreateAttribute;
                        attributeCreateAttribute.setValue("");
                        addHttpData(this.currentAttribute);
                        this.currentAttribute = null;
                        break;
                    }
                } catch (HttpPostRequestDecoder.ErrorDataDecoderException e10) {
                    e = e10;
                } catch (IOException e11) {
                    e = e11;
                } catch (IllegalArgumentException e12) {
                    e = e12;
                }
            }
        }
        if (this.isLastChunk && (attribute2 = this.currentAttribute) != null) {
            if (i11 > i10) {
                setFinalBuffer(this.undecodedChunk.copy(i10, i11 - i10));
            } else if (!attribute2.isCompleted()) {
                setFinalBuffer(Unpooled.EMPTY_BUFFER);
            }
            try {
                this.currentStatus = HttpPostRequestDecoder.MultiPartStatus.EPILOGUE;
            } catch (HttpPostRequestDecoder.ErrorDataDecoderException e13) {
                i10 = i11;
                e = e13;
                this.undecodedChunk.readerIndex(i10);
                throw e;
            } catch (IOException e14) {
                i10 = i11;
                e = e14;
                this.undecodedChunk.readerIndex(i10);
                throw new HttpPostRequestDecoder.ErrorDataDecoderException(e);
            } catch (IllegalArgumentException e15) {
                i10 = i11;
                e = e15;
                this.undecodedChunk.readerIndex(i10);
                throw new HttpPostRequestDecoder.ErrorDataDecoderException(e);
            }
        } else if (z10 && (attribute = this.currentAttribute) != null && this.currentStatus == HttpPostRequestDecoder.MultiPartStatus.FIELD) {
            attribute.addContent(this.undecodedChunk.copy(i10, i11 - i10), false);
        } else {
            i11 = i10;
        }
        this.undecodedChunk.readerIndex(i11);
    }

    private void setFinalBuffer(ByteBuf byteBuf) throws IOException {
        this.currentAttribute.addContent(byteBuf, true);
        this.currentAttribute.setValue(decodeAttribute(this.currentAttribute.getByteBuf().toString(this.charset), this.charset));
        addHttpData(this.currentAttribute);
        this.currentAttribute = null;
    }

    protected void addHttpData(InterfaceHttpData interfaceHttpData) {
        if (interfaceHttpData == null) {
            return;
        }
        List<InterfaceHttpData> arrayList = this.bodyMapHttpData.get(interfaceHttpData.getName());
        if (arrayList == null) {
            arrayList = new ArrayList<>(1);
            this.bodyMapHttpData.put(interfaceHttpData.getName(), arrayList);
        }
        arrayList.add(interfaceHttpData);
        this.bodyListHttpData.add(interfaceHttpData);
    }

    @Override // io.netty.handler.codec.http.multipart.InterfaceHttpPostRequestDecoder
    public void cleanFiles() {
        checkDestroyed();
        this.factory.cleanRequestHttpData(this.request);
    }

    @Override // io.netty.handler.codec.http.multipart.InterfaceHttpPostRequestDecoder
    public InterfaceHttpData currentPartialHttpData() {
        return this.currentAttribute;
    }

    @Override // io.netty.handler.codec.http.multipart.InterfaceHttpPostRequestDecoder
    public void destroy() {
        cleanFiles();
        this.destroyed = true;
        ByteBuf byteBuf = this.undecodedChunk;
        if (byteBuf == null || byteBuf.refCnt() <= 0) {
            return;
        }
        this.undecodedChunk.release();
        this.undecodedChunk = null;
    }

    @Override // io.netty.handler.codec.http.multipart.InterfaceHttpPostRequestDecoder
    public InterfaceHttpData getBodyHttpData(String str) {
        checkDestroyed();
        if (!this.isLastChunk) {
            throw new HttpPostRequestDecoder.NotEnoughDataDecoderException();
        }
        List<InterfaceHttpData> list = this.bodyMapHttpData.get(str);
        if (list != null) {
            return list.get(0);
        }
        return null;
    }

    @Override // io.netty.handler.codec.http.multipart.InterfaceHttpPostRequestDecoder
    public List<InterfaceHttpData> getBodyHttpDatas() {
        checkDestroyed();
        if (this.isLastChunk) {
            return this.bodyListHttpData;
        }
        throw new HttpPostRequestDecoder.NotEnoughDataDecoderException();
    }

    @Override // io.netty.handler.codec.http.multipart.InterfaceHttpPostRequestDecoder
    public int getDiscardThreshold() {
        return this.discardThreshold;
    }

    @Override // io.netty.handler.codec.http.multipart.InterfaceHttpPostRequestDecoder
    public boolean hasNext() {
        checkDestroyed();
        if (this.currentStatus != HttpPostRequestDecoder.MultiPartStatus.EPILOGUE || this.bodyListHttpDataRank < this.bodyListHttpData.size()) {
            return !this.bodyListHttpData.isEmpty() && this.bodyListHttpDataRank < this.bodyListHttpData.size();
        }
        throw new HttpPostRequestDecoder.EndOfDataDecoderException();
    }

    @Override // io.netty.handler.codec.http.multipart.InterfaceHttpPostRequestDecoder
    public boolean isMultipart() {
        checkDestroyed();
        return false;
    }

    @Override // io.netty.handler.codec.http.multipart.InterfaceHttpPostRequestDecoder
    public InterfaceHttpData next() {
        checkDestroyed();
        if (!hasNext()) {
            return null;
        }
        List<InterfaceHttpData> list = this.bodyListHttpData;
        int i10 = this.bodyListHttpDataRank;
        this.bodyListHttpDataRank = i10 + 1;
        return list.get(i10);
    }

    @Override // io.netty.handler.codec.http.multipart.InterfaceHttpPostRequestDecoder
    public void removeHttpDataFromClean(InterfaceHttpData interfaceHttpData) {
        checkDestroyed();
        this.factory.removeHttpDataFromClean(this.request, interfaceHttpData);
    }

    @Override // io.netty.handler.codec.http.multipart.InterfaceHttpPostRequestDecoder
    public void setDiscardThreshold(int i10) {
        this.discardThreshold = ObjectUtil.checkPositiveOrZero(i10, "discardThreshold");
    }

    public HttpPostStandardRequestDecoder(HttpDataFactory httpDataFactory, HttpRequest httpRequest) {
        this(httpDataFactory, httpRequest, HttpConstants.DEFAULT_CHARSET);
    }

    @Override // io.netty.handler.codec.http.multipart.InterfaceHttpPostRequestDecoder
    public HttpPostStandardRequestDecoder offer(HttpContent httpContent) {
        checkDestroyed();
        ByteBuf byteBufContent = httpContent.content();
        ByteBuf byteBuf = this.undecodedChunk;
        if (byteBuf == null) {
            this.undecodedChunk = byteBufContent.copy();
        } else {
            byteBuf.writeBytes(byteBufContent);
        }
        if (httpContent instanceof LastHttpContent) {
            this.isLastChunk = true;
        }
        parseBody();
        ByteBuf byteBuf2 = this.undecodedChunk;
        if (byteBuf2 != null && byteBuf2.writerIndex() > this.discardThreshold) {
            this.undecodedChunk.discardReadBytes();
        }
        return this;
    }

    public HttpPostStandardRequestDecoder(HttpDataFactory httpDataFactory, HttpRequest httpRequest, Charset charset) {
        this.bodyListHttpData = new ArrayList();
        this.bodyMapHttpData = new TreeMap(CaseIgnoringComparator.INSTANCE);
        this.currentStatus = HttpPostRequestDecoder.MultiPartStatus.NOTSTARTED;
        this.discardThreshold = 10485760;
        this.request = (HttpRequest) ObjectUtil.checkNotNull(httpRequest, PointCategory.REQUEST);
        this.charset = (Charset) ObjectUtil.checkNotNull(charset, "charset");
        this.factory = (HttpDataFactory) ObjectUtil.checkNotNull(httpDataFactory, "factory");
        try {
            if (httpRequest instanceof HttpContent) {
                offer((HttpContent) httpRequest);
            } else {
                this.undecodedChunk = Unpooled.buffer();
                parseBody();
            }
        } catch (Throwable th) {
            destroy();
            PlatformDependent.throwException(th);
        }
    }

    @Override // io.netty.handler.codec.http.multipart.InterfaceHttpPostRequestDecoder
    public List<InterfaceHttpData> getBodyHttpDatas(String str) {
        checkDestroyed();
        if (this.isLastChunk) {
            return this.bodyMapHttpData.get(str);
        }
        throw new HttpPostRequestDecoder.NotEnoughDataDecoderException();
    }
}
