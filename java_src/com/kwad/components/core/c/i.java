package com.kwad.components.core.c;

import android.annotation.SuppressLint;
import android.content.ContentValues;
import android.database.Cursor;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.kwad.sdk.core.response.model.AdResultData;
import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.internal.api.SceneImpl;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class i implements j, Comparable<i> {
    private final String PC;
    private final String PD;
    private final String PE;
    private final long PF;
    private final String Ps;
    private final long createTime;
    private final int ecpm;

    private i(String str, String str2, String str3, int i10, String str4, long j10, long j11) {
        this.PC = str;
        this.Ps = str2;
        this.PD = str3;
        this.ecpm = i10;
        this.PE = str4;
        this.createTime = j10;
        this.PF = j11;
    }

    public static List<i> a(e eVar, AdResultData adResultData) {
        List<AdTemplate> proceedTemplateList = adResultData.getProceedTemplateList();
        int size = proceedTemplateList.size();
        long jCurrentTimeMillis = System.currentTimeMillis();
        long jOS = (jCurrentTimeMillis / 1000) + eVar.oS();
        ArrayList arrayList = new ArrayList();
        SceneImpl defaultAdScene = adResultData.getDefaultAdScene();
        Iterator<AdTemplate> it2 = proceedTemplateList.iterator();
        while (it2.hasNext()) {
            AdTemplate next = it2.next();
            arrayList.add(new i(String.valueOf(com.kwad.sdk.core.response.helper.e.eY(next)), String.valueOf(adResultData.getPosId()), new AdResultData(adResultData, defaultAdScene, Collections.singletonList(next)).getResponseJson(), com.kwad.sdk.core.response.helper.e.fc(next), adResultData.getDefaultAdScene().toJson().toString(), jCurrentTimeMillis + ((long) size), jOS));
            size--;
            it2 = it2;
            defaultAdScene = defaultAdScene;
        }
        return arrayList;
    }

    @SuppressLint({"Range"})
    private static synchronized i c(@NonNull Cursor cursor) {
        return new i(cursor.getString(cursor.getColumnIndex("creativeId")), cursor.getString(cursor.getColumnIndex("posId")), cursor.getString(cursor.getColumnIndex("adJson")), cursor.getInt(cursor.getColumnIndex("ecpm")), cursor.getString(cursor.getColumnIndex("adSenseJson")), cursor.getLong(cursor.getColumnIndex("createTime")), cursor.getLong(cursor.getColumnIndex("expireTime")));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public int compareTo(i iVar) {
        return iVar.oY() == oY() ? (int) (iVar.oZ() - oZ()) : iVar.oY() - oY();
    }

    public static AdResultData k(List<i> list) {
        ArrayList arrayList = new ArrayList();
        AdResultData adResultDataC = null;
        if (list == null || list.size() == 0) {
            return null;
        }
        Iterator<i> it2 = list.iterator();
        SceneImpl defaultAdScene = null;
        while (it2.hasNext()) {
            adResultDataC = c(it2.next());
            if (adResultDataC != null) {
                if (defaultAdScene == null) {
                    defaultAdScene = adResultDataC.getDefaultAdScene();
                }
                arrayList.addAll(adResultDataC.getProceedTemplateList());
            }
        }
        AdResultData adResultData = new AdResultData(adResultDataC, defaultAdScene, arrayList);
        adResultData.setAdSource("cache");
        return adResultData;
    }

    private String oX() {
        return this.PD;
    }

    private int oY() {
        return this.ecpm;
    }

    private long oZ() {
        return this.createTime;
    }

    private String pb() {
        return this.PE;
    }

    public final String oP() {
        return this.Ps;
    }

    @Override // com.kwad.components.core.c.j
    public final ContentValues oT() {
        ContentValues contentValues = new ContentValues();
        contentValues.put("creativeId", this.PC);
        contentValues.put("posId", this.Ps);
        contentValues.put("adJson", this.PD);
        contentValues.put("ecpm", Integer.valueOf(this.ecpm));
        contentValues.put("adSenseJson", this.PE);
        contentValues.put("createTime", Long.valueOf(this.createTime));
        contentValues.put("expireTime", Long.valueOf(this.PF));
        contentValues.put("playAgainJson", (String) null);
        return contentValues;
    }

    public final long pa() {
        return this.PF;
    }

    public final String pc() {
        return this.PC;
    }

    @Nullable
    private static AdResultData c(i iVar) {
        if (iVar == null) {
            return null;
        }
        if (iVar.oX() != null && iVar.pb() != null) {
            try {
                String strPb = iVar.pb();
                SceneImpl sceneImpl = new SceneImpl();
                sceneImpl.parseJson(new JSONObject(strPb));
                AdResultData adResultDataCreateFromResponseJson = AdResultData.createFromResponseJson(iVar.oX(), sceneImpl);
                Iterator<AdTemplate> it2 = adResultDataCreateFromResponseJson.getProceedTemplateList().iterator();
                while (it2.hasNext()) {
                    it2.next().fromCache = true;
                }
                return adResultDataCreateFromResponseJson;
            } catch (JSONException e10) {
                com.kwad.sdk.core.d.c.printStackTraceOnly(e10);
                return null;
            }
        }
        com.kwad.sdk.core.d.c.w("CachedAd", "createAdResultData cachedAd data illegal");
        return null;
    }

    public static List<i> a(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        while (cursor.moveToNext()) {
            try {
                arrayList.add(c(cursor));
            } catch (Exception e10) {
                com.kwad.sdk.core.d.c.printStackTrace(e10);
            }
        }
        return arrayList;
    }
}
