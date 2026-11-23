package com.papa91.arc.ext;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.net.UnknownHostException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class Log {
    public static final String BAD_IMPLEMENTATION = "Bad implementation";
    private static final boolean DISABLE_LOG = true;
    private static final long FLUSH_LOG_EVERY_MS = 5000;
    static String LOG_FILE = "/last_run.log";
    public static final String TAG = "WF-LOG";
    static volatile boolean closed;
    static final Runnable flushTask = new Runnable() { // from class: com.papa91.arc.ext.Log.1
        @Override // java.lang.Runnable
        public void run() {
            Log.flush(true);
        }
    };
    private static long lastFlush = 0;
    public static String lastSearchLog = "- none -";
    static StringBuilder lastSearchLogCurrent = null;
    static volatile BufferedWriter writer = null;

    public static class LogWrapper {
        public static final int MAX_MSG_LEN = 1023;
        public static final int MAX_TAG_LEN = 23;
        private static final boolean OFF = false;

        public static int d(String str, String str2) {
            return log(2, str, str2, null);
        }

        public static int e(String str, String str2) {
            return log(9, str, str2, null);
        }

        private static String fixTag(String str) {
            if (str == null) {
                return "null";
            }
            return str.length() > 23 ? str.substring(0, 23) : str;
        }

        public static int i(String str, String str2) {
            return log(4, str, str2, null);
        }

        private static int log(int i10, String str, String str2, Throwable th) {
            fixTag(str);
            if (str2 == null) {
                str2 = "null";
            }
            int length = str2.length();
            int i11 = 0;
            while (true) {
                int i12 = length - i11;
                if (i12 > 1023) {
                    i12 = 1023;
                }
                int i13 = i12 + i11;
                str2.substring(i11, i13);
                if (i10 == 0 || i10 == 1 || i10 == 3 || i10 == 5 || i10 == 10 || i10 != 7) {
                }
                if (i13 >= length) {
                    return 0;
                }
                i11 = i13;
            }
        }

        public static int v(String str, String str2) {
            return log(0, str, str2, null);
        }

        public static int w(String str, String str2) {
            return log(6, str, str2, null);
        }

        public static int d(String str, String str2, Throwable th) {
            return log(3, str, str2, th);
        }

        public static int e(String str, String str2, Throwable th) {
            return log(10, str, str2, th);
        }

        public static int i(String str, String str2, Throwable th) {
            return log(5, str, str2, th);
        }

        public static int v(String str, String str2, Throwable th) {
            return log(1, str, str2, th);
        }

        public static int w(String str, String str2, Throwable th) {
            return log(7, str, str2, th);
        }

        public static int w(String str, Throwable th) {
            return log(8, str, null, th);
        }
    }

    public static int badImplementation(Throwable th) {
        return w(BAD_IMPLEMENTATION, th);
    }

    public static void close() {
        ThreadManager.runOnLogThread(new Runnable() { // from class: com.papa91.arc.ext.Log.2
            @Override // java.lang.Runnable
            public void run() {
                Log.closed = true;
                if (Log.writer != null) {
                    try {
                        Log.writer.flush();
                        Log.writer.close();
                        Log.writer = null;
                    } catch (IOException e10) {
                        LogWrapper.d(Log.TAG, "Log close: I/O", e10);
                    }
                }
            }
        });
    }

    public static void crash() {
        ThreadManager.runOnLogThread(new Runnable() { // from class: com.papa91.arc.ext.Log.3
            @Override // java.lang.Runnable
            public void run() {
                Log.close();
            }
        });
    }

    public static int d(String str) {
        return d(TAG, str);
    }

    public static int e(String str) {
        return e(TAG, str);
    }

    public static boolean flush(boolean z10) {
        if (writer == null) {
            return false;
        }
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - lastFlush <= 5000 && !z10) {
                return false;
            }
            try {
                writer.flush();
            } catch (NullPointerException unused) {
            }
            lastFlush = jCurrentTimeMillis;
            return true;
        } catch (IOException e10) {
            LogWrapper.d(TAG, "Log write: I/O", e10);
            return false;
        }
    }

    public static String getStackTraceString(Throwable th) {
        if (th == null) {
            return "";
        }
        for (Throwable cause = th; cause != null; cause = cause.getCause()) {
            if (cause instanceof UnknownHostException) {
                return "";
            }
        }
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        try {
            th.printStackTrace(printWriter);
        } catch (OutOfMemoryError unused) {
            printWriter.write("OutOfMemoryError 1\n");
            while (th != null) {
                try {
                    printWriter.write(th.toString());
                    printWriter.write("\n");
                } catch (OutOfMemoryError unused2) {
                    printWriter.write("OutOfMemoryError 2\n");
                }
                th = th.getCause();
            }
        } catch (Throwable th2) {
            printWriter.write("Exception on printStackTrace: " + th2.getMessage());
        }
        printWriter.flush();
        String string = stringWriter.toString();
        return string == null ? "" : string;
    }

    public static void here() {
        Thread threadCurrentThread = Thread.currentThread();
        StackTraceElement stackTraceElement = threadCurrentThread.getStackTrace()[3];
        d("here: " + threadCurrentThread.getName() + " : " + threadCurrentThread.getId() + " : " + stackTraceElement.getFileName() + " : " + stackTraceElement.getClassName() + " : " + stackTraceElement.getMethodName() + " : " + stackTraceElement.getLineNumber());
    }

    public static int i(String str) {
        return i(TAG, str);
    }

    public static int iFull(String str) {
        int length = str.length();
        int i10 = 0;
        while (i10 < length) {
            int i11 = i10 + 1003;
            i(str.substring(i10, i11 < length ? i11 : length));
            i10 = i11;
        }
        return 0;
    }

    static void reopen() {
    }

    public static void runLogOnProcessErrStream(final Process process, final InputStream inputStream) {
        if (process != null) {
            new DaemonThread("runLogOnProcessErrStream") { // from class: com.papa91.arc.ext.Log.4
                /* JADX WARN: Code duplicated, block: B:103:0x0135 A[SYNTHETIC] */
                /* JADX WARN: Code duplicated, block: B:104:0x003b A[SYNTHETIC] */
                /* JADX WARN: Code duplicated, block: B:105:0x0090 A[SYNTHETIC] */
                /* JADX WARN: Code duplicated, block: B:109:0x009c A[SYNTHETIC] */
                /* JADX WARN: Code duplicated, block: B:110:0x0045 A[SYNTHETIC] */
                /* JADX WARN: Code duplicated, block: B:111:0x0098 A[SYNTHETIC] */
                /* JADX WARN: Code duplicated, block: B:112:0x00c3 A[SYNTHETIC] */
                /* JADX WARN: Code duplicated, block: B:113:0x00a4 A[SYNTHETIC] */
                /* JADX WARN: Code duplicated, block: B:114:0x00d5 A[SYNTHETIC] */
                /* JADX WARN: Code duplicated, block: B:115:0x00cb A[SYNTHETIC] */
                /* JADX WARN: Code duplicated, block: B:116:0x0129 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
                /* JADX WARN: Code duplicated, block: B:118:0x0031 A[SYNTHETIC] */
                /* JADX WARN: Code duplicated, block: B:123:0x0019 A[SYNTHETIC] */
                /* JADX WARN: Code duplicated, block: B:21:0x0050 A[Catch: NumberFormatException -> 0x007c, IllegalArgumentException -> 0x013c, InterruptedException -> 0x0148, IOException -> 0x0149, NullPointerException -> 0x014d, TryCatch #6 {IllegalArgumentException -> 0x013c, blocks: (B:11:0x002b, B:13:0x0031, B:15:0x003b, B:19:0x0046, B:21:0x0050, B:22:0x0052, B:24:0x0055, B:26:0x005d, B:32:0x0076, B:35:0x007d, B:36:0x0090, B:39:0x009c, B:42:0x00a5, B:45:0x00af, B:46:0x00c3, B:48:0x00cb, B:49:0x00d5, B:51:0x00dd, B:54:0x00ec, B:57:0x00f4, B:59:0x00fc, B:61:0x0104, B:66:0x011b, B:68:0x0121, B:71:0x012b, B:72:0x0131, B:64:0x010c, B:65:0x0113, B:53:0x00e5, B:73:0x0135), top: B:94:0x002b, outer: #1 }] */
                /* JADX WARN: Code duplicated, block: B:24:0x0055 A[Catch: NumberFormatException -> 0x007c, IllegalArgumentException -> 0x013c, InterruptedException -> 0x0148, IOException -> 0x0149, NullPointerException -> 0x014d, TRY_LEAVE, TryCatch #6 {IllegalArgumentException -> 0x013c, blocks: (B:11:0x002b, B:13:0x0031, B:15:0x003b, B:19:0x0046, B:21:0x0050, B:22:0x0052, B:24:0x0055, B:26:0x005d, B:32:0x0076, B:35:0x007d, B:36:0x0090, B:39:0x009c, B:42:0x00a5, B:45:0x00af, B:46:0x00c3, B:48:0x00cb, B:49:0x00d5, B:51:0x00dd, B:54:0x00ec, B:57:0x00f4, B:59:0x00fc, B:61:0x0104, B:66:0x011b, B:68:0x0121, B:71:0x012b, B:72:0x0131, B:64:0x010c, B:65:0x0113, B:53:0x00e5, B:73:0x0135), top: B:94:0x002b, outer: #1 }] */
                /* JADX WARN: Code duplicated, block: B:51:0x00dd A[Catch: IllegalArgumentException -> 0x013c, InterruptedException -> 0x0148, IOException -> 0x0149, NullPointerException -> 0x014d, TryCatch #6 {IllegalArgumentException -> 0x013c, blocks: (B:11:0x002b, B:13:0x0031, B:15:0x003b, B:19:0x0046, B:21:0x0050, B:22:0x0052, B:24:0x0055, B:26:0x005d, B:32:0x0076, B:35:0x007d, B:36:0x0090, B:39:0x009c, B:42:0x00a5, B:45:0x00af, B:46:0x00c3, B:48:0x00cb, B:49:0x00d5, B:51:0x00dd, B:54:0x00ec, B:57:0x00f4, B:59:0x00fc, B:61:0x0104, B:66:0x011b, B:68:0x0121, B:71:0x012b, B:72:0x0131, B:64:0x010c, B:65:0x0113, B:53:0x00e5, B:73:0x0135), top: B:94:0x002b, outer: #1 }] */
                /* JADX WARN: Code duplicated, block: B:53:0x00e5 A[Catch: IllegalArgumentException -> 0x013c, InterruptedException -> 0x0148, IOException -> 0x0149, NullPointerException -> 0x014d, TryCatch #6 {IllegalArgumentException -> 0x013c, blocks: (B:11:0x002b, B:13:0x0031, B:15:0x003b, B:19:0x0046, B:21:0x0050, B:22:0x0052, B:24:0x0055, B:26:0x005d, B:32:0x0076, B:35:0x007d, B:36:0x0090, B:39:0x009c, B:42:0x00a5, B:45:0x00af, B:46:0x00c3, B:48:0x00cb, B:49:0x00d5, B:51:0x00dd, B:54:0x00ec, B:57:0x00f4, B:59:0x00fc, B:61:0x0104, B:66:0x011b, B:68:0x0121, B:71:0x012b, B:72:0x0131, B:64:0x010c, B:65:0x0113, B:53:0x00e5, B:73:0x0135), top: B:94:0x002b, outer: #1 }] */
                /* JADX WARN: Code duplicated, block: B:57:0x00f4 A[Catch: IllegalArgumentException -> 0x013c, InterruptedException -> 0x0148, IOException -> 0x0149, NullPointerException -> 0x014d, TRY_ENTER, TryCatch #6 {IllegalArgumentException -> 0x013c, blocks: (B:11:0x002b, B:13:0x0031, B:15:0x003b, B:19:0x0046, B:21:0x0050, B:22:0x0052, B:24:0x0055, B:26:0x005d, B:32:0x0076, B:35:0x007d, B:36:0x0090, B:39:0x009c, B:42:0x00a5, B:45:0x00af, B:46:0x00c3, B:48:0x00cb, B:49:0x00d5, B:51:0x00dd, B:54:0x00ec, B:57:0x00f4, B:59:0x00fc, B:61:0x0104, B:66:0x011b, B:68:0x0121, B:71:0x012b, B:72:0x0131, B:64:0x010c, B:65:0x0113, B:53:0x00e5, B:73:0x0135), top: B:94:0x002b, outer: #1 }] */
                /* JADX WARN: Code duplicated, block: B:63:0x010a A[DONT_INVERT] */
                /* JADX WARN: Code duplicated, block: B:64:0x010c A[Catch: IllegalArgumentException -> 0x013c, InterruptedException -> 0x0148, IOException -> 0x0149, NullPointerException -> 0x014d, TryCatch #6 {IllegalArgumentException -> 0x013c, blocks: (B:11:0x002b, B:13:0x0031, B:15:0x003b, B:19:0x0046, B:21:0x0050, B:22:0x0052, B:24:0x0055, B:26:0x005d, B:32:0x0076, B:35:0x007d, B:36:0x0090, B:39:0x009c, B:42:0x00a5, B:45:0x00af, B:46:0x00c3, B:48:0x00cb, B:49:0x00d5, B:51:0x00dd, B:54:0x00ec, B:57:0x00f4, B:59:0x00fc, B:61:0x0104, B:66:0x011b, B:68:0x0121, B:71:0x012b, B:72:0x0131, B:64:0x010c, B:65:0x0113, B:53:0x00e5, B:73:0x0135), top: B:94:0x002b, outer: #1 }] */
                /* JADX WARN: Code duplicated, block: B:68:0x0121 A[Catch: IllegalArgumentException -> 0x013c, InterruptedException -> 0x0148, IOException -> 0x0149, NullPointerException -> 0x014d, TryCatch #6 {IllegalArgumentException -> 0x013c, blocks: (B:11:0x002b, B:13:0x0031, B:15:0x003b, B:19:0x0046, B:21:0x0050, B:22:0x0052, B:24:0x0055, B:26:0x005d, B:32:0x0076, B:35:0x007d, B:36:0x0090, B:39:0x009c, B:42:0x00a5, B:45:0x00af, B:46:0x00c3, B:48:0x00cb, B:49:0x00d5, B:51:0x00dd, B:54:0x00ec, B:57:0x00f4, B:59:0x00fc, B:61:0x0104, B:66:0x011b, B:68:0x0121, B:71:0x012b, B:72:0x0131, B:64:0x010c, B:65:0x0113, B:53:0x00e5, B:73:0x0135), top: B:94:0x002b, outer: #1 }] */
                /* JADX WARN: Code duplicated, block: B:71:0x012b A[Catch: IllegalArgumentException -> 0x013c, InterruptedException -> 0x0148, IOException -> 0x0149, NullPointerException -> 0x014d, TryCatch #6 {IllegalArgumentException -> 0x013c, blocks: (B:11:0x002b, B:13:0x0031, B:15:0x003b, B:19:0x0046, B:21:0x0050, B:22:0x0052, B:24:0x0055, B:26:0x005d, B:32:0x0076, B:35:0x007d, B:36:0x0090, B:39:0x009c, B:42:0x00a5, B:45:0x00af, B:46:0x00c3, B:48:0x00cb, B:49:0x00d5, B:51:0x00dd, B:54:0x00ec, B:57:0x00f4, B:59:0x00fc, B:61:0x0104, B:66:0x011b, B:68:0x0121, B:71:0x012b, B:72:0x0131, B:64:0x010c, B:65:0x0113, B:53:0x00e5, B:73:0x0135), top: B:94:0x002b, outer: #1 }] */
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    String line;
                    String strTrim;
                    StringBuilder sb2;
                    super.run();
                    try {
                        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream), 512);
                        int[] iArrCopyOf = null;
                        boolean z10 = false;
                        int i10 = 0;
                        int i11 = 0;
                        while (!Thread.interrupted()) {
                            if (z10) {
                                try {
                                    process.exitValue();
                                    return;
                                } catch (ArrayIndexOutOfBoundsException e10) {
                                    Log.badImplementation(e10);
                                    try {
                                        try {
                                            line = bufferedReader.readLine();
                                            if (line == null) {
                                                strTrim = line.trim();
                                                if (strTrim.length() != 0) {
                                                    if (strTrim.startsWith("KEY: ")) {
                                                        try {
                                                            int i12 = Integer.parseInt(strTrim.substring(5));
                                                            if (iArrCopyOf == null) {
                                                                iArrCopyOf = new int[512];
                                                            }
                                                            if (i10 == iArrCopyOf.length) {
                                                                iArrCopyOf = Arrays.copyOf(iArrCopyOf, iArrCopyOf.length + 512);
                                                            }
                                                            int i13 = i10 + 1;
                                                            try {
                                                                iArrCopyOf[i10] = i12;
                                                            } catch (NumberFormatException e11) {
                                                                try {
                                                                    Log.w("Failed parse: " + strTrim, e11);
                                                                } catch (IllegalArgumentException e12) {
                                                                    Log.badImplementation(e12);
                                                                    i11++;
                                                                }
                                                            }
                                                            i10 = i13;
                                                        } catch (NumberFormatException e13) {
                                                            Log.w("Failed parse: " + strTrim, e13);
                                                        }
                                                    } else if (strTrim.startsWith("KEY_END")) {
                                                        iArrCopyOf = null;
                                                        i10 = 0;
                                                    } else if (strTrim.startsWith("EVENT: ")) {
                                                        try {
                                                            Integer.parseInt(strTrim.substring(7));
                                                        } catch (NumberFormatException e14) {
                                                            Log.w("Failed parse: " + strTrim, e14);
                                                        }
                                                    } else if (strTrim.startsWith("BAD_KERNEL")) {
                                                        ThreadManager.runOnUiThread(new Runnable() { // from class: com.papa91.arc.ext.Log.4.1
                                                            @Override // java.lang.Runnable
                                                            public void run() {
                                                            }
                                                        });
                                                    } else {
                                                        sb2 = Log.lastSearchLogCurrent;
                                                        if (strTrim.contains(" dbg: ")) {
                                                            sb2 = new StringBuilder();
                                                            Log.lastSearchLogCurrent = sb2;
                                                        } else {
                                                            sb2 = new StringBuilder();
                                                            Log.lastSearchLogCurrent = sb2;
                                                        }
                                                        if (strTrim.contains(" dbg: ")) {
                                                            if (sb2 == null) {
                                                                sb2 = new StringBuilder();
                                                                Log.lastSearchLogCurrent = sb2;
                                                            }
                                                            sb2.append(strTrim);
                                                            sb2.append('\n');
                                                        } else {
                                                            if (sb2 == null) {
                                                                sb2 = new StringBuilder();
                                                                Log.lastSearchLogCurrent = sb2;
                                                            }
                                                            sb2.append(strTrim);
                                                            sb2.append('\n');
                                                        }
                                                        if (!strTrim.contains("::searchDone:")) {
                                                        }
                                                        if (sb2 != null) {
                                                            Log.lastSearchLog = sb2.toString();
                                                        }
                                                        Log.lastSearchLogCurrent = null;
                                                    }
                                                }
                                            } else {
                                                Thread.sleep(500L);
                                            }
                                        } catch (IllegalArgumentException e15) {
                                            Log.badImplementation(e15);
                                            i11++;
                                            if (i11 <= 30) {
                                                return;
                                            }
                                        }
                                    } catch (IOException unused) {
                                        z10 = true;
                                    } catch (InterruptedException unused2) {
                                        return;
                                    }
                                } catch (IllegalThreadStateException unused3) {
                                    line = bufferedReader.readLine();
                                    if (line == null) {
                                        strTrim = line.trim();
                                        if (strTrim.length() != 0) {
                                            if (strTrim.startsWith("KEY: ")) {
                                                int i14 = Integer.parseInt(strTrim.substring(5));
                                                if (iArrCopyOf == null) {
                                                    iArrCopyOf = new int[512];
                                                }
                                                if (i10 == iArrCopyOf.length) {
                                                    iArrCopyOf = Arrays.copyOf(iArrCopyOf, iArrCopyOf.length + 512);
                                                }
                                                int i15 = i10 + 1;
                                                iArrCopyOf[i10] = i14;
                                                i10 = i15;
                                            } else if (strTrim.startsWith("KEY_END")) {
                                                iArrCopyOf = null;
                                                i10 = 0;
                                            } else if (strTrim.startsWith("EVENT: ")) {
                                                Integer.parseInt(strTrim.substring(7));
                                            } else if (strTrim.startsWith("BAD_KERNEL")) {
                                                ThreadManager.runOnUiThread(new Runnable() { // from class: com.papa91.arc.ext.Log.4.1
                                                    @Override // java.lang.Runnable
                                                    public void run() {
                                                    }
                                                });
                                            } else {
                                                sb2 = Log.lastSearchLogCurrent;
                                                if (strTrim.contains(" dbg: ")) {
                                                    sb2 = new StringBuilder();
                                                    Log.lastSearchLogCurrent = sb2;
                                                } else {
                                                    sb2 = new StringBuilder();
                                                    Log.lastSearchLogCurrent = sb2;
                                                }
                                                if (strTrim.contains(" dbg: ")) {
                                                    if (sb2 == null) {
                                                        sb2 = new StringBuilder();
                                                        Log.lastSearchLogCurrent = sb2;
                                                    }
                                                    sb2.append(strTrim);
                                                    sb2.append('\n');
                                                } else {
                                                    if (sb2 == null) {
                                                        sb2 = new StringBuilder();
                                                        Log.lastSearchLogCurrent = sb2;
                                                    }
                                                    sb2.append(strTrim);
                                                    sb2.append('\n');
                                                }
                                                if (!strTrim.contains("::searchDone:")) {
                                                }
                                                if (sb2 != null) {
                                                    Log.lastSearchLog = sb2.toString();
                                                }
                                                Log.lastSearchLogCurrent = null;
                                            }
                                        }
                                    } else {
                                        Thread.sleep(500L);
                                    }
                                }
                            } else {
                                line = bufferedReader.readLine();
                                if (line == null) {
                                    strTrim = line.trim();
                                    if (strTrim.length() != 0) {
                                        if (strTrim.startsWith("KEY: ")) {
                                            int i16 = Integer.parseInt(strTrim.substring(5));
                                            if (iArrCopyOf == null) {
                                                iArrCopyOf = new int[512];
                                            }
                                            if (i10 == iArrCopyOf.length) {
                                                iArrCopyOf = Arrays.copyOf(iArrCopyOf, iArrCopyOf.length + 512);
                                            }
                                            int i17 = i10 + 1;
                                            iArrCopyOf[i10] = i16;
                                            i10 = i17;
                                        } else if (strTrim.startsWith("KEY_END")) {
                                            iArrCopyOf = null;
                                            i10 = 0;
                                        } else if (strTrim.startsWith("EVENT: ")) {
                                            Integer.parseInt(strTrim.substring(7));
                                        } else if (strTrim.startsWith("BAD_KERNEL")) {
                                            ThreadManager.runOnUiThread(new Runnable() { // from class: com.papa91.arc.ext.Log.4.1
                                                @Override // java.lang.Runnable
                                                public void run() {
                                                }
                                            });
                                        } else {
                                            sb2 = Log.lastSearchLogCurrent;
                                            if (strTrim.contains(" dbg: ") || strTrim.endsWith("Send code: 2")) {
                                                sb2 = new StringBuilder();
                                                Log.lastSearchLogCurrent = sb2;
                                            }
                                            if (strTrim.contains(" dbg: ") || strTrim.contains(" clocks: ") || strTrim.startsWith("MR[") || strTrim.contains("::searchDone:")) {
                                                if (sb2 == null) {
                                                    sb2 = new StringBuilder();
                                                    Log.lastSearchLogCurrent = sb2;
                                                }
                                                sb2.append(strTrim);
                                                sb2.append('\n');
                                            }
                                            if (!strTrim.contains("::searchDone:") || strTrim.endsWith("Send code: 3")) {
                                                if (sb2 != null) {
                                                    Log.lastSearchLog = sb2.toString();
                                                }
                                                Log.lastSearchLogCurrent = null;
                                            }
                                        }
                                    }
                                } else {
                                    Thread.sleep(500L);
                                }
                            }
                            Log.w("runLogOnProcessErrStream failed", e);
                        }
                    } catch (NullPointerException e16) {
                        Log.w("runLogOnProcessErrStream failed", e16);
                    }
                }
            }.start();
        }
    }

    public static synchronized void s(String str) {
    }

    public static int v(String str) {
        return v(TAG, str);
    }

    public static int w(String str) {
        return w(TAG, str);
    }

    public static int wt(String str, Throwable th) {
        return LogWrapper.w(str, th);
    }

    public static int d(String str, Throwable th) {
        return d(TAG, str, th);
    }

    public static int e(String str, Throwable th) {
        return e(TAG, str, th);
    }

    public static int i(String str, Throwable th) {
        return i(TAG, str, th);
    }

    public static int v(String str, Throwable th) {
        return v(TAG, str, th);
    }

    public static int w(String str, Throwable th) {
        return w(TAG, str, th);
    }

    public static int d(String str, String str2) {
        return LogWrapper.d(str, str2);
    }

    public static int e(String str, String str2) {
        return LogWrapper.e(str, str2);
    }

    public static int i(String str, String str2) {
        return LogWrapper.i(str, str2);
    }

    public static int v(String str, String str2) {
        return LogWrapper.v(str, str2);
    }

    public static int w(String str, String str2) {
        return LogWrapper.w(str, str2);
    }

    public static int d(String str, String str2, Throwable th) {
        return LogWrapper.d(str, str2, th);
    }

    public static int e(String str, String str2, Throwable th) {
        return LogWrapper.e(str, str2, th);
    }

    public static int i(String str, String str2, Throwable th) {
        return LogWrapper.i(str, str2, th);
    }

    public static int v(String str, String str2, Throwable th) {
        return LogWrapper.v(str, str2, th);
    }

    public static int w(String str, String str2, Throwable th) {
        return LogWrapper.w(str, str2, th);
    }
}
