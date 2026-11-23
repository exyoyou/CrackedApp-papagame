package cn.fly.tools;

import android.text.TextUtils;
import android.util.Base64;
import cn.fly.FlySDK;
import cn.fly.commons.C1293r;
import cn.fly.commons.n;
import cn.fly.tools.utils.DH;
import cn.fly.tools.utils.ResHelper;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.FilenameFilter;
import java.util.HashSet;

/* JADX INFO: loaded from: classes7.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Object f1689a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Object f1690b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile HashSet<String> f1691c = new HashSet<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private File f1692d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f1693e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f1694f;

    /* JADX INFO: renamed from: cn.fly.tools.a$a, reason: collision with other inner class name */
    public interface InterfaceC0037a {
        void a(String str);

        boolean a(DH.DHResponse dHResponse);
    }

    public a(String str, String str2, int i10) {
        this.f1693e = i10;
        if (str2 == null) {
            str2 = "null";
        } else if (TextUtils.isDigitsOnly(str2)) {
            str2 = str + str2;
        }
        this.f1694f = str2;
        File dataCacheFile = ResHelper.getDataCacheFile(FlySDK.getContextSafely(), str);
        this.f1692d = dataCacheFile;
        if (dataCacheFile.isDirectory()) {
            return;
        }
        this.f1692d.mkdirs();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(String str) {
        synchronized (this.f1691c) {
            this.f1691c.remove(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b(String str) {
        synchronized (this.f1691c) {
            if (this.f1691c.contains(str)) {
                return true;
            }
            this.f1691c.add(str);
            return false;
        }
    }

    public void a(String str) throws Throwable {
        a(str, false);
    }

    public void a(String str, boolean z10) throws Throwable {
        FileWriter fileWriter;
        String name;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        String strEncodeToString = Base64.encodeToString(str.getBytes("utf-8"), 2);
        if (TextUtils.isEmpty(strEncodeToString)) {
            return;
        }
        synchronized (f1689a) {
            File fileA = a(z10);
            BufferedWriter bufferedWriter = null;
            try {
                fileWriter = new FileWriter(fileA, true);
                try {
                    BufferedWriter bufferedWriter2 = new BufferedWriter(fileWriter);
                    try {
                        bufferedWriter2.newLine();
                        bufferedWriter2.write(strEncodeToString);
                        C1293r.a(bufferedWriter2, fileWriter);
                        name = fileA.getName();
                    } catch (Throwable th) {
                        th = th;
                        bufferedWriter = bufferedWriter2;
                        try {
                            FlyLog.getInstance().d(th);
                            C1293r.a(bufferedWriter, fileWriter);
                            name = fileA.getName();
                        } catch (Throwable th2) {
                            C1293r.a(bufferedWriter, fileWriter);
                            c(fileA.getName());
                            throw th2;
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (Throwable th4) {
                th = th4;
                fileWriter = null;
            }
            c(name);
        }
    }

    private File a(boolean z10) {
        File file;
        File[] fileArrListFiles = this.f1692d.listFiles();
        int i10 = 5;
        int i11 = 3;
        char c10 = 2;
        if (fileArrListFiles != null && fileArrListFiles.length > 0) {
            int length = fileArrListFiles.length;
            int i12 = 0;
            int i13 = 1;
            while (i12 < length) {
                File file2 = fileArrListFiles[i12];
                String name = file2.getName();
                if (name.startsWith(this.f1694f)) {
                    String[] strArrSplit = name.split("_");
                    if (!z10 && strArrSplit.length == i11) {
                        try {
                            int i14 = Integer.parseInt(strArrSplit[c10]);
                            if (i14 < this.f1693e && !b(name)) {
                                File file3 = this.f1692d;
                                Object[] objArr = new Object[i10];
                                objArr[0] = this.f1694f;
                                objArr[1] = "_";
                                objArr[2] = Integer.valueOf(i13);
                                objArr[3] = "_";
                                objArr[4] = Integer.valueOf(i14 + 1);
                                File file4 = new File(file3, a(objArr));
                                return file2.renameTo(file4) ? file4 : file2;
                            }
                        } catch (Throwable th) {
                            FlyLog.getInstance().d(th);
                        }
                    }
                    if (strArrSplit.length > 1) {
                        try {
                            if (Integer.parseInt(strArrSplit[1]) == i13) {
                                i13++;
                            }
                        } catch (Throwable th2) {
                            FlyLog.getInstance().d(th2);
                        }
                    }
                }
                i12++;
                i10 = 5;
                i11 = 3;
                c10 = 2;
            }
            file = new File(this.f1692d, a(this.f1694f, "_", Integer.valueOf(i13), "_", 0));
        } else {
            file = new File(this.f1692d, a(this.f1694f, "_", 1, "_", 0));
        }
        try {
            file.createNewFile();
        } catch (Throwable unused) {
        }
        return file;
    }

    public void a(final InterfaceC0037a interfaceC0037a) {
        if (interfaceC0037a == null) {
            return;
        }
        synchronized (f1690b) {
            final File[] fileArrListFiles = this.f1692d.listFiles(new FilenameFilter() { // from class: cn.fly.tools.a.1
                @Override // java.io.FilenameFilter
                public boolean accept(File file, String str) {
                    return !TextUtils.isEmpty(str) && str.startsWith(a.this.f1694f);
                }
            });
            if (fileArrListFiles != null && fileArrListFiles.length > 0) {
                DH.requester(FlySDK.getContext()).getDetailNetworkTypeForStatic().getAppName().getDeviceKey().getODH().request(new DH.DHResponder() { // from class: cn.fly.tools.a.2
                    @Override // cn.fly.tools.utils.DH.DHResponder
                    public void onResponse(DH.DHResponse dHResponse) {
                        BufferedReader bufferedReader;
                        if (n.a("004c5biRcd").equals(dHResponse.getDetailNetworkTypeForStatic())) {
                            return;
                        }
                        for (File file : fileArrListFiles) {
                            String name = file.getName();
                            if (!a.this.b(name)) {
                                FileReader fileReader = null;
                                try {
                                    FileReader fileReader2 = new FileReader(file);
                                    try {
                                        bufferedReader = new BufferedReader(fileReader2);
                                        while (true) {
                                            try {
                                                String line = bufferedReader.readLine();
                                                if (line == null) {
                                                    break;
                                                }
                                                String str = new String(Base64.decode(line, 2), "utf-8");
                                                if (!TextUtils.isEmpty(str)) {
                                                    interfaceC0037a.a(str);
                                                }
                                            } catch (Throwable th) {
                                                th = th;
                                                fileReader = fileReader2;
                                                try {
                                                    FlyLog.getInstance().d(th);
                                                    C1293r.a(bufferedReader, fileReader);
                                                } catch (Throwable th2) {
                                                    C1293r.a(bufferedReader, fileReader);
                                                    a.this.c(name);
                                                    throw th2;
                                                }
                                            }
                                        }
                                        if (interfaceC0037a.a(dHResponse)) {
                                            FlyLog.getInstance().d("[LGSM] D l", new Object[0]);
                                            file.delete();
                                        }
                                        C1293r.a(bufferedReader, fileReader2);
                                    } catch (Throwable th3) {
                                        th = th3;
                                        bufferedReader = null;
                                    }
                                } catch (Throwable th4) {
                                    th = th4;
                                    bufferedReader = null;
                                }
                                a.this.c(name);
                            }
                        }
                    }
                });
            }
        }
    }

    private static String a(Object... objArr) {
        if (objArr == null || objArr.length == 0) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        for (Object obj : objArr) {
            sb2.append(obj);
        }
        return sb2.toString();
    }
}
