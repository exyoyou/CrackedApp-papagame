package m.framework.network;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.security.KeyStore;
import java.util.ArrayList;
import java.util.UUID;
import kotlin.text.Typography;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.entity.InputStreamEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.util.EntityUtils;

/* JADX INFO: loaded from: classes.dex */
public class NetworkHelper {
    public static int connectionTimeout;
    public static int readTimout;

    private HttpPost filePost(String str, ArrayList<KVPair<String>> arrayList, KVPair<String> kVPair) throws Throwable {
        HttpPost httpPost = new HttpPost(str);
        String string = UUID.randomUUID().toString();
        MultiPart multiPart = new MultiPart();
        StringPart stringPart = new StringPart();
        if (arrayList != null) {
            for (KVPair<String> kVPair2 : arrayList) {
                stringPart.append("--").append(string).append("\r\n");
                stringPart.append("content-disposition: form-data; name=\"").append(kVPair2.name).append("\"\r\n\r\n");
                stringPart.append(kVPair2.value).append("\r\n");
            }
        }
        httpPost.setHeader("Content-Type", "multipart/form-data; boundary=" + string);
        stringPart.append("--").append(string).append("\r\n");
        stringPart.append("Content-Disposition: form-data; name=\"").append(kVPair.name).append("\"; filename=\"").append(new File(kVPair.value).getName()).append("\"\r\n");
        String contentTypeFor = URLConnection.getFileNameMap().getContentTypeFor(kVPair.value);
        if (contentTypeFor == null || contentTypeFor.length() <= 0) {
            if (kVPair.value.toLowerCase().endsWith("jpg") || kVPair.value.toLowerCase().endsWith("jepg")) {
                contentTypeFor = "image/jpeg";
            } else if (kVPair.value.toLowerCase().endsWith("png")) {
                contentTypeFor = "image/png";
            } else if (kVPair.value.toLowerCase().endsWith("gif")) {
                contentTypeFor = "image/gif";
            } else {
                FileInputStream fileInputStream = new FileInputStream(kVPair.value);
                String strGuessContentTypeFromStream = URLConnection.guessContentTypeFromStream(fileInputStream);
                fileInputStream.close();
                contentTypeFor = (strGuessContentTypeFromStream == null || strGuessContentTypeFromStream.length() <= 0) ? "application/octet-stream" : strGuessContentTypeFromStream;
            }
        }
        stringPart.append("Content-Type: ").append(contentTypeFor).append("\r\n\r\n");
        multiPart.append(stringPart);
        FilePart filePart = new FilePart();
        filePart.setFile(kVPair.value);
        multiPart.append(filePart);
        StringPart stringPart2 = new StringPart();
        stringPart2.append("\r\n--").append(string).append("--\r\n");
        multiPart.append(stringPart2);
        httpPost.setEntity(multiPart.getInputStreamEntity());
        return httpPost;
    }

    private HttpClient getSSLHttpClient() throws Throwable {
        KeyStore keyStore = KeyStore.getInstance(KeyStore.getDefaultType());
        keyStore.load(null, null);
        SSLSocketFactoryEx sSLSocketFactoryEx = new SSLSocketFactoryEx(keyStore);
        sSLSocketFactoryEx.setHostnameVerifier(SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER);
        BasicHttpParams basicHttpParams = new BasicHttpParams();
        HttpProtocolParams.setVersion(basicHttpParams, HttpVersion.HTTP_1_1);
        HttpProtocolParams.setContentCharset(basicHttpParams, "UTF-8");
        SchemeRegistry schemeRegistry = new SchemeRegistry();
        schemeRegistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
        schemeRegistry.register(new Scheme("https", sSLSocketFactoryEx, 443));
        return new DefaultHttpClient(new ThreadSafeClientConnManager(basicHttpParams, schemeRegistry), basicHttpParams);
    }

