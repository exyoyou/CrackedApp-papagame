package com.kwai.library.ipneigh;

import java.io.BufferedReader;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

/* JADX INFO: loaded from: classes2.dex */
final class a {

    /* JADX INFO: renamed from: com.kwai.library.ipneigh.a$a, reason: collision with other inner class name */
    static class C0965a extends Thread {
        private final InputStream bvl;

        public C0965a(InputStream inputStream) {
            super("NoopStreamConsumer");
            this.bvl = inputStream;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() throws Throwable {
            BufferedReader bufferedReader;
            Throwable th;
            BufferedReader bufferedReader2 = null;
            try {
                bufferedReader = new BufferedReader(new InputStreamReader(this.bvl));
                do {
                    try {
                    } catch (IOException unused) {
                        bufferedReader2 = bufferedReader;
                        a.closeQuietly(bufferedReader2);
                        return;
                    } catch (Throwable th2) {
                        th = th2;
                        a.closeQuietly(bufferedReader);
                        throw th;
                    }
                } while (bufferedReader.readLine() != null);
                a.closeQuietly(bufferedReader);
            } catch (IOException unused2) {
            } catch (Throwable th3) {
                bufferedReader = null;
                th = th3;
            }
        }
    }

    interface b<T> {
        T b(BufferedReader bufferedReader);
    }

    private static <T> T a(String str, b<T> bVar) throws Throwable {
        BufferedReader bufferedReader;
        Process process = null;
        try {
            Process processExec = Runtime.getRuntime().exec(str);
            try {
                C0965a c0965a = new C0965a(processExec.getErrorStream());
                c0965a.start();
                bufferedReader = new BufferedReader(new InputStreamReader(processExec.getInputStream()));
                try {
                    T tB = bVar.b(bufferedReader);
                    c0965a.join();
                    processExec.waitFor();
                    processExec.destroy();
                    closeQuietly(bufferedReader);
                    return tB;
                } catch (Throwable th) {
                    th = th;
                    process = processExec;
                    if (process != null) {
                        process.destroy();
                    }
                    closeQuietly(bufferedReader);
                    throw th;
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

    /* JADX INFO: Access modifiers changed from: private */
    public static void closeQuietly(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    public static String iO(String str) {
        try {
            return (String) a(str, new b<String>() { // from class: com.kwai.library.ipneigh.a.1
                private static String a(BufferedReader bufferedReader) throws IOException {
                    String line = bufferedReader.readLine();
                    while (bufferedReader.readLine() != null) {
                    }
                    return line;
                }

                @Override // com.kwai.library.ipneigh.a.b
                public final /* synthetic */ String b(BufferedReader bufferedReader) {
                    return a(bufferedReader);
                }
            });
        } catch (IOException | InterruptedException unused) {
            return null;
        }
    }
}
