package com.mob.tools.network;

import android.content.Context;
import cn.fly.tools.FlyLog;
import cn.fly.tools.utils.Data;
import cn.fly.tools.utils.ResHelper;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.join.mgps.Util.o0;
import com.mob.commons.a;
import com.mob.tools.MobLog;
import com.mob.tools.network.wrapper.b;
import com.mob.tools.network.wrapper.c;
import com.mob.tools.proguard.EverythingKeeper;
import com.mob.tools.proguard.PublicMemberKeeper;
import com.mob.tools.utils.HashonHelper;
import com.sigmob.sdk.downloader.core.breakpoint.f;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URLConnection;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import org.apache.http.client.methods.HttpPutHC4;

/* JADX INFO: loaded from: classes2.dex */
public class NetworkHelper implements EverythingKeeper {
    public static int connectionTimeout = 0;
    private static boolean followRedirects = true;
    public static int readTimout;
    private cn.fly.tools.network.NetworkHelper flyImpl;
    protected boolean instanceFollowRedirects = followRedirects;

    public static class NetworkTimeOut implements PublicMemberKeeper {
        public int connectionTimeout;
        public int readTimout;
    }

    public NetworkHelper() {
        cn.fly.tools.network.NetworkHelper networkHelper = new cn.fly.tools.network.NetworkHelper();
        this.flyImpl = networkHelper;
        networkHelper.instanceFollowRedirects = this.instanceFollowRedirects;
    }

    @Deprecated
    public static String checkHttpRequestUrl(String str) {
        return NetCommunicator.checkHttpRequestUrl(str);
    }

    @Deprecated
    private ByteArrayPart getDataPostHttpPart(HttpURLConnection httpURLConnection, String str, byte[] bArr) throws Throwable {
        ByteArrayPart byteArrayPart = new ByteArrayPart();
        byteArrayPart.append(bArr);
        return byteArrayPart;
    }

