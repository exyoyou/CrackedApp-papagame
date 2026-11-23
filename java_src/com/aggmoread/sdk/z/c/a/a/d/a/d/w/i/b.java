package com.aggmoread.sdk.z.c.a.a.d.a.d.w.i;

import androidx.annotation.Nullable;
import com.kwad.sdk.api.KsLoadManager;
import com.kwad.sdk.api.KsRewardVideoAd;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class b implements InvocationHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a f4904a;

    public interface a {
        void c(@Nullable List<KsRewardVideoAd> list);

        void d(@Nullable List<KsRewardVideoAd> list);

        void onError(int i10, String str);

        void onRequestResult(int i10);
    }

    public b(a aVar) {
        this.f4904a = aVar;
    }

    public KsLoadManager.RewardVideoAdListener a() {
        return (KsLoadManager.RewardVideoAdListener) Proxy.newProxyInstance(KsLoadManager.RewardVideoAdListener.class.getClassLoader(), new Class[]{KsLoadManager.RewardVideoAdListener.class}, this);
    }

    @Override // java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) {
        String name = method.getName();
        if (this.f4904a == null) {
            return null;
        }
        if ("onError".equals(name)) {
            this.f4904a.onError(((Integer) objArr[0]).intValue(), (String) objArr[1]);
        } else if ("onRewardVideoResult".equals(name)) {
            a aVar = this.f4904a;
            Object obj2 = objArr[0];
            aVar.c(obj2 == null ? null : (List) obj2);
        } else if ("onRequestResult".equals(name)) {
            this.f4904a.onRequestResult(((Integer) objArr[0]).intValue());
        } else if ("onRewardVideoAdLoad".equals(name)) {
            a aVar2 = this.f4904a;
            Object obj3 = objArr[0];
            aVar2.d(obj3 == null ? null : (List) obj3);
        }
        return null;
    }
}
