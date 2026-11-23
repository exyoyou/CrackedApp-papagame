package com.qq.e.ads.nativ;

import android.content.Context;
import android.text.TextUtils;
import com.qq.e.ads.NativeAbstractAD;
import com.qq.e.comm.adevent.ADEvent;
import com.qq.e.comm.adevent.ADListener;
import com.qq.e.comm.constants.LoadAdParams;
import com.qq.e.comm.pi.NUADI;
import com.qq.e.comm.pi.POFactory;
import com.qq.e.comm.util.AdErrorConvertor;
import com.qq.e.comm.util.GDTLogger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class NativeUnifiedAD extends NativeAbstractAD<NUADI> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private AdListenerAdapter f78218h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private NativeADUnifiedListener f78219i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private List<Integer> f78220j = new ArrayList();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private List<String> f78221k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private volatile int f78222l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private volatile int f78223m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private String f78224n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private LoadAdParams f78225o;

    private static class AdListenerAdapter implements ADListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private NativeADUnifiedListener f78226a;

        public AdListenerAdapter(NativeADUnifiedListener nativeADUnifiedListener) {
            this.f78226a = nativeADUnifiedListener;
        }

        @Override // com.qq.e.comm.adevent.ADListener
        public void onADEvent(ADEvent aDEvent) {
            if (this.f78226a != null) {
                int type = aDEvent.getType();
                if (type != 100) {
                    if (type != 101) {
                        return;
                    }
                    this.f78226a.onNoAD(AdErrorConvertor.getAdError(aDEvent));
                    return;
                }
                List list = (List) aDEvent.getParam(List.class);
                if (list == null || list.size() <= 0) {
                    return;
                }
                ArrayList arrayList = new ArrayList();
                Iterator it2 = list.iterator();
                while (it2.hasNext()) {
                    arrayList.add(new NativeUnifiedADDataAdapter((NativeUnifiedADData) it2.next()));
                }
                this.f78226a.onADLoaded(arrayList);
            }
        }
    }

    public NativeUnifiedAD(Context context, String str, NativeADUnifiedListener nativeADUnifiedListener) {
        this.f78219i = nativeADUnifiedListener;
        this.f78218h = new AdListenerAdapter(nativeADUnifiedListener);
        a(context, str);
    }

    private void h(int i10, boolean z10) {
        if (a()) {
            if (!b()) {
                if (z10) {
                    this.f78220j.add(Integer.valueOf(i10));
                    return;
                }
                return;
            }
            T t10 = this.f78107a;
            if (t10 != 0) {
                LoadAdParams loadAdParams = this.f78225o;
                NUADI nuadi = (NUADI) t10;
                if (loadAdParams != null) {
                    nuadi.loadData(i10, loadAdParams);
                } else {
                    nuadi.loadData(i10);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qq.e.ads.AbstractAD
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public NUADI a(Context context, POFactory pOFactory, String str, String str2, String str3) {
        return pOFactory.getNativeAdManagerDelegate(context, str, str2, str3, this.f78218h);
    }

    public String getAdNetWorkName() {
        T t10 = this.f78107a;
        if (t10 != 0) {
            return ((NUADI) t10).getAdNetWorkName();
        }
        a("getAdNetWorkName");
        return null;
    }

    public void loadData(int i10) {
        h(i10, true);
    }

    public void setCategories(List<String> list) {
        this.f78221k = list;
        T t10 = this.f78107a;
        if (t10 == 0 || list == null) {
            return;
        }
        ((NUADI) t10).setCategories(list);
    }

    public void setMaxVideoDuration(int i10) {
        this.f78223m = i10;
        if (this.f78223m > 0 && this.f78222l > this.f78223m) {
            GDTLogger.e("maxVideoDuration 设置值非法，不得小于minVideoDuration");
        }
        T t10 = this.f78107a;
        if (t10 != 0) {
            ((NUADI) t10).setMaxVideoDuration(this.f78223m);
        }
    }

    public void setMinVideoDuration(int i10) {
        this.f78222l = i10;
        if (this.f78223m > 0 && this.f78222l > this.f78223m) {
            GDTLogger.e("minVideoDuration 设置值非法，不得大于maxVideoDuration");
        }
        T t10 = this.f78107a;
        if (t10 != 0) {
            ((NUADI) t10).setMinVideoDuration(this.f78222l);
        }
    }

    public void setVastClassName(String str) {
        if (TextUtils.isEmpty(str)) {
            GDTLogger.e("Vast class name 不能为空");
            return;
        }
        this.f78224n = str;
        T t10 = this.f78107a;
        if (t10 != 0) {
            ((NUADI) t10).setVastClassName(str);
        }
    }

    public NativeUnifiedAD(Context context, String str, NativeADUnifiedListener nativeADUnifiedListener, String str2) {
        this.f78219i = nativeADUnifiedListener;
        this.f78218h = new AdListenerAdapter(nativeADUnifiedListener);
        a(context, str, str2);
    }

    @Override // com.qq.e.ads.AbstractAD
    protected void b(int i10) {
        NativeADUnifiedListener nativeADUnifiedListener = this.f78219i;
        if (nativeADUnifiedListener != null) {
            nativeADUnifiedListener.onNoAD(AdErrorConvertor.formatErrorCode(i10));
        }
    }

    public void loadData(int i10, LoadAdParams loadAdParams) {
        this.f78225o = loadAdParams;
        loadData(i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qq.e.ads.NativeAbstractAD, com.qq.e.ads.AbstractAD
    public void a(NUADI nuadi) {
        super.a(nuadi);
        nuadi.setMinVideoDuration(this.f78222l);
        nuadi.setMaxVideoDuration(this.f78223m);
        nuadi.setVastClassName(this.f78224n);
        List<String> list = this.f78221k;
        if (list != null) {
            setCategories(list);
        }
        Iterator<Integer> it2 = this.f78220j.iterator();
        while (it2.hasNext()) {
            h(it2.next().intValue(), false);
        }
    }
}
