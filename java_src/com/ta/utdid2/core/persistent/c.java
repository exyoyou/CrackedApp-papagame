package com.ta.utdid2.core.persistent;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Environment;
import com.ta.utdid2.android.utils.i;
import java.io.File;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class c {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final String f82951m = "t";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final String f82952n = "t2";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f82953a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f82954b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f82955c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f82956d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f82957e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private SharedPreferences f82958f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private b f82959g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private SharedPreferences.Editor f82960h = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private b.a f82961i = null;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Context f82962j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private d f82963k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f82964l;

    /* JADX WARN: Code duplicated, block: B:18:0x0059  */
    /* JADX WARN: Code duplicated, block: B:60:0x0135  */
    public c(Context context, String str, String str2, boolean z10, boolean z11) {
        long j10;
        long j11;
        this.f82956d = false;
        this.f82957e = false;
        String externalStorageState = null;
        this.f82958f = null;
        this.f82959g = null;
        this.f82963k = null;
        this.f82955c = z10;
        this.f82964l = z11;
        this.f82953a = str2;
        this.f82954b = str;
        this.f82962j = context;
        if (context != null) {
            SharedPreferences sharedPreferences = context.getSharedPreferences(str2, 0);
            this.f82958f = sharedPreferences;
            j10 = sharedPreferences.getLong("t", 0L);
        } else {
            j10 = 0;
        }
        try {
            externalStorageState = Environment.getExternalStorageState();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        if (i.c(externalStorageState)) {
            this.f82957e = false;
            this.f82956d = false;
        } else if (externalStorageState.equals("mounted")) {
            this.f82957e = true;
            this.f82956d = true;
        } else if (externalStorageState.equals("mounted_ro")) {
            this.f82956d = true;
            this.f82957e = false;
        } else {
            this.f82957e = false;
            this.f82956d = false;
        }
        if ((!this.f82956d && !this.f82957e) || context == null || i.c(str)) {
            j11 = 0;
        } else {
            d dVarM = m(str);
            this.f82963k = dVarM;
            if (dVarM != null) {
                try {
                    b bVarC = dVarM.c(str2, 0);
                    this.f82959g = bVarC;
                    j11 = bVarC.getLong("t", 0L);
                    try {
                        if (z11) {
                            j10 = this.f82958f.getLong(f82952n, 0L);
                            j11 = this.f82959g.getLong(f82952n, 0L);
                            if (j10 < j11 && j10 > 0) {
                                e(this.f82958f, this.f82959g);
                                this.f82959g = this.f82963k.c(str2, 0);
                            } else if (j10 > j11 && j11 > 0) {
                                d(this.f82959g, this.f82958f);
                                this.f82958f = context.getSharedPreferences(str2, 0);
                            } else if (j10 == 0 && j11 > 0) {
                                d(this.f82959g, this.f82958f);
                                this.f82958f = context.getSharedPreferences(str2, 0);
                            } else if ((j11 == 0 && j10 > 0) || j10 == j11) {
                                e(this.f82958f, this.f82959g);
                                this.f82959g = this.f82963k.c(str2, 0);
                            }
                        } else if (j10 > j11) {
                            e(this.f82958f, this.f82959g);
                            this.f82959g = this.f82963k.c(str2, 0);
                        } else if (j10 < j11) {
                            d(this.f82959g, this.f82958f);
                            this.f82958f = context.getSharedPreferences(str2, 0);
                        } else if (j10 == j11) {
                            e(this.f82958f, this.f82959g);
                            this.f82959g = this.f82963k.c(str2, 0);
                        }
                    } catch (Exception unused) {
                    }
                } catch (Exception unused2) {
                    j11 = 0;
                }
            } else {
                j11 = 0;
            }
        }
        if (j10 != j11 || (j10 == 0 && j11 == 0)) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            boolean z12 = this.f82964l;
            if (!z12 || (z12 && j10 == 0 && j11 == 0)) {
                SharedPreferences sharedPreferences2 = this.f82958f;
                if (sharedPreferences2 != null) {
                    SharedPreferences.Editor editorEdit = sharedPreferences2.edit();
                    editorEdit.putLong(f82952n, jCurrentTimeMillis);
                    editorEdit.commit();
                }
                try {
                    b bVar = this.f82959g;
                    if (bVar != null) {
                        b.a aVarEdit = bVar.edit();
                        aVarEdit.putLong(f82952n, jCurrentTimeMillis);
                        aVarEdit.commit();
                    }
                } catch (Exception unused3) {
                }
            }
        }
    }

    private boolean a() {
        b bVar = this.f82959g;
        if (bVar == null) {
            return false;
        }
        boolean zA = bVar.a();
        if (!zA) {
            c();
        }
        return zA;
    }

    private void d(b bVar, SharedPreferences sharedPreferences) {
        SharedPreferences.Editor editorEdit;
        if (bVar == null || sharedPreferences == null || (editorEdit = sharedPreferences.edit()) == null) {
            return;
        }
        editorEdit.clear();
        for (Map.Entry<String, ?> entry : bVar.getAll().entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            if (value instanceof String) {
                editorEdit.putString(key, (String) value);
            } else if (value instanceof Integer) {
                editorEdit.putInt(key, ((Integer) value).intValue());
            } else if (value instanceof Long) {
                editorEdit.putLong(key, ((Long) value).longValue());
            } else if (value instanceof Float) {
                editorEdit.putFloat(key, ((Float) value).floatValue());
            } else if (value instanceof Boolean) {
                editorEdit.putBoolean(key, ((Boolean) value).booleanValue());
            }
        }
        editorEdit.commit();
    }

    private void e(SharedPreferences sharedPreferences, b bVar) {
        b.a aVarEdit;
        if (sharedPreferences == null || bVar == null || (aVarEdit = bVar.edit()) == null) {
            return;
        }
        aVarEdit.clear();
        for (Map.Entry<String, ?> entry : sharedPreferences.getAll().entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            if (value instanceof String) {
                aVarEdit.putString(key, (String) value);
            } else if (value instanceof Integer) {
                aVarEdit.putInt(key, ((Integer) value).intValue());
            } else if (value instanceof Long) {
                aVarEdit.putLong(key, ((Long) value).longValue());
            } else if (value instanceof Float) {
                aVarEdit.putFloat(key, ((Float) value).floatValue());
            } else if (value instanceof Boolean) {
                aVarEdit.putBoolean(key, ((Boolean) value).booleanValue());
            }
        }
        aVarEdit.commit();
    }

    private File k(String str) {
        File externalStorageDirectory = Environment.getExternalStorageDirectory();
        if (externalStorageDirectory == null) {
            return null;
        }
        File file = new File(String.format("%s%s%s", externalStorageDirectory.getAbsolutePath(), File.separator, str));
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    private d m(String str) {
        File fileK = k(str);
        if (fileK == null) {
            return null;
        }
        d dVar = new d(fileK.getAbsolutePath());
        this.f82963k = dVar;
        return dVar;
    }

    private void n() {
        b bVar;
        SharedPreferences sharedPreferences;
        if (this.f82960h == null && (sharedPreferences = this.f82958f) != null) {
            this.f82960h = sharedPreferences.edit();
        }
        if (this.f82957e && this.f82961i == null && (bVar = this.f82959g) != null) {
            this.f82961i = bVar.edit();
        }
        a();
    }

    public void b() {
        n();
        long jCurrentTimeMillis = System.currentTimeMillis();
        SharedPreferences.Editor editor = this.f82960h;
        if (editor != null) {
            editor.clear();
            this.f82960h.putLong("t", jCurrentTimeMillis);
        }
        b.a aVar = this.f82961i;
        if (aVar != null) {
            aVar.clear();
            this.f82961i.putLong("t", jCurrentTimeMillis);
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0020  */
    public boolean c() {
        boolean z10;
        String externalStorageState;
        Context context;
        long jCurrentTimeMillis = System.currentTimeMillis();
        SharedPreferences.Editor editor = this.f82960h;
        if (editor == null) {
            z10 = true;
        } else {
            if (!this.f82964l && this.f82958f != null) {
                editor.putLong("t", jCurrentTimeMillis);
            }
            if (this.f82960h.commit()) {
                z10 = true;
            } else {
                z10 = false;
            }
        }
        if (this.f82958f != null && (context = this.f82962j) != null) {
            this.f82958f = context.getSharedPreferences(this.f82953a, 0);
        }
        try {
            externalStorageState = Environment.getExternalStorageState();
        } catch (Exception e10) {
            e10.printStackTrace();
            externalStorageState = null;
        }
        if (!i.c(externalStorageState)) {
            if (externalStorageState.equals("mounted")) {
                if (this.f82959g == null) {
                    d dVarM = m(this.f82954b);
                    if (dVarM != null) {
                        b bVarC = dVarM.c(this.f82953a, 0);
                        this.f82959g = bVarC;
                        if (this.f82964l) {
                            d(bVarC, this.f82958f);
                        } else {
                            e(this.f82958f, bVarC);
                        }
                        this.f82961i = this.f82959g.edit();
                    }
                } else {
                    b.a aVar = this.f82961i;
                    if (aVar != null && !aVar.commit()) {
                        z10 = false;
                    }
                }
            }
            if (externalStorageState.equals("mounted") || (externalStorageState.equals("mounted_ro") && this.f82959g != null)) {
                try {
                    d dVar = this.f82963k;
                    if (dVar != null) {
                        this.f82959g = dVar.c(this.f82953a, 0);
                    }
                } catch (Exception unused) {
                }
            }
        }
        return z10;
    }

    public Map<String, ?> f() {
        a();
        SharedPreferences sharedPreferences = this.f82958f;
        if (sharedPreferences != null) {
            return sharedPreferences.getAll();
        }
        b bVar = this.f82959g;
        if (bVar != null) {
            return bVar.getAll();
        }
        return null;
    }

    public boolean g(String str) {
        a();
        SharedPreferences sharedPreferences = this.f82958f;
        if (sharedPreferences != null) {
            return sharedPreferences.getBoolean(str, false);
        }
        b bVar = this.f82959g;
        if (bVar != null) {
            return bVar.getBoolean(str, false);
        }
        return false;
    }

    public float h(String str) {
        a();
        SharedPreferences sharedPreferences = this.f82958f;
        if (sharedPreferences != null) {
            return sharedPreferences.getFloat(str, 0.0f);
        }
        b bVar = this.f82959g;
        if (bVar != null) {
            return bVar.getFloat(str, 0.0f);
        }
        return 0.0f;
    }

    public int i(String str) {
        a();
        SharedPreferences sharedPreferences = this.f82958f;
        if (sharedPreferences != null) {
            return sharedPreferences.getInt(str, 0);
        }
        b bVar = this.f82959g;
        if (bVar != null) {
            return bVar.getInt(str, 0);
        }
        return 0;
    }

    public long j(String str) {
        a();
        SharedPreferences sharedPreferences = this.f82958f;
        if (sharedPreferences != null) {
            return sharedPreferences.getLong(str, 0L);
        }
        b bVar = this.f82959g;
        if (bVar != null) {
            return bVar.getLong(str, 0L);
        }
        return 0L;
    }

    public String l(String str) {
        a();
        SharedPreferences sharedPreferences = this.f82958f;
        if (sharedPreferences != null) {
            String string = sharedPreferences.getString(str, "");
            if (!i.c(string)) {
                return string;
            }
        }
        b bVar = this.f82959g;
        return bVar != null ? bVar.getString(str, "") : "";
    }

    public void o(String str, boolean z10) {
        if (i.c(str) || str.equals("t")) {
            return;
        }
        n();
        SharedPreferences.Editor editor = this.f82960h;
        if (editor != null) {
            editor.putBoolean(str, z10);
        }
        b.a aVar = this.f82961i;
        if (aVar != null) {
            aVar.putBoolean(str, z10);
        }
    }

    public void p(String str, float f10) {
        if (i.c(str) || str.equals("t")) {
            return;
        }
        n();
        SharedPreferences.Editor editor = this.f82960h;
        if (editor != null) {
            editor.putFloat(str, f10);
        }
        b.a aVar = this.f82961i;
        if (aVar != null) {
            aVar.putFloat(str, f10);
        }
    }

    public void q(String str, int i10) {
        if (i.c(str) || str.equals("t")) {
            return;
        }
        n();
        SharedPreferences.Editor editor = this.f82960h;
        if (editor != null) {
            editor.putInt(str, i10);
        }
        b.a aVar = this.f82961i;
        if (aVar != null) {
            aVar.putInt(str, i10);
        }
    }

    public void r(String str, long j10) {
        if (i.c(str) || str.equals("t")) {
            return;
        }
        n();
        SharedPreferences.Editor editor = this.f82960h;
        if (editor != null) {
            editor.putLong(str, j10);
        }
        b.a aVar = this.f82961i;
        if (aVar != null) {
            aVar.putLong(str, j10);
        }
    }

    public void s(String str, String str2) {
        if (i.c(str) || str.equals("t")) {
            return;
        }
        n();
        SharedPreferences.Editor editor = this.f82960h;
        if (editor != null) {
            editor.putString(str, str2);
        }
        b.a aVar = this.f82961i;
        if (aVar != null) {
            aVar.putString(str, str2);
        }
    }

    public void t() {
        String externalStorageState;
        Context context;
        if (this.f82958f != null && (context = this.f82962j) != null) {
            this.f82958f = context.getSharedPreferences(this.f82953a, 0);
        }
        try {
            externalStorageState = Environment.getExternalStorageState();
        } catch (Exception e10) {
            e10.printStackTrace();
            externalStorageState = null;
        }
        if (i.c(externalStorageState)) {
            return;
        }
        if (externalStorageState.equals("mounted") || (externalStorageState.equals("mounted_ro") && this.f82959g != null)) {
            try {
                d dVar = this.f82963k;
                if (dVar != null) {
                    this.f82959g = dVar.c(this.f82953a, 0);
                }
            } catch (Exception unused) {
            }
        }
    }

    public void u(String str) {
        if (i.c(str) || str.equals("t")) {
            return;
        }
        n();
        SharedPreferences.Editor editor = this.f82960h;
        if (editor != null) {
            editor.remove(str);
        }
        b.a aVar = this.f82961i;
        if (aVar != null) {
            aVar.remove(str);
        }
    }
}
