package com.sdk.g;

import android.content.Context;
import com.sdk.base.framework.bean.AInfo;
import com.sdk.base.framework.bean.DataInfo;
import com.sdk.base.framework.bean.KInfo;
import com.sdk.base.framework.bean.MobileKInfo;
import com.sdk.base.framework.bean.PInfo;
import com.sdk.base.framework.bean.SInfo;
import com.sdk.base.framework.utils.log.LogUtils;
import com.sdk.base.module.config.BaseConfig;
import com.sdk.f.c;
import com.sdk.f.d;
import com.sdk.p.f;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class b<T> {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String f78529j = "com.sdk.g.b";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final boolean f78530k = d.f78521a;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public PInfo f78531a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public AInfo f78532b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public SInfo f78533c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public ArrayList<KInfo> f78534d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public com.sdk.e.a<T> f78535e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Context f78536f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public String f78537g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public c f78538h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f78539i;

    public b(Context context, com.sdk.e.a<T> aVar, List<String> list, c cVar) {
        this.f78536f = context;
        this.f78535e = aVar;
        this.f78538h = cVar;
    }

    public void a(int i10, int i11, String str) {
        com.sdk.e.a<T> aVar = this.f78535e;
        if (aVar != null) {
            aVar.a(i10, i11, str);
            this.f78535e = null;
        }
    }

    public void a(int i10, String str, int i11, T t10, String str2) {
        com.sdk.e.a<T> aVar = this.f78535e;
        if (aVar != null) {
            aVar.onSuccess(i10, str, i11, t10, str2);
            this.f78535e = null;
        }
    }

    public final String a(DataInfo dataInfo, String str, String str2) {
        String str3;
        try {
            if (this.f78532b == null) {
                this.f78532b = com.sdk.f.a.a(this.f78536f, com.sdk.t.a.f78588e);
            }
            if (this.f78533c == null) {
                SInfo sInfo = new SInfo();
                sInfo.setN(BaseConfig.f78468n);
                sInfo.setC(BaseConfig.f78467c);
                sInfo.setV(BaseConfig.f78469v);
                sInfo.setCm(BaseConfig.cm);
                this.f78533c = sInfo;
            }
            if (this.f78534d == null) {
                this.f78534d = new ArrayList<>();
            }
            ArrayList arrayList = new ArrayList();
            MobileKInfo mobileKInfo = new MobileKInfo();
            mobileKInfo.setCn(com.sdk.f.a.a(this.f78536f));
            arrayList.add(mobileKInfo);
            if (this.f78531a == null) {
                this.f78531a = com.sdk.f.a.a();
            }
            str3 = "{app:" + this.f78532b + ",sdk:" + this.f78533c + ",device:" + this.f78531a + ",sim:" + arrayList + ",data:" + dataInfo + "}";
        } catch (Exception e10) {
            LogUtils.e(f78529j, e10.toString(), Boolean.valueOf(f78530k));
            str3 = null;
        }
        return f.a().f78578a.a(str, str2, str3);
    }
}
