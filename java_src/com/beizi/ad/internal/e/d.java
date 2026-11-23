package com.beizi.ad.internal.e;

import android.annotation.TargetApi;
import android.os.AsyncTask;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;

/* JADX INFO: loaded from: classes6.dex */
public abstract class d extends AsyncTask<Void, Void, e> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f8963a = "HTTPGet";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f8964b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f8965c;

    public d(boolean z10, boolean z11) {
        this.f8964b = z10;
        this.f8965c = z11;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public e doInBackground(Void... voidArr) {
        e eVar = new e();
        HttpURLConnection httpURLConnectionA = null;
        try {
            try {
                try {
                    URL url = new URL(a());
                    if (url.getHost() == null) {
                        eVar.a(false);
                        return eVar;
                    }
                    httpURLConnectionA = a(url);
                    a(httpURLConnectionA);
                    httpURLConnectionA.connect();
                    int responseCode = httpURLConnectionA.getResponseCode();
                    com.beizi.ad.lance.a.n.a(f8963a, "HTTPGet code:" + responseCode);
                    eVar.a(httpURLConnectionA.getHeaderFields());
                    eVar.a(responseCode == 200 || responseCode == 302);
                    if (responseCode == 302) {
                        eVar.a(responseCode);
                        eVar.b(httpURLConnectionA.getHeaderField("Location"));
                    }
                    if (this.f8965c) {
                        InputStream inputStream = httpURLConnectionA.getInputStream();
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        byte[] bArr = new byte[1024];
                        while (true) {
                            int i10 = inputStream.read(bArr);
                            if (i10 == -1) {
                                break;
                            }
                            byteArrayOutputStream.write(bArr, 0, i10);
                        }
                        inputStream.close();
                        if (this.f8964b) {
                            eVar.a(byteArrayOutputStream);
                        } else {
                            eVar.a(byteArrayOutputStream.toString("UTF-8"));
                        }
                    }
                    httpURLConnectionA.disconnect();
                    return eVar;
                } catch (Exception unused) {
                    eVar.a(false);
                    eVar.a(g.TRANSPORT_ERROR);
                    if (0 != 0) {
                    }
                    return eVar;
                }
            } catch (MalformedURLException unused2) {
                eVar.a(false);
                eVar.a(g.URL_FORMAT_ERROR);
                if (0 != 0) {
                }
                return eVar;
            } catch (IOException unused3) {
                eVar.a(false);
                eVar.a(g.TRANSPORT_ERROR);
                if (0 != 0) {
                }
                return eVar;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                httpURLConnectionA.disconnect();
            }
            throw th;
        }
    }

    protected abstract String a();

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public abstract void onPostExecute(e eVar);

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    @TargetApi(11)
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void onCancelled(e eVar) {
        super.onCancelled(null);
    }

    private HttpURLConnection a(URL url) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setDoOutput(false);
        httpURLConnection.setDoInput(true);
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setRequestMethod("GET");
        return httpURLConnection;
    }

    private void a(HttpURLConnection httpURLConnection) throws ProtocolException {
        httpURLConnection.setRequestProperty("User-Agent", com.beizi.ad.internal.c.a().f8767e);
    }
}
