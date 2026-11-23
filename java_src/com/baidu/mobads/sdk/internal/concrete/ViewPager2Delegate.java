package com.baidu.mobads.sdk.internal.concrete;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.baidu.mobads.sdk.api.IAdInterListener;
import com.baidu.mobads.sdk.internal.a.a;
import com.baidu.mobads.sdk.internal.a.c;
import com.baidu.mobads.sdk.internal.widget.ViewPager2;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@SuppressLint({"ViewConstructor"})
public class ViewPager2Delegate extends ViewPager2 implements a {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final String f7775m = "getScrollState";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final String f7776n = "getCurrentItem";

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final String f7777o = "setCurrentItem";

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final String f7778p = "setOrientation";

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final String f7779q = "setAdapter";

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final String f7780r = "setOffscreenPageLimit";

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final String f7781s = "setUserInputEnabled";

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final c f7782t;

    public ViewPager2Delegate(IAdInterListener iAdInterListener, Context context) {
        super(context);
        this.f7782t = c.a(iAdInterListener, this);
        setOnOverScrollListener(new ViewPager2.OnOverScrollListener() { // from class: com.baidu.mobads.sdk.internal.concrete.ViewPager2Delegate.1
            @Override // com.baidu.mobads.sdk.internal.widget.ViewPager2.OnOverScrollListener
            public void onOverScrollEnd() {
                ViewPager2Delegate.this.f7782t.a("onOverScrollEnd");
            }

            @Override // com.baidu.mobads.sdk.internal.widget.ViewPager2.OnOverScrollListener
            public void onOverScrollStart() {
                ViewPager2Delegate.this.f7782t.a("onOverScrollStart");
            }
        });
        registerOnPageChangeCallback(new ViewPager2.OnPageChangeCallback() { // from class: com.baidu.mobads.sdk.internal.concrete.ViewPager2Delegate.2
            @Override // com.baidu.mobads.sdk.internal.widget.ViewPager2.OnPageChangeCallback
            public void onPageScrollStateChanged(int i10) {
                ViewPager2Delegate.this.f7782t.a("onPageScrollStateChanged", Integer.valueOf(i10));
            }

            @Override // com.baidu.mobads.sdk.internal.widget.ViewPager2.OnPageChangeCallback
            public void onPageScrolled(int i10, float f10, int i11) {
                ViewPager2Delegate.this.f7782t.a("onPageScrolled", Integer.valueOf(i10), Float.valueOf(f10), Integer.valueOf(i11));
            }

            @Override // com.baidu.mobads.sdk.internal.widget.ViewPager2.OnPageChangeCallback
            public void onPageSelected(int i10) {
                ViewPager2Delegate.this.f7782t.a("onPageSelected", Integer.valueOf(i10));
            }
        });
    }

    @Override // com.baidu.mobads.sdk.api.IOAdEvent
    public int getCode() {
        return this.f7782t.getCode();
    }

    @Override // com.baidu.mobads.sdk.api.IOAdEvent
    public Map<String, Object> getData() {
        return this.f7782t.getData();
    }

    @Override // com.baidu.mobads.sdk.internal.a.a
    @NonNull
    public IAdInterListener getDelegator() {
        return this.f7782t.getDelegator();
    }

    @Override // com.baidu.mobads.sdk.api.IOAdEvent
    public String getMessage() {
        return this.f7782t.getMessage();
    }

    @Override // com.baidu.mobads.sdk.api.IOAdEvent
    public Object getTarget() {
        return this.f7782t.getTarget();
    }

    @Override // com.baidu.mobads.sdk.api.IOAdEvent
    public String getType() {
        return this.f7782t.getType();
    }

    @Override // com.baidu.mobads.sdk.internal.a.a
    public Object handleEvent(String str, String str2, Object[] objArr) {
        if (f7775m.equals(str2)) {
            return Integer.valueOf(getScrollState());
        }
        if (f7776n.equals(str2)) {
            return Integer.valueOf(getCurrentItem());
        }
        if (f7777o.equals(str2) && c.a(objArr, (Class<?>[]) new Class[]{Integer.class})) {
            setCurrentItem(((Integer) objArr[0]).intValue());
            return null;
        }
        if (f7778p.equals(str2) && c.a(objArr, (Class<?>[]) new Class[]{Integer.class})) {
            setOrientation(((Integer) objArr[0]).intValue());
            return null;
        }
        if (f7779q.equals(str2) && c.a(objArr, (Class<?>[]) new Class[]{RecyclerView.Adapter.class})) {
            setAdapter((RecyclerView.Adapter) objArr[0]);
            return null;
        }
        if (f7780r.equals(str2) && c.a(objArr, (Class<?>[]) new Class[]{Integer.class})) {
            setOffscreenPageLimit(((Integer) objArr[0]).intValue());
            return null;
        }
        if (!f7781s.equals(str2) || !c.a(objArr, (Class<?>[]) new Class[]{Boolean.class})) {
            return null;
        }
        setUserInputEnabled(((Boolean) objArr[0]).booleanValue());
        return null;
    }

    @Override // com.baidu.mobads.sdk.api.IOAdEvent
    public void setTarget(Object obj) {
        this.f7782t.setTarget(obj);
    }
}
