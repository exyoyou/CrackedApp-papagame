package com.baidu.mobads.sdk.internal;

import android.widget.RelativeLayout;
import com.baidu.mobads.sdk.api.IOAdEvent;
import com.baidu.mobads.sdk.api.IOAdEventListener;
import com.baidu.mobads.sdk.api.ShakeViewContainer;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class al implements ShakeViewContainer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private RelativeLayout f7409a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private IOAdEventListener f7410b;

    private static class a implements IOAdEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f7411a;

        a(String str) {
            this.f7411a = str;
        }

        @Override // com.baidu.mobads.sdk.api.IOAdEvent
        public int getCode() {
            return 0;
        }

        @Override // com.baidu.mobads.sdk.api.IOAdEvent
        public Map<String, Object> getData() {
            return null;
        }

        @Override // com.baidu.mobads.sdk.api.IOAdEvent
        public String getMessage() {
            return this.f7411a;
        }

        @Override // com.baidu.mobads.sdk.api.IOAdEvent
        public Object getTarget() {
            return null;
        }

        @Override // com.baidu.mobads.sdk.api.IOAdEvent
        public String getType() {
            return "native_shake";
        }

        @Override // com.baidu.mobads.sdk.api.IOAdEvent
        public void setTarget(Object obj) {
        }
    }

    public al(RelativeLayout relativeLayout, IOAdEventListener iOAdEventListener) {
        this.f7409a = relativeLayout;
        this.f7410b = iOAdEventListener;
    }

    @Override // com.baidu.mobads.sdk.api.ShakeViewContainer
    public void destroy() {
        IOAdEventListener iOAdEventListener = this.f7410b;
        if (iOAdEventListener != null) {
            iOAdEventListener.run(new a("destroy"));
        }
        this.f7410b = null;
        this.f7409a = null;
    }

    @Override // com.baidu.mobads.sdk.api.ShakeViewContainer
    public RelativeLayout getContainer() {
        return this.f7409a;
    }

    @Override // com.baidu.mobads.sdk.api.ShakeViewContainer
    public void pause() {
        IOAdEventListener iOAdEventListener = this.f7410b;
        if (iOAdEventListener != null) {
            iOAdEventListener.run(new a(com.sigmob.sdk.base.common.a.f78876j));
        }
    }

    @Override // com.baidu.mobads.sdk.api.ShakeViewContainer
    public void resume() {
        IOAdEventListener iOAdEventListener = this.f7410b;
        if (iOAdEventListener != null) {
            iOAdEventListener.run(new a("resume"));
        }
    }
}
