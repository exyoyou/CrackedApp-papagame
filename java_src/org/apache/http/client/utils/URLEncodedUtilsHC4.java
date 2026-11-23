package org.apache.http.client.utils;

import java.io.IOException;
import java.net.URI;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.List;
import java.util.Scanner;
import org.apache.http.Consts;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpEntity;
import org.apache.http.NameValuePair;
import org.apache.http.annotation.Immutable;
import org.apache.http.entity.ContentType;
import org.apache.http.message.BasicHeaderValueParserHC4;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.message.ParserCursor;
import org.apache.http.util.CharArrayBuffer;
import org.apache.http.util.EntityUtilsHC4;

/* JADX INFO: loaded from: classes.dex */
@Immutable
public class URLEncodedUtilsHC4 {
    public static final String CONTENT_TYPE = "application/x-www-form-urlencoded";
    private static final String NAME_VALUE_SEPARATOR = "=";
    private static final BitSet PATHSAFE;
    private static final BitSet PUNCT;
    private static final char[] QP_SEPS;
    private static final char QP_SEP_A = '&';
    private static final String QP_SEP_PATTERN;
    private static final char QP_SEP_S = ';';
    private static final int RADIX = 16;
    private static final BitSet RESERVED;
    private static final BitSet UNRESERVED;
    private static final BitSet URIC;
    private static final BitSet URLENCODER;
    private static final BitSet USERINFO;

    static {
        char[] cArr = {'&', QP_SEP_S};
        QP_SEPS = cArr;
        QP_SEP_PATTERN = "[" + new String(cArr) + "]";
        UNRESERVED = new BitSet(256);
        PUNCT = new BitSet(256);
        USERINFO = new BitSet(256);
        PATHSAFE = new BitSet(256);
        URIC = new BitSet(256);
        RESERVED = new BitSet(256);
        URLENCODER = new BitSet(256);
        for (int i10 = 97; i10 <= 122; i10++) {
            UNRESERVED.set(i10);
        }
        for (int i11 = 65; i11 <= 90; i11++) {
            UNRESERVED.set(i11);
        }
        for (int i12 = 48; i12 <= 57; i12++) {
            UNRESERVED.set(i12);
        }
        BitSet bitSet = UNRESERVED;
        bitSet.set(95);
        bitSet.set(45);
        bitSet.set(46);
        bitSet.set(42);
        URLENCODER.or(bitSet);
        bitSet.set(33);
        bitSet.set(126);
        bitSet.set(39);
        bitSet.set(40);
        bitSet.set(41);
        BitSet bitSet2 = PUNCT;
        bitSet2.set(44);
        bitSet2.set(59);
        bitSet2.set(58);
        bitSet2.set(36);
        bitSet2.set(38);
        bitSet2.set(43);
        bitSet2.set(61);
        BitSet bitSet3 = USERINFO;
        bitSet3.or(bitSet);
        bitSet3.or(bitSet2);
        BitSet bitSet4 = PATHSAFE;
        bitSet4.or(bitSet);
        bitSet4.set(47);
        bitSet4.set(59);
        bitSet4.set(58);
        bitSet4.set(64);
        bitSet4.set(38);
        bitSet4.set(61);
        bitSet4.set(43);
        bitSet4.set(36);
        bitSet4.set(44);
        BitSet bitSet5 = RESERVED;
        bitSet5.set(59);
        bitSet5.set(47);
        bitSet5.set(63);
        bitSet5.set(58);
        bitSet5.set(64);
        bitSet5.set(38);
        bitSet5.set(61);
        bitSet5.set(43);
        bitSet5.set(36);
        bitSet5.set(44);
        bitSet5.set(91);
        bitSet5.set(93);
        BitSet bitSet6 = URIC;
        bitSet6.or(bitSet5);
        bitSet6.or(bitSet);
    }

    private static String decodeFormFields(String str, String str2) {
        if (str == null) {
            return null;
        }
        return urlDecode(str, str2 != null ? Charset.forName(str2) : Consts.UTF_8, true);
    }