    private String kvPairsToUrl(ArrayList<KVPair<String>> arrayList) throws Throwable {
        StringBuilder sb2 = new StringBuilder();
        for (KVPair<String> kVPair : arrayList) {
            String strEncode = URLEncoder.encode(kVPair.name, "utf-8");
            String str = kVPair.value;
            String strEncode2 = str != null ? URLEncoder.encode(str, "utf-8") : "";
            if (sb2.length() > 0) {
                sb2.append(Typography.amp);
            }
            sb2.append(strEncode);
            sb2.append('=');
            sb2.append(strEncode2);
        }
        return sb2.toString();
    }

    private HttpPost textPost(String str, ArrayList<KVPair<String>> arrayList) throws Throwable {
        HttpPost httpPost = new HttpPost(str);
        if (arrayList != null) {
            StringPart stringPart = new StringPart();
            stringPart.append(kvPairsToUrl(arrayList));
            InputStreamEntity inputStreamEntity = stringPart.getInputStreamEntity();
            inputStreamEntity.setContentType("application/x-www-form-urlencoded");
            httpPost.setEntity(inputStreamEntity);
        }
        return httpPost;
    }

    public void download(String str, File file) throws Throwable {
        HttpGet httpGet = new HttpGet(str);
        HttpClient sSLHttpClient = str.startsWith("https://") ? getSSLHttpClient() : new DefaultHttpClient();
        HttpResponse httpResponseExecute = sSLHttpClient.execute(httpGet);
        if (httpResponseExecute.getStatusLine().getStatusCode() != 200) {
            String string = EntityUtils.toString(httpResponseExecute.getEntity(), "utf-8");
            sSLHttpClient.getConnectionManager().shutdown();
            throw new Throwable(string);
        }
        InputStream content = httpResponseExecute.getEntity().getContent();
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        byte[] bArr = new byte[1024];
        for (int i10 = content.read(bArr); i10 > 0; i10 = content.read(bArr)) {
            fileOutputStream.write(bArr, 0, i10);
        }
        fileOutputStream.flush();
        content.close();
        fileOutputStream.close();
        sSLHttpClient.getConnectionManager().shutdown();
    }

    public String httpGet(String str, ArrayList<KVPair<String>> arrayList, ArrayList<KVPair<String>> arrayList2) throws Throwable {
        if (arrayList != null) {
            String strKvPairsToUrl = kvPairsToUrl(arrayList);
            if (strKvPairsToUrl.length() > 0) {
                str = String.valueOf(str) + "?" + strKvPairsToUrl;
            }
        }
        HttpGet httpGet = new HttpGet(str);
        if (arrayList2 != null) {
            for (KVPair<String> kVPair : arrayList2) {
                httpGet.setHeader(kVPair.name, kVPair.value);
            }
        }
        BasicHttpParams basicHttpParams = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(basicHttpParams, connectionTimeout);
        HttpConnectionParams.setSoTimeout(basicHttpParams, readTimout);
        httpGet.setParams(basicHttpParams);
        HttpClient sSLHttpClient = str.startsWith("https://") ? getSSLHttpClient() : new DefaultHttpClient();
        HttpResponse httpResponseExecute = sSLHttpClient.execute(httpGet);
        if (httpResponseExecute.getStatusLine().getStatusCode() == 200) {
            String string = EntityUtils.toString(httpResponseExecute.getEntity(), "utf-8");
            sSLHttpClient.getConnectionManager().shutdown();
            return string;
        }
        String string2 = EntityUtils.toString(httpResponseExecute.getEntity(), "utf-8");
        sSLHttpClient.getConnectionManager().shutdown();
        throw new Throwable(string2);
    }

