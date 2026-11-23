package ms.bz.bd.c.Pgl;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import io.netty.handler.codec.http.HttpConstants;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import java.lang.reflect.Method;
import java.util.Iterator;
import kotlin.jvm.internal.ByteCompanionObject;
import okio.Utf8;

/* JADX INFO: loaded from: classes.dex */
public final class pbls {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f94430c = (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0, "9b2cc3", new byte[]{4, com.sigmob.sdk.archives.tar.e.Q, 113, BinaryMemcacheOpcodes.FLUSHQ, 79, BinaryMemcacheOpcodes.SASL_AUTH, 62});

    public static boolean c(Context context) {
        boolean z10;
        boolean z11;
        Bundle bundle;
        PackageManager packageManager = context.getPackageManager();
        IBinder iBinder = null;
        if (packageManager != null) {
            Iterator<ResolveInfo> it2 = packageManager.queryIntentActivities(new Intent((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "73b964", new byte[]{39, Utf8.REPLACEMENT_BYTE, BinaryMemcacheOpcodes.INCREMENTQ, 95, 6, 42, com.sigmob.sdk.archives.tar.e.H, 92, HttpConstants.COLON, com.sigmob.sdk.archives.tar.e.T, com.sigmob.sdk.archives.tar.e.J, com.sigmob.sdk.archives.tar.e.L, 31, 89, 71, 34, com.sigmob.sdk.archives.tar.e.O, 6, HttpConstants.COLON, 102, 40, ByteCompanionObject.MAX_VALUE, 60, 108, 32, 13}), (Uri) null), 128).iterator();
            while (true) {
                if (!it2.hasNext()) {
                    z10 = false;
                    break;
                }
                ActivityInfo activityInfo = it2.next().activityInfo;
                if (activityInfo != null && (bundle = activityInfo.applicationInfo.metaData) != null && bundle.get((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "429766", new byte[]{61, 32, 69, 80, 12, 37, HttpConstants.COLON, 26, 102, 113, 32, 34, 89, 74, 6, 47})) != null) {
                    z10 = true;
                    break;
                }
            }
        } else {
            z10 = false;
            break;
        }
        if (!z10) {
            String packageName = context.getPackageName();
            String str = (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "3afefb", new byte[]{BinaryMemcacheOpcodes.GATK, 96, 1, BinaryMemcacheOpcodes.FLUSHQ, 79, 124, BinaryMemcacheOpcodes.GATKQ, 89});
            try {
                Method declaredMethod = Class.forName((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "519f96", new byte[]{37, 61, 78, 0, 9, 40, com.sigmob.sdk.archives.tar.e.J, 94, com.sigmob.sdk.archives.tar.e.T, 37, 106, 0, 79, 0, 16, 40, com.sigmob.sdk.archives.tar.e.M, BinaryMemcacheOpcodes.INCREMENTQ, 69, com.sigmob.sdk.archives.tar.e.O, 42, com.sigmob.sdk.archives.tar.e.J, 77, BinaryMemcacheOpcodes.QUITQ, BinaryMemcacheOpcodes.DELETEQ})).getDeclaredMethod((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "637ecd", new byte[]{32, com.sigmob.sdk.archives.tar.e.L, 80, 34, 89, 97, BinaryMemcacheOpcodes.GATK, 27, 101, com.sigmob.sdk.archives.tar.e.H}), String.class);
                declaredMethod.setAccessible(true);
                iBinder = (IBinder) declaredMethod.invoke(null, str);
            } catch (Exception e10) {
                com.byazt.nr.m.c(e10);
            }
            if (iBinder == null) {
                z11 = false;
            } else {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(f94430c);
                    parcelObtain.writeInt(2);
                    parcelObtain.writeString(packageName);
                    parcelObtain.writeStrongBinder(new Binder());
                    if (iBinder.transact(1598837584, parcelObtain, parcelObtain2, 0)) {
                        parcelObtain2.readException();
                        parcelObtain.recycle();
                        parcelObtain2.recycle();
                        z11 = true;
                    } else {
                        parcelObtain.recycle();
                        parcelObtain2.recycle();
                        z11 = false;
                    }
                } catch (Throwable th) {
                    try {
                        com.byazt.nr.m.c(th);
                    } catch (Throwable th2) {
                        parcelObtain.recycle();
                        parcelObtain2.recycle();
                        throw th2;
                    }
                }
            }
            if (!z11) {
                return false;
            }
        }
        return true;
    }
}
