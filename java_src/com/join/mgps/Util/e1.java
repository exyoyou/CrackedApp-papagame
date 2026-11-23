package com.join.mgps.Util;

import android.content.Context;
import android.os.AsyncTask;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public class e1 {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String f49553j = "jpegoptim";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f49554a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f49555b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f49556c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f49557d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f49558e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f49559f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f49560g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String[] f49561h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private AsyncTask f49562i;

    class a extends AsyncTask {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ b f49563a;

        a(final b val$handler) {
            this.f49563a = val$handler;
        }

        @Override // android.os.AsyncTask
        protected Object doInBackground(Object[] params) {
            String[] strArr;
            boolean zEquals;
            if (params != null) {
                strArr = (String[]) params;
            } else {
                strArr = e1.this.f49561h != null ? e1.this.f49561h : null;
            }
            if (strArr == null) {
                return null;
            }
            String strC = e1.c(strArr);
            if (t2.h(strC)) {
                zEquals = false;
            } else {
                String[] strArrSplit = strC.split(",");
                zEquals = strArrSplit[strArrSplit.length - 1].equals("optimized");
            }
            b bVar = this.f49563a;
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

    public e1(String tool, String src, String destDir, int threshold, int quality, boolean preserve) {
        this.f49554a = tool;
        this.f49555b = src;
        this.f49556c = destDir;
        this.f49557d = threshold;
        this.f49559f = quality;
        this.f49560g = preserve;
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
        if (this.f49559f >= 0) {
            this.f49558e = true;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.f49554a);
        arrayList.add(this.f49555b);
        arrayList.add("-b");
        arrayList.add("-T" + this.f49557d);
        if (this.f49558e) {
            arrayList.add("-m" + this.f49559f);
        }
        if (this.f49560g) {
            arrayList.add("-p");
        }
        if (this.f49556c != null) {
            arrayList.add("-od" + this.f49556c);
        }
        String[] strArr = new String[arrayList.size()];
        this.f49561h = strArr;
        arrayList.toArray(strArr);
    }

    void d(final b handler) {
        AsyncTask asyncTask = this.f49562i;
        if (asyncTask == null || asyncTask.getStatus() == AsyncTask.Status.FINISHED) {
            this.f49562i = new a(handler);
        }
        if (this.f49562i.getStatus() != AsyncTask.Status.RUNNING) {
            this.f49562i.execute(this.f49561h);
        }
    }
}
