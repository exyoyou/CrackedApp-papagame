package net.bither.util;

import android.content.Context;
import android.os.AsyncTask;
import com.join.mgps.Util.t2;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String f94559j = "jpegoptim";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f94560a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f94561b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f94562c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f94563d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f94564e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f94565f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f94566g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String[] f94567h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private AsyncTask f94568i;

    class a extends AsyncTask {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ b f94569a;

        a(final b val$handler) {
            this.f94569a = val$handler;
        }

        @Override // android.os.AsyncTask
        protected Object doInBackground(Object[] params) {
            String[] strArr;
            boolean zEquals;
            if (params != null) {
                strArr = (String[]) params;
            } else {
                strArr = c.this.f94567h != null ? c.this.f94567h : null;
            }
            if (strArr == null) {
                return null;
            }
            String strC = c.c(strArr);
            if (t2.h(strC)) {
                zEquals = false;
            } else {
                String[] strArrSplit = strC.split(",");
                zEquals = strArrSplit[strArrSplit.length - 1].equals("optimized");
            }
            b bVar = this.f94569a;
            if (bVar != null) {
                bVar.onResult(zEquals, strC);
            }
            return strC;
        }

        @Override // android.os.AsyncTask
        protected void onCancelled(Object o10) {
            super.onCancelled(o10);
        }

        @Override // android.os.AsyncTask
        protected void onPostExecute(Object o10) {
            super.onPostExecute(o10);
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            super.onPreExecute();
        }
    }

    public interface b {
        void onResult(boolean optimized, String msg);
    }

    public c(String tool, String src, String destDir, int threshold, int quality, boolean preserve) {
        this.f94560a = tool;
        this.f94561b = src;
        this.f94562c = destDir;
        this.f94563d = threshold;
        this.f94565f = quality;
        this.f94566g = preserve;
        g();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String c(String[] cmd) {
        IOException e10;
        String str;
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec(cmd).getInputStream()));
            str = "";
            while (true) {
                try {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        break;
                    }
                    str = str + line + "";
                } catch (IOException e11) {
                    e10 = e11;
                    e10.printStackTrace();
                }
            }
        } catch (IOException e12) {
            e10 = e12;
            str = "";
        }
        return str;
    }

    public static void e(Context context, String dest) throws Throwable {
        f(context, "jpegoptim", dest);
    }

    private static void f(Context context, String fileName, String dest) throws Throwable {
        FileOutputStream fileOutputStream;
        Throwable th;
        InputStream inputStreamOpen;
        File file = new File(dest);
        if (file.exists()) {
            return;
        }
        file.getParentFile().mkdirs();
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                inputStreamOpen = context.getAssets().open(fileName);
                try {
                    fileOutputStream = new FileOutputStream(file);
                    try {
                        byte[] bArr = new byte[8192];
                        while (true) {
                            int i10 = inputStreamOpen.read(bArr);
                            if (i10 <= 0) {
                                fileOutputStream.close();
                                inputStreamOpen.close();
                                Runtime.getRuntime().exec(new String[]{"chmod", "755", file.getAbsolutePath()});
                                return;
                            }
                            fileOutputStream.write(bArr, 0, i10);
                        }
                    } catch (Exception unused) {
                        fileOutputStream2 = fileOutputStream;
                        if (fileOutputStream2 != null) {
                            fileOutputStream2.close();
                        }
                        if (inputStreamOpen != null) {
                            inputStreamOpen.close();
                        }
                        Runtime.getRuntime().exec(new String[]{"chmod", "755", file.getAbsolutePath()});
                    } catch (Throwable th2) {
                        th = th2;
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException unused2) {
                                throw th;
                            }
                        }
                        if (inputStreamOpen != null) {
                            inputStreamOpen.close();
                        }
                        Runtime.getRuntime().exec(new String[]{"chmod", "755", file.getAbsolutePath()});
                        throw th;
                    }
                } catch (Exception unused3) {
                } catch (Throwable th3) {
                    th = th3;
                    fileOutputStream = null;
                }
            } catch (IOException unused4) {
            }
        } catch (Exception unused5) {
            inputStreamOpen = null;
        } catch (Throwable th4) {
            fileOutputStream = null;
            th = th4;
            inputStreamOpen = null;
        }
    }

    private void g() {
        if (this.f94565f >= 0) {
            this.f94564e = true;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.f94560a);
        arrayList.add(this.f94561b);
        arrayList.add("-b");
        arrayList.add("-T" + this.f94563d);
        if (this.f94564e) {
            arrayList.add("-m" + this.f94565f);
        }
        if (this.f94566g) {
            arrayList.add("-p");
        }
        if (this.f94562c != null) {
            arrayList.add("-od" + this.f94562c);
        }
        String[] strArr = new String[arrayList.size()];
        this.f94567h = strArr;
        arrayList.toArray(strArr);
    }

    public void d(final b handler) {
        AsyncTask asyncTask = this.f94568i;
        if (asyncTask == null || asyncTask.getStatus() == AsyncTask.Status.FINISHED) {
            this.f94568i = new a(handler);
        }
        if (this.f94568i.getStatus() != AsyncTask.Status.RUNNING) {
            this.f94568i.execute(this.f94567h);
        }
    }
}
