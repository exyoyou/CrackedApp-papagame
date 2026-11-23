package com.byazt.vo;

import android.text.TextUtils;
import com.byazt.nc.a;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SPEEDX_DROP_FPS_LIMIT, 54})
public class ve extends a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f21325c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f21326n;
    public String tt;
    public List<a> uj;
    public boolean ve;

    public ve(String str, String str2) {
        super(null);
        this.f21325c = str;
        this.tt = str2;
    }

    public static ve parseFromJson(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            ve veVar = new ve();
            veVar.setId(jSONObject.optString("id"));
            veVar.setName(jSONObject.optString("name"));
            veVar.setIsSelected(jSONObject.optBoolean("is_selected"));
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("options");
            if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                    ve fromJson = parseFromJson(jSONArrayOptJSONArray.optJSONObject(i10));
                    if (fromJson != null && fromJson.isValid()) {
                        veVar.addOption(fromJson);
                    }
                }
            }
            return veVar;
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // com.byazt.nc.a
    public void addOption(a aVar) {
        if (aVar == null) {
            return;
        }
        if (this.uj == null) {
            this.uj = new ArrayList();
        }
        this.uj.add(aVar);
    }

    @Override // com.byazt.nc.a
    public String getId() {
        return this.f21325c;
    }

    @Override // com.byazt.nc.a
    public boolean getIsSelected() {
        return this.ve;
    }

    @Override // com.byazt.nc.a
    public String getName() {
        return this.tt;
    }

    @Override // com.byazt.nc.a
    public List<a> getOptions() {
        return this.uj;
    }

    @Override // com.byazt.nc.a
    public boolean hasSecondOptions() {
        List<a> list = this.uj;
        return (list == null || list.isEmpty()) ? false : true;
    }

    public boolean isNewUi() {
        return this.f21326n;
    }

    @Override // com.byazt.nc.a
    public boolean isValid() {
        return (TextUtils.isEmpty(this.f21325c) || TextUtils.isEmpty(this.tt)) ? false : true;
    }

    public void setId(String str) {
        this.f21325c = str;
    }

    @Override // com.byazt.nc.a
    public void setIsSelected(boolean z10) {
        this.ve = z10;
    }

    public void setName(String str) {
        this.tt = str;
    }

    public void setNewUi(boolean z10) {
        this.f21326n = z10;
    }

    public JSONObject toJson() {
        try {
            if (!isValid()) {
                return null;
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("id", getId());
            jSONObject.put("name", getName());
            jSONObject.put("is_selected", getIsSelected());
            jSONObject.put("new_ui", this.f21326n);
            if (hasSecondOptions()) {
                JSONArray jSONArray = new JSONArray();
                for (a aVar : getOptions()) {
                    if (aVar instanceof ve) {
                        jSONArray.put(((ve) aVar).toJson());
                    }
                }
                if (jSONArray.length() > 0) {
                    jSONObject.put("options", jSONArray);
                }
            }
            return jSONObject;
        } catch (Throwable unused) {
            return null;
        }
    }

    public ve() {
        super(null);
    }
}
