package org.apache.http.message;

import org.apache.http.Header;
import org.apache.http.HttpVersion;
import org.apache.http.ParseException;
import org.apache.http.ProtocolVersion;
import org.apache.http.RequestLine;
import org.apache.http.StatusLine;
import org.apache.http.annotation.Immutable;
import org.apache.http.protocol.HTTP;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;

/* JADX INFO: loaded from: classes.dex */
@Immutable
public class BasicLineParserHC4 implements LineParser {

    @Deprecated
    public static final BasicLineParserHC4 DEFAULT = new BasicLineParserHC4();
    public static final BasicLineParserHC4 INSTANCE = new BasicLineParserHC4();
    protected final ProtocolVersion protocol;

    public BasicLineParserHC4(ProtocolVersion protocolVersion) {
        this.protocol = protocolVersion == null ? HttpVersion.HTTP_1_1 : protocolVersion;
    }

    public static Header parseHeader(String str, LineParser lineParser) throws ParseException {
        Args.notNull(str, "Value");
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(str.length());
        charArrayBuffer.append(str);
        if (lineParser == null) {
            lineParser = INSTANCE;
        }
        return lineParser.parseHeader(charArrayBuffer);
    }

    public static ProtocolVersion parseProtocolVersion(String str, LineParser lineParser) throws ParseException {
        Args.notNull(str, "Value");
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(str.length());
        charArrayBuffer.append(str);
        ParserCursor parserCursor = new ParserCursor(0, str.length());
        if (lineParser == null) {
            lineParser = INSTANCE;
        }
        return lineParser.parseProtocolVersion(charArrayBuffer, parserCursor);
    }

    public static RequestLine parseRequestLine(String str, LineParser lineParser) throws ParseException {
        Args.notNull(str, "Value");
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(str.length());
        charArrayBuffer.append(str);
        ParserCursor parserCursor = new ParserCursor(0, str.length());
        if (lineParser == null) {
            lineParser = INSTANCE;
        }
        return lineParser.parseRequestLine(charArrayBuffer, parserCursor);
    }

    public static StatusLine parseStatusLine(String str, LineParser lineParser) throws ParseException {
        Args.notNull(str, "Value");
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(str.length());
        charArrayBuffer.append(str);
        ParserCursor parserCursor = new ParserCursor(0, str.length());
        if (lineParser == null) {
            lineParser = INSTANCE;
        }
        return lineParser.parseStatusLine(charArrayBuffer, parserCursor);
    }

    protected ProtocolVersion createProtocolVersion(int i10, int i11) {
        return this.protocol.forVersion(i10, i11);
    }

    protected RequestLine createRequestLine(String str, String str2, ProtocolVersion protocolVersion) {
        return new BasicRequestLine(str, str2, protocolVersion);
    }

    protected StatusLine createStatusLine(ProtocolVersion protocolVersion, int i10, String str) {
        return new BasicStatusLine(protocolVersion, i10, str);
    }

    @Override // org.apache.http.message.LineParser
    public boolean hasProtocolVersion(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor) {
        Args.notNull(charArrayBuffer, "Char array buffer");
        Args.notNull(parserCursor, "Parser cursor");
        int pos = parserCursor.getPos();
        String protocol = this.protocol.getProtocol();
        int length = protocol.length();
        if (charArrayBuffer.length() < length + 4) {
            return false;
        }
        if (pos < 0) {
            pos = (charArrayBuffer.length() - 4) - length;
        } else if (pos == 0) {
            while (pos < charArrayBuffer.length() && HTTP.isWhitespace(charArrayBuffer.charAt(pos))) {
                pos++;
            }
        }
        int i10 = pos + length;
        if (i10 + 4 > charArrayBuffer.length()) {
            return false;
        }
        boolean z10 = true;
        for (int i11 = 0; z10 && i11 < length; i11++) {
            z10 = charArrayBuffer.charAt(pos + i11) == protocol.charAt(i11);
        }
        if (z10) {
            return charArrayBuffer.charAt(i10) == '/';
        }
        return z10;
    }

    protected void skipWhitespace(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor) {
        int pos = parserCursor.getPos();
        int upperBound = parserCursor.getUpperBound();
        while (pos < upperBound && HTTP.isWhitespace(charArrayBuffer.charAt(pos))) {
            pos++;
        }
        parserCursor.updatePos(pos);
    }

    public BasicLineParserHC4() {
        this(null);
    }

    @Override // org.apache.http.message.LineParser
    public Header parseHeader(CharArrayBuffer charArrayBuffer) throws ParseException {
        return new BufferedHeader(charArrayBuffer);
    }

