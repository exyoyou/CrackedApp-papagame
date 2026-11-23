package org.cocos2dx.lib;

import android.R;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.opengl.GLSurfaceView;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.preference.PreferenceManager;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.bykv.vk.component.ttvideo.player.C;
import com.chukong.cocosplay.client.CocosPlayClient;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import com.papa91.activity.EmuBaseActivity;
import com.papa91.wrapper.SystemUiHider;
import com.papa91.wrapper.Wrapper;
import java.io.File;
import java.util.Iterator;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLDisplay;
import net.lingala.zip4j.util.e;

/* JADX INFO: loaded from: classes10.dex */
public abstract class Cocos2dxActivity extends Activity implements Cocos2dxHelper.Cocos2dxHelperListener {
    protected static final String TAG = "Cocos2dxActivity";
    public static FrameLayout mFrameLayout;
    private static Cocos2dxActivity sContext;
    private Handler hideHandler;
    private Runnable hideRunnable;
    protected SystemUiHider uiHider;
    public Cocos2dxGLSurfaceView mGLSurfaceView = null;
    protected int[] mGLContextAttrs = null;
    private Cocos2dxHandler mHandler = null;
    private Cocos2dxVideoHelper mVideoHelper = null;
    private Cocos2dxWebViewHelper mWebViewHelper = null;
    private boolean fullScreenFlag = true;
    int fullScreenCfg = 0;

    public static Context getContext() {
        return sContext;
    }

    private static native int[] getGLContextAttrs();

    private static final boolean isAndroidEmulator() {
        String str = Build.MODEL;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("model=");
        sb2.append(str);
        String str2 = Build.PRODUCT;
        StringBuilder sb3 = new StringBuilder();
        sb3.append("product=");
        sb3.append(str2);
        boolean z10 = false;
        if (str2 != null && (str2.equals("sdk") || str2.contains("_sdk") || str2.contains("sdk_"))) {
            z10 = true;
        }
        StringBuilder sb4 = new StringBuilder();
        sb4.append("isEmulator=");
        sb4.append(z10);
        return z10;
    }

    protected void hideUiDelayed() {
        this.hideHandler.removeCallbacks(this.hideRunnable);
        if (this.fullScreenCfg != 0) {
            this.hideHandler.postDelayed(this.hideRunnable, BaseCloudFileManager.ACK_TIMEOUT);
        }
    }

    @SuppressLint({"NewApi"})
    public void init() {
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
        FrameLayout frameLayout = new FrameLayout(this);
        mFrameLayout = frameLayout;
        frameLayout.setLayoutParams(layoutParams);
        ViewGroup.LayoutParams layoutParams2 = new ViewGroup.LayoutParams(-1, -2);
        Cocos2dxEditText cocos2dxEditText = new Cocos2dxEditText(this);
        cocos2dxEditText.setImeOptions(C.ENCODING_PCM_MU_LAW);
        cocos2dxEditText.setLayoutParams(layoutParams2);
        mFrameLayout.addView(cocos2dxEditText);
        Cocos2dxGLSurfaceView cocos2dxGLSurfaceViewOnCreateView = onCreateView();
        this.mGLSurfaceView = cocos2dxGLSurfaceViewOnCreateView;
        mFrameLayout.addView(cocos2dxGLSurfaceViewOnCreateView);
        if (isAndroidEmulator()) {
            this.mGLSurfaceView.setEGLConfigChooser(8, 8, 8, 8, 16, 0);
        }
        this.mGLSurfaceView.setCocos2dxRenderer(new Cocos2dxRenderer());
        this.mGLSurfaceView.setCocos2dxEditText(cocos2dxEditText);
        if (Wrapper.SDK_INT > 11) {
            mFrameLayout.setSystemUiVisibility(2);
        }
        mFrameLayout.setOnClickListener(new View.OnClickListener() { // from class: org.cocos2dx.lib.Cocos2dxActivity.4
            @Override // android.view.View.OnClickListener
            @SuppressLint({"NewApi"})
            public void onClick(View view) {
                int systemUiVisibility = Cocos2dxActivity.mFrameLayout.getSystemUiVisibility();
                if (systemUiVisibility == 2) {
                    Cocos2dxActivity.mFrameLayout.setSystemUiVisibility(0);
                } else if (systemUiVisibility == 0) {
                    Cocos2dxActivity.mFrameLayout.setSystemUiVisibility(1);
                } else if (systemUiVisibility == 1) {
                    Cocos2dxActivity.mFrameLayout.setSystemUiVisibility(2);
                }
            }
        });
        setContentView(mFrameLayout);
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i10, int i11, Intent intent) {
        Iterator<PreferenceManager.OnActivityResultListener> it2 = Cocos2dxHelper.getOnActivityResultListeners().iterator();
        while (it2.hasNext()) {
            it2.next().onActivityResult(i10, i11, intent);
        }
        super.onActivityResult(i10, i11, intent);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        CocosPlayClient.init(this, false);
        onLoadNativeLibraries();
        sContext = this;
        this.mHandler = new Cocos2dxHandler(this);
        Cocos2dxHelper.init(this);
        this.mGLContextAttrs = getGLContextAttrs();
        init();
        if (this.mVideoHelper == null) {
            this.mVideoHelper = new Cocos2dxVideoHelper(this, mFrameLayout);
        }
        if (this.mWebViewHelper == null) {
            this.mWebViewHelper = new Cocos2dxWebViewHelper(mFrameLayout);
        }
    }

