package org.apache.http.conn.ssl;

import java.util.ArrayList;
import java.util.BitSet;
import java.util.List;
import org.apache.http.NameValuePair;
import org.apache.http.annotation.Immutable;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.message.ParserCursor;
import org.apache.http.util.CharArrayBuffer;

/* JADX INFO: loaded from: classes.dex */
@Immutable
final class DistinguishedNameParser {
    private final TokenParser tokenParser = new InternalTokenParser();
    public static final DistinguishedNameParser INSTANCE = new DistinguishedNameParser();
    private static final BitSet EQUAL_OR_COMMA_OR_PLUS = TokenParser.INIT_BITSET(61, 44, 43);
    private static final BitSet COMMA_OR_PLUS = TokenParser.INIT_BITSET(44, 43);

    static class InternalTokenParser extends TokenParser {
        InternalTokenParser() {
        }

        @Override // org.apache.http.conn.ssl.TokenParser
        public void copyUnquotedContent(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor, BitSet bitSet, StringBuilder sb2) {
            int pos = parserCursor.getPos();
            int pos2 = parserCursor.getPos();
            int upperBound = parserCursor.getUpperBound();
            boolean z10 = false;
            while (pos2 < upperBound) {
                char cCharAt = charArrayBuffer.charAt(pos2);
                if (!z10) {
                    if ((bitSet != null && bitSet.get(cCharAt)) || TokenParser.isWhitespace(cCharAt) || cCharAt == '\"') {
                        break;
                    } else if (cCharAt == '\\') {
                        z10 = true;
                    } else {
                        sb2.append(cCharAt);
                    }
                } else {
                    sb2.append(cCharAt);
                    z10 = false;
                }
                pos2++;
                pos++;
            }
            parserCursor.updatePos(pos);
        }
    }

    DistinguishedNameParser() {
    }

    public List<NameValuePair> parse(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor) {
        ArrayList arrayList = new ArrayList();
        this.tokenParser.skipWhiteSpace(charArrayBuffer, parserCursor);
        while (!parserCursor.atEnd()) {
            arrayList.add(parseParameter(charArrayBuffer, parserCursor));
        }
        return arrayList;
    }

    NameValuePair parseParameter(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor) {
        String token = parseToken(charArrayBuffer, parserCursor, EQUAL_OR_COMMA_OR_PLUS);
        if (parserCursor.atEnd()) {
            return new BasicNameValuePair(token, null);
        }
        char cCharAt = charArrayBuffer.charAt(parserCursor.getPos());
        parserCursor.updatePos(parserCursor.getPos() + 1);
        if (cCharAt == ',') {
            return new BasicNameValuePair(token, null);
        }
        String value = parseValue(charArrayBuffer, parserCursor, COMMA_OR_PLUS);
        if (!parserCursor.atEnd()) {
            parserCursor.updatePos(parserCursor.getPos() + 1);
        }
        return new BasicNameValuePair(token, value);
    }

    String parseToken(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor, BitSet bitSet) {
        return this.tokenParser.parseToken(charArrayBuffer, parserCursor, bitSet);
    }

    String parseValue(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor, BitSet bitSet) {
        return this.tokenParser.parseValue(charArrayBuffer, parserCursor, bitSet);
    }

    public List<NameValuePair> parse(String str) {
        if (str == null) {
            return null;
        }
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(str.length());
        charArrayBuffer.append(str);
        return parse(charArrayBuffer, new ParserCursor(0, str.length()));
    }
}
