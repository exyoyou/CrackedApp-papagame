package com.aggmoread.sdk.a.adcomm.amsdk;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.MotionEvent;
import androidx.annotation.Nullable;
import com.aggmoread.sdk.z.a.u.k;

/* JADX INFO: loaded from: classes7.dex */
public class AMAdVideoViewActivity extends Activity {
    private static k tmpActivityPresenter;
    private k apiActivityPresenter;

    public static void setActivityPresenter(k kVar) {
        tmpActivityPresenter = kVar;
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        k kVar = this.apiActivityPresenter;
        if (kVar != null ? kVar.a() : false) {
            return;
        }
        super.onBackPressed();
    }

    @Override // android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        k kVar = tmpActivityPresenter;
        if (kVar != null && this.apiActivityPresenter == null) {
            this.apiActivityPresenter = kVar;
            tmpActivityPresenter = null;
        }
        k kVar2 = this.apiActivityPresenter;
        if (kVar2 != null) {
            kVar2.a(this);
            this.apiActivityPresenter.a(bundle);
        }
        super.onCreate(bundle);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        k kVar = this.apiActivityPresenter;
        if (kVar != null) {
            kVar.b();
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        k kVar = tmpActivityPresenter;
        if (kVar != null && this.apiActivityPresenter == null) {
            this.apiActivityPresenter = kVar;
            tmpActivityPresenter = null;
        }
        k kVar2 = this.apiActivityPresenter;
        if (kVar2 != null) {
            kVar2.a(intent);
        }
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        k kVar = this.apiActivityPresenter;
        if (kVar != null) {
            kVar.onPause();
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        k kVar = this.apiActivityPresenter;
        if (kVar != null) {
            kVar.onResume();
        }
    }

    @Override // android.app.Activity
    public boolean onTouchEvent(MotionEvent motionEvent) {
        k kVar = this.apiActivityPresenter;
        if (kVar != null ? kVar.a(motionEvent) : false) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }
}
