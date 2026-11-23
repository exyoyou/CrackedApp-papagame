package com.sigmob.sdk.base.utils;

import com.byazt.tk.AdBaseConstants;
import com.haima.hmcp.beans.ClipBoardItemData;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f79712a = "b";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String[] f79713b = {"TencentCOS", "COS", "OSS", "BOS", "S3", "apk", "download", "cdn"};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String[] f79714c = {"x-cos-", "x-oss-", "x-bce-", "x-amz-", "apk", "download", "attachment"};

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v16 */
    /* JADX WARN: Type inference failed for: r4v20 */
    /* JADX WARN: Type inference failed for: r4v22 */
    /* JADX WARN: Type inference failed for: r4v23 */
    /* JADX WARN: Type inference failed for: r4v24 */
    /* JADX WARN: Type inference failed for: r4v25 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r4v9 */
    public static boolean a(String str) throws Throwable {
        long j10;
        if (str == null || str.trim().isEmpty()) {
            k.b(f79712a, "isAPKFileEnhanced: URL 为空", new Object[0]);
            return false;
        }
        String lowerCase = str.toLowerCase();
        if (lowerCase.endsWith(".apk")) {
            k.b(f79712a, "isAPKFileEnhanced: URL 以 .apk 结尾", new Object[0]);
            return true;
        }
        if (lowerCase.split("\\?")[0].endsWith(".apk")) {
            k.b(f79712a, "isAPKFileEnhanced: URL 路径以 .apk 结尾", new Object[0]);
            return true;
        }
        ?? r10 = 0;
        String lowerCase2 = null;
        ?? r11 = 0;
        HttpURLConnection httpURLConnection = null;
        try {
            try {
                HttpURLConnection httpURLConnection2 = (HttpURLConnection) new URL(str).openConnection();
                try {
                    httpURLConnection2.setRequestMethod("HEAD");
                    httpURLConnection2.setConnectTimeout(3000);
                    httpURLConnection2.setReadTimeout(3000);
                    httpURLConnection2.setInstanceFollowRedirects(true);
                    int responseCode = httpURLConnection2.getResponseCode();
                    if (responseCode == 301 || responseCode == 302 || responseCode == 303) {
                        String headerField = httpURLConnection2.getHeaderField("Location");
                        if (headerField != null && !headerField.isEmpty()) {
                            k.e(f79712a, "isAPKFileEnhanced: redirect = " + headerField, new Object[0]);
                            boolean zA = a(headerField);
                            httpURLConnection2.disconnect();
                            return zA;
                        }
                        k.c(f79712a, "isAPKFileEnhanced: non-redirection", new Object[0]);
                    }
                    if (responseCode == 200) {
                        Map<String, List<String>> headerFields = httpURLConnection2.getHeaderFields();
                        String contentType = httpURLConnection2.getContentType();
                        String lowerCase3 = contentType == null ? null : contentType.toLowerCase();
                        String headerField2 = httpURLConnection2.getHeaderField(com.sigmob.sdk.downloader.core.c.f80446j);
                        String lowerCase4 = headerField2 == null ? null : headerField2.toLowerCase();
                        String headerField3 = httpURLConnection2.getHeaderField("Content-Length");
                        if (headerField3 != null) {
                            try {
                                j10 = Long.parseLong(headerField3);
                            } catch (NumberFormatException unused) {
                                j10 = 0;
                            }
                        } else {
                            j10 = 0;
                        }
                        String headerField4 = httpURLConnection2.getHeaderField("Server");
                        if (headerField4 != null) {
                            lowerCase2 = headerField4.toLowerCase();
                        }
                        String str2 = f79712a;
                        k.c(str2, "isAPKFileEnhanced Header 分析:", new Object[0]);
                        k.c(str2, "  URL: " + str, new Object[0]);
                        k.c(str2, "  Content-Type: " + contentType, new Object[0]);
                        k.c(str2, "  Content-Disposition: " + headerField2, new Object[0]);
                        k.c(str2, "  Content-Length: " + j10 + " bytes", new Object[0]);
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("  Server: ");
                        sb2.append(headerField4);
                        k.c(str2, sb2.toString(), new Object[0]);
                        if (lowerCase3 != null && (lowerCase3.contains(AdBaseConstants.MIME_APK) || lowerCase3.contains("application/apk"))) {
                            k.b(str2, "isAPKFileEnhanced: 明确的 apk MIME 类型", new Object[0]);
                            httpURLConnection2.disconnect();
                            return true;
                        }
                        if (lowerCase4 != null && (lowerCase4.contains(".apk") || lowerCase4.contains("attachment"))) {
                            k.b(str2, "isAPKFileEnhanced: Content-Disposition 指示为 apk", new Object[0]);
                            httpURLConnection2.disconnect();
                            return true;
                        }
                        if (lowerCase3 != null && lowerCase3.contains("application/octet-stream") && j10 > 1048576) {
                            k.b(str2, "isAPKFileEnhanced: octet-stream 类型且文件较大（" + j10 + " bytes）", new Object[0]);
                            if (!lowerCase3.contains(ClipBoardItemData.TYPE_TEXT_HTML) && !lowerCase3.contains("text/plain") && !lowerCase3.contains("application/json") && !lowerCase3.contains("application/xml") && !lowerCase3.contains("image/") && !lowerCase3.contains("video/") && !lowerCase3.contains("audio/")) {
                                if (lowerCase2 != null) {
                                    for (String str3 : f79713b) {
                                        if (lowerCase2.contains(str3.toLowerCase())) {
                                            k.b(f79712a, "isAPKFileEnhanced: indicator = " + str3, new Object[0]);
                                            httpURLConnection2.disconnect();
                                            return true;
                                        }
                                    }
                                }
                                Iterator<Map.Entry<String, List<String>>> it2 = headerFields.entrySet().iterator();
                                while (it2.hasNext()) {
                                    String key = it2.next().getKey();
                                    if (key != null) {
                                        String lowerCase5 = key.toLowerCase();
                                        for (String str4 : f79714c) {
                                            if (lowerCase5.contains(str4.toLowerCase())) {
                                                k.b(f79712a, "isAPKFileEnhanced: key = " + key, new Object[0]);
                                                httpURLConnection2.disconnect();
                                                return true;
                                            }
                                        }
                                    }
                                }
                                if (j10 > 5242880) {
                                    k.b(f79712a, "isAPKFileEnhanced: 大文件（" + j10 + " bytes）可能为 apk", new Object[0]);
                                    httpURLConnection2.disconnect();
                                    return true;
                                }
                            }
                            k.b(str2, "isAPKFileEnhanced: 排除已知的非 apk 类型", new Object[0]);
                            httpURLConnection2.disconnect();
                            return false;
                        }
                        if (c(lowerCase)) {
                            k.b(f79712a, "isAPKFileEnhanced: URL 包含 apk 关键词", new Object[0]);
                            httpURLConnection2.disconnect();
                            return true;
                        }
                        if (lowerCase3 != null && (lowerCase3.contains(ClipBoardItemData.TYPE_TEXT_HTML) || lowerCase3.contains("application/xhtml+xml"))) {
                            k.b(f79712a, "isAPKFileEnhanced: 明确排除网页类型", new Object[0]);
                            httpURLConnection2.disconnect();
                            return false;
                        }
                        r11 = 0;
                        r11 = 0;
                        if (j10 > 0 && j10 < 1048576) {
                            k.b(f79712a, "isAPKFileEnhanced: 文件太小（" + j10 + " bytes），可能不是 apk", new Object[0]);
                            httpURLConnection2.disconnect();
                            return false;
                        }
                    }
                    httpURLConnection2.disconnect();
                    r10 = r11;
                } catch (Exception e10) {
                    e = e10;
                    httpURLConnection = httpURLConnection2;
                    k.d(f79712a, "isAPKFileEnhanced: error = ", e, new Object[0]);
                    r10 = httpURLConnection;
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                        r10 = httpURLConnection;
                    }
                } catch (Throwable th) {
                    th = th;
                    r10 = httpURLConnection2;
                    if (r10 != 0) {
                        r10.disconnect();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e11) {
            e = e11;
        }
        k.b(f79712a, "isAPKFileEnhanced: 未识别为 apk 文件", new Object[0]);
        return false;
    }

    public static boolean b(String url) {
        if (url == null || url.trim().isEmpty()) {
            return false;
        }
        String lowerCase = url.toLowerCase();
        if (lowerCase.endsWith(".apk") || lowerCase.split("\\?")[0].endsWith(".apk") || c(lowerCase)) {
            return true;
        }
        return d(lowerCase);
    }

    private static boolean c(String url) {
        String[] strArr = {"/apk/", "/download/", "/package/", "/install/", "/app/", "apk=", "package=", "download=", "file=", "app=", ".apk?", "version=", com.sigmob.sdk.base.n.f79590q, com.sigmob.sdk.base.n.f79591r};
        for (int i10 = 0; i10 < 14; i10++) {
            if (url.contains(strArr[i10])) {
                return true;
            }
        }
        return false;
    }

    private static boolean d(String url) {
        String[] strArr = {"download.", "dl.", "cdn.", "oss.", "cos.", "bos.", "apk.", "package.", "file.", "storage.", "bucket."};
        for (int i10 = 0; i10 < 11; i10++) {
            if (url.contains(strArr[i10])) {
                return true;
            }
        }
        return false;
    }
}