    public String httpPost(String str, ArrayList<KVPair<String>> arrayList, KVPair<String> kVPair, ArrayList<KVPair<String>> arrayList2) throws Throwable {
        HttpPost httpPostTextPost = (kVPair == null || kVPair.value == null || !new File(kVPair.value).exists()) ? textPost(str, arrayList) : filePost(str, arrayList, kVPair);
        if (arrayList2 != null) {
            for (KVPair<String> kVPair2 : arrayList2) {
                httpPostTextPost.setHeader(kVPair2.name, kVPair2.value);
            }
        }
        BasicHttpParams basicHttpParams = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(basicHttpParams, connectionTimeout);
        HttpConnectionParams.setSoTimeout(basicHttpParams, readTimout);
        httpPostTextPost.setParams(basicHttpParams);
        HttpClient sSLHttpClient = str.startsWith("https://") ? getSSLHttpClient() : new DefaultHttpClient();
        HttpResponse httpResponseExecute = sSLHttpClient.execute(httpPostTextPost);
        int statusCode = httpResponseExecute.getStatusLine().getStatusCode();
        if (statusCode == 200 || statusCode == 201) {
            String string = EntityUtils.toString(httpResponseExecute.getEntity(), "utf-8");
            sSLHttpClient.getConnectionManager().shutdown();
            return string;
        }
        String string2 = EntityUtils.toString(httpResponseExecute.getEntity(), "utf-8");
        sSLHttpClient.getConnectionManager().shutdown();
        throw new Throwable(string2);
    }

    public String httpPut(String str, ArrayList<KVPair<String>> arrayList, KVPair<String> kVPair, ArrayList<KVPair<String>> arrayList2) throws Throwable {
        if (arrayList != null) {
            String strKvPairsToUrl = kvPairsToUrl(arrayList);
            if (strKvPairsToUrl.length() > 0) {
                str = String.valueOf(str) + "?" + strKvPairsToUrl;
            }
        }
        HttpPut httpPut = new HttpPut(str);
        if (arrayList2 != null) {
            for (KVPair<String> kVPair2 : arrayList2) {
                httpPut.setHeader(kVPair2.name, kVPair2.value);
            }
        }
        FilePart filePart = new FilePart();
        filePart.setFile(kVPair.value);
        InputStreamEntity inputStreamEntity = filePart.getInputStreamEntity();
        inputStreamEntity.setContentEncoding("application/octet-stream");
        httpPut.setEntity(inputStreamEntity);
        BasicHttpParams basicHttpParams = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(basicHttpParams, connectionTimeout);
        HttpConnectionParams.setSoTimeout(basicHttpParams, readTimout);
        httpPut.setParams(basicHttpParams);
        HttpClient sSLHttpClient = str.startsWith("https://") ? getSSLHttpClient() : new DefaultHttpClient();
        HttpResponse httpResponseExecute = sSLHttpClient.execute(httpPut);
        int statusCode = httpResponseExecute.getStatusLine().getStatusCode();
        if (statusCode == 200 || statusCode == 201) {
            String string = EntityUtils.toString(httpResponseExecute.getEntity(), "utf-8");
            sSLHttpClient.getConnectionManager().shutdown();
            return string;
        }
        String string2 = EntityUtils.toString(httpResponseExecute.getEntity(), "utf-8");
        sSLHttpClient.getConnectionManager().shutdown();
        throw new Throwable(string2);
    }

    public void rawPost(String str, ArrayList<KVPair<String>> arrayList, HTTPPart hTTPPart, ResponseCallback responseCallback) throws Throwable {
        HttpPost httpPost = new HttpPost(str);
        if (arrayList != null) {
            for (KVPair<String> kVPair : arrayList) {
                httpPost.setHeader(kVPair.name, kVPair.value);
            }
        }
        httpPost.setEntity(hTTPPart.getInputStreamEntity());
        HttpClient sSLHttpClient = str.startsWith("https://") ? getSSLHttpClient() : new DefaultHttpClient();
        HttpResponse httpResponseExecute = sSLHttpClient.execute(httpPost);
        if (httpResponseExecute.getStatusLine().getStatusCode() == 200) {
            InputStream content = httpResponseExecute.getEntity().getContent();
            if (responseCallback != null) {
                responseCallback.onResponse(content);
            }
            content.close();
            sSLHttpClient.getConnectionManager().shutdown();
        }
        String string = EntityUtils.toString(httpResponseExecute.getEntity(), "utf-8");
        sSLHttpClient.getConnectionManager().shutdown();
        throw new Throwable(string);
    }

