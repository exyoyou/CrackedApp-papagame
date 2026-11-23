package com.bytedance.sdk.openadsdk.mediation.bridge.init;

import android.util.SparseArray;
import com.byazt.bog.a;
import com.byazt.zqa.c;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.qq.e.comm.constants.ErrorCode;
import java.util.function.Function;
import n0.b;

/* JADX INFO: loaded from: classes9.dex */
@c(c = {0, 80, 81, 82, 83, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_TRAN_CONNECT_TIME, 84, MediaPlayer.MEDIA_PLAYER_OPTION_AE_SRC_PEAK})
public class AdnManagerConfig {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile Function<SparseArray<Object>, Object> f23560a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile Function<SparseArray<Object>, Object> f23561c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static volatile Function<SparseArray<Object>, Object> f23562n;
    private static volatile Function<SparseArray<Object>, Object> sp;
    private static volatile Function<SparseArray<Object>, Object> tt;
    private static volatile Function<SparseArray<Object>, Object> uj;
    private static volatile Function<SparseArray<Object>, Object> ve;

    /* JADX WARN: Code duplicated, block: B:33:0x008c  */
    private static boolean c(String str, String str2) {
        if (str2 == null) {
            return false;
        }
        try {
            Object objNewInstance = Class.forName(str).newInstance();
            if (b.a(objNewInstance)) {
                Function functionA = n0.c.a(objNewInstance);
                SparseArray sparseArray = new SparseArray();
                sparseArray.put(-99999987, Integer.valueOf(ErrorCode.PrivateError.LOAD_TIME_OUT));
                sparseArray.put(-99999985, Object.class);
                Object objApply = functionA.apply(sparseArray);
                if (b.a(objApply)) {
                    Function<SparseArray<Object>, Object> functionA2 = n0.c.a(objApply);
                    switch (str2) {
                        case "ks":
                            ve = functionA2;
                            return true;
                        case "gdt":
                            tt = functionA2;
                            return true;
                        case "baidu":
                            f23561c = functionA2;
                            return true;
                        case "mintegral":
                            uj = functionA2;
                            return true;
                        case "sigmob":
                            f23562n = functionA2;
                            return true;
                        case "unity":
                            f23560a = functionA2;
                            return true;
                        case "xiaomi":
                            sp = functionA2;
                            return true;
                        default:
                            return true;
                    }
                }
            }
        } catch (Throwable th) {
            a.c(th);
        }
        return false;
    }

    public static Function<SparseArray<Object>, Object> getAdapterManager(String str) {
        if (str == null) {
            return null;
        }
        switch (str) {
            case "sigmob":
                return f23562n;
            case "xiaomi":
                return sp;
            case "ks":
                return ve;
            case "gdt":
                return tt;
            case "baidu":
                return f23561c;
            case "unity":
                return f23560a;
            case "mintegral":
                return uj;
            default:
                return null;
        }
    }

    public static boolean initAdnManager(String str, String str2) {
        return c(str, str2);
    }
}