    @Override // org.apache.http.message.LineParser
    public ProtocolVersion parseProtocolVersion(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor) throws ParseException {
        Args.notNull(charArrayBuffer, "Char array buffer");
        Args.notNull(parserCursor, "Parser cursor");
        String protocol = this.protocol.getProtocol();
        int length = protocol.length();
        int pos = parserCursor.getPos();
        int upperBound = parserCursor.getUpperBound();
        skipWhitespace(charArrayBuffer, parserCursor);
        int pos2 = parserCursor.getPos();
        int i10 = pos2 + length;
        if (i10 + 4 > upperBound) {
            throw new ParseException("Not a valid protocol version: " + charArrayBuffer.substring(pos, upperBound));
        }
        boolean z10 = true;
        for (int i11 = 0; z10 && i11 < length; i11++) {
            z10 = charArrayBuffer.charAt(pos2 + i11) == protocol.charAt(i11);
        }
        if (z10) {
            z10 = charArrayBuffer.charAt(i10) == '/';
        }
        if (z10) {
            int i12 = pos2 + length + 1;
            int iIndexOf = charArrayBuffer.indexOf(46, i12, upperBound);
            if (iIndexOf != -1) {
                try {
                    int i13 = Integer.parseInt(charArrayBuffer.substringTrimmed(i12, iIndexOf));
                    int i14 = iIndexOf + 1;
                    int iIndexOf2 = charArrayBuffer.indexOf(32, i14, upperBound);
                    if (iIndexOf2 == -1) {
                        iIndexOf2 = upperBound;
                    }
                    try {
                        int i15 = Integer.parseInt(charArrayBuffer.substringTrimmed(i14, iIndexOf2));
                        parserCursor.updatePos(iIndexOf2);
                        return createProtocolVersion(i13, i15);
                    } catch (NumberFormatException unused) {
                        throw new ParseException("Invalid protocol minor version number: " + charArrayBuffer.substring(pos, upperBound));
                    }
                } catch (NumberFormatException unused2) {
                    throw new ParseException("Invalid protocol major version number: " + charArrayBuffer.substring(pos, upperBound));
                }
            }
            throw new ParseException("Invalid protocol version number: " + charArrayBuffer.substring(pos, upperBound));
        }
        throw new ParseException("Not a valid protocol version: " + charArrayBuffer.substring(pos, upperBound));
    }

    @Override // org.apache.http.message.LineParser
    public RequestLine parseRequestLine(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor) throws ParseException {
        Args.notNull(charArrayBuffer, "Char array buffer");
        Args.notNull(parserCursor, "Parser cursor");
        int pos = parserCursor.getPos();
        int upperBound = parserCursor.getUpperBound();
        try {
            skipWhitespace(charArrayBuffer, parserCursor);
            int pos2 = parserCursor.getPos();
            int iIndexOf = charArrayBuffer.indexOf(32, pos2, upperBound);
            if (iIndexOf >= 0) {
                String strSubstringTrimmed = charArrayBuffer.substringTrimmed(pos2, iIndexOf);
                parserCursor.updatePos(iIndexOf);
                skipWhitespace(charArrayBuffer, parserCursor);
                int pos3 = parserCursor.getPos();
                int iIndexOf2 = charArrayBuffer.indexOf(32, pos3, upperBound);
                if (iIndexOf2 >= 0) {
                    String strSubstringTrimmed2 = charArrayBuffer.substringTrimmed(pos3, iIndexOf2);
                    parserCursor.updatePos(iIndexOf2);
                    ProtocolVersion protocolVersion = parseProtocolVersion(charArrayBuffer, parserCursor);
                    skipWhitespace(charArrayBuffer, parserCursor);
                    if (parserCursor.atEnd()) {
                        return createRequestLine(strSubstringTrimmed, strSubstringTrimmed2, protocolVersion);
                    }
                    throw new ParseException("Invalid request line: " + charArrayBuffer.substring(pos, upperBound));
                }
                throw new ParseException("Invalid request line: " + charArrayBuffer.substring(pos, upperBound));
            }
            throw new ParseException("Invalid request line: " + charArrayBuffer.substring(pos, upperBound));
        } catch (IndexOutOfBoundsException unused) {
            throw new ParseException("Invalid request line: " + charArrayBuffer.substring(pos, upperBound));
        }
    }

    @Override // org.apache.http.message.LineParser
    public StatusLine parseStatusLine(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor) throws ParseException {
        Args.notNull(charArrayBuffer, "Char array buffer");
        Args.notNull(parserCursor, "Parser cursor");
        int pos = parserCursor.getPos();
        int upperBound = parserCursor.getUpperBound();
        try {
            ProtocolVersion protocolVersion = parseProtocolVersion(charArrayBuffer, parserCursor);
            skipWhitespace(charArrayBuffer, parserCursor);
            int pos2 = parserCursor.getPos();
            int iIndexOf = charArrayBuffer.indexOf(32, pos2, upperBound);
            if (iIndexOf < 0) {
                iIndexOf = upperBound;
            }
            String strSubstringTrimmed = charArrayBuffer.substringTrimmed(pos2, iIndexOf);
            for (int i10 = 0; i10 < strSubstringTrimmed.length(); i10++) {
                if (!Character.isDigit(strSubstringTrimmed.charAt(i10))) {
                    throw new ParseException("Status line contains invalid status code: " + charArrayBuffer.substring(pos, upperBound));
                }
            }
            try {
                return createStatusLine(protocolVersion, Integer.parseInt(strSubstringTrimmed), iIndexOf < upperBound ? charArrayBuffer.substringTrimmed(iIndexOf, upperBound) : "");
            } catch (NumberFormatException unused) {
                throw new ParseException("Status line contains invalid status code: " + charArrayBuffer.substring(pos, upperBound));
            }
        } catch (IndexOutOfBoundsException unused2) {
            throw new ParseException("Invalid status line: " + charArrayBuffer.substring(pos, upperBound));
        }
    }
}
