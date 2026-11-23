package com.baidu.mobads.sdk.internal.concrete;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;
import com.baidu.mobads.sdk.api.IAdInterListener;
import com.baidu.mobads.sdk.internal.a.a;
import com.baidu.mobads.sdk.internal.a.c;
import com.baidu.mobads.sdk.internal.av;
import com.baidu.mobads.sdk.internal.bn;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes6.dex */
public class ViewCompatDelegate implements a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final c f7774c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final AtomicInteger f7772b = new AtomicInteger(100000);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f7771a = "generateViewId";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final boolean f7773d = av.a((Class<?>) ViewCompat.class, f7771a, (Class<?>[]) new Class[0]);

    public ViewCompatDelegate(@NonNull IAdInterListener iAdInterListener) {
        this.f7774c = c.a(iAdInterListener, this);
    }

    @SuppressLint({"NewApi"})
    public static int generateViewId() {
        AtomicInteger atomicInteger;
        int i10;
        int i11;
        if (f7773d) {
            return ViewCompat.generateViewId();
        }
        if (bn.a((Context) null).a() >= 17) {
            return View.generateViewId();
        }
        do {
            atomicInteger = f7772b;
            i10 = atomicInteger.get();
            i11 = i10 + 1;
            if (i11 > 16777215) {
                i11 = 1;
            }
        } while (!atomicInteger.compareAndSet(i10, i11));
        return i10;
    }

    @Override // com.baidu.mobads.sdk.api.IOAdEvent
    public int getCode() {
        return this.f7774c.getCode();
    }

    @Override // com.baidu.mobads.sdk.api.IOAdEvent
    public Map<String, Object> getData() {
        return this.f7774c.getData();
    }

    @Override // com.baidu.mobads.sdk.internal.a.a
    @NonNull
    public IAdInterListener getDelegator() {
        return this.f7774c.getDelegator();
    }

    @Override // com.baidu.mobads.sdk.api.IOAdEvent
    public String getMessage() {
        return this.f7774c.getMessage();
    }

    @Override // com.baidu.mobads.sdk.api.IOAdEvent
    public Object getTarget() {
        return this.f7774c.getTarget();
    }

    @Override // com.baidu.mobads.sdk.api.IOAdEvent
    public String getType() {
        return this.f7774c.getType();
    }

    @Override // com.baidu.mobads.sdk.internal.a.a
    public Object handleEvent(String str, String str2, Object[] objArr) {
        if (f7771a.equals(str2)) {
            return Integer.valueOf(generateViewId());
        }
        return null;
    }

    @Override // com.baidu.mobads.sdk.api.IOAdEvent
    public void setTarget(Object obj) {
        this.f7774c.setTarget(obj);
    }
}
