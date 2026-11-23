package com.tbruyelle.rxpermissions2;

import android.annotation.TargetApi;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import io.reactivex.subjects.PublishSubject;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class f extends Fragment {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f83041e = 42;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Map<String, PublishSubject<b>> f83042c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f83043d;

    public boolean M(@NonNull String str) {
        return this.f83042c.containsKey(str);
    }

    public PublishSubject<b> N(@NonNull String str) {
        return this.f83042c.get(str);
    }

    @TargetApi(23)
    boolean O(String str) {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            return activity.checkSelfPermission(str) == 0;
        }
        throw new IllegalStateException("This fragment must be attached to an activity.");
    }

    @TargetApi(23)
    boolean P(String str) {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            return activity.getPackageManager().isPermissionRevokedByPolicy(str, getActivity().getPackageName());
        }
        throw new IllegalStateException("This fragment must be attached to an activity.");
    }

    void Q(String str) {
        if (this.f83043d) {
            String str2 = c.f83025b;
        }
    }

    void R(String[] strArr, int[] iArr, boolean[] zArr) {
        int length = strArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            Q("onRequestPermissionsResult  " + strArr[i10]);
            PublishSubject<b> publishSubject = this.f83042c.get(strArr[i10]);
            if (publishSubject == null) {
                String str = c.f83025b;
                return;
            }
            this.f83042c.remove(strArr[i10]);
            publishSubject.onNext(new b(strArr[i10], iArr[i10] == 0, zArr[i10]));
            publishSubject.onComplete();
        }
    }

    public void S(boolean z10) {
        this.f83043d = z10;
    }

    public void T(@NonNull String str, @NonNull PublishSubject<b> publishSubject) {
        this.f83042c.put(str, publishSubject);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setRetainInstance(true);
    }

    @Override // androidx.fragment.app.Fragment
    @TargetApi(23)
    public void onRequestPermissionsResult(int i10, @NonNull String[] strArr, @NonNull int[] iArr) {
        super.onRequestPermissionsResult(i10, strArr, iArr);
        if (i10 != 42) {
            return;
        }
        boolean[] zArr = new boolean[strArr.length];
        for (int i11 = 0; i11 < strArr.length; i11++) {
            zArr[i11] = shouldShowRequestPermissionRationale(strArr[i11]);
        }
        R(strArr, iArr, zArr);
    }

    @TargetApi(23)
    void requestPermissions(@NonNull String[] strArr) {
        requestPermissions(strArr, 42);
    }
}
