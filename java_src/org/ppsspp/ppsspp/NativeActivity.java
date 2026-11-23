package org.ppsspp.ppsspp;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.AlertDialog;
import android.app.UiModeManager;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.database.Cursor;
import android.graphics.Point;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.PowerManager;
import android.os.Vibrator;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.DisplayCutout;
import android.view.InputDevice;
import android.view.InputEvent;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.View;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.Toast;
import androidx.core.view.InputDeviceCompat;
import com.baidu.mobads.sdk.internal.cb;
import com.byazt.hv.TTDownloadField;
import com.haima.hmcp.Constants;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import com.papa91.arc.util.StoreUtils;
import com.papa91.arc.view.MenuView;
import com.papa91.arc.view.MenuViewListener;
import com.papa91.wrapper.SystemUiHider;
import com.papa91.wrapper.Wrapper;
import java.io.File;
import java.lang.reflect.InvocationTargetException;
import java.util.Locale;
import org.webrtc.haima.HmDataChannelManager;

/* JADX INFO: loaded from: classes10.dex */
public abstract class NativeActivity extends Activity implements SurfaceHolder.Callback, MenuViewListener, NativeGLView.a {
    public static final int BBK_IQOO = 1;
    public static final int CLOSE_AD = 10;
    public static final int COMPLAIN_PLAYER = 12;
    private static final int EXIT_AD_KEY = 101;
    public static final int GIONEE_SOFTMANAGER = 2;
    public static final int LIKT_TYPE_TO_HTML5 = 4;
    private static final String LOG_TAG = "EmuBaseActivity";
    private static final String PAPA_EMU_INTENT_EXTRA_ACTION_FROM = "PAPA_EMU_INTENT_EXTRA_ACTION_FROM";
    public static final int PAY_CHEAT = 6;
    public static final int PAY_COIN = 4;
    public static final int PAY_JOIN = 7;
    public static final int PAY_SP = 3;
    public static final int RAISE_VIP = 11;
    public static final int REQUEST_CODE_CAMERA_PERMISSION = 3;
    public static final int REQUEST_CODE_LOCATION_PERMISSION = 2;
    public static final int REQUEST_CODE_STORAGE_PERMISSION = 1;
    private static int RESULT_LOAD_IMAGE = 1;
    public static final int SELECT_CHEAT = 5;
    public static final int SELECT_COIN = 2;
    public static final int SELECT_JOIN = 8;
    public static final int SELECT_SP = 1;
    public static final int SHOW_AD = 9;
    private static String TAG = "PPSSPPNativeActivity";
    private static final int TO_PREFECTURE_KEY = 100;
    public static final int VIVO_FILLET = 8;
    public static final int VIVO_NOTCH = 32;
    public static final String appPackName_aso4 = "com.papa91.fc.aso4";
    public static final String appPackName_mgsim = "com.join.android.app.mgsim";
    public static final String appPackName_mha = "com.join.android.app.mgsim.mha";
    public static String commandParameter = null;
    protected static boolean initialized = false;
    public static boolean is_copy = false;
    private static boolean javaGL = true;
    private static org.ppsspp.ppsspp.c mCameraHelper;
    private static org.ppsspp.ppsspp.f mLocationHelper;
    public static String romName;
    public static String runCommand;
    public static String server_ip;
    protected String AD_appId;
    protected FrameLayout adExitRootView;
    private org.ppsspp.ppsspp.a audioFocusChangeListener;
    private AudioManager audioManager;
    private String crc_link_type_val;
    private float densityDpi;
    private int gpixelHeight;
    private int gpixelWidth;
    private Handler hideHandler;
    private Runnable hideRunnable;
    private org.ppsspp.ppsspp.e inputPlayerA;
    private String inputPlayerADesc;
    private org.ppsspp.ppsspp.e inputPlayerB;
    private org.ppsspp.ppsspp.e inputPlayerC;
    private boolean isXperiaPlay;
    private String jump_type;
    private String link_type;
    private String link_type_val;
    private NativeGLView mGLSurfaceView;
    private Surface mSurface;
    private NativeSurfaceView mSurfaceView;
    protected MenuView menuView;
    protected NativeRenderer nativeRenderer;
    protected String onExitBannerId;
    protected String onLoadBannerId;
    protected String onMenuOpenBannerId;
    private int optimalFramesPerBuffer;
    private int optimalSampleRate;
    private int pixelHeight;
    private int pixelWidth;
    private PowerManager powerManager;
    private float refreshRate;
    protected RelativeLayout rootView;
    protected boolean shuttingDown;
    private boolean sustainedPerfSupported;
    private String tpl_type;
    protected SystemUiHider uiHider;
    private Vibrator vibrator;
    private static final String[] permissionsForStorage = {com.kuaishou.weapon.p0.g.f74786j};
    private static final String[] permissionsForLocation = {com.kuaishou.weapon.p0.g.f74783g, com.kuaishou.weapon.p0.g.f74784h};
    private static final String[] permissionsForCamera = {"android.permission.CAMERA"};
    public static String romPath = "";
    public static String GameID = "0";
    public static String UserID = "0";
    public static String verCode = "0";
    public static boolean isBside = false;
    public static String appPackName = "com.join.android.app.mgsim.wufun";
    private static int payType = 0;
    public static int[] keyVaule = new int[4];
    public static String screenMOde = "1";
    public static String enableAudio = "1";
    public static String vibriorMode = "1";
    public static String version = "1.5.0";
    public static int fid = 0;
    public static String ugcPath = null;
    protected static int startMode = 0;
    protected static String server_port = "5369";
    public static String Version = "0";
    public static String RoomID = "0";
    public static long startTIme = 0;
    public static int spLock = 0;
    public static String token = "0";
    public static boolean tourist = true;
    private static int systemSettingType = 0;
    public static int m_VIP = 0;
    public static String DEVICE_VERSION = "";
    public static String DEVICE_ID = "";
    public static String httpKeySign = "";
    public static String ExitAdImageFilePath = "";
    public static boolean hasAd = false;
    static String actionEmuintent = "com.papa.intent.activity.view.action.emuintent";
    public static String className = null;
    public static String assetsPath = "/mnt/sdcard/test/assets/";
    public static String soPath = null;
    public static long pspAdShowTime = 0;
    public static long pspAdShowTimeSwitch = 0;
    public static String channelId = "";
    private Thread mRenderLoopThread = null;
    private String shortcutParam = "";
    private boolean bFirstCreated = false;
    private boolean appCodeIsBigger160 = false;
    protected int m_SVIP = 0;
    public boolean onAdShwoIsCloseMine = false;
    String messData = "";
    private int APP_Version = 0;
    public boolean allowPeripheralJoin = true;
    protected String jstring = "";
    private Runnable mEmulationRunner = new a();
    private Point desiredSize = new Point();
    private int badOrientationCount = 0;
    private boolean fullScreenFlag = false;
    int fullScreenCfg = 0;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            String unused = NativeActivity.TAG;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Starting the render loop: ");
            sb2.append(NativeActivity.this.mSurface);
            NativeActivity nativeActivity = NativeActivity.this;
            if (!nativeActivity.runEGLRenderLoop(nativeActivity.mSurface)) {
                String unused2 = NativeActivity.TAG;
            }
            String unused3 = NativeActivity.TAG;
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Left the render loop: ");
            sb3.append(NativeActivity.this.mSurface);
        }
    }

    class b implements View.OnSystemUiVisibilityChangeListener {
        b() {
        }

        @Override // android.view.View.OnSystemUiVisibilityChangeListener
        public void onSystemUiVisibilityChange(int i10) {
            if (i10 == 0) {
                NativeActivity.this.o();
            }
        }
    }

    class c implements DialogInterface.OnDismissListener {
        c() {
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            NativeActivity.this.o();
        }
    }

    class d implements DialogInterface.OnDismissListener {
        d() {
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            NativeActivity.this.o();
        }
    }

    class e implements DialogInterface.OnClickListener {
        e() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i10) {
            NativeApp.sendMessage("inputbox_failed", "");
            dialogInterface.cancel();
        }
    }

    class f implements DialogInterface.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f95846b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ EditText f95847c;

        f(String str, EditText editText) {
            this.f95846b = str;
            this.f95847c = editText;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i10) {
            NativeApp.sendMessage("inputbox_completed", this.f95846b + ":" + this.f95847c.getText().toString());
            dialogInterface.dismiss();
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            NativeActivity.this.uiHider.hide();
        }
    }

    class h implements SystemUiHider.OnVisibilityChangeListener {
        h() {
        }

        @Override // com.papa91.wrapper.SystemUiHider.OnVisibilityChangeListener
        public void onVisibilityChange(boolean z10) {
            if (z10) {
                NativeActivity.this.hideUiDelayed();
            }
        }
    }

    private void a() {
        try {
            Window window = getWindow();
            window.setFlags(1024, 1024);
            if (Build.VERSION.SDK_INT >= 28) {
                WindowManager.LayoutParams attributes = window.getAttributes();
                attributes.layoutInDisplayCutoutMode = 0;
                window.setAttributes(attributes);
            }
            window.getDecorView().setSystemUiVisibility(5894);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void b() {
        SystemUiHider systemUiHider = this.uiHider;
        if (systemUiHider != null) {
            systemUiHider.setOnVisibilityChangeListener(null);
        }
        Handler handler = this.hideHandler;
        if (handler != null) {
            handler.removeCallbacks(this.hideRunnable);
        }
    }

    @TargetApi(23)
    private AlertDialog.Builder c() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this, android.R.style.Theme.DeviceDefault.Dialog.Alert);
        builder.setOnDismissListener(new d());
        return builder;
    }

    @TargetApi(14)
    private AlertDialog.Builder d() {
        return new AlertDialog.Builder(this, 4);
    }

    @TargetApi(17)
    private AlertDialog.Builder e() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this, 4);
        builder.setOnDismissListener(new c());
        return builder;
    }

    @TargetApi(11)
    private AlertDialog.Builder f() {
        return new AlertDialog.Builder(this, 2);
    }

    private boolean g() {
        return ((ActivityManager) getSystemService(TTDownloadField.TT_ACTIVITY)).getDeviceConfigurationInfo().reqGlEsVersion >= 131072;
    }

    public static void gainAudioFocus(AudioManager audioManager, org.ppsspp.ppsspp.a aVar) {
        if (audioManager != null) {
            audioManager.requestAudioFocus(aVar, 3, 1);
        }
    }

    @TargetApi(16)
    public static String getInputDesc(InputDevice inputDevice) {
        return inputDevice.getDescriptor();
    }

    private boolean h() {
        return ((ActivityManager) getSystemService(TTDownloadField.TT_ACTIVITY)).getDeviceConfigurationInfo().reqGlEsVersion >= 196608;
    }

    @TargetApi(17)
    private void i() {
        try {
            this.optimalFramesPerBuffer = Integer.parseInt(this.audioManager.getProperty("android.media.property.OUTPUT_FRAMES_PER_BUFFER"));
        } catch (NumberFormatException unused) {
        }
        try {
            this.optimalSampleRate = Integer.parseInt(this.audioManager.getProperty("android.media.property.OUTPUT_SAMPLE_RATE"));
        } catch (NumberFormatException unused2) {
        }
    }

    @TargetApi(9)
    private org.ppsspp.ppsspp.e j(InputEvent inputEvent) {
        InputDevice device = inputEvent.getDevice();
        if (device == null) {
            return null;
        }
        if (this.inputPlayerA == null) {
            this.inputPlayerADesc = getInputDesc(device);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Input player A registered: desc = ");
            sb2.append(this.inputPlayerADesc);
            this.inputPlayerA = new org.ppsspp.ppsspp.e(device);
        }
        if (this.inputPlayerA.a() == device) {
            return this.inputPlayerA;
        }
        if (this.inputPlayerB == null) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Input player B registered: desc = ");
            sb3.append(getInputDesc(device));
            this.inputPlayerB = new org.ppsspp.ppsspp.e(device);
        }
        if (this.inputPlayerB.a() == device) {
            return this.inputPlayerB;
        }
        if (this.inputPlayerC == null) {
            this.inputPlayerC = new org.ppsspp.ppsspp.e(device);
        }
        return this.inputPlayerC.a() == device ? this.inputPlayerC : this.inputPlayerA;
    }

    private synchronized void k() {
        try {
            if (javaGL) {
                return;
            }
            if (this.mRenderLoopThread != null) {
                exitEGLRenderLoop();
                try {
                    this.mRenderLoopThread.join();
                    this.mRenderLoopThread = null;
                } catch (InterruptedException e10) {
                    e10.printStackTrace();
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private void l() {
        int i10;
        try {
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
                this.hideRunnable = new g();
                SystemUiHider systemUiHider = SystemUiHider.getInstance(this, findViewById(android.R.id.content), this.fullScreenCfg);
                this.uiHider = systemUiHider;
                systemUiHider.setup();
                this.uiHider.setOnVisibilityChangeListener(new h());
            }
            SystemUiHider systemUiHider2 = this.uiHider;
            if (systemUiHider2 == null || !systemUiHider2.isVisible()) {
                return;
            }
            this.uiHider.hide();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void loseAudioFocus(AudioManager audioManager, org.ppsspp.ppsspp.a aVar) {
        if (audioManager != null) {
            audioManager.abandonAudioFocus(aVar);
        }
    }

    @TargetApi(9)
    private void m(String str) {
        setRequestedOrientation(6);
    }

    @TargetApi(24)
    private void n() {
        if (this.sustainedPerfSupported) {
            String strQueryConfig = NativeApp.queryConfig("sustainedPerformanceMode");
            try {
                getWindow().setSustainedPerformanceMode(Integer.parseInt(strQueryConfig) != 0);
            } catch (NumberFormatException unused) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Invalid perf mode: ");
                sb2.append(strQueryConfig);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"InlinedApi"})
    @TargetApi(14)
    public void o() {
        boolean zUseLowProfileButtons = useLowProfileButtons();
        int i10 = zUseLowProfileButtons;
        if (p()) {
            i10 = (zUseLowProfileButtons ? 1 : 0) | 4098;
        }
        if (getWindow().getDecorView() != null) {
            getWindow().getDecorView().setSystemUiVisibility(i10);
        }
        updateDisplayMeasurements();
    }

    private boolean p() {
        return NativeApp.queryConfig("immersiveMode").equals("1");
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0069  */
    public void Initialize() {
        this.audioManager = (AudioManager) getSystemService("audio");
        this.audioFocusChangeListener = new org.ppsspp.ppsspp.a();
        int i10 = Build.VERSION.SDK_INT;
        i();
        PowerManager powerManager = (PowerManager) getSystemService("power");
        this.powerManager = powerManager;
        int i11 = 1;
        if (i10 >= 24 && powerManager.isSustainedPerformanceModeSupported()) {
            this.sustainedPerfSupported = true;
            NativeApp.sendMessage("sustained_perf_supported", "1");
        }
        boolean zIsLandscape = NativeApp.isLandscape();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Landscape: ");
        sb2.append(zIsLandscape);
        try {
            ApplicationInfo applicationInfo = getPackageManager().getApplicationInfo(getPackageName(), 0);
            UiModeManager uiModeManager = (UiModeManager) getSystemService("uimode");
            if (uiModeManager == null) {
                i11 = 0;
            } else {
                int currentModeType = uiModeManager.getCurrentModeType();
                if (currentModeType == 2) {
                    i11 = 2;
                } else if (currentModeType != 4) {
                    i11 = 0;
                }
            }
            this.isXperiaPlay = IsXperiaPlay();
            String applicationLibraryDir = getApplicationLibraryDir(applicationInfo);
            String absolutePath = new File(StoreUtils.getExternalStorageDirectory(this)).getAbsolutePath();
            File filesDir = getFilesDir();
            String absolutePath2 = filesDir != null ? filesDir.getAbsolutePath() : null;
            String str = applicationInfo.sourceDir;
            String absolutePath3 = getCacheDir().getAbsolutePath();
            String str2 = Build.MANUFACTURER + ":" + Build.MODEL;
            String str3 = Locale.getDefault().getLanguage() + "_" + Locale.getDefault().getCountry();
            NativeApp.audioConfig(this.optimalFramesPerBuffer, this.optimalSampleRate);
            NativeApp.init(str2, i11, str3, str, absolutePath2, absolutePath, applicationLibraryDir, absolutePath3, this.shortcutParam, i10, Build.BOARD);
            javaGL = "true".equalsIgnoreCase(NativeApp.queryConfig("androidJavaGL"));
            sendInitialGrants();
            PowerSaveModeReceiver.e(this);
            m("Initialize");
            if (g()) {
                h();
            }
            this.vibrator = (Vibrator) getSystemService("vibrator");
            checkForVibrator();
            mLocationHelper = new org.ppsspp.ppsspp.f(this);
            mCameraHelper = new org.ppsspp.ppsspp.c(this);
        } catch (PackageManager.NameNotFoundException e10) {
            e10.printStackTrace();
            throw new RuntimeException("Unable to locate assets, aborting...");
        }
    }

    public boolean IsXperiaPlay() {
        String str = Build.MODEL;
        return str.equals("R800a") || str.equals("R800i") || str.equals("R800x") || str.equals("R800at") || str.equals("SO-01D") || str.equals("zeus");
    }

    @TargetApi(23)
    boolean askForPermissions(String[] strArr, int i10) {
        int i11 = Build.VERSION.SDK_INT;
        if (i11 < 23) {
            return false;
        }
        if (i11 >= 30 && getApplicationInfo().targetSdkVersion >= 30) {
            return false;
        }
        boolean z10 = false;
        for (String str : strArr) {
            if (checkSelfPermission(str) != 0) {
                z10 = true;
            }
        }
        if (z10) {
            requestPermissions(strArr, i10);
        }
        return z10;
    }

    protected void attachMenu() {
        if (this.rootView == null || this.menuView != null) {
            return;
        }
        MenuView menuView = new MenuView(this);
        this.menuView = menuView;
        this.rootView.addView(menuView);
        this.menuView.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        this.menuView.setMenuViewListener(this);
    }

    @TargetApi(11)
    public void checkForVibrator() {
        if (this.vibrator.hasVibrator()) {
            return;
        }
        this.vibrator = null;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (!this.isXperiaPlay) {
            org.ppsspp.ppsspp.e eVarJ = j(keyEvent);
            if (eVarJ == null) {
                return super.dispatchKeyEvent(keyEvent);
            }
            int keyCode = keyEvent.getKeyCode();
            boolean z10 = false;
            boolean z11 = keyCode == 4 || keyCode == 82;
            int source = keyEvent.getSource();
            if (source != 513 && source != 1025 && source != 16777232) {
                z10 = z11;
            }
            if (!z10) {
                int action = keyEvent.getAction();
                if (action != 0) {
                    if (action == 1 && eVarJ.e(keyEvent)) {
                        return true;
                    }
                } else if (eVarJ.d(keyEvent)) {
                    return true;
                }
            }
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    protected synchronized void ensureRenderLoop() {
        if (javaGL) {
            return;
        }
        if (this.mSurface == null) {
            return;
        }
        if (this.mRenderLoopThread == null) {
            Thread thread = new Thread(this.mEmulationRunner);
            this.mRenderLoopThread = thread;
            thread.start();
        }
    }

    public void exit() {
    }

    public native void exitEGLRenderLoop();

    public void forum() {
    }

    public void gameOnPause() {
    }

    public void gameOnResume() {
    }

    String getApplicationLibraryDir(ApplicationInfo applicationInfo) {
        String str;
        try {
            str = (String) ApplicationInfo.class.getField("nativeLibraryDir").get(applicationInfo);
        } catch (IllegalAccessException | IllegalArgumentException | NoSuchFieldException | SecurityException unused) {
            str = null;
        }
        if (str != null) {
            return str;
        }
        return applicationInfo.dataDir + "/lib";
    }

    public boolean getChangeDiskState() {
        return NativeApp.NeedChangeDisk();
    }

    public void getDesiredBackbufferSize(Point point) {
        NativeApp.computeDesiredBackbufferDimensions();
        point.x = NativeApp.getDesiredBackbufferWidth();
        point.y = NativeApp.getDesiredBackbufferHeight();
    }

    public int getInt(String str, Activity activity) {
        if (!isXiaomi()) {
            return 0;
        }
        try {
            Class<?> clsLoadClass = activity.getClassLoader().loadClass("android.os.SystemProperties");
            return ((Integer) clsLoadClass.getMethod("getInt", String.class, Integer.TYPE).invoke(clsLoadClass, new String(str), 0)).intValue();
        } catch (ClassNotFoundException e10) {
            e10.printStackTrace();
            return 0;
        } catch (IllegalAccessException e11) {
            e11.printStackTrace();
            return 0;
        } catch (IllegalArgumentException e12) {
            e12.printStackTrace();
            return 0;
        } catch (NoSuchMethodException e13) {
            e13.printStackTrace();
            return 0;
        } catch (InvocationTargetException e14) {
            e14.printStackTrace();
            return 0;
        }
    }

    @Override // org.ppsspp.ppsspp.NativeGLView.a
    public void getMode(int i10) {
        MenuView menuView = this.menuView;
        if (menuView == null) {
            return;
        }
        if (i10 == 7) {
            menuView.amplification();
        } else if (i10 == 8) {
            menuView.narrow();
        }
    }

    NativeRenderer getRenderer() {
        return this.nativeRenderer;
    }

    public boolean hasNotchAtHuawei() {
        try {
            Class<?> clsLoadClass = getClassLoader().loadClass("com.huawei.android.util.HwNotchSizeUtil");
            return ((Boolean) clsLoadClass.getMethod("hasNotchInScreen", new Class[0]).invoke(clsLoadClass, new Object[0])).booleanValue();
        } catch (Throwable unused) {
            return false;
        }
    }

    public boolean hasNotchAtOPPO() {
        return getPackageManager().hasSystemFeature("com.oppo.feature.screen.heteromorphism");
    }

    public boolean hasNotchAtVivo() {
        try {
            Class<?> clsLoadClass = getClassLoader().loadClass("android.util.FtFeature");
            return ((Boolean) clsLoadClass.getMethod("isFeatureSupport", Integer.TYPE).invoke(clsLoadClass, 32)).booleanValue();
        } catch (Throwable unused) {
            return false;
        }
    }

    public boolean hasNotchScreen(Activity activity) {
        return getInt("ro.miui.notch", activity) == 1 || hasNotchAtHuawei() || hasNotchAtOPPO() || hasNotchAtVivo() || isAndroidP(activity) != null;
    }

    protected void hideUiDelayed() {
        this.hideHandler.removeCallbacks(this.hideRunnable);
        if (this.fullScreenCfg != 0) {
            this.hideHandler.postDelayed(this.hideRunnable, BaseCloudFileManager.ACK_TIMEOUT);
        }
    }

    public void inputBox(String str, String str2, String str3) {
        FrameLayout frameLayout = new FrameLayout(this);
        EditText editText = new EditText(this);
        editText.setGravity(17);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.setMargins(2, 20, 2, 20);
        frameLayout.addView(editText, layoutParams);
        editText.setInputType(1);
        editText.setText(str2);
        editText.selectAll();
        AlertDialog alertDialogCreate = (Build.VERSION.SDK_INT < 23 ? e() : c()).setView(frameLayout).setTitle(str).setPositiveButton(str3, new f(str, editText)).setNegativeButton("Cancel", new e()).create();
        alertDialogCreate.setCancelable(true);
        alertDialogCreate.show();
    }

    public DisplayCutout isAndroidP(Activity activity) {
        WindowInsets rootWindowInsets;
        View decorView = activity.getWindow().getDecorView();
        if (decorView == null || Build.VERSION.SDK_INT < 28 || (rootWindowInsets = decorView.getRootWindowInsets()) == null) {
            return null;
        }
        return rootWindowInsets.getDisplayCutout();
    }

    @Override // com.papa91.arc.view.MenuViewListener
    public boolean isRankGame() {
        return false;
    }

    @Override // com.papa91.arc.view.MenuViewListener
    public boolean isShowOnekey() {
        return false;
    }

    public boolean isXiaomi() {
        return "Xiaomi".equals(Build.MANUFACTURER);
    }

    public void keysSetting() {
    }

    public void loadRom() {
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i10, int i11, Intent intent) {
        super.onActivityResult(i10, i11, intent);
        if (i10 == RESULT_LOAD_IMAGE && i11 == -1 && intent != null) {
            String[] strArr = {"_data"};
            Cursor cursorQuery = getContentResolver().query(intent.getData(), strArr, null, null, null);
            cursorQuery.moveToFirst();
            String string = cursorQuery.getString(cursorQuery.getColumnIndex(strArr[0]));
            cursorQuery.close();
            NativeApp.sendMessage("bgImage_updated", string);
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        o();
        this.densityDpi = configuration.densityDpi;
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        TextRenderer.init(this);
        this.shuttingDown = false;
        registerCallbacks();
        updateDisplayMeasurements();
        if (!initialized) {
            if (!TextUtils.isEmpty(this.jstring)) {
                NativeApp.setJson(this.jstring);
            }
            Initialize();
            initialized = true;
        }
        m("onCreate");
        n();
        setVolumeControlStream(3);
        gainAudioFocus(this.audioManager, this.audioFocusChangeListener);
        NativeApp.audioInit();
        if (javaGL) {
            this.mGLSurfaceView = new NativeGLView(this);
            this.nativeRenderer = new NativeRenderer(this);
            this.mGLSurfaceView.setEGLContextClientVersion(2);
            this.mGLSurfaceView.getHolder().addCallback(this);
            if (Build.MANUFACTURER == "OUYA") {
                this.mGLSurfaceView.getHolder().setFormat(2);
                this.mGLSurfaceView.setEGLConfigChooser(new l());
            }
            this.mGLSurfaceView.setRenderer(this.nativeRenderer);
            setContentView(wrapMenu(this.mGLSurfaceView));
            this.mGLSurfaceView.setFocusable(true);
            com.yatoooon.screenadaptation.e.a().f(getWindow().getDecorView());
        } else {
            o();
            setupSystemUiCallback();
            NativeSurfaceView nativeSurfaceView = new NativeSurfaceView(this);
            this.mSurfaceView = nativeSurfaceView;
            nativeSurfaceView.getHolder().addCallback(this);
            setContentView(wrapMenu(this.mSurfaceView));
            this.mSurfaceView.setFocusable(true);
            com.yatoooon.screenadaptation.e.a().f(getWindow().getDecorView());
            ensureRenderLoop();
        }
        if (Build.VERSION.SDK_INT >= 28) {
            WindowManager windowManager = (WindowManager) getSystemService("window");
            Point point = new Point();
            windowManager.getDefaultDisplay().getRealSize(point);
            this.gpixelWidth = point.x;
            this.gpixelHeight = point.y;
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        if (javaGL) {
            if (this.nativeRenderer.a()) {
                int i10 = 200;
                do {
                    try {
                        Thread.sleep(10L);
                    } catch (InterruptedException unused) {
                    }
                    i10--;
                    if (!this.nativeRenderer.a()) {
                        break;
                    }
                } while (i10 > 0);
            }
            this.mGLSurfaceView.f();
            this.mGLSurfaceView = null;
            this.audioFocusChangeListener = null;
            this.audioManager = null;
        } else {
            this.mSurfaceView.f();
            this.mSurfaceView = null;
        }
        NativeApp.audioShutdown();
        if (this.shuttingDown || isFinishing()) {
            unregisterCallbacks();
            NativeApp.shutdown();
            initialized = false;
        }
    }

    @Override // android.app.Activity
    @TargetApi(12)
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        if ((motionEvent.getSource() & InputDeviceCompat.SOURCE_JOYSTICK) != 0) {
            org.ppsspp.ppsspp.e eVarJ = j(motionEvent);
            if (eVarJ == null) {
                return super.onGenericMotionEvent(motionEvent);
            }
            eVarJ.c(motionEvent);
            return true;
        }
        if ((motionEvent.getSource() & 2) != 0) {
            int action = motionEvent.getAction();
            if (action != 7) {
                if (action == 8) {
                    NativeApp.mouseWheelEvent(motionEvent.getX(), motionEvent.getY());
                }
            }
            return true;
        }
        return super.onGenericMotionEvent(motionEvent);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    @SuppressLint({"NewApi"})
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        boolean z10 = keyEvent.getRepeatCount() > 0;
        if (i10 == 4) {
            exit();
            return true;
        }
        if (i10 == 82 || i10 == 84) {
            return true;
        }
        switch (i10) {
            case 19:
            case 20:
            case 21:
            case 22:
                if (keyEvent.getSource() == 16777232) {
                    return super.onKeyDown(i10, keyEvent);
                }
                break;
        }
        return NativeApp.keyDown(0, i10, z10);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    @SuppressLint({"NewApi"})
    public boolean onKeyUp(int i10, KeyEvent keyEvent) {
        if (i10 == 4) {
            if (keyEvent.isAltPressed()) {
                NativeApp.keyUp(0, 1004);
            } else {
                if (NativeApp.isAtTopLevel()) {
                    return super.onKeyUp(i10, keyEvent);
                }
                NativeApp.keyUp(0, i10);
            }
            return true;
        }
        if (i10 == 82 || i10 == 84) {
            NativeApp.keyUp(0, i10);
            return true;
        }
        switch (i10) {
            case 19:
            case 20:
            case 21:
            case 22:
                if (keyEvent.getSource() == 16777232) {
                    return super.onKeyUp(i10, keyEvent);
                }
                break;
        }
        return NativeApp.keyUp(0, i10);
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        loseAudioFocus(this.audioManager, this.audioFocusChangeListener);
        NativeApp.pause();
        if (!javaGL) {
            this.mSurfaceView.g();
            k();
        } else {
            NativeGLView nativeGLView = this.mGLSurfaceView;
            if (nativeGLView != null) {
                nativeGLView.onPause();
            }
        }
    }

    @Override // com.papa91.arc.view.MenuViewListener
    public void onRankFinish(int i10) {
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i10, String[] strArr, int[] iArr) {
        if (i10 == 1) {
            if (!permissionsGranted(strArr, iArr)) {
                NativeApp.sendMessage("permission_denied", Constants.WS_MESSAGE_TYPE_STORAGE);
                return;
            } else {
                NativeApp.sendMessage("permission_granted", Constants.WS_MESSAGE_TYPE_STORAGE);
                loadRom();
                return;
            }
        }
        if (i10 == 2) {
            if (permissionsGranted(strArr, iArr)) {
                mLocationHelper.a();
            }
        } else if (i10 == 3 && mCameraHelper != null && permissionsGranted(strArr, iArr)) {
            mCameraHelper.e();
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        n();
        o();
        boolean z10 = javaGL;
        m("onResume");
        if (javaGL) {
            NativeGLView nativeGLView = this.mGLSurfaceView;
            if (nativeGLView != null) {
                nativeGLView.onResume();
            }
        } else {
            NativeSurfaceView nativeSurfaceView = this.mSurfaceView;
            if (nativeSurfaceView != null) {
                nativeSurfaceView.h();
            }
        }
        gainAudioFocus(this.audioManager, this.audioFocusChangeListener);
        NativeApp.resume();
        if (javaGL) {
            return;
        }
        ensureRenderLoop();
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
    }

    public void onTimerTick(long j10) {
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z10) {
        a();
        super.onWindowFocusChanged(z10);
        n();
    }

    public void onWindowFocusChangedCall(boolean z10) {
        SystemUiHider systemUiHider = this.uiHider;
        if (systemUiHider != null) {
            if (z10 && this.fullScreenFlag) {
                systemUiHider.hide();
            } else {
                systemUiHider.show();
            }
        }
    }

    boolean permissionsGranted(String[] strArr, int[] iArr) {
        for (int i10 = 0; i10 < strArr.length; i10++) {
            if (iArr[i10] != 0) {
                return false;
            }
        }
        return true;
    }

    public boolean processCommand(String str, String str2) {
        int i10;
        View view = javaGL ? this.mGLSurfaceView : this.mSurfaceView;
        if (str.equals("launchBrowser")) {
            try {
                startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str2)));
                return true;
            } catch (Exception e10) {
                e10.toString();
                return false;
            }
        }
        if (str.equals("launchEmail")) {
            try {
                Intent intent = new Intent("android.intent.action.SENDTO");
                intent.setData(Uri.parse("mailto:email@gmail.com?subject=Your app is...&body=great! Or?".replace(" ", "%20")));
                startActivity(Intent.createChooser(intent, "E-mail the app author!"));
                return true;
            } catch (Exception e11) {
                e11.toString();
                return false;
            }
        }
        if (str.equals("bgImage_browse")) {
            try {
                startActivityForResult(new Intent("android.intent.action.PICK", MediaStore.Images.Media.EXTERNAL_CONTENT_URI), RESULT_LOAD_IMAGE);
                return true;
            } catch (Exception e12) {
                e12.toString();
                return false;
            }
        }
        if (str.equals("sharejpeg")) {
            try {
                Intent intent2 = new Intent("android.intent.action.SEND");
                intent2.setType("image/jpeg");
                intent2.putExtra("android.intent.extra.STREAM", Uri.parse("file://" + str2));
                startActivity(Intent.createChooser(intent2, "Share Picture"));
                return true;
            } catch (Exception e13) {
                e13.toString();
                return false;
            }
        }
        if (str.equals("sharetext")) {
            try {
                Intent intent3 = new Intent();
                intent3.setType("text/plain");
                intent3.putExtra("android.intent.extra.TEXT", str2);
                intent3.setAction("android.intent.action.SEND");
                startActivity(intent3);
                return true;
            } catch (Exception e14) {
                e14.toString();
                return false;
            }
        }
        if (str.equals("showTwitter")) {
            try {
                try {
                    startActivity(new Intent("android.intent.action.VIEW", Uri.parse("twitter://user?screen_name=" + str2)));
                } catch (Exception unused) {
                    startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://twitter.com/#!/" + str2)));
                }
                return true;
            } catch (Exception e15) {
                e15.toString();
                return false;
            }
        }
        if (str.equals("launchMarket")) {
            return false;
        }
        if (str.equals(com.papa.controller.component.bluetooth.spp.c.f76484o)) {
            Toast.makeText(this, str2, 0).show();
            return true;
        }
        if (str.equals("showKeyboard") && view != null) {
            ((InputMethodManager) getSystemService("input_method")).toggleSoftInputFromWindow(view.getApplicationWindowToken(), 2, 0);
            return true;
        }
        if (str.equals("hideKeyboard") && view != null) {
            ((InputMethodManager) getSystemService("input_method")).toggleSoftInputFromWindow(view.getApplicationWindowToken(), 2, 0);
            return true;
        }
        if (str.equals("inputbox")) {
            String[] strArrSplit = str2.split(":");
            String str3 = strArrSplit[0].length() > 0 ? strArrSplit[0] : "Input";
            String str4 = strArrSplit.length > 1 ? strArrSplit[1] : "";
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Launching inputbox: ");
            sb2.append(str3);
            sb2.append(" ");
            sb2.append(str4);
            inputBox(str3, str4, cb.f7689k);
            return true;
        }
        if (str.equals(HmDataChannelManager.VIBRATE)) {
            if (str2 != "") {
                try {
                    i10 = Integer.parseInt(str2);
                } catch (NumberFormatException unused2) {
                    i10 = -1;
                }
            } else {
                i10 = -1;
            }
            if (view != null) {
                if (i10 == -3) {
                    view.performHapticFeedback(0, 2);
                } else if (i10 == -2) {
                    view.performHapticFeedback(1, 2);
                } else if (i10 == -1) {
                    view.performHapticFeedback(3, 2);
                }
            }
            return true;
        }
        if (str.equals(com.sigmob.sdk.base.common.a.f78868b)) {
            this.shuttingDown = true;
            finish();
        } else if (str.equals("rotate")) {
            if (javaGL) {
                m("rotate");
            } else {
                m("rotate");
            }
        } else if (str.equals("sustainedPerfMode")) {
            n();
        } else if (str.equals("immersive")) {
            o();
        } else if (str.equals("recreate")) {
            recreate();
        } else if (str.equals("graphics_restart")) {
            this.shuttingDown = true;
            recreate();
        } else if (str.equals("ask_permission") && str2.equals(Constants.WS_MESSAGE_TYPE_STORAGE)) {
            if (askForPermissions(permissionsForStorage, 1)) {
                NativeApp.sendMessage("permission_pending", Constants.WS_MESSAGE_TYPE_STORAGE);
            } else {
                NativeApp.sendMessage("permission_granted", Constants.WS_MESSAGE_TYPE_STORAGE);
            }
        } else if (str.equals("gps_command")) {
            if (str2.equals("open")) {
                if (!askForPermissions(permissionsForLocation, 2)) {
                    mLocationHelper.a();
                }
            } else if (str2.equals("close")) {
                mLocationHelper.b();
            }
        } else if (str.equals("camera_command")) {
            if (str2.equals("startVideo")) {
                if (mCameraHelper != null && !askForPermissions(permissionsForCamera, 3)) {
                    mCameraHelper.e();
                }
            } else if (mCameraHelper != null && str2.equals("stopVideo")) {
                mCameraHelper.f();
            }
        } else if (str.equals("uistate")) {
            Window window = getWindow();
            if (str2.equals("ingame")) {
                window.addFlags(128);
            } else {
                window.clearFlags(128);
            }
        }
        return false;
    }

    public void quickSlot() {
    }

    @Override // android.app.Activity
    @SuppressLint({"NewApi"})
    public void recreate() {
        super.recreate();
    }

    public native void registerCallbacks();

    public void reload() {
    }

    public native boolean runEGLRenderLoop(Surface surface);

    @TargetApi(23)
    public void sendInitialGrants() {
        if (Build.VERSION.SDK_INT >= 23) {
            if (checkSelfPermission(com.kuaishou.weapon.p0.g.f74786j) == 0) {
                NativeApp.sendMessage("permission_granted", Constants.WS_MESSAGE_TYPE_STORAGE);
            } else {
                NativeApp.sendMessage("permission_denied", Constants.WS_MESSAGE_TYPE_STORAGE);
            }
        }
    }

    public void setShortcutParam(String str) {
        if (str == null) {
            str = "";
        }
        this.shortcutParam = str;
    }

    public void setSystemUiHide(boolean z10) {
        this.fullScreenFlag = z10;
        l();
        SystemUiHider systemUiHider = this.uiHider;
        if (systemUiHider != null) {
            if (!this.fullScreenFlag) {
                systemUiHider.show();
            } else if (systemUiHider.isVisible()) {
                this.uiHider.hide();
            }
        }
    }

    @TargetApi(19)
    void setupSystemUiCallback() {
        getWindow().getDecorView().setOnSystemUiVisibilityChangeListener(new b());
    }

    @Override // com.papa91.arc.view.MenuViewListener
    public void showAchievementDialog(int i10) {
    }

    public void showMenuCheating() {
    }

    public void showMenuPerformance() {
    }

    public void showMenuSlot() {
    }

    public void showTimeLimitedDialog1() {
    }

    public void showTimeLimitedDialog2() {
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i10, int i11, int i12) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("surfaceChanged: isCreating:");
        sb2.append(surfaceHolder.isCreating());
        sb2.append(" holder: ");
        sb2.append(surfaceHolder.toString());
        if (surfaceHolder.isCreating()) {
            Point point = this.desiredSize;
            if (point.x > 0 && point.y > 0) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("holder.isCreating = true, ignoring. width=");
                sb3.append(i11);
                sb3.append(" height=");
                sb3.append(i12);
                sb3.append(" desWidth=");
                sb3.append(this.desiredSize.x);
                sb3.append(" desHeight=");
                sb3.append(this.desiredSize.y);
                return;
            }
        }
        StringBuilder sb4 = new StringBuilder();
        sb4.append("Surface changed. Resolution: ");
        sb4.append(i11);
        sb4.append("x");
        sb4.append(i12);
        sb4.append(" Format: ");
        sb4.append(i10);
        NativeApp.backbufferResize(i11, i12, i10);
        Surface surface = surfaceHolder.getSurface();
        this.mSurface = surface;
        if (!javaGL) {
            if (surface == null) {
                k();
            } else {
                ensureRenderLoop();
            }
        }
        n();
        updateDisplayMeasurements();
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        NativeSurfaceView nativeSurfaceView;
        int i10;
        NativeGLView nativeGLView;
        if (!this.bFirstCreated) {
            if (javaGL && (nativeGLView = this.mGLSurfaceView) != null && nativeGLView.getWidth() > 0) {
                this.pixelWidth = this.mGLSurfaceView.getWidth();
                this.pixelHeight = this.mGLSurfaceView.getHeight();
            } else if (javaGL || (nativeSurfaceView = this.mSurfaceView) == null || nativeSurfaceView.getWidth() <= 0) {
                this.pixelWidth = surfaceHolder.getSurfaceFrame().width();
                this.pixelHeight = surfaceHolder.getSurfaceFrame().height();
            } else {
                this.pixelWidth = this.mSurfaceView.getWidth();
                this.pixelHeight = this.mSurfaceView.getHeight();
            }
            if ((this.pixelWidth <= 0 || this.pixelHeight <= 0) && Build.VERSION.SDK_INT >= 28 && (i10 = this.gpixelWidth) > 0) {
                this.pixelWidth = i10;
                this.pixelHeight = this.gpixelHeight;
            }
            this.bFirstCreated = true;
        }
        int requestedOrientation = getRequestedOrientation();
        if ((requestedOrientation == 1 || requestedOrientation == 9) == (this.pixelHeight > this.pixelWidth)) {
            this.badOrientationCount = 0;
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Bad orientation detected but ignored");
            sb2.append("");
            int i11 = this.pixelWidth;
            int i12 = this.pixelHeight;
            if (i11 < i12) {
                this.pixelWidth = i12;
                this.pixelHeight = i11;
            }
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append("Surface created. pixelWidth=");
        sb3.append(this.pixelWidth);
        sb3.append(", pixelHeight=");
        sb3.append(this.pixelHeight);
        sb3.append(" holder: ");
        sb3.append(surfaceHolder.toString());
        sb3.append(" or: ");
        sb3.append(requestedOrientation);
        NativeApp.setDisplayParameters(this.pixelWidth, this.pixelHeight, (int) this.densityDpi, this.refreshRate);
        getDesiredBackbufferSize(this.desiredSize);
        StringBuilder sb4 = new StringBuilder();
        sb4.append("Setting fixed size ");
        sb4.append(this.desiredSize.x);
        sb4.append(" x ");
        sb4.append(this.desiredSize.y);
        Point point = this.desiredSize;
        surfaceHolder.setFixedSize(point.x, point.y);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        this.mSurface = null;
        if (!javaGL) {
            k();
        }
        surfaceHolder.setSizeFromLayout();
    }

    public native void unregisterCallbacks();

    @TargetApi(17)
    public void updateDisplayMeasurements() {
        NativeSurfaceView nativeSurfaceView;
        NativeGLView nativeGLView;
        Display defaultDisplay = getWindowManager().getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        if (p()) {
            defaultDisplay.getRealMetrics(displayMetrics);
        } else {
            defaultDisplay.getMetrics(displayMetrics);
        }
        this.densityDpi = displayMetrics.densityDpi;
        this.refreshRate = defaultDisplay.getRefreshRate();
        int width = displayMetrics.widthPixels;
        int height = displayMetrics.heightPixels;
        if (javaGL && (nativeGLView = this.mGLSurfaceView) != null && nativeGLView.getWidth() > 0 && this.mGLSurfaceView.getHeight() > 0) {
            width = this.mGLSurfaceView.getWidth();
            height = this.mGLSurfaceView.getHeight();
        } else if (!javaGL && (nativeSurfaceView = this.mSurfaceView) != null && nativeSurfaceView.getWidth() > 0 && this.mSurfaceView.getHeight() > 0) {
            width = this.mSurfaceView.getWidth();
            height = this.mSurfaceView.getHeight();
        }
        NativeApp.setDisplayParameters(width, height, (int) this.densityDpi, this.refreshRate);
    }

    public boolean useLowProfileButtons() {
        return true;
    }

    public void vibrate(boolean z10) {
    }

    public void voice(boolean z10) {
    }

    View wrapMenu(View... viewArr) {
        if (viewArr == null) {
            return null;
        }
        if (viewArr.length == 0) {
            return viewArr[0];
        }
        RelativeLayout relativeLayout = new RelativeLayout(this);
        this.rootView = relativeLayout;
        for (View view : viewArr) {
            relativeLayout.addView(view);
            view.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
            if (view instanceof MenuView) {
                MenuView menuView = (MenuView) view;
                this.menuView = menuView;
                menuView.setMenuViewListener(this);
            } else if (view instanceof NativeGLView) {
                ((NativeGLView) view).setListener(this);
            } else if (view instanceof NativeSurfaceView) {
                ((NativeSurfaceView) view).setListener(this);
            }
        }
        return relativeLayout;
    }
}
