package cn.com.chinatelecom.account.api.d;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Process;
import android.text.TextUtils;
import com.join.mgps.Util.v0;
import com.windmill.sdk.WMConstants;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.InputStreamReader;
import java.lang.reflect.Method;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.security.MessageDigest;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.UUID;
import java.util.regex.Pattern;
import okio.Utf8;

/* JADX INFO: loaded from: classes7.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f842a = "cn.com.chinatelecom.account.api.d.d";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f843b = "";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Pattern f844c = Pattern.compile("^(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)(\\.(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)){3}$");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static String f845d = "";

    public static String a() {
        String string = UUID.randomUUID().toString();
        try {
            string = UUID.nameUUIDFromBytes((string + System.currentTimeMillis() + Math.random()).getBytes("utf8")).toString();
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return !TextUtils.isEmpty(string) ? string.replace("-", "") : string;
    }

    private static String b(Context context, String str) {
        try {
            Class<?> clsLoadClass = context.getClassLoader().loadClass(l.a(new byte[]{13, 2, 8, BinaryMemcacheOpcodes.GATQ, 3, 5, 8, 66, 3, 31, 66, BinaryMemcacheOpcodes.TOUCH, BinaryMemcacheOpcodes.GATQ, 3, BinaryMemcacheOpcodes.TOUCH, 9, BinaryMemcacheOpcodes.GATQ, BinaryMemcacheOpcodes.FLUSHQ, 5, 9, 31}));
            return (String) clsLoadClass.getMethod("get", String.class).invoke(clsLoadClass, str);
        } catch (Exception unused) {
            return "";
        }
    }

    public static boolean c() {
        String strA = l.a(new byte[]{67, 31, BinaryMemcacheOpcodes.INCREMENTQ, 31, BinaryMemcacheOpcodes.FLUSHQ, 9, 1, 67, 14, 5, 2, 67, 31, BinaryMemcacheOpcodes.APPENDQ});
        String strA2 = l.a(new byte[]{67, 31, BinaryMemcacheOpcodes.INCREMENTQ, 31, BinaryMemcacheOpcodes.FLUSHQ, 9, 1, 67, BinaryMemcacheOpcodes.DELETEQ, 14, 5, 2, 67, 31, BinaryMemcacheOpcodes.APPENDQ});
        if (new File(strA).exists() && c(strA)) {
            return true;
        }
        return new File(strA2).exists() && c(strA2);
    }

    public static boolean d() throws SocketException {
        Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
        if (networkInterfaces == null) {
            return false;
        }
        while (networkInterfaces.hasMoreElements()) {
            NetworkInterface networkInterfaceNextElement = networkInterfaces.nextElement();
            if (networkInterfaceNextElement.isUp() && !networkInterfaceNextElement.getInterfaceAddresses().isEmpty()) {
                String strA = l.a(new byte[]{BinaryMemcacheOpcodes.FLUSHQ, BinaryMemcacheOpcodes.APPENDQ, 2, 92});
                String strA2 = l.a(new byte[]{BinaryMemcacheOpcodes.TOUCH, BinaryMemcacheOpcodes.TOUCH, BinaryMemcacheOpcodes.TOUCH, 92});
                if (strA.equals(networkInterfaceNextElement.getName()) || strA2.equals(networkInterfaceNextElement.getName())) {
                    return true;
                }
            }
        }
        return false;
    }

    private static String e(Context context) {
        return c.b(context, "key_d_i_u", "");
    }

    private static String f(Context context) {
        String strB = b(UUID.randomUUID().toString() + v0.f50057a);
        return TextUtils.isEmpty(strB) ? v0.f50057a : strB;
    }

    private static boolean g(Context context) {
        boolean z10;
        boolean z11;
        String strA = l.a(new byte[]{8, 9, 66, BinaryMemcacheOpcodes.GATQ, 3, 14, 26, 66, 13, 2, 8, BinaryMemcacheOpcodes.GATQ, 3, 5, 8, 66, BinaryMemcacheOpcodes.DELETEQ, BinaryMemcacheOpcodes.TOUCH, 3, 31, 9, 8, 66, 5, 2, 31, BinaryMemcacheOpcodes.FLUSHQ, 13, 0, 0, 9, BinaryMemcacheOpcodes.GATQ});
        String strA2 = l.a(new byte[]{15, 3, 1, 66, 31, 13, BinaryMemcacheOpcodes.APPENDQ, BinaryMemcacheOpcodes.GATQ, 5, 7, 66, 31, BinaryMemcacheOpcodes.APPENDQ, 14, 31, BinaryMemcacheOpcodes.FLUSHQ, BinaryMemcacheOpcodes.GATQ, 13, BinaryMemcacheOpcodes.FLUSHQ, 9});
        try {
            z10 = context.createPackageContext(strA, 2) != null;
        } catch (PackageManager.NameNotFoundException unused) {
        }
        try {
            z11 = context.createPackageContext(strA2, 2) != null;
        } catch (PackageManager.NameNotFoundException unused2) {
        }
        return z10 || z11;
    }

    private static boolean h(Context context) throws Throwable {
        FileReader fileReader;
        BufferedReader bufferedReader = null;
        try {
            String strA = l.a(new byte[]{67, BinaryMemcacheOpcodes.TOUCH, BinaryMemcacheOpcodes.GATQ, 3, 15, 67});
            String strA2 = l.a(new byte[]{67, 1, 13, BinaryMemcacheOpcodes.TOUCH, 31});
            String strA3 = l.a(new byte[]{15, 3, 1, 66, 31, 13, BinaryMemcacheOpcodes.APPENDQ, BinaryMemcacheOpcodes.GATQ, 5, 7, 66, 31, BinaryMemcacheOpcodes.APPENDQ, 14, 31, BinaryMemcacheOpcodes.FLUSHQ, BinaryMemcacheOpcodes.GATQ, 13, BinaryMemcacheOpcodes.FLUSHQ, 9});
            String strA4 = l.a(new byte[]{com.sigmob.sdk.archives.tar.e.L, BinaryMemcacheOpcodes.TOUCH, 3, 31, 9, 8, 46, BinaryMemcacheOpcodes.GATQ, 5, 8, 11, 9, 66, 6, 13, BinaryMemcacheOpcodes.GATQ});
            HashSet<String> hashSet = new HashSet();
            fileReader = new FileReader(strA + Process.myPid() + strA2);
            try {
                BufferedReader bufferedReader2 = new BufferedReader(fileReader);
                while (true) {
                    try {
                        String line = bufferedReader2.readLine();
                        if (line == null) {
                            break;
                        }
                        if (line.endsWith(".so") || line.endsWith(".jar")) {
                            hashSet.add(line.substring(line.lastIndexOf(" ") + 1));
                        }
                    } catch (Throwable th) {
                        bufferedReader = bufferedReader2;
                        th = th;
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (Exception e10) {
                                e10.printStackTrace();
                            }
                        }
                        if (fileReader == null) {
                            throw th;
                        }
                        try {
                            fileReader.close();
                            throw th;
                        } catch (Exception e11) {
                            e11.printStackTrace();
                            throw th;
                        }
                    }
                }
                for (String str : hashSet) {
                    if (str.contains(strA3)) {
                        try {
                            bufferedReader2.close();
                        } catch (Exception e12) {
                            e12.printStackTrace();
                        }
                        try {
                            fileReader.close();
                        } catch (Exception e13) {
                            e13.printStackTrace();
                        }
                        return true;
                    }
                    if (str.contains(strA4)) {
                        try {
                            bufferedReader2.close();
                        } catch (Exception e14) {
                            e14.printStackTrace();
                        }
                        try {
                            fileReader.close();
                        } catch (Exception e15) {
                            e15.printStackTrace();
                        }
                        return true;
                    }
                }
                try {
                    bufferedReader2.close();
                } catch (Exception e16) {
                    e16.printStackTrace();
                }
                try {
                    fileReader.close();
                    return false;
                } catch (Exception e17) {
                    e17.printStackTrace();
                    return false;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
            fileReader = null;
        }
    }

    private static boolean i(Context context) {
        try {
            throw new Exception("we have exception");
        } catch (Exception e10) {
            String strA = l.a(new byte[]{15, 3, 1, 66, 13, 2, 8, BinaryMemcacheOpcodes.GATQ, 3, 5, 8, 66, 5, 2, BinaryMemcacheOpcodes.FLUSHQ, 9, BinaryMemcacheOpcodes.GATQ, 2, 13, 0, 66, 3, 31, 66, com.sigmob.sdk.archives.tar.e.N, BinaryMemcacheOpcodes.INCREMENTQ, 11, 3, BinaryMemcacheOpcodes.FLUSHQ, 9, 37, 2, 5, BinaryMemcacheOpcodes.FLUSHQ});
            String strA2 = l.a(new byte[]{8, 9, 66, BinaryMemcacheOpcodes.GATQ, 3, 14, 26, 66, 13, 2, 8, BinaryMemcacheOpcodes.GATQ, 3, 5, 8, 66, BinaryMemcacheOpcodes.DELETEQ, BinaryMemcacheOpcodes.TOUCH, 3, 31, 9, 8, 66, com.sigmob.sdk.archives.tar.e.L, BinaryMemcacheOpcodes.TOUCH, 3, 31, 9, 8, 46, BinaryMemcacheOpcodes.GATQ, 5, 8, 11, 9});
            String strA3 = l.a(new byte[]{8, 9, 66, BinaryMemcacheOpcodes.GATQ, 3, 14, 26, 66, 13, 2, 8, BinaryMemcacheOpcodes.GATQ, 3, 5, 8, 66, BinaryMemcacheOpcodes.DELETEQ, BinaryMemcacheOpcodes.TOUCH, 3, 31, 9, 8, 66, com.sigmob.sdk.archives.tar.e.L, BinaryMemcacheOpcodes.TOUCH, 3, 31, 9, 8, 46, BinaryMemcacheOpcodes.GATQ, 5, 8, 11, 9});
            String strA4 = l.a(new byte[]{5, 2, 26, 3, 7, 9, 8});
            String strA5 = l.a(new byte[]{1, 13, 5, 2});
            String strA6 = l.a(new byte[]{4, 13, 2, 8, 0, 9, BinaryMemcacheOpcodes.GATKQ, 3, 3, 7, 9, 8, BinaryMemcacheOpcodes.SASL_AUTH, 9, BinaryMemcacheOpcodes.FLUSHQ, 4, 3, 8});
            String strA7 = l.a(new byte[]{15, 3, 1, 66, 31, 13, BinaryMemcacheOpcodes.APPENDQ, BinaryMemcacheOpcodes.GATQ, 5, 7, 66, 31, BinaryMemcacheOpcodes.APPENDQ, 14, 31, BinaryMemcacheOpcodes.FLUSHQ, BinaryMemcacheOpcodes.GATQ, 13, BinaryMemcacheOpcodes.FLUSHQ, 9, 66, BinaryMemcacheOpcodes.SASL_AUTH, Utf8.REPLACEMENT_BYTE, 72, 94});
            int i10 = 0;
            for (StackTraceElement stackTraceElement : e10.getStackTrace()) {
                if (stackTraceElement.getClassName().equals(strA) && (i10 = i10 + 1) == 2) {
                    return true;
                }
                if (stackTraceElement.getClassName().equals(strA7) && stackTraceElement.getMethodName().equals(strA4)) {
                    return true;
                }
                if (stackTraceElement.getClassName().equals(strA2) && stackTraceElement.getMethodName().equals(strA5)) {
                    return true;
                }
                if (stackTraceElement.getClassName().equals(strA3) && stackTraceElement.getMethodName().equals(strA6)) {
                    return true;
                }
            }
            return false;
        }
    }

    public static String a(Context context) {
        if (TextUtils.isEmpty(f845d)) {
            String strE = e(context);
            f845d = strE;
            if (TextUtils.isEmpty(strE)) {
                String strF = f(context);
                f845d = strF;
                a(context, strF);
            }
        }
        return f845d;
    }

    private static String b(String str) {
        char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        try {
            byte[] bytes = str.getBytes();
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(bytes);
            byte[] bArrDigest = messageDigest.digest();
            char[] cArr2 = new char[bArrDigest.length * 2];
            int i10 = 0;
            for (byte b10 : bArrDigest) {
                int i11 = i10 + 1;
                cArr2[i10] = cArr[(b10 >>> 4) & 15];
                i10 = i11 + 1;
                cArr2[i11] = cArr[b10 & 15];
            }
            return new String(cArr2);
        } catch (Exception unused) {
            return null;
        }
    }

    public static boolean c(Context context) {
        return g(context) || h(context) || i(context);
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x00e7, code lost:
    
        r12 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00e8, code lost:
    
        r12.printStackTrace();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean d(android.content.Context r12) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 390
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.com.chinatelecom.account.api.d.d.d(android.content.Context):boolean");
    }

    private static void a(Context context, String str) {
        if (TextUtils.isEmpty(str) || context == null) {
            return;
        }
        c.a(context, "key_d_i_u", str);
    }

    public static StringBuffer b() throws SocketException {
        StringBuffer stringBuffer = new StringBuffer();
        Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
        while (networkInterfaces.hasMoreElements()) {
            NetworkInterface networkInterfaceNextElement = networkInterfaces.nextElement();
            String name = networkInterfaceNextElement.getName();
            if (name == null || (!name.contains("wlan") && !name.equals("eth0"))) {
                Enumeration<InetAddress> inetAddresses = networkInterfaceNextElement.getInetAddresses();
                while (inetAddresses.hasMoreElements()) {
                    InetAddress inetAddressNextElement = inetAddresses.nextElement();
                    if (!inetAddressNextElement.isLoopbackAddress() && !inetAddressNextElement.isLinkLocalAddress()) {
                        String hostAddress = inetAddressNextElement.getHostAddress();
                        if (!TextUtils.isEmpty(hostAddress)) {
                            if (stringBuffer.length() > 0) {
                                stringBuffer.append(",");
                            }
                            stringBuffer.append(hostAddress);
                        }
                    }
                }
            }
        }
        return stringBuffer;
    }

    private static boolean c(String str) {
        char cCharAt;
        Process processExec = null;
        try {
            processExec = Runtime.getRuntime().exec("ls -l " + str);
            String line = new BufferedReader(new InputStreamReader(processExec.getInputStream())).readLine();
            if (line == null || line.length() < 4 || !((cCharAt = line.charAt(3)) == 's' || cCharAt == 'x')) {
                processExec.destroy();
                return false;
            }
            processExec.destroy();
            return true;
        } catch (Throwable th) {
            if (processExec != null) {
                processExec.destroy();
            }
            throw th;
        }
    }

    public static boolean a(Object obj, String str) throws NoSuchMethodException {
        Method declaredMethod = obj.getClass().getDeclaredMethod(str, new Class[0]);
        declaredMethod.setAccessible(true);
        return ((Boolean) declaredMethod.invoke(obj, new Object[0])).booleanValue();
    }

    public static boolean b(Context context) {
        String strA = l.a(new byte[]{4, BinaryMemcacheOpcodes.FLUSHQ, BinaryMemcacheOpcodes.FLUSHQ, BinaryMemcacheOpcodes.TOUCH, 66, BinaryMemcacheOpcodes.TOUCH, BinaryMemcacheOpcodes.GATQ, 3, BinaryMemcacheOpcodes.DELETEQ, BinaryMemcacheOpcodes.INCREMENTQ, BinaryMemcacheOpcodes.GATKQ, 3, 31, BinaryMemcacheOpcodes.FLUSHQ});
        String strA2 = l.a(new byte[]{4, BinaryMemcacheOpcodes.FLUSHQ, BinaryMemcacheOpcodes.FLUSHQ, BinaryMemcacheOpcodes.TOUCH, 66, BinaryMemcacheOpcodes.TOUCH, BinaryMemcacheOpcodes.GATQ, 3, BinaryMemcacheOpcodes.DELETEQ, BinaryMemcacheOpcodes.INCREMENTQ, 60, 3, BinaryMemcacheOpcodes.GATQ, BinaryMemcacheOpcodes.FLUSHQ});
        String property = System.getProperty(strA);
        String property2 = System.getProperty(strA2);
        if (property2 == null) {
            property2 = WMConstants.TIMER_STAGE_NONE;
        }
        return (TextUtils.isEmpty(property) || Integer.parseInt(property2) == -1) ? false : true;
    }

    public static boolean a(String str) {
        return str != null && f844c.matcher(str).matches();
    }
}
