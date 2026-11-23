package com.papa91.paay;

import android.content.Context;
import android.net.ConnectivityManager;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URLEncoder;
import java.security.KeyStore;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.text.Typography;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.util.EntityUtils;

/* JADX INFO: loaded from: classes2.dex */
public class NetUtils {
    public static long expires(String str) {
        return (Long.valueOf(str).longValue() * 1000) + System.currentTimeMillis();
    }

    private static HttpClient getNewHttpClient() {
        try {
            KeyStore keyStore = KeyStore.getInstance(KeyStore.getDefaultType());
            keyStore.load(null, null);
            SSLSocketFactory sSLSocketFactory = new SSLSocketFactory(keyStore);
            sSLSocketFactory.setHostnameVerifier(SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER);
            BasicHttpParams basicHttpParams = new BasicHttpParams();
            HttpProtocolParams.setVersion(basicHttpParams, HttpVersion.HTTP_1_1);
            HttpProtocolParams.setContentCharset(basicHttpParams, "UTF-8");
            SchemeRegistry schemeRegistry = new SchemeRegistry();
            schemeRegistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
            schemeRegistry.register(new Scheme("https", sSLSocketFactory, 443));
            return new DefaultHttpClient(new ThreadSafeClientConnManager(basicHttpParams, schemeRegistry), basicHttpParams);
        } catch (Exception unused) {
            return new DefaultHttpClient();
        }
    }

    public static String getRequest(String str, Map<String, String> map) {
        try {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str);
            if (map != null) {
                sb2.append("?");
                Iterator<Map.Entry<String, String>> it2 = map.entrySet().iterator();
                while (it2.hasNext()) {
                    Map.Entry<String, String> next = it2.next();
                    sb2.append(URLEncoder.encode(next.getKey(), "UTF-8"));
                    sb2.append('=');
                    sb2.append(URLEncoder.encode(next.getValue(), "UTF-8"));
                    if (it2.hasNext()) {
                        sb2.append(Typography.amp);
                    }
                }
            }
            HttpClient newHttpClient = getNewHttpClient();
            newHttpClient.getParams().setParameter("http.connection.timeout", 5000);
            newHttpClient.getParams().setParameter("http.socket.timeout", 5000);
            HttpResponse httpResponseExecute = newHttpClient.execute(new HttpGet(sb2.toString()));
            if (httpResponseExecute.getStatusLine().getStatusCode() != 200) {
                return null;
            }
            StringBuilder sb3 = new StringBuilder();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpResponseExecute.getEntity().getContent()));
            for (String line = bufferedReader.readLine(); line != null; line = bufferedReader.readLine()) {
                sb3.append(line);
            }
            return sb3.toString();
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static boolean isOpenNetwork(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager.getActiveNetworkInfo() != null) {
            return connectivityManager.getActiveNetworkInfo().isAvailable();
        }
        return false;
    }

    public static void postRequest(String str, List<BasicNameValuePair> list, NetWorkListener netWorkListener) {
        try {
            HttpClient newHttpClient = getNewHttpClient();
            HttpPost httpPost = new HttpPost(str);
            BasicHttpParams basicHttpParams = new BasicHttpParams();
            HttpConnectionParams.setConnectionTimeout(basicHttpParams, 5000);
            HttpConnectionParams.setSoTimeout(basicHttpParams, 5000);
            httpPost.setParams(basicHttpParams);
            httpPost.setEntity(new UrlEncodedFormEntity(list, "UTF-8"));
            HttpResponse httpResponseExecute = newHttpClient.execute(httpPost);
            int statusCode = httpResponseExecute.getStatusLine().getStatusCode();
            if (statusCode == 200) {
                System.out.println(statusCode);
                netWorkListener.onSuccess(EntityUtils.toString(httpResponseExecute.getEntity()));
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            netWorkListener.onFailed(e10.getMessage());
        }
    }
}
