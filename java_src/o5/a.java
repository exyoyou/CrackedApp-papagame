package o5;

import com.huaksj.vasdolly.common.V1SchemeUtil;
import com.huaksj.vasdolly.common.apk.SignatureNotFoundException;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public class a {
    public static void a(File file, File file2, String str) throws Exception {
        V1SchemeUtil.c(file, file2);
        b(file2, str);
    }

    public static void b(File file, String str) throws Exception {
        V1SchemeUtil.i(file, str);
    }

    public static void c(com.huaksj.vasdolly.common.a aVar, File file, String str) throws SignatureNotFoundException, IOException {
        if (file == null || str == null || str.length() <= 0) {
            throw new RuntimeException("addChannelByV2 , param invalid, channel = " + str + " , destApk = " + file);
        }
        if (aVar.c()) {
            if (!file.exists() || !file.isFile() || file.length() <= 0) {
                throw new RuntimeException("addChannelByV2 , destApk invalid in the lowMemory mode");
            }
        } else if (!file.getParentFile().exists()) {
            file.getParentFile().mkdirs();
        }
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(str.getBytes("UTF-8"));
        byteBufferWrap.order(ByteOrder.LITTLE_ENDIAN);
        b.a(aVar, file, com.huaksj.vasdolly.common.b.f34397a, byteBufferWrap);
    }

    public static void d(File file, File file2, String str, boolean z10) throws SignatureNotFoundException, IOException {
        c(b.g(file, z10), file2, str);
    }

    public static void e(File file, String str, boolean z10) throws SignatureNotFoundException, IOException {
        d(file, file, str, z10);
    }

    public static void f(File file) throws Exception {
        V1SchemeUtil.h(file);
    }

    public static void g(File file, boolean z10) throws SignatureNotFoundException, IOException {
        if (file != null && file.isFile() && file.exists()) {
            com.huaksj.vasdolly.common.a aVarG = b.g(file, z10);
            ArrayList arrayList = new ArrayList();
            arrayList.add(Integer.valueOf(com.huaksj.vasdolly.common.b.f34397a));
            b.h(aVarG, file, arrayList);
            aVarG.b();
        }
    }
}
