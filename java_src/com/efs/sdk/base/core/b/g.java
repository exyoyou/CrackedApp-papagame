package com.efs.sdk.base.core.b;

import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.Base64;
import androidx.annotation.NonNull;
import com.efs.sdk.base.core.controller.ControllerCenter;
import com.efs.sdk.base.core.util.Log;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes9.dex */
public final class g extends Handler implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConcurrentHashMap<String, a> f26254a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.efs.sdk.base.core.e.a.d f26255b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.efs.sdk.base.core.e.a.c f26256c;

    static class a extends FileOutputStream {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        long f26257a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        File f26258b;

        a(@NonNull File file) {
            super(file);
            this.f26258b = file;
            this.f26257a = System.currentTimeMillis();
        }
    }

    g() {
        super(com.efs.sdk.base.core.util.concurrent.a.f26397a.getLooper());
        this.f26254a = new ConcurrentHashMap<>();
        this.f26255b = new com.efs.sdk.base.core.e.a.d();
        this.f26256c = new com.efs.sdk.base.core.e.a.c();
    }

    private static long b(String str) {
        Map<String, String> mapC = com.efs.sdk.base.core.config.a.c.a().c();
        String strConcat = "record_accumulation_time_".concat(String.valueOf(str));
        if (!mapC.containsKey(strConcat)) {
            return 60000L;
        }
        String str2 = mapC.get(strConcat);
        if (TextUtils.isEmpty(str2)) {
            return 60000L;
        }
        try {
            return Math.max(Long.parseLong(str2) * 1000, 1000L);
        } catch (Throwable th) {
            Log.e("efs.cache", "get cache interval error", th);
            return 60000L;
        }
    }

    private void c(String str) {
        a aVar;
        if (this.f26254a.containsKey(str) && (aVar = this.f26254a.get(str)) != null) {
            try {
                aVar.flush();
                com.efs.sdk.base.core.util.b.a(aVar);
                a(aVar.f26258b);
                this.f26254a.remove(str);
                if ("wa".equalsIgnoreCase(str)) {
                    return;
                }
                com.efs.sdk.base.core.f.f.a.f26372a.f26370c.c();
            } catch (Throwable th) {
                try {
                    th.printStackTrace();
                } finally {
                    this.f26254a.remove(str);
                    if (!"wa".equalsIgnoreCase(str)) {
                        com.efs.sdk.base.core.f.f.a.f26372a.f26370c.c();
                    }
                }
            }
        }
    }

    @Override // com.efs.sdk.base.core.b.e
    public final void a(com.efs.sdk.base.core.d.b bVar) {
        Message messageObtain = Message.obtain();
        messageObtain.obj = bVar;
        messageObtain.what = 0;
        sendMessage(messageObtain);
    }

    @Override // android.os.Handler
    public final void handleMessage(@NonNull Message message) {
        int i10 = message.what;
        if (i10 != 0) {
            if (i10 != 1) {
                return;
            }
            Object obj = message.obj;
            if (obj instanceof String) {
                c(obj.toString());
                return;
            }
            return;
        }
        com.efs.sdk.base.core.d.b bVar = (com.efs.sdk.base.core.d.b) message.obj;
        for (int i11 = 0; i11 < 3; i11++) {
            try {
                a aVarB = b(bVar);
                if (aVarB == null) {
                    Log.w("efs.cache", "writer is null for type " + bVar.f26341a.f26334a);
                    return;
                }
                if (aVarB.getChannel().position() + ((long) bVar.f26343c.length) > 819200) {
                    c(bVar.f26341a.f26334a);
                    aVarB = b(bVar);
                    if (aVarB == null) {
                        Log.w("efs.cache", "writer is null for type " + bVar.f26341a.f26334a);
                        return;
                    }
                }
                aVarB.write(Base64.encode(bVar.f26343c, 11));
                aVarB.write("\n".getBytes());
                return;
            } catch (Throwable th) {
                Log.e("efs.cache", "cache file error", th);
            }
        }
    }

    @Override // com.efs.sdk.base.core.b.e
    public final boolean a(File file, com.efs.sdk.base.core.d.b bVar) {
        if (!bVar.b()) {
            a(file);
            return false;
        }
        if (!file.exists()) {
            return false;
        }
        bVar.f26344d = file;
        bVar.c();
        bVar.b(1);
        return true;
    }

    private a b(com.efs.sdk.base.core.d.b bVar) {
        a aVar;
        Throwable th;
        if (this.f26254a.containsKey(bVar.f26341a.f26334a)) {
            return this.f26254a.get(bVar.f26341a.f26334a);
        }
        File file = new File(com.efs.sdk.base.core.util.a.e(ControllerCenter.getGlobalEnvStruct().mAppContext, ControllerCenter.getGlobalEnvStruct().getAppid()), com.efs.sdk.base.core.util.b.a(bVar));
        try {
            aVar = new a(file);
            try {
                a aVarPutIfAbsent = this.f26254a.putIfAbsent(bVar.f26341a.f26334a, aVar);
                if (aVarPutIfAbsent != null) {
                    com.efs.sdk.base.core.util.b.a(aVar);
                    com.efs.sdk.base.core.util.b.b(file);
                    return aVarPutIfAbsent;
                }
                Message messageObtain = Message.obtain();
                String str = bVar.f26341a.f26334a;
                messageObtain.obj = str;
                messageObtain.what = 1;
                sendMessageDelayed(messageObtain, b(str));
                if (!"wa".equalsIgnoreCase(bVar.f26341a.f26334a)) {
                    com.efs.sdk.base.core.f.f.a.f26372a.f26370c.b();
                }
                return aVar;
            } catch (Throwable th2) {
                th = th2;
                th.printStackTrace();
            }
        } catch (Throwable th3) {
            aVar = null;
            th = th3;
        }
    }

    @Override // com.efs.sdk.base.core.b.e
    public final void a(@NonNull String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Message messageObtain = Message.obtain();
        messageObtain.obj = str;
        messageObtain.what = 1;
        sendMessage(messageObtain);
    }

    @Override // com.efs.sdk.base.core.b.e
    public final void a(File file) {
        byte[] bArr;
        com.efs.sdk.base.core.d.b bVarB = com.efs.sdk.base.core.util.b.b(file.getName());
        if (bVarB == null) {
            com.efs.sdk.base.core.b.a unused = com.efs.sdk.base.core.b.a.b.f26250a;
            com.efs.sdk.base.core.b.a.b(file);
        } else if (!a(bVarB, file) || (bArr = bVarB.f26343c) == null || bArr.length <= 0) {
            com.efs.sdk.base.core.b.a unused2 = com.efs.sdk.base.core.b.a.b.f26250a;
            com.efs.sdk.base.core.b.a.b(file);
        } else {
            com.efs.sdk.base.core.util.b.a(new File(com.efs.sdk.base.core.util.a.f(ControllerCenter.getGlobalEnvStruct().mAppContext, ControllerCenter.getGlobalEnvStruct().getAppid()), com.efs.sdk.base.core.util.b.a(bVarB)), bVarB.f26343c);
            com.efs.sdk.base.core.util.b.b(file);
        }
    }

    private boolean a(com.efs.sdk.base.core.d.b bVar, File file) {
        BufferedReader bufferedReader;
        StringBuilder sb2 = new StringBuilder();
        FileReader fileReader = null;
        try {
            FileReader fileReader2 = new FileReader(file);
            try {
                bufferedReader = new BufferedReader(fileReader2);
                try {
                    for (String line = bufferedReader.readLine(); line != null; line = bufferedReader.readLine()) {
                        String strB = com.efs.sdk.base.core.util.b.b.b(line.getBytes());
                        if (!TextUtils.isEmpty(strB)) {
                            sb2.append(strB);
                            sb2.append("\n");
                        }
                    }
                    bVar.a(sb2.toString().getBytes());
                    bVar.c();
                    this.f26256c.a(bVar);
                    bVar.f26344d = file;
                    com.efs.sdk.base.core.util.b.a(bufferedReader);
                    com.efs.sdk.base.core.util.b.a(fileReader2);
                    return true;
                } catch (Throwable th) {
                    th = th;
                    fileReader = fileReader2;
                    try {
                        Log.e("efs.cache", "local decode error", th);
                        return false;
                    } finally {
                        com.efs.sdk.base.core.util.b.a(bufferedReader);
                        com.efs.sdk.base.core.util.b.a(fileReader);
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                bufferedReader = null;
            }
        } catch (Throwable th3) {
            th = th3;
            bufferedReader = null;
        }
    }
}
