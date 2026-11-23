package com.byazt.iy;

import android.content.SharedPreferences;
import android.util.SparseArray;
import com.byazt.ut.ATSKeep;
import com.haima.hmcp.proto.GSSDK;
import java.util.Map;
import java.util.Set;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@ATSKeep
@com.byazt.zqa.c(c = {0, 1, GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_AXIS_Z_VALUE, 34})
public class a implements n, Function {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile Function f15583c;
    public volatile n tt;

    public a(n nVar) {
        this.tt = nVar;
    }

    @Override // com.byazt.iy.n
    public void apply() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 9);
        this.f15583c.apply(sparseArray);
    }

    @Override // com.byazt.iy.n
    public void applySync() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 10);
        this.f15583c.apply(sparseArray);
    }

    @Override // com.byazt.iy.n
    public void clear() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 8);
        this.f15583c.apply(sparseArray);
    }

    @Override // com.byazt.iy.n, android.content.SharedPreferences
    public boolean contains(String str) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 24);
        sparseArray.put(1, str);
        return ((Boolean) this.f15583c.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.iy.n, android.content.SharedPreferences
    public SharedPreferences.Editor edit() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 25);
        return (SharedPreferences.Editor) this.f15583c.apply(sparseArray);
    }

    @Override // com.byazt.iy.n
    public float get(String str, float f10) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 13);
        sparseArray.put(1, str);
        sparseArray.put(2, Float.valueOf(f10));
        return ((Float) this.f15583c.apply(sparseArray)).floatValue();
    }

    @Override // com.byazt.iy.n, android.content.SharedPreferences
    public Map getAll() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 17);
        return (Map) this.f15583c.apply(sparseArray);
    }

    @Override // com.byazt.iy.n, android.content.SharedPreferences
    public boolean getBoolean(String str, boolean z10) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 23);
        sparseArray.put(1, str);
        sparseArray.put(2, Boolean.valueOf(z10));
        return ((Boolean) this.f15583c.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.iy.n, android.content.SharedPreferences
    public float getFloat(String str, float f10) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 22);
        sparseArray.put(1, str);
        sparseArray.put(2, Float.valueOf(f10));
        return ((Float) this.f15583c.apply(sparseArray)).floatValue();
    }

    @Override // com.byazt.iy.n, android.content.SharedPreferences
    public int getInt(String str, int i10) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 20);
        sparseArray.put(1, str);
        sparseArray.put(2, Integer.valueOf(i10));
        return ((Integer) this.f15583c.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.iy.n, android.content.SharedPreferences
    public long getLong(String str, long j10) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 21);
        sparseArray.put(1, str);
        sparseArray.put(2, Long.valueOf(j10));
        return ((Long) this.f15583c.apply(sparseArray)).longValue();
    }

    @Override // com.byazt.iy.n, android.content.SharedPreferences
    public String getString(String str, String str2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 18);
        sparseArray.put(1, str);
        sparseArray.put(2, str2);
        return (String) this.f15583c.apply(sparseArray);
    }

    @Override // com.byazt.iy.n, android.content.SharedPreferences
    public Set getStringSet(String str, Set set) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 19);
        sparseArray.put(1, str);
        sparseArray.put(2, set);
        return (Set) this.f15583c.apply(sparseArray);
    }

    @Override // com.byazt.iy.n
    public void put(String str, float f10) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 3);
        sparseArray.put(1, str);
        sparseArray.put(2, Float.valueOf(f10));
        this.f15583c.apply(sparseArray);
    }

    @Override // com.byazt.iy.n, android.content.SharedPreferences
    public void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 26);
        sparseArray.put(1, onSharedPreferenceChangeListener);
        this.f15583c.apply(sparseArray);
    }

    @Override // com.byazt.iy.n
    public void remove(String str) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 7);
        sparseArray.put(1, str);
        this.f15583c.apply(sparseArray);
    }

    @Override // com.byazt.iy.n, android.content.SharedPreferences
    public void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 27);
        sparseArray.put(1, onSharedPreferenceChangeListener);
        this.f15583c.apply(sparseArray);
    }

    public a(Function function) {
        this.f15583c = function;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        SparseArray sparseArray = (SparseArray) obj;
        switch (((Integer) sparseArray.get(0)).intValue()) {
            case 1:
                this.tt.put((String) sparseArray.get(1), ((Integer) sparseArray.get(2)).intValue());
                return null;
            case 2:
                this.tt.put((String) sparseArray.get(1), ((Long) sparseArray.get(2)).longValue());
                return null;
            case 3:
                this.tt.put((String) sparseArray.get(1), ((Float) sparseArray.get(2)).floatValue());
                return null;
            case 4:
                this.tt.put((String) sparseArray.get(1), ((Boolean) sparseArray.get(2)).booleanValue());
                return null;
            case 5:
                this.tt.put((String) sparseArray.get(1), (String) sparseArray.get(2));
                return null;
            case 6:
                this.tt.put((String) sparseArray.get(1), (Set<String>) sparseArray.get(2));
                return null;
            case 7:
                this.tt.remove((String) sparseArray.get(1));
                return null;
            case 8:
                this.tt.clear();
                return null;
            case 9:
                this.tt.apply();
                return null;
            case 10:
                this.tt.applySync();
                return null;
            case 11:
                return Integer.valueOf(this.tt.get((String) sparseArray.get(1), ((Integer) sparseArray.get(2)).intValue()));
            case 12:
                return Long.valueOf(this.tt.get((String) sparseArray.get(1), ((Long) sparseArray.get(2)).longValue()));
            case 13:
                return Float.valueOf(this.tt.get((String) sparseArray.get(1), ((Float) sparseArray.get(2)).floatValue()));
            case 14:
                return Boolean.valueOf(this.tt.get((String) sparseArray.get(1), ((Boolean) sparseArray.get(2)).booleanValue()));
            case 15:
                return this.tt.get((String) sparseArray.get(1), (String) sparseArray.get(2));
            case 16:
                return this.tt.get((String) sparseArray.get(1), (Set<String>) sparseArray.get(2));
            case 17:
                return this.tt.getAll();
            case 18:
                return this.tt.getString((String) sparseArray.get(1), (String) sparseArray.get(2));
            case 19:
                return this.tt.getStringSet((String) sparseArray.get(1), (Set) sparseArray.get(2));
            case 20:
                return Integer.valueOf(this.tt.getInt((String) sparseArray.get(1), ((Integer) sparseArray.get(2)).intValue()));
            case 21:
                return Long.valueOf(this.tt.getLong((String) sparseArray.get(1), ((Long) sparseArray.get(2)).longValue()));
            case 22:
                return Float.valueOf(this.tt.getFloat((String) sparseArray.get(1), ((Float) sparseArray.get(2)).floatValue()));
            case 23:
                return Boolean.valueOf(this.tt.getBoolean((String) sparseArray.get(1), ((Boolean) sparseArray.get(2)).booleanValue()));
            case 24:
                return Boolean.valueOf(this.tt.contains((String) sparseArray.get(1)));
            case 25:
                return this.tt.edit();
            case 26:
                this.tt.registerOnSharedPreferenceChangeListener((SharedPreferences.OnSharedPreferenceChangeListener) sparseArray.get(1));
                return null;
            case 27:
                this.tt.unregisterOnSharedPreferenceChangeListener((SharedPreferences.OnSharedPreferenceChangeListener) sparseArray.get(1));
                return null;
            default:
                return null;
        }
    }

    @Override // com.byazt.iy.n
    public int get(String str, int i10) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 11);
        sparseArray.put(1, str);
        sparseArray.put(2, Integer.valueOf(i10));
        return ((Integer) this.f15583c.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.iy.n
    public void put(String str, int i10) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        sparseArray.put(1, str);
        sparseArray.put(2, Integer.valueOf(i10));
        this.f15583c.apply(sparseArray);
    }

    @Override // com.byazt.iy.n
    public long get(String str, long j10) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 12);
        sparseArray.put(1, str);
        sparseArray.put(2, Long.valueOf(j10));
        return ((Long) this.f15583c.apply(sparseArray)).longValue();
    }

    @Override // com.byazt.iy.n
    public void put(String str, long j10) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 2);
        sparseArray.put(1, str);
        sparseArray.put(2, Long.valueOf(j10));
        this.f15583c.apply(sparseArray);
    }

    @Override // com.byazt.iy.n
    public String get(String str, String str2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 15);
        sparseArray.put(1, str);
        sparseArray.put(2, str2);
        return (String) this.f15583c.apply(sparseArray);
    }

    @Override // com.byazt.iy.n
    public void put(String str, String str2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 5);
        sparseArray.put(1, str);
        sparseArray.put(2, str2);
        this.f15583c.apply(sparseArray);
    }

    @Override // com.byazt.iy.n
    public Set get(String str, Set set) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 16);
        sparseArray.put(1, str);
        sparseArray.put(2, set);
        return (Set) this.f15583c.apply(sparseArray);
    }

    @Override // com.byazt.iy.n
    public void put(String str, Set set) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 6);
        sparseArray.put(1, str);
        sparseArray.put(2, set);
        this.f15583c.apply(sparseArray);
    }

    @Override // com.byazt.iy.n
    public boolean get(String str, boolean z10) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 14);
        sparseArray.put(1, str);
        sparseArray.put(2, Boolean.valueOf(z10));
        return ((Boolean) this.f15583c.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.iy.n
    public void put(String str, boolean z10) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 4);
        sparseArray.put(1, str);
        sparseArray.put(2, Boolean.valueOf(z10));
        this.f15583c.apply(sparseArray);
    }
}
