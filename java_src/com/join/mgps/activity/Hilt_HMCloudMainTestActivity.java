package com.join.mgps.activity;

import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;

/* JADX INFO: loaded from: classes4.dex */
abstract class Hilt_HMCloudMainTestActivity extends HMCloudMenuActivity {
    private boolean injected = false;

    class a implements OnContextAvailableListener {
        a() {
        }

        @Override // androidx.activity.contextaware.OnContextAvailableListener
        public void onContextAvailable(Context context) {
            Hilt_HMCloudMainTestActivity.this.inject();
        }
    }

    Hilt_HMCloudMainTestActivity() {
        _initHiltInternal();
    }

    private void _initHiltInternal() {
        addOnContextAvailableListener(new a());
    }

    @Override // com.join.mgps.activity.Hilt_HMCloudMenuActivity
    protected void inject() {
        if (this.injected) {
            return;
        }
        this.injected = true;
        ((s4) ((jb.c) jb.g.a(this)).generatedComponent()).f((HMCloudMainTestActivity) jb.g.a(this));
    }
}
