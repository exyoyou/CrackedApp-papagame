package com.join.mgps.Util;

import android.content.Context;
import android.os.Build;
import android.telephony.TelephonyManager;
import java.io.File;
import java.io.FileInputStream;

/* JADX INFO: loaded from: classes4.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String[] f49597a = {"/dev/socket/qemud", "/dev/qemu_pipe"};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String[] f49598b = {"goldfish"};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static String[] f49599c = {"/system/lib/libc_malloc_debug_qemu.so", "/sys/qemu_trace", "/system/bin/qemu-props"};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static String[] f49600d = {"15555215554", "15555215556", "15555215558", "15555215560", "15555215562", "15555215564", "15555215566", "15555215568", "15555215570", "15555215572", "15555215574", "15555215576", "15555215578", "15555215580", "15555215582", "15555215584"};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static String[] f49601e = {"000000000000000"};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static String[] f49602f = {"310260000000000"};

    public static boolean a(Context context) {
        String deviceId = ((TelephonyManager) context.getSystemService("phone")).getDeviceId();
        for (String str : f49601e) {
            if (str.equalsIgnoreCase(deviceId)) {
                return true;
            }
        }
        return false;
    }

    public static boolean b() {
        String str = Build.BOARD;
        String str2 = Build.BOOTLOADER;
        String str3 = Build.BRAND;
        String str4 = Build.DEVICE;
        String str5 = Build.HARDWARE;
        String str6 = Build.MODEL;
        String str7 = Build.PRODUCT;
        String str8 = Build.SERIAL;
        return str3.toLowerCase().equals("android") || str6.toLowerCase().contains("sdk");
    }

    public static boolean c() {
        int i10 = 0;
        while (true) {
            String[] strArr = f49599c;
            if (i10 >= strArr.length) {
                return false;
            }
            if (new File(strArr[i10]).exists()) {
                return true;
            }
            i10++;
        }
    }

    public static boolean d(Context context) {
        String subscriberId = ((TelephonyManager) context.getSystemService("phone")).getSubscriberId();
        for (String str : f49602f) {
            if (str.equalsIgnoreCase(subscriberId)) {
                return true;
            }
        }
        return false;
    }

    public static boolean e(Context context) {
        String line1Number = ((TelephonyManager) context.getSystemService("phone")).getLine1Number();
        for (String str : f49600d) {
            if (str.equalsIgnoreCase(line1Number)) {
                return true;
            }
        }
        return false;
    }

    public static boolean f() {
        int i10 = 0;
        while (true) {
            String[] strArr = f49597a;
            if (i10 >= strArr.length) {
                return false;
            }
            if (new File(strArr[i10]).exists()) {
                return true;
            }
            i10++;
        }
    }

    public static boolean g() {
        File file = new File("/proc/tty/drivers");
        if (file.exists() && file.canRead()) {
            byte[] bArr = new byte[1024];
            try {
                FileInputStream fileInputStream = new FileInputStream(file);
                fileInputStream.read(bArr);
                fileInputStream.close();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            String str = new String(bArr);
            for (String str2 : f49598b) {
                if (str.indexOf(str2) != -1) {
                    return true;
                }
            }
        }
        return false;
    }
}
