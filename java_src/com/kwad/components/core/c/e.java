package com.kwad.components.core.c;

import android.content.ContentValues;
import android.database.Cursor;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.kwad.sdk.core.response.model.AdInfo;
import com.kwad.sdk.core.response.model.AdTemplate;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class e implements j {
    private static volatile e Pr;

    @Nullable
    private String Ps;
    private int Pt = 0;
    private int cacheSize = 1;
    private long Pu = 1800;
    private boolean enable = false;

    private e() {
    }

    @NonNull
    @WorkerThread
    public static e A(long j10) {
        e eVarAh;
        return (a.oI() == null || (eVarAh = a.oI().ah(String.valueOf(j10))) == null) ? oO() : eVarAh;
    }

    public static synchronized List<e> a(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        while (cursor.moveToNext()) {
            try {
                arrayList.add(b(cursor));
            } catch (Exception e10) {
                com.kwad.sdk.core.d.c.printStackTrace(e10);
            }
        }
        return arrayList;
    }

    public static e aB(AdTemplate adTemplate) {
        if (adTemplate == null) {
            return null;
        }
        long j10 = adTemplate.posId;
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        e eVar = new e(j10);
        AdInfo.AdBaseInfo adBaseInfo = adInfoEO.adBaseInfo;
        eVar.Pt = adBaseInfo.adCacheStrategy;
        eVar.Pu = adBaseInfo.adCacheSecond;
        eVar.cacheSize = adBaseInfo.adCacheSize;
        eVar.enable = adBaseInfo.adCacheSwitch == 1;
        return eVar;
    }

    private static synchronized e b(Cursor cursor) {
        e eVar;
        String string = cursor.getString(cursor.getColumnIndex("posId"));
        int i10 = cursor.getInt(cursor.getColumnIndex("strategyCode"));
        int i11 = cursor.getInt(cursor.getColumnIndex("cacheSize"));
        long j10 = cursor.getLong(cursor.getColumnIndex("cacheSecond"));
        boolean z10 = true;
        if (cursor.getInt(cursor.getColumnIndex("enable")) != 1) {
            z10 = false;
        }
        eVar = new e();
        eVar.Ps = string;
        eVar.Pt = i10;
        eVar.cacheSize = i11;
        eVar.Pu = j10;
        eVar.enable = z10;
        return eVar;
    }

    @NonNull
    private static e oO() {
        if (Pr == null) {
            synchronized (e.class) {
                if (Pr == null) {
                    Pr = new e();
                }
            }
        }
        return Pr;
    }

    public final boolean isDefault() {
        return equals(oO());
    }

    public final boolean isEnable() {
        return this.enable;
    }

    public final String oP() {
        return this.Ps;
    }

    public final int oQ() {
        return this.Pt;
    }

    public final int oR() {
        return this.cacheSize;
    }

    public final long oS() {
        return this.Pu;
    }

    @Override // com.kwad.components.core.c.j
    public final ContentValues oT() {
        ContentValues contentValues = new ContentValues();
        contentValues.put("posId", this.Ps);
        contentValues.put("strategyCode", Integer.valueOf(this.Pt));
        contentValues.put("cacheSize", Integer.valueOf(this.cacheSize));
        contentValues.put("cacheSecond", Long.valueOf(this.Pu));
        contentValues.put("enable", Integer.valueOf(this.enable ? 1 : 0));
        return contentValues;
    }

    private e(long j10) {
        this.Ps = String.valueOf(j10);
    }
}
