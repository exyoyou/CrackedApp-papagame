package cn.fly.tools.b;

import android.app.AppOpsManager;
import android.content.Context;
import android.os.CancellationSignal;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.text.TextUtils;
import cn.fly.FlySDK;
import cn.fly.tools.FlyLog;
import cn.fly.tools.utils.DH;
import cn.fly.tools.utils.ReflectHelper;
import cn.fly.tools.utils.ResHelper;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes7.dex */
public class i {

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Object f1895a;

        public a(Object obj) {
            this.f1895a = obj;
        }

        private long m() {
            if (DH.SyncMtd.getOSVersionIntForFly() < 17) {
                return -1L;
            }
            try {
                long jLongValue = ((Long) ReflectHelper.invokeInstanceMethodNoThrow(this.f1895a, "getElapsedRealtimeNanos", -1L, new Object[0])).longValue();
                long millis = TimeUnit.NANOSECONDS.toMillis(SystemClock.elapsedRealtimeNanos() - jLongValue);
                if (millis < 0) {
                    return -1L;
                }
                return millis;
            } catch (Throwable th) {
                FlyLog.getInstance().d(th);
                return -1L;
            }
        }

        public float a() {
            return ((Float) ReflectHelper.invokeInstanceMethodNoThrow(this.f1895a, cn.fly.commons.n.a("011CchMdgHdb8aaEbebhJba3ca"), Float.valueOf(0.0f), new Object[0])).floatValue();
        }

        public double b() {
            return ((Double) ReflectHelper.invokeInstanceMethodNoThrow(this.f1895a, cn.fly.commons.n.a("011KchUdgUdcPbgSbg[g+beba6d"), Double.valueOf(0.0d), new Object[0])).doubleValue();
        }

        public double c() {
            return ((Double) ReflectHelper.invokeInstanceMethodNoThrow(this.f1895a, cn.fly.commons.n.a("012TchQdgIdcbi1cWchbgOg$bebaCd"), Double.valueOf(0.0d), new Object[0])).doubleValue();
        }

        public long d() {
            return ((Long) ReflectHelper.invokeInstanceMethodNoThrow(this.f1895a, cn.fly.commons.n.a("007Dch!dgJdabgbd!d"), 0L, new Object[0])).longValue();
        }

        public String e() {
            return (String) ReflectHelper.invokeInstanceMethodNoThrow(this.f1895a, cn.fly.commons.n.a("011?chOdg8ejbhbibbbgba%dMbh"), null, new Object[0]);
        }

        public double f() {
            return ((Double) ReflectHelper.invokeInstanceMethodNoThrow(this.f1895a, cn.fly.commons.n.a("011EchXdgMdbEegNbg=g4bebaBd"), Double.valueOf(0.0d), new Object[0])).doubleValue();
        }

        public float g() {
            return ((Float) ReflectHelper.invokeInstanceMethodNoThrow(this.f1895a, cn.fly.commons.n.a("010[chVdg0dhRdb:bhbg0c3ch"), Float.valueOf(0.0f), new Object[0])).floatValue();
        }

        public float h() {
            return ((Float) ReflectHelper.invokeInstanceMethodNoThrow(this.f1895a, cn.fly.commons.n.a("008?ch<dgRcj_hdd8ba"), Float.valueOf(0.0f), new Object[0])).floatValue();
        }

        public boolean i() {
            if (DH.SyncMtd.getOSVersionIntForFly() >= 26) {
                return ((Boolean) ReflectHelper.invokeInstanceMethodNoThrow(this.f1895a, cn.fly.commons.n.a("019fb8dgei!dXbhTgKbgBabe$dbAaaXbebhBba.ca"), Boolean.FALSE, new Object[0])).booleanValue();
            }
            return false;
        }

        public float j() {
            if (DH.SyncMtd.getOSVersionIntForFly() >= 26) {
                return ((Float) ReflectHelper.invokeInstanceMethodNoThrow(this.f1895a, cn.fly.commons.n.a("0255chMdgMei^d'bh8g bgQabe2dbXaa+bebh)baNcafa-dgd6bhdg"), Float.valueOf(0.0f), new Object[0])).floatValue();
            }
            return 0.0f;
        }

