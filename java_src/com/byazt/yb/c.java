package com.byazt.yb;

import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.byazt.sq.uj;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import net.lingala.zip4j.util.e;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 894, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final com.byazt.ue.c f22157c = new com.byazt.ue.c(new com.byazt.xm.c("csj_mediation"));
    public uj.c tt;

    private uj.c c(Uri uri) {
        if (uri == null) {
            return null;
        }
        String[] strArrSplit = uri.getPath().split(e.F0);
        if (strArrSplit.length < 2) {
            com.byazt.eu.tt.c(MediationConstant.TAG, "uri is error2");
            return null;
        }
        String str = strArrSplit[1];
        if (TextUtils.isEmpty(str)) {
            com.byazt.eu.tt.c(MediationConstant.TAG, "uri is error3");
            return null;
        }
        if (this.tt == null) {
            ve veVar = new ve();
            this.tt = veVar;
            veVar.init();
        }
        if (str.equals(this.tt.getTableName())) {
            return this.tt;
        }
        if (str.equals(this.f22157c.getTableName())) {
            return this.f22157c;
        }
        com.byazt.eu.tt.c(MediationConstant.TAG, "uri is error4");
        return null;
    }

    public int delete(@NonNull Uri uri, @Nullable String str, @Nullable String[] strArr) {
        uj.c cVarC = c(uri);
        if (cVarC != null) {
            return cVarC.delete(uri, str, strArr);
        }
        return 0;
    }

    @Nullable
    public String getType(@NonNull Uri uri) {
        uj.c cVarC = c(uri);
        if (cVarC != null) {
            return cVarC.getType(uri);
        }
        return null;
    }

    @Nullable
    public Uri insert(@NonNull Uri uri, @Nullable ContentValues contentValues) {
        uj.c cVarC = c(uri);
        if (cVarC != null) {
            return cVarC.insert(uri, contentValues);
        }
        return null;
    }

    @Nullable
    public Cursor query(@NonNull Uri uri, @Nullable String[] strArr, @Nullable String str, @Nullable String[] strArr2, @Nullable String str2) {
        uj.c cVarC = c(uri);
        if (cVarC != null) {
            return cVarC.query(uri, strArr, str, strArr2, str2);
        }
        return null;
    }

    public int update(@NonNull Uri uri, @Nullable ContentValues contentValues, @Nullable String str, @Nullable String[] strArr) {
        uj.c cVarC = c(uri);
        if (cVarC != null) {
            return cVarC.update(uri, contentValues, str, strArr);
        }
        return 0;
    }
}
