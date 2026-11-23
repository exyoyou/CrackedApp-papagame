package com.byazt.dk;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.zip.GZIPInputStream;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_OPEN_RESULT, 215})
public class yp {

    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_OPEN_RESULT, 435})
    public static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public InputStream f12991c;
        public Map<String, String> tt;
        public HttpURLConnection uj;
        public int ve;

        public c(InputStream inputStream, Map<String, String> map, int i10, HttpURLConnection httpURLConnection) {
            this.f12991c = inputStream;
            this.tt = map;
            this.ve = i10;
            this.uj = httpURLConnection;
        }
    }

    public static HttpURLConnection c(String str, Map<String, String> map) {
        HttpURLConnection httpURLConnection = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            HttpURLConnection httpURLConnection2 = (HttpURLConnection) new URL(str).openConnection();
            try {
                httpURLConnection2.setInstanceFollowRedirects(false);
                httpURLConnection2.setRequestProperty("accept", "*/*");
                httpURLConnection2.setRequestProperty("connection", "Keep-Alive");
                if (map != null && !map.isEmpty()) {
                    for (Map.Entry<String, String> entry : map.entrySet()) {
                        httpURLConnection2.setRequestProperty(entry.getKey(), entry.getValue());
                    }
                }
                httpURLConnection2.connect();
                int responseCode = httpURLConnection2.getResponseCode();
                return ((responseCode < 200 || responseCode >= 300) && responseCode >= 300 && responseCode < 400) ? c(httpURLConnection2.getHeaderField("Location"), map) : httpURLConnection2;
            } catch (Exception unused) {
                httpURLConnection = httpURLConnection2;
                return httpURLConnection;
            }
        } catch (Exception unused2) {
        }
    }

    public static Map<String, String> c(HttpURLConnection httpURLConnection) {
        HashMap map = new HashMap();
        int size = httpURLConnection.getHeaderFields().size();
        for (int i10 = 0; i10 < size; i10++) {
            map.put(httpURLConnection.getHeaderFieldKey(i10), httpURLConnection.getHeaderField(i10));
        }
        return map;
    }

    public static c c(String str, List<com.byazt.t.ve> list) throws IOException {
        int responseCode;
        HashMap map = new HashMap();
        if (list != null && !list.isEmpty()) {
            for (com.byazt.t.ve veVar : list) {
                map.put(veVar.c(), veVar.tt());
            }
        }
        HttpURLConnection httpURLConnectionC = c(str, map);
        if (httpURLConnectionC == null || (responseCode = httpURLConnectionC.getResponseCode()) < 200 || responseCode >= 300) {
            return null;
        }
        Map<String, String> mapC = c(httpURLConnectionC);
        InputStream inputStream = httpURLConnectionC.getInputStream();
        String contentEncoding = httpURLConnectionC.getContentEncoding();
        if (!TextUtils.isEmpty(contentEncoding) && contentEncoding.contains("gzip")) {
            inputStream = new GZIPInputStream(inputStream);
        }
        return new c(inputStream, mapC, responseCode, httpURLConnectionC);
    }
}