    static String encPath(String str, Charset charset) {
        return urlEncode(str, charset, PATHSAFE, false);
    }

    static String encUric(String str, Charset charset) {
        return urlEncode(str, charset, URIC, false);
    }

    static String encUserInfo(String str, Charset charset) {
        return urlEncode(str, charset, USERINFO, false);
    }

    private static String encodeFormFields(String str, String str2) {
        if (str == null) {
            return null;
        }
        return urlEncode(str, str2 != null ? Charset.forName(str2) : Consts.UTF_8, URLENCODER, true);
    }

    public static String format(List<? extends NameValuePair> list, String str) {
        return format(list, '&', str);
    }

    public static boolean isEncoded(HttpEntity httpEntity) {
        Header contentType = httpEntity.getContentType();
        if (contentType != null) {
            HeaderElement[] elements = contentType.getElements();
            if (elements.length > 0) {
                return elements[0].getName().equalsIgnoreCase("application/x-www-form-urlencoded");
            }
        }
        return false;
    }

    public static List<NameValuePair> parse(URI uri, String str) {
        String rawQuery = uri.getRawQuery();
        if (rawQuery == null || rawQuery.length() <= 0) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        parse(arrayList, new Scanner(rawQuery), QP_SEP_PATTERN, str);
        return arrayList;
    }

