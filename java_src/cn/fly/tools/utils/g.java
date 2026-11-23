package cn.fly.tools.utils;

import android.os.Parcelable;
import cn.fly.FlySDK;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile g f2321a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private SharePrefrenceHelper f2322b;

    private g() {
        if (this.f2322b == null) {
            SharePrefrenceHelper sharePrefrenceHelper = new SharePrefrenceHelper(FlySDK.getContext());
            this.f2322b = sharePrefrenceHelper;
            sharePrefrenceHelper.a("dhp", 1);
            this.f2322b.open("dhp", 1, cn.fly.commons.n.a("016bCdd)a]bacdSdUdffhfbgifffdfchdfjfg"));
        }
    }

    public static g a() {
        if (f2321a == null) {
            synchronized (g.class) {
                if (f2321a == null) {
                    f2321a = new g();
                }
            }
        }
        return f2321a;
    }

    public static String b() {
        return "dhp_1";
    }

    public static boolean c() {
        if (FlySDK.getContext() != null) {
            return SharePrefrenceHelper.isMpfFileExist(FlySDK.getContext(), "dhp", 1);
        }
        return false;
    }

    public long d(String str) {
        return this.f2322b.getLong(str);
    }

    public long e(String str) throws FlyPersistence.NoValidDataException {
        return this.f2322b.getLongThrowable(str);
    }

    public int f(String str) {
        return this.f2322b.getInt(str);
    }

    public double g(String str) throws FlyPersistence.NoValidDataException {
        return this.f2322b.getDoubleThrowable(str);
    }

    public Object h(String str) throws FlyPersistence.NoValidDataException {
        return this.f2322b.getThrowable(str);
    }

    public void i(String str) {
        this.f2322b.remove(str);
    }

    public String b(String str, String str2) {
        return this.f2322b.getString(str, str2);
    }

    public <T extends Parcelable> T[] d(String str, Class<T> cls) throws FlyPersistence.NoValidDataException {
        return (T[]) this.f2322b.getParcelArrayThrowable(str, cls);
    }

    public String b(String str) throws FlyPersistence.NoValidDataException {
        return this.f2322b.getStringThrowable(str);
    }

    public String c(String str, String str2) throws FlyPersistence.NoValidDataException {
        return this.f2322b.getStringThrowable(str, str2);
    }

    public long b(String str, long j10) throws FlyPersistence.NoValidDataException {
        return this.f2322b.getLongThrowable(str, j10);
    }

    public boolean c(String str) throws FlyPersistence.NoValidDataException {
        return this.f2322b.getBooleanThrowable(str);
    }

    public int b(String str, int i10) throws FlyPersistence.NoValidDataException {
        return this.f2322b.getIntThrowable(str, i10);
    }

    public <T extends Parcelable> List<T> c(String str, Class<T> cls) throws FlyPersistence.NoValidDataException {
        return this.f2322b.getParcelListThrowable(str, cls);
    }

    public <T extends Parcelable> Map<String, T> b(String str, Class<T> cls) throws FlyPersistence.NoValidDataException {
        return this.f2322b.getParcelMapThrowable(str, cls);
    }

    public void a(String str, String str2) {
        this.f2322b.putString(str, str2);
    }

    public Object b(String str, Object obj) throws FlyPersistence.NoValidDataException {
        return this.f2322b.getThrowable(str, obj);
    }

    public void a(String str, String str2, long j10) {
        this.f2322b.putString(str, str2, j10);
    }

    public String a(String str) {
        return this.f2322b.getString(str);
    }

    public void a(String str, Boolean bool) {
        this.f2322b.putBoolean(str, bool);
    }

    public void a(String str, Boolean bool, long j10) {
        this.f2322b.putBoolean(str, bool, j10);
    }

    public boolean a(String str, boolean z10) throws FlyPersistence.NoValidDataException {
        return this.f2322b.getBooleanThrowable(str, z10);
    }

    public void a(String str, Long l10) {
        this.f2322b.putLong(str, l10);
    }

    public void a(String str, Long l10, long j10) {
        this.f2322b.putLong(str, l10, j10);
    }

    public long a(String str, long j10) {
        return this.f2322b.getLong(str, j10);
    }

    public void a(String str, Integer num) {
        this.f2322b.putInt(str, num);
    }

    public void a(String str, Integer num, long j10) {
        this.f2322b.putInt(str, num, j10);
    }

    public int a(String str, int i10) {
        return this.f2322b.getInt(str, i10);
    }

    public void a(String str, Double d10) {
        this.f2322b.putDouble(str, d10);
    }

    public void a(String str, Double d10, long j10) {
        this.f2322b.putDouble(str, d10, j10);
    }

    public double a(String str, double d10) throws FlyPersistence.NoValidDataException {
        return this.f2322b.getDoubleThrowable(str, d10);
    }

    public void a(String str, Parcelable parcelable) {
        this.f2322b.putParcel(str, parcelable);
    }

    public void a(String str, Parcelable parcelable, long j10) {
        this.f2322b.putParcel(str, parcelable, j10);
    }

    public <T extends Parcelable> T a(String str, Class<T> cls) throws FlyPersistence.NoValidDataException {
        return (T) this.f2322b.getParcelThrowable(str, cls);
    }

    public <T> T a(String str, Class<T> cls, T t10) throws FlyPersistence.NoValidDataException {
        return (T) this.f2322b.getParcelThrowable(str, cls, t10);
    }

    public <T extends Parcelable> void a(String str, Map<String, T> map) {
        this.f2322b.putParcelMap(str, map);
    }

    public <T extends Parcelable> void a(String str, Map<String, T> map, long j10) {
        this.f2322b.putParcelMap(str, map, j10);
    }

    public <T extends Parcelable> Map<String, T> a(String str, Class<T> cls, Map<String, T> map) throws FlyPersistence.NoValidDataException {
        return this.f2322b.getParcelMapThrowable(str, cls, map);
    }

    public <T extends Parcelable> void a(String str, List<T> list) {
        this.f2322b.putParcelList(str, list);
    }

    public <T extends Parcelable> void a(String str, List<T> list, long j10) {
        this.f2322b.putParcelList(str, list, j10);
    }

    public <T extends Parcelable> List<T> a(String str, Class<T> cls, List<T> list) throws FlyPersistence.NoValidDataException {
        return this.f2322b.getParcelListThrowable(str, cls, list);
    }

    public <T extends Parcelable> void a(String str, T[] tArr) {
        this.f2322b.putParcelArray(str, tArr);
    }

    public <T extends Parcelable> void a(String str, T[] tArr, long j10) {
        this.f2322b.putParcelArray(str, tArr, j10);
    }

    public <T extends Parcelable> T[] a(String str, Class<T> cls, T[] tArr) throws FlyPersistence.NoValidDataException {
        return (T[]) this.f2322b.getParcelArrayThrowable(str, cls, tArr);
    }

    public void a(String str, Object obj) {
        this.f2322b.put(str, obj);
    }

    public void a(String str, Object obj, long j10) {
        this.f2322b.put(str, obj, j10);
    }
}
