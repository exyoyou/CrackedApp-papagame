package com.kwad.sdk.crash.report;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import com.kwad.sdk.crash.message.Backtrace;
import com.kwad.sdk.crash.message.NativeBackTraceElement;
import com.kwad.sdk.crash.model.message.ExceptionMessage;
import com.kwad.sdk.crash.model.message.NativeExceptionMessage;
import com.kwad.sdk.utils.y;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class g extends d {
    public static final Pattern bfJ = Pattern.compile("(.*)\\s\\(tid=(\\d+), index=(\\d+)*");
    public static final Pattern bfK = Pattern.compile("\\sd+\\spc");

    private NativeExceptionMessage E(File file) {
        String strY;
        try {
            strY = y.Y(file);
        } catch (IOException e10) {
            this.mErrorMessage += e10 + "\n";
            strY = null;
        }
        NativeExceptionMessage nativeExceptionMessage = new NativeExceptionMessage();
        if (strY != null) {
            try {
                nativeExceptionMessage.parseJson(new JSONObject(strY));
            } catch (Exception e11) {
                this.mErrorMessage += e11 + "\n";
            }
        }
        y.W(file);
        return nativeExceptionMessage;
    }

    private void a(NativeExceptionMessage nativeExceptionMessage, File file) {
        if (!file.exists()) {
            return;
        }
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    return;
                }
                Matcher matcher = gD("Fatal signal (\\d+) \\((\\w+)\\), code (-*\\d+) \\((\\w+)\\), fault addr (-*\\w*) in tid (\\d+) \\((.*)\\), pid (\\d+).*").matcher(line);
                if (matcher.lookingAt() && matcher.groupCount() >= 8) {
                    String strGroup = matcher.group(2);
                    if (strGroup != null) {
                        nativeExceptionMessage.setSignal(strGroup);
                    }
                    String strGroup2 = matcher.group(4);
                    if (strGroup2 != null) {
                        nativeExceptionMessage.setCode(strGroup2);
                    }
                    String strGroup3 = matcher.group(5);
                    if (strGroup3 != null) {
                        nativeExceptionMessage.setFaultAddr(strGroup3);
                        nativeExceptionMessage.setManuallyKill((strGroup3.equals("--------") ? Boolean.TRUE : Boolean.FALSE).toString());
                    }
                    String strGroup4 = matcher.group(7);
                    if (strGroup4 != null) {
                        nativeExceptionMessage.setThreadName(strGroup4);
                    }
                    String strGroup5 = matcher.group(6);
                    if (strGroup5 != null) {
                        nativeExceptionMessage.setTid(Integer.parseInt(strGroup5));
                        return;
                    }
                    return;
                }
            }
        } catch (IOException e10) {
            e10.printStackTrace();
            this.mErrorMessage += e10.getMessage() + "\n";
        }
    }

    @Override // com.kwad.sdk.crash.report.d
    protected final ExceptionMessage a(@NonNull File file, File file2, File file3, File file4, File file5) {
        File file6 = new File(file5, "java_backtrace");
        new File(file5, "all_java_backtrace");
        File file7 = new File(file5, "maps");
        NativeExceptionMessage nativeExceptionMessageE = E(file2);
        try {
            a(nativeExceptionMessageE, file, file6, file7, false);
            if (nativeExceptionMessageE.mTid == 0) {
                a(nativeExceptionMessageE, new File(file5, "debug"));
            }
            File file8 = new File(file5, ".minfo");
            if (file8.exists()) {
                nativeExceptionMessageE.mDumpsys = y.Y(file8);
            } else {
                com.kwad.sdk.core.d.c.w("NativeCrashReporter", "memory file not exist:" + file8.getName());
            }
        } catch (Exception e10) {
            com.kwad.sdk.core.d.c.w("NativeCrashReporter", Log.getStackTraceString(e10));
            com.kwad.sdk.core.d.c.printStackTraceOnly(e10);
            this.mErrorMessage += e10 + "\n";
        }
        TextUtils.isEmpty(this.mErrorMessage);
        return nativeExceptionMessageE;
    }

    /* JADX WARN: Code duplicated, block: B:104:0x00ef A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:110:0x009e A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:113:0x00f2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:114:0x00c7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:115:0x00a9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:116:0x00f4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:121:0x004d A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:124:0x004d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x008f  */
    /* JADX WARN: Code duplicated, block: B:28:0x0093 A[Catch: all -> 0x010a, IOException -> 0x010d, TryCatch #6 {IOException -> 0x010d, blocks: (B:4:0x004d, B:6:0x0053, B:25:0x0087, B:28:0x0093, B:31:0x009e, B:35:0x00a9, B:43:0x00c7, B:45:0x00cf, B:53:0x00e5, B:52:0x00de, B:42:0x00c0, B:56:0x00f4, B:58:0x00fc, B:14:0x0069), top: B:92:0x004d, outer: #3 }] */
    /* JADX WARN: Code duplicated, block: B:33:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:39:0x00bb A[Catch: Exception -> 0x00bf, all -> 0x010a, TRY_LEAVE, TryCatch #0 {Exception -> 0x00bf, blocks: (B:37:0x00b3, B:39:0x00bb), top: B:86:0x00b3 }] */
    /* JADX WARN: Code duplicated, block: B:45:0x00cf A[Catch: all -> 0x010a, IOException -> 0x010d, TRY_LEAVE, TryCatch #6 {IOException -> 0x010d, blocks: (B:4:0x004d, B:6:0x0053, B:25:0x0087, B:28:0x0093, B:31:0x009e, B:35:0x00a9, B:43:0x00c7, B:45:0x00cf, B:53:0x00e5, B:52:0x00de, B:42:0x00c0, B:56:0x00f4, B:58:0x00fc, B:14:0x0069), top: B:92:0x004d, outer: #3 }] */
    /* JADX WARN: Code duplicated, block: B:86:0x00b3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    private void a(NativeExceptionMessage nativeExceptionMessage, File file, File file2, File file3, boolean z10) {
        int i10;
        nativeExceptionMessage.mLogUUID = com.kwad.sdk.crash.utils.g.gI(file.getParentFile().getName());
        StringBuilder sb2 = new StringBuilder();
        StringBuilder sb3 = new StringBuilder();
        Backtrace backtrace = new Backtrace();
        Backtrace backtrace2 = new Backtrace();
        com.kwad.sdk.core.d.c.e("NativeCrashReporter", "parseDumpFile: " + file.getPath());
        BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
        boolean z11 = false;
        boolean z12 = false;
        boolean z13 = false;
        loop0: while (true) {
            boolean z14 = false;
            while (true) {
                try {
                    try {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            break loop0;
                        }
                        if (!TextUtils.isEmpty(line)) {
                            if (z11) {
                                try {
                                    if (line.startsWith("--------- log ")) {
                                        a(bufferedReader, nativeExceptionMessage);
                                        break loop0;
                                    }
                                } catch (Exception e10) {
                                    com.kwad.sdk.core.d.c.w("NativeCrashReporter", Log.getStackTraceString(e10));
                                }
                            }
                            if (z12) {
                                try {
                                    if (line.startsWith("memory map")) {
                                        try {
                                            a(bufferedReader, file3);
                                            z11 = true;
                                            z12 = false;
                                            break;
                                        } catch (Exception e11) {
                                            e = e11;
                                            com.kwad.sdk.core.d.c.w("NativeCrashReporter", Log.getStackTraceString(e));
                                            if (z13) {
                                            }
                                            if (line.startsWith("other threads")) {
                                                z14 = false;
                                            }
                                            if (z14) {
                                                if (line.trim().isEmpty()) {
                                                    continue;
                                                } else {
                                                    try {
                                                        if (line.contains("allocated by")) {
                                                            a(line, bufferedReader, nativeExceptionMessage);
                                                        } else {
                                                            if (line.length() >= 16) {
                                                            }
                                                            z12 = true;
                                                            break;
                                                        }
                                                    } catch (Exception e12) {
                                                        com.kwad.sdk.core.d.c.w("NativeCrashReporter", Log.getStackTraceString(e12));
                                                    }
                                                }
                                            } else if (z13) {
                                            }
                                        }
                                    } else if (z13 || !line.startsWith("backtrace:")) {
                                        if (line.startsWith("other threads")) {
                                            z14 = false;
                                        }
                                        if (z14) {
                                            if (line.trim().isEmpty()) {
                                                continue;
                                            } else if (line.contains("allocated by")) {
                                                a(line, bufferedReader, nativeExceptionMessage);
                                            } else if (line.length() >= 16 || line.startsWith("###### ending of java stack trace ######")) {
                                                z12 = true;
                                                break;
                                                break;
                                            } else {
                                                try {
                                                    a(line, backtrace);
                                                } catch (Exception e13) {
                                                    com.kwad.sdk.core.d.c.w("NativeCrashReporter", Log.getStackTraceString(e13));
                                                }
                                                sb2.append(line);
                                                sb2.append('\n');
                                            }
                                        } else if (z13 && line.startsWith("*** ***")) {
                                            a(nativeExceptionMessage, line, sb3);
                                            z13 = true;
                                        }
                                    } else {
                                        z13 = false;
                                        z14 = true;
                                    }
                                } catch (Exception e14) {
                                    e = e14;
                                }
                            } else {
                                if (z13) {
                                }
                                if (line.startsWith("other threads")) {
                                    z14 = false;
                                }
                                if (z14) {
                                    if (line.trim().isEmpty()) {
                                        continue;
                                    } else if (line.contains("allocated by")) {
                                        a(line, bufferedReader, nativeExceptionMessage);
                                    } else {
                                        if (line.length() >= 16) {
                                        }
                                        z12 = true;
                                        break;
                                        break;
                                    }
                                } else if (z13) {
                                }
                            }
                        }
                    } catch (Throwable th) {
                        com.kwad.sdk.crash.utils.b.closeQuietly(bufferedReader);
                        throw th;
                    }
                } catch (IOException e15) {
                    this.mErrorMessage += e15 + "\n";
                }
            }
        }
        com.kwad.sdk.crash.utils.b.closeQuietly(bufferedReader);
        try {
            BufferedReader bufferedReader2 = new BufferedReader(new FileReader(file2));
            while (true) {
                String line2 = bufferedReader2.readLine();
                if (line2 == null) {
                    break;
                }
                if (!line2.trim().isEmpty()) {
                    sb2.append("    ");
                    sb2.append(line2);
                    sb2.append('\n');
                    a(line2, backtrace2, false);
                }
            }
        } catch (Exception e16) {
            com.kwad.sdk.core.d.c.w("NativeCrashReporter", Log.getStackTraceString(e16));
            this.mErrorMessage += "$e\n";
        }
        nativeExceptionMessage.mJavaBacktrace = backtrace2.toJson().toString();
        nativeExceptionMessage.mNativeBacktrace = backtrace.toJson().toString();
        if (sb2.length() > 1) {
            i10 = 0;
            nativeExceptionMessage.mCrashDetail = sb2.substring(0, sb2.length() - 1);
        } else {
            i10 = 0;
        }
        if (sb3.length() > 1) {
            nativeExceptionMessage.mRegister = sb3.substring(i10, sb3.length() - 1);
        }
    }

    private void a(String str, BufferedReader bufferedReader, NativeExceptionMessage nativeExceptionMessage) throws IOException {
        StringBuilder sb2 = new StringBuilder();
        Backtrace backtrace = new Backtrace();
        StringBuilder sb3 = new StringBuilder();
        Backtrace backtrace2 = new Backtrace();
        boolean zStartsWith = str.startsWith("de");
        if (zStartsWith) {
            sb3.append(str);
            sb3.append("\n");
        } else {
            sb2.append(str);
            sb2.append("\n");
        }
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null || TextUtils.isEmpty(line)) {
                break;
            } else {
                a(line, zStartsWith ? backtrace2 : backtrace);
            }
        }
        if (zStartsWith) {
            nativeExceptionMessage.setGwpAsanDeallocationThread(sb3.toString());
            nativeExceptionMessage.setGwpAsanDeallocationBacktrace(backtrace2.toJson().toString());
        } else {
            nativeExceptionMessage.setGwpAsanAllocationThread(sb2.toString());
            nativeExceptionMessage.setGwpAsanAllocationBacktrace(backtrace.toJson().toString());
        }
    }

    private void a(String str, Backtrace backtrace) {
        String strGroup;
        if (backtrace.mFrame > 256) {
            return;
        }
        NativeBackTraceElement nativeBackTraceElement = new NativeBackTraceElement(str, backtrace.mFrame);
        Matcher matcher = gD(".*#\\d+\\s+pc\\s+(\\w+)\\s+.*?([^/]+\\.so)(?:\\s+\\(offset\\s+\\w+\\))?(?:\\s+\\((.*?)\\+\\d+\\))?(\\s+\\(BuildId:\\s+(\\b\\w+)\\))?").matcher(str);
        Matcher matcher2 = gD(".*#\\d+\\s+pc\\s+(\\w+)\\s+.*?([^/]+)\\s+\\((.*?)\\+\\d+\\)\\s+\\(BuildId:\\s+(\\b\\w+)\\)").matcher(str);
        Matcher matcher3 = gD(".*#\\d+\\s+pc\\s+(\\w+)\\s+.*-cache.*\\(offset\\s+\\w+\\)\\s+\\((.*?)\\+\\d+\\)").matcher(str);
        if (matcher.lookingAt() && matcher.groupCount() >= 5) {
            nativeBackTraceElement.setPc(matcher.group(1));
            nativeBackTraceElement.setFileName(matcher.group(2));
            String strGroup2 = matcher.group(3);
            if (!TextUtils.isEmpty(strGroup2)) {
                if (gD(".*(Mterp|ExecuteMterp|(art::|_ZN3art11)(interpreter|.*Invoke)|art_?interpreter|art_?quick|ZN3art9ArtMethod6Invoke|art::ArtMethod::Invoke).*").matcher(strGroup2).lookingAt()) {
                    nativeBackTraceElement.setNeedClustering(false);
                    return;
                }
                Matcher matcher4 = gD("[^\\[(<\\]]+").matcher(strGroup2);
                if (matcher4.lookingAt()) {
                    Matcher matcher5 = gD(".*(\\b\\w+)").matcher(matcher4.group());
                    if (matcher5.lookingAt() && matcher.groupCount() > 0 && (strGroup = matcher5.group(1)) != null) {
                        nativeBackTraceElement.setMethodName(strGroup);
                    }
                }
                if (nativeBackTraceElement.getMethodName() == null) {
                    nativeBackTraceElement.setMethodName(strGroup2);
                }
            }
            String strGroup3 = matcher.group(5);
            if (strGroup3 != null) {
                nativeBackTraceElement.setBuildId(strGroup3);
            }
        } else if (matcher2.lookingAt() && matcher2.groupCount() >= 4) {
            nativeBackTraceElement.setPc(matcher2.group(1));
            nativeBackTraceElement.setFileName(matcher2.group(2));
            String strGroup4 = matcher2.group(3);
            if (strGroup4 != null) {
                nativeBackTraceElement.setMethodName(strGroup4);
            }
            String strGroup5 = matcher2.group(4);
            if (strGroup5 != null) {
                nativeBackTraceElement.setBuildId(strGroup5);
            }
        } else {
            if (!matcher3.lookingAt() || matcher3.groupCount() < 2) {
                return;
            }
            nativeBackTraceElement.setPc(matcher3.group(1));
            nativeBackTraceElement.setFileName("jit-code-cache");
            String strGroup6 = matcher3.group(2);
            if (strGroup6 != null) {
                nativeBackTraceElement.setMethodName(strGroup6);
            }
        }
        backtrace.setFrame(backtrace.getFrame() + 1);
        backtrace.getBacktraces().add(nativeBackTraceElement);
    }

    private static void a(BufferedReader bufferedReader, File file) throws IOException {
        boolean zExists = file.exists();
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null || line.startsWith("---")) {
                return;
            }
            if (!zExists) {
                BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(file, true));
                bufferedWriter.write(line);
                bufferedWriter.newLine();
                bufferedWriter.close();
            }
        }
    }

    private static void a(BufferedReader bufferedReader, ExceptionMessage exceptionMessage) throws IOException {
        boolean z10 = false;
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null) {
                return;
            }
            if (!z10 && line.contains("JNI DETECTED ERROR IN APPLICATION")) {
                exceptionMessage.mJNIError = line.substring(line.indexOf("JNI DETECTED ERROR IN APPLICATION"));
                z10 = true;
            } else if (!line.contains("Waiting for a blocking GC ") && !line.contains("WaitForGcToComplete")) {
                if (line.contains("dvm_lock_sample")) {
                    if (TextUtils.isEmpty(exceptionMessage.mLockInfo)) {
                        exceptionMessage.mLockInfo = line + "\n";
                    } else {
                        exceptionMessage.mLockInfo += line + "\n";
                    }
                } else if (line.contains("Long monitor")) {
                    if (TextUtils.isEmpty(exceptionMessage.mMonitorInfo)) {
                        exceptionMessage.mMonitorInfo = line + "\n";
                    } else {
                        exceptionMessage.mMonitorInfo += line + "\n";
                    }
                } else if (line.contains("Slow Looper")) {
                    if (TextUtils.isEmpty(exceptionMessage.mSlowLooper)) {
                        exceptionMessage.mSlowLooper = line + "\n";
                    } else {
                        exceptionMessage.mSlowLooper += line + "\n";
                    }
                } else if (line.contains("Slow Operation")) {
                    if (TextUtils.isEmpty(exceptionMessage.mSlowOperation)) {
                        exceptionMessage.mSlowOperation = line + "\n";
                    } else {
                        exceptionMessage.mSlowOperation += line + "\n";
                    }
                }
            } else if (TextUtils.isEmpty(exceptionMessage.mGCInfo)) {
                exceptionMessage.mGCInfo = line + "\n";
            } else {
                exceptionMessage.mGCInfo += line + "\n";
            }
        }
    }

    private static void a(NativeExceptionMessage nativeExceptionMessage, String str, StringBuilder sb2) {
        if (str.startsWith("Build fingerprint: ")) {
            nativeExceptionMessage.mFingerprint = str.substring(19);
            return;
        }
        if (str.startsWith("Revision: ")) {
            nativeExceptionMessage.mRevision = str.substring(10);
            return;
        }
        if (str.startsWith("ABI: ")) {
            nativeExceptionMessage.mAbi = str.substring(5);
            return;
        }
        if (str.startsWith("Current UTC: ")) {
            nativeExceptionMessage.mCurrentTimeStamp = Long.parseLong(str.substring(13));
            return;
        }
        if (str.startsWith("Abort message: ")) {
            nativeExceptionMessage.mAbortMsg = str.substring(15);
            return;
        }
        if (!str.startsWith("    r") && !str.startsWith("    ip") && !str.startsWith("    x") && !str.startsWith("    sp")) {
            if (str.startsWith("pid: ")) {
                String[] strArrSplit = str.split("\\s+");
                if (strArrSplit.length < 9) {
                    return;
                }
                int i10 = 0;
                int i11 = 0;
                int i12 = 0;
                for (int i13 = 0; i13 < strArrSplit.length; i13++) {
                    if ("name:".equals(strArrSplit[i13])) {
                        i10 = i13;
                    } else if (">>>".equals(strArrSplit[i13])) {
                        i11 = i13;
                    } else if ("<<<".equals(strArrSplit[i13])) {
                        i12 = i13;
                    }
                }
                StringBuilder sb3 = new StringBuilder();
                int i14 = i10 + 1;
                sb3.append(strArrSplit[i14]);
                while (true) {
                    i14++;
                    if (i14 >= i11) {
                        break;
                    }
                    sb3.append(" ");
                    sb3.append(strArrSplit[i14]);
                }
                nativeExceptionMessage.mThreadName = sb3.toString();
                sb3.setLength(0);
                int i15 = i11 + 1;
                sb3.append(strArrSplit[i15]);
                while (true) {
                    i15++;
                    if (i15 < i12) {
                        sb3.append(" ");
                        sb3.append(strArrSplit[i15]);
                    } else {
                        nativeExceptionMessage.mProcessName = sb3.toString();
                        return;
                    }
                }
            } else if (str.startsWith("signal ")) {
                String[] strArrSplit2 = str.split("\\s+");
                if (strArrSplit2.length >= 9) {
                    nativeExceptionMessage.mSignal = com.kwad.sdk.crash.utils.g.gJ(strArrSplit2[2]);
                    nativeExceptionMessage.mCode = com.kwad.sdk.crash.utils.g.gJ(strArrSplit2[5]);
                    nativeExceptionMessage.mFaultAddr = strArrSplit2[strArrSplit2.length - 1];
                    nativeExceptionMessage.mManuallyKill = "--------".equals(strArrSplit2[strArrSplit2.length + (-1)]) ? "True" : "False";
                }
            }
        } else {
            sb2.append(str);
            sb2.append('\n');
        }
    }
}
