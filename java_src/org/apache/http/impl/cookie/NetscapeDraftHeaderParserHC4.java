package org.apache.http.impl.cookie;

import java.util.ArrayList;
import org.apache.http.HeaderElement;
import org.apache.http.NameValuePair;
import org.apache.http.ParseException;
import org.apache.http.annotation.Immutable;
import org.apache.http.message.BasicHeaderElement;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.message.ParserCursor;
import org.apache.http.protocol.HTTP;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;

/* JADX INFO: loaded from: classes.dex */
@Immutable
public class NetscapeDraftHeaderParserHC4 {
    public static final NetscapeDraftHeaderParserHC4 DEFAULT = new NetscapeDraftHeaderParserHC4();

    private NameValuePair parseNameValuePair(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor) {
        boolean z10;
        boolean z11;
        String strSubstringTrimmed;
        char cCharAt;
        int pos = parserCursor.getPos();
        int pos2 = parserCursor.getPos();
        int upperBound = parserCursor.getUpperBound();
        while (true) {
            z10 = true;
            if (pos >= upperBound || (cCharAt = charArrayBuffer.charAt(pos)) == '=') {
                z11 = false;
                break;
            }
            if (cCharAt == ';') {
                z11 = true;
                break;
            }
            pos++;
        }
        if (pos == upperBound) {
            strSubstringTrimmed = charArrayBuffer.substringTrimmed(pos2, upperBound);
            z11 = true;
        } else {
            strSubstringTrimmed = charArrayBuffer.substringTrimmed(pos2, pos);
            pos++;
        }
        if (z11) {
            parserCursor.updatePos(pos);
            return new BasicNameValuePair(strSubstringTrimmed, null);
        }
        int i10 = pos;
        while (true) {
            if (i10 >= upperBound) {
                z10 = z11;
                break;
            }
            if (charArrayBuffer.charAt(i10) == ';') {
                break;
            }
            i10++;
        }
        while (pos < i10 && HTTP.isWhitespace(charArrayBuffer.charAt(pos))) {
            pos++;
        }
        int i11 = i10;
        while (i11 > pos && HTTP.isWhitespace(charArrayBuffer.charAt(i11 - 1))) {
            i11--;
        }
        String strSubstring = charArrayBuffer.substring(pos, i11);
        if (z10) {
            i10++;
        }
        parserCursor.updatePos(i10);
        return new BasicNameValuePair(strSubstringTrimmed, strSubstring);
    }

    public HeaderElement parseHeader(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor) throws ParseException {
        Args.notNull(charArrayBuffer, "Char array buffer");
        Args.notNull(parserCursor, "Parser cursor");
        NameValuePair nameValuePair = parseNameValuePair(charArrayBuffer, parserCursor);
        ArrayList arrayList = new ArrayList();
        while (!parserCursor.atEnd()) {
            arrayList.add(parseNameValuePair(charArrayBuffer, parserCursor));
        }
        return new BasicHeaderElement(nameValuePair.getName(), nameValuePair.getValue(), (NameValuePair[]) arrayList.toArray(new NameValuePair[arrayList.size()]));
    }
}
