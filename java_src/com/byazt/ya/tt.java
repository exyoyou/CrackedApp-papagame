package com.byazt.ya;

import android.util.SparseArray;
import com.byazt.ut.ATSKeep;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import java.util.function.Function;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@ATSKeep
@com.byazt.zqa.c(c = {0, 1, AVMDLDataLoader.KeyIsEnablePreconnect, 13})
public class tt implements c, Function {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile Function f22156c;
    public volatile c tt;

    public tt(c cVar) {
        this.tt = cVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) throws JSONException {
        SparseArray sparseArray = (SparseArray) obj;
        if (((Integer) sparseArray.get(0)).intValue() != 1) {
            return null;
        }
        this.tt.onSend((JSONObject) sparseArray.get(1));
        return null;
    }

    @Override // com.byazt.ya.c
    public void onSend(JSONObject jSONObject) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        sparseArray.put(1, jSONObject);
        this.f22156c.apply(sparseArray);
    }

    public tt(Function function) {
        this.f22156c = function;
    }
}
