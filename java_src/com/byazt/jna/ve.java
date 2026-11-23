package com.byazt.jna;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.app.Fragment;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.byazt.bog.a;
import com.bytedance.pangle.util.FieldUtils;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 755, 54})
@SuppressLint({"NewApi"})
public class ve implements Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Fragment f15904c;

    public ve(Fragment fragment) {
        this.f15904c = fragment;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPostSaveInstanceState(@NonNull Activity activity, @NonNull Bundle bundle) {
        Object[] objArr;
        Object obj;
        if (this.f15904c.getActivity() != activity) {
            return;
        }
        try {
            Parcelable parcelable = bundle.getParcelable("android:fragments");
            if (parcelable == null || (objArr = (Object[]) FieldUtils.readField(parcelable, "mActive")) == null) {
                return;
            }
            int length = objArr.length;
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    obj = null;
                    break;
                }
                obj = objArr[i10];
                Object field = FieldUtils.readField(obj, "mTag");
                if ("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag_plugin".equals(field) || ((field instanceof String) && (((String) field).contains("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag_pangle") || ((String) field).contains("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag_pangle")))) {
                    break;
                    break;
                    break;
                }
                i10++;
            }
            if (obj != null) {
                Object[] objArr2 = (Object[]) Array.newInstance(Class.forName("android.app.FragmentState"), objArr.length - 1);
                int[] iArr = new int[objArr.length - 1];
                int i11 = 0;
                for (int i12 = 0; i12 < objArr.length; i12++) {
                    Object obj2 = objArr[i12];
                    if (obj2 != obj) {
                        objArr2[i11] = obj2;
                        iArr[i11] = i12;
                        i11++;
                    }
                }
                FieldUtils.writeField(parcelable, "mActive", objArr2);
                FieldUtils.writeField(parcelable, "mAdded", iArr);
            }
        } catch (Throwable th) {
            a.c(th);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        Object[] objArr;
        Object obj;
        if (this.f15904c.getActivity() != activity) {
            return;
        }
        try {
            Parcelable parcelable = bundle.getParcelable("android:fragments");
            if (parcelable == null || (objArr = (Object[]) FieldUtils.readField(parcelable, "mActive")) == null) {
                return;
            }
            int length = objArr.length;
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    obj = null;
                    break;
                }
                obj = objArr[i10];
                Object field = FieldUtils.readField(obj, "mTag");
                if ("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag_plugin".equals(field) || ((field instanceof String) && (((String) field).contains("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag_pangle") || ((String) field).contains("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag_pangle")))) {
                    break;
                    break;
                    break;
                }
                i10++;
            }
            if (obj != null) {
                Object[] objArr2 = (Object[]) Array.newInstance(Class.forName("android.app.FragmentState"), objArr.length - 1);
                int[] iArr = new int[objArr.length - 1];
                int i11 = 0;
                for (int i12 = 0; i12 < objArr.length; i12++) {
                    Object obj2 = objArr[i12];
                    if (obj2 != obj) {
                        objArr2[i11] = obj2;
                        iArr[i11] = i12;
                        i11++;
                    }
                }
                FieldUtils.writeField(parcelable, "mActive", objArr2);
                FieldUtils.writeField(parcelable, "mAdded", iArr);
            }
        } catch (Throwable th) {
            a.c(th);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
    }
}
