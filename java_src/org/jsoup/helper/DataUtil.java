package org.jsoup.helper;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.parser.Parser;

/* JADX INFO: loaded from: classes10.dex */
public class DataUtil {
    private static final int bufferSize = 131072;
    private static final Pattern charsetPattern = Pattern.compile("(?i)\\bcharset=\\s*\"?([^\\s;\"]*)");
    static final String defaultCharset = "UTF-8";

    private DataUtil() {
    }

    static String getCharsetFromContentType(String str) {
        if (str == null) {
            return null;
        }
        Matcher matcher = charsetPattern.matcher(str);
        if (matcher.find()) {
            String strTrim = matcher.group(1).trim();
            if (Charset.isSupported(strTrim)) {
                return strTrim;
            }
            String upperCase = strTrim.toUpperCase(Locale.ENGLISH);
            if (Charset.isSupported(upperCase)) {
                return upperCase;
            }
        }
        return null;
    }

    public static Document load(File file, String str, String str2) throws Throwable {
        FileInputStream fileInputStream = null;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(file);
            try {
                Document byteData = parseByteData(readToByteBuffer(fileInputStream2), str, str2, Parser.htmlParser());
                fileInputStream2.close();
                return byteData;
            } catch (Throwable th) {
                th = th;
                fileInputStream = fileInputStream2;
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0059  */
    static Document parseByteData(ByteBuffer byteBuffer, String str, String str2, Parser parser) {
        String string;
        Document document = null;
        if (str == null) {
            string = Charset.forName("UTF-8").decode(byteBuffer).toString();
            Document input = parser.parseInput(string, str2);
            Element elementFirst = input.select("meta[http-equiv=content-type], meta[charset]").first();
            if (elementFirst == null) {
                document = input;
            } else {
                String charsetFromContentType = elementFirst.hasAttr("http-equiv") ? getCharsetFromContentType(elementFirst.attr("content")) : elementFirst.attr("charset");
                if (charsetFromContentType == null || charsetFromContentType.length() == 0 || charsetFromContentType.equals("UTF-8")) {
                    document = input;
                } else {
                    byteBuffer.rewind();
                    string = Charset.forName(charsetFromContentType).decode(byteBuffer).toString();
                    str = charsetFromContentType;
                }
            }
        } else {
            Validate.notEmpty(str, "Must set charset arg to character set of file to parse. Set to null to attempt to detect from HTML");
            string = Charset.forName(str).decode(byteBuffer).toString();
        }
        if (document != null) {
            return document;
        }
        if (string.length() > 0 && string.charAt(0) == 65279) {
            string = string.substring(1);
        }
        Document input2 = parser.parseInput(string, str2);
        input2.outputSettings().charset(str);
        return input2;
    }

    static ByteBuffer readToByteBuffer(InputStream inputStream, int i10) throws IOException {
        Validate.isTrue(i10 >= 0, "maxSize must be 0 (unlimited) or larger");
        boolean z10 = i10 > 0;
        byte[] bArr = new byte[131072];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(131072);
        while (true) {
            int i11 = inputStream.read(bArr);
            if (i11 == -1) {
                break;
            }
            if (z10) {
                if (i11 > i10) {
                    byteArrayOutputStream.write(bArr, 0, i10);
                    break;
                }
                i10 -= i11;
            }
            byteArrayOutputStream.write(bArr, 0, i11);
        }
        return ByteBuffer.wrap(byteArrayOutputStream.toByteArray());
    }

    public static Document load(InputStream inputStream, String str, String str2) throws IOException {
        return parseByteData(readToByteBuffer(inputStream), str, str2, Parser.htmlParser());
    }

    public static Document load(InputStream inputStream, String str, String str2, Parser parser) throws IOException {
        return parseByteData(readToByteBuffer(inputStream), str, str2, parser);
    }

    static ByteBuffer readToByteBuffer(InputStream inputStream) throws IOException {
        return readToByteBuffer(inputStream, 0);
    }
}