    public void download(String str, ResponseCallback responseCallback) throws Throwable {
        HttpClient defaultHttpClient;
        HttpGet httpGet = new HttpGet(str);
        if (str.startsWith("https://")) {
            defaultHttpClient = getSSLHttpClient();
        } else {
            defaultHttpClient = new DefaultHttpClient();
        }
        HttpResponse httpResponseExecute = defaultHttpClient.execute(httpGet);
        if (httpResponseExecute.getStatusLine().getStatusCode() == 200) {
            InputStream content = httpResponseExecute.getEntity().getContent();
            if (responseCallback != null) {
                responseCallback.onResponse(content);
            }
            content.close();
            defaultHttpClient.getConnectionManager().shutdown();
            return;
        }
        String string = EntityUtils.toString(httpResponseExecute.getEntity(), "utf-8");
        defaultHttpClient.getConnectionManager().shutdown();
        throw new Throwable(string);
    }

    public void httpPost(String str, ArrayList<KVPair<String>> arrayList, KVPair<String> kVPair, ArrayList<KVPair<String>> arrayList2, ResponseCallback responseCallback) throws Throwable {
        HttpPost httpPostTextPost;
        HttpClient defaultHttpClient;
        if (kVPair != null && kVPair.value != null && new File(kVPair.value).exists()) {
            httpPostTextPost = filePost(str, arrayList, kVPair);
        } else {
            httpPostTextPost = textPost(str, arrayList);
        }
        if (arrayList2 != null) {
            for (KVPair<String> kVPair2 : arrayList2) {
                httpPostTextPost.setHeader(kVPair2.name, kVPair2.value);
            }
        }
        BasicHttpParams basicHttpParams = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(basicHttpParams, connectionTimeout);
        HttpConnectionParams.setSoTimeout(basicHttpParams, readTimout);
        httpPostTextPost.setParams(basicHttpParams);
        if (str.startsWith("https://")) {
            defaultHttpClient = getSSLHttpClient();
        } else {
            defaultHttpClient = new DefaultHttpClient();
        }
        HttpResponse httpResponseExecute = defaultHttpClient.execute(httpPostTextPost);
        int statusCode = httpResponseExecute.getStatusLine().getStatusCode();
        if (statusCode != 200 && statusCode != 201) {
            String string = EntityUtils.toString(httpResponseExecute.getEntity(), "utf-8");
            defaultHttpClient.getConnectionManager().shutdown();
            throw new Throwable(string);
        }
        InputStream content = httpResponseExecute.getEntity().getContent();
        if (responseCallback != null) {
            responseCallback.onResponse(content);
        }
        content.close();
        defaultHttpClient.getConnectionManager().shutdown();
    }

    public void httpGet(String str, ArrayList<KVPair<String>> arrayList, ArrayList<KVPair<String>> arrayList2, ResponseCallback responseCallback) throws Throwable {
        HttpClient defaultHttpClient;
        if (arrayList != null) {
            String strKvPairsToUrl = kvPairsToUrl(arrayList);
            if (strKvPairsToUrl.length() > 0) {
                str = String.valueOf(str) + "?" + strKvPairsToUrl;
            }
        }
        HttpGet httpGet = new HttpGet(str);
        if (arrayList2 != null) {
            for (KVPair<String> kVPair : arrayList2) {
                httpGet.setHeader(kVPair.name, kVPair.value);
            }
        }
        BasicHttpParams basicHttpParams = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(basicHttpParams, connectionTimeout);
        HttpConnectionParams.setSoTimeout(basicHttpParams, readTimout);
        httpGet.setParams(basicHttpParams);
        if (str.startsWith("https://")) {
            defaultHttpClient = getSSLHttpClient();
        } else {
            defaultHttpClient = new DefaultHttpClient();
        }
        HttpResponse httpResponseExecute = defaultHttpClient.execute(httpGet);
        if (httpResponseExecute.getStatusLine().getStatusCode() == 200) {
            InputStream content = httpResponseExecute.getEntity().getContent();
            if (responseCallback != null) {
                responseCallback.onResponse(content);
            }
            content.close();
            defaultHttpClient.getConnectionManager().shutdown();
            return;
        }
        String string = EntityUtils.toString(httpResponseExecute.getEntity(), "utf-8");
        defaultHttpClient.getConnectionManager().shutdown();
        throw new Throwable(string);
    }
}
