package com.kwad.sdk.core.imageloader.utils;

import com.kwad.sdk.crash.utils.b;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes2.dex */
public final class IoUtils {
    public static final int CONTINUE_LOADING_PERCENTAGE = 75;
    public static final int DEFAULT_BUFFER_SIZE = 32768;
    public static final int DEFAULT_IMAGE_TOTAL_SIZE = 512000;

    public interface CopyListener {
        boolean onBytesCopied(int i10, int i11);
    }

    private IoUtils() {
    }

    public static boolean copyStream(InputStream inputStream, OutputStream outputStream, CopyListener copyListener) {
        return copyStream(inputStream, outputStream, copyListener, 32768);
    }

    public static String inputStreamToString(InputStream inputStream) throws Throwable {
        InputStreamReader inputStreamReader;
        char[] cArr = new char[1024];
        StringBuilder sb2 = new StringBuilder();
        InputStreamReader inputStreamReader2 = null;
        try {
            inputStreamReader = new InputStreamReader(inputStream, "UTF-8");
            while (true) {
                try {
                    int i10 = inputStreamReader.read(cArr, 0, 1024);
                    if (i10 < 0) {
                        b.closeQuietly(inputStreamReader);
                        return sb2.toString();
                    }
                    sb2.append(cArr, 0, i10);
                } catch (Exception unused) {
                    b.closeQuietly(inputStreamReader);
                    return null;
                } catch (Throwable th) {
                    th = th;
                    inputStreamReader2 = inputStreamReader;
                    b.closeQuietly(inputStreamReader2);
                    throw th;
                }
            }
        } catch (Exception unused2) {
            inputStreamReader = null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static void readAndCloseStream(InputStream inputStream) {
        do {
            try {
            } catch (IOException unused) {
                return;
            } finally {
                b.closeQuietly(inputStream);
            }
        } while (inputStream.read(new byte[32768], 0, 32768) != -1);
    }

    private static boolean shouldStopLoading(CopyListener copyListener, int i10, int i11) {
        return (copyListener == null || copyListener.onBytesCopied(i10, i11) || (i10 * 100) / i11 >= 75) ? false : true;
    }

    public static boolean copyStream(InputStream inputStream, OutputStream outputStream, CopyListener copyListener, int i10) throws IOException {
        int iAvailable = inputStream.available();
        if (iAvailable <= 0) {
            iAvailable = DEFAULT_IMAGE_TOTAL_SIZE;
        }
        byte[] bArr = new byte[i10];
        if (shouldStopLoading(copyListener, 0, iAvailable)) {
            return false;
        }
        int i11 = 0;
        do {
            int i12 = inputStream.read(bArr, 0, i10);
            if (i12 == -1) {
                outputStream.flush();
                return true;
            }
            outputStream.write(bArr, 0, i12);
            i11 += i12;
        } while (!shouldStopLoading(copyListener, i11, iAvailable));
        return false;
    }
}