        public long k() {
            long jD = d();
            try {
                long jM = m();
                if (jM == -1) {
                    return jD;
                }
                long caliSysTime = ResHelper.getCaliSysTime() - jM;
                return Math.abs(caliSysTime - jD) > 600000 ? caliSysTime : jD;
            } catch (Throwable th) {
                FlyLog.getInstance().d(th);
                return jD;
            }
        }

        public HashMap<String, Object> l() {
            Object th;
            HashMap<String, Object> map;
            if (this.f1895a == null) {
                return null;
            }
            try {
                map = new HashMap<>();
                try {
                    map.put("accmt", Float.valueOf(a()));
                    if (i()) {
                        map.put("vacmt", Float.valueOf(j()));
                    }
                    map.put("ltdmt", Double.valueOf(b()));
                    map.put("lndmt", Double.valueOf(c()));
                    map.put(cn.fly.commons.g.f1331a, Long.valueOf(k()));
                    map.put("prvmt", e());
                    map.put("atdmt", Double.valueOf(f()));
                    map.put("brmt", Float.valueOf(g()));
                    map.put("spmt", Float.valueOf(h()));
                } catch (Throwable th2) {
                    th = th2;
                    FlyLog.getInstance().d("[cl] glfe " + th, new Object[0]);
                }
            } catch (Throwable th3) {
                th = th3;
                map = null;
            }
            return map;
        }

