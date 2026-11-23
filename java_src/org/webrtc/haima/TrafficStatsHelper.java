package org.webrtc.haima;

import android.content.Context;
import android.net.TrafficStats;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import com.join.mgps.activity.TagGameListActivity_;
import java.io.FileDescriptor;
import java.lang.reflect.Field;
import org.hmwebrtc.CalledByNative;
import org.hmwebrtc.Logging;

/* JADX INFO: loaded from: classes10.dex */
public class TrafficStatsHelper {
    private static final String TAG = "traffic";
    private static final int kVIVO_TAG = 268435201;
    private static int mJavaPackageUid;
    private static String mPreferPackageName;
    private static int mPreferUid;

    private static class PackageUtils {
        private PackageUtils() {
        }

        public static String getPackageName(Context context) {
            return context.getPackageName();
        }

        public static int getUid(Context context, String str) {
            try {
                return context.getPackageManager().getApplicationInfo(str, 0).uid;
            } catch (Exception unused) {
                return 0;
            }
        }
    }

    @CalledByNative
    public static void clearTraffic() {
        Logging.i("traffic", "clearTraffic");
        try {
            if (Build.VERSION.SDK_INT >= 28) {
                TrafficStats.clearThreadStatsUid();
                TrafficStats.clearThreadStatsTag();
            } else {
                Class<?> cls = Class.forName("com.android.server.NetworkManagementSocketTagger");
                Class<?> cls2 = Integer.TYPE;
                cls.getMethod("setThreadSocketStatsUid", cls2).invoke(null, -1);
                cls.getMethod("setThreadSocketStatsTag", cls2).invoke(null, -1);
            }
        } catch (Exception e10) {
            Logging.w("traffic", "clearTraffic ex:" + e10.toString());
        }
    }

    @CalledByNative
    public static ParcelFileDescriptor createFd(int i10) {
        try {
            Logging.i("traffic", "createFd fd:" + i10);
            return ParcelFileDescriptor.fromFd(i10);
        } catch (Exception e10) {
            Logging.i("traffic", "createFd ex:" + e10.toString());
            return null;
        }
    }

    @CalledByNative
    public static void destroyFd(ParcelFileDescriptor parcelFileDescriptor) {
        try {
            Logging.i("traffic", "destroyFd ");
            if (parcelFileDescriptor != null) {
                parcelFileDescriptor.close();
            }
        } catch (Exception e10) {
            Logging.i("traffic", "destroyFd ex:" + e10.toString());
        }
    }

    @CalledByNative
    public static boolean endTag(ParcelFileDescriptor parcelFileDescriptor) {
        Logging.i("traffic", "endTag ");
        if (parcelFileDescriptor == null) {
            return false;
        }
        try {
            FileDescriptor fileDescriptor = parcelFileDescriptor.getFileDescriptor();
            if (Build.VERSION.SDK_INT >= 28) {
                TrafficStats.untagFileDescriptor(fileDescriptor);
            } else {
                Field declaredField = Class.forName("com.android.server.NetworkManagementSocketTagger").getDeclaredField("tagger");
                declaredField.setAccessible(true);
                Object obj = declaredField.get(null);
                obj.getClass().getMethod("untag", FileDescriptor.class).invoke(obj, fileDescriptor);
            }
            return true;
        } catch (Exception e10) {
            Logging.w("traffic", "endTag ex:" + e10.toString());
            return false;
        }
    }

    public static boolean executeCommand(String str) {
        int i10;
        if (str == null) {
            return false;
        }
        Logging.i("traffic", "executeCommand:" + str);
        if (str.startsWith(HmRtcParameterHelper.TrafficStats.kSetUid)) {
            try {
                i10 = Integer.parseInt(str.replace(HmRtcParameterHelper.TrafficStats.kSetUid, ""));
                try {
                    mPreferUid = i10;
                } catch (Exception unused) {
                    Logging.i("traffic", "executeCommand:" + str);
                }
            } catch (Exception unused2) {
                i10 = 0;
            }
            return i10 > 0;
        }
        if (str.startsWith(HmRtcParameterHelper.TrafficStats.kSetPackageName)) {
            try {
                mPreferPackageName = str.replace(HmRtcParameterHelper.TrafficStats.kSetPackageName, "");
                return true;
            } catch (Exception unused3) {
                Logging.i("traffic", "executeCommand:" + str);
            }
        }
        return false;
    }

    public static int getUid(Context context) {
        int uid;
        try {
            String str = mPreferPackageName;
            if (str == null || str.length() <= 0) {
                uid = 0;
            } else {
                uid = PackageUtils.getUid(context, str);
                Logging.i("traffic", "getUid packageName:" + str + ",uid:" + uid);
            }
            if (uid == 0) {
                Logging.i("traffic", "getUid packageName:self");
                uid = PackageUtils.getUid(context, PackageUtils.getPackageName(context));
            }
            mJavaPackageUid = uid;
            Logging.i("traffic", "getUid java uid:" + mJavaPackageUid);
        } catch (Exception e10) {
            Logging.i("traffic", "getUid java ex:" + e10.toString());
        }
        return mJavaPackageUid;
    }

    @CalledByNative
    public static boolean setTraffic(int i10) {
        int i11 = mPreferUid;
        if (i11 == 0 && (i11 = mJavaPackageUid) == 0) {
            i11 = i10;
        }
        Logging.i("traffic", "setTraffic uid:" + i11 + ",preferUid:" + mPreferUid + ",PackageUid:" + mJavaPackageUid + ",nativeUid:" + i10);
        try {
            if (Build.VERSION.SDK_INT >= 28) {
                Logging.i("traffic", "setThreadStatsUid uid:" + i11);
                TrafficStats.setThreadStatsUid(i11);
                TrafficStats.setThreadStatsTag(kVIVO_TAG);
            } else {
                Logging.i("traffic", "setThreadSocketStatsUid uid:" + i11);
                Class<?> cls = Class.forName("com.android.server.NetworkManagementSocketTagger");
                Class<?> cls2 = Integer.TYPE;
                cls.getMethod("setThreadSocketStatsUid", cls2).invoke(null, Integer.valueOf(i11));
                cls.getMethod("setThreadSocketStatsTag", cls2).invoke(null, Integer.valueOf(kVIVO_TAG));
            }
            return true;
        } catch (Exception e10) {
            Logging.w("traffic", "setTraffic ex:" + e10.toString());
            return false;
        }
    }

    @CalledByNative
    public static boolean startTag(ParcelFileDescriptor parcelFileDescriptor) {
        Logging.i("traffic", "startTag ");
        if (parcelFileDescriptor == null) {
            return false;
        }
        try {
            FileDescriptor fileDescriptor = parcelFileDescriptor.getFileDescriptor();
            if (Build.VERSION.SDK_INT >= 28) {
                TrafficStats.tagFileDescriptor(fileDescriptor);
            } else {
                Field declaredField = Class.forName("com.android.server.NetworkManagementSocketTagger").getDeclaredField("tagger");
                declaredField.setAccessible(true);
                Object obj = declaredField.get(null);
                obj.getClass().getMethod(TagGameListActivity_.TAG_EXTRA, FileDescriptor.class).invoke(obj, fileDescriptor);
            }
            return true;
        } catch (Exception e10) {
            Logging.w("traffic", "startTag ex:" + e10.toString());
            return false;
        }
    }
}