    public Cocos2dxGLSurfaceView onCreateView() {
        Cocos2dxGLSurfaceView cocos2dxGLSurfaceView = new Cocos2dxGLSurfaceView(this);
        if (this.mGLContextAttrs[3] > 0) {
            cocos2dxGLSurfaceView.getHolder().setFormat(-3);
        }
        cocos2dxGLSurfaceView.setEGLConfigChooser(new Cocos2dxEGLConfigChooser(this.mGLContextAttrs));
        return cocos2dxGLSurfaceView;
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        mFrameLayout = null;
    }

    protected void onLoadNativeLibraries() {
        try {
            String str = EmuBaseActivity.soPath;
            if (str != null && str.length() != 0 && !EmuBaseActivity.soPath.startsWith("null/") && EmuBaseActivity.soPath.startsWith(e.F0)) {
                String str2 = EmuBaseActivity.soPath + "libcocos2dcpp.so";
                if (new File(str2).exists()) {
                    System.load(str2);
                    return;
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append("onLoadNativeLibraries so missing: ");
                sb2.append(str2);
                finish();
                return;
            }
            StringBuilder sb3 = new StringBuilder();
            sb3.append("onLoadNativeLibraries invalid soPath: ");
            sb3.append(EmuBaseActivity.soPath);
            finish();
        } catch (Throwable th) {
            th.printStackTrace();
            try {
                finish();
            } catch (Throwable unused) {
            }
        }
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        Cocos2dxHelper.onPause();
        this.mGLSurfaceView.onPause();
        SystemUiHider systemUiHider = this.uiHider;
        if (systemUiHider != null) {
            systemUiHider.setOnVisibilityChangeListener(null);
        }
        Handler handler = this.hideHandler;
        if (handler != null) {
            handler.removeCallbacks(this.hideRunnable);
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        int i10;
        super.onResume();
        Cocos2dxHelper.onResume();
        this.mGLSurfaceView.onResume();
        boolean z10 = this.fullScreenFlag;
        if (z10) {
            if (z10) {
                i10 = 6;
            } else {
                i10 = Wrapper.SDK_INT < 11 ? 3 : 1;
            }
            this.fullScreenCfg = i10;
        } else {
            this.fullScreenCfg = 0;
        }
        if (this.fullScreenCfg != 0) {
            this.hideHandler = new Handler();
            this.hideRunnable = new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxActivity.2
                @Override // java.lang.Runnable
                public void run() {
                    Cocos2dxActivity.this.uiHider.hide();
                }
            };
            SystemUiHider systemUiHider = SystemUiHider.getInstance(this, findViewById(R.id.content), this.fullScreenCfg);
            this.uiHider = systemUiHider;
            systemUiHider.setup();
            this.uiHider.setOnVisibilityChangeListener(new SystemUiHider.OnVisibilityChangeListener() { // from class: org.cocos2dx.lib.Cocos2dxActivity.3
                @Override // com.papa91.wrapper.SystemUiHider.OnVisibilityChangeListener
                public void onVisibilityChange(boolean z11) {
                    if (z11) {
                        Cocos2dxActivity.this.hideUiDelayed();
                    }
                }
            });
        }
        SystemUiHider systemUiHider2 = this.uiHider;
        if (systemUiHider2 == null || !systemUiHider2.isVisible()) {
            return;
        }
        this.uiHider.hide();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z10) {
        if (z10) {
            this.uiHider.hide();
        }
        super.onWindowFocusChanged(z10);
    }

    @Override // org.cocos2dx.lib.Cocos2dxHelper.Cocos2dxHelperListener
    public void runOnGLThread(Runnable runnable) {
        this.mGLSurfaceView.queueEvent(runnable);
    }

    public void setKeepScreenOn(final boolean z10) {
        runOnUiThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxActivity.1
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxActivity.this.mGLSurfaceView.setKeepScreenOn(z10);
            }
        });
    }

    @Override // org.cocos2dx.lib.Cocos2dxHelper.Cocos2dxHelperListener
    public void showDialog(String str, String str2) {
        Message message = new Message();
        message.what = 1;
        message.obj = new Cocos2dxHandler.DialogMessage(str, str2);
        this.mHandler.sendMessage(message);
    }

    @Override // org.cocos2dx.lib.Cocos2dxHelper.Cocos2dxHelperListener
    public void showEditTextDialog(String str, String str2, int i10, int i11, int i12, int i13) {
        Message message = new Message();
        message.what = 2;
        message.obj = new Cocos2dxHandler.EditBoxMessage(str, str2, i10, i11, i12, i13);
        this.mHandler.sendMessage(message);
    }

    public class Cocos2dxEGLConfigChooser implements GLSurfaceView.EGLConfigChooser {
        protected int[] configAttribs;

        public Cocos2dxEGLConfigChooser(int i10, int i11, int i12, int i13, int i14, int i15) {
            this.configAttribs = new int[]{i10, i11, i12, i13, i14, i15};
        }

        private int findConfigAttrib(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig, int i10, int i11) {
            int[] iArr = new int[1];
            return egl10.eglGetConfigAttrib(eGLDisplay, eGLConfig, i10, iArr) ? iArr[0] : i11;
        }

        @Override // android.opengl.GLSurfaceView.EGLConfigChooser
        public EGLConfig chooseConfig(EGL10 egl10, EGLDisplay eGLDisplay) {
            int[] iArr;
            int[] iArr2 = new int[1];
            if (egl10.eglGetConfigs(eGLDisplay, null, 0, iArr2)) {
                EGLConfig[] eGLConfigArr = new EGLConfig[iArr2[0]];
                int[] iArr3 = this.configAttribs;
                int[] iArr4 = new int[1];
                egl10.eglChooseConfig(eGLDisplay, new int[]{12324, iArr3[0], 12323, iArr3[1], 12322, iArr3[2], 12321, iArr3[3], 12325, iArr3[4], 12326, iArr3[5], 12352, 4, 12344}, eGLConfigArr, iArr2[0], iArr4);
                if (iArr4[0] > 0) {
                    return selectConfig(egl10, eGLDisplay, eGLConfigArr, this.configAttribs);
                }
                int[] iArr5 = {12324, 5, 12323, 6, 12322, 5, 12321, 0, 12325, 0, 12326, 0, 12352, 4, 12344};
                int[] iArr6 = {12324, 4, 12323, 4, 12322, 4, 12321, 4, 12325, 0, 12326, 0, 12352, 4, 12344};
                if (this.configAttribs[3] == 0) {
                    egl10.eglChooseConfig(eGLDisplay, iArr5, eGLConfigArr, iArr2[0], iArr4);
                    iArr = new int[]{5, 6, 5, 0, 0, 0};
                } else {
                    egl10.eglChooseConfig(eGLDisplay, iArr6, eGLConfigArr, iArr2[0], iArr4);
                    iArr = new int[]{4, 4, 4, 4, 0, 0};
                }
                if (iArr4[0] > 0) {
                    return selectConfig(egl10, eGLDisplay, eGLConfigArr, iArr);
                }
            }
            return null;
        }

        public EGLConfig selectConfig(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig[] eGLConfigArr, int[] iArr) {
            for (EGLConfig eGLConfig : eGLConfigArr) {
                int iFindConfigAttrib = findConfigAttrib(egl10, eGLDisplay, eGLConfig, 12325, 0);
                int iFindConfigAttrib2 = findConfigAttrib(egl10, eGLDisplay, eGLConfig, 12326, 0);
                if (iFindConfigAttrib >= iArr[4] && iFindConfigAttrib2 >= iArr[5]) {
                    int iFindConfigAttrib3 = findConfigAttrib(egl10, eGLDisplay, eGLConfig, 12324, 0);
                    int iFindConfigAttrib4 = findConfigAttrib(egl10, eGLDisplay, eGLConfig, 12323, 0);
                    int iFindConfigAttrib5 = findConfigAttrib(egl10, eGLDisplay, eGLConfig, 12322, 0);
                    int iFindConfigAttrib6 = findConfigAttrib(egl10, eGLDisplay, eGLConfig, 12321, 0);
                    if (iFindConfigAttrib3 >= iArr[0] && iFindConfigAttrib4 >= iArr[1] && iFindConfigAttrib5 >= iArr[2] && iFindConfigAttrib6 >= iArr[3]) {
                        return eGLConfig;
                    }
                }
            }
            return null;
        }

        public Cocos2dxEGLConfigChooser(int[] iArr) {
            this.configAttribs = iArr;
        }
    }
}