        public float a(Object obj) {
            if (obj != null) {
                try {
                    return ((Float) ReflectHelper.invokeInstanceMethod(this.f1895a, cn.fly.commons.n.a("0104babgdg!gbcadAdabi"), new Object[]{obj}, new Class[]{Class.forName(cn.fly.commons.n.a("025bcNbabhbibgbabj>e0biQabg%bgbiJc;bjdcbi_abg8bgbi3c"))})).floatValue();
                } catch (Throwable th) {
                    FlyLog.getInstance().d(th);
                }
            }
            return 0.0f;
        }
    }

    public static Object a(Context context, String str) throws Throwable {
        int i10;
        int i11;
        Object objA;
        Parcel parcel;
        Parcel parcel2;
        Object objA2;
        if (!cn.fly.commons.e.f() || !cn.fly.tools.utils.e.a().a(str) || DH.SyncMtd.getOSVersionIntForFly() < 23) {
            return null;
        }
        cn.fly.tools.a.f fVarA = cn.fly.tools.a.f.a(context);
        if (DH.SyncMtd.getOSVersionIntForFly() >= 31) {
            Class<?> clsB = fVarA.b(cn.fly.commons.n.a("036bc8babhbibgbabjXe@bi8abg1bgbi2cCbjdc8b1dg;g1dcbiGabg+bgbiNcUeh$dRbcbe.dIdg g"));
            if (clsB == null) {
                return null;
            }
            Object objA3 = fVarA.a(cn.fly.commons.n.a("036bc@babhbibgbabjJeVbiJabgXbgbiAcEbjdc-bIdg5gXdcbiLabg<bgbiBc]eh-dCbcbe9d]dg1g") + "$" + cn.fly.commons.n.a("007>dhbebg:eBba.dUbh"));
            if (objA3 != null) {
                i10 = 0;
                objA2 = fVarA.a(cn.fly.commons.n.a("036bc8babhbibgbabjVe%bi4abg8bgbiNc5bjdc@b-dgRg7dcbi4abgGbgbi*cTeh4dDbcbe)dQdg*g") + "$" + cn.fly.commons.n.a("007)dhbebgNeUba!d9bh"), objA3, cn.fly.commons.n.a("0058ddbebgRe0ba"), (Class[]) null, (Object[]) null, clsB, (Object) null);
            } else {
                i10 = 0;
                objA2 = null;
            }
            objA = objA2;
            i11 = 1;
        } else {
            i10 = 0;
            Class<?> clsB2 = fVarA.b(cn.fly.commons.n.a("036bcXbabhbibgbabjEeZbi abg,bgbi5cDbjdc8b5dgHg1dcbi9abg bgbi_cJeh'dSbcbe!dWdgAg"));
            if (clsB2 == null) {
                return null;
            }
            i11 = 1;
            objA = fVarA.a(cn.fly.commons.n.a("032bcHbabhbibgbabjZe2bi8abg;bgbi1cZbjdcbiQabgSbgbi cXeh8dSbcbe8dTdgKg"), (Object) null, cn.fly.commons.n.a("028a;bh;dbgdBeabhbibddjSdhWbh;dabgdNbaejbhbibbbgba8dRbh"), new Class[]{String.class, Long.TYPE, Float.TYPE, Boolean.TYPE}, new Object[]{str, 0, 0, Boolean.TRUE}, clsB2, (Object) null);
        }
        String str2 = cn.fly.commons.n.a("033bc,babhbibgbabj'eJbi0abgUbgbi-c.bjccdcbiVabgQbgbiXcSfa9bcb<ch_d+bh") + "$" + cn.fly.commons.n.a("0045cj%g@bedd");
        String strA = cn.fly.commons.n.a("027Jdaehdbcecjdbcbdaccefcebfch)dg dc@b+dg>g;dcbi9abgSbgbi0c");
        Class<?> cls = Integer.TYPE;
        int iIntValue = ((Integer) fVarA.a(str2, strA, null, cls, -1)).intValue();
        if (iIntValue <= 0) {
            return null;
        }
        String strA2 = cn.fly.commons.n.a("025bc8babhbibgbabjbidgbjcj<d,bhbbbgJad6faYbcbWch9dZbh");
        String strA3 = cn.fly.commons.n.a("010Pch$dg_cj1dLbhbbbgVad");
        Class[] clsArr = new Class[i11];
        clsArr[i10] = String.class;
        Object[] objArr = new Object[i11];
        objArr[i10] = cn.fly.commons.n.a("008e7biKabgGbgbi1c");
        IBinder iBinder = (IBinder) fVarA.a(strA2, (Object) null, strA3, clsArr, objArr, IBinder.class, (Object) null);
        if (objA == null || iBinder == null) {
            return null;
        }
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken(cn.fly.commons.n.a("033bcQbabhbibgbabjRe.bi0abgHbgbi)c_bjccdcbiPabg^bgbi*cCfaFbcbGchQd'bh"));
            if (DH.SyncMtd.getOSVersionIntForFly() >= 31) {
                parcelObtain.writeString(str);
                parcelObtain.writeTypedObject((Parcelable) objA, i10);
                parcel = parcelObtain2;
                parcel2 = parcelObtain;
            } else {
                parcelObtain.writeInt(i11);
                Class<?> cls2 = objA.getClass();
                String strA4 = cn.fly.commons.n.a("013+debhbg6gdUdabiej0bJbh)ade");
                Class[] clsArr2 = new Class[2];
                clsArr2[i10] = Parcel.class;
                clsArr2[i11] = cls;
                Object[] objArr2 = new Object[2];
                objArr2[i10] = parcelObtain;
                objArr2[i11] = Integer.valueOf(i10);
                parcel = parcelObtain2;
                parcel2 = parcelObtain;
                try {
                    fVarA.a(cls2, objA, strA4, clsArr2, objArr2, (Class<?>) null, (Object) null);
                } catch (Throwable th) {
                    th = th;
                    cn.fly.tools.a.f.a(context).b(context);
                    parcel.recycle();
                    parcel2.recycle();
                    throw th;
                }
            }
            parcel2.writeString(context.getPackageName());
            if (DH.SyncMtd.getOSVersionIntForFly() >= 30) {
                parcel2.writeString(context.getAttributionTag());
            }
            iBinder.transact(iIntValue, parcel2, parcel, i10);
            parcel.readException();
            Object typedObject = parcel.readTypedObject(a());
            cn.fly.tools.a.f.a(context).b(context);
            parcel.recycle();
            parcel2.recycle();
            return typedObject;
        } catch (Throwable th2) {
            th = th2;
            parcel = parcelObtain2;
            parcel2 = parcelObtain;
        }
    }

    private static Parcelable.Creator<?> a() throws Throwable {
        return (Parcelable.Creator) ReflectHelper.getStaticField(ReflectHelper.importClass(cn.fly.commons.n.a("025bcLbabhbibgbabjOe*bi(abg9bgbiCcHbjdcbiMabgTbgbiSc")), cn.fly.commons.n.a("007 cbehegdbdaefeh"));
    }

    /* JADX WARN: Code duplicated, block: B:77:0x03f9  */
    /* JADX WARN: Code duplicated, block: B:78:0x0401  */
    public static Object a(Context context, String str, long j10) throws Throwable {
        int i10;
        Object objA;
        Parcel parcel;
        Parcel parcel2;
        Parcel parcel3;
        char c10;
        Object objCreateProxy;
        Object objA2;
        int iIntValue;
        if (!cn.fly.commons.e.e() || !cn.fly.tools.utils.e.a().a(str) || DH.SyncMtd.getOSVersionIntForFly() < 23) {
            return null;
        }
        cn.fly.tools.a.f fVarA = cn.fly.tools.a.f.a(context);
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final Object[] objArr = new Object[1];
        Class<?> clsB = cn.fly.tools.a.f.a(FlySDK.getContext()).b(cn.fly.commons.n.a("032bc8babhbibgbabj:eKbiUabg>bgbi!c?bjdcbi?abg;bgbiCc_eh'd4bcbe<d,dgCg"));
        if (clsB == null) {
            return null;
        }
        if (DH.SyncMtd.getOSVersionIntForFly() >= 31) {
            Object objA3 = fVarA.a(cn.fly.commons.n.a("032bcEbabhbibgbabj2e.bi0abgVbgbi<cPbjdcbi9abg9bgbi[cKeh1d2bcbeEdSdg4g") + "$" + cn.fly.commons.n.a("007]dhbebg9eDbaWd8bh"), new Class[]{Long.TYPE}, new Object[]{0L});
            if (objA3 != null) {
                i10 = 0;
                objA = fVarA.a(cn.fly.commons.n.a("032bcMbabhbibgbabj%eJbi@abg%bgbi9cRbjdcbiGabg<bgbiGc5eh.d bcbe=d=dgCg") + "$" + cn.fly.commons.n.a("007Mdhbebg2e5ba^d+bh"), objA3, cn.fly.commons.n.a("0057ddbebg7e$ba"), (Class[]) null, (Object[]) null, clsB, (Object) null);
            } else {
                i10 = 0;
                objA = null;
            }
        } else {
            i10 = 0;
            objA = fVarA.a(cn.fly.commons.n.a("032bcNbabhbibgbabj8e8biGabg8bgbiQc=bjdcbi^abgRbgbi)c?ehPd7bcbe;dFdg-g"), (Object) null, cn.fly.commons.n.a("028a$bh4dbgd2eabhbibddj;dh%bhYdabgd'baejbhbibbbgba*d@bh"), new Class[]{String.class, Long.TYPE, Float.TYPE, Boolean.TYPE}, new Object[]{str, 0, 0, Boolean.TRUE}, clsB, (Object) null);
        }
        Object obj = objA;
        String strA = cn.fly.commons.n.a("025bcRbabhbibgbabjbidgbjcj3d-bhbbbg=adFfa5bcbYch+dNbh");
        String strA2 = cn.fly.commons.n.a("010Vch:dg8cj)d'bhbbbg-ad");
        Class[] clsArr = new Class[1];
        clsArr[i10] = String.class;
        Object[] objArr2 = new Object[1];
        objArr2[i10] = cn.fly.commons.n.a("008e?biYabg3bgbi+c");
        IBinder iBinder = (IBinder) fVarA.a(strA, (Object) null, strA2, clsArr, objArr2, IBinder.class, (Object) null);
        if (obj == null || iBinder == null) {
            return null;
        }
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken(cn.fly.commons.n.a("033bc%babhbibgbabjOe:bi-abgAbgbiIcQbjccdcbiQabg<bgbi-cXfa0bcb:chTd;bh"));
            if (DH.SyncMtd.getOSVersionIntForFly() >= 31) {
                try {
                    parcelObtain.writeString(str);
                    parcelObtain.writeTypedObject((Parcelable) obj, i10);
                    Consumer consumer = new Consumer() { // from class: cn.fly.tools.b.i.1
                        @Override // java.util.function.Consumer
                        public void accept(Object obj2) {
                            try {
                                objArr[0] = obj2;
                            } catch (Throwable th) {
                                try {
                                    FlyLog.getInstance().d(th);
                                } finally {
                                    countDownLatch.countDown();
                                }
                            }
                        }
                    };
                    String str2 = cn.fly.commons.n.a("032bcTbabhbibgbabjBeAbi,abgNbgbiAc%bjdcbi)abg8bgbi%cGfa3bcbSch(dXbh") + "$" + cn.fly.commons.n.a("027@gbQdgTcbbebhbhUdcg$dcbiTabgYbgbi]cAdabhTbc[dg>hMbibhGg");
                    Class[] clsArr2 = new Class[3];
                    clsArr2[i10] = Executor.class;
                    clsArr2[1] = s.a();
                    clsArr2[2] = CancellationSignal.class;
                    Object[] objArr3 = new Object[3];
                    objArr3[i10] = Executors.newSingleThreadExecutor();
                    objArr3[1] = consumer;
                    objArr3[2] = null;
                    Object objA4 = fVarA.a(str2, clsArr2, objArr3);
                    if (objA4 == null) {
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                        cn.fly.tools.a.f.a(context).b(context);
                        return null;
                    }
                    String strA3 = cn.fly.commons.n.a("012gJbieh6dadYbgbbCdQbhccba");
                    Class[] clsArr3 = new Class[1];
                    clsArr3[i10] = Object.class;
                    Object[] objArr4 = new Object[1];
                    objArr4[i10] = consumer;
                    parcel3 = parcelObtain2;
                    try {
                        String str3 = (String) fVarA.a(AppOpsManager.class, (Object) null, strA3, clsArr3, objArr4, String.class, (Object) null);
                        if (TextUtils.isEmpty(str3)) {
                            parcel3.recycle();
                            parcelObtain.recycle();
                        } else {
                            parcelObtain = parcelObtain;
                            try {
                                parcelObtain.writeStrongInterface((IInterface) objA4);
                                parcelObtain.writeString(context.getPackageName());
                                parcelObtain.writeString(context.getAttributionTag());
                                parcelObtain.writeString(str3);
                                int iIntValue2 = ((Integer) fVarA.a(cn.fly.commons.n.a("033bcXbabhbibgbabj<e[biIabgPbgbi8cYbjccdcbi]abg1bgbiIc,faUbcbQchDdCbh") + "$" + cn.fly.commons.n.a("0045cj-gWbedd"), cn.fly.commons.n.a("030.daehdbcecjdbcbdaccefcebfch+dg(cbbebhbhLdcg4dcbi9abg,bgbiKc"), null, Integer.TYPE, -1)).intValue();
                                if (iIntValue2 <= 0) {
                                    parcel3.recycle();
                                    parcelObtain.recycle();
                                } else {
                                    iBinder.transact(iIntValue2, parcelObtain, parcel3, 0);
                                    parcel2 = parcelObtain;
                                    parcel = parcel3;
                                    c10 = 0;
                                    parcel.readException();
                                    countDownLatch.await(j10, TimeUnit.MILLISECONDS);
                                    Object obj2 = objArr[c10];
                                    parcel.recycle();
                                    parcel2.recycle();
                                    cn.fly.tools.a.f.a(context).b(context);
                                    return obj2;
                                }
                            } catch (Throwable th) {
                                th = th;
                            }
                        }
                        cn.fly.tools.a.f.a(context).b(context);
                        return null;
                    } catch (Throwable th2) {
                        th = th2;
                        parcelObtain = parcelObtain;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    parcel3 = parcelObtain2;
                }
                parcel2 = parcelObtain;
                parcel = parcel3;
            } else {
                parcelObtain.writeInt(1);
                try {
                    fVarA.a(obj.getClass(), obj, cn.fly.commons.n.a("0133debhbgSgd[dabiejXbXbh0ade"), new Class[]{Parcel.class, Integer.TYPE}, new Object[]{parcelObtain, 0}, (Class<?>) null, (Object) null);
                    HashMap map = new HashMap();
                    final int iIdentityHashCode = System.identityHashCode(map);
                    try {
                        map.put(cn.fly.commons.n.a("017]bi^cOdcbiFabgNbgbiYc=cb'fbcIch)dWba"), new ReflectHelper.a<Object[], Object>() { // from class: cn.fly.tools.b.i.2
                            @Override // cn.fly.tools.utils.ReflectHelper.a
                            public Object a(Object[] objArr5) {
                                if (objArr5 != null) {
                                    try {
                                        if (objArr5.length > 0) {
                                            FlyLog.getInstance().d("[212] oncge" + objArr5[0], new Object[0]);
                                            Object obj3 = objArr5[0];
                                            if (!(obj3 instanceof List) || ((List) obj3).size() <= 0) {
                                                objArr[0] = objArr5[0];
                                            } else {
                                                List list = (List) objArr5[0];
                                                objArr[0] = list.get(list.size() - 1);
                                            }
                                        }
                                    } catch (Throwable th4) {
                                        try {
                                            FlyLog.getInstance().d(th4);
                                        } finally {
                                            countDownLatch.countDown();
                                        }
                                    }
                                }
                                return null;
                            }
                        });
                        map.put("equals", new ReflectHelper.a<Object[], Object>() { // from class: cn.fly.tools.b.i.3
                            @Override // cn.fly.tools.utils.ReflectHelper.a
                            public Object a(Object[] objArr5) {
                                if (objArr5 != null) {
                                    Object obj3 = objArr5[0];
                                    if (obj3 != null) {
                                        return Boolean.valueOf(obj3.hashCode() == iIdentityHashCode);
                                    }
                                }
                                return Boolean.FALSE;
                            }
                        });
                        map.put(cn.fly.commons.n.a("008fb5dg(f.cbbiba*d"), new ReflectHelper.a<Object[], Object>() { // from class: cn.fly.tools.b.i.4
                            @Override // cn.fly.tools.utils.ReflectHelper.a
                            public Object a(Object[] objArr5) {
                                return Integer.valueOf(iIdentityHashCode);
                            }
                        });
                        objCreateProxy = ReflectHelper.createProxy((Map<String, ReflectHelper.a<Object[], Object>>) map, (Class<?>[]) new Class[]{Class.forName(cn.fly.commons.n.a("033bcYbabhbibgbabj;e-bi*abg*bgbiDc4bjdcbiXabg_bgbi2cQdcbgdg[gdcd8bh"))});
                    } catch (Throwable th4) {
                        FlyLog.getInstance().d(th4);
                        objCreateProxy = null;
                    }
                    if (objCreateProxy == null) {
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                    } else if (DH.SyncMtd.getOSVersionIntForFly() >= 30) {
                        objA2 = fVarA.a(cn.fly.commons.n.a("032bcXbabhbibgbabjYe_biLabgEbgbiNcDbjdcbiIabg>bgbi2c'fa8bcbDch+d4bh") + "$" + cn.fly.commons.n.a("0250dcbiQabg(bgbi3c3dcbgdg7gdcdBbhdabhGbcDdg@hLbibh6g"), new Class[]{Class.forName(cn.fly.commons.n.a("032bc)babhbibgbabj%e!bi:abg'bgbi9c$bjdcbiMabg8bgbi*cMfa]bcb?chFdHbh")), Class.forName(cn.fly.commons.n.a("033bc,babhbibgbabjReNbiXabg=bgbi(cDbjdcbiQabg_bgbi(cCdcbgdg8gdcdLbh"))}, new Object[]{DH.SyncMtd.getSystemServiceSafe(cn.fly.commons.n.a("008e^biXabgWbgbi0c")), objCreateProxy});
                        if (objA2 == null) {
                            parcelObtain2.recycle();
                            parcelObtain.recycle();
                        } else {
                            fVarA.a(objA2.getClass(), objA2, cn.fly.commons.n.a("008 bh2dVchbgdg2gdHbh"), new Class[]{Executor.class}, new Object[]{Executors.newSingleThreadExecutor()}, (Class<?>) null, (Object) null);
                            parcel2 = parcelObtain;
                            try {
                                parcel2.writeStrongBinder((IBinder) objA2);
                                parcel2.writeInt(0);
                                parcel2.writeString(context.getPackageName());
                                iIntValue = ((Integer) fVarA.a(cn.fly.commons.n.a("033bcAbabhbibgbabj eObi_abgUbgbi]cHbjccdcbi3abgVbgbi_c%fa*bcb@ch<d@bh") + "$" + cn.fly.commons.n.a("0044cjPgKbedd"), cn.fly.commons.n.a("034+daehdbcecjdbcbdaccefcebfbhKd2bcbeSd,dg3g)dcbi%abg3bgbi-c.ciMhKbaXbgd_dg"), null, Integer.TYPE, -1)).intValue();
                                if (iIntValue <= 0) {
                                    parcelObtain2.recycle();
                                    parcel2.recycle();
                                } else {
                                    parcel = parcelObtain2;
                                    c10 = 0;
                                    try {
                                        iBinder.transact(iIntValue, parcel2, parcel, 0);
                                        parcel.readException();
                                        countDownLatch.await(j10, TimeUnit.MILLISECONDS);
                                        Object obj3 = objArr[c10];
                                        parcel.recycle();
                                        parcel2.recycle();
                                        cn.fly.tools.a.f.a(context).b(context);
                                        return obj3;
                                    } catch (Throwable th5) {
                                        th = th5;
                                    }
                                }
                            } catch (Throwable th6) {
                                th = th6;
                                parcel = parcelObtain2;
                            }
                        }
                    } else {
                        objA2 = fVarA.a(cn.fly.commons.n.a("032bcHbabhbibgbabjMe+bi[abgYbgbi8c=bjdcbi^abg]bgbiQcRfa9bcbFch$dYbh") + "$" + cn.fly.commons.n.a("017-dcbgdgEgdcdGbhdabhUbcKdgUh1bibh;g"), new Class[]{Class.forName(cn.fly.commons.n.a("032bcFbabhbibgbabj$eEbiYabgBbgbi*cObjdcbiOabg>bgbiIc.fa;bcb^ch;dYbh")), Class.forName(cn.fly.commons.n.a("033bc(babhbibgbabj?eSbiHabgAbgbi=cAbjdcbi6abg]bgbi5c2dcbgdg%gdcdZbh")), Looper.class}, new Object[]{DH.SyncMtd.getSystemServiceSafe(cn.fly.commons.n.a("008e%bi?abg4bgbiHc")), objCreateProxy, cn.fly.commons.a.m.a().c()});
                        if (objA2 == null) {
                            parcelObtain2.recycle();
                            parcelObtain.recycle();
                        } else {
                            parcel2 = parcelObtain;
                            parcel2.writeStrongBinder((IBinder) objA2);
                            parcel2.writeInt(0);
                            parcel2.writeString(context.getPackageName());
                            iIntValue = ((Integer) fVarA.a(cn.fly.commons.n.a("033bcAbabhbibgbabj eObi_abgUbgbi]cHbjccdcbi3abgVbgbi_c%fa*bcb@ch<d@bh") + "$" + cn.fly.commons.n.a("0044cjPgKbedd"), cn.fly.commons.n.a("034+daehdbcecjdbcbdaccefcebfbhKd2bcbeSd,dg3g)dcbi%abg3bgbi-c.ciMhKbaXbgd_dg"), null, Integer.TYPE, -1)).intValue();
                            if (iIntValue <= 0) {
                                parcelObtain2.recycle();
                                parcel2.recycle();
                            } else {
                                parcel = parcelObtain2;
                                c10 = 0;
                                iBinder.transact(iIntValue, parcel2, parcel, 0);
                                parcel.readException();
                                countDownLatch.await(j10, TimeUnit.MILLISECONDS);
                                Object obj4 = objArr[c10];
                                parcel.recycle();
                                parcel2.recycle();
                                cn.fly.tools.a.f.a(context).b(context);
                                return obj4;
                            }
                        }
                    }
                    cn.fly.tools.a.f.a(context).b(context);
                    return null;
                } catch (Throwable th7) {
                    th = th7;
                    parcel = parcelObtain2;
                    parcel2 = parcelObtain;
                }
            }
        } catch (Throwable th8) {
            th = th8;
            parcel = parcelObtain2;
            parcel2 = parcelObtain;
        }
        parcel.recycle();
        parcel2.recycle();
        cn.fly.tools.a.f.a(context).b(context);
        throw th;
    }
}
