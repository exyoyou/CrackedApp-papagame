package io.netty.handler.ssl;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.Unpooled;
import io.netty.handler.codec.base64.Base64;
import io.netty.util.CharsetUtil;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.KeyException;
import java.security.cert.CertificateException;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
final class PemReader {
    private static final InternalLogger logger = InternalLoggerFactory.getInstance((Class<?>) PemReader.class);
    private static final Pattern CERT_PATTERN = Pattern.compile("-+BEGIN\\s+.*CERTIFICATE[^-]*-+(?:\\s|\\r|\\n)+([a-z0-9+/=\\r\\n]+)-+END\\s+.*CERTIFICATE[^-]*-+", 2);
    private static final Pattern KEY_PATTERN = Pattern.compile("-+BEGIN\\s+.*PRIVATE\\s+KEY[^-]*-+(?:\\s|\\r|\\n)+([a-z0-9+/=\\r\\n]+)-+END\\s+.*PRIVATE\\s+KEY[^-]*-+", 2);

    private PemReader() {
    }

    static ByteBuf[] readCertificates(File file) throws CertificateException {
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                return readCertificates(fileInputStream);
            } finally {
                safeClose(fileInputStream);
            }
        } catch (FileNotFoundException unused) {
            throw new CertificateException("could not find certificate file: " + file);
        }
    }

    private static String readContent(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            byte[] bArr = new byte[8192];
            while (true) {
                int i10 = inputStream.read(bArr);
                if (i10 < 0) {
                    return byteArrayOutputStream.toString(CharsetUtil.US_ASCII.name());
                }
                byteArrayOutputStream.write(bArr, 0, i10);
            }
        } finally {
            safeClose(byteArrayOutputStream);
        }
    }

    static ByteBuf readPrivateKey(File file) throws KeyException {
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                return readPrivateKey(fileInputStream);
            } finally {
                safeClose(fileInputStream);
            }
        } catch (FileNotFoundException unused) {
            throw new KeyException("could not find key file: " + file);
        }
    }

    private static void safeClose(InputStream inputStream) {
        try {
            inputStream.close();
        } catch (IOException e10) {
            logger.warn("Failed to close a stream.", (Throwable) e10);
        }
    }

    private static void safeClose(OutputStream outputStream) {
        try {
            outputStream.close();
        } catch (IOException e10) {
            logger.warn("Failed to close a stream.", (Throwable) e10);
        }
    }

    static ByteBuf[] readCertificates(InputStream inputStream) throws CertificateException {
        try {
            String content = readContent(inputStream);
            ArrayList arrayList = new ArrayList();
            Matcher matcher = CERT_PATTERN.matcher(content);
            for (int iEnd = 0; matcher.find(iEnd); iEnd = matcher.end()) {
                ByteBuf byteBufCopiedBuffer = Unpooled.copiedBuffer(matcher.group(1), CharsetUtil.US_ASCII);
                ByteBuf byteBufDecode = Base64.decode(byteBufCopiedBuffer);
                byteBufCopiedBuffer.release();
                arrayList.add(byteBufDecode);
            }
            if (!arrayList.isEmpty()) {
                return (ByteBuf[]) arrayList.toArray(new ByteBuf[0]);
            }
            throw new CertificateException("found no certificates in input stream");
        } catch (IOException e10) {
            throw new CertificateException("failed to read certificate input stream", e10);
        }
    }

    static ByteBuf readPrivateKey(InputStream inputStream) throws KeyException {
        try {
            Matcher matcher = KEY_PATTERN.matcher(readContent(inputStream));
            if (matcher.find()) {
                ByteBuf byteBufCopiedBuffer = Unpooled.copiedBuffer(matcher.group(1), CharsetUtil.US_ASCII);
                ByteBuf byteBufDecode = Base64.decode(byteBufCopiedBuffer);
                byteBufCopiedBuffer.release();
                return byteBufDecode;
            }
            throw new KeyException("could not find a PKCS #8 private key in input stream (see https://netty.io/wiki/sslcontextbuilder-and-private-key.html for more information)");
        } catch (IOException e10) {
            throw new KeyException("failed to read key input stream", e10);
        }
    }
}
