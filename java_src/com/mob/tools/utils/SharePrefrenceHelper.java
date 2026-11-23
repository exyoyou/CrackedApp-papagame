package com.mob.tools.utils;

import android.content.Context;
import android.os.Parcelable;
import cn.fly.tools.utils.FlyPersistence;
import com.mob.tools.proguard.PublicMemberKeeper;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class SharePrefrenceHelper implements PublicMemberKeeper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final cn.fly.tools.utils.SharePrefrenceHelper f75560a;

    public SharePrefrenceHelper(Context context) {
        this.f75560a = new cn.fly.tools.utils.SharePrefrenceHelper(context);
    }

    public static boolean isMobSpFileExist(Context context, String str, int i10) {
        return cn.fly.tools.utils.SharePrefrenceHelper.isMbSpFileExist(context, str, i10);
    }

    public static boolean isMpfFileExist(Context context, String str, int i10) {
        return cn.fly.tools.utils.SharePrefrenceHelper.isMpfFileExist(context, str, i10);
    }

    public void clear() {
        this.f75560a.clear();
    }

    public Object get(String str) {
        return get(str, null);
    }

    @Deprecated
    public HashMap<String, Object> getAll() {
        return this.f75560a.getAll();
    }

    public boolean getBoolean(String str) {
        return getBoolean(str, false);
    }

    public boolean getBooleanThrowable(String str) throws MobPersistence.NoValidDataException {
        return getBooleanThrowable(str, false);
    }

    public double getDouble(String str) {
        return getDouble(str, 0.0d);
    }

    public double getDoubleThrowable(String str) throws MobPersistence.NoValidDataException {
        return getDoubleThrowable(str, 0.0d);
    }

    public int getInt(String str) {
        return getInt(str, 0);
    }

    public int getIntThrowable(String str) throws MobPersistence.NoValidDataException {
        return getIntThrowable(str, 0);
    }

    public long getLong(String str) {
        return getLong(str, 0L);
    }

    public long getLongThrowable(String str) throws MobPersistence.NoValidDataException {
        return getLongThrowable(str, 0L);
    }

    @Deprecated
    public Object getObj(String str, Object obj) {
        return this.f75560a.getObj(str, obj);
    }

    public <T extends Parcelable> T getParcel(String str, Class<T> cls) {
        return (T) getParcel(str, cls, null);
    }

    public <T extends Parcelable> T[] getParcelArray(String str, Class<T> cls) {
        return (T[]) getParcelArray(str, cls, null);
    }

    public <T extends Parcelable> T[] getParcelArrayThrowable(String str, Class<T> cls) throws MobPersistence.NoValidDataException {
        return (T[]) getParcelArrayThrowable(str, cls, null);
    }

    public <T extends Parcelable> List<T> getParcelList(String str, Class<T> cls) {
        return getParcelList(str, cls, null);
    }

    public <T extends Parcelable> List<T> getParcelListThrowable(String str, Class<T> cls) throws MobPersistence.NoValidDataException {
        return getParcelListThrowable(str, cls, null);
    }

    public <T extends Parcelable> Map<String, T> getParcelMap(String str, Class<T> cls) {
        return getParcelMap(str, cls, null);
    }

    public <T extends Parcelable> Map<String, T> getParcelMapThrowable(String str, Class<T> cls) throws MobPersistence.NoValidDataException {
        return getParcelMapThrowable(str, cls, null);
    }

    public <T extends Parcelable> T getParcelThrowable(String str, Class<T> cls) throws MobPersistence.NoValidDataException {
        return (T) getParcelThrowable(str, cls, null);
    }

    public String getString(String str) {
        return getString(str, "");
    }

    public String getStringThrowable(String str) throws MobPersistence.NoValidDataException {
        try {
            return this.f75560a.getStringThrowable(str, "");
        } catch (FlyPersistence.NoValidDataException unused) {
            throw new MobPersistence.NoValidDataException();
        }
    }

    public Object getThrowable(String str) throws MobPersistence.NoValidDataException {
        return getThrowable(str, null);
    }

    public void open(String str) {
        open(str, 0);
    }

    public void put(String str, Object obj) {
        put(str, obj, 0L);
    }

    @Deprecated
    public void putAll(HashMap<String, Object> map) {
        this.f75560a.putAll(map);
    }

    public void putBoolean(String str, Boolean bool) {
        putBoolean(str, bool, 0L);
    }

    public void putDouble(String str, Double d10) {
        putDouble(str, d10, 0L);
    }

    public void putInt(String str, Integer num) {
        putInt(str, num, 0L);
    }

    public void putLong(String str, Long l10) {
        putLong(str, l10, 0L);
    }

    @Deprecated
    public void putObj(String str, Object obj) {
        this.f75560a.putObj(str, obj);
    }

    public void putParcel(String str, Parcelable parcelable) {
        putParcel(str, parcelable, 0L);
    }

    public <T extends Parcelable> void putParcelArray(String str, T[] tArr) {
        putParcelArray(str, tArr, 0L);
    }

    public <T extends Parcelable> void putParcelList(String str, List<T> list) {
        putParcelList(str, list, 0L);
    }

    public <T extends Parcelable> void putParcelMap(String str, Map<String, T> map) {
        putParcelMap(str, map, 0L);
    }

    public void putString(String str, String str2) {
        putString(str, str2, 0L);
    }

    public void remove(String str) {
        this.f75560a.remove(str);
    }

    public Object get(String str, Object obj) {
        try {
            return getThrowable(str, obj);
        } catch (MobPersistence.NoValidDataException unused) {
            return obj;
        }
    }

    public boolean getBoolean(String str, boolean z10) {
        return this.f75560a.getBoolean(str, z10);
    }

    public boolean getBooleanThrowable(String str, boolean z10) throws MobPersistence.NoValidDataException {
        try {
            return this.f75560a.getBooleanThrowable(str, z10);
        } catch (FlyPersistence.NoValidDataException unused) {
            throw new MobPersistence.NoValidDataException();
        }
    }

    public double getDouble(String str, double d10) {
        return this.f75560a.getDouble(str, d10);
    }

    public double getDoubleThrowable(String str, double d10) throws MobPersistence.NoValidDataException {
        try {
            return this.f75560a.getDoubleThrowable(str, d10);
        } catch (FlyPersistence.NoValidDataException unused) {
            throw new MobPersistence.NoValidDataException();
        }
    }

    public int getInt(String str, int i10) {
        return this.f75560a.getInt(str, i10);
    }

    public int getIntThrowable(String str, int i10) throws MobPersistence.NoValidDataException {
        try {
            return this.f75560a.getIntThrowable(str, i10);
        } catch (FlyPersistence.NoValidDataException unused) {
            throw new MobPersistence.NoValidDataException();
        }
    }

    public long getLong(String str, long j10) {
        return this.f75560a.getLong(str, j10);
    }

    public long getLongThrowable(String str, long j10) throws MobPersistence.NoValidDataException {
        try {
            return this.f75560a.getLongThrowable(str, j10);
        } catch (FlyPersistence.NoValidDataException unused) {
            throw new MobPersistence.NoValidDataException();
        }
    }

    public <T extends Parcelable> T getParcel(String str, Class<T> cls, T t10) {
        return (T) this.f75560a.getParcel(str, cls, t10);
    }

    public <T extends Parcelable> T[] getParcelArray(String str, Class<T> cls, T[] tArr) {
        return (T[]) this.f75560a.getParcelArray(str, cls, tArr);
    }

    public <T extends Parcelable> T[] getParcelArrayThrowable(String str, Class<T> cls, T[] tArr) throws MobPersistence.NoValidDataException {
        try {
            return (T[]) this.f75560a.getParcelArrayThrowable(str, cls, tArr);
        } catch (FlyPersistence.NoValidDataException unused) {
            throw new MobPersistence.NoValidDataException();
        }
    }

    public <T extends Parcelable> List<T> getParcelList(String str, Class<T> cls, List<T> list) {
        return this.f75560a.getParcelList(str, cls, list);
    }

    public <T extends Parcelable> List<T> getParcelListThrowable(String str, Class<T> cls, List<T> list) throws MobPersistence.NoValidDataException {
        try {
            return this.f75560a.getParcelListThrowable(str, cls, list);
        } catch (FlyPersistence.NoValidDataException unused) {
            throw new MobPersistence.NoValidDataException();
        }
    }

    public <T extends Parcelable> Map<String, T> getParcelMap(String str, Class<T> cls, Map<String, T> map) {
        try {
            return getParcelMapThrowable(str, cls, map);
        } catch (MobPersistence.NoValidDataException unused) {
            return map;
        }
    }

    public <T extends Parcelable> Map<String, T> getParcelMapThrowable(String str, Class<T> cls, Map<String, T> map) throws MobPersistence.NoValidDataException {
        try {
            return this.f75560a.getParcelMapThrowable(str, cls, map);
        } catch (FlyPersistence.NoValidDataException unused) {
            throw new MobPersistence.NoValidDataException();
        }
    }

    public <T> T getParcelThrowable(String str, Class<T> cls, T t10) throws MobPersistence.NoValidDataException {
        try {
            return (T) this.f75560a.getParcelThrowable(str, cls, t10);
        } catch (FlyPersistence.NoValidDataException unused) {
            throw new MobPersistence.NoValidDataException();
        }
    }

    public String getString(String str, String str2) {
        return this.f75560a.getString(str, str2);
    }

    public Object getThrowable(String str, Object obj) throws MobPersistence.NoValidDataException {
        try {
            return this.f75560a.getThrowable(str, obj);
        } catch (FlyPersistence.NoValidDataException unused) {
            throw new MobPersistence.NoValidDataException();
        }
    }

    public void open(String str, int i10) {
        open(str, i10, null);
    }

    public void put(String str, Object obj, long j10) {
        this.f75560a.put(str, obj, j10);
    }

    public void putBoolean(String str, Boolean bool, long j10) {
        this.f75560a.putBoolean(str, bool, j10);
    }

    public void putDouble(String str, Double d10, long j10) {
        this.f75560a.putDouble(str, d10, j10);
    }

    public void putInt(String str, Integer num, long j10) {
        this.f75560a.putInt(str, num, j10);
    }

    public void putLong(String str, Long l10, long j10) {
        this.f75560a.putLong(str, l10, j10);
    }

    public void putParcel(String str, Parcelable parcelable, long j10) {
        this.f75560a.putParcel(str, parcelable, j10);
    }

    public <T extends Parcelable> void putParcelArray(String str, T[] tArr, long j10) {
        this.f75560a.putParcelArray(str, tArr, j10);
    }

    public <T extends Parcelable> void putParcelList(String str, List<T> list, long j10) {
        this.f75560a.putParcelList(str, list, j10);
    }

    public <T extends Parcelable> void putParcelMap(String str, Map<String, T> map, long j10) {
        this.f75560a.putParcelMap(str, map, j10);
    }

    public void putString(String str, String str2, long j10) {
        this.f75560a.putString(str, str2, j10);
    }

    public String getStringThrowable(String str, String str2) throws MobPersistence.NoValidDataException {
        try {
            return this.f75560a.getStringThrowable(str, str2);
        } catch (FlyPersistence.NoValidDataException unused) {
            throw new MobPersistence.NoValidDataException();
        }
    }

    public void open(String str, int i10, String str2) {
        this.f75560a.open(str, i10, str2);
    }
}
