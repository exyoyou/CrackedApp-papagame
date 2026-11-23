package com.efs.sdk.base.core.b;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.baidu.mobads.sdk.internal.bn;
import com.efs.sdk.base.core.controller.ControllerCenter;
import com.efs.sdk.base.core.util.Log;
import com.efs.sdk.base.core.util.ProcessUtil;
import java.io.File;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f26246a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f26247b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.efs.sdk.base.core.b.b f26248c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public C0548a f26249d;

    /* JADX INFO: renamed from: com.efs.sdk.base.core.b.a$a, reason: collision with other inner class name */
    public static class C0548a implements Comparator<File> {
        @Override // java.util.Comparator
        public final /* synthetic */ int compare(File file, File file2) {
            long jLastModified = file.lastModified() - file2.lastModified();
            if (jLastModified > 0) {
                return 1;
            }
            return jLastModified == 0 ? 0 : -1;
        }
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final a f26250a = new a(0);
    }

    /* synthetic */ a(byte b10) {
        this();
    }

    static void b(@NonNull File file) {
        if (!file.getName().startsWith("wa_")) {
            com.efs.sdk.base.core.f.f.a.f26372a.f26370c.e();
        }
        com.efs.sdk.base.core.util.b.b(file);
    }

    static void c(File file) {
        StringBuilder sb2 = new StringBuilder("file is expire: ");
        sb2.append(file.getName());
        sb2.append(", now is ");
        com.efs.sdk.base.core.a.a.a();
        sb2.append(com.efs.sdk.base.core.a.a.b());
        Log.i("efs.cache", sb2.toString());
        if (!file.getName().startsWith("wa_")) {
            com.efs.sdk.base.core.f.f.a.f26372a.f26370c.d();
        }
        com.efs.sdk.base.core.util.b.b(file);
    }

    public final void a() {
        String[] list;
        File fileD = com.efs.sdk.base.core.util.a.d(ControllerCenter.getGlobalEnvStruct().mAppContext, ControllerCenter.getGlobalEnvStruct().getAppid());
        if (!fileD.exists() || !fileD.isDirectory() || (list = fileD.list()) == null || list.length <= 0) {
            return;
        }
        for (String str : list) {
            if (!ProcessUtil.isProcessExist(ControllerCenter.getGlobalEnvStruct().mAppContext, str)) {
                File file = new File(fileD, str);
                List<File> listD = com.efs.sdk.base.core.util.b.d(file);
                if (!listD.isEmpty()) {
                    for (File file2 : listD) {
                        if (a(file2.getName())) {
                            c(file2);
                        } else {
                            com.efs.sdk.base.core.d.b bVarB = com.efs.sdk.base.core.util.b.b(file2.getName());
                            if (bVarB == null) {
                                b(file2);
                            } else {
                                e eVarA = this.f26248c.a(bVarB.f26341a.f26335b);
                                if (eVarA == null) {
                                    b(file2);
                                } else {
                                    eVarA.a(file2);
                                }
                            }
                        }
                    }
                }
                com.efs.sdk.base.core.util.b.b(file);
            }
        }
    }

    private a() {
        this.f26246a = false;
        this.f26247b = true;
        this.f26248c = new com.efs.sdk.base.core.b.b();
        this.f26249d = new C0548a();
    }

    static boolean a(String str) {
        try {
            long j10 = Long.parseLong(str.substring(str.lastIndexOf("_") + 1));
            com.efs.sdk.base.core.a.a.a();
            return Math.abs(com.efs.sdk.base.core.a.a.b() - j10) >= bn.f7592d;
        } catch (Throwable unused) {
            return true;
        }
    }

    @Nullable
    public final com.efs.sdk.base.core.d.b a(File file) {
        try {
            if (!file.exists()) {
                return null;
            }
            if (a(file.getName())) {
                c(file);
                return null;
            }
            com.efs.sdk.base.core.d.b bVarB = com.efs.sdk.base.core.util.b.b(file.getName());
            if (bVarB == null) {
                b(file);
                return null;
            }
            e eVarA = this.f26248c.a(bVarB.f26341a.f26335b);
            if (eVarA == null) {
                b(file);
                return null;
            }
            if (eVarA.a(file, bVarB)) {
                return bVarB;
            }
            b(file);
            return null;
        } catch (Throwable th) {
            Log.w("efs.cache", th);
            b(file);
            return null;
        }
    }
}
