package com.swift.sandhook.utils;

import android.os.Build;
import com.join.mgps.mod.utils.d;
import com.swift.sandhook.SandHook;
import com.swift.sandhook.SandHookConfig;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import x.a;

/* JADX INFO: loaded from: classes3.dex */
public class ArtDexOptimizer {

    private static class StreamConsumer {
        static final Executor STREAM_CONSUMER = Executors.newSingleThreadExecutor();

        private StreamConsumer() {
        }

        static void consumeInputStream(final InputStream inputStream) {
            STREAM_CONSUMER.execute(new Runnable() { // from class: com.swift.sandhook.utils.ArtDexOptimizer.StreamConsumer.1
                @Override // java.lang.Runnable
                public void run() {
                    if (inputStream == null) {
                        return;
                    }
                    do {
                        try {
                        } catch (IOException unused) {
                        } finally {
                            try {
                                inputStream.close();
                            } catch (Exception unused2) {
                            }
                        }
                    } while (inputStream.read(new byte[256]) > 0);
                }
            });
        }
    }

    public static void dexoatAndDisableInline(String str, String str2) throws IOException {
        File file = new File(str2);
        if (!file.exists()) {
            file.getParentFile().mkdirs();
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add("dex2oat");
        if (SandHookConfig.SDK_INT >= 24) {
            arrayList.add("--runtime-arg");
            arrayList.add("-classpath");
            arrayList.add("--runtime-arg");
            arrayList.add(a.f97576d);
        }
        arrayList.add("--dex-file=" + str);
        arrayList.add("--oat-file=" + str2);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("--instruction-set=");
        sb2.append(SandHook.is64Bit() ? d.f71902d : "arm");
        arrayList.add(sb2.toString());
        arrayList.add("--compiler-filter=everything");
        if (SandHookConfig.SDK_INT >= 22 && SandHookConfig.SDK_INT < 29) {
            arrayList.add("--compile-pic");
        }
        if (SandHookConfig.SDK_INT > 25) {
            arrayList.add("--inline-max-code-units=0");
        } else if (Build.VERSION.SDK_INT >= 23) {
            arrayList.add("--inline-depth-limit=0");
        }
        ProcessBuilder processBuilder = new ProcessBuilder(arrayList);
        processBuilder.redirectErrorStream(true);
        Process processStart = processBuilder.start();
        StreamConsumer.consumeInputStream(processStart.getInputStream());
        StreamConsumer.consumeInputStream(processStart.getErrorStream());
        try {
            int iWaitFor = processStart.waitFor();
            if (iWaitFor == 0) {
                return;
            }
            throw new IOException("dex2oat works unsuccessfully, exit code: " + iWaitFor);
        } catch (InterruptedException e10) {
            throw new IOException("dex2oat is interrupted, msg: " + e10.getMessage(), e10);
        }
    }
}