    @Deprecated
    private HTTPPart getFilePostHTTPPart(HttpURLConnection httpURLConnection, String str, ArrayList<KVPair<String>> arrayList, ArrayList<KVPair<String>> arrayList2) throws Throwable {
        String string = UUID.randomUUID().toString();
        httpURLConnection.setRequestProperty("Content-Type", "multipart/form-data; boundary=" + string);
        MultiPart multiPart = new MultiPart();
        StringPart stringPart = new StringPart();
        if (arrayList != null) {
            for (KVPair<String> kVPair : arrayList) {
                stringPart.append("--").append(string).append("\r\n");
                stringPart.append("Content-Disposition: form-data; name=\"").append(kVPair.name).append("\"\r\n\r\n");
                stringPart.append(kVPair.value).append("\r\n");
            }
        }
        multiPart.append(stringPart);
        for (KVPair<String> kVPair2 : arrayList2) {
            StringPart stringPart2 = new StringPart();
            File file = new File(kVPair2.value);
            stringPart2.append("--").append(string).append("\r\n");
            stringPart2.append("Content-Disposition: form-data; name=\"").append(kVPair2.name).append("\"; filename=\"").append(file.getName()).append("\"\r\n");
            String contentTypeFor = URLConnection.getFileNameMap().getContentTypeFor(kVPair2.value);
            if (contentTypeFor == null || contentTypeFor.length() <= 0) {
                if (kVPair2.value.toLowerCase().endsWith("jpg") || kVPair2.value.toLowerCase().endsWith("jpeg")) {
                    contentTypeFor = "image/jpeg";
                } else if (kVPair2.value.toLowerCase().endsWith("png")) {
                    contentTypeFor = "image/png";
                } else if (kVPair2.value.toLowerCase().endsWith("gif")) {
                    contentTypeFor = "image/gif";
                } else {
                    FileInputStream fileInputStream = null;
                    try {
                        FileInputStream fileInputStream2 = new FileInputStream(kVPair2.value);
                        try {
                            String strGuessContentTypeFromStream = URLConnection.guessContentTypeFromStream(fileInputStream2);
                            a.a(fileInputStream2);
                            contentTypeFor = (strGuessContentTypeFromStream == null || strGuessContentTypeFromStream.length() <= 0) ? "application/octet-stream" : strGuessContentTypeFromStream;
                        } catch (Throwable th) {
                            th = th;
                            fileInputStream = fileInputStream2;
                            a.a(fileInputStream);
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                }
            }
            stringPart2.append("Content-Type: ").append(contentTypeFor).append("\r\n\r\n");
            multiPart.append(stringPart2);
            FilePart filePart = new FilePart();
            filePart.setFile(kVPair2.value);
            multiPart.append(filePart);
            StringPart stringPart3 = new StringPart();
            stringPart3.append("\r\n");
            multiPart.append(stringPart3);
        }
        StringPart stringPart4 = new StringPart();
        stringPart4.append("--").append(string).append("--\r\n");
        multiPart.append(stringPart4);
        return multiPart;
    }

    @Deprecated
    private HTTPPart getTextPostHTTPPart(HttpURLConnection httpURLConnection, String str, ArrayList<KVPair<String>> arrayList) throws Throwable {
        httpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
        StringPart stringPart = new StringPart();
        if (arrayList != null) {
            stringPart.append(this.flyImpl.requestParamsToUrl(kvPairsToObjHashMap(arrayList)));
        }
        return stringPart;
    }

    public static cn.fly.tools.network.NetworkHelper.NetworkTimeOut getTimeoutWrapper(NetworkTimeOut networkTimeOut) {
        if (networkTimeOut == null) {
            return null;
        }
        cn.fly.tools.network.NetworkHelper.NetworkTimeOut networkTimeOut2 = new cn.fly.tools.network.NetworkHelper.NetworkTimeOut();
        networkTimeOut2.connectionTimeout = networkTimeOut.connectionTimeout;
        networkTimeOut2.readTimout = networkTimeOut.readTimout;
        return networkTimeOut2;
    }

    @Deprecated
    private HashMap<String, Object> kvPairsToObjHashMap(ArrayList<KVPair<String>> arrayList) throws Throwable {
        if (arrayList == null) {
            return null;
        }
        HashMap<String, Object> map = new HashMap<>();
        for (KVPair<String> kVPair : arrayList) {
            map.put(kVPair.name, kVPair.value);
        }
        return map;
    }

    @Deprecated
    private HashMap<String, String> kvPairsToStrHashMap(ArrayList<KVPair<String>> arrayList) throws Throwable {
        if (arrayList == null) {
            return null;
        }
        HashMap<String, String> map = new HashMap<>();
        for (KVPair<String> kVPair : arrayList) {
            map.put(kVPair.name, kVPair.value);
        }
        return map;
    }

    public void download(String str, OutputStream outputStream, NetworkTimeOut networkTimeOut) throws Throwable {
        this.flyImpl.download(str, outputStream, getTimeoutWrapper(networkTimeOut));
    }

    public String downloadCache(Context context, String str, String str2, boolean z10, NetworkTimeOut networkTimeOut) throws Throwable {
        return downloadCache(context, str, str2, z10, networkTimeOut, null);
    }

    @Deprecated
    public String httpGet(String str, ArrayList<KVPair<String>> arrayList, ArrayList<KVPair<String>> arrayList2, NetworkTimeOut networkTimeOut) throws Throwable {
        return this.flyImpl.httpGetNew(str, kvPairsToObjHashMap(arrayList), kvPairsToStrHashMap(arrayList2), getTimeoutWrapper(networkTimeOut));
    }

    public String httpGetNew(String str, HashMap<String, Object> map, HashMap<String, String> map2, NetworkTimeOut networkTimeOut) throws Throwable {
        return this.flyImpl.httpGetNew(str, map, map2, getTimeoutWrapper(networkTimeOut));
    }

    @Deprecated
    public String httpPost(String str, ArrayList<KVPair<String>> arrayList, KVPair<String> kVPair, ArrayList<KVPair<String>> arrayList2, NetworkTimeOut networkTimeOut) throws Throwable {
        return httpPostNew(str, kvPairsToObjHashMap(arrayList), kvPairsToStrHashMap(arrayList2), networkTimeOut);
    }

    @Deprecated
    public String httpPostFiles(String str, ArrayList<KVPair<String>> arrayList, ArrayList<KVPair<String>> arrayList2, ArrayList<KVPair<String>> arrayList3, int i10, NetworkTimeOut networkTimeOut) throws Throwable {
        final HashMap map = new HashMap();
        httpPost(str, arrayList, arrayList2, arrayList3, i10, new HttpResponseCallback() { // from class: com.mob.tools.network.NetworkHelper.1
            @Override // com.mob.tools.network.HttpResponseCallback
            public void onResponse(HttpConnection httpConnection) throws Throwable {
                InputStreamReader inputStreamReader;
                InputStreamReader inputStreamReader2;
                int responseCode = httpConnection.getResponseCode();
                BufferedReader bufferedReader = null;
                if (responseCode == 200 || responseCode < 300) {
                    StringBuilder sb2 = new StringBuilder();
                    try {
                        inputStreamReader = new InputStreamReader(httpConnection.getInputStream(), Charset.forName("utf-8"));
                        try {
                            BufferedReader bufferedReader2 = new BufferedReader(inputStreamReader);
                            try {
                                for (String line = bufferedReader2.readLine(); line != null; line = bufferedReader2.readLine()) {
                                    if (sb2.length() > 0) {
                                        sb2.append('\n');
                                    }
                                    sb2.append(line);
                                }
                                a.a(bufferedReader2, inputStreamReader);
                                map.put("resp", sb2.toString());
                            } catch (Throwable th) {
                                th = th;
                                bufferedReader = bufferedReader2;
                                a.a(bufferedReader, inputStreamReader);
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        inputStreamReader = null;
                    }
                } else {
                    StringBuilder sb3 = new StringBuilder();
                    try {
                        inputStreamReader2 = new InputStreamReader(httpConnection.getErrorStream(), Charset.forName("utf-8"));
                        try {
                            BufferedReader bufferedReader3 = new BufferedReader(inputStreamReader2);
                            try {
                                for (String line2 = bufferedReader3.readLine(); line2 != null; line2 = bufferedReader3.readLine()) {
                                    if (sb3.length() > 0) {
                                        sb3.append('\n');
                                    }
                                    sb3.append(line2);
                                }
                                a.a(bufferedReader3, inputStreamReader2);
                                HashMap map2 = new HashMap();
                                map2.put("error", sb3.toString());
                                map2.put("status", Integer.valueOf(responseCode));
                                new HashonHelper();
                                throw new Throwable(HashonHelper.fromHashMap(map2));
                            } catch (Throwable th4) {
                                th = th4;
                                bufferedReader = bufferedReader3;
                                a.a(bufferedReader, inputStreamReader2);
                                throw th;
                            }
                        } catch (Throwable th5) {
                            th = th5;
                        }
                    } catch (Throwable th6) {
                        th = th6;
                        inputStreamReader2 = null;
                    }
                }
            }
        }, networkTimeOut);
        return (String) map.get("resp");
    }

    @Deprecated
    public String httpPostFilesChecked(String str, ArrayList<KVPair<String>> arrayList, byte[] bArr, ArrayList<KVPair<String>> arrayList2, int i10, NetworkTimeOut networkTimeOut) throws Throwable {
        final HashMap map = new HashMap();
        httpPost(str, arrayList, bArr, arrayList2, i10, new HttpResponseCallback() { // from class: com.mob.tools.network.NetworkHelper.2
            @Override // com.mob.tools.network.HttpResponseCallback
            public void onResponse(HttpConnection httpConnection) throws Throwable {
                InputStreamReader inputStreamReader;
                InputStreamReader inputStreamReader2;
                int responseCode = httpConnection.getResponseCode();
                BufferedReader bufferedReader = null;
                if (responseCode == 200 || responseCode < 300) {
                    StringBuilder sb2 = new StringBuilder();
                    try {
                        inputStreamReader = new InputStreamReader(httpConnection.getInputStream(), Charset.forName("utf-8"));
                        try {
                            BufferedReader bufferedReader2 = new BufferedReader(inputStreamReader);
                            try {
                                for (String line = bufferedReader2.readLine(); line != null; line = bufferedReader2.readLine()) {
                                    if (sb2.length() > 0) {
                                        sb2.append('\n');
                                    }
                                    sb2.append(line);
                                }
                                a.a(bufferedReader2, inputStreamReader);
                                map.put("resp", sb2.toString());
                            } catch (Throwable th) {
                                th = th;
                                bufferedReader = bufferedReader2;
                                a.a(bufferedReader, inputStreamReader);
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        inputStreamReader = null;
                    }
                } else {
                    StringBuilder sb3 = new StringBuilder();
                    try {
                        inputStreamReader2 = new InputStreamReader(httpConnection.getErrorStream(), Charset.forName("utf-8"));
                        try {
                            BufferedReader bufferedReader3 = new BufferedReader(inputStreamReader2);
                            try {
                                for (String line2 = bufferedReader3.readLine(); line2 != null; line2 = bufferedReader3.readLine()) {
                                    if (sb3.length() > 0) {
                                        sb3.append('\n');
                                    }
                                    sb3.append(line2);
                                }
                                a.a(bufferedReader3, inputStreamReader2);
                                HashMap map2 = new HashMap();
                                map2.put("error", sb3.toString());
                                map2.put("status", Integer.valueOf(responseCode));
                                new HashonHelper();
                                throw new Throwable(HashonHelper.fromHashMap(map2));
                            } catch (Throwable th4) {
                                th = th4;
                                bufferedReader = bufferedReader3;
                                a.a(bufferedReader, inputStreamReader2);
                                throw th;
                            }
                        } catch (Throwable th5) {
                            th = th5;
                        }
                    } catch (Throwable th6) {
                        th = th6;
                        inputStreamReader2 = null;
                    }
                }
            }
        }, networkTimeOut);
        return (String) map.get("resp");
    }

    public String httpPostNew(String str, HashMap<String, Object> map, HashMap<String, String> map2, NetworkTimeOut networkTimeOut) throws Throwable {
        return this.flyImpl.httpPostNew(str, map, map2, getTimeoutWrapper(networkTimeOut));
    }

    public void httpPostWithBytes(String str, byte[] bArr, HashMap<String, String> map, int i10, HttpResponseCallback httpResponseCallback, NetworkTimeOut networkTimeOut) throws Throwable {
        this.flyImpl.httpPostWithBytes(str, bArr, map, i10, b.a(httpResponseCallback), getTimeoutWrapper(networkTimeOut));
    }

    @Deprecated
    public String httpPut(String str, ArrayList<KVPair<String>> arrayList, KVPair<String> kVPair, ArrayList<KVPair<String>> arrayList2, NetworkTimeOut networkTimeOut) throws Throwable {
        return httpPut(str, kvPairsToObjHashMap(arrayList), kVPair, arrayList2, networkTimeOut, null);
    }

    @Deprecated
    public String jsonPost(String str, ArrayList<KVPair<String>> arrayList, ArrayList<KVPair<String>> arrayList2, NetworkTimeOut networkTimeOut) throws Throwable {
        return this.flyImpl.jsonPost(str, kvPairsToObjHashMap(arrayList), kvPairsToStrHashMap(arrayList2), getTimeoutWrapper(networkTimeOut));
    }

    @Deprecated
    public void rawGet(String str, ArrayList<KVPair<String>> arrayList, RawNetworkCallback rawNetworkCallback, NetworkTimeOut networkTimeOut) throws Throwable {
        this.flyImpl.rawGet(str, kvPairsToStrHashMap(arrayList), c.a(rawNetworkCallback), getTimeoutWrapper(networkTimeOut));
    }

    @Deprecated
    public void rawPost(String str, ArrayList<KVPair<String>> arrayList, HTTPPart hTTPPart, HttpResponseCallback httpResponseCallback, NetworkTimeOut networkTimeOut) throws Throwable {
        rawPost(str, arrayList, hTTPPart, 0, httpResponseCallback, networkTimeOut);
    }

    @Deprecated
    private void jsonPost(String str, ArrayList<KVPair<String>> arrayList, ArrayList<KVPair<String>> arrayList2, NetworkTimeOut networkTimeOut, HttpResponseCallback httpResponseCallback) throws Throwable {
        HashMap<String, Object> map = new HashMap<>();
        for (KVPair<String> kVPair : arrayList) {
            map.put(kVPair.name, kVPair.value);
        }
        jsonPost(str, map, arrayList2, networkTimeOut, httpResponseCallback);
    }

    public String downloadCache(Context context, String str, String str2, boolean z10, NetworkTimeOut networkTimeOut, FileDownloadListener fileDownloadListener) throws Throwable {
        InputStreamReader inputStreamReader;
        BufferedReader bufferedReader;
        String string;
        String strMD5;
        InputStream inputStream;
        FileOutputStream fileOutputStream;
        byte[] bArr;
        int i10;
        List<String> list;
        int iLastIndexOf;
        List<String> list2;
        long jCurrentTimeMillis = System.currentTimeMillis();
        FlyLog.getInstance().i("downloading: " + str);
        if (z10) {
            File file = new File(ResHelper.getCachePath(context, str2), Data.MD5(str));
            if (z10 && file.exists()) {
                FlyLog.getInstance().i("use time: " + (System.currentTimeMillis() - jCurrentTimeMillis));
                if (fileDownloadListener != null) {
                    fileDownloadListener.onProgress(100, file.length(), file.length());
                }
                return file.getAbsolutePath();
            }
        }
        HttpURLConnection connection = this.flyImpl.getConnection(str, getTimeoutWrapper(networkTimeOut));
        connection.setInstanceFollowRedirects(this.instanceFollowRedirects);
        connection.connect();
        int responseCode = connection.getResponseCode();
        if (responseCode == 200) {
            Map<String, List<String>> headerFields = connection.getHeaderFields();
            if (headerFields == null || (list2 = headerFields.get(com.sigmob.sdk.downloader.core.c.f80446j)) == null || list2.size() <= 0) {
                string = null;
            } else {
                string = null;
                for (String str3 : list2.get(0).split(";")) {
                    if (str3.trim().startsWith(f.f80402e)) {
                        String str4 = str3.split(SimpleComparison.EQUAL_TO_OPERATION)[1];
                        string = (str4.startsWith(x.a.f97579g) && str4.endsWith(x.a.f97579g)) ? str4.substring(1, str4.length() - 1) : str4;
                    }
                }
            }
            if (string == null) {
                strMD5 = Data.MD5(str);
                if (headerFields != null && (list = headerFields.get("Content-Type")) != null && list.size() > 0) {
                    String str5 = list.get(0);
                    String strTrim = str5 == null ? "" : str5.trim();
                    if (strTrim.startsWith("image/")) {
                        String strSubstring = strTrim.substring(6);
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(strMD5);
                        sb2.append(o0.f49827a);
                        if ("jpeg".equals(strSubstring)) {
                            strSubstring = "jpg";
                        }
                        sb2.append(strSubstring);
                        string = sb2.toString();
                    } else {
                        int iLastIndexOf2 = str.lastIndexOf(47);
                        String strSubstring2 = iLastIndexOf2 > 0 ? str.substring(iLastIndexOf2 + 1) : null;
                        if (strSubstring2 != null && strSubstring2.length() > 0 && (iLastIndexOf = strSubstring2.lastIndexOf(46)) > 0 && strSubstring2.length() - iLastIndexOf < 10) {
                            string = strMD5 + strSubstring2.substring(iLastIndexOf);
                        }
                    }
                    strMD5 = string;
                }
            } else {
                strMD5 = string;
            }
            File file2 = new File(ResHelper.getCachePath(context, str2), strMD5);
            if (z10 && file2.exists()) {
                connection.disconnect();
                FlyLog.getInstance().i("use time: " + (System.currentTimeMillis() - jCurrentTimeMillis));
                if (fileDownloadListener != null) {
                    fileDownloadListener.onProgress(100, file2.length(), file2.length());
                }
                return file2.getAbsolutePath();
            }
            if (!file2.getParentFile().exists()) {
                file2.getParentFile().mkdirs();
            }
            if (file2.exists()) {
                file2.delete();
            }
            if (fileDownloadListener != null) {
                try {
                    if (fileDownloadListener.isCanceled()) {
                        if (!file2.exists()) {
                            return null;
                        }
                        file2.delete();
                        return null;
                    }
                } catch (Throwable th) {
                    if (file2.exists()) {
                        file2.delete();
                    }
                    throw th;
                }
            }
            try {
                inputStream = connection.getInputStream();
                try {
                    int contentLength = connection.getContentLength();
                    fileOutputStream = new FileOutputStream(file2);
                    try {
                        byte[] bArr2 = new byte[1024];
                        int i11 = inputStream.read(bArr2);
                        int i12 = 0;
                        while (i11 > 0) {
                            fileOutputStream.write(bArr2, 0, i11);
                            int i13 = i12 + i11;
                            if (fileDownloadListener != null) {
                                bArr = bArr2;
                                i10 = i13;
                                fileDownloadListener.onProgress(contentLength <= 0 ? 100 : (i13 * 100) / contentLength, i13, contentLength);
                                if (fileDownloadListener.isCanceled()) {
                                    break;
                                }
                            } else {
                                bArr = bArr2;
                                i10 = i13;
                            }
                            i11 = inputStream.read(bArr);
                            bArr2 = bArr;
                            i12 = i10;
                        }
                        if (fileDownloadListener != null) {
                            if (fileDownloadListener.isCanceled()) {
                                if (file2.exists()) {
                                    file2.delete();
                                }
                                fileOutputStream.flush();
                                a.a(inputStream, fileOutputStream);
                                return null;
                            }
                            fileDownloadListener.onProgress(100, file2.length(), file2.length());
                        }
                        fileOutputStream.flush();
                        a.a(inputStream, fileOutputStream);
                        connection.disconnect();
                        FlyLog.getInstance().i("use time: " + (System.currentTimeMillis() - jCurrentTimeMillis));
                        return file2.getAbsolutePath();
                    } catch (Throwable th2) {
                        th = th2;
                        a.a(inputStream, fileOutputStream);
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    fileOutputStream = null;
                }
            } catch (Throwable th4) {
                th = th4;
                inputStream = null;
                fileOutputStream = null;
            }
        } else {
            if (cn.fly.tools.network.NetworkHelper.isRedirects(connection)) {
                return downloadCache(context, connection.getHeaderField("Location"), str2, z10, networkTimeOut, fileDownloadListener);
            }
            StringBuilder sb3 = new StringBuilder();
            try {
                inputStreamReader = new InputStreamReader(connection.getErrorStream(), Charset.forName("utf-8"));
                try {
                    BufferedReader bufferedReader2 = new BufferedReader(inputStreamReader);
                    try {
                        for (String line = bufferedReader2.readLine(); line != null; line = bufferedReader2.readLine()) {
                            if (sb3.length() > 0) {
                                sb3.append('\n');
                            }
                            sb3.append(line);
                        }
                        a.a(bufferedReader2, inputStreamReader);
                        connection.disconnect();
                        HashMap map = new HashMap();
                        map.put("error", sb3.toString());
                        map.put("status", Integer.valueOf(responseCode));
                        new cn.fly.tools.utils.HashonHelper();
                        throw new Throwable(cn.fly.tools.utils.HashonHelper.fromHashMap(map));
                    } catch (Throwable th5) {
                        th = th5;
                        bufferedReader = bufferedReader2;
                        a.a(bufferedReader, inputStreamReader);
                        throw th;
                    }
                } catch (Throwable th6) {
                    th = th6;
                    bufferedReader = null;
                }
            } catch (Throwable th7) {
                th = th7;
                inputStreamReader = null;
                bufferedReader = null;
            }
        }
    }

    public String httpGet(String str, HashMap<String, Object> map, HashMap<String, String> map2) throws Throwable {
        cn.fly.tools.network.NetworkHelper.NetworkTimeOut networkTimeOut = new cn.fly.tools.network.NetworkHelper.NetworkTimeOut();
        networkTimeOut.readTimout = 30000;
        networkTimeOut.connectionTimeout = 10000;
        return this.flyImpl.httpGetNew(str, map, map2, networkTimeOut);
    }

    @Deprecated
    public void httpPost(String str, ArrayList<KVPair<String>> arrayList, ArrayList<KVPair<String>> arrayList2, ArrayList<KVPair<String>> arrayList3, int i10, HttpResponseCallback httpResponseCallback, NetworkTimeOut networkTimeOut) throws Throwable {
        HTTPPart textPostHTTPPart;
        OutputStream outputStream;
        long jCurrentTimeMillis = System.currentTimeMillis();
        cn.fly.tools.network.NetworkHelper.NetworkTimeOut timeoutWrapper = getTimeoutWrapper(networkTimeOut);
        FlyLog.getInstance().i("httpPost: " + str);
        HttpURLConnection connection = this.flyImpl.getConnection(str, timeoutWrapper);
        connection.setDoOutput(true);
        connection.setRequestProperty("Connection", "Keep-Alive");
        if (arrayList2 == null || arrayList2.size() <= 0) {
            textPostHTTPPart = getTextPostHTTPPart(connection, str, arrayList);
            connection.setFixedLengthStreamingMode((int) textPostHTTPPart.length());
        } else {
            textPostHTTPPart = getFilePostHTTPPart(connection, str, arrayList, arrayList2);
            if (i10 >= 0) {
                connection.setChunkedStreamingMode(i10);
            }
        }
        if (arrayList3 != null) {
            for (KVPair<String> kVPair : arrayList3) {
                connection.setRequestProperty(kVPair.name, kVPair.value);
            }
        }
        connection.setInstanceFollowRedirects(this.instanceFollowRedirects);
        connection.connect();
        InputStream inputStream = null;
        try {
            outputStream = connection.getOutputStream();
            try {
                inputStream = textPostHTTPPart.toInputStream();
                byte[] bArr = new byte[65536];
                for (int i11 = inputStream.read(bArr); i11 > 0; i11 = inputStream.read(bArr)) {
                    outputStream.write(bArr, 0, i11);
                }
                outputStream.flush();
                a.a(inputStream, outputStream);
                if (httpResponseCallback != null) {
                    try {
                        httpResponseCallback.onResponse(new HttpConnectionImpl23(connection));
                        connection.disconnect();
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            connection.disconnect();
                            throw th2;
                        }
                    }
                } else {
                    connection.disconnect();
                }
                FlyLog.getInstance().i("use time: " + (System.currentTimeMillis() - jCurrentTimeMillis));
            } catch (Throwable th3) {
                th = th3;
                a.a(inputStream, outputStream);
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            outputStream = null;
        }
    }

    @Deprecated
    public String httpPut(String str, HashMap<String, Object> map, KVPair<String> kVPair, ArrayList<KVPair<String>> arrayList, NetworkTimeOut networkTimeOut, OnReadListener onReadListener) throws Throwable {
        OutputStream outputStream;
        InputStreamReader inputStreamReader;
        InputStreamReader inputStreamReader2;
        long jCurrentTimeMillis = System.currentTimeMillis();
        MobLog.getInstance().i("httpPut: " + str);
        if (map != null) {
            String strRequestParamsToUrl = this.flyImpl.requestParamsToUrl(map);
            if (strRequestParamsToUrl.length() > 0) {
                str = str + "?" + strRequestParamsToUrl;
            }
        }
        HttpURLConnection connection = this.flyImpl.getConnection(str, getTimeoutWrapper(networkTimeOut));
        connection.setDoOutput(true);
        connection.setChunkedStreamingMode(0);
        connection.setRequestMethod(HttpPutHC4.METHOD_NAME);
        connection.setRequestProperty("Content-Type", "application/octet-stream");
        this.flyImpl.setHeader(connection, kvPairsToStrHashMap(arrayList));
        connection.setInstanceFollowRedirects(this.instanceFollowRedirects);
        connection.connect();
        Closeable closeable = null;
        try {
            outputStream = connection.getOutputStream();
            try {
                FilePart filePart = new FilePart();
                if (onReadListener != null) {
                    filePart.setOnReadListener(onReadListener);
                }
                filePart.setFile(kVPair.value);
                InputStream inputStream = filePart.toInputStream();
                try {
                    byte[] bArr = new byte[65536];
                    for (int i10 = inputStream.read(bArr); i10 > 0; i10 = inputStream.read(bArr)) {
                        outputStream.write(bArr, 0, i10);
                    }
                    outputStream.flush();
                    a.a(inputStream, outputStream);
                    int responseCode = connection.getResponseCode();
                    if (responseCode == 200 || responseCode == 201) {
                        StringBuilder sb2 = new StringBuilder();
                        try {
                            inputStreamReader = new InputStreamReader(connection.getInputStream(), Charset.forName("utf-8"));
                            try {
                                BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
                                try {
                                    for (String line = bufferedReader.readLine(); line != null; line = bufferedReader.readLine()) {
                                        if (sb2.length() > 0) {
                                            sb2.append('\n');
                                        }
                                        sb2.append(line);
                                    }
                                    a.a(bufferedReader, inputStreamReader);
                                    connection.disconnect();
                                    String string = sb2.toString();
                                    MobLog.getInstance().i("use time: " + (System.currentTimeMillis() - jCurrentTimeMillis));
                                    return string;
                                } catch (Throwable th) {
                                    th = th;
                                    closeable = bufferedReader;
                                    a.a(closeable, inputStreamReader);
                                    throw th;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            inputStreamReader = null;
                        }
                    } else {
                        StringBuilder sb3 = new StringBuilder();
                        try {
                            inputStreamReader2 = new InputStreamReader(connection.getErrorStream(), Charset.forName("utf-8"));
                            try {
                                BufferedReader bufferedReader2 = new BufferedReader(inputStreamReader2);
                                try {
                                    for (String line2 = bufferedReader2.readLine(); line2 != null; line2 = bufferedReader2.readLine()) {
                                        if (sb3.length() > 0) {
                                            sb3.append('\n');
                                        }
                                        sb3.append(line2);
                                    }
                                    a.a(bufferedReader2, inputStreamReader2);
                                    HashMap map2 = new HashMap();
                                    map2.put("error", sb3.toString());
                                    map2.put("status", Integer.valueOf(responseCode));
                                    new HashonHelper();
                                    throw new Throwable(HashonHelper.fromHashMap(map2));
                                } catch (Throwable th4) {
                                    th = th4;
                                    closeable = bufferedReader2;
                                    a.a(closeable, inputStreamReader2);
                                    throw th;
                                }
                            } catch (Throwable th5) {
                                th = th5;
                            }
                        } catch (Throwable th6) {
                            th = th6;
                            inputStreamReader2 = null;
                        }
                    }
                } catch (Throwable th7) {
                    th = th7;
                    closeable = inputStream;
                    a.a(closeable, outputStream);
                    throw th;
                }
            } catch (Throwable th8) {
                th = th8;
            }
        } catch (Throwable th9) {
            th = th9;
            outputStream = null;
        }
    }

    @Deprecated
    public void rawPost(String str, ArrayList<KVPair<String>> arrayList, HTTPPart hTTPPart, int i10, HttpResponseCallback httpResponseCallback, NetworkTimeOut networkTimeOut) throws Throwable {
        this.flyImpl.rawPost(str, kvPairsToStrHashMap(arrayList), com.mob.tools.network.wrapper.a.a(hTTPPart), 0, b.a(httpResponseCallback), getTimeoutWrapper(networkTimeOut));
    }

    @Deprecated
    public void rawGet(String str, ArrayList<KVPair<String>> arrayList, HttpResponseCallback httpResponseCallback, NetworkTimeOut networkTimeOut) throws Throwable {
        this.flyImpl.rawGet(str, kvPairsToStrHashMap(arrayList), b.a(httpResponseCallback), getTimeoutWrapper(networkTimeOut));
    }

    public void rawGet(String str, RawNetworkCallback rawNetworkCallback, NetworkTimeOut networkTimeOut) throws Throwable {
        rawGet(str, new HashMap<>(), rawNetworkCallback, networkTimeOut);
    }

    public void rawPost(String str, HashMap<String, String> map, HTTPPart hTTPPart, int i10, HttpResponseCallback httpResponseCallback, NetworkTimeOut networkTimeOut) throws Throwable {
        this.flyImpl.rawPost(str, map, com.mob.tools.network.wrapper.a.a(hTTPPart), i10, b.a(httpResponseCallback), getTimeoutWrapper(networkTimeOut));
    }

    @Deprecated
    public void jsonPost(String str, HashMap<String, Object> map, ArrayList<KVPair<String>> arrayList, NetworkTimeOut networkTimeOut, HttpResponseCallback httpResponseCallback) throws Throwable {
        this.flyImpl.jsonPost(str, map, kvPairsToStrHashMap(arrayList), getTimeoutWrapper(networkTimeOut), b.a(httpResponseCallback));
    }

    public void rawGet(String str, HashMap<String, String> map, RawNetworkCallback rawNetworkCallback, NetworkTimeOut networkTimeOut) throws Throwable {
        this.flyImpl.rawGet(str, map, c.a(rawNetworkCallback), getTimeoutWrapper(networkTimeOut));
    }

    public void rawGet(String str, HttpResponseCallback httpResponseCallback, NetworkTimeOut networkTimeOut) throws Throwable {
        rawGet(str, new HashMap<>(), httpResponseCallback, networkTimeOut);
    }

    public void rawGet(String str, HashMap<String, String> map, HttpResponseCallback httpResponseCallback, NetworkTimeOut networkTimeOut) throws Throwable {
        this.flyImpl.rawGet(str, map, b.a(httpResponseCallback), getTimeoutWrapper(networkTimeOut));
    }

    @Deprecated
    public void rawPost(String str, ArrayList<KVPair<String>> arrayList, HTTPPart hTTPPart, RawNetworkCallback rawNetworkCallback, NetworkTimeOut networkTimeOut) throws Throwable {
        OutputStream outputStream;
        InputStreamReader inputStreamReader;
        long jCurrentTimeMillis = System.currentTimeMillis();
        cn.fly.tools.network.NetworkHelper.NetworkTimeOut timeoutWrapper = getTimeoutWrapper(networkTimeOut);
        FlyLog.getInstance().i("rawpost: " + str);
        HttpURLConnection connection = this.flyImpl.getConnection(str, timeoutWrapper);
        connection.setDoOutput(true);
        connection.setChunkedStreamingMode(0);
        if (arrayList != null) {
            for (KVPair<String> kVPair : arrayList) {
                connection.setRequestProperty(kVPair.name, kVPair.value);
            }
        }
        connection.setInstanceFollowRedirects(this.instanceFollowRedirects);
        connection.connect();
        Closeable closeable = null;
        try {
            outputStream = connection.getOutputStream();
            try {
                InputStream inputStream = hTTPPart.toInputStream();
                try {
                    byte[] bArr = new byte[65536];
                    for (int i10 = inputStream.read(bArr); i10 > 0; i10 = inputStream.read(bArr)) {
                        outputStream.write(bArr, 0, i10);
                    }
                    outputStream.flush();
                    a.a(inputStream, outputStream);
                    int responseCode = connection.getResponseCode();
                    if (responseCode == 200) {
                        if (rawNetworkCallback != null) {
                            InputStream inputStream2 = connection.getInputStream();
                            try {
                                rawNetworkCallback.onResponse(inputStream2);
                                a.a(inputStream2);
                                connection.disconnect();
                            } catch (Throwable th) {
                                try {
                                    throw th;
                                } catch (Throwable th2) {
                                    a.a(inputStream2);
                                    connection.disconnect();
                                    throw th2;
                                }
                            }
                        } else {
                            connection.disconnect();
                        }
                        FlyLog.getInstance().i("use time: " + (System.currentTimeMillis() - jCurrentTimeMillis));
                        return;
                    }
                    StringBuilder sb2 = new StringBuilder();
                    try {
                        inputStreamReader = new InputStreamReader(connection.getErrorStream(), Charset.forName("utf-8"));
                        try {
                            BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
                            try {
                                for (String line = bufferedReader.readLine(); line != null; line = bufferedReader.readLine()) {
                                    if (sb2.length() > 0) {
                                        sb2.append('\n');
                                    }
                                    sb2.append(line);
                                }
                                a.a(bufferedReader, inputStreamReader);
                                connection.disconnect();
                                HashMap map = new HashMap();
                                map.put("error", sb2.toString());
                                map.put("status", Integer.valueOf(responseCode));
                                new HashonHelper();
                                throw new Throwable(HashonHelper.fromHashMap(map));
                            } catch (Throwable th3) {
                                th = th3;
                                closeable = bufferedReader;
                                a.a(closeable, inputStreamReader);
                                throw th;
                            }
                        } catch (Throwable th4) {
                            th = th4;
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        inputStreamReader = null;
                    }
                } catch (Throwable th6) {
                    th = th6;
                    closeable = inputStream;
                    a.a(closeable, outputStream);
                    throw th;
                }
            } catch (Throwable th7) {
                th = th7;
            }
        } catch (Throwable th8) {
            th = th8;
            outputStream = null;
        }
    }

    @Deprecated
    public void httpPost(String str, ArrayList<KVPair<String>> arrayList, byte[] bArr, ArrayList<KVPair<String>> arrayList2, int i10, HttpResponseCallback httpResponseCallback, NetworkTimeOut networkTimeOut) throws Throwable {
        HTTPPart textPostHTTPPart;
        OutputStream outputStream;
        long jCurrentTimeMillis = System.currentTimeMillis();
        FlyLog.getInstance().i("httpPost: " + str);
        HttpURLConnection connection = this.flyImpl.getConnection(str, getTimeoutWrapper(networkTimeOut));
        connection.setDoOutput(true);
        connection.setRequestProperty("Connection", "Keep-Alive");
        if (bArr != null && bArr.length > 0) {
            textPostHTTPPart = getDataPostHttpPart(connection, str, bArr);
            if (i10 >= 0) {
                connection.setChunkedStreamingMode(i10);
            }
        } else {
            textPostHTTPPart = getTextPostHTTPPart(connection, str, arrayList);
            connection.setFixedLengthStreamingMode((int) textPostHTTPPart.length());
        }
        if (arrayList2 != null) {
            for (KVPair<String> kVPair : arrayList2) {
                connection.setRequestProperty(kVPair.name, kVPair.value);
            }
        }
        connection.setInstanceFollowRedirects(this.instanceFollowRedirects);
        connection.connect();
        InputStream inputStream = null;
        try {
            outputStream = connection.getOutputStream();
            try {
                inputStream = textPostHTTPPart.toInputStream();
                byte[] bArr2 = new byte[65536];
                for (int i11 = inputStream.read(bArr2); i11 > 0; i11 = inputStream.read(bArr2)) {
                    outputStream.write(bArr2, 0, i11);
                }
                outputStream.flush();
                a.a(inputStream, outputStream);
                if (httpResponseCallback != null) {
                    try {
                        httpResponseCallback.onResponse(new HttpConnectionImpl23(connection));
                        connection.disconnect();
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            connection.disconnect();
                            throw th2;
                        }
                    }
                } else {
                    connection.disconnect();
                }
                FlyLog.getInstance().i("use time: " + (System.currentTimeMillis() - jCurrentTimeMillis));
            } catch (Throwable th3) {
                th = th3;
                a.a(inputStream, outputStream);
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            outputStream = null;
        }
    }

    @Deprecated
    public String httpPost(String str, ArrayList<KVPair<String>> arrayList, int i10, NetworkTimeOut networkTimeOut) throws Throwable {
        final HashMap map = new HashMap();
        httpPost(str, arrayList, i10, new HttpResponseCallback() { // from class: com.mob.tools.network.NetworkHelper.3
            @Override // com.mob.tools.network.HttpResponseCallback
            public void onResponse(HttpConnection httpConnection) throws Throwable {
                InputStreamReader inputStreamReader;
                InputStreamReader inputStreamReader2;
                int responseCode = httpConnection.getResponseCode();
                BufferedReader bufferedReader = null;
                if (responseCode == 200 || responseCode < 300) {
                    StringBuilder sb2 = new StringBuilder();
                    try {
                        inputStreamReader = new InputStreamReader(httpConnection.getInputStream(), Charset.forName("utf-8"));
                        try {
                            BufferedReader bufferedReader2 = new BufferedReader(inputStreamReader);
                            try {
                                for (String line = bufferedReader2.readLine(); line != null; line = bufferedReader2.readLine()) {
                                    if (sb2.length() > 0) {
                                        sb2.append('\n');
                                    }
                                    sb2.append(line);
                                }
                                a.a(bufferedReader2, inputStreamReader);
                                map.put("resp", sb2.toString());
                            } catch (Throwable th) {
                                th = th;
                                bufferedReader = bufferedReader2;
                                a.a(bufferedReader, inputStreamReader);
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        inputStreamReader = null;
                    }
                } else {
                    StringBuilder sb3 = new StringBuilder();
                    try {
                        inputStreamReader2 = new InputStreamReader(httpConnection.getErrorStream(), Charset.forName("utf-8"));
                        try {
                            BufferedReader bufferedReader3 = new BufferedReader(inputStreamReader2);
                            try {
                                for (String line2 = bufferedReader3.readLine(); line2 != null; line2 = bufferedReader3.readLine()) {
                                    if (sb3.length() > 0) {
                                        sb3.append('\n');
                                    }
                                    sb3.append(line2);
                                }
                                a.a(bufferedReader3, inputStreamReader2);
                                HashMap map2 = new HashMap();
                                map2.put("error", sb3.toString());
                                map2.put("status", Integer.valueOf(responseCode));
                                new HashonHelper();
                                throw new Throwable(HashonHelper.fromHashMap(map2));
                            } catch (Throwable th4) {
                                th = th4;
                                bufferedReader = bufferedReader3;
                                a.a(bufferedReader, inputStreamReader2);
                                throw th;
                            }
                        } catch (Throwable th5) {
                            th = th5;
                        }
                    } catch (Throwable th6) {
                        th = th6;
                        inputStreamReader2 = null;
                    }
                }
            }
        }, networkTimeOut);
        return (String) map.get("resp");
    }

    @Deprecated
    public void httpPost(String str, ArrayList<KVPair<String>> arrayList, int i10, HttpResponseCallback httpResponseCallback, NetworkTimeOut networkTimeOut) throws Throwable {
        OutputStream outputStream;
        long jCurrentTimeMillis = System.currentTimeMillis();
        FlyLog.getInstance().i("httpPost: " + str);
        HttpURLConnection connection = this.flyImpl.getConnection(str, getTimeoutWrapper(networkTimeOut));
        connection.setDoOutput(true);
        connection.setRequestProperty("Connection", "Keep-Alive");
        if (arrayList != null) {
            for (KVPair<String> kVPair : arrayList) {
                connection.setRequestProperty(kVPair.name, kVPair.value);
            }
        }
        StringPart stringPart = new StringPart();
        InputStream inputStream = null;
        stringPart.append(null);
        connection.setInstanceFollowRedirects(this.instanceFollowRedirects);
        connection.connect();
        try {
            outputStream = connection.getOutputStream();
            try {
                inputStream = stringPart.toInputStream();
                byte[] bArr = new byte[65536];
                for (int i11 = inputStream.read(bArr); i11 > 0; i11 = inputStream.read(bArr)) {
                    outputStream.write(bArr, 0, i11);
                }
                outputStream.flush();
                a.a(inputStream, outputStream);
                if (httpResponseCallback != null) {
                    try {
                        httpResponseCallback.onResponse(new HttpConnectionImpl23(connection));
                        connection.disconnect();
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            connection.disconnect();
                            throw th2;
                        }
                    }
                } else {
                    connection.disconnect();
                }
                FlyLog.getInstance().i("use time: " + (System.currentTimeMillis() - jCurrentTimeMillis));
            } catch (Throwable th3) {
                th = th3;
                a.a(inputStream, outputStream);
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            outputStream = null;
        }
    }
}
