package com.byazt.ng;

import android.text.TextUtils;
import android.util.Base64;
import com.byazt.nr.m;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.kuaishou.weapon.p0.t;
import com.umeng.analytics.pro.bm;
import java.io.ByteArrayOutputStream;
import java.security.Key;
import java.security.KeyFactory;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 248, 71})
public class x {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile x f17342c;
    public Key tt;
    public Cipher ve;

    private x() {
        try {
            this.tt = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(com.byazt.bp.tt.tt().q(), 0)));
            this.ve = Cipher.getInstance("RSA/ECB/PKCS1Padding");
        } catch (Exception e10) {
            m.c(e10);
        }
    }

    public static x c() {
        if (f17342c == null) {
            synchronized (x.class) {
                if (f17342c == null) {
                    f17342c = new x();
                }
            }
        }
        return f17342c;
    }

    public String c(byte[] bArr) throws Exception {
        byte[] bArrDoFinal;
        if (bArr == null) {
            return null;
        }
        if (this.ve == null) {
            this.tt = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(com.byazt.bp.tt.tt().q(), 0)));
            this.ve = Cipher.getInstance("RSA/ECB/PKCS1Padding");
        }
        this.ve.init(1, this.tt);
        int length = bArr.length;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i10 = 0;
        int i11 = 0;
        while (true) {
            int i12 = length - i10;
            if (i12 > 0) {
                if (i12 > 117) {
                    bArrDoFinal = this.ve.doFinal(bArr, i10, 117);
                } else {
                    bArrDoFinal = this.ve.doFinal(bArr, i10, i12);
                }
                byteArrayOutputStream.write(bArrDoFinal, 0, bArrDoFinal.length);
                i11++;
                i10 = i11 * 117;
            } else {
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                byteArrayOutputStream.close();
                return Base64.encodeToString(byteArray, 2);
            }
        }
    }

    public String c(com.byazt.yl.ve veVar) {
        if (veVar == null || MediationConstant.ADN_PANGLE.equals(veVar.getAdNetWorkName())) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            if (!TextUtils.isEmpty(veVar.getAdTitle())) {
                jSONObject.putOpt(bm.aM, veVar.getAdTitle());
            }
            if (!TextUtils.isEmpty(veVar.getAdDescription())) {
                jSONObject.putOpt(t.f74895t, veVar.getAdDescription());
            }
            jSONObject.putOpt("e", String.valueOf(veVar.getCpm()));
            if (!TextUtils.isEmpty(veVar.getAppName())) {
                jSONObject.putOpt(x.a.f97583k, veVar.getAppName());
            }
            if (!TextUtils.isEmpty(veVar.getAuthorName())) {
                jSONObject.putOpt("aun", veVar.getAuthorName());
            }
        } catch (JSONException e10) {
            m.c(e10);
        }
        if (jSONObject.length() <= 0) {
            return null;
        }
        try {
            return c(jSONObject.toString().getBytes());
        } catch (Exception e11) {
            m.c(e11);
            return null;
        }
    }
}