    private static String urlDecode(String str, Charset charset, boolean z10) {
        if (str == null) {
            return null;
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(str.length());
        CharBuffer charBufferWrap = CharBuffer.wrap(str);
        while (charBufferWrap.hasRemaining()) {
            char c10 = charBufferWrap.get();
            if (c10 == '%' && charBufferWrap.remaining() >= 2) {
                char c11 = charBufferWrap.get();
                char c12 = charBufferWrap.get();
                int iDigit = Character.digit(c11, 16);
                int iDigit2 = Character.digit(c12, 16);
                if (iDigit == -1 || iDigit2 == -1) {
                    byteBufferAllocate.put((byte) 37);
                    byteBufferAllocate.put((byte) c11);
                    byteBufferAllocate.put((byte) c12);
                } else {
                    byteBufferAllocate.put((byte) ((iDigit << 4) + iDigit2));
                }
            } else if (z10 && c10 == '+') {
                byteBufferAllocate.put((byte) 32);
            } else {
                byteBufferAllocate.put((byte) c10);
            }
        }
        byteBufferAllocate.flip();
        return charset.decode(byteBufferAllocate).toString();
    }

    private static String urlEncode(String str, Charset charset, BitSet bitSet, boolean z10) {
        if (str == null) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        ByteBuffer byteBufferEncode = charset.encode(str);
        while (byteBufferEncode.hasRemaining()) {
            int i10 = byteBufferEncode.get() & 255;
            if (bitSet.get(i10)) {
                sb2.append((char) i10);
            } else if (z10 && i10 == 32) {
                sb2.append('+');
            } else {
                sb2.append("%");
                char upperCase = Character.toUpperCase(Character.forDigit((i10 >> 4) & 15, 16));
                char upperCase2 = Character.toUpperCase(Character.forDigit(i10 & 15, 16));
                sb2.append(upperCase);
                sb2.append(upperCase2);
            }
        }
        return sb2.toString();
    }

    private static String decodeFormFields(String str, Charset charset) {
        if (str == null) {
            return null;
        }
        if (charset == null) {
            charset = Consts.UTF_8;
        }
        return urlDecode(str, charset, true);
    }

    private static String encodeFormFields(String str, Charset charset) {
        if (str == null) {
            return null;
        }
        if (charset == null) {
            charset = Consts.UTF_8;
        }
        return urlEncode(str, charset, URLENCODER, true);
    }

    public static String format(List<? extends NameValuePair> list, char c10, String str) {
        StringBuilder sb2 = new StringBuilder();
        for (NameValuePair nameValuePair : list) {
            String strEncodeFormFields = encodeFormFields(nameValuePair.getName(), str);
            String strEncodeFormFields2 = encodeFormFields(nameValuePair.getValue(), str);
            if (sb2.length() > 0) {
                sb2.append(c10);
            }
            sb2.append(strEncodeFormFields);
            if (strEncodeFormFields2 != null) {
                sb2.append("=");
                sb2.append(strEncodeFormFields2);
            }
        }
        return sb2.toString();
    }

    public static List<NameValuePair> parse(HttpEntity httpEntity) throws IOException {
        String string;
        ContentType contentType = ContentType.get(httpEntity);
        if (contentType != null && contentType.getMimeType().equalsIgnoreCase("application/x-www-form-urlencoded") && (string = EntityUtilsHC4.toString(httpEntity, Consts.ASCII)) != null && string.length() > 0) {
            Charset charset = contentType.getCharset();
            if (charset == null) {
                charset = Charset.forName("ISO-8859-1");
            }
            return parse(string, charset, QP_SEPS);
        }
        return Collections.emptyList();
    }

    public static String format(Iterable<? extends NameValuePair> iterable, Charset charset) {
        return format(iterable, '&', charset);
    }

    public static String format(Iterable<? extends NameValuePair> iterable, char c10, Charset charset) {
        StringBuilder sb2 = new StringBuilder();
        for (NameValuePair nameValuePair : iterable) {
            String strEncodeFormFields = encodeFormFields(nameValuePair.getName(), charset);
            String strEncodeFormFields2 = encodeFormFields(nameValuePair.getValue(), charset);
            if (sb2.length() > 0) {
                sb2.append(c10);
            }
            sb2.append(strEncodeFormFields);
            if (strEncodeFormFields2 != null) {
                sb2.append("=");
                sb2.append(strEncodeFormFields2);
            }
        }
        return sb2.toString();
    }

    public static void parse(List<NameValuePair> list, Scanner scanner, String str) {
        parse(list, scanner, QP_SEP_PATTERN, str);
    }

    public static void parse(List<NameValuePair> list, Scanner scanner, String str, String str2) {
        String strDecodeFormFields;
        String strDecodeFormFields2;
        scanner.useDelimiter(str);
        while (scanner.hasNext()) {
            String next = scanner.next();
            int iIndexOf = next.indexOf("=");
            if (iIndexOf != -1) {
                strDecodeFormFields = decodeFormFields(next.substring(0, iIndexOf).trim(), str2);
                strDecodeFormFields2 = decodeFormFields(next.substring(iIndexOf + 1).trim(), str2);
            } else {
                strDecodeFormFields = decodeFormFields(next.trim(), str2);
                strDecodeFormFields2 = null;
            }
            list.add(new BasicNameValuePair(strDecodeFormFields, strDecodeFormFields2));
        }
    }

    public static List<NameValuePair> parse(String str, Charset charset) {
        return parse(str, charset, QP_SEPS);
    }

    public static List<NameValuePair> parse(String str, Charset charset, char... cArr) {
        if (str == null) {
            return Collections.emptyList();
        }
        BasicHeaderValueParserHC4 basicHeaderValueParserHC4 = BasicHeaderValueParserHC4.INSTANCE;
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(str.length());
        charArrayBuffer.append(str);
        ParserCursor parserCursor = new ParserCursor(0, charArrayBuffer.length());
        ArrayList arrayList = new ArrayList();
        while (!parserCursor.atEnd()) {
            NameValuePair nameValuePair = basicHeaderValueParserHC4.parseNameValuePair(charArrayBuffer, parserCursor, cArr);
            if (nameValuePair.getName().length() > 0) {
                arrayList.add(new BasicNameValuePair(decodeFormFields(nameValuePair.getName(), charset), decodeFormFields(nameValuePair.getValue(), charset)));
            }
        }
        return arrayList;
    }
}
