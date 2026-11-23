package org.apache.http.impl.io;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.Header;
import org.apache.http.HttpException;
import org.apache.http.HttpMessage;
import org.apache.http.MessageConstraintException;
import org.apache.http.ParseException;
import org.apache.http.ProtocolException;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.config.MessageConstraints;
import org.apache.http.io.HttpMessageParser;
import org.apache.http.io.SessionInputBuffer;
import org.apache.http.message.BasicLineParserHC4;
import org.apache.http.message.LineParser;
import org.apache.http.params.HttpParamConfig;
import org.apache.http.params.HttpParams;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;

/* JADX INFO: loaded from: classes.dex */
@NotThreadSafe
public abstract class AbstractMessageParserHC4<T extends HttpMessage> implements HttpMessageParser {
    private static final int HEADERS = 1;
    private static final int HEAD_LINE = 0;
    private final List<CharArrayBuffer> headerLines;
    protected final LineParser lineParser;
    private T message;
    private final MessageConstraints messageConstraints;
    private final SessionInputBuffer sessionBuffer;
    private int state;

    @Deprecated
    public AbstractMessageParserHC4(SessionInputBuffer sessionInputBuffer, LineParser lineParser, HttpParams httpParams) {
        Args.notNull(sessionInputBuffer, "Session input buffer");
        Args.notNull(httpParams, "HTTP parameters");
        this.sessionBuffer = sessionInputBuffer;
        this.messageConstraints = HttpParamConfig.getMessageConstraints(httpParams);
        this.lineParser = lineParser == null ? BasicLineParserHC4.INSTANCE : lineParser;
        this.headerLines = new ArrayList();
        this.state = 0;
    }

    public static Header[] parseHeaders(SessionInputBuffer sessionInputBuffer, int i10, int i11, LineParser lineParser) throws HttpException, IOException {
        ArrayList arrayList = new ArrayList();
        if (lineParser == null) {
            lineParser = BasicLineParserHC4.INSTANCE;
        }
        return parseHeaders(sessionInputBuffer, i10, i11, lineParser, arrayList);
    }

    @Override // org.apache.http.io.HttpMessageParser
    public T parse() throws HttpException, IOException {
        int i10 = this.state;
        if (i10 == 0) {
            try {
                this.message = (T) parseHead(this.sessionBuffer);
                this.state = 1;
            } catch (ParseException e10) {
                throw new ProtocolException(e10.getMessage(), e10);
            }
        } else if (i10 != 1) {
            throw new IllegalStateException("Inconsistent parser state");
        }
        this.message.setHeaders(parseHeaders(this.sessionBuffer, this.messageConstraints.getMaxHeaderCount(), this.messageConstraints.getMaxLineLength(), this.lineParser, this.headerLines));
        T t10 = this.message;
        this.message = null;
        this.headerLines.clear();
        this.state = 0;
        return t10;
    }

    protected abstract T parseHead(SessionInputBuffer sessionInputBuffer) throws HttpException, ParseException, IOException;

    public static Header[] parseHeaders(SessionInputBuffer sessionInputBuffer, int i10, int i11, LineParser lineParser, List<CharArrayBuffer> list) throws HttpException, IOException {
        int i12;
        char cCharAt;
        Args.notNull(sessionInputBuffer, "Session input buffer");
        Args.notNull(lineParser, "Line parser");
        Args.notNull(list, "Header line list");
        CharArrayBuffer charArrayBuffer = null;
        CharArrayBuffer charArrayBuffer2 = null;
        while (true) {
            if (charArrayBuffer == null) {
                charArrayBuffer = new CharArrayBuffer(64);
            } else {
                charArrayBuffer.clear();
            }
            i12 = 0;
            if (sessionInputBuffer.readLine(charArrayBuffer) == -1 || charArrayBuffer.length() < 1) {
                break;
            }
            if ((charArrayBuffer.charAt(0) == ' ' || charArrayBuffer.charAt(0) == '\t') && charArrayBuffer2 != null) {
                while (i12 < charArrayBuffer.length() && ((cCharAt = charArrayBuffer.charAt(i12)) == ' ' || cCharAt == '\t')) {
                    i12++;
                }
                if (i11 > 0 && ((charArrayBuffer2.length() + 1) + charArrayBuffer.length()) - i12 > i11) {
                    throw new MessageConstraintException("Maximum line length limit exceeded");
                }
                charArrayBuffer2.append(' ');
                charArrayBuffer2.append(charArrayBuffer, i12, charArrayBuffer.length() - i12);
            } else {
                list.add(charArrayBuffer);
                charArrayBuffer2 = charArrayBuffer;
                charArrayBuffer = null;
            }
            if (i10 > 0 && list.size() >= i10) {
                throw new MessageConstraintException("Maximum header count exceeded");
            }
        }
        Header[] headerArr = new Header[list.size()];
        while (i12 < list.size()) {
            try {
                headerArr[i12] = lineParser.parseHeader(list.get(i12));
                i12++;
            } catch (ParseException e10) {
                throw new ProtocolException(e10.getMessage());
            }
        }
        return headerArr;
    }

    public AbstractMessageParserHC4(SessionInputBuffer sessionInputBuffer, LineParser lineParser, MessageConstraints messageConstraints) {
        this.sessionBuffer = (SessionInputBuffer) Args.notNull(sessionInputBuffer, "Session input buffer");
        this.lineParser = lineParser == null ? BasicLineParserHC4.INSTANCE : lineParser;
        this.messageConstraints = messageConstraints == null ? MessageConstraints.DEFAULT : messageConstraints;
        this.headerLines = new ArrayList();
        this.state = 0;
    }
}
