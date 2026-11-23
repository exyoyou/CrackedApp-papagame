package com.baidu.mobads.sdk.internal.a;

import android.content.Context;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.baidu.mobads.sdk.api.IAdInterListener;
import com.baidu.mobads.sdk.api.IOAdEvent;
import com.baidu.mobads.sdk.api.IOAdEventListener;
import com.baidu.mobads.sdk.internal.bv;
import com.baidu.mobads.sdk.internal.concrete.FragmentDelegate;
import com.baidu.mobads.sdk.internal.concrete.FragmentV4Delegate;
import com.baidu.mobads.sdk.internal.concrete.RLRecyclerViewDelegate;
import com.baidu.mobads.sdk.internal.concrete.RVAdapterDelegate;
import com.baidu.mobads.sdk.internal.concrete.RVViewHolderDelegate;
import com.baidu.mobads.sdk.internal.concrete.ViewCompatDelegate;
import com.baidu.mobads.sdk.internal.concrete.ViewPager2Delegate;
import com.baidu.mobads.sdk.internal.widget.ViewPager2;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class c implements com.baidu.mobads.sdk.internal.a.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f7358a = "ViewPager2";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f7359b = "RVAdapter";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f7360c = "RVViewHolder";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f7361d = "ViewCompat";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f7362e = "Fragment";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f7363f = "FragmentV4";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String f7364g = "RLRecyclerView";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String f7365h = "p_e";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final String f7366i = "p_init";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final String f7367j = "p_set_class";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final String f7368k = "e_t";

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final String f7369l = "e_n";

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final String f7370m = "e_a";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final String f7371n = "e_r";

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final String f7372o = "e_d";

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final IAdInterListener f7373p;

    public static class a implements IOAdEventListener {
        private com.baidu.mobads.sdk.internal.a.a a(String str, @NonNull IAdInterListener iAdInterListener, Object[] objArr) {
            if (c.f7358a.equals(str) && c.a(objArr, (Class<?>[]) new Class[]{Context.class})) {
                return new ViewPager2Delegate(iAdInterListener, (Context) objArr[0]);
            }
            if (c.f7359b.equals(str)) {
                return new RVAdapterDelegate(iAdInterListener);
            }
            if (c.f7360c.equals(str) && c.a(objArr, (Class<?>[]) new Class[]{View.class})) {
                return new RVViewHolderDelegate(iAdInterListener, (View) objArr[0]);
            }
            if (c.f7361d.equals(str)) {
                return new ViewCompatDelegate(iAdInterListener);
            }
            if (c.f7362e.equals(str)) {
                return new FragmentDelegate().setDispatcher(iAdInterListener);
            }
            if (c.f7363f.equals(str)) {
                return new FragmentV4Delegate().setDispatcher(iAdInterListener);
            }
            if (c.f7364g.equals(str)) {
                return new RLRecyclerViewDelegate(iAdInterListener, objArr);
            }
            return null;
        }

        @Override // com.baidu.mobads.sdk.api.IOAdEventListener
        public void run(IOAdEvent iOAdEvent) {
            Map<String, Object> data;
            com.baidu.mobads.sdk.internal.a.a aVarA;
            if (iOAdEvent != null) {
                try {
                    if (c.f7365h.equals(iOAdEvent.getType()) && (data = iOAdEvent.getData()) != null && !data.isEmpty()) {
                        Object obj = data.get(c.f7368k);
                        Object obj2 = data.get(c.f7369l);
                        Object obj3 = data.get(c.f7370m);
                        Object[] objArr = obj3 instanceof Object[] ? (Object[]) obj3 : null;
                        if ((obj2 instanceof String) && (obj instanceof String)) {
                            if (c.f7366i.equals((String) obj2)) {
                                Object obj4 = data.get(c.f7372o);
                                if (!(obj4 instanceof IAdInterListener) || (aVarA = a((String) obj, (IAdInterListener) obj4, objArr)) == null) {
                                    return;
                                }
                                data.put(c.f7371n, aVarA);
                                return;
                            }
                            if (c.f7367j.equals((String) obj2) && (obj3 instanceof Map)) {
                                Map map = (Map) obj3;
                                map.put(c.f7358a, ViewPager2.class);
                                map.put(c.f7359b, RecyclerView.Adapter.class);
                                map.put(c.f7360c, RecyclerView.ViewHolder.class);
                            }
                        }
                    }
                } catch (Throwable th) {
                    bv.a().b(th.getMessage());
                }
            }
        }
    }

    private c(@NonNull IAdInterListener iAdInterListener, @NonNull com.baidu.mobads.sdk.internal.a.a aVar) {
        this.f7373p = iAdInterListener;
        iAdInterListener.addEventListener(f7365h, new d(this, aVar));
    }

    public static c a(@NonNull IAdInterListener iAdInterListener, @NonNull com.baidu.mobads.sdk.internal.a.a aVar) {
        return new c(iAdInterListener, aVar);
    }

    @Override // com.baidu.mobads.sdk.api.IOAdEvent
    public int getCode() {
        return 0;
    }

    @Override // com.baidu.mobads.sdk.api.IOAdEvent
    public Map<String, Object> getData() {
        return null;
    }

    @Override // com.baidu.mobads.sdk.internal.a.a
    @NonNull
    public IAdInterListener getDelegator() {
        return this.f7373p;
    }

    @Override // com.baidu.mobads.sdk.api.IOAdEvent
    public String getMessage() {
        return null;
    }

    @Override // com.baidu.mobads.sdk.api.IOAdEvent
    public Object getTarget() {
        return this.f7373p;
    }

    @Override // com.baidu.mobads.sdk.api.IOAdEvent
    public String getType() {
        return null;
    }

    @Override // com.baidu.mobads.sdk.internal.a.a
    public final Object handleEvent(String str, String str2, Object[] objArr) {
        return null;
    }

    @Override // com.baidu.mobads.sdk.api.IOAdEvent
    public void setTarget(Object obj) {
    }

    public final void a(String str) {
        this.f7373p.onAdTaskProcess(str);
    }

    public final Object a(String str, Object... objArr) {
        HashMap map = new HashMap();
        map.put(f7370m, objArr);
        this.f7373p.onAdTaskProcess(str, map);
        return map.get(f7371n);
    }

    public static boolean a(Object[] objArr, Class<?>... clsArr) {
        boolean z10 = objArr == null || objArr.length == 0;
        boolean z11 = clsArr == null || clsArr.length == 0;
        if (z10 && z11) {
            return true;
        }
        if (z10 || z11 || clsArr == null || objArr == null || clsArr.length != objArr.length) {
            return false;
        }
        for (int i10 = 0; i10 < clsArr.length; i10++) {
            if (!clsArr[i10].isInstance(objArr[i10])) {
                return false;
            }
        }
        return true;
    }
}
