package hc;

import android.content.ComponentName;
import android.content.ContentProviderClient;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.provider.Settings;
import android.text.TextUtils;
import com.haima.hmcp.beans.HmInputMappingContent;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import ec.c;
import ic.d;
import ic.e;
import ic.f;
import ic.g;
import ic.h;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class b implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Context f91464b;

    public b(Context context) {
        this.f91464b = context;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:319:0x061f  */
    /* JADX WARN: Code duplicated, block: B:320:0x0624  */
    /* JADX WARN: Code duplicated, block: B:367:0x03cf A[EXC_TOP_SPLITTER, PHI: r11 r22
      0x03cf: PHI (r11v9 android.database.Cursor) = (r11v10 android.database.Cursor), (r11v11 android.database.Cursor) binds: [B:206:0x03cd, B:200:0x03c0] A[DONT_GENERATE, DONT_INLINE]
      0x03cf: PHI (r22v15 java.lang.String) = (r22v17 java.lang.String), (r22v18 java.lang.String) binds: [B:206:0x03cd, B:200:0x03c0] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:4:0x002a  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v22, types: [ic.b] */
    /* JADX WARN: Type inference failed for: r2v26, types: [android.content.ServiceConnection] */
    /* JADX WARN: Type inference failed for: r2v31, types: [ic.d] */
    /* JADX WARN: Type inference failed for: r2v32, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v33 */
    /* JADX WARN: Type inference failed for: r2v36 */
    /* JADX WARN: Type inference failed for: r2v37, types: [android.content.ServiceConnection] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:94:0x0198 -> B:95:0x01a0). Please report as a decompilation issue!!! */
    @Override // java.lang.Runnable
    public void run() throws Throwable {
        byte b10;
        String str;
        String str2;
        String str3;
        String str4;
        String string;
        boolean z10;
        String str5;
        long jCurrentTimeMillis = System.currentTimeMillis();
        String upperCase = Build.MANUFACTURER.toUpperCase();
        upperCase.hashCode();
        switch (upperCase) {
            case "LENOVO":
                b10 = 0;
                break;
            case "SAMSUNG":
                b10 = 1;
                break;
            case "XIAOMI":
                b10 = 2;
                break;
            case "BLACKSHARK":
                b10 = 3;
                break;
            case "ONEPLUS":
                b10 = 4;
                break;
            case "ZTE":
                b10 = 5;
                break;
            case "ASUS":
                b10 = 6;
                break;
            case "OPPO":
                b10 = 7;
                break;
            case "SSUI":
                b10 = 8;
                break;
            case "VIVO":
                b10 = 9;
                break;
            case "HONOR":
                b10 = 10;
                break;
            case "MEIZU":
                b10 = 11;
                break;
            case "NUBIA":
                b10 = 12;
                break;
            case "MOTOLORA":
                b10 = 13;
                break;
            case "FERRMEOS":
                b10 = 14;
                break;
            case "HUAWEI":
                b10 = 15;
                break;
            default:
                b10 = -1;
                break;
        }
        Cursor cursorQuery = null;
        String string2 = null;
        String string3 = null;
        Cursor cursorQuery2 = null;
        String str6 = "";
        switch (b10) {
            case 0:
            case 13:
                e eVar = new e(this.f91464b);
                try {
                    Intent intent = new Intent();
                    intent.setClassName("com.zui.deviceidservice", "com.zui.deviceidservice.DeviceidService");
                    str = 1;
                    try {
                        if (eVar.f91553a.bindService(intent, eVar.f91555c, 1)) {
                            try {
                                IBinder iBinderTake = eVar.f91554b.take();
                                Parcel parcelObtain = Parcel.obtain();
                                Parcel parcelObtain2 = Parcel.obtain();
                                try {
                                    try {
                                        parcelObtain.writeInterfaceToken("com.zui.deviceidservice.IDeviceidInterface");
                                        iBinderTake.transact(1, parcelObtain, parcelObtain2, 0);
                                        parcelObtain2.readException();
                                        string2 = parcelObtain2.readString();
                                    } catch (Exception e10) {
                                        e10.printStackTrace();
                                    }
                                    parcelObtain2.recycle();
                                    parcelObtain.recycle();
                                    try {
                                        try {
                                            kc.a.a("LenovoDeviceIDHelper", "getOAID oaid:" + string2);
                                            str6 = string2;
                                        } catch (Exception e11) {
                                            e = e11;
                                            str6 = string2;
                                            e.printStackTrace();
                                        } catch (Throwable th) {
                                            th = th;
                                            eVar.f91553a.unbindService(eVar.f91555c);
                                            throw th;
                                        }
                                    } catch (Exception e12) {
                                        e = e12;
                                    } catch (Throwable th2) {
                                        th = th2;
                                    }
                                    break;
                                } catch (Throwable th3) {
                                    try {
                                        try {
                                            parcelObtain2.recycle();
                                            parcelObtain.recycle();
                                            throw th3;
                                        } catch (Exception e13) {
                                            e = e13;
                                            e.printStackTrace();
                                            eVar.f91553a.unbindService(eVar.f91555c);
                                            a.f91458a = str6;
                                            kc.a.a("OAIDHelper", "time:" + (System.currentTimeMillis() - jCurrentTimeMillis));
                                            kc.a.a("OAIDHelper", "manufacturer:" + upperCase + "--OAID:" + a.f91458a);
                                            if (TextUtils.isEmpty(a.f91458a)) {
                                                boolean unused = a.f91461d = true;
                                            } else {
                                                c.d(this.f91464b, "ks_oaid", a.f91458a);
                                            }
                                            a.c();
                                            boolean unused2 = a.f91460c = false;
                                        }
                                    } catch (Throwable th4) {
                                        th = th4;
                                        eVar.f91553a.unbindService(eVar.f91555c);
                                        throw th;
                                    }
                                }
                            } catch (Exception e14) {
                                e = e14;
                            } catch (Throwable th5) {
                                th = th5;
                            }
                            eVar.f91553a.unbindService(eVar.f91555c);
                        }
                    } catch (Exception e15) {
                        e = e15;
                        kc.a.a(str, "getOAID Lenovo service not found");
                        e.printStackTrace();
                    }
                } catch (Exception e16) {
                    e = e16;
                    str = "LenovoDeviceIDHelper";
                }
                a.f91458a = str6;
                break;
            case 1:
                a.f91458a = new g(this.f91464b).a();
                break;
            case 2:
            case 3:
                Context context = this.f91464b;
                try {
                    Class<?> cls = Class.forName("com.android.id.impl.IdProviderImpl");
                    str3 = (String) cls.getMethod("getOAID", Context.class).invoke(cls.newInstance(), context);
                    try {
                        str2 = "XiaomiDeviceIDHelper";
                        try {
                            kc.a.a(str2, "getOAID oaid:" + str3);
                        } catch (Exception e17) {
                            e = e17;
                            str6 = str3;
                            e.printStackTrace();
                            kc.a.a(str2, "getOAID fail");
                            str3 = str6;
                        }
                    } catch (Exception e18) {
                        e = e18;
                        str2 = "XiaomiDeviceIDHelper";
                    }
                } catch (Exception e19) {
                    e = e19;
                    str2 = "XiaomiDeviceIDHelper";
                }
                a.f91458a = str3;
                break;
            case 4:
            case 7:
                f fVar = new f(this.f91464b);
                try {
                    Intent intent2 = new Intent();
                    intent2.setComponent(new ComponentName("com.heytap.openid", "com.heytap.openid.IdentifyService"));
                    intent2.setAction("action.com.heytap.openid.OPEN_ID_SERVICE");
                    boolean zBindService = fVar.f91557a.bindService(intent2, fVar.f91559c, 1);
                    str4 = "OppoDeviceIDHelper";
                    try {
                        kc.a.a(str4, "getOAID isBin=" + zBindService);
                        try {
                            if (zBindService) {
                                try {
                                    IBinder iBinderTake2 = fVar.f91558b.take();
                                    String packageName = fVar.f91557a.getPackageName();
                                    String strA = fVar.a();
                                    Parcel parcelObtain3 = Parcel.obtain();
                                    Parcel parcelObtain4 = Parcel.obtain();
                                    try {
                                        try {
                                            parcelObtain3.writeInterfaceToken("com.heytap.openid.IOpenID");
                                            parcelObtain3.writeString(packageName);
                                            parcelObtain3.writeString(strA);
                                            parcelObtain3.writeString("OUID");
                                            iBinderTake2.transact(1, parcelObtain3, parcelObtain4, 0);
                                            parcelObtain4.readException();
                                            string3 = parcelObtain4.readString();
                                        } catch (Throwable th6) {
                                            parcelObtain3.recycle();
                                            parcelObtain4.recycle();
                                            throw th6;
                                        }
                                    } catch (Exception e20) {
                                        e20.printStackTrace();
                                    }
                                    parcelObtain3.recycle();
                                    parcelObtain4.recycle();
                                    try {
                                        kc.a.a(str4, "getOAID oaid" + string3);
                                        str6 = string3;
                                    } catch (Exception e21) {
                                        e = e21;
                                        str6 = string3;
                                        e.printStackTrace();
                                    } catch (Throwable th7) {
                                        th = th7;
                                        fVar.f91557a.unbindService(fVar.f91559c);
                                        throw th;
                                    }
                                } catch (Exception e22) {
                                    e = e22;
                                }
                                fVar.f91557a.unbindService(fVar.f91559c);
                            }
                        } catch (Throwable th8) {
                            th = th8;
                        }
                    } catch (Exception e23) {
                        e = e23;
                        e.printStackTrace();
                        kc.a.a(str4, "getOAID service not found");
                    }
                } catch (Exception e24) {
                    e = e24;
                    str4 = "OppoDeviceIDHelper";
                }
                a.f91458a = str6;
                break;
            case 5:
            case 8:
            case 14:
                a.f91458a = new h(this.f91464b).a();
                break;
            case 6:
                a.f91458a = new ic.a(this.f91464b).a();
                break;
            case 9:
                try {
                    try {
                        cursorQuery = this.f91464b.getContentResolver().query(Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/OAID"), null, null, null, null);
                        if (cursorQuery != null && cursorQuery.moveToNext()) {
                            String string4 = cursorQuery.getString(cursorQuery.getColumnIndex(HmInputMappingContent.FIELD_VALUE));
                            try {
                                kc.a.a("VivoDeviceIDHelper", "getOAID oaid:" + string4);
                                str6 = string4;
                            } catch (Exception e25) {
                                e = e25;
                                str6 = string4;
                                kc.a.a("VivoDeviceIDHelper", "getOAID fail");
                                e.printStackTrace();
                                if (cursorQuery != null) {
                                    try {
                                        cursorQuery.close();
                                    } catch (Exception e26) {
                                        e26.printStackTrace();
                                    }
                                }
                            }
                        }
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        break;
                    } catch (Throwable th9) {
                        if (0 == 0) {
                            throw th9;
                        }
                        try {
                            cursorQuery.close();
                            throw th9;
                        } catch (Exception e27) {
                            e27.printStackTrace();
                            throw th9;
                        }
                    }
                } catch (Exception e28) {
                    e = e28;
                }
                a.f91458a = str6;
                break;
            case 10:
                ic.b bVar = new ic.b(this.f91464b);
                try {
                    string = Settings.Global.getString(bVar.f91537a.getContentResolver(), "oaid");
                    try {
                        if (TextUtils.isEmpty(string)) {
                            string = Settings.Secure.getString(bVar.f91537a.getContentResolver(), "oaid");
                        }
                        kc.a.a("HONORDeviceIDHelper", "getOAID secure: " + string);
                    } catch (Throwable th10) {
                        th = th10;
                        th.printStackTrace();
                    }
                } catch (Throwable th11) {
                    th = th11;
                    string = "";
                }
                if (string == null || string.isEmpty()) {
                    ic.c cVar = new ic.c();
                    try {
                        Intent intent3 = new Intent();
                        intent3.setAction("com.hihonor.id.HnOaIdService");
                        intent3.setPackage("com.hihonor.id");
                        try {
                            PackageManager packageManager = bVar.f91537a.getPackageManager();
                            packageManager.getPackageInfo("com.hihonor.id", 0);
                            Intent intent4 = new Intent("com.hihonor.id.HnOaIdService");
                            intent4.setPackage("com.hihonor.id");
                            z10 = !packageManager.queryIntentServices(intent4, 0).isEmpty();
                        } catch (Exception unused3) {
                            z10 = false;
                        }
                        if (z10) {
                            try {
                                if (bVar.f91537a.bindService(intent3, bVar.f91539c, 1)) {
                                    try {
                                        cVar.f91541a = new ic.c.C1177c();
                                        jc.a.BinderC1196a binderC1196a = new jc.a.BinderC1196a(bVar.f91538b.take());
                                        binderC1196a.b(cVar.f91542b);
                                        binderC1196a.a(cVar.f91543c);
                                        cVar.f91544d.await(BaseCloudFileManager.ACK_TIMEOUT, TimeUnit.MICROSECONDS);
                                    } catch (Exception e29) {
                                        kc.a.a("HONORDeviceIDHelper", e29.getMessage());
                                    }
                                    Context context2 = bVar.f91537a;
                                    bVar = bVar.f91539c;
                                    context2.unbindService(bVar);
                                }
                            } catch (Throwable th12) {
                                bVar.f91537a.unbindService(bVar.f91539c);
                                throw th12;
                            }
                        }
                    } catch (Throwable th13) {
                        kc.a.a("HONORDeviceIDHelper", "getOAID honor service not found" + th13);
                    }
                    ic.c.C1177c c1177c = cVar.f91541a;
                    if (c1177c != null) {
                        str6 = c1177c.f91547a;
                    }
                } else {
                    str6 = string;
                }
                a.f91458a = str6;
                break;
            case 11:
                try {
                    cursorQuery2 = this.f91464b.getContentResolver().query(Uri.parse("content://com.meizu.flyme.openidsdk/"), null, null, new String[]{"oaid"}, null);
                    if (cursorQuery2 == null || cursorQuery2.isClosed()) {
                        str5 = "";
                    } else {
                        cursorQuery2.moveToFirst();
                        int columnIndex = cursorQuery2.getColumnIndex(HmInputMappingContent.FIELD_VALUE);
                        String string5 = columnIndex > 0 ? cursorQuery2.getString(columnIndex) : "";
                        int columnIndex2 = cursorQuery2.getColumnIndex("code");
                        if (columnIndex2 > 0) {
                            cursorQuery2.getInt(columnIndex2);
                        }
                        int columnIndex3 = cursorQuery2.getColumnIndex("expired");
                        if (columnIndex3 > 0) {
                            cursorQuery2.getLong(columnIndex3);
                        }
                        str5 = string5;
                    }
                    try {
                        kc.a.a("MeizuDeviceIDHelper", "getOAID oaid:" + str5);
                        if (cursorQuery2 != null) {
                            try {
                                cursorQuery2.close();
                                break;
                            } catch (Exception unused4) {
                            }
                        }
                    } catch (Throwable th14) {
                        th = th14;
                        str6 = str5;
                        try {
                            th.printStackTrace();
                            if (cursorQuery2 != null) {
                                try {
                                    cursorQuery2.close();
                                    break;
                                } catch (Exception unused5) {
                                }
                            }
                            str5 = str6;
                        } catch (Throwable th15) {
                            if (cursorQuery2 != null) {
                                try {
                                    cursorQuery2.close();
                                    break;
                                } catch (Exception unused6) {
                                }
                            }
                            try {
                                throw th15;
                            } catch (Exception e30) {
                                kc.a.a("MeizuDeviceIDHelper", "getOAID service not found;");
                                e30.printStackTrace();
                                str5 = str6;
                                a.f91458a = str5;
                                kc.a.a("OAIDHelper", "time:" + (System.currentTimeMillis() - jCurrentTimeMillis));
                                kc.a.a("OAIDHelper", "manufacturer:" + upperCase + "--OAID:" + a.f91458a);
                                if (TextUtils.isEmpty(a.f91458a)) {
                                    boolean unused7 = a.f91461d = true;
                                } else {
                                    c.d(this.f91464b, "ks_oaid", a.f91458a);
                                }
                                a.c();
                                boolean unused8 = a.f91460c = false;
                            }
                        }
                    }
                } catch (Throwable th16) {
                    th = th16;
                }
                a.f91458a = str5;
                break;
            case 12:
                Context context3 = this.f91464b;
                try {
                    Uri uri = Uri.parse("content://cn.nubia.identity/identity");
                    int i10 = Build.VERSION.SDK_INT;
                    ContentProviderClient contentProviderClientAcquireContentProviderClient = context3.getContentResolver().acquireContentProviderClient(uri);
                    Bundle bundleCall = contentProviderClientAcquireContentProviderClient.call("getOAID", null, null);
                    if (i10 >= 24) {
                        contentProviderClientAcquireContentProviderClient.release();
                    } else {
                        contentProviderClientAcquireContentProviderClient.release();
                    }
                    if (bundleCall != null) {
                        String string6 = bundleCall.getInt("code", -1) == 0 ? bundleCall.getString("id") : "";
                        try {
                            kc.a.a("NubiaDeviceIDHelper", "getOAID oaid:" + string6 + "faledMsg:" + bundleCall.getString("message"));
                            str6 = string6;
                        } catch (Exception e31) {
                            e = e31;
                            str6 = string6;
                            kc.a.a("NubiaDeviceIDHelper", "getOAID fail");
                            e.printStackTrace();
                        }
                    }
                } catch (Exception e32) {
                    e = e32;
                }
                a.f91458a = str6;
                break;
            case 15:
                d dVar = new d(this.f91464b);
                try {
                    Intent intent5 = new Intent("com.uodis.opendevice.OPENIDS_SERVICE");
                    intent5.setPackage("com.huawei.hwid");
                    try {
                        if (dVar.f91549a.bindService(intent5, dVar.f91551c, 1)) {
                            try {
                                jc.c.a aVar = new jc.c.a(dVar.f91550b.take());
                                String strB = aVar.b();
                                try {
                                    kc.a.a("HWDeviceIDHelper", "getOAID oaid:" + strB + "--boos:" + aVar.a());
                                    str6 = strB;
                                } catch (Exception e33) {
                                    e = e33;
                                    str6 = strB;
                                    e.printStackTrace();
                                } catch (Throwable th17) {
                                    th = th17;
                                    str6 = strB;
                                    dVar.f91549a.unbindService(dVar.f91551c);
                                    throw th;
                                }
                            } catch (Exception e34) {
                                e = e34;
                            }
                            Context context4 = dVar.f91549a;
                            dVar = dVar.f91551c;
                            context4.unbindService(dVar);
                        }
                    } catch (Throwable th18) {
                        th = th18;
                    }
                } catch (Exception e35) {
                    dVar = "getOAID hw service not found";
                    kc.a.a("HWDeviceIDHelper", "getOAID hw service not found");
                    e35.printStackTrace();
                }
                a.f91458a = str6;
                break;
            default:
                if (a.f() || a.h()) {
                    a.f91458a = new h(this.f91464b).a();
                }
                break;
        }
        kc.a.a("OAIDHelper", "time:" + (System.currentTimeMillis() - jCurrentTimeMillis));
        kc.a.a("OAIDHelper", "manufacturer:" + upperCase + "--OAID:" + a.f91458a);
        if (TextUtils.isEmpty(a.f91458a)) {
            boolean unused9 = a.f91461d = true;
        } else {
            c.d(this.f91464b, "ks_oaid", a.f91458a);
        }
        a.c();
        boolean unused10 = a.f91460c = false;
    }
}
